--------------------------------------------
--       E V E N T S    M O D U L E       --
--------------------------------------------
--[[
root(ROOTS.WorldEvents, {
	n(createHeader({
		readable = "Elemental Invasions",
		icon = 135793,
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
			cn = "元素入侵",
			-- TODO: tw = "",
		},
		description = {
			en = "Reports of elemental incursions in different parts of Kalimdor are increasing. Every few days, a new wave of elementals blasts its way into the regions of Silithus, Un'Goro Crater, Azshara, and Winterspring - ostensibly, for the sole reason of seeing just how far into these territories they can penetrate before being beaten back by the forces of the Horde or the Alliance. Investigate these regions and aid your allies in countering these mysterious invasions.",
			es = "Aumentan los informes de incursiones elementales en diferentes partes de Kalimdor. Cada pocos días, una nueva oleada de elementales se abre paso a la fuerza en las regiones de Silithus, el Cráter de Un'Goro, Azshara y Cuna del Invierno, aparentemente con el único propósito de ver hasta dónde pueden penetrar en estos territorios antes de ser repelidos por las fuerzas de la Horda o la Alianza. Investiga estas regiones y ayuda a tus aliados a contrarrestar estas misteriosas invasiones.",
			mx = "Aumentan los informes de invasiones elementales en diferentes partes de Kalimdor. Cada pocos días, una nueva oleada de elementales se abre paso a la fuerza en las regiones de Silithus, el Cráter de Un'Goro, Azshara y Cuna del Invierno, aparentemente con el único propósito de ver hasta dónde pueden penetrar en estos territorios antes de ser repelidos por las fuerzas de la Horda o la Alianza. Investiga estas regiones y ayuda a tus aliados a contrarrestar estas misteriosas invasiones.",
			cn = "在卡利姆多的不同地区，元素入侵的报告正在增加。每隔几天，一股新的元素浪潮就会强行涌入希利苏斯、安戈洛环形山、艾萨拉和冬泉谷的区域——显然，只是为了看看它们能在这些领土上深入到什么程度，直到被部落或联盟的军队击退。调查这些地区并帮助你的盟友对抗这些神秘的入侵。",
		},
	}), {
		["lvl"] = 60,
		["groups"] = {
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					14464,	-- Avalanchion
					14461,	-- Baron Charr
					14457,	-- Princess Tempestria
					14454,	-- The Windreaver
				},
				["groups"] = { i(19268) },	-- Ace of Elementals
			}),
			n(14464, {	-- Avalanchion
				["description"] = "This is only available during an Elemental Invasion.",
				["coords"] = {
					{ 72.6, 20.0, MAP.AZSHARA },
					{ 77.2, 16.6, MAP.AZSHARA },
					{ 82.6, 21.0, MAP.AZSHARA },
					{ 77.0, 24.2, MAP.AZSHARA },
					{ 80.0, 24.2, MAP.AZSHARA },
				},
				["groups"] = {
					i(18673),	-- Avalanchion's Stony Hide
					i(18674),	-- Hardened Stone Band
				},
			}),
			n(14461, {	-- Baron Charr
				["description"] = "This is only available during an Elemental Invasion.",
				["coords"] = {
					{ 44.6, 46.0, MAP.UNGORO_CRATER },
					{ 48.2, 41.2, MAP.UNGORO_CRATER },
					{ 53.2, 41.8, MAP.UNGORO_CRATER },
					{ 56.6, 42.8, MAP.UNGORO_CRATER },
					{ 56.6, 48.2, MAP.UNGORO_CRATER },
					{ 55.6, 57.4, MAP.UNGORO_CRATER },
					{ 51.6, 57.6, MAP.UNGORO_CRATER },
					{ 45.4, 54.8, MAP.UNGORO_CRATER },
				},
				["groups"] = {
					i(18671),	-- Baron Charr's Sceptre
					i(18672),	-- Elemental Ember
				},
			}),
			n(14457, {	-- Princess Tempestria
				["description"] = "This is only available during an Elemental Invasion.",
				["coord"] = { 54.6, 42.6, MAP.WINTERSPRING },
				["groups"] = {
					i(21548),	-- Pattern: Stormshroud Gloves (RECIPE!)
					i(7091),	-- Pattern: Truefaith Gloves (RECIPE!)
					i(18678),	-- Tempestria's Frozen Necklace
					i(18679),	-- Frigid Ring
				},
			}),
			n(14454, {	-- The Windreaver
				["description"] = "This is only available during an Elemental Invasion.",
				["coords"] = {
					{ 17.6, 27.0, MAP.SILITHUS },
					{ 26.6, 29.6, MAP.SILITHUS },
					{ 31.0, 23.6, MAP.SILITHUS },
					{ 32.2, 17.2, MAP.SILITHUS },
				},
				["groups"] = {
					i(21548),	-- Pattern: Stormshroud Gloves (RECIPE!)
					i(18676),	-- Sash of the Windreaver
					i(18677),	-- Zephyr Cloak
				},
			}),
		},
	}),
});
]]--
