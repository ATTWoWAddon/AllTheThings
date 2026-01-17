---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(HIGHMOUNTAIN, {
			n(PROFESSIONS, {
				prof(FISHING, {
					faction(FACTION_AKULE_RIVERHORN, {	-- Akule Riverhorn
						["description"] = "This Fisherfriend NPC is located at: |cFFFFFFFF32.4, 40.9|r at the bottom of Thunder Totem in the boat on the water.\n\nThe Fisherfriend NPC's will not always be up and only one is up at any given time. You will have to either travel to the zone, ask a friend or check group finder to see if they are up.\n\nWhen fishing for the item for this particular fisherfriend make sure that you are close enough so that you recive the buff |cFFFFD700Something's Fishy|r, otherwise you won't be able to receive the turn-in items or the boss that is summoned.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
						["requireSkill"] = FISHING,
						["creatureID"] = 120457,
						["coord"] = { 32.4, 40.9, 750 },	-- Highmountain (Thunder Totem)
						["groups"] = {
							i(146960, {		-- Ancient Totem Fragment
								-- extra info for the item can go here
							}),
							i(147310, {	-- Crate of Bobbers: Floating Totem (TOY!)
								["cost"] = { { "i", 146960, 100 }, },	-- 100x Ancient Totem Fragment
							}),
							i(152556, {	-- Trawler Totem (TOY!)
								["cost"] = { { "i", 146960, 50 }, },	-- 50x Ancient Totem Fragment
							}),
							i(133709, {	-- Funky Sea Snail
								["cost"] = { { "i", 146960, 25 }, },	-- 25x Ancient Totem Fragment
								["sym"] = {{"fill"}},
							}),
							i(133711, {	-- Swollen Murloc Egg
								["cost"] = { { "i", 146960, 25 }, },	-- 25x Ancient Totem Fragment
								["sym"] = {{"fill"}},
							}),
							i(133712, {	-- Frost Worm
								["cost"] = { { "i", 146960, 25 }, },	-- 25x Ancient Totem Fragment
								["sym"] = {{"fill"}},
							}),
							i(124109, {	-- Highmountain Salmon
								["cost"] = { { "i", 146960, 10 }, },	-- 10x Ancient Totem Fragment
							}),
						},
					}),
					i(137695),	-- Schematic: Reaves Module: Wormhole Generator Mode (RECIPE!)
				}),
				prof(TAILORING, {
					i(137681, {	-- Pattern: Bloodtotem Saddle Blanket
						["description"] = "Can drop from any Feltotem.",
					}),
				}),
			}),
		}),
	}),
});
