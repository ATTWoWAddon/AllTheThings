---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(REVENDRETH, {
		n(EMISSARY_QUESTS, {
			q(62849, {	-- Paragon of the Court of Harvesters
				["provider"] = { "n", 156822 },	-- Mistress Mihaela <Court of Harvesters Quartermaster>
				["coord"] = { 61.4, 63.8, REVENDRETH },
				["minReputation"] = { FACTION_COURT_OF_HARVESTERS, EXALTED },	-- Court of Harvesters, Exalted
			}),
			q(61100, {	-- Supplies from the Court of Harvesters
				["provider"] = { "n", 156822 },	-- Mistress Mihaela <Court of Harvesters Quartermaster>
				["coord"] = { 61.4, 63.8, REVENDRETH },
				["minReputation"] = { FACTION_COURT_OF_HARVESTERS, EXALTED },	-- Court of Harvesters, Exalted
				["repeatable"] = true,
				["groups"] = {
					i(180648, {	-- Court of Harvesters Supplies
						i(180601),	-- Stoneskin Dredwing Pup (PET!)
					}),
				},
			}),
		}),
	}),
})));
