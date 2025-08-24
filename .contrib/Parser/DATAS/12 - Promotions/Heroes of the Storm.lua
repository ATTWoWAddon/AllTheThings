-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
HEROES_OF_THE_STORM = createHeader({
	readable = "Heroes of the Storm",
	icon = 132314,
	text = {
		en = "Heroes of the Storm",
		cn = "风暴英雄",
		tw = "暴雪英霸",
	},
});
root(ROOTS.Promotions, n(HEROES_OF_THE_STORM, {
	["timeline"] = { ADDED_6_0_2 },
	["groups"] = {
		ach(10657, {	-- Fledgling Hero of Warcraft
			["description"] = "Cross-Game Reward: Lady Liadrin Paladin Hero in Hearthstone.",
			["timeline"] = { ADDED_7_0_3 },
		}),
		n(REWARDS, bubbleDown({
			["u"] = REAL_MONEY,
			["sharedDescription"] = "Obtained by playing Heroes of the Storm and reaching level 20.",
			["timeline"] = { ADDED_6_1_2 },
		}, {
			ach(9926),	-- Hero of the Storm
			i(118518),	-- Graves (PET!)
		})),
		n(REWARDS, bubbleDown({
			["u"] = REMOVED_FROM_GAME,
			["sharedDescription"] = "Obtained by winning 15 games of Heroes of the Storm.\n\nSadly, this is no longer available.",
			["timeline"] = { ADDED_7_2_0 },
		}, {
			ach(11425),	-- Herald of Flames
			i(143631),	-- Primal Flamesaber (MOUNT!)
		})),
	},
}));
