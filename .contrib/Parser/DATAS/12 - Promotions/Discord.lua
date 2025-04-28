-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
DISCORD_PROMOTION = createHeader({
	readable = "Discord Promotion",
	icon = 133014,
	text = {
		en = "Discord Promotion",
		cn = "Discord 推广",
		tw = "Discord推廣",
	},
	description = {
		en = "Promotion for streaming World of Warcraft in Discord.",
	},
});

root(ROOTS.Promotions, n(DISCORD_PROMOTION, {
	["timeline"] = { ADDED_11_0_2 },
	["groups"] = {
		i(233053, {	-- Crown of the Violet Rose
			["description"] = "Quest is only available with an US IP. Codes are useable worldwide.\n\nIn the bottom left of your Discord Server list, click Discover & there click on the Quests tab to start the Quest for the Reward.\n\nStream World of Warcraft in Discord to a friend for 15 minutes.\n\nOnce you're in a Direct Message, Groupchat, or Server, simply choose 'Go Live' to stream World of Warcraft for 15 minutes - you'll have a progress bar that indicates how close you are to earning your transmog.\nUpon completion of the quest, you'll be given a code to redeem - head to the Battle.net launcher, click your profile in the top right, and choose 'Redeem Code.' From there, it's a quick copy and paste until the Crown of the Violet Rose is yours!\n\nPromotion is available from December 2nd, 2024 until December 9th, 2024 (11:59PM UTC).",
			["timeline"] = { "added 11.0.5.57689", "removed 11.0.5.57689" },
		}),
		i(228758, {	-- Parrlok (PET!)
			["description"] = "In the bottom left of your Discord Server list, click Discover & there click on the Quests tab to start the Quest for the Reward.\n\nStream World of Warcraft in Discord to a friend for 15 minutes.\n\nOnce you're in a Direct Message, Groupchat, or Server, simply choose 'Go Live' to stream World of Warcraft for 15 minutes - you'll have a progress bar that indicates how close you are to earning your pet.\nUpon completion of the quest, you'll be given a code to redeem - head to the Battle.net launcher, click your profile in the top right, and choose 'Redeem Code.' From there, it's a quick copy and paste until Parrlok Parrlok is yours!\n\nPromotion is available from August 23rd, 2024 until September 8th, 2024 (11:59PM UTC).",
			["timeline"] = { ADDED_11_0_2 },
			["u"] = REMOVED_FROM_GAME,	-- 8th September 2024
		}),
	},
}));
