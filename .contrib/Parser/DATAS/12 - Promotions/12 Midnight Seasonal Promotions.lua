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
		es = "Estas promociones tuvieron lugar durante el tiempo en que Midnight era la expansión más reciente.\n\nSe enumeran en el orden en que aparecieron por primera vez.",
		mx = "Estas promociones sucedieron durante el tiempo en que Midnight era la expansión más reciente.\n\nSe listan en el orden en que aparecieron por primera vez.",
		cn = "这些促销活动均发生在《至暗之夜（Midnight）》作为最新资料片的时期。以下按活动首次出现的时间顺序列出",
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
		es = "Sorteo de montura Razer x World of Warcraft. Comienza el 21 de enero de 2025 a las 10:00 a. m. PST y finaliza el 31 de enero de 2026 a las 11:59 p. m. PST. No es necesario realizar ninguna compra.",
		mx = "Sorteo de montura Razer x World of Warcraft. Comienza el 21 de enero de 2025 a las 10:00 a. m. PST y finaliza el 31 de enero de 2026 a las 11:59 p. m. PST. No es necesario comprar nada.",
		cn = "雷蛇 ×《魔兽世界》坐骑抽奖活动,活动时间：2025 年 1 月 21 日太平洋时间上午 10:00 至 2026 年 1 月 31 日太平洋时间晚上 11:59,无需购买即可参与",
	},
});
FANTA = createHeader({
	readable = "Fanta Giveaway",
	icon = 4672182,
	text = {
		en = "Fanta",
	},
	description = {
		en = "Go to https://www.coca-cola.com/us/en/offerings/fanta/wanta-fanta/come-get-it, play a short game and get 1 reward per week. Sweepstakes starts on April 1, 2026 and ends at 11:59 pm ET on July 30, 2026 or once all rewards have been claimed, whichever occurs first. 2392 of each reward available per week. Resets at 12:00 am ET weekly. No purchase necessary.",
		es = "Visita https://www.coca-cola.com/us/en/offerings/fanta/wanta-fanta/come-get-it, juega un mini juego y consigue 1 premio por semana. El sorteo comienza el 1 de abril de 2026 y finaliza a las 23:59 (hora del este) del 30 de julio de 2026 o cuando se hayan reclamado todos los premios, lo que ocurra primero. Hay 2392 premios de cada tipo disponibles por semana. Se reinicia semanalmente a las 00:00 (ET). No es necesario realizar ninguna compra.",
		mx = "Visita https://www.coca-cola.com/us/en/offerings/fanta/wanta-fanta/come-get-it, juega un minijuego y consigue 1 premio por semana. El sorteo empieza el 1 de abril de 2026 y acaba a las 23:59 (hora del este) del 30 de julio de 2026 o cuando se hayan reclamado todos los premios, lo que ocurra primero. Hay 2392 premios de cada tipo disponibles por semana. Se reinicia semanalmente a las 00:00 (ET). No es necesario realizar ninguna compra.",
	},
});

