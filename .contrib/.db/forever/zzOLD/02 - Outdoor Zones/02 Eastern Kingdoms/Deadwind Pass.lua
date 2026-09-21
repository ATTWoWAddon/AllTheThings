---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.EASTERN_KINGDOMS, {
	m(MAP.DEADWIND_PASS, {
		["lore"] = "Deadwind Pass is a haunted forest and canyon on the edges of the Kingdom of Stormwind in the southern Eastern Kingdoms. Serving as borders between Duskwood and Swamp of Sorrows, evil magic can be felt all through the zone, the trees are all but dead, and very few wildlife and ogres can be found in the zone. Travelers are advised to go through the pass fast, as they might fall to the zone's foreboding magic.\n\nTrivia:\nMedivh, the last Guardian, made Deadwind Pass his final place. The tower of Karazhan to the south served as his bastion until his final days.\n\nThe Karazhan Crypts can be explored by players who kill themselves and traverse the gates as a ghost. The crypt is filled to the brim with disturbing content, the most disturbing being a pool filled with human bodies hanged upside down and roped to chains. This area became known to players as the Upside-Down Sinners.",
		["icon"] = 236741,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(777),	-- Explore Deadwind Pass
			}),
			explorationHeader({
				visit_exploration(2560,{coord={52.6,36.8,MAP.DEADWIND_PASS}}),	-- Ariden's Camp
				exploration(2697),	-- Deadman's Crossing
				exploration(2562),	-- Karazhan
				exploration(2938),	-- Sleeping Gorge
				exploration(2561),	-- The Vice
			}),
			n(ZONE_DROPS, {
				i(16246, {	-- Formula: Enchant Bracer - Superior Strength (RECIPE!)
					["cr"] = 7372,	-- Deadwind Warlock
				}),
			}),
		},
	}),
}));
