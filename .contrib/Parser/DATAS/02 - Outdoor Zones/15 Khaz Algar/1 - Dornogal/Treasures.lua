---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(DORNOGAL, {
		n(TREASURES, {
			o(444354, {	-- Turtle's Thanks
				["sourceQuests"] = { 79586 },	-- Dalaran Sewer Turtle
				["crs"] = { 212945 },	-- Fill in the turtle you have to talk to
				["provider"] = { "n", 212928 },
				["coord"] = { 58.3, 30.3, DORNOGAL },
				["questID"] = 82716,
				["groups"] = {
					i(224549),	-- Dalaran Sewer Turtle (PET!)
				},
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	m(KHAZ_ALGAR, {
		m(DORNOGAL, {
			n(TREASURES, {
				q(82255),	-- Turtle's Thanks spawned
			}),
		}),
	}),
}));
