---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_2_0 } }, {
	m(MECHAGON, {
		n(EMISSARY_QUESTS, {
			q(55348, bubbleDownSelf({ ["minReputation"] = { FACTION_RUSTBOLT_RESISTANCE, EXALTED } }, {	-- Supplies from the Rustbolt Resistance
				["repeatable"] = true,
				["lvl"] = 120,
				["groups"] = {
					i(170061, {	-- Rustbolt Supplies
						i(168935, {	-- Existence Vibrancy Display (Rank 4)
							["u"] = REMOVED_FROM_GAME,
							["modelScale"] = 3,
							["classes"] = HEALERS,
							["model"] = 2974000,
						}),
						i(168569, {	-- Null Force Visualizer (Rank 4)
							["u"] = REMOVED_FROM_GAME,
							["modelScale"] = 3,
							["classes"] = TANKS,
							["model"] = 2924336,
						}),
						i(168861, {	-- Ultimate Purification Protocols (Rank 4)
							["u"] = REMOVED_FROM_GAME,
							["modelScale"] = 4,
							["model"] = 2958033,
						}),
						i(168906),	-- Blueprint: Holographic Digitalization Relay
						i(169171),	-- Blueprint: Microbot XD
						i(168494),	-- Blueprint: Rustbolt Resistance Insignia
						i(168368),	-- Recipe: Famine Evaluator And Snack Table [Rank 3] (RECIPE!)
					}),
				},
			})),
		}),
	}),
})));
