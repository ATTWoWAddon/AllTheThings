-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.Professions, prof(ENGINEERING, bubbleDownSelf({ ["requireSkill"] = ENGINEERING }, {
	n(REWARDS, {
		i(11423, {	-- Gnome Engineer's Renewal Gift
			["description"] = "If you destroy your Gnome Engineer Membership Card, you can renew your membership for 2 Gold and will receive this gift in the mail in about a day.",
			["provider"] = { "i", 10790 },	-- Gnome Engineer Membership Card
			["groups"] = {
				i(10603),	-- Schematic: Catseye Ultra Goggles (RECIPE!)
				i(11827, {["requireSkill"] = IGNORED_VALUE}),	-- Schematic: Lil' Smoky (RECIPE!)
				i(10606),	-- Schematic: Parachute Cloak(RECIPE!)
			},
		}),
		i(11422, {	-- Goblin Engineer's Renewal Gift
			["description"] = "If you destroy your Goblin Engineer Membership Card, you can renew your membership for 2 Gold and will receive this gift in the mail in about a day.",
			["provider"] = { "i", 10791 },	-- Goblin Engineer Membership Card
			["groups"] = {
				i(4416),	-- Schematic: Goblin Land Mine (RECIPE!)
				i(4417),	-- Schematic: Large Seaforium Charge (RECIPE!)
				i(11828, {["requireSkill"] = IGNORED_VALUE}),	-- Schematic: Pet Bombling (RECIPE!)
			},
		}),
	}),
})));