-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
THE_WAR_WITHIN_SEASONAL_PROMOTIONS = createHeader({
	readable = "The War Within Seasonal Promotions",
	icon = [[~_.asset("Expansion_TWW")]],
	text = {
		en = "The War Within Seasonal Promotions",
		-- TODO: de = "",
		es = "Promociones temporada The War Within",
		mx = "Promociones temporada The War Within",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Промо The War Within",
		cn = "地心之战季节性促销",
		tw = "《地心之戰》季節性促銷",
	},
	description = {
		en = "These promotions happened during the time The War Within was the most recent expansion.\n\nThey are listed in the order of their first appearance.",
	},
});

STEELSERIES = createHeader({
	readable = "SteelSeries",
	icon = 133015,
	text = {
		en = "SteelSeries",
		-- TODO: de = "",
		-- TODO: es = "",
		-- TODO: mx = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "赛睿",
		-- TODO: tw = "",
	},
	description = {
		en = "Promotion for SteelSeries World of Warcraft Limited Edition Collection.",
	},
});

RAZER = createHeader({
	readable = "Razer",
	icon = 132529,
	text = {
		en = "Razer",
		-- TODO: de = "",
		-- TODO: es = "",
		-- TODO: mx = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "雷蛇",
		-- TODO: tw = "",
	},
	description = {
		en = "Promotion for Razer Gaming Peripherals World of Warcraft Collection. Purchasing any item will award all three promotional codes.",
	},
});
TREASURE_OF_AZEROTH = createHeader({
	readable = "Treasures of Azeroth",
	icon = 7259806,
	text = {
		en = "Treasures of Azeroth",
		-- cn = "雷蛇",
	},
	description = {
		en = "To celebrate the launch of Titan Reforged servers, Chinese players can participate in The Treasures of Azeroth event, offering brand new rewards. The Rewards are not shared between game types and must be obtained separately in each.",
	},
});

