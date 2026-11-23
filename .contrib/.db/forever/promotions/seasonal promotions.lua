-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------

local FOREVER_SEASONAL_PROMOTIONS = createHeader({
	readable = "Forever Seasonal Promotions",
	icon = 1120721,
	text = {
		en = "Forever Seasonal Promotions",
		cn = "无限季节促销活动",
		tw = "《永恆》季節性促銷",
	},
	description = {
		en = "These promotions happened during World of Warcraft: Forever.\n\nThey are listed in the order of their first appearance.",
		cn = "这些促销活动发生于《魔兽世界：无限》期间。\n\n它们按照首次出现的顺序排列。",
		tw = "這些促銷活動在《魔獸世界：永恆》期間舉辦。\n\n以下按活動首次出現的時間順序列出。",
	},
});
root(ROOTS.Promotions, n(FOREVER_SEASONAL_PROMOTIONS, {
	-- Launch Celebration
	i(289439, {	-- Pouch of Violet Dust (TOY!)
		description = "Obtained through watching any eligible World of Warcraft stream on Twitch with Drops enabled for at least 4 hours between November 4th, 4:30 p.m. & November 12th, 4:29 a.m. PST. It first appeared as a surprise drop at the end of the launch-day Legendary crafting stream.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.\n\nThis toy is ephemeral: it only works during the WoW: Forever Launch Celebration, and it is slated to be removed from players' collections when that event ends in early December. A week-long, Twitch-only window for an item that gets taken away a month later is exactly the kind of FOMO that disheartens collectors: it can't be earned by playing the game at all, and even those who get it don't get to keep it.",
		timeline = { TIMELINE.ADDED_1_60_1 },	-- Twitch drop ends November 12th, 4:29 a.m. PST; removed from collections when the Launch Celebration ends (early December)
	}),
	-- China Launch Event
	cnONLY(i(287960, {	-- Portable Wormhole Generator
		description = "Reward from the WoW: Forever launch event on the Chinese World of Warcraft site (wow.blizzard.cn/h5/20261103/foreverup).",
		timeline = { TIMELINE.ADDED_1_60_1 },
	})),
	cnONLY(i(287961, {	-- Portable Repair Bot
		description = "Reward from the WoW: Forever launch event on the Chinese World of Warcraft site (wow.blizzard.cn/h5/20261103/foreverup).",
		timeline = { TIMELINE.ADDED_1_60_1 },
	})),
}));
