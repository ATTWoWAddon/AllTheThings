---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_1_0 } }, {
	m(THE_MAW, {
		n(WORLD_QUESTS, {
			q(64273, {	-- Containing the Helsworn
				["sourceQuests"] = { 63622 },	-- Victory in Our Name
				["isWorldQuest"] = true,
				["isWeekly"] = true,
			}),
		}),
	}),
})));
