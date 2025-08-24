---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(DRAENOR, {
		n(RARES, {
			o(239828, {	-- Edge of Reality
				["description"] = "When you click on the Edge of Reality, it will teleport you. Click on the egg to receive the mount.\n\nIf you are not on your own realm when you click on the portal, you will NOT be teleported and the mount will be mailed to you.",
				["coords"] = {
					{ 51.1, 19.86, FROSTFIRE_RIDGE },
					{ 52.4, 18.18, FROSTFIRE_RIDGE },
					{ 53.8, 17.46, FROSTFIRE_RIDGE },
					{ 47.7, 27.57, FROSTFIRE_RIDGE },
					{ 39.0, 26.00, FROSTFIRE_RIDGE },
					{ 47.7, 27.57, FROSTFIRE_RIDGE },
					{ 51.6, 38.8, GORGROND },
					{ 54.0, 45.8, GORGROND },
					{ 56.0, 40.7, GORGROND },
					{ 43.3, 34.2, GORGROND },
					{ 46.9, 21.2, GORGROND },
					{ 40.5, 47.6, DRAENOR_NAGRAND },
					{ 44.0, 30.7, DRAENOR_NAGRAND },
					{ 45.9, 31.4, DRAENOR_NAGRAND },
					{ 57.3, 26.7, DRAENOR_NAGRAND },
					{ 59.5, 10.2, DRAENOR_NAGRAND },
					{ 41.9, 75.7, DRAENOR_SHADOWMOON_VALLEY },
					{ 43.7, 70.9, DRAENOR_SHADOWMOON_VALLEY },
					{ 48.9, 70.2, DRAENOR_SHADOWMOON_VALLEY },
					{ 50.3, 71.5, DRAENOR_SHADOWMOON_VALLEY },
					{ 49.6, 71.6, DRAENOR_SHADOWMOON_VALLEY },
					{ 50.9, 72.5, DRAENOR_SHADOWMOON_VALLEY },
					{ 51.6, 74.8, DRAENOR_SHADOWMOON_VALLEY },
					{ 36.4, 18.3, SPIRES_OF_ARAK },
					{ 47.0, 20.1, SPIRES_OF_ARAK },
					{ 50.4, 6.10, SPIRES_OF_ARAK },
					{ 60.8, 11.2, SPIRES_OF_ARAK },
					{ 39.9, 55.6, TALADOR },
					{ 46.3, 52.6, TALADOR },
					{ 47.1, 48.8, TALADOR },
					{ 52.1, 41.1, TALADOR },
					{ 52.3, 25.8, TALADOR },
				},
				["modelScale"] = 3,
				["groups"] = {
					o(239901, {	-- Voidtalon Egg
						["modelScale"] = 1.5,
						["groups"] = {
							i(121815),	-- Voidtalon of the Dark Star (MOUNT!)
						},
					}),
				},
			}),
		})
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	n(RARES, {
		o(239828, {	-- Edge of Reality
			q(37864),	-- Voidtalon of the Dark Star - triggers after the player leaves the scenario
		}),
	}),
})));
