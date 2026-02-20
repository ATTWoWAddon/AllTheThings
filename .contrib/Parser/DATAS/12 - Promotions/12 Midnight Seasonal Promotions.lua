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

RAZER = createHeader({
	readable = "Razer Giveaway",
	icon = 132529,
	text = {
		en = "Razer",
		cn = "雷蛇",
	},
	description = {
		en = "Razer x World of Warcraft Mount Giveaway. Starts on January 21 2025 at 10:00AM PST and ends on January 31, 2026 at 11:59PM PST. No purchase necessary.",
	},
});

root(ROOTS.Promotions, {
	n(MIDNIGHT_SEASONAL_PROMOTIONS, {
		["timeline"] = { ADDED_12_0_0 },
		["groups"] = {
			-- "Pre Season"
			i(263301, {	-- Cuddly Green Grrgle (DECOR!)
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between January 20th, 10:00 a.m. & February 17th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = { "removed 12.0.1.99999" },	-- Removed February 17th, 2026
			}),
			i(264241, {	-- Crimson Bow Tie (COSMETIC!)
				["description"] = "Available to players in the UK and EU from a QR code scan of applicable Pringles cans or from the UK/EU Pringles website. \nThe battle.net code can be redeemed in any region but the website is region locked.\n\nVisit pringles.eu/0pzaiz ON A MOBILE DEVICE to sign up; players outside of EU can use a VPN to do this.\nThe promotion runs between January 20th through May 5th, 2026.",
				["timeline"] = { "removed 12.0.1.99999" },
			}),
			n(RAZER, sharedDataSelf({
				["timeline"] = { "removed 12.0.0.65655" },
			}, {
				i(190539),	-- Coral-Stalker Waveray (MOUNT!)
				i(107951),	-- Iron Skyreaver (MOUNT!)
				i(232519),	-- Razeshi B. (PET!)
			}));
			ach(62387, {	-- It's Nearly Midnight
				["description"] = "Obtained by logging in to an account with an active subscription before the release of Midnight on March 2nd, 2026.",
				["timeline"] = { REMOVED_12_0_X_LAUNCH },
				["groups"] = { i(260785) },	-- The Dark Portal (DECOR!)
			}),
			cnONLY(i(235378, {	-- Landro's Loot Box (CN Only)
				-- #if AFTER 12.0.0
				-- #if BEFORE 12.1.0
				["description"] = "The first lottery draw costs ¥1, and the price increases progressively with each subsequent draw. A total of 13 draws costing ¥1,271 will allow you to obtain all prizes. ",
				-- #endif
				-- #endif
				["timeline"] = { "added 12.0.0", "removed 12.1.0" },	-- 13th March 2026
				["groups"] = {
					-- 3rd Price
					cnONLY(i(253404)),	-- Auspicious Pixiu (PET!)
					cnONLY(i(251542)),	-- Azure Drakefire
					cnONLY(i(256141)), -- Fortune's Waving Cat (TOY!)
					cnONLY(i(253244)), -- Lunar Celebrants Aquarium
					cnONLY(i(253257)), -- Lunar Celebrants Privacy Screen
					cnONLY(i(253296)), -- Lunar Celebrants Tea Set	
					cnONLY(i(269743)), -- Landro's Golden Loot Box (2nd Price as well)
					-- 2nd Price
					cnONLY(i(258840)), -- Gilded Fountain (TOY!)
					cnONLY(i(253402)),	-- Scorching Polearm
				--	cnONLY(i(269743)), -- Landro's Golden Loot Box 
					-- 1st Price
					cnONLY(iensemble(257547)),	-- Ensemble: Scorching Conqueror
					cnONLY(i(258136)),	-- Azure Thunder Coil Pillar (TOY!)
					
					--[[
				--	add cnONLY(i()),	-- Azure Dragon Soaring Flame
					cnONLY(i(258136)), -- Azure Thunder Coil Pillar (TOY!) 	MAYBE OTHER BOX
				--	add cnONLY(i()),	-- Blazing Fire Sandbox Horse
					cnONLY(i(254735)),	-- Thunderhoof Celestial (MOUNT!)
					cnONLY(i(253254)), -- Lunar Celebrants Cradle
					cnONLY(i(253255)), -- Lunar Celebrants Wide Pillow Roll
					cnONLY(i(253256)), -- Lunar Celebrants Pillow Roll
					cnONLY(i(253290)), -- Lunar Celebrants Ornate Vanity
					cnONLY(i(253291)), -- Lunar Celebrants Compact
					cnONLY(i(253292)), -- Lunar Celebrants Bamboo Canister
					cnONLY(i(253293)), -- Lunar Celebrants Tea Tray
					cnONLY(i(253294)), -- Lunar Celebrants Teacup
					cnONLY(i(253295)), -- Lunar Celebrants Teapot--]]
				},
			})),
			cnONLY(i(269743, {	-- Landro's Golden Loot Box
				-- #if AFTER 12.0.0
				-- #if BEFORE 12.1.0
				["description"] = "Drops from either the '3rd Price' after buying a lottery ticket from the Spring Festival promotional event or bought with Points after receiving the '2nd Prize'.",
				-- #endif
				-- #endif
				["timeline"] = { "added 12.0.0", "removed 12.1.0" },	-- 13th March 2026
				["groups"] = {
					cnONLY(i(251542)),	-- Azure Drakefire
					cnONLY(i(258135)),	-- Gilded Coil Spire (TOY!) (BOE)
					cnONLY(i(269009)),	-- Golden Ashened Cataclysm (MOUNT!) (BOE)
					cnONLY(i(254736)), -- Stormgilded Celestial (MOUNT!) (BOE)
					cnONLY(i(255973)),	-- Sandbox Horse
					-- Old Loot
					cnONLY(i(46779)),	-- Path of Cenarius
					cnONLY(i(49283)),	-- Reins of the Spectral Tiger
					cnONLY(i(49286)),	-- X-51 Nether-Rocket X-TREME
					cnONLY(i(49285)),	-- X-51 Nether-Rocket	
				},
			})),
			ach(62400, {	-- Craft Your World
				["description"] = "\n\nOpen Options\n\nGo to Gameplay → Social\n\nCheck Connect to Pinterest\n\nSign in through the in-game browser and authorize the connection",
				["groups"] = { i(268695) },	-- Pin-o-Matic Camera (TOY!)
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
