-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
ZANDALARI_INCURSIONS = createHeader({
	readable = "Zandalari Incursions",
	icon = 838687,
	text = {
		en = "Zandalari Incursions",
		-- TODO: de = "",
		es = "Incursiones zandalari",
		mx = "Incursiones zandalari",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "赞达拉入侵",
		tw = "贊達拉入侵",
	},
	description = {
		en = "The Zandalari Incursions into the main land of Pandaria began with the release of the Isle of Thunder. Warbringers can be found all around the continent with varying degrees of challenging solo mechanics and available mounts! Farm these with friends.",
		-- TODO: de = "",
		-- TODO: es = "",
		-- TODO: mx = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "赞达拉部族对潘达利亚大陆的入侵始于雷神岛的开放。战争使者遍布整个大陆，拥有难度各异的单人挑战机制及可获取的坐骑！与好友一同刷取这些奖励吧。",
		-- TODO: tw = "",
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_2_0 } }, {
	applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, n(ZANDALARI_INCURSIONS, {
		["coords"] = {
			{ 47.42, 61.54, DREAD_WASTES },
			{ 75.11, 67.47, KUN_LAI_SUMMIT },
			{ 52.56, 18.85, THE_JADE_FOREST },
			{ 36.58, 85.67, TOWNLONG_STEPPES },
		},
		["maps"] = { KRASARANG_WILDS },
		["lvl"] = lvlsquish(85, 85, 10),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(8078, {	-- Zul'Again
					crit(22733, {	-- Zandalari Scouts Slain slain (10)
						["_npcs"] = { 69768 },	-- Zandalari Warscout
					}),
					crit(22942, {	-- Zandalari Warbringers Slain slain (5)
						["_npcs"] = { 69842 },
					}),
					crit(22941, {	-- Zandalari Warbringers Slain slain (5)
						["_npcs"] = { 69841 },
					}),
					crit(22732, {	-- Zandalari Warbringers Slain slain (5)
						["_npcs"] = { 69769 },
					}),
				}),
			}),
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					69768,	-- Zandalari Warscout
					69841,	-- Zandalari Warbringer (Amber)
					69842,	-- Zandalari Warbringer (Jade)
					69769,	-- Zandalari Warbringer (Slate)
				},
				["groups"] = {
					i(94158, {	-- Big Bag of Zandalari Supplies
						["description"] = "Can contain all sorts of crafting reagents, gems, and BOE epics normally found on rares in Pandaria.",
						["sym"] = {{"select","itemID",87218},{"groupfill"}},	-- Big Bag of Arms
					}),
					i(94159, {	-- Small Bag of Zandalari Supplies
						["description"] = "Can contain all sorts of herbs, ore, and cloth.",
					}),
					i(94225),	-- Stolen Celestial Insignia
					i(94227),	-- Stolen Golden Lotus Insignia
					i(94226),	-- Stolen Klaxxi Insignia
					i(94223),	-- Stolen Shado-Pan Insignia
				},
			}),
			n(69768, {	-- Zandalari Warscout
				["coords"] = {
					{ 38.0, 48.6, DREAD_WASTES },
					{ 47.0, 60.4, DREAD_WASTES },
					{ 57.6, 66.0, DREAD_WASTES },
					{ 57.8, 29.2, KRASARANG_WILDS },
					{ 36.2, 60.2, KRASARANG_WILDS },
					{ 38.6, 66.6, KRASARANG_WILDS },
					{ 64.6, 64.0, KUN_LAI_SUMMIT },
					{ 74.6, 67.8, KUN_LAI_SUMMIT },
					{ 67.2, 81.8, KUN_LAI_SUMMIT },
					{ 43.2, 17.2, THE_JADE_FOREST },
					{ 53.0, 19.6, THE_JADE_FOREST },
					{ 52.4, 37.0, THE_JADE_FOREST },
					{ 49.4, 73.2, TOWNLONG_STEPPES },
					{ 36.8, 85.2, TOWNLONG_STEPPES },
					{ 48.4, 86.0, TOWNLONG_STEPPES },
				},
				["description"] = "Can be found patroling the roads along the posted coordinates.",
			}),
			n(69841, {	-- Zandalari Warbringer (Amber)
				i(94230),	-- Amber Primordial Direhorn (MOUNT!)
			}),
			n(69842, {	-- Zandalari Warbringer (Jade)
				i(94231),	-- Jade Primordial Direhorn (MOUNT!)
			}),
			n(69769, {	-- Zandalari Warbringer (Slate)
				["coord"] = { 38.8, 67.6, KRASARANG_WILDS },
				["groups"] = {
					i(94229),	-- Slate Primordial Direhorn (MOUNT!)
				},
			}),
		},
	})),
})));
