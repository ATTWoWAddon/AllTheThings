---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(STORMHEIM, {
			n(PROFESSIONS, {
				prof(FISHING, {
					faction(FACTION_CORBYN, {	-- Corbyn
						["creatureID"] = 120458,
						["coord"] = { 90.6, 10.6, STORMHEIM },
						["description"] = "This Fisherfriend NPC is located at: |cFFFFFFFF90.6, 10.6|r on Shield's Rest.\n\nThe Fisherfriend NPC's will not always be up and only one is up at any given time. You will have to either travel to the zone, ask a friend or check group finder to see if they are up.\n\nWhen fishing for the item for this particular fisherfriend make sure that you are close enough so that you recive the buff |cFFFFD700Something's Fishy|r, otherwise you won't be able to receive the turn-in items or the boss that is summoned.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
						["requireSkill"] = FISHING,
						["groups"] = {
							i(146961, {		-- Shiny Bauble
								-- extra info for the item can go here
							}),
							i(147307, {	-- Crate of Bobbers: Carved Wooden Helm (TOY!)
								["cost"] = { { "i", 146961, 100 }, },	-- 100x Shiny Bauble
							}),
							i(152574, {	-- Corbyn's Beacon (TOY!)
								["cost"] = { { "i", 146961, 50 }, },	-- 50x Shiny Bauble
							}),
							i(133713, {	-- Moosehorn Hook
								["cost"] = { { "i", 146961, 25 }, },	-- 25x Shiny Bauble
								["sym"] = {{"fill"}},
							}),
							i(133715, {	-- Ancient Vrykul Ring
								["cost"] = { { "i", 146961, 25 }, },	-- 25x Shiny Bauble
								["sym"] = {{"fill"}},
							}),
							i(133716, {	-- Soggy Drakescale
								["cost"] = { { "i", 146961, 25 }, },	-- 25x Shiny Bauble
								["sym"] = {{"fill"}},
							}),
							i(124110, {	-- Stormray
								["cost"] = { { "i", 146961, 10 }, },	-- 10x Shiny Bauble
							}),
						},
					}),
					i(137695),	-- Schematic: Reaves Module: Wormhole Generator Mode (RECIPE!)
				}),
				prof(SKINNING, {
					i(139894, {	-- Skinning Technique: Unbroken Claw
						["requireSkill"] = SKINNING,
						["crs"] = {
							91799,	-- Juvenile Stormwing
						},
						["groups"] = {
							{ -- Unbroken Claw
								["recipeID"] = 194171,	-- Unbroken Claw
							},
						},
					}),
				}),
			}),
		}),
	}),
});
