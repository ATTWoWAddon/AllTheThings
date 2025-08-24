---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(BROKEN_SHORE, {
			n(PROFESSIONS, {
				prof(FISHING, {
					faction(FACTION_IMPUS, {	-- Impus
						["creatureID"] = 120460,
						["coord"] = { 33.9, 49.8, BROKEN_SHORE },
						["description"] = "This Fisherfriend NPC is located at: |cFFFFFFFF33.9, 49.8|r on Deadwood Landing.\n\nThe Fisherfriend NPC's will not always be up and only one is up at any given time. You will have to either travel to the zone, ask a friend or check group finder to see if they are up.\n\nWhen fishing for the item for this particular fisherfriend make sure that you are close enough so that you receive the buff |cFFFFD700Something's Fishy|r, otherwise you won't be able to receive the turn-in items or the boss that is summoned.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
						["requireSkill"] = FISHING,
						["groups"] = {
							i(146963, {	-- Desecrated Seaweed
								-- extra info for the item can go here
							}),
							i(147312, {	-- Crate of Bobbers: Demon Noggin (TOY!)
								["cost"] = { { "i", 146963, 100 } },	-- 100x Desecrated Seaweed
							}),
							i(152554, {	-- Desecrated Seaweed Shirt
								["cost"] = { { "i", 146963, 50 } },	-- 50x Desecrated Seaweed
							}),
							i(133721, {	-- Message in a Bottle
								["cost"] = { { "i", 146963, 25 } },	-- 25x Desecrated Seaweed
								["sym"] = {{"fill"}},
							}),
							i(133723, {	-- Stunned, Angry Shark
								["cost"] = { { "i", 146963, 25 } },	-- 25x Desecrated Seaweed
								["sym"] = {{"fill"}},
							}),
							i(133724, {	-- Decayed Whale Blubber
								["cost"] = { { "i", 146963, 25 } },	-- 25x Desecrated Seaweed
								["sym"] = {{"fill"}},
							}),
							i(124112, {	-- Black Barracuda
								["cost"] = { { "i", 146963, 10 } },	-- 10x Desecrated Seaweed
							}),
						},
					}),
				}),
			}),
		}),
	}),
});
