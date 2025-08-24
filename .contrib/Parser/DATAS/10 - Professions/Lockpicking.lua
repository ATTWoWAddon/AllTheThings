root(ROOTS.Professions, prof(LOCKPICKING, {
	-- #if AFTER CATA
	["description"] = "Lockpicking now skills up as you level, you no longer need to practice. Hovering over your Pick Lock ability will show the current level of box you can open.",
	-- #else
	["description"] = "Lockpicking needs to be leveled up by practicing on lockboxes found in the world and junkboxes looted by using your pickpocket ability on appropriately leveled mobs.",
	-- TODO: Maybe add a thing in the tooltip for suggestions on where to level next?
	-- #endif
	-- This makes it ignore the profession requirement.
	["OnUpdate"] = [[function(t) t.DontEnforceSkillRequirements = true; end]],
	["groups"] = {
		recipe(1804, {	-- Pick Lock
			-- #if BEFORE WRATH
			["provider"] = { "i", 5060 },	-- Thieves' Tools
			-- #endif
			["classes"] = { ROGUE },
		}),
		recipe(921, {	-- Pick Pocket
			["classes"] = { ROGUE },
		}),
	}
}));
