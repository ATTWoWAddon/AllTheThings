-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
MIDNIGHT_SEASONAL_PROMOTIONS = createHeader({
	readable = "Midnight Seasonal Promotions",
	icon = [[~_.asset("Expansion_MN")]],
	text = {
		en = "Midnight Seasonal Promotions",
		-- TODO: de = "",
		es = "Promociones temporada Midnight",
		mx = "Promociones temporada Midnight",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Промо Midnight",
		cn = "至暗之夜季节性促销",
		tw = "《至暗之夜》季節性促銷",
	},
	description = {
		en = "These promotions happened during the time Midnight was the most recent expansion.\n\nThey are listed in the order of their first appearance.",
	},
});

root(ROOTS.Promotions, {
	n(MIDNIGHT_SEASONAL_PROMOTIONS, {
		["timeline"] = { ADDED_12_0_0 },
		["groups"] = {
			-- "Pre Season"
			i(264241, {	-- Crimson Bow Tie (COSMETIC!)
				["description"] = "Available to players in the UK and EU from a QR code scan of applicable Pringles cans or from the UK/EU Pringles website. \nThe battle.net code can be redeemed in any region but the website is region locked.\nThe promotion runs between January 20th through May 5th, 2026.",
				["timeline"] = { "removed 12.0.1.99999" },
			}),
			-- Season 1

			-- Season 2

			-- Season 3

		--	i(500001, {	-- The PVE/PVP Banner temporary item -- TEMPLATE
		--		["sourceID"] = 500001,
				-- #if BEFORE 11.2.5
		--	PVE	["description"] = "Mythic Dungeon International: TWW Season 3\n\nAll registered teams that complete under time the two dungeons within the Proving Grounds will receive an exclusive Toy to use in-game!\nSign-ups close 30th September 2025 3PM PDT and The Time Trials are on 1st October 1PM PDT - 6th October (US) 3PM PDT. For more details & requirements check out: Raider.io/tournaments",
				-- #endif
		--	PVP	["description"] = "Arena World Championship: TWW Season 2\n\nSign up on Raider.io for any of the 3 Cups, available until April 11th 2025, and play in at least two game series (best of 5)\n\nWinning not required, for more details & requirements check out: Raider.io/tournaments",
		--	BtM ["description"] = "Break the Meta: TWW Season 3\n\nBreak the Meta is focused on teams pushing keys as high as they can with off-meta specs and classes.\n\nComplete at least 2 BTM-Eligible timed keystones at |cFFFFFFFFlevel +8|r or higher will receive an exclusive Toy to use in-game!.\n\nThe Event starts on Nov 18th for US, Nov 19th for EU & Nov 20th for CN/KR/TW & lasts for 1 week.\nFor more details & requirements check out: Raider.io/events/break-the-meta-the-war-within-season-3/",
		--		["timeline"] = { ADDED_11_0_2 },
		--		["icon"] = 4731630,
		--		["name"] = "Tempered Banner of the Algari (TOY!)(PVE)"
		--	}),
		},
	}),
});
