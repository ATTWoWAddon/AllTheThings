-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------

local ICOKE_PROMOTION = createHeader({
	readable = "iCoke",
	-- #if AFTER 5.4.2
	icon = 461806,
	-- #else
	icon = 132797,
	-- #endif
	text = {
		en = "iCoke",
		-- TODO: de = "",
		-- TODO: es = "",
		-- TODO: mx = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "可口可乐活动",
		tw = "可口可樂活動",
	},
	description = {
		en = "These were only available through the 2006 iCoke Promotion (China Only)",
		cn = "这些仅可通过2006年的 iCoke 促销活动获得（仅限中国）。",
		tw = "這些獎勵只能透過 2006 年的 iCoke 促銷活動取得（僅限中國）。",
	},
});

root(ROOTS.Promotions, n(ICOKE_PROMOTION, bubbleDown({ u = REMOVED_FROM_GAME }, {
	timeline = { ADDED_1_12_1 },
	groups = {
		i(22781),	-- Poley (PET!)
		i(22780),	-- Terky (PET!)
		i(19055),	-- Tiny Green Dragon (PET!)
		i(19054),	-- Tiny Red Dragon (PET!)
	},
})));