root(ROOTS.Promotions, {
	n(THE_WAR_WITHIN_SEASONAL_PROMOTIONS, {
		["timeline"] = { ADDED_11_0_0 },
		["groups"] = {
			n(RAZER, sharedDataSelf({
				["timeline"] = { ADDED_11_0_7, "removed 11.1.5.60568" },
				["u"] = REAL_MONEY,
			}, {
				i(190539, {	-- Coral-Stalker Waveray (MOUNT!)
					["description"] = "Acquired alongside the purchase of a 150$ Razer Naga V2 Pro mouse, 200$ Razer BlackWidow V4 Pro keyboard or $100 RAZER FIREFLY V2 PRO mousepad as part of the Razer Gaming Peripherals World of Warcraft Collection before 30th April 2025.",
				}),
				i(107951, {	-- Iron Skyreaver (MOUNT!)
					["description"] = "Acquired alongside the purchase of a 150$ Razer Naga V2 Pro mouse, 200$ Razer BlackWidow V4 Pro keyboard or $100 RAZER FIREFLY V2 PRO mousepad as part of the Razer Gaming Peripherals World of Warcraft Collection before 30th April 2025.",
				}),
				i(232519, {	-- Razeshi B. (PET!)
					["description"] = "Acquired alongside the purchase of a 150$ Razer Naga V2 Pro mouse, 200$ Razer BlackWidow V4 Pro keyboard or $100 RAZER FIREFLY V2 PRO mousepad as part of the Razer Gaming Peripherals World of Warcraft Collection before 30th April 2025.",
				}),
			}));
			n(STEELSERIES, sharedDataSelf({
				["timeline"] = { ADDED_11_0_2 },
				["u"] = REAL_MONEY,
			}, {
				i(112327, {	-- Grinning Reaver (MOUNT!)
					["description"] = "Acquired alongside the purchase of a 200$ Arctis Nova 7 Headset as part of the World of Warcraft SteelSeries Limited Edition Collection.",
				}),
				i(224576, {	-- Lil' Flameo (PET!)
					["description"] = "Acquired alongside the purchase of a 160$ Aerox 9 Mouse as part of the World of Warcraft SteelSeries Limited Edition Collection.",
				}),
				i(224574, {	-- Savage Ebony Battle Turtle (MOUNT!)
					["description"] = "Acquired alongside the purchase of a 80$ Artistan Keycap, 40$QcK XXL Mousepad, or a 40$ Alliance/Horde Booster Pack as part of the World of Warcraft SteelSeries Limited Edition Collection.",
				}),
			}));
			n(TREASURE_OF_AZEROTH, sharedDataSelf({
				["timeline"] = { "added 11.2.5.64395" },
				["u"] = REAL_MONEY,
			}, {
				["groups"] = {
				--	cnONLY(i(, {	-- Azerothian Treasure Coins ToDo: Its currency to buy all the items
				--	ToDo: Add Cost: https://wow.zamimg.com/uploads/screenshots/normal/1251957.jpg
						cnONLY(i(252679)),	-- Mechanical Prototype Panther MK-0
						cnONLY(i(252681)),	-- Steel Prototype Panther MK-0
						cnONLY(i(223471)),	-- Kaldorei War Wolf
						cnONLY(i(223459)),	-- Blackrock Warsaber
						cnONLY(i(71726)),	-- Murkablo
						cnONLY(i(72134)),	-- Gregarious Grell
					--	cnONLY(i()),	-- Sands of Time (Different game?)
					--	cnONLY(i()),	-- Karesh expedition resupply
					--	cnONLY(i()),	-- Shard of Azeroth Fragment
				--	})),
				},
			}));
			-- "Pre Season"
			cnONLY(ach(40910, {	-- Successfully Stress Test CN Realms
				["description"] = "Rewarded for the Aid in the stress testing of the realms in China",
				["timeline"] = { ADDED_11_0_0, REMOVED_11_0_5 },
			})),
			cnONLY(i(190231, {	-- Ash'adar, Harbinger of Dawn (MOUNT!)
				["description"] = "Rewarded for returning to World of Warcraft in 2024. China Only.",
				["timeline"] = { ADDED_11_0_0 },
				["u"] = REMOVED_FROM_GAME,	-- Probably removed in 2025
			})),
			cnONLY(i(210409, {	-- Aura (PET!)
				["description"] = "Rewarded for returning to World of Warcraft in 2024. China Only.",
				["timeline"] = { ADDED_11_0_0 },
				["u"] = REMOVED_FROM_GAME,	-- Probably removed in 2025
			})),
			cnONLY(i(229128, {	-- Harmonious Salutations Bear (MOUNT!)
				["description"] = "Rewarded for returning to World of Warcraft in 2024. China Only.",
				["timeline"] = { ADDED_11_0_0 },
				["u"] = REMOVED_FROM_GAME,	-- Probably removed in 2025
			})),
			i(93671, {	-- Ghastly Charger's Skull (MOUNT!)
				-- #if AFTER 11.0.2
				-- #if BEFORE 12.0.0
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between August 26th, 03:00 p.m. & September 19th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2 },
				["u"] = REMOVED_FROM_GAME,	-- 19th September 2024
			}),
			i(190609, {	-- Watcher of the Huntress (PET!)
				["description"] = "Obtained by gifting an eligible creator's channel two Twitch subscriptions between August 26th, 03:00 p.m. & September 26th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.\n\nSpecial Note: If you buy a sub for yourself and gift one more, that will also reward the pet!",
				["timeline"] = { ADDED_11_0_2 },
				["u"] = REMOVED_FROM_GAME,	-- 26th September 2024
			}),
			-- Season 1
			i(232305, {	-- Forged Champion's Prestigious Banner (TOY!)(PVP)
				["description"] = "Arena World Championship: TWW Season 1\n\nSign up on Raider.io for any of the 4 Cups, available until October 13th 2024, and play in at least two game series (best of 5)\n\nWinning not required, for more details & requirements check out: Raider.io/tournaments/AWC",
				["timeline"] = { ADDED_11_0_5, REMOVED_11_0_5 },
			}),
			i(232301, {	-- Tempered Banner of the Algari (TOY!)
				["description"] = "Mythic Dungeon International: TWW Season 1\n\nThe Mythic Dungeon International (MDI) returns with its global competitions, pitting the best Mythic Dungeon teams in a head-to-head race to the finish line.\n\nAll registered teams that complete under time the two dungeons within the Proving Grounds will receive the exclusive Tempered Banner of the Algari to use in-game!\nSign-ups close 14 October 2024 1PM PDT and The Time Trials are on 16 October 1PM PDT - 21 October (US) 1PM PDT.",
				["timeline"] = { ADDED_11_0_5, REMOVED_11_0_5 },
			}),
			i(228765, {	-- Gummi (PET!)
				["description"] = "Trolli + Xbox promotional item. Available between 9/1/24 - 2/28/25 by purchasing Trolli Candy products in any retail store, photoing your receipt and uploading it as confirmation to trolli.com/xbox. Once processed, you should receive a code to your email to redeem on battle.net or in the launcher.\n\nYou must have a U.S. address and phone number to participate.\n\nThe code is usable in any region.",
				["timeline"] = { ADDED_11_0_2, "removed 11.1.0.59466" },
				["u"] = REAL_MONEY,
			}),
			i(228761, {	-- Classic Brick Tabard
				["description"] = "Trolli + Xbox promotional item. Available between 9/1/24 - 2/28/25 by purchasing Trolli Candy products in |CFFFF0000Walgreens|r, photoing your receipt and uploading it as confirmation to trolli.com/xbox. Once processed, you should receive a code to your email to redeem on battle.net or in the launcher.\n\nYou must have a U.S. address and phone number to participate.\n\nThe code is usable in any region.",
				["timeline"] = { ADDED_11_0_2, "removed 11.1.0.59466" },
				["u"] = REAL_MONEY,
			}),
			i(228763, {	-- Classic Crimson Tabard
				["description"] = "Trolli + Xbox promotional item. Available between 9/1/24 - 2/28/25 by purchasing Trolli Candy products in |CFFFF0000Circle K|r, photoing your receipt and uploading it as confirmation to trolli.com/xbox. Once processed, you should receive a code to your email to redeem on battle.net or in the launcher.\n\nYou must have a U.S. address and phone number to participate.\n\nThe code is usable in any region.",
				["timeline"] = { ADDED_11_0_2, "removed 11.1.0.59466" },
				["u"] = REAL_MONEY,
			}),
			i(228762, {	-- Classic Lively Tabard
				["description"] = "Trolli + Xbox promotional item. Available between 9/1/24 - 2/28/25 by purchasing Trolli Candy products in |CFFFF0000Dollar General|r, photoing your receipt and uploading it as confirmation to trolli.com/xbox. Once processed, you should receive a code to your email to redeem on battle.net or in the launcher.\n\nYou must have a U.S. address and phone number to participate.\n\nThe code is usable in any region.",
				["timeline"] = { ADDED_11_0_2, "removed 11.1.0.59466" },
				["u"] = REAL_MONEY,
			}),
			i(228764, {	-- Classic Sunny Tabard
				["description"] = "Krogers promotional item. You have to earn points before Jan 8, 2025 and redeem before Feb 7, 2025. Can be redeemed for 1500 rewards points from pointsrewardsplus.com. With a referral link, just signing up will earn you enough points to redeem the tabard for free. Access the code from the account page and then redeem on battle.net or in the launcher.",
				["timeline"] = { ADDED_11_0_2, "removed 11.0.7.58238" },
				["u"] = REAL_MONEY,
			}),
			i(225250, {	-- Startouched Furline (MOUNT!)
				["description"] = "Obtained if you set up a 12-Month WoW Subscription.",
				["timeline"] = { ADDED_11_0_2 },
				["u"] = REAL_MONEY,
			}),
			i(228751, {	-- Gigantic Grrloc (MOUNT!)
				["description"] = "Obtained if you set up a 12-Month WoW Subscription.",
				["timeline"] = { ADDED_11_0_2 },
				["u"] = REAL_MONEY,
			}),
			i(72153, {	-- Sand Scarab (PET!)
				-- #if AFTER 11.0.2
				-- #if BEFORE 12.0.0
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between October 22nd, 10:00 a.m. & November 5th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_5 },
				["u"] = REMOVED_FROM_GAME,	-- 5th November 2024
			}),
			i(228907, {	-- Bot Wrangler’s Belt
				["description"] = "Available to redeem for 300 points at DoritosDewRockstar.com before Jan 31, 2025. Points can be earned from entering codes found in specially marked Mountain Dew, Doritos and Rockstar Energy Drink products.",
				["timeline"] = { ADDED_11_0_5, "removed 11.0.7.58867" },
				["u"] = REAL_MONEY,
			}),
			i(228909, {	-- Bot Wrangler’s Crimson Apron
				["description"] = "Available to redeem for 300 points at DoritosDewRockstar.com before Jan 31, 2025. Points can be earned from entering codes found in specially marked Mountain Dew, Doritos and Rockstar Energy Drink products.",
				["timeline"] = { ADDED_11_0_5, "removed 11.0.7.58867" },
				["u"] = REAL_MONEY,
			}),
			i(228908, {	-- Bot Wrangler’s Violet Apron
				["description"] = "Available to redeem for 300 points at DoritosDewRockstar.com before Jan 31, 2025. Points can be earned from entering codes found in specially marked Mountain Dew, Doritos and Rockstar Energy Drink products.",
				["timeline"] = { ADDED_11_0_5, "removed 11.0.7.58867" },
				["u"] = REAL_MONEY,
			}),
			i(228793, {	-- Chillbot 9000 (PET!)
				["description"] = "Available to redeem for 400 points at DoritosDewRockstar.com before Jan 31, 2025. Points can be earned from entering codes found in specially marked Mountain Dew, Doritos and Rockstar Energy Drink products.",
				["timeline"] = { ADDED_11_0_5, "removed 11.0.7.58867" },
				["u"] = REAL_MONEY,
			}),
			i(228790, {	-- Thrillbot 9000 (PET!)
				["description"] = "Available to redeem for 400 points at DoritosDewRockstar.com before Jan 31, 2025. Points can be earned from entering codes found in specially marked Mountain Dew, Doritos and Rockstar Energy Drink products.",
				["timeline"] = { ADDED_11_0_5, "removed 11.0.7.58867" },
				["u"] = REAL_MONEY,
			}),
			i(211087, {	-- Hateforged Blazecycle (MOUNT!)
				["description"] = "Available to redeem for 600 points at DoritosDewRockstar.com before Jan 31, 2025. Points can be earned from entering codes found in specially marked Mountain Dew, Doritos and Rockstar Energy Drink products.",
				["timeline"] = { ADDED_11_0_5, "removed 11.0.7.58867" },
				["u"] = REAL_MONEY,
			}),
			i(68385, {	-- Lil' Ragnaros (PET!)
				-- #if AFTER 11.0.2
				-- #if BEFORE 12.0.0
				["description"] = "Available to redeem for 400 points at DoritosDewRockstar.com before Jan 31, 2025. Points can be earned from entering codes found in specially marked Mountain Dew, Doritos and Rockstar Energy Drink products.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_5, "removed 11.0.7.58867" },
				["u"] = REAL_MONEY,
			}),
			i(229366, {	-- Brrrgl (PET!)
				["description"] = "Available with the purchase of an Ice Murloc Funko Pop from the Blizzard Gear Store to a US/UK mailing address. The code will be emailed and can be redeemed on Battle.net or the launcher.",
				["timeline"] = { ADDED_11_0_5 },
				["u"] = REAL_MONEY,
			}),
			i(223459, {	-- Blackrock Warsaber (MOUNT!)
				["description"] = "Obtained through watching the official Warcraft 30th Anniversary Direct on Tiktok for 3 Minutes or Twitch/YouTube for 20 minutes between November 13th, 10:00 a.m. & December 11th, 10:00 a.m. PST.\n\nTikTok has a bar along the bottom of the screen that indicates that Game Rewards are live and that you’re earning progress. Once you watched enough on Tiktok, you will receive a code that can be claimed on Battle.Net or on the Battle.Net App.\n\nOn Twitch you have to claim your Reward under Drops & Rewards after watching for 20 minutes.\n\nOn YouTube your account has to say 'connected' and will automatically sent out the rewards after 20 minutes.\n\nYour Twitch/Youtube Account has to be connected with your Battle.net Account.",
				["timeline"] = { ADDED_11_0_5 },
				["u"] = REMOVED_FROM_GAME,	-- 11th December 2024
			}),
			i(223471, {	-- Kaldorei War Wolf (MOUNT!)
				["description"] = "Obtained through watching the official Warcraft 30th Anniversary Direct on Tiktok for 3 Minutes or Twitch/YouTube for 20 minutes between November 13th, 10:00 a.m. & December 11th, 10:00 a.m. PST.\n\nTikTok has a bar along the bottom of the screen that indicates that Game Rewards are live and that you’re earning progress. Once you watched enough on Tiktok, you will receive a code that can be claimed on Battle.Net or on the Battle.Net App.\n\nOn Twitch you have to claim your Reward under Drops & Rewards after watching for 20 minutes.\n\nOn YouTube your account has to say 'connected' and will automatically sent out the rewards after 20 minutes.\n\nYour Twitch/Youtube Account has to be connected with your Battle.net Account.",
				["timeline"] = { ADDED_11_0_5 },
				["u"] = REMOVED_FROM_GAME,	-- 11th December 2024
			}),
			i(229368, {	-- Gill'el (PET!)
				["description"] = "Available with the purchase of a Murloc Thrall plushie from the Blizzard Gear Store. The code will be emailed and can be redeemed on Battle.net or the launcher.",
				["timeline"] = { ADDED_11_0_5 },
				["u"] = REAL_MONEY,
			}),
			i(232301, {	-- Tempered Banner of the Algari (TOY!)
				["description"] = "Break the Meta: TWW Season 1\n\nInstead of teams fighting to beat their opponent's time, Break the Meta is focused on teams pushing keys as high as they can with Season 1's off-meta specs and classes.\n\nRegister for the event on |cFFFFFFFFraider.io/events/break-the-meta-the-war-within-season-1/register|r and complete at least 2 BTM-Eligible timed keystones at |cFFFFFFFFlevel +5|r or higher during the Competition Period, and the Tempered Banner of the Algari will be automatically added to your collection in-game after the conclusion of the event.\n\nThe Event starts on December 10th for US, December 11th for EU & December 12th for KR/TW & lasts for 1 week.",
				["timeline"] = { ADDED_11_0_5 },
				["u"] = REMOVED_FROM_GAME,	-- 19th December 2024
			}),
			i(95341, {	-- Armored Bloodwing (MOUNT!)
				-- #if AFTER 11.0.2
				-- #if BEFORE 12.0.0
				["description"] = "Requires an NVIDIA 10+ Series Graphics Card or streaming through GeForce NOW (free tier is enough).\nLogin to the NVIDIA app, GeForce Experience or GeForce NOW then play a GeForce LAN Mission for 50 continuous minutes starting January 4th at 4:30 p.m. PST lasting until an unknown date.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_7, REMOVED_11_1_5 },
			}),
			i(233207, {	-- The Coward's Azure Target (COSMETIC!)
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between January 14th, 10:00 a.m. & February 4th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = { ADDED_11_0_7, "removed 11.0.7.58911" },
			}),
			cnONLY(i(235344, {	-- Blazing Royal Fire Hawk (CN Only)
				["description"] = "Rewarded from the Treasure Workshop.",
				["timeline"] = { ADDED_11_0_7, "removed 11.1.0.59425" },	-- Removed February 27th, 2025
			})),
			cnONLY(i(235378, {	-- Landro's Loot Box (CN Only)
				-- #if AFTER 11.0.2
				-- #if BEFORE 12.0.0
				["description"] = "Can bought for ¥200 RMB (~$27 USD) in the Ingame Shop for a limited time.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_7,  "removed 11.1.0.59425" },	-- Removed February 27th, 2025
				["groups"] = {
					cnONLY(i(227362)),	-- Golden Ashes of Al'ar (CN Only)
					cnONLY(i(49284)),	-- Reins of the Swift Spectral Tiger
					cnONLY(i(49283)),	-- Reins of the Spectral Tiger
					cnONLY(i(49286)),	-- X-51 Nether-Rocket X-TREME
					cnONLY(i(49285)),	-- X-51 Nether-Rocket
					cnONLY(i(45047)),	-- Sandbox Tiger
					cnONLY(i(35223)),	-- Papa Hummel's Old-Fashioned Pet Biscuit
					cnONLY(i(46779)),	-- Path of Cenarius
				},
			})),
			i(238261, {	-- Tock the Clocker Spaniel (PET!)
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between February 25th, 10:00 a.m. & March 25th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = { ADDED_11_1_0, "removed 11.1.0.59679" },
			}),
			iensemble(229822, {	-- Arsenal: Golden Crests of the Kingdom
				["description"] = "Included as a code in the physical goodie bag given to attendees of 30th Anniversary Live events.",
				["timeline"] = { ADDED_11_0_7, "removed 11.1.5.60568" },
				["u"] = REAL_MONEY,
			}),
			-- Season 2
			i(232306, {	-- Prized Champion's Prestigious Banner (TOY!)(PVP)
				["description"] = "Arena World Championship: TWW Season 2\n\nSign up on Raider.io for any of the 3 Cups, available until April 11th 2025, and play in at least two game series (best of 5)\n\nWinning not required, for more details & requirements check out: Raider.io/tournaments",
				["timeline"] = { ADDED_11_1_5, REMOVED_11_1_5 },
			}),
			i(232302, {	-- Prized Banner of the Algari (TOY!)
				["description"] = "Mythic Dungeon International: TWW Season 2\n\nThe Mythic Dungeon International (MDI) returns with its global competitions, pitting the best Mythic Dungeon teams on pushing keys as high as they can, striving to out survive their competitors and be crowned the champion!\n\nAll registered teams that complete under time the two dungeons within the Proving Grounds will receive the exclusive Prized Banner of the Algari to use in-game!\nSign-ups close 14 April 2025 3PM PDT and The Time Trials are on 16 April 1PM PDT - 21 April (US) 3PM PDT. For more details & requirements check out: Raider.io/tournaments",
				["timeline"] = { ADDED_11_1_5, REMOVED_11_1_5 },
			}),
			i(238796, {	-- Thrrrdgl (PET!)
				["description"] = "Included for free with any purchase from the World of Warcraft Bronze Murloc Collection on the Blizzard Gear Store. Available until March 31, 2025 while supplies last. The code will be emailed and can be redeemed on Battle.net or the launcher.",
				["timeline"] = { ADDED_11_1_0, "removed 11.1.0.60037" },	-- Removed March 31, 2025
				["u"] = REAL_MONEY,
			}),
			i(212791, {	-- Beetriz (PET!)
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between April 22nd, 10:00 a.m. & May 20th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = { ADDED_11_1_5, "removed 11.1.5.60822" },	-- Removed May 20, 2025
			}),
			mount(1236262, {	-- Shaohao's Sage Serpent (MOUNT!)
				["description"] = "Finish the Pandaren Wandering Isle starting zone in |cFFfe040fMoP Classic|r until you arrive in Orgrimmar/Stormwind to receive this mount in Retail.\n\nPromotion starts on July 1st until July 30th.",
				["timeline"] = { ADDED_11_1_7, "removed 11.1.7.61967" },	-- Removed July 30th, 2025
			}),
			i(232302, {	-- Prized Banner of the Algari (TOY!)
				["description"] = "Break the Meta: TWW Season 2\n\nInstead of teams fighting to beat their opponent's time, Break the Meta is focused on teams pushing keys as high as they can with Season 2's off-meta specs and classes.\n\nRegister for the event on |cFFFFFFFFraider.io/events/break-the-meta-the-war-within-season-2/register|r and complete at least 2 BTM-Eligible timed keystones at |cFFFFFFFFlevel +10|r or higher during the Competition Period, and the Tempered Banner of the Algari will be automatically added to your collection in-game after the conclusion of the event.\n\nThe Event starts on June 24th for US, June 25th for EU & June 26th for CN/KR/TW & lasts for 1 week.",
				["timeline"] = { ADDED_11_1_7, "removed 11.1.7.61609" },
			}),
			i(235987, {	-- Adorned Half Shell (COSMETIC!)
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between July 14th, 10:00 a.m. & August 11th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = { ADDED_11_1_7, "removed 11.2.0.62493" },	-- Removed August 11, 2025
			}),
			i(246451, {	-- Shadefur Brewthief (PET!)
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between August 5th, 10:00 a.m. & September 16th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = { ADDED_11_2_0, "removed 11.2.0.63163" },	-- Removed September 16, 2025
			}),
			-- Season 3
			cnONLY(i(246732, {	-- Void-Forged Overseer (CN Only)
				["description"] = "Rewarded from the Season 3 Shop Bundle.",
				["timeline"] = { ADDED_11_2_0, REMOVED_11_2_5 },
				["u"] = REAL_MONEY,
			})),
			i(232307, {	-- Astral Champion's Prestigious Banner (TOY!)(PVP)
				["description"] = "Arena World Championship: TWW Season 3\n\nSign up on Raider.io for any of the 3 Cups, available until October 22nd 2025, and play in at least two game series (best of 5)\n\nWinning not required, for more details & requirements check out: Raider.io/tournaments",
				["timeline"] = { ADDED_11_2_0, "removed 11.2.5.64154" },	-- Removed AFTER 11.2.5 Release
			}),
			i(232303, {	-- Unbound Banner of the Algari (TOY!)(PVE)
				-- #if BEFORE 11.2.5
				["description"] = "Mythic Dungeon International: TWW Season 3\n\nAll registered teams that complete under time the two dungeons within the Proving Grounds will receive an exclusive Toy to use in-game!\n\nSign-ups close 30th September 2025 3PM PDT and The Time Trials are on 1st October 1PM PDT - 6th October (US) 3PM PDT. \nFor more details & requirements check out: Raider.io/tournaments",
				-- #endif
				["timeline"] = { ADDED_11_2_0, REMOVED_11_2_5 },	-- Removed BEFORE 11.2.5 Release
			}),
			i(246343, {	-- Scruffyhorn Fel Snooter (PET!)
				["description"] = "Included for free with any purchase over $75 from the World of Warcraft Collection on the Blizzard Gear Store. Available from September 8-30, 2025. The code will be emailed and can be redeemed on Battle.net or the launcher.",
				["timeline"] = { ADDED_11_2_0, "removed 11.2.0.63305" },	-- Removed September 30, 2025
				["u"] = REAL_MONEY,
			}),
			i(257515, {	-- Lil' Coalee (PET!)
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between October 1st, 10:00 a.m. & October 29th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = { ADDED_11_2_0, "removed 11.2.5.64154" },	-- Removed October 29th, 2025
			}),
			i(247848, {	-- Astral Aurochs (MOUNT!)
				["description"] = "Obtained if you set up a 12-Month WoW Subscription.",
				["timeline"] = { ADDED_11_2_5 },
				["u"] = REAL_MONEY,
			}),
			i(243194, {	-- Grandiose Grrloc (MOUNT!)
				["description"] = "Obtained if you set up a 12-Month WoW Subscription.",
				["timeline"] = { ADDED_11_2_5 },
				["u"] = REAL_MONEY,
			}),
			iensemble(242480, {	-- Ensemble: Violet Sweatsuit
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between November 11th, 10:00 a.m. & December 2nd, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = { ADDED_11_2_5, REMOVED_11_2_7 },	-- Removed December 2nd, 2025
			}),
			i(232303, {	-- Unbound Banner of the Algari (TOY!)(PVE)
				["description"] = "Break the Meta: TWW Season 3\n\nBreak the Meta is focused on teams pushing keys as high as they can with off-meta specs and classes.\n\nComplete at least 2 BTM-Eligible timed keystones at |cFFFFFFFFlevel +8|r or higher will receive an exclusive Toy to use in-game!.\n\nThe Event starts on Nov 18th for US, Nov 19th for EU & Nov 20th for CN/KR/TW & lasts for 1 week.\nFor more details & requirements check out: Raider.io/events/break-the-meta-the-war-within-season-3/",
				["timeline"] = { ADDED_11_2_5 },
				["u"] = REMOVED_FROM_GAME,	-- 27th November 2025
			}),
			i(257518, {	-- Lil' Ashlee (PET!)
				["description"] = "Included for free with any purchase from the World of Warcraft Lil' Ashlee Collection on the Blizzard Gear Store. Available from November 21st through December 8th, 2025. The code will be emailed and can be redeemed on Battle.net or the launcher.",
				["timeline"] = { ADDED_11_2_5, "removed 11.2.7.64772" },	-- Removed December 8th, 2025
				["u"] = REAL_MONEY,
			}),
			i(235343, {	-- Topsy Turvy Joker's Mask
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between December 2nd, 10:00 a.m. & December 30th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = { ADDED_11_2_7, "removed 11.2.7.64978" },	-- Removed December 30th, 2025
			}),
			i(248681, {	-- Scorching Valor (MOUNT!)
				["description"] = "Obtained if you set up a 12-Month WoW Subscription.",
				["timeline"] = { ADDED_11_2_7 },
				["u"] = REAL_MONEY,
			}),
		--	i(500001, {	-- The PVE/PVP Banner temporary item -- TEMPLATE
		--		["sourceID"] = 500001,
		--	PVE	["description"] = "Mythic Dungeon International: TWW Season 3\n\nAll registered teams that complete under time the two dungeons within the Proving Grounds will receive an exclusive Toy to use in-game!\nSign-ups close 30th September 2025 3PM PDT and The Time Trials are on 1st October 1PM PDT - 6th October (US) 3PM PDT. For more details & requirements check out: Raider.io/tournaments",
		--	PVP	["description"] = "Arena World Championship: TWW Season 2\n\nSign up on Raider.io for any of the 3 Cups, available until April 11th 2025, and play in at least two game series (best of 5)\n\nWinning not required, for more details & requirements check out: Raider.io/tournaments",
		--	BtM ["description"] = "Break the Meta: TWW Season 3\n\nBreak the Meta is focused on teams pushing keys as high as they can with off-meta specs and classes.\n\nComplete at least 2 BTM-Eligible timed keystones at |cFFFFFFFFlevel +8|r or higher will receive an exclusive Toy to use in-game!.\n\nThe Event starts on Nov 18th for US, Nov 19th for EU & Nov 20th for CN/KR/TW & lasts for 1 week.\nFor more details & requirements check out: Raider.io/events/break-the-meta-the-war-within-season-3/",
		--		["timeline"] = { ADDED_11_0_2 },
		--		["icon"] = 4731630,
		--		["name"] = "Tempered Banner of the Algari (TOY!)(PVE)"
		--	}),
		},
	}),
});
