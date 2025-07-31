-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
ICOKE_PROMOTION = createHeader({
	readable = "iCoke",
	-- #if AFTER 5.4.2
	icon = 461806,
	-- #else
	icon = 132797,
	-- #endif
	text = {
		en = "iCoke",
		cn = "可口可乐活动",
		tw = "可口可樂活動",
	},
	description = {
		en = "These were only available through the 2006 iCoke Promotion (China Only)",
	},
});
root(ROOTS.Promotions, n(ICOKE_PROMOTION, bubbleDown({ ["u"] = REMOVED_FROM_GAME }, {
	["timeline"] = { ADDED_1_12_1 },
	["groups"] = {
		i(19055),	-- Tiny Green Dragon (PET!)
		i(22781),	-- Poley (PET!)
		i(19054),	-- Tiny Red Dragon (PET!)
		i(22780),	-- Terky (PET!)
	},
})));
