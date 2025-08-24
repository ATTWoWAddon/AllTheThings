-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
SHADOWLANDS_SEASONAL_PROMOTIONS = createHeader({
	readable = "Shadowlands Seasonal Promotions",
	icon = [[~_.asset("Expansion_SL")]],
	text = {
		en = "Shadowlands Seasonal Promotions",
		es = "Promociones temporada Shadowlands",
		mx = "Promociones temporada Shadowlands",
		ru = "Промо Shadowlands",
		cn = "暗影国度季节性促销",
		tw = "《暗影之境》季節性促銷",
	},
	description = {
		en = "These promotions happened during the time Shadowlands was the most recent content between 13th October 2020 & 25th October 2022.\n\nThey are listed in the order of their first appearance.",
	},
});
root(ROOTS.Promotions, {
	n(SHADOWLANDS_SEASONAL_PROMOTIONS, {
		["timeline"] = { ADDED_9_0_5 },
		["groups"] = {
			-- SEASON 1
			mount(348162, {	-- Wandering Ancient (MOUNT!)
				["description"] = "Granted to players by logging in on character of at least level 20.",
				["timeline"] = { ADDED_9_0_5 },
				["u"] = REMOVED_FROM_GAME,	-- Not sure when it got removed. Maybe DF Prepatch?
			}),
			-- SEASON 2
			i(187834, {		-- Tormented Banner of the Opportune (TOY!)
				["description"] = "The Great Push: SL Season 2\n\nInstead of teams fighting to beat their opponent's time, The Great Push is focused on teams pushing keys as high as they can, striving to out survive their competitors and be crowned the champion!\n\nAll registered teams that complete under time the two dungeons within the Proving Grounds will receive the exclusive Tormented Banner of the Opportune to use in-game!\nSign-ups close 29 Nov 2021 and The Proving Grounds are on 3-5 Dec (US).",
				["u"] = REMOVED_FROM_GAME,
			}),
			-- SEASON 3
			i(187957, {		-- Encrypted Banner of the Opportune (TOY!)
				["description"] = "Mythic Dungeon International: SL Season 3\n\nThe Mythic Dungeon International (MDI) returns with its global competitions for its 6th year, pitting the best Mythic Dungeon teams in a head-to-head race to the finish line.\n\nAll registered teams that complete under time the two dungeons within the Proving Grounds will receive the exclusive Encrypted Banner of the Opportune to use in-game!\nSign-ups close 28 March 2022 and The Proving Grounds are on 30 March - 5 April (US).",
				["timeline"] = {
					ADDED_9_2_0,
					REMOVED_9_2_0, -- 8th April 2022, 1 day after the event ended.
				},
			}),
			i(95474, {	-- Jewel of the Firelord
				["description"] = "Obtained through Prime Gaming from June 29th 2022 till July 26th 2022.",
				["timeline"] = {
					ADDED_9_2_5,
					REMOVED_9_2_7,	-- 2nd August 2022, 6 days after the event ended
				},
			}),
			-- SEASON 4
			ach(15594, {	-- Fearless Spectator
				["description"] = "Granted to players who watch MDI Global Finals, AWC Grand Finals or AWC Cross-Region Tournament for 2 total hours in July 2022. You have to link your Battle.net account to your YouTube account and watch eligible streams.",
				["groups"] = {
					title(459),	-- Fearless Spectator <Name>
				},
				["timeline"] = {
					ADDED_9_2_5,
					REMOVED_9_2_7,	-- 2nd August 2022, 7 days after the event ended
				},
			}),
			i(97213, {	-- Hood of Hungering Darkness
				--["description"] = "Obtained through Prime Gaming from July 27th 2022 till August 23rd 2022.",
				["timeline"] = { ADDED_9_2_5 },
				["u"] = REMOVED_FROM_GAME, -- Removed again on August 24th 2022
			}),
			i(187958, {		-- Shrouded Banner of the Opportune (TOY!)
				["description"] = "Break the Meta: SL Season 4\n\nInstead of teams fighting to beat their opponent's time, Break the Meta is focused on teams pushing keys as high as they can with Season's 4 off-meta specs and classes.\n\nRegister for the event on |cFFFFFFFFRaider.io/break-the-meta-2022|r and complete 2 or more eligible timed keystones at level 15 or higher during BTM S4, and the Shrouded Banner of the Opportune will be automatically added to your collection in-game within 30 days of the conclusion of the event.\n\nThe Event starts on October 4th for US, October 5th for EU & October 6th for KR/TW & lasts for the entire reset of your region.\n\nThis was previously available through The Great Push: SL Season 4.",
				["timeline"] = {
					ADDED_9_2_7,	-- 23rd September 2022, 11 days before the event started.
					REMOVED_10_0_0,	-- 16th August 2022, 1 day after the event ended.
				},
				["u"] = REMOVED_FROM_GAME, -- Removed again on October 12th 2022
			}),
			i(95475, {	-- Crown of the Eternal Winter
				["description"] = "Obtained through Prime Gaming from August 24th 2022 till September 20th 2022.",
				["timeline"] = {
					ADDED_9_2_7,
					REMOVED_9_2_7,	-- 23 September 2022, 3 days after the event ended.
				},
			}),
			mount(386452, {	-- Frostbrood Proto-Wyrm
				["description"] = "In order to unlock the Frostbrood Proto-Wyrm you have finish the Death Knight starting zone in |cFFfe040fWotLK Classic|r. The very first Death Knight you make is completely free of restrictions, so even if you've never played Classic before, you can create a Death Knight starting at level 55.",
				["timeline"] = { ADDED_9_2_7, REMOVED_10_0_2_LAUNCH },
			}),
		},
	}),
});
