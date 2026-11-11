-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------

local CN_PROMOTIONS_CLASSIC = createHeader({
	readable = "CN Promotions (Classic)",
	icon = [[~_.asset("Expansion_WOTLK")]],
	text = {
		en = "CN Promotions (Classic)",
		-- TODO: de = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		cn = "中国促销（经典）",
		tw = "中國促銷活動（經典版）",
	},
	description = {
		en = "These promotions are limited to the Classic & Titanforged Chinese Realms.",
		cn = "这些促销活动仅限于经典与泰坦重铸中国服务器。",
		tw = "這些促銷活動僅限中國的經典版與 Titanforged 伺服器。",	-- TODO: verify it.
	},
});
root(ROOTS.Promotions, {
	cnONLY(n(CN_PROMOTIONS_CLASSIC, {
		cnONLY(i(33225, {	-- Reins of the Swift Spectral Tiger (MOUNT!)
			description = "Obtained if you paid 267$ to set up a 6 Month WoW Subscription between 25th January 2022 until 25th July 2022.",
			u = REMOVED_FROM_GAME,
		})),
	})),
});

--https://warcraft.wiki.gg/wiki/Titan_Reforged_-_Chrono
