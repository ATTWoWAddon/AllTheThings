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
		description = "Awarded as a Twitch Mystery Drop during the WoW: Forever launch celebration, only between 4:00 p.m. & 5:00 p.m. Pacific Time on launch day. Viewers watching World of Warcraft streams with Drops enabled had a random chance to receive it; watching the whole hour didn't guarantee one.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.\n\nIt is no longer obtainable. A one-hour, luck-based window announced only shortly beforehand is exactly the kind of FOMO that disheartens collectors: it couldn't be earned by playing the game at all, and anyone who was at work, asleep, or simply in-game instead of on Twitch missed it permanently.",
		timeline = { TIMELINE.ADDED_1_60_1, "removed 1.60.1.70790" },
	}),
}));
