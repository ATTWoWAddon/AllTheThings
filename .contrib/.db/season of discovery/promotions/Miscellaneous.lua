-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------

local MISCELLANEOUS_PROMOTIONS = createHeader({
	readable = "Miscellaneous",
	icon = 135999,
	text = {
		en = [[~AUCTION_CATEGORY_MISCELLANEOUS]],
	},
	description = {
		en = "This section is for miscellaneous promotions that took place in the real world or something to do with account management.",
		cn = "本板块用于收录现实中开展的各类杂项促销活动，以及与账号管理相关的内容。",
		tw = "此分類收錄現實世界中舉辦的各種促銷活動，以及與帳號管理相關的內容。",
	},
});

root(ROOTS.Promotions, n(MISCELLANEOUS_PROMOTIONS, bubbleDown({ u = REMOVED_FROM_GAME }, {
	i(19160, {	-- Contest Winner's Tabard [TODO: Move to PVP?]
		description = "This tabard was given to the people on each servers with the most honorable kills before the introduction of the original honor system.",
		timeline = { ADDED_1_11_1 },
	}),
})));
