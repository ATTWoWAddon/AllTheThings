---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root("Zones", m(DRAGON_ISLES, {
	m(THE_FORBIDDEN_REACH_DRACTHYR, {
		["icon"] = 4672496,
		["lore"] = "The Forbidden Reach is an island located off the coast of the Dragon Isles. It was fashioned by Neltharion the Earth-Warder to serve as a training ground for his ultimate soldiers, the dracthyr. But in the aftermath of a terrible battle, the island has lain dormant and abandoned for ages until the return of an ancient enemy causes the dracthyr to stir.\n\nThe zone is the starting zone of the new playable race-hero class combo dracthyr evoker starting at level 58.",
		["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
		["timeline"] = { ADDED_10_0_2 },
		["maps"] = {
			2109,	-- The War Creche
			2110,	-- The Support Creche
			2111,	-- The Siege Creche
		},
	}),
}));
