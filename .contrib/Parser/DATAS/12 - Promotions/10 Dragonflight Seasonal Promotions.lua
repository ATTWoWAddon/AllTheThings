-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
DRAGONFLIGHT_SEASONAL_PROMOTIONS = createHeader({
	readable = "Dragonflight Seasonal Promotions",
	icon = [[~_.asset("Expansion_DF")]],
	text = {
		en = "Dragonflight Seasonal Promotions",
		-- TODO: de = "",
		es = "Promociones temporada Dragonflight",
		mx = "Promociones temporada Dragonflight",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Промо Dragonflight",
		cn = "巨龙时代季节性促销",
		tw = "《巨龍崛起》季節性促銷",
	},
	description = {
		en = "These promotions happened during the time Dragonflight was the most recent expansion between 25th October 2022 & 24th July 2024.\n\nThey are listed in the order of their first appearance.",
	},
});
root(ROOTS.Promotions, {
	n(DRAGONFLIGHT_SEASONAL_PROMOTIONS, {
		["timeline"] = { ADDED_10_0_0 },
		["groups"] = {
			-- "Pre" Season
			mount(315132, {	-- Gargantuan Grrloc (MOUNT!)
				["description"] = "Obtained if you set up a 12-Month WoW Subscription. Promotion valid through January 15, 2023.",
				["timeline"] = { ADDED_10_0_0 },
				["u"] = REMOVED_FROM_GAME,
			}),
			mount(381529, {	-- Telix the Stormhorn (MOUNT!)
				["description"] = "Obtained if you set up a 12-Month WoW Subscription. Promotion valid through January 15, 2023.",
				["timeline"] = { ADDED_10_0_0 },
				["u"] = REMOVED_FROM_GAME,
			}),
			i(34493, {	-- Dragon Kite (PET!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between November 15th, 03:00 p.m. & November 18th, 11:59 p.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				-- #ENDIF
				-- #ENDIF
				["timeline"] = {
					ADDED_10_0_2,
					REMOVED_10_0_2_LAUNCH,	-- After November 17th, 11:59 p.m. PST
				},
			}),
			i(79771, {	-- Fel Drake (MOUNT!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Obtained through watching Twitch Streamers with Drops enabled for at least 4 hours between November 28th, 03:00 p.m. & December 1st, 11:59 p.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				-- #ENDIF
				-- #ENDIF
				["timeline"] = {
					ADDED_10_0_2_LAUNCH,
					REMOVED_10_0_2_LAUNCH,	-- After December 1st 2022
				},
			}),
			i(190583, {	-- Ichabod (PET!)
				["description"] = "Obtained by gifting an eligible creator's channel two Twitch subscriptions between November 28th, 03:00 p.m. & December 12th, 11:59 p.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = {
					ADDED_10_0_2_LAUNCH,
					REMOVED_10_0_2_LAUNCH,
				},
				-- #if BEFORE 10.0.2
				["u"] = REAL_MONEY,
				-- #endif
			}),
			i(70099, {	-- Cenarion Hatchling (PET!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Obtained through watching the Race to World First streams with Drops enabled for at least 4 hours between December 9th, 12:00 a.m. & December 13th, 02:59 p.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				-- #ENDIF
				-- #ENDIF
				["timeline"] = {
					ADDED_10_0_2_LAUNCH,
					REMOVED_10_0_2_LAUNCH,
				},
			}),
			i(92724, {	-- Swift Windsteed (MOUNT!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Obtained through watching the Race to World First streams with Drops enabled for at least 8 hours between December 9th, 12:00 a.m. & December 13th, 02:59 p.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				-- #ENDIF
				-- #ENDIF
				["timeline"] = {
					ADDED_10_0_2_LAUNCH,
					REMOVED_10_0_2_LAUNCH,
				},
			}),
			-- Season 1
			i(49703, {	-- Perpetual Purple Firework (TOY!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Obtained through watching select Twitch Streamers with Drops enabled for at least 2 hours between December 13th, 03:00 p.m. & December 28th, 11:59 p.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				-- #ENDIF
				-- #ENDIF
				["timeline"] = {
					ADDED_10_0_2,
					REMOVED_10_0_2_LAUNCH,
				},
			}),
			i(203716, {	-- Thundering Banner of the Aspects (TOY!)
				["description"] = "Mythic Dungeon International: DF Season 1\n\nThe Mythic Dungeon International (MDI) returns with its global competitions for its 7th year, pitting the best Mythic Dungeon teams in a head-to-head race to the finish line.\n\nAll registered teams that complete under time the two dungeons within the Proving Grounds will receive the exclusive Thundering Banner of the Aspects to use in-game!\nSign-ups close 27 January 2022 1PM PDT and The Proving Grounds are on 1 February 1PM PDT - 8 February (US) 1PM PDT.",
				["timeline"] = { ADDED_10_0_5, REMOVED_10_0_7 },
			}),
			i(35227, {	-- Goblin Weather Machine - Prototype 01-B (TOY!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Obtained through watching select Twitch Streamers with Drops enabled for at least 4 hours between February 1st, 10:00 a.m. & February 5th, 11:59 p.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				-- #ENDIF
				-- #ENDIF
				["timeline"] = {
					ADDED_10_0_5,
					REMOVED_10_0_5,
				},
			}),
			i(38301, {	-- D.I.S.C.O. (TOY!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Obtained through watching select Twitch Streamers with Drops enabled for at least 4 hours between February 21st, 10:00 a.m. & April 2nd, 11:59 p.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				-- #ENDIF
				-- #ENDIF
				["timeline"] = { ADDED_10_0_7 },
				["u"] = REMOVED_FROM_GAME,	-- 2nd April 2023
			}),
			i(203716, {	-- Thundering Banner of the Aspects (TOY!)
				["description"] = "Break the Meta: DF Season 1\n\nInstead of teams fighting to beat their opponent's time, Break the Meta is focused on teams pushing keys as high as they can with Season's 1 off-meta specs and classes.\n\nRegister for the event on |cFFFFFFFFRaider.io/break-the-meta-2023/signups|r and complete 2 or more eligible timed keystones at level 15 or higher during BTM S1, and the Thundering Banner of the Aspects will be automatically added to your collection in-game within 30 days of the conclusion of the event.\n\nThe Event starts on April 18th for US, April 19th for EU & April 20th for KR/TW & lasts for 2 entire resets of your region.",
				["timeline"] = {
					ADDED_10_0_7,
					REMOVED_10_1_0,	-- Removed again on May 2nd 2023
				},
			}),
			-- Season 2
			i(54452, {	-- Ethereal Portal (TOY!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Obtained through watching select Twitch Streamers with Drops enabled for at least 4 hours between May 2nd, 10:00 a.m. & May 9th, 9:59 a.m. PDT.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				-- #ENDIF
				-- #ENDIF
				["timeline"] = { ADDED_10_1_0, REMOVED_10_1_0 },
			}),
			i(54069, {	-- Blazing Hippogryph (MOUNT!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Obtained through watching select Twitch Streamers with Drops enabled for at least 4 hours between May 9th, 10:00 a.m. & May 17th, 10:00 a.m. PDT.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				-- #ENDIF
				-- #ENDIF
				["timeline"] = { ADDED_10_1_0, REMOVED_10_1_0 },
			}),
			i(208057, {	-- Smoldering Banner of the Aspects (TOY!)
				["description"] = "The Great Push returns in Dragonflight Season 2\n\nInstead of teams fighting to beat their opponent's time, The Great Push is focused on teams pushing keys as high as they can, striving to out survive their competitors and be crowned the champion!\n\nAll registered teams that complete under time the two dungeons within the Proving Grounds will receive the exclusive Smoldering Banner of the Aspects to use in-game!\nSign-ups close 30 Jun 2023 and The Proving Grounds are on 5-10 July (US).",
				["timeline"] = { ADDED_10_1_5, REMOVED_10_1_5 },
			}),
			i(206167, {	-- Wonderous Wavewhisker (MOUNT!)
				["description"] = "Obtained if you set up a 6-Month WoW Subscription. Promotion valid through January 9, 2024.",
				["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
			}),
			i(32566, {	-- Picnic Basket (TOY!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Obtained through watching select Twitch Streamers with Drops enabled for at least 4 hours between July 11th, 10:00 a.m. & July 18th, 10:00 a.m. PDT.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				-- #ENDIF
				-- #ENDIF
				["timeline"] = { ADDED_10_1_5 },	-- REMOVED_10_1_0 },
				["u"] = REMOVED_FROM_GAME,	-- 18th July 2023
			}),
			iensemble(190923, {	-- Ensemble: Dashing Buccaneer's Slops
				["description"] = "Obtained through watching select Twitch Streamers with Drops enabled for at least 4 hours between September 5th, 10:00 a.m. & September 12th, 01:00 a.m. PDT.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = { ADDED_10_1_5, REMOVED_10_1_5 },	-- Added 5th Sep, Removed 12th Sep
			}),
			i(208057, {	-- Smoldering Banner of the Aspects (TOY!)
				["description"] = "Break the Meta: DF Season 2\n\nInstead of teams fighting to beat their opponent's time, Break the Meta is focused on teams pushing keys as high as they can with Season's 2 off-meta specs and classes.\n\nRegister for the event on |cFFFFFFFFraider.io/break-the-meta-df-season-2/signups|r and complete at least 2 BTM-Eligible timed keystones at level +15 or higher during the Competition Period, and the Smoldering Banner of the Aspects will be automatically added to your collection in-game after the conclusion of the event.\n\nThe Event starts on October 3rd for US, October 4th for EU & October 5th for KR/TW & lasts for 1 reset of your region.",
				["timeline"] = { ADDED_10_1_7, REMOVED_10_1_7 },
			}),
			mount(419567, {	-- Ginormous Grrloc (MOUNT!)
				["description"] = "Obtained if you set up a 12-Month WoW Subscription.",
				["timeline"] = { ADDED_10_1_7, REMOVED_11_0_2 },
			}),
			i(203727, {	-- Gleaming Moonbeast (MOUNT!)
				["description"] = "Obtained if you set up a 12-Month WoW Subscription.",
				["timeline"] = { ADDED_10_1_7, REMOVED_11_0_2 },
			}),
			-- Season 3
			pet(2623, {	-- Dottie (PET!)
				["description"] = "Obtained through watching select Twitch Streamers with Drops enabled for at least 4 hours between November 7th, 10:00 a.m. & November 14th, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = { ADDED_10_2_0, REMOVED_10_2_0 },
			}),
			i(72575, {	-- White Riding Camel (MOUNT!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Obtained through watching select Twitch Streamers with Drops enabled for at least 4 hours between November 14th, 10:00 a.m. & November 21st, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				-- #ENDIF
				-- #ENDIF
				["timeline"] = { ADDED_10_2_0, REMOVED_10_2_0 },
			}),
			i(211424, {	-- Dreaming Banner of the Aspects (TOY!)
				["description"] = "Mythic Dungeon International: DF Season 3\n\nThe Mythic Dungeon International (MDI) returns with its global competitions for its 8th year, pitting the best Mythic Dungeon teams in a head-to-head race to the finish line.\n\nAll registered teams that complete under time the two dungeons within the Proving Grounds will receive the exclusive Dreaming Banner of the Aspects to use in-game!\nSign-ups close 29 January 2024 1PM PDT and The Proving Grounds are on 31st January 1PM PDT - 5 February (US) 1PM PDT.\n\nhttps://raider.io/events/mdi-dragonflight-season-3/info",
				["timeline"] = { ADDED_10_2_5, REMOVED_10_2_5 },
			}),
			mount(418286, {	-- Auspicious Arborwyrm (MOUNT!)
				["description"] = "Obtained if you set up a 6-Month WoW Subscription.",
				["timeline"] = { ADDED_10_2_0, REMOVED_11_2_0 },	-- Removed from Promotions with the next Promotion. Still purchaseable in the Shop
			}),
			i(67097, {	-- Grim Campfire (TOY!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Obtained through watching select Twitch Streamers with Drops enabled for at least 4 hours between January 23, 10:00 a.m. & January 30, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				-- #ENDIF
				-- #ENDIF
				["timeline"] = { ADDED_10_2_5, REMOVED_10_2_5 },
			}),
			pet(4437, {	-- Fathom (PET!)
				["description"] = "Obtained through watching select Twitch Streamers with Drops enabled for at least 4 hours between March 22, 10:00 a.m. & April 5, 10:00 a.m. PST.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				["timeline"] = { ADDED_10_2_6, REMOVED_10_2_6 },
			}),
			i(211424, {	-- Dreaming Banner of the Aspects (TOY!)
				["description"] = "Break the Meta: DF Season 3\n\nInstead of teams fighting to beat their opponent's time, Break the Meta is focused on teams pushing keys as high as they can with Season 3's off-meta specs and classes.\n\nRegister for the event on |cFFFFFFFFraider.io/break-the-meta-df-season-3/register|r and complete at least 2 BTM-Eligible timed keystones at |cFFFFFFFFlevel +17|r or higher during the Competition Period, and the Dreaming Banner of the Aspects will be automatically added to your collection in-game after the conclusion of the event.\n\nThe Event starts on April 3rd for US, April 4th for EU & April 5th for KR/TW & lasts for 2 resets of your region.",
				["timeline"] = { ADDED_10_2_6, REMOVED_10_2_6 },
			}),
			-- Season 4
			i(79744, {	-- Eye of the Legion (PET!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Obtained through watching select Twitch Streamers with Drops enabled for at least 4 hours between May 16, 10:00 a.m. & May 30, 10:00 a.m. PDT.\n\nYour Twitch account has to be connected with your Battle.net Account & you have to redeem the drop on Twitch before receiving it in your in-game collection as gift.",
				-- #ENDIF
				-- #ENDIF
				["timeline"] = { ADDED_MOP_REMIX, "removed 10.2.7.54904" },
			}),
			i(218128, {	-- Draconic Banner of the Aspects (TOY!)
				["description"] = "The Great Push returns in Dragonflight Season 4\n\nInstead of teams fighting to beat their opponent's time, The Great Push is focused on teams pushing keys as high as they can, striving to out survive their competitors and be crowned the champion!\n\nAll registered teams that complete under time the two dungeons within the Proving Grounds will receive the exclusive Smoldering Banner of the Aspects to use in-game!\nSign-ups close 15 Jun 2024 and The Proving Grounds are on 19-24 June (US).",
				["timeline"] = { ADDED_10_2_6_SEASON_FOUR, "removed 10.2.7.55142" },
			}),
			i(219450, {	-- Charming Courier (MOUNT!)
				["description"] = "Obtained if you set up a 6-Month WoW Subscription.",
				["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_11_2_0 },	-- Removed from Promotions with the next Promotion. Still purchaseable in the Shop
			}),
		},
	}),
});
