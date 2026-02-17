--------------------------------------------
--       E V E N T S    M O D U L E       --
--------------------------------------------

ELEMENTAL_INVASIONS = createHeader({
	readable = "Elemental Invasions",
	icon = 538566,
	text = {
		en = "Elemental Invasions",
		-- TODO: de = "",
		es = "Incursiones elementales",
		mx = "Invasiones elementales",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		-- TODO: cn = "",
		-- TODO: tw = "",
	},
	description = {
		en = "Reports of elemental incursions in different parts of Kalimdor are increasing. Every few days, a new wave of elementals blasts its way into the regions of Silithus, Un'Goro Crater, Azshara, and Winterspring - ostensibly, for the sole reason of seeing just how far into these territories they can penetrate before being beaten back by the forces of the Horde or the Alliance. Investigate these regions and aid your allies in countering these mysterious invasions.",
		es = "Aumentan los informes de incursiones elementales en diferentes partes de Kalimdor. Cada pocos días, una nueva oleada de elementales se abre paso a la fuerza en las regiones de Silithus, el Cráter de Un'Goro, Azshara y Cuna del Invierno, aparentemente con el único propósito de ver hasta dónde pueden penetrar en estos territorios antes de ser repelidos por las fuerzas de la Horda o la Alianza. Investiga estas regiones y ayuda a tus aliados a contrarrestar estas misteriosas invasiones.",
		mx = "Aumentan los informes de invasiones elementales en diferentes partes de Kalimdor. Cada pocos días, una nueva oleada de elementales se abre paso a la fuerza en las regiones de Silithus, el Cráter de Un'Goro, Azshara y Cuna del Invierno, aparentemente con el único propósito de ver hasta dónde pueden penetrar en estos territorios antes de ser repelidos por las fuerzas de la Horda o la Alianza. Investiga estas regiones y ayuda a tus aliados a contrarrestar estas misteriosas invasiones.",
	},
});

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	n(WORLD_BOSSES, {
		["lvl"] = 60,
		["groups"] = applyclassicphase(PHASE_TWO, bubbleDown({ ["timeline"] = { ADDED_1_4_0, REMOVED_4_0_3 } }, {
			n(14464, {	-- Avalanchion
				["description"] = "This is only available during an Elemental Invasion.",
				["coords"] = {
					{ 72.6, 20.0, AZSHARA },
					{ 77.2, 16.6, AZSHARA },
					{ 82.6, 21.0, AZSHARA },
					{ 77.0, 24.2, AZSHARA },
					{ 80.0, 24.2, AZSHARA },
				},
				["groups"] = {
					i(18673, {	-- Avalanchion's Stony Hide
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(18674, {	-- Hardened Stone Band
						["timeline"] = { REMOVED_4_0_3 },
					}),
					applyclassicphase(PHASE_THREE_DMF_CARDS, i(19268)),	-- Ace of Elementals
				},
			}),
			n(14461, {	-- Baron Charr
				["description"] = "This is only available during an Elemental Invasion.",
				["coords"] = {
					{ 44.6, 46.0, UNGORO_CRATER },
					{ 48.2, 41.2, UNGORO_CRATER },
					{ 53.2, 41.8, UNGORO_CRATER },
					{ 56.6, 42.8, UNGORO_CRATER },
					{ 56.6, 48.2, UNGORO_CRATER },
					{ 55.6, 57.4, UNGORO_CRATER },
					{ 51.6, 57.6, UNGORO_CRATER },
					{ 45.4, 54.8, UNGORO_CRATER },
				},
				["groups"] = {
					i(18671, {	-- Baron Charr's Sceptre
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(18672, {	-- Elemental Ember
						["timeline"] = { REMOVED_4_0_3 },
					}),
					-- #if BEFORE 4.0.3
					applyclassicphase(PHASE_THREE_DMF_CARDS, i(19268)),	-- Ace of Elementals
					-- #endif
				},
			}),
			n(14457, {	-- Princess Tempestria
				["description"] = "This is only available during an Elemental Invasion.",
				["coord"] = { 54.6, 42.6, WINTERSPRING },
				["groups"] = {
					i(21548, {	-- Pattern: Stormshroud Gloves (RECIPE!)
						["timeline"] = { REMOVED_4_0_3 },
					}),
					-- #if BEFORE 4.0.3
					i(7091),	-- Pattern: Truefaith Gloves (RECIPE!)
					-- #endif
					i(18679, {	-- Frigid Ring
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(18678, {	-- Tempestria's Frozen Necklace
						["timeline"] = { REMOVED_4_0_3 },
					}),
					-- #if BEFORE 4.0.3
					applyclassicphase(PHASE_THREE_DMF_CARDS, i(19268)),	-- Ace of Elementals
					-- #endif
				},
			}),
			n(14454, {	-- The Windreaver
				["description"] = "This is only available during an Elemental Invasion.",
				["coords"] = {
					{ 17.6, 27.0, SILITHUS },
					{ 26.6, 29.6, SILITHUS },
					{ 31.0, 23.6, SILITHUS },
					{ 32.2, 17.2, SILITHUS },
				},
				["groups"] = {
					i(18676, {	-- Sash of the Windreaver
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(18677, {	-- Zephyr Cloak
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(21548, {	-- Pattern: Stormshroud Gloves (RECIPE!)
						["timeline"] = { REMOVED_4_0_3 },
					}),
					applyclassicphase(PHASE_THREE_DMF_CARDS, i(19268)),	-- Ace of Elementals
				},
			}),
		})),
	}),
}));