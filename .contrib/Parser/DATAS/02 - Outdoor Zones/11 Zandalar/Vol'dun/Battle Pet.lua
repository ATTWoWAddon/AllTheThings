---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(VOLDUN, {
		filter(BATTLE_PETS, {
			["sym"] = {{"select","speciesID",
				2388,	-- Bloodfever Tarantula (PET!)
				2390,	-- Leafy Flutterwing (PET!)
				2392,	-- Young Sand Sifter (PET!)
			}},
			["groups"] = {
				pet(2399, {	-- Hermit Crab (PET!)
					["description"] = "Best found around the coastline of Vol'dun. Can also be found in Tiragarde, best spot is East-ish of Bridgeport.",
				}),
				o(311903, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {	-- Loose Parts (A)
					["icon"] = 1405815,
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 41.69, 42.54, VOLDUN },	-- Location chest spawns
					["groups"] = {
						i(166734, {	-- Banana-Shaped Power Cell
							["races"] = ALLIANCE_ONLY,
							["description"] = "These parts are found during the Vol'dun Assault/Incursion in the \"Loose Parts\" container. To influence your robot to win you will want to hand in \"Alkalescent Salt\" which are also used for the World Quest \"Battle Bots\".",
						}),
						i(166732, {	-- Bludgeoning-Resistant Chest Reinforcer
							["races"] = ALLIANCE_ONLY,
							["description"] = "These parts are found during the Vol'dun Assault/Incursion in the \"Loose Parts\" container. To influence your robot to win you will want to hand in \"Alkalescent Salt\" which are also used for the World Quest \"Battle Bots\".",
						}),
						i(166733, {	-- Steel-Plated Primate Exoskeleton
							["description"] = "These parts are found during the Vol'dun Assault/Incursion in the \"Loose Parts\" container. To influence your robot to win you will want to hand in \"Alkalescent Salt\" which are also used for the World Quest \"Battle Bots\".",
						}),
						i(166715, {	-- Rebuilt Gorilla Bot (PET!)
							["cost"] = {
								{ "i", 166734, 1 },	-- Banana-Shaped Power Cell
								{ "i", 166732, 1 },	-- Bludgeoning-Resistant Chest Reinforcer
								{ "i", 166733, 1 },	-- Steel-Plated Primate Exoskeleton
							},
						}),
					},
				})),
				o(311902, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {	-- Loose Parts (H)
					["icon"] = 1405815,
					["races"] = HORDE_ONLY,
					["coord"] = { 41.69, 42.54, VOLDUN },	-- Location chest spawns
					["groups"] = {
						i(166737, {	-- Handful of Glass Spider Eyes
							["description"] = "These parts are found during the Vol'dun Assault/Incursion in the \"Loose Parts\" container. To influence your robot to win you will want to hand in \"Alkalescent Salt\" which are also used for the World Quest \"Battle Bots\".",
							["races"] = HORDE_ONLY,
						}),
						i(166735, {	-- Mecha-Spinneret
							["description"] = "These parts are found during the Vol'dun Assault/Incursion in the \"Loose Parts\" container. To influence your robot to win you will want to hand in \"Alkalescent Salt\" which are also used for the World Quest \"Battle Bots\".",
							["races"] = HORDE_ONLY,
						}),
						i(166738, {	-- Steel-Plated Arachnid Exoskeleton
							["description"] = "These parts are found during the Vol'dun Assault/Incursion in the \"Loose Parts\" container. To influence your robot to win you will want to hand in \"Alkalescent Salt\" which are also used for the World Quest \"Battle Bots\".",
						}),
						i(166723, {	-- Rebuilt Mechanical Spider (PET!)
							-- Note!! The description we want to use will be on the parts because we don't want it written on the item!  See below.
							["cost"] = {
								{ "i", 166737, 1 },	-- Handful of Glass Spider Eyes
								{ "i", 166735, 1 },	-- Mecha-Spinneret
								{ "i", 166738, 1 },	-- Steel-Plated Arachnid Exoskeleton
							},
						}),
					},
				})),
			},
		}),
	}),
})));