root(ROOTS.Promotions, {
	n(MIDNIGHT_SEASONAL_PROMOTIONS, {
		["timeline"] = { ADDED_12_0_0 },
		["groups"] = {
			-- "Pre Season"
			i(263301, {	-- Cuddly Green Grrgle (DECOR!)
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between January 20th, 10:00 a.m. & February 17th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = { "removed 12.0.1.65899" },	-- Removed February 17th, 2026
			}),
			i(264241, {	-- Crimson Bow Tie (COSMETIC!)
				["description"] = "Available to players in the UK and EU from a QR code scan of applicable Pringles cans or from the UK/EU Pringles website. \nThe battle.net code can be redeemed in any region but the website is region locked.\n\nVisit pringles.eu/0pzaiz ON A MOBILE DEVICE to sign up; players outside of EU can use a VPN to do this.\nThe promotion runs between January 20th through May 5th, 2026.",
				["timeline"] = { "removed 12.0.5.99999" },
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
				["timeline"] = { "removed 12.0.1.66198" },
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
					cnONLY(i(256141)),	-- Fortune's Waving Cat (TOY!)
					cnONLY(i(253244)),	-- Lunar Celebrant's Aquarium (DECOR!)
					cnONLY(i(253257)),	-- Lunar Celebrant's Privacy Screen (DECOR!)
					cnONLY(i(253296)),	-- Lunar Celebrant's Tea Set (DECOR!)
					cnONLY(i(269743)),	-- Landro's Golden Loot Box (2nd Price as well)
					-- 2nd Price
					cnONLY(i(258840)),	-- Gilded Fountain (TOY!)
					cnONLY(i(253402)),	-- Scorching Polearm (COSMETIC!)
				--	cnONLY(i(269743)),	-- Landro's Golden Loot Box
					-- 1st Price
					cnONLY(iensemble(257547)),	-- Ensemble: Scorching Conqueror (COSMETIC!)
					cnONLY(i(258136)),	-- Azure Thunder Coil Pillar (TOY!)
					--[[
				--	add cnONLY(i()),	-- Azure Dragon Soaring Flame
					cnONLY(i(258136)),	-- Azure Thunder Coil Pillar (TOY!) 	MAYBE OTHER BOX
				--	add cnONLY(i()),	-- Blazing Fire Sandbox Horse
					cnONLY(i(254735)),	-- Thunderhoof Celestial (MOUNT!)
					cnONLY(i(253254)),	-- Lunar Celebrant's Cradle (DECOR!)
					cnONLY(i(253255)),	-- Lunar Celebrant's Wide Pillow Roll (DECOR!)
					cnONLY(i(253256)),	-- Lunar Celebrant's Pillow Roll (DECOR!)
					cnONLY(i(253290)),	-- Lunar Celebrant's Ornate Vanity (DECOR!)
					cnONLY(i(253291)),	-- Lunar Celebrant's Compact (DECOR!)
					cnONLY(i(253292)),	-- Lunar Celebrant's Bamboo Canister (DECOR!)
					cnONLY(i(253293)),	-- Lunar Celebrant's Tea Tray (DECOR!)
					cnONLY(i(253294)),	-- Lunar Celebrant's Teacup (DECOR!)
					cnONLY(i(253295)),	-- Lunar Celebrant's Teapot (DECOR!)--]]
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
					cnONLY(i(258135)),	-- Gilded Coil Spire (TOY!) [BoE]
					cnONLY(i(269009)),	-- Golden Ashened Cataclysm (MOUNT!) [BoE]
					cnONLY(i(254736)),	-- Stormgilded Celestial (MOUNT!) [BoE]
					cnONLY(i(255973)),	-- Sandbox Horse
					-- Old Loot
					cnONLY(i(46779)),	-- Path of Cenarius
					cnONLY(i(49283)),	-- Reins of the Spectral Tiger (MOUNT!)
					cnONLY(i(49286)),	-- X-51 Nether-Rocket X-TREME (MOUNT!)
					cnONLY(i(49285)),	-- X-51 Nether-Rocket (MOUNT!)
				},
			})),
			i(264396, {	-- Naturally Elegant Doormat (DECOR!)
				["description"] = "Visit |cFFFFD700zillow.com/warcraft|r\n\nFind the Doormat on the page\n\nClick on 'Claim Loot!' and authorize the Account connection.",
				["timeline"] = { "added 12.0.1.65899", "removed 12.1.0.99999" },	-- TODO: Timeline out. Available through September 30, 2026.
			}),
			i(264397, {	-- Simply Adorned Vase and Flowers (DECOR!)
				["description"] = "Visit |cFFFFD700zillow.com/warcraft|r\n\nClick on 'Explore Homes'\n\nFlip between Alliance and Horde until you see 'Greener's Plant Nursery' advertisement\n\nClick on 'Free Sample' and authorize the Account connection.",
				["timeline"] = { "added 12.0.1.65899", "removed 12.1.0.99999" },	-- TODO: Timeline out. Available through September 30, 2026.
			}),
			ach(62400, {	-- Craft Your World
				["description"] = "Open Options\n\nGo to Gameplay -> Social\n\nCheck Connect to Pinterest\n\nSign in through the in-game browser and authorize the connection.",
				["timeline"] = { "added 12.0.1.66017" },
				["groups"] = { i(268695) },	-- Pin-o-Matic Camera (TOY!)
			}),
			i(263298, {	-- Cuddly Alliance Blue Grrgle (DECOR!)
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between February 26th, 10:00 a.m. & March 24th, 10:00 a.m. PDT.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = { ADDED_12_0_1_LAUNCH, "removed 12.0.1.66562" },
			}),
			i(263299, {	-- Cuddly Horde Red Grrgle (DECOR!)
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between February 26th, 10:00 a.m. & March 24th, 10:00 a.m. PDT.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = { ADDED_12_0_1_LAUNCH, "removed 12.0.1.66562" },
			}),
			i(252194, {	-- Fishmonger May (PET!)
				["description"] = "Obtained by gifting an eligible creator's channel two Twitch subscriptions between February 26th, 03:00 p.m. & March 26th, 03:00 a.m. PDT.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.\n\nSpecial Note: If you buy a sub for yourself and gift one more, that will also reward the pet!",
				["timeline"] = { ADDED_12_0_1_LAUNCH, "removed 12.0.1.66562" },
			}),
			i(260360, {	-- Gummi the Glow Wyrm (PET!)
				["description"] = "Trolli + Xbox promotional item. Available between March 1st 2026 - September 30th 2026 by purchasing Trolli Gummi Pop products in any retail store, photoing your receipt and uploading it as confirmation to trolli.com/xbox. Sometime later you should receive a code to your email to redeem on Battle.net or in the launcher.\n\nYou must have a U.S. address and phone number to participate.\n\nThe code is usable in any region.",
				["timeline"] = { "added 12.0.1.66192", "removed 12.1.0.99999" },
				["u"] = REAL_MONEY,
			}),
			-- Season 1
			i(246917, {	-- Thunder-ridged Elekk (MOUNT!)
				["description"] = "Available from the pringleswow.de promotion in a limited quantity to the first 3000 players who scanned a QR code found around cities in Germany.",
				["timeline"] = { ADDED_12_0_1_LAUNCH, REMOVED_12_0_1_LAUNCH },
			}),
			i(265545, {	-- Cuddly Void Grrgle (DECOR!)
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between March 26th, 3:00 p.m. & April 23rd, 3:00 p.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = { ADDED_12_0_1_LAUNCH, "removed 12.0.5.67165" },	-- Removed April 23rd, 2026
			}),
			i(264283, {	-- Backboard and Hoop Playset (DECOR!)
				["description"] = "Available from the Pinterest Craft Your World promotion. Enter password 'Horde Board' at craftyourworldpromo.com to receive a code to the email you provided.",
				["timeline"] = { ADDED_12_0_1_LAUNCH, "removed 12.0.1.66709" },	-- Removed 6 April 2026 at 11:59pm (BST)
			}),
			i(264282, {	-- Bluebird's Golden Cage (DECOR!)
				["description"] = "Available from the Pinterest Craft Your World promotion. Enter password 'Azeroth Inspiration' at craftyourworldpromo.com to receive a code to the email you provided.",
				["timeline"] = { ADDED_12_0_1_LAUNCH, "removed 12.0.1.66709" },	-- Removed 6 April 2026 at 11:59pm (BST)
			}),
			i(264281, {	-- Preserved Gift of Gilneas (DECOR!)
				["description"] = "Available from the Pinterest Craft Your World promotion. Enter password 'Kalimdor Collage' at craftyourworldpromo.com to receive a code to the email you provided.",
				["timeline"] = { ADDED_12_0_1_LAUNCH, "removed 12.0.1.66709" },	-- Removed 6 April 2026 at 11:59pm (BST)
			}),
			i(262660, {	-- Egg Farmer's Backpack (COSMETIC!)
				["description"] = "Available in a limited quantity from ign.com/rewards/claim-a-code-to-get-world-of-warcraft-in-game-content, you'll receive a code to redeem on Battle.net.",
				["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_0_1_SEASONSTART },
			}),
			n(FANTA, sharedDataSelf({
				["timeline"] = { "added 12.0.1.66709", "removed 12.0.7.99999" },
			}, {
				i(262438),	-- Fantastical Goblin Waveshredder (MOUNT!)
				i(264278),	-- Sturdy Portable Ice Chest (DECOR!)
				i(263383),	-- Corked Bottle of Liquid Mystery (DECOR!)
				i(264279),	-- Tall Corked Bottle of Liquid Mystery (DECOR!)
				i(264280),	-- Short Corked Bottle of Liquid Mystery (DECOR!)
			}));
			i(262881, {	-- Lil' Staropod (PET!)
				["description"] = "Offer valid from April 13, 2026 (12pm ET) to May 15, 2026 (12pm ET). During the offer period, complete a purchase of eligible World of Warcraft items through the Blizzard Gear Store and receive a digital code.",
				["timeline"] = { "added 12.0.1.66838", "removed 12.0.5.99999" },
				["u"] = REAL_MONEY,
			}),
			i(265394, {	-- Cuddly Pearl Grrgle (DECOR!)
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between April 23rd, 3:00 p.m. & May 21st, 3:00 p.m. PDT.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = { ADDED_12_0_5, "removed 12.0.5.99999" }, -- TODO: Timeline out. Available through May 21 at 3:00 pm PDT
			}),
			-- Season 2

			-- Season 3

		--	i(500001, {	-- The PVE/PVP Banner temporary item	-- TEMPLATE
		--		["sourceID"] = 500001,
				-- #if BEFORE 11.2.5
		--	PVE	["description"] = "Mythic Dungeon International: TWW Season 3\n\nAll registered teams that complete under time the two dungeons within the Proving Grounds will receive an exclusive Toy to use in-game!\nSign-ups close 30th September 2025 3PM PDT and The Time Trials are on 1st October 1PM PDT - 6th October (US) 3PM PDT. For more details & requirements check out: Raider.io/tournaments",
				-- #endif
		--	PVP	["description"] = "Arena World Championship: TWW Season 2\n\nSign up on Raider.io for any of the 3 Cups, available until April 11th 2025, and play in at least two game series (best of 5)\n\nWinning not required, for more details & requirements check out: Raider.io/tournaments",
		--	BtM ["description"] = "Break the Meta: TWW Season 3\n\nBreak the Meta is focused on teams pushing keys as high as they can with off-meta specs and classes.\n\nComplete at least 2 BTM-Eligible timed keystones at |cFFFFFFFFlevel +8|r or higher will receive an exclusive Toy to use in-game!.\n\nThe Event starts on Nov 18th for US, Nov 19th for EU & Nov 20th for CN/KR/TW & lasts for 1 week.\nFor more details & requirements check out: Raider.io/events/break-the-meta-the-war-within-season-3/",
		--		["timeline"] = { ADDED_11_0_2 },
		--		["icon"] = 4731630,
		--		["name"] = "Tempered Banner of the Algari (TOY!) (PVE)"
		--	}),
		},
	}),
});
