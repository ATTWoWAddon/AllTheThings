-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------

local FOREVER_SEASONAL_PROMOTIONS = createHeader({
	readable = "Forever Seasonal Promotions",
	icon = 1120721,
	text = {
		en = "Forever Seasonal Promotions",
	},
	description = {
		en = "These promotions happened during World of Warcraft: Forever.\n\nThey are listed in the order of their first appearance.",
	},
});
root(ROOTS.Promotions, n(FOREVER_SEASONAL_PROMOTIONS, {
	-- Launch Celebration
	i(289439, {	-- Pouch of Violet Dust (TOY!)
		description = "Obtained through watching any eligible World of Warcraft stream on Twitch with Drops enabled for at least 4 hours between November 4th, 4:30 p.m. & November 12th, 4:29 a.m. PST. It first appeared as a surprise drop at the end of the launch-day Legendary crafting stream.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.\n\nThis toy is ephemeral: it only works during the WoW: Forever Launch Celebration, and it is slated to be removed from players' collections when that event ends in early December. A week-long, Twitch-only window for an item that gets taken away a month later is exactly the kind of FOMO that disheartens collectors: it can't be earned by playing the game at all, and even those who get it don't get to keep it.",
		timeline = { TIMELINE.ADDED_1_60_1 },	-- Twitch drop ends November 12th, 4:29 a.m. PST; removed from collections when the Launch Celebration ends (early December)
	}),
}));
