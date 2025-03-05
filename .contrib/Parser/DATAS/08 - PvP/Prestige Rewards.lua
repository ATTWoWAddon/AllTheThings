-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(n(PRESTIGE, bubbleDownSelf({ ["u"] = REMOVED_FROM_GAME }, {
	["description"] = "System that was used during Legion Expansion.",
	["g"] = {
		ach(10991, {	-- First Step into a Larger World [1]
			i(139777, {	-- Strange Crate
				i(139775),	-- Alliance Enthusiast (PET!)
				i(139776),	-- Horde Fanatic (PET!)
			}),
		}),
		ach(10743, {	-- The Prestige (A) [2]
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(138992, {	-- Grand Marshal's Medal of Valor
					["timeline"] = { REMOVED_8_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(42978, {	-- A Royal Audience [Alliance]
					["provider"] = { "i", 138992 },	-- Grand Marshal's Medal of Valor
					["description"] = "You get this quest when you reach Prestige Rank 2.",
					["timeline"] = { REMOVED_8_0_1 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
				}),
				q(42982, {	-- The Victor's Spoils [Alliance]
					["qg"] = 109466,	-- Anduin Wrynn <King of Stormwind>
					["sourceQuest"] = 42978,	-- A Royal Audience [Alliance]
					["timeline"] = { REMOVED_8_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				ach(10749, {	-- Fighting with Style: War-torn (Alliance)
				}),
				--[[
				-- this stuff is no longer a part of prestige and is based on honor levels/is not removed
				-- just leaving it commented here in case the symlink needs to be used for something later idfk
				-- if it needs to be used then it needs to be split/put in both this and the horde version below
				{
					["allianceAchievementID"] = 10749,	-- Fighting with Style: War-torn [Alliance]
					["hordeAchievementID"] = 11173,	-- Fighting with Style: War-torn [Horde]
					["criteriaID"] = 1,	-- The Prestige
					["sourceQuests"] = {
						42982,	-- The Victor's Spoils [Alliance]
						42987,	-- The Victor's Spoils [Horde]
					},
					["sym"] = {{"select", "headerID", -5203}, {"index", 1}},
					["u"] = REMOVED_FROM_GAME,
				},
				--]]
			},
		}),
		ach(10745, {	-- The Prestige (H) [2]
			["races"] = HORDE_ONLY,
			["g"] = {
				i(138996, {	-- High Warlord's Medal of Valor
					["timeline"] = { REMOVED_8_0_1 },
					["races"] = HORDE_ONLY,
				}),
				q(42985, {	-- A Royal Audience [Horde]
					["provider"] = { "i", 138996 },	-- High Warlord's Medal of Valor
					["description"] = "You get this quest when you reach Prestige Rank 2.",
					["timeline"] = { REMOVED_8_0_1 },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
				}),
				q(42987, {	-- The Victor's Spoils [Horde]
					["qg"] = 109471,	-- Lady Sylvanas Windrunner
					["sourceQuest"] = 42985,	-- A Royal Audience
					["coord"] = { 57.8, 91.6, UNDERCITY },
					["timeline"] = { REMOVED_8_0_1 },
					["races"] = HORDE_ONLY,
				}),
			},
		}),
		ach(10993, {	-- Third Time's The Charam [3]
			i(134026),	-- Honorable Pennant (TOY!)
		}),
		ach(10995, {	-- For Prestige [4]
			i(140228),	-- Prestigious Bronze Courser (MOUNT!)
		}),
		ach(11468, {	-- Alive for Five [5]
			title(321),	-- The Honorable <Name>
		}),
		ach(11469, {	-- The River Six [6]
		--[[ no longer removed/related to prestige, based on honor levels, leaving in case the symlink needs to be used for something
			{
				["allianceAchievementID"] = 10749,	-- Fighting with Style: War-torn [Alliance]
				["hordeAchievementID"] = 11173,	-- Fighting with Style: War-torn [Horde]
				["criteriaID"] = 2,	-- Crest of Heroism
				["sym"] = {{"select", "headerID", -5203}, {"index", 2}},
				["u"] = REMOVED_FROM_GAME,
			},
		--]]
		}),
		ach(11470, {	-- Slayin' to Seven [7]
			i(142379),	-- Dutiful Squire (PET!)
			i(142380),	-- Dutiful Gruntling (PET!)
		}),
		ach(11471, {	-- Don't Hate, Grind to Eight [8]
			i(134031),	-- Prestigious Pennant (TOY!)
		}),
		ach(11472, {	-- Hell, It's About Nine [9]
			i(140233),	-- Prestigious Ivory Courser (MOUNT!)
		}),
		ach(11685, {	-- Decade of Dominance [10]
			title(322),	-- <Name>, the Prestigious
		}),
		ach(11686, {	-- These Go To Eleven [11]
		--[[ no longer removed/related to prestige, based on honor levels, leaving in case the symlink needs to be used for something
			{
				["allianceAchievementID"] = 10749,	-- Fighting with Style: War-torn [Alliance]
				["hordeAchievementID"] = 11173,	-- Fighting with Style: War-torn [Horde]
				["criteriaID"] = 3,	-- Crest of Carnage
				["sym"] = {{"select", "headerID", -5203}, {"index", 3}},
				["u"] = REMOVED_FROM_GAME,
			},
		--]]
		}),
		ach(11687, {	-- Demonic Dozen [12]
			i(134032),	-- Elite Pennant (TOY!)
		}),
		ach(11688, {	-- Floor Thirteen [13]
			i(140408),	-- Prestigious Azure Courser (MOUNT!)
		}),
		ach(11689, {	-- Fourteen for the Team [14]
			title(323),	-- <Name>, the Unrelenting
		}),
		ach(11690, {	-- When You're Fifteen [15]
		--[[ no longer removed/related to prestige, based on honor levels, leaving in case the symlink needs to be used for something
			{
				["allianceAchievementID"] = 10749,	-- Fighting with Style: War-torn [Alliance]
				["hordeAchievementID"] = 11173,	-- Fighting with Style: War-torn [Horde]
				["criteriaID"] = 4,	-- Crest of Devastation
				["sym"] = {{"select", "headerID", -5203}, {"index", 4}},
				["u"] = REMOVED_FROM_GAME,
			},
		--]]
		}),
		ach(11691, {	-- You Are Sixteen [16]
			i(134034),	-- Esteemed Pennant (TOY!)
		}),
		ach(11692, {	-- Going On Seventeen [17]
			i(140232),	-- Prestigious Forest Courser (MOUNT!)
		}),
		ach(11693, {	-- Eighteen and Over [18]
			title(354),	-- <Name> the Unstoppable Force
		}),
		ach(12109, {	-- Twenty-One Arms Salute [21]
			i(140230),	-- Prestigious Royal Courser (MOUNT!)
		}),
		ach(12180, {	-- Catching Twenty-Two [22]
			title(325),	-- <Name>, Bound By Honor
		}),
		ach(12183, {	-- Prestige Quartermaster [25]
			i(140407),	-- Prestigious Midnight Courser (MOUNT!)
		}),
	},
}))));