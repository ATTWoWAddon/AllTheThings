-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

-- Some day figure this out... maybe once both are actually fully available again to make filtering easier
-- Add to enUS.lus
--         [-78] = SPLASH_BATTLEFORAZEROTH_8_1_5_FEATURE2_TITLE,                    -- Brawler's Guild
--[[
root(ROOTS.WorldEvents, n(-78,	-- Brawler's Guild
	-- bubbleDown({ ["u"] = REMOVED_FROM_GAME },
	{
	["description"] = "Fight queueing currently only available to Horde.\n2022-11-14",
	["timeline"] = { ADDED_5_1_0 },
	["icon"] = 970888,
	["maps"] = {
		500,	-- Bizmo's Brawlpub
		503,	-- Brawlgar Arena
		DEEPRUN_TRAM,
	},
	["groups"] = {
		n(REWARDS, {
			--	attaching questIDs and sourceQuests here makes the SQ list not display correctly (the items display instead of the quests).
			i(92718, {	-- Brawler's Purse
				["description"] = "\nAwarded for winning a Brawl. If you haven't already finished the quest chain for Bruce, save these for the 'Soul Splinters' quest.\n",
			}),
			i(92719, {	-- Bulging Brawler's Purse
				["description"] = "\nAwarded for winning a Brawl. If you haven't already finished the quest chain for Bruce, save these for the 'Soul Splinters' quest.\n",
			}),
			i(164938, {	-- G.G. Gearbox
				["description"] = "\nAwarded for beating the G.G. Engineering Challenge Card encounter. You need this to complete the 'The Precious 13-Tooth Gogglegear' quest.\n",
			}),
			i(164931, {	-- Rumbler's Purse
				["description"] = "\nAwarded for winning a Rumble. If you haven't already finished the quest chain for Bruce, save these for the 'Super Soul Splinters' quest.\n",
			}),
		}),
	},
}));
--]]
