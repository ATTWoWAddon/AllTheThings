---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_2_0 } }, {
	m(MECHAGON, {
		n(PROFESSIONS, {
			prof(FISHING, {
				n(QUESTS, sharedData({
					["isDaily"] = true,
				},{
					q(55311, {	-- Energized Lightning Cod
						["provider"] = { "i", 167661 },	-- Energized Lightning Cod
					}),
					q(55312, {	-- Solarsprocket Barbel
						["provider"] = { "i", 167662 },	-- Solarsprocket Barbel
					}),
					q(55305, {	-- Bolted Steelhead
						["provider"] = { "i", 167655 },	-- Bolted Steelhead
					}),
					q(55313, {	-- Tasty Steelfin
						["provider"] = { "i", 167663 },	-- Tasty Steelfin
					}),
					q(55299, {	-- Bottom Feeding Stinkfish
						["provider"] = { "i", 167654 },	-- Bottom Feeding Stinkfish
					}),
					q(55306, {	-- Pond Hopping Springfish
						["provider"] = { "i", 167656 },	-- Pond Hopping Springfish
					}),
					q(55307, {	-- Shadowy Cave Eel
						["provider"] = { "i", 167657 },	-- Shadowy Cave Eel
					}),
					q(55310, {	-- Sludge-fouled Carp
						["provider"] = { "i", 167660 },	-- Sludge-fouled Carp
					}),
					q(55309, {	-- Spitting Clownfish
						["provider"] = { "i", 167659 },	-- Spitting Clownfish
					}),
					q(55308, {	-- Mechanical Blowfish
						["provider"] = { "i", 167658 },	-- Mechanical Blowfish
					}),
				})),
				n(ZONE_DROPS, {
					i(167661, {	-- Energized Lightning Cod
						["description"] = "Can be caught near Danielle, though it's likely they can be caught anywhere along the coast of the island.",
					}),
					i(167562),	-- Ionized Minnow
					i(168262),	-- Sentry Fish
					i(167662, {	-- Solarsprocket Barbel
						["description"] = "Can be caught anywhere on the island.",
					}),
					i(167655, {	-- Bolted Steelhead
						["description"] = "Can be caught anywhere on the island.",
					}),
					i(167663, {	-- Tasty Steelfin
						["description"] = "Can be caught at the waterfall - 47.37.",
						["coord"] = { 47.0, 37.0, MECHAGON },
					}),
					i(167654, {	-- Bottom Feeding Stinkfish
						["description"] = "Can be caught south of Rustbolt - 79.49",
						["coord"] = { 79.0, 49.0, MECHAGON },
					}),
					i(167656, {	-- Pond Hopping Springfish
						["description"] = "Can be caught at the pond near the waterfall - 56.32",
						["coord"] = { 56.0, 32.0, MECHAGON },
					}),
					i(167657, {	-- Shadowy Cave Eel
						["description"] = "Can be caught in the cave near the waterfall - 59.24",
						["coord"] = { 59.0, 24.0, MECHAGON },
					}),
					i(167660, {	-- Sludge-fouled Carp
						["description"] = "Can be caught in the oil pond in the middle - 66.52",
						["coord"] = { 66.0, 52.0, MECHAGON },
					}),
					i(167659, {	-- Spitting Clownfish
						["description"] = "Can be caught in the far southeast - 83.74",
						["coord"] = { 83.0, 74.0, MECHAGON },
					}),
					i(167658, {	-- Mechanical Blowfish
						["description"] = "Can be caught in the far southwest - 25.77",
						["coord"] = { 25.0, 77.0, MECHAGON },
					}),
				}),
			}),
		}),
	}),
})));
