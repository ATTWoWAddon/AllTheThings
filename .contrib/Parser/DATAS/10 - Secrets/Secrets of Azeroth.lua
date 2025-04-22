--------------------------------------------
--     S E C R E T S  M O D U L E       --
--------------------------------------------
SECRETS_OF_AZEROTH_HEADER = createHeader({
	readable = "Secrets of Azeroth",
	constant = "SECRETS_OF_AZEROTH_HEADER",
	icon = [[~_.asset("Holiday_SecretsAz")]],
--	eventID = EVENTS.SECRETS_OF_AZEROTH,	-- No longer needed as the event is always active now.
	text = {
		en = "Secrets of Azeroth",
		ru = "Тайны Азерота",
		cn = "艾泽拉斯之秘",
		tw = "艾澤拉斯秘聞",
	},
});
COMMUNITY_CLUES_HEADER = createHeader({
	readable = "Community Clues",
	constant = "COMMUNITY_CLUES_HEADER",
	icon = [[~_.asset("Holiday_SecretsAz")]],
	text = {
		en = "Community Clues",
	},
});
-- TODO:
-- Fix temporary ObjectIDs with real ones if ever determined, and delete temp entries from ObjectDB.lua

-- Little helper function to lock a lot of stuff in this file since blizz locked a lot of things account-wide
local function OneTimeAccountLocked(questID, t)
	t.DisablePartySync = true
	t.lockCriteria = { 1, "questID", questID }
	return t
end

root(ROOTS.Secrets, n(SECRETS_OF_AZEROTH_HEADER, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
	["description"] = "***Using Debug Mode is recommended.***\n",
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(18644, {	-- Community Rumor Mill
				["sym"] = {{"select","questID",
					77289,	-- Loose Dirt Mound
					77288,	-- Loose Dirt Mound
					77291,	-- Loose Dirt Mound
					77292,	-- Loose Dirt Mound
					77290,	-- Loose Dirt Mound
					77293,	-- Loose Dirt Mound
					77296,	-- Loose Dirt Mound
					77294,	-- Loose Dirt Mound
					77297,	-- Loose Dirt Mound
					77298,	-- Loose Dirt Mound
					77299,	-- Loose Dirt Mound
					78208,	-- Loose Dirt Mound
					78207,	-- Loose Dirt Mound
					77300,	-- Loose Dirt Mound
					77302,	-- Loose Dirt Mound
					77301,	-- Loose Dirt Mound
					77295,	-- Loose Dirt Mound
				}},
				["groups"] = {
					i(208151),	-- Tobias (PET!)
				},
			}),
			ach(18643, {	-- Community Rumors
				["sym"] = {{"select","questID",
					77289,	-- Loose Dirt Mound
					77288,	-- Loose Dirt Mound
					77291,	-- Loose Dirt Mound
					77292,	-- Loose Dirt Mound
					77290,	-- Loose Dirt Mound
					77293,	-- Loose Dirt Mound
					77296,	-- Loose Dirt Mound
					77294,	-- Loose Dirt Mound
					77297,	-- Loose Dirt Mound
					77298,	-- Loose Dirt Mound
					77299,	-- Loose Dirt Mound
					78208,	-- Loose Dirt Mound
					78207,	-- Loose Dirt Mound
					77300,	-- Loose Dirt Mound
					77302,	-- Loose Dirt Mound
					77301,	-- Loose Dirt Mound
					77295,	-- Loose Dirt Mound
				}},
				["groups"] = {
					i(208150),	-- Blue Tweed Cap
				},
			}),
			ach(18642, {	-- The Inquisitive
				["cost"] = {{"i",207580,1}},	-- Shomko's Unyielding Spear
				["coord"] = { 33.6, 58.4, BOREAN_TUNDRA },
				["groups"] = {
					title(512),	-- <Name> The Inquisitve
				},
			}),
			ach(18645, {	-- Tools of the Trade
				i(208149),	-- Brown Tweed Cap
				crit(60754, {	-- Tricked-Out Thinking Cap
					["provider"] = { "i", 206696 },	-- Tricked-Out Thinking Cap
				}),
				crit(60755, {	-- Torch of Pyrreth
					["provider"] = { "i", 208092 },	-- Torch of Pyrreth
				}),
				crit(60756, {	-- Idol of Ohn'ara
					["provider"] = { "i", 207730 },	-- Idol of Ohn'ara
				}),
			}),
			ach(18646, {	-- Whodunnit?
				i(208152),	-- Pattie (MOUNT!)
				title(519),	-- Honorary Preservationists (TITLE!)
				crit(60849, {	-- A Preservationist
					["_quests"] = { 77203 },
				}),
				crit(60752, {	-- Ceremonial Spear
					["_quests"] = { 76735 },
				}),
				crit(60850, {	-- Thinking Cap
					["_quests"] = { 76504 },
				}),
				crit(60851, {	-- An Inside Job?
					["_quests"] = { 77277 },
				}),
				crit(60852, {	-- Torch of Pyrreth
					["_quests"] = { 77263 },
				}),
				crit(60853, {	-- A Chilling Ascent
					["_quests"] = { 77286 },
				}),
				crit(60854, {	-- The Idol of Ohn'ahra
					["_quests"] = { 76456 },
				}),
				crit(60855, {	-- Shifting Sands
					["_quests"] = { 77305 },
				}),
				crit(60856, {	-- What's in a Mold?
					["_quests"] = { 77822 },
				}),
				crit(60857, {	-- Forging is Key
					["_quests"] = { 77831 },
				}),
				crit(60858, {	-- A Proper Burial
					["_quests"] = { 77578 },	-- Banner Stand
				}),
				crit(60859, {	-- Kirin Tor Knowledge
					["_quests"] = { 77908 },
				}),
				crit(60860, {	-- A Curious Orb
					["_quests"] = { 77954 },
				}),
				crit(60861, {	-- Under Suspicion
					["_quests"] = { 77934 },
				}),
				crit(60862, {	-- The Race
					["_quests"] = { 77977 },
				}),
			}),
			ach(19080, {	-- Arcane Influence - Only available for two days (10/11 September 2023)
				["questID"] = 78101,
				["coord"] = { 36.6, 61.8, VALDRAKKEN },
				["u"] = REMOVED_FROM_GAME,	-- no reason to timeline, it was available so short
			}),
		}),
		n(TREASURES, sharedData({
			["groups"] = {
				i(208142),	-- Buried Satchel
			},
		},{
			o(405526, {	-- Loose Dirt Mound
				["questID"] = 77289,
				["coord"] = { 55.3, 59.4, EASTERN_PLAGUELANDS },
			}),
			o(405525, {	-- Loose Dirt Mound
				["questID"] = 77288,
				["coord"] = { 42.2, 48.0, FELWOOD },
			}),
			o(405530, {	-- Loose Dirt Mound
				["questID"] = 77291,
				["coords"] = {
					{ 43.9, 37.4, THOUSAND_NEEDLES },	-- Cave Entrance
					{ 42.7, 30.6, THOUSAND_NEEDLES },	-- Loose Dirt Mound
				},
				["description"] = "In underwater cave.",
			}),
			o(405531, {	-- Loose Dirt Mound
				["questID"] = 77292,
				["coord"] = { 35.3, 49.0, DRAENOR_SHADOWMOON_VALLEY },
			}),
			o(405529, {	-- Loose Dirt Mound
				["questID"] = 77290,
				["coord"] = { 26.2, 68.6, NETHERSTORM },
				["provider"] = {"i",208092},	-- Torch of Pyrreth
				["description"] = "You need three people to each channel their 'Torch of Pyrreth' on each small crystal.",
			}),
			o(405532, {	-- Loose Dirt Mound
				["questID"] = 77293,
				["coord"] = { 56.8, 21.4, VALLEY_OF_THE_FOUR_WINDS },
			}),
			o(405535, {	-- Loose Dirt Mound
				["questID"] = 77296,
				["coord"] = { 25.2, 71.5, THE_AZURE_SPAN },
				["provider"] = {"i",208092},	-- Torch of Pyrreth
				["description"] = "Use your 'Torch of Pyrreth' near the snowmen.",
			}),
			o(405533, {	-- Loose Dirt Mound
				["questID"] = 77294,
				["coord"] = { 63.9, 72.6, DRAGONBLIGHT },
			}),
			o(405536, {	-- Loose Dirt Mound
				["questID"] = 77297,
				["coord"] = { 46.0, 50.7, NORTHERN_BARRENS },
			}),
			o(405537, {	-- Loose Dirt Mound
				["questID"] = 77298,
				["coord"] = { 64.7, 55.4, BLASTED_LANDS },
				["provider"] = {"i",208092},	-- Torch of Pyrreth
				["description"] = "Use your 'Torch of Pyrreth' on the ritual crystal.",
			}),
			o(405538, {	-- Loose Dirt Mound
				["questID"] = 77299,
				["coord"] = { 57.8, 26.3, NAGRAND },
				["description"] = "On the island floating in the air.",
			}),
			o(410181, {	-- Loose Dirt Mound
				["questID"] = 78208,
				["coord"] = { 53.3, 87.4, HIGHMOUNTAIN },
			}),
			o(410179, {	-- Loose Dirt Mound
				["questID"] = 78207,
				["coord"] = { 68.8, 73.2, WESTERN_PLAGUELANDS },
			}),
			o(405539, {	-- Loose Dirt Mound
				["questID"] = 77300,
				["races"] = ALLIANCE_ONLY,
				["coords"] = {
					{ 36.8, 35.6, GRIZZLY_HILLS },	-- Start of Log Ride
					{ 20.2, 81.3, GRIZZLY_HILLS },	-- Loose Dirt Mound
				},
				["description"] = "Talk to the NPC at the northern waypoint to take a ride on the log. At the end, you will receive the WHEE! buff which is required to see the Loose Dirt Mound.",
			}),
			o(409835, {	-- Loose Dirt Mound
				["questID"] = 77300,
				["races"] = HORDE_ONLY,
				["coords"] = {
					{ 35.1, 34.7, GRIZZLY_HILLS },	-- Start of Log Ride
					{ 10.9, 74.9, GRIZZLY_HILLS },	-- Loose Dirt Mound
				},
				["description"] = "Take the log ride, must have WHEE! buff for Loose Dirt Mound to be visible.",
			}),
			o(405541, {	-- Loose Dirt Mound
				["questID"] = 77302,
				["coord"] = { 73.1, 39.5, DRAGONBLIGHT },
			}),
			o(405540, {	-- Loose Dirt Mound
				["questID"] = 77301,
				["coord"] = { 38.6, 54.9, TIMELESS_ISLE },
			}),
			o(405534, {	-- Loose Dirt Mound
				["questID"] = 77295,
				["coord"] = { 74.5, 86.1, TIRAGARDE_SOUND },
			}),
		})),
		n(QUESTS, {
			-- Day 1 --
			q(77202, {	-- The Preservationists
				["qg"] = 199261,	-- Holiday Enthusiast
				["coords"] = {
					{ 55.0, 37.0, VALDRAKKEN },
				},
				["isBreadcrumb"] = true,
				["DisablePartySync"] = true,
				-- Attempting to Party Sync and pickup/have shared this quest, the game says 'Must complete all pre-requisites'
				-- I'm not sure what shenanigans Blizzard is doing where you can be missing quest pre-requisites while also in a Party Sync
				-- and the other player is able to pickup the quest
				-- If someone figures this out, please adjust the quest
				["repeatable"] = true, -- everyone lost this quest
			}),
			q(77203, {	-- Preserving Rarities
				["qg"] = 206864,	-- Preservationist Kathos
				["coords"] = {
					{ 47.4, 48.1, VALDRAKKEN },		-- Preservationist Kathos
					{ 58.88, 54.09, VALDRAKKEN },	-- Chalice Placement
				},
				["sourceQuests"] = { 77202 },	-- The Preservationists
				["description"] = "Talk to Kathos again to get a Mystery box & open it to receive a Golden Chalice.\nDeliver the Chalice in the Bank in Valdrakken (58.88 54.09).\nYou can rightclick the quest to place all coordinates.",
				-- TODO: does it go away after event?
				["groups"] = {
					i(208054, {	-- A Mystery Box
						i(208056),	-- Golden Chalice
						i(208055),	-- A Clue: The Golden Chalice
					}),
				},
			}),
			q(76735, {	-- Rise in Relic Theft
				["qg"] = 206864,	-- Preservationist Kathos
				["coords"] = {
					{ 47.4, 48.1, VALDRAKKEN },			-- Preservationist Kathos
					{ 12.4, 49.2, THE_AZURE_SPAN },		-- Elder Poa
					{ 48.0, 74.8, DRAGONBLIGHT },		-- Elder Ko'nani
					{ 33.63, 58.45, BOREAN_TUNDRA },	-- Statue
				},
				["sourceQuests"] = { 77203 },	-- Preserving Rarities
				["repeatable"] = true,
				["description"] = "Deliver the Tuskarr Spear to Eldor Poa in Azure Span (12.4 49.2).\nDeliver the newly received Shomko Spear to Elder Ko'nani in Dragonblight (48.0 74.8).\nFinally deliver the spear to the Statue in Borean Tundra (33.63 58.45).\nYou can rightclick the quest to place all coordinates.",
				["groups"] = {
					i(207105),	-- Tuskarr Ceremonial Spear
					-- TODO: not really sure how to list this situation yet...
					i(207580, {	-- Shomko's Unyielding Spear
						["provider"] = { "n", 186448 },	-- Elder Poa
						["coord"] = { 12.4, 49.3, THE_AZURE_SPAN },
						["cost"] = {{"i",207105,1}},	-- Tuskarr Ceremonial Spear
					}),
					i(208190, {	-- The Elder's Drawing
						["provider"] = { "n", 26194 },	-- Elder Ko'nani
						["coord"] = { 48.0, 74.8, DRAGONBLIGHT },
						["cost"] = {{"i",207580,1}},	-- Shomko's Unyielding Spear
					}),
					n(208182, {	-- Crazed Looter
						["description"] = "Spawns after using spear at statue",
						["coord"] = { 33.63, 58.45, BOREAN_TUNDRA },
						["groups"] = {
							i(207594),	-- Looter's Purse
						},
					}),
				},
			}),

			-- Day 2 --
			q(77165, {	-- A Secretive Contact
				["qg"] = 207696,	-- Bobby Carlisle
				["coord"] = { 47.9, 46.8, VALDRAKKEN },
				["repeatable"] = true,
				["groups"] = {
					i(207802),	-- Bobby Carlisle's Thinking Cap Notes
					i(208416, {	-- Thunderspine Nest Shopping List
						["provider"] = { "n", 185556 },	-- Erugosa
						["coord"] = { 46.5, 46.2, VALDRAKKEN },
					}),
					i(207956, {	-- Thunderspine Nest
						["provider"] = { "n", 185556 },	-- Erugosa
						["coord"] = { 46.5, 46.2, VALDRAKKEN },
						["cost"] = {
							{"i",201419,5},	-- Apexis Asiago
							{"i",198441,5},	-- Thunderspine Tenders
							{"i",205693,5},	-- Latticed Stinkhorn
						},
					}),
					i(207814, {	-- Thought Calculating Apparatus
						["provider"] = { "n", 185548 },	-- Clinkyclick Shatterboom
						["coord"] = { 42.2, 48.6, VALDRAKKEN },
						["cost"] = {{"i",207956,5}},	-- Thunderspine Nest
					}),
					i(207812, {	-- Fresh Tyranha
						["crs"] = 191451,	-- Hungering Tyranha
						["coords"] = {
							{ 45.3, 93.1, VALDRAKKEN },
						},
					}),
					i(207813, {	-- Downy Helmet Liner
						["provider"] = { "n", 197781 },	-- Gryffin
						["coord"] = { 42.4, 49.4, VALDRAKKEN },
						["cost"] = {{"i",207812,1}},	-- Fresh Tyranha
					}),
					q(77230, {
						["name"] = "Pay Shakey's Tab",
						["repeatable"] = true,
						["cost"] = 3464358,
					}),
					i(207816, {	-- Crystal Ocular Lenses
						["provider"] = { "n", 198586 },	-- Shakey Flatlap
						["coord"] = { 38.9, 61.8, VALDRAKKEN },
						["sourceQuest"] = 77230,	-- Pay Shakey's Tab (HQT)
					}),
					i(207827, {	-- Unfinished Thinking Cap
						["cost"] = {
							{"i",207814,1},	-- Thought Calculating Apparatus
							{"i",207813,1},	-- Downy Helmet Liner
							{"i",207816,1},	-- Crystal Ocular Lenses
						},
					}),
				},
			}),
			OneTimeAccountLocked(78202,	-- Unfinished Thinking Cap (Account-Wide Lock)
			q(77237, {	-- Unfinished Thinking Cap
				["provider"] = { "i", 207827 },	-- Unfinished Thinking Cap
				["crs"] = 207697,	-- Fangli Hoot
				["coords"] = {
					-- noted that this NPC 'moves around', perhaps daily?
					{ 26.6, 53.9, VALDRAKKEN },
				},
				["groups"] = {
					i(206696),	-- Tricked-Out Thinking Cap (TOY!)
				},
			})),
			OneTimeAccountLocked(77513,	-- The Tricked-Out Thinking Cap (Account-Wide Lock)
			q(76504, {	-- The Tricked-Out Thinking Cap
				["provider"] = { "n", 207697 },	-- Fangli Hoot
				["coords"] = {
					{ 26.7, 53.9, VALDRAKKEN },	-- Fangli
					{ 64.6, 53.6, VALDRAKKEN },	-- Solve Riddle
				},
				["sourceQuest"] = 77237,	-- Unfinished Thinking Cap
				["cost"] = {{"i",206696,1}},	-- Tricked-Out Thinking Cap (TOY!)
				["description"] = "Use Toy to accept quest. Follow arrows.",
				["groups"] = {
					i(206944),	-- A Clue: The Thinking Cap
				},
			})),

			-- Day 3 --
			q(77276, {	-- An Inside Job?
				["qg"] = 207696,	-- Bobby Carlisle
				["coord"] = { 47.9, 46.8, VALDRAKKEN },
				["sourceQuest"] = 76504,	-- The Tricked-Out Thinking Cap
				["repeatable"] = true,
				["groups"] = {
					i(208129),	-- Copied Artifact Storage Key
					i(208128),	-- Fangli's Note
					o(405489, {	-- Preservationist's Locker
						["coord"] = { 48.8, 47.8, VALDRAKKEN },
						["groups"] = {
							i(208130),	-- Maruuk Burial Banner
						},
					}),
					OneTimeAccountLocked(77521,	-- Preservationist Cleared (Account-Wide Lock)
					q(77397, {
						["name"] = "Talk with 'Appraiser' Sazsel Stickyfingers",
						["coord"] = { 62.8, 72.8, VALDRAKKEN },
						["cost"] = {{"i",208130,1}},	-- Maruuk Burial Banner
					})),
				},
			}),
			OneTimeAccountLocked(77521,	-- Preservationist Cleared (Account-Wide Lock)
			q(77277, {	-- Preservationist Cleared
				["qg"] = 208620,	-- "Appraiser" Sazsel Stickyfingers
				["coord"] = { 62.8, 72.8, VALDRAKKEN },
				["sourceQuest"] = 77397,	-- Talk with 'Appraiser' Sazsel Stickyfingers
				["groups"] = {
					i(208130),	-- Maruuk Burial Banner
				},
			})),

			-- Day 4 --
			q(77281, {	-- Securing an Artifact
				["qg"] = 185562,	-- Tithris
				["coord"] = { 47.5, 46.2, VALDRAKKEN },
				["sourceQuest"] = 76504,	-- The Tricked-Out Thinking Cap
				["repeatable"] = true,
				["groups"] = {
					i(208131),	-- Preservationist's Dispatch
					-- ObjectID/QuestID correlation guessed
					OneTimeAccountLocked(77522,	-- The Torch of Pyrreth (Account-Wide Lock)
					o(405510, {	-- Ancient Lever
						["coord"] = { 56.6, 20.3, THE_WAKING_SHORES },
						['questID'] = 77401,
					})),
					OneTimeAccountLocked(77522,	-- The Torch of Pyrreth (Account-Wide Lock)
					o(405511, {	-- Ancient Lever
						["coord"] = { 57.7, 23.8, THE_WAKING_SHORES },
						['questID'] = 77402,
					})),
					OneTimeAccountLocked(77522,	-- The Torch of Pyrreth (Account-Wide Lock)
					o(405512, {	-- Ancient Lever
						["coord"] = { 57.0, 25.5, THE_WAKING_SHORES },
						['questID'] = 77403,
					})),
					o(405513, {	-- Torch of Pyrreth
						["coord"] = { 54.5, 20.3, THE_WAKING_SHORES },
						["sourceQuests"] = {
							77401,	-- Ancient Lever
							77402,	-- Ancient Lever
							77403,	-- Ancient Lever
						},
						["groups"] = {
							i(208135),	-- Torch of Pyrreth (QI!)
						},
					}),
				},
			}),
			OneTimeAccountLocked(78201,	-- Artifact Secured (Account-Wide Lock)
			q(77282, {	-- Artifact Secured
				["provider"] = { "i", 208135 },	-- Torch of Pyrreth
				["coord"] = { 54.6, 20.4, THE_WAKING_SHORES },
				["groups"] = {
					i(208092),	-- Torch of Pyrreth (TOY!)
				},
			})),
			OneTimeAccountLocked(77522,	-- The Torch of Pyrreth (Account-Wide Lock)
			q(77263, {	-- The Torch of Pyrreth
				["qg"] = 206864,	-- Preservationist Kathos
				["coord"] = { 47.4, 48.1, VALDRAKKEN },
				["sourceQuest"] = 77282,	-- Artifact Secured
				["description"] = "Use Torch of Pyrreth @ 58.5, 23.6 Valdrakken.",
				["groups"] = {
					o(405515, {	-- Enchanted Box
						["coord"] = { 58.5, 23.6, VALDRAKKEN },
						["provider"] = {"i",208092},	-- Torch of Pyrreth
						["groups"] = {
							i(208107),	-- Kathos' Field Glasses (QI!)
						},
					}),
				},
			})),

			-- Day 5 --
			q(77284, {	-- A Chilling Ascent
				["qg"] = 207696,	-- Bobby Carlisle
				["coord"] = { 47.9, 46.8, VALDRAKKEN },
				["sourceQuest"] = 77263,	-- The Torch of Pyrreth
				["repeatable"] = true,
				["groups"] = {
					i(208137),	-- The Clerk's Notes
				},
			}),
			OneTimeAccountLocked(77523,	-- A Knowledgeable Descent (Account-Wide Lock)
			q(77286, {	-- A Knowledgeable Descent
				["providers"] = {
					{ "o", 405523 },	-- Unveiled Tablet
					{ "i", 208092 },	-- Torch of Pyrreth
				},
				["coord"] = { 78.9, 32.4, THE_AZURE_SPAN },
				["groups"] = {
					i(208143),	-- Unveiled Tablet Rubbing
				},
			})),

			-- Day 6 --
			q(77303, {	-- Idol Searching
				["qg"] = 185562,	-- Tithris
				["coord"] = { 47.2, 46.6, VALDRAKKEN },
				["repeatable"] = true,
				["groups"] = {
					i(208144),	-- Preservationist's Dispatch Two
					OneTimeAccountLocked(77524,	-- Using the Idol (Account-Wide Lock)
					o(9000001, {	-- Ancient Incense Brazier
						["coord"] = { 32.3, 67.9, OHNAHRAN_PLAINS },
						["provider"] = {"i",208092},	-- Torch of Pyrreth
						["questID"] = 77405,
					})),
					OneTimeAccountLocked(77524,	-- Using the Idol (Account-Wide Lock)
					o(9000002, {	-- Ancient Incense Brazier
						["coord"] = { 31.0, 70.8, OHNAHRAN_PLAINS },
						["provider"] = {"i",208092},	-- Torch of Pyrreth
						["questID"] = 77406,
					})),
					OneTimeAccountLocked(77524,	-- Using the Idol (Account-Wide Lock)
					o(9000003, {	-- Ancient Incense Brazier
						["coord"] = { 35.2, 65.7, OHNAHRAN_PLAINS },
						["provider"] = {"i",208092},	-- Torch of Pyrreth
						["questID"] = 77407,
					})),
					OneTimeAccountLocked(77524,	-- Using the Idol (Account-Wide Lock)
					o(9000004, {	-- Ancient Incense Brazier
						["coord"] = { 39.5, 58.9, OHNAHRAN_PLAINS },
						["provider"] = {"i",208092},	-- Torch of Pyrreth
						["questID"] = 77404,
					})),
					o(405546, {	-- Idol of Ohn'ahra
						["coord"] = { 39.5, 58.9, OHNAHRAN_PLAINS },
						["sourceQuests"] = {
							77404,	-- Ancient Incense Brazier
							77405,	-- Ancient Incense Brazier
							77406,	-- Ancient Incense Brazier
							77407,	-- Ancient Incense Brazier
						},
						["groups"] = {
							i(208145),	-- Idol of Ohn'ahra (QI!)
						},
					}),
				},
			}),
			OneTimeAccountLocked(77524,	-- Using the Idol (Account-Wide Lock)
			q(77304, {	-- An Idol in Hand
				["provider"] = { "i", 208145 },	-- Idol of Ohn'ahra
				["groups"] = {
					i(207730),	-- Idol of Ohn'ahra (TOY!)
				},
			})),
			OneTimeAccountLocked(77524,	-- Using the Idol (Account-Wide Lock)
			q(76456, {	-- Using the Idol
				["qg"] = 206864,	-- Preservationist Kathos
				["coord"] = { 47.4, 48.1, VALDRAKKEN },
				["sourceQuest"] = 77304,	-- An Idol in Hand
				["description"] = "Use the Idol. It points towards objectives.",
			})),

			-- Day 7 --
			q(76509, {	-- Into the Sands
				["qg"] = 206864,	-- Preservationist Kathos
				["coord"] = { 47.4, 48.1, VALDRAKKEN },
				["sourceQuest"] = 76456,	-- Using the Idol
				["repeatable"] = true,
				["groups"] = {
					i(206948),	-- A Clue: The Shifting Sands (QI!)
					-- These Time Lost Fragments spawn all over the Shifting Sands
					o(404319, {	-- Time-Lost Fragment
						["description"] = "Many locations, each location respawns after ~60 seconds.",
						["coords"] = {
							{ 57.3, 82.1, THALDRASZUS },
							{ 58.5, 78.4, THALDRASZUS },
							{ 58.8, 78.2, THALDRASZUS },
							{ 59.3, 78.8, THALDRASZUS },
						},
						["groups"] = {
							i(208191),	-- Time Lost Fragment
						},
					}),
					i(208146, {	-- Incomplete Tablet (QI!)
						["cost"] = {{"i",208191,3}},	-- Time Lost Fragment (QI!)
					}),
				},
			}),
			OneTimeAccountLocked(76508,	-- Out of the Sands (Account-Wide Lock)
			q(77305, {	-- Out of the Sands
				["provider"] = { "i", 208146 },	-- Incomplete Tablet (QI!)
			})),

			-- Day 8 --
			q(77653, {	-- A Key Story
				["qg"] = 207696,	-- Bobby Carlisle
				["coord"] = { 47.9, 46.8, VALDRAKKEN },
				["repeatable"] = true,
				["groups"] = {
					i(208486),	-- The Blacksmith and the Apprentice (QI!)
					o(408226, {	-- Ancient Key Mold
						["coord"] = { 62.9, 57.3, OHNAHRAN_PLAINS },
						["groups"] = {
							i(208827),	-- Titan Key Mold
						},
					}),
				},
			}),
			o(408224, {	-- Hastily Scrawled Stone
				["questID"] = 77972,
				["provider"] = {"i",208092},	-- Torch of Pyrreth
				["coord"] = { 63.4, 57.0, OHNAHRAN_PLAINS },
			}),
			OneTimeAccountLocked(77576,	-- A Titanic Mold (Account-Wide Lock)
			q(77822, {	-- A Titanic Mold
				["provider"] = { "i", 208827 },	-- Titan Key Mold
			})),

			-- Day 9 --
			q(77829, {	-- Reforging a Legend
				["qg"] = 207696,	-- Bobby Carlisle
				["coord"] = { 47.9, 46.8, VALDRAKKEN },
				["sourceQuest"] = 77822,	-- A Titanic Mold
				["repeatable"] = true,
				["groups"] = {
					i(208829),	-- Titan Key Materials List (QI!)
					o(407691, {	-- Dusty Red Pellets
						["description"] = "Very tiny rocks. Many locations. Use Idol of Ohn'ahra to find them.",
						["coords"] = {
							{ 47.6, 46.2, THE_WAKING_SHORES },
							{ 47.9, 46.3, THE_WAKING_SHORES },
							{ 48.1, 45.4, THE_WAKING_SHORES },
							{ 48.3, 46.1, THE_WAKING_SHORES },
						},
						["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
						["g"] = {
							i(208835),	-- Rose Gold Dust (QI!)
						},
					}),
					o(407692, {	-- Igneous Flux
						["coords"] = {
							{ 21.3, 76.7, THE_WAKING_SHORES },
							{ 22.7, 77.9, THE_WAKING_SHORES },
							{ 23.1, 78.6, THE_WAKING_SHORES },
							{ 23.1, 78.9, THE_WAKING_SHORES },
							{ 23.8, 78.8, THE_WAKING_SHORES },
						},
						["g"] = {
							i(208836),	-- Igneous Flux (QI!)
						},
					}),
				},
			}),
			OneTimeAccountLocked(77577,	-- A Key To Reforg(ing) (Account-Wide Lock)
			q(77831, {	-- A Key To Reforg(ing)
				["qg"] = 210837,	-- Weaponsmith Koref
				["coord"] = { 24.5, 60.7, THE_WAKING_SHORES },
				["cost"] = {
					{"i",208835,50},	-- Rose Gold Dust (QI!)
					{"i",208836, 8},	-- Igneous Flux (QI!)
					{"i",208092, 1},	-- Torch of Pyrreth
				},
				["groups"] = {
					o(408754, {	-- Reforged Titan Key
						["coord"] = { 24.5, 60.7, THE_WAKING_SHORES },
						["g"] = {
							i(208830),	--  Reforged Titan Key (QI!)
						},
					}),
					iensemble(208831),	-- Tyr's Titan Key
				},
			})),

			-- Day 10 --
			q(77865, {	-- A Proper Burial
				["qg"] = 206864,	-- Preservationist Kathos
				["coord"] = { 47.4, 48.1, VALDRAKKEN },
				["sourceQuest"] = 77277,	-- Preservationist Cleared [guess]
				["repeatable"] = true,
				["groups"] = {
					i(208852),	-- Maruuk Burial Banner
					i(209061,	{	-- Ishtaar Rethon's Burial Banner
						["provider"] = { "n", 195543 },	-- Sansok Khan
						["coord"] = { 63.4, 41.3, OHNAHRAN_PLAINS },
						["cost"] = {{"i",208852,1}},	-- Maruuk Burial Banner
					}),
					i(208857, {	-- The Path of Ishtaar Drawing
						["provider"] = { "n", 191391 },	-- Jhara
						["coord"] = { 81.3, 59.3, OHNAHRAN_PLAINS },
						["cost"] = {{"i",209061,1}},	-- Ishtaar Rethon's Burial Banner
					}),
					OneTimeAccountLocked(77578,	-- Banner Stand (Account-Wide)
					o(408912, {	-- Aged Marker [#1]
						["questID"] = 78025,
						["coord"] = { 83.8, 48.4, OHNAHRAN_PLAINS },
					})),
					OneTimeAccountLocked(77578,	-- Banner Stand (Account-Wide)
					o(408914, {	-- Aged Marker [#2]
						["questID"] = 78026,
						["coord"] = { 78.6, 83.3, OHNAHRAN_PLAINS },
					})),
					OneTimeAccountLocked(77578,	-- Banner Stand (Account-Wide)
					o(408915, {	-- Aged Marker [#3]
						["questID"] = 78027,
						["coord"] = { 60.7, 63.4, OHNAHRAN_PLAINS },
					})),
					OneTimeAccountLocked(77578,	-- Banner Stand (Account-Wide)
					o(408916, {	-- Aged Marker [#4]
						["questID"] = 78028,
						["coord"] = { 31.6, 71.6, OHNAHRAN_PLAINS },
					})),
					OneTimeAccountLocked(77578,	-- Banner Stand (Account-Wide)
					o(408918, {	-- Aged Marker [#5]
						["questID"] = 78029,	-- this marker triggered 78037 for me instead -Run
						["coord"] = { 43.3, 48.0, OHNAHRAN_PLAINS },
					})),
					o(408939, {	-- Banner Stand
						["description"] = "In cave.",
						["questID"] = 77578,
						["coord"] = { 42.6, 50.9, OHNAHRAN_PLAINS },
						["cost"] = {{"i",209061,1}},	-- Ishtaar Rethon's Burial Banner
					}),
				},
			}),

			-- Day 11 --
			q(77897, {	-- A Special Book
				["qg"] = 207696,	-- Bobby Carlisle
				["coord"] = { 47.9, 46.8, VALDRAKKEN },
				["repeatable"] = true,
				["groups"] = {
					i(208888),	-- Kirin Tor Contact's Note (QI!)
					-- 1 object with name on WH... 408976
					-- using Type-named HQTs to show the objects available to click
					OneTimeAccountLocked(77579,	-- A Legacy of Secrets (Account-Wide Lock)
					hqt(78050, name(HEADERS.Object, 408976, {	-- Ancient Tome [#1]
						["provider"] = { "o", 408976 },	-- Ancient Tome
						["coord"] = { 32.1, 49.3, KARAZHAN },
					}))),
					OneTimeAccountLocked(77579,	-- A Legacy of Secrets (Account-Wide Lock)
					hqt(78051, name(HEADERS.Object, 408976, {	-- Ancient Tome [#2]
						["provider"] = { "o", 408976 },	-- Ancient Tome
						["coord"] = { 36.6, 37.1, KARAZHAN },
					}))),
					OneTimeAccountLocked(77579,	-- A Legacy of Secrets (Account-Wide Lock)
					hqt(78052, name(HEADERS.Object, 408976, {	-- Ancient Tome [#3]
						["provider"] = { "o", 408976 },	-- Ancient Tome
						["coord"] = { 47.2, 64.4, KARAZHAN },
					}))),
					o(408980, {	-- Tyr's Legacy
						["description"] = "There are three clues inside the Guardian's Library. Pull out your thinking cap to find all three and the final object.",
						["coord"] = { 33.1, 50.9, KARAZHAN },
						["g"] = {
							i(208889),	-- Tyr's Legacy
						},
					}),
				},
			}),
			OneTimeAccountLocked(77579,	-- A Legacy of Secrets (Account-Wide Lock)
			q(77908, {	-- A Legacy of Secrets
				["provider"] = { "i", 208889 },
				["description"] = "Quest takes place in Old Karazhan Raid",
			})),

			-- Day 12 --
			q(77928, {	-- They Are Always Listening
				["qg"] = 207696,	-- Bobby Carlisle
				["coord"] = { 47.9, 46.8, VALDRAKKEN },
				["repeatable"] = true,
				["groups"] = {
					i(208929),	-- Great Places to Visit in Valdrakken (QI!)
					OneTimeAccountLocked(77580,	-- A Complete Inventory (Account-Wide Lock)
					hqt(78053, name(HEADERS.Object, 409012, {	-- Clicking on 'Auction House Bill of Sale' during day 12
						["provider"] = { "o", 409012 },	-- Auction House Bill of Sale
						["coord"] = { 44.1, 60.3, VALDRAKKEN },
					}))),
					OneTimeAccountLocked(77580,	-- A Complete Inventory (Account-Wide Lock)
					hqt(78054, name(HEADERS.Object, 409016, {	-- Clicking on 'Void Storage Receipt' during day 12
						["provider"] = { "o", 409016 },	-- Void Storage Receipt
						["coord"] = { 73.9, 57.4, VALDRAKKEN },
					}))),
					OneTimeAccountLocked(77580,	-- A Complete Inventory (Account-Wide Lock)
					hqt(78055, name(HEADERS.Object, 409017, {	-- Clicking on 'Garden Supply Receipt' during day 12
						["provider"] = { "o", 409017 },	-- Garden Supply Receipt
						["coord"] = { 53.0, 28.4, VALDRAKKEN },
					}))),
					OneTimeAccountLocked(77580,	-- A Complete Inventory (Account-Wide Lock)
					hqt(78056, name(HEADERS.Object, 409018, {	-- Clicking on 'Researcher's Note' during day 12
						["provider"] = { "o", 409018 },	-- Researcher's Note
						["coord"] = { 37.6, 37.1, VALDRAKKEN },
					}))),
					OneTimeAccountLocked(77580,	-- A Complete Inventory (Account-Wide Lock)
					hqt(78057, name(HEADERS.Object, 409019, {	-- Clicking on 'Hastily Scrawled Note' during day 12
						["provider"] = { "o", 409019 },	-- Hastily Scrawled Note
						["coord"] = { 31.6, 70.2, VALDRAKKEN },
					}))),
					OneTimeAccountLocked(77580,	-- A Complete Inventory (Account-Wide Lock)
					hqt(78058, name(HEADERS.Object, 409020, {	-- Clicking on 'Note to Kritha' during day 12 (automatically accepted 'A Complete Inventory' (questID 77934)) / not for me!
						["provider"] = { "o", 409020 },	-- Note to Kritha
						["coord"] = { 46.0, 41.4, VALDRAKKEN },
					}))),
					i(208936),	-- Compiled Report
				},
			}),
			OneTimeAccountLocked(77580,	-- A Complete Inventory (Account-Wide Lock)
			q(77934, {	-- A Complete Inventory
				["provider"] = { "i", 208936 },	-- Compiled Report
				["description"] = "Use your Idol of Ohn'ahra to help find the pages.\n\nQuest begins automatically once all have been found.",
				["sourceQuests"] = {
					78053,	-- Auction House Bill of Sale
					78054,	-- Void Storage Receipt
					78055,	-- Garden Supply Receipt
					78056,	-- Researcher's Note
					78057,	-- Hastily Scrawled Note
					78058,	-- Note to Kritha
				},
				["coord"] = { 44.1, 60.2, VALDRAKKEN },
			})),

			-- Day 13 --
			q(77953, {	-- A Sphere in Danger
				["qg"] = 185562,	-- Tithris
				["coord"] = { 47.5, 46.2, VALDRAKKEN },
				["sourceQuest"] = 77934,	-- A Complete Inventory
				["repeatable"] = true,
				["groups"] = {
					i(208942),	-- Preservationist's Dispatch Three (QI!)
					o(409320, {	-- Buried Object
						["coord"] = { 49.5, 79.7, THALDRASZUS },
						["g"] = {
							OneTimeAccountLocked(77520,	-- A Curious Orb (Account-Wide Lock)
							hqt(78108, name(HEADERS.Item, 208092, {	-- Using torch at (50.1, 80.9 Thaldraszus - in a cave)Eastern Cave
								["provider"] = {"i",208092},	-- Torch of Pyrreth
								["coord"] = { 50.1, 80.9, THALDRASZUS },
							}))),
							i(209795),	--  Piece of the Orb of Rathmus (QI!)
						},
					}),
					o(409329, {	-- Buried Object
						["coord"] = { 45.9, 79.7, THALDRASZUS },
						["g"] = {
							OneTimeAccountLocked(77520,	-- A Curious Orb (Account-Wide Lock)
							hqt(78109, name(HEADERS.Item, 208092, {	-- Using torch at (46.6 77.6 Thaldraszus - in a cave) Western Cave
								["provider"] = {"i",208092},	-- Torch of Pyrreth
								["coord"] = { 46.6, 77.6, THALDRASZUS },
							}))),
							i(209797),	--  Piece of the Orb of Rathmus (QI!)
						},
					}),
					o(409333, {	-- Buried Object
						["coord"] = { 50.1, 78.0, THALDRASZUS },
						["g"] = {
							OneTimeAccountLocked(77520,	-- A Curious Orb (Account-Wide Lock)
							hqt(78111, name(HEADERS.Item, 208092, {	-- Using torch at (48.6 76.3 Thaldraszus - in a cave) Northern Cave
								["provider"] = {"i",208092},	-- Torch of Pyrreth
								["coord"] = { 48.6, 76.3, THALDRASZUS },
							}))),
							i(209799),	--  Piece of the Orb of Rathmus (QI!)
						},
					}),
					i(208944, {	-- A Curious Orb (QI!)
						["cost"] = {
							{"i",209795,1},	--  Piece of the Orb of Rathmus (QI!)
							{"i",209797,1},	--  Piece of the Orb of Rathmus (QI!)
							{"i",209799,1},	--  Piece of the Orb of Rathmus (QI!)
						},
					}),
				},
			}),
			OneTimeAccountLocked(77520,	-- A Curious Orb (Account-Wide Lock)
			q(77954, {	-- A Curious Orb
				["provider"] = { "i", 208944 },
				["coord"] = { 47.4, 46.7, VALDRAKKEN },
			})),

			-- Day 14 --
			q(77957, {	-- A Treacherous Race
				["qg"] = 206864,	-- Preservationist Kathos
				["coord"] = { 47.4, 48.1, VALDRAKKEN },
				["sourceQuest"] = 77954,	-- A Curious Orb
				["repeatable"] = true,
				["groups"] = {
					i(208958),	-- Ancient Tyrhold Artifact Notes (QI!)
					OneTimeAccountLocked(77308,	-- An Ominous Artifact (Account-Wide Lock)
					hqt(77974, {
						["name"] = "First Lock",	-- not sure how else to name this trigger
						["description"] = "Unlock the first lock by using your torch at all 8 Tyrhold staute.",
						["groups"] = {
							OneTimeAccountLocked(77308,	-- An Ominous Artifact (Account-Wide Lock)
							hqt(77964, name(HEADERS.Item, 208092, {	-- Orb #1
								["provider"] = {"i",208092},	-- Torch of Pyrreth
								["coord"] = { 59.9, 61.0, THALDRASZUS },
							}))),
							OneTimeAccountLocked(77308,	-- An Ominous Artifact (Account-Wide Lock)
							hqt(77960, name(HEADERS.Item, 208092, {	-- Orb #2
								["provider"] = {"i",208092},	-- Torch of Pyrreth
								["coord"] = { 57.1, 64.4, THALDRASZUS },
							}))),
							OneTimeAccountLocked(77308,	-- An Ominous Artifact (Account-Wide Lock)
							hqt(77961, name(HEADERS.Item, 208092, {	-- Orb #3
								["provider"] = {"i",208092},	-- Torch of Pyrreth
								["coord"] = { 57.1, 62.9, THALDRASZUS },
							}))),
							OneTimeAccountLocked(77308,	-- An Ominous Artifact (Account-Wide Lock)
							hqt(77962, name(HEADERS.Item, 208092, {	-- Orb #4
								["provider"] = {"i",208092},	-- Torch of Pyrreth
								["coord"] = { 57.9, 61.8, THALDRASZUS },
							}))),
							OneTimeAccountLocked(77308,	-- An Ominous Artifact (Account-Wide Lock)
							hqt(77963, name(HEADERS.Item, 208092, {	-- Orb #5
								["provider"] = {"i",208092},	-- Torch of Pyrreth
								["coord"] = { 57.9, 60.5, THALDRASZUS },
							}))),
							OneTimeAccountLocked(77308,	-- An Ominous Artifact (Account-Wide Lock)
							hqt(77965, name(HEADERS.Item, 208092, {	-- Orb #6
								["provider"] = {"i",208092},	-- Torch of Pyrreth
								["coord"] = { 58.0, 56.9, THALDRASZUS },
							}))),
							OneTimeAccountLocked(77308,	-- An Ominous Artifact (Account-Wide Lock)
							hqt(77966, name(HEADERS.Item, 208092, {	-- Orb #7
								["provider"] = {"i",208092},	-- Torch of Pyrreth
								["coord"] = { 57.9, 56.0, THALDRASZUS },
							}))),
							OneTimeAccountLocked(77308,	-- An Ominous Artifact (Account-Wide Lock)
							hqt(77967, name(HEADERS.Item, 208092, {	-- Orb #8
								["provider"] = {"i",208092},	-- Torch of Pyrreth
								["coord"] = { 59.8, 56.4, THALDRASZUS },
							}))),
						},
					})),
					OneTimeAccountLocked(77308,	-- An Ominous Artifact (Account-Wide Lock)
					hqt(77975, name(HEADERS.Spell, 423792, {	-- Receiving 'Tyr's Favor' buff (spellID 423792)
						["coord"] = { 61.1, 58.7, THALDRASZUS },
					}))),
					OneTimeAccountLocked(77308,	-- An Ominous Artifact (Account-Wide Lock)
					hqt(77973, {
						["name"] = "Third Lock",	-- not sure how else to name this trigger
						["description"] = "Use your idol at each Ring/Room location to find Broken Urn's",
						["groups"] = {
							o(409212, {	-- Broken Urn #1
								["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
								["coord"] = { 59.8, 62.3, THALDRASZUS },
								["description"] = "Room on Ring #1",
								["groups"] = {
									i(208971),	-- Titan Cube Housing
								},
							}),
							o(409211, {	-- Broken Urn #2
								["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
								["coord"] = { 59.9, 54.7, THALDRASZUS },
								["description"] = "Room on Ring #1",
								["groups"] = {
									i(208970),	-- Titan Energy Core
								},
							}),
							o(409200, {	-- Broken Urn #3
								["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
								["coord"] = { 59.7, 54.9, THALDRASZUS },
								["description"] = "Room on Ring #3",
								["groups"] = {
									i(208960),	-- Titan Focusing Crystal
								},
							}),
							o(409214, {	-- Broken Urn #4
								["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
								["coord"] = { 59.7, 62.6, THALDRASZUS },
								["description"] = "Room on Ring #3",
								["groups"] = {
									i(208973),	-- Large Titan Capacitor
								},
							}),
							o(409209, {	-- Broken Urn #5
								["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
								["coord"] = { 62.0, 61.9, THALDRASZUS },
								["description"] = "Room on Ring #5",
								["groups"] = {
									i(208967),	-- Titan Block Key Fragment
								},
							}),
							o(409208, {	-- Broken Urn #6
								["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
								["coord"] = { 61.6, 55.1, THALDRASZUS },
								["description"] = "Room on Ring #5",
								["groups"] = {
									i(208966),	-- Titan Block Key Fragment
								},
							}),
							i(208969, {	-- Titan Energy Cube
								["cost"] = {
									{"i",208971,1},	-- Titan Cube Housing
									{"i",208970,1},	-- Titan Energy Core
								},
							}),
							i(208965, {	-- Titan Block Key
								["cost"] = {
									{"i",208967,1},	-- Titan Block Key Fragment
									{"i",208966,1},	-- Titan Block Key Fragment
								},
							}),
							-- 4 object with name on WH... 409166, 409191, 409192, 409193
							-- using Type-named HQTs to show the objects available to click
							OneTimeAccountLocked(77308,	-- An Ominous Artifact (Account-Wide Lock)
							hqt(77968, name(HEADERS.Object, 409166, {	-- Titan Power Relay [#1]
								["providers"] = {
									{ "i", 208960 },	-- Titan Focusing Crystal
									{ "o", 409166 },	-- Titan Power Relay
								},
								["coord"] = { 59.3, 56.8, THALDRASZUS },
							}))),
							OneTimeAccountLocked(77308,	-- An Ominous Artifact (Account-Wide Lock)
							hqt(77970, name(HEADERS.Object, 409166, {	-- Titan Power Relay [#2]
								["providers"] = {
									{ "i", 208969 },	-- Titan Energy Cube
									{ "o", 409166 },	-- Titan Power Relay
								},
								["coord"] = { 59.5, 60.6, THALDRASZUS },
							}))),
							OneTimeAccountLocked(77308,	-- An Ominous Artifact (Account-Wide Lock)
							hqt(77971, name(HEADERS.Object, 409166, {	-- Titan Power Relay [#3]
								["providers"] = {
									{ "i", 208973 },	-- Large Titan Capacitor
									{ "o", 409166 },	-- Titan Power Relay
								},
								["coord"] = { 61.0, 62.4, THALDRASZUS },
							}))),
							OneTimeAccountLocked(77308,	-- An Ominous Artifact (Account-Wide Lock)
							hqt(77969, name(HEADERS.Object, 409166, {	-- Titan Power Relay [#4]
								["providers"] = {
									{ "i", 208965 },	-- Titan Block Key
									{ "o", 409166 },	-- Titan Power Relay
								},
								["coord"] = { 61.0, 55.0, THALDRASZUS },
							}))),
						},
					})),
				},
			}),
			OneTimeAccountLocked(77308,	-- An Ominous Artifact (Account-Wide Lock)
			q(77977, {	-- An Ominous Artifact
				["provider"] = { "o", 411936 },	-- Orb Location
				["coord"] = { 60.2, 58.7, THALDRASZUS },
				["sourceQuests"] = {
					77974,	-- Lock [#1]
					77975,	-- Lock [#2]
					77973,	-- Lock [#3]
				},
				["groups"] = {
					n(210674, {	-- Tithris
						i(209555),	--  Orb of Rathmus (QI!)
					}),
					o(409120, {	-- Cache of Cosmic Mysteries
						["coord"] = { 60.2, 58.7, THALDRASZUS },
						["g"] = {
							i(208980),	--  Cache of Cosmic Curiosities (QI!)
						},
					}),
				},
			})),
		}),
		n(COMMUNITY_CLUES_HEADER, {
			header(HEADERS.Spell, 424082, {
				o(408060, {	-- The First Clue
					["coord"] = { 32.1, 61.9, VALDRAKKEN },
				}),
				o(408076, {	-- The Second Clue
					["coord"] = { 81.6, 47.6, VALDRAKKEN },
					["provider"] = { "i", 208092 },	-- Torch of Pyrreth
				}),
				o(408079, {	-- The Third Clue
					["coord"] = { 57.6, 21.3, NORTHERN_STRANGLETHORN },
					["provider"] = { "i", 208092 },	-- Torch of Pyrreth
				}),
				o(408080, {	-- A Partial Fourth Clue
					["maps"] = { ZULGURUB },
					["provider"] = { "i", 208092 },	-- Torch of Pyrreth
				}),
				o(408081, {	-- A Partial Fourth Clue
					["maps"] = { ZULGURUB },
					["provider"] = { "i", 208092 },	-- Torch of Pyrreth
				}),
				o(408082, {	-- A Partial Fourth Clue
					["maps"] = { ZULGURUB },
					["provider"] = { "i", 208092 },	-- Torch of Pyrreth
				}),
				o(408083, {	-- A Partial Fourth Clue
					["maps"] = { ZULGURUB },
					["provider"] = { "i", 208092 },	-- Torch of Pyrreth
				}),
				n(210398, {	-- Enigma Ward
					["description"] = "Requries 3 people with Torch of Pyrreth to summon.",
					["questID"] = 78098,
					["coord"] = { 58.9, 78.1, THE_CAPE_OF_STRANGLETHORN },
					["provider"] = { "i", 208092 },	-- Torch of Pyrreth
					["g"] = {
						i(208984),	-- First Booster Part
					},
				}),
				-- leading clues https://www.wowhead.com/item=209781/second-booster-part#comments:id=5680742:reply=1637897
				o(409914, {	-- Mimiron's Booster Part
					["questID"] = 78099,
					["description"] = "Takes 4 people. Someone to control the Water Elemental, 3 people to Envelope",
					["coord"] = { 50.2, 25.7, FELWOOD },
					["g"] = {
						i(209781),	-- Second Booster Part
					},
				}),
				-- leading clues ... ?
				o(408860, {	-- Mimiron's Booster Part
					["questID"] = 78100,
					["description"] = "Take out the cannons so you can loot.",
					["coord"] = { 54.8, 52.1, BLASTED_LANDS },
					["g"] = {
						i(209055),	-- Third Booster Part
					},
				}),
				i(210022, {	-- Mimiron's Jumpjets (MOUNT!)
					["description"] = "Combine the first, second, and third boosters near an Empowered\nArcane Forge to reforge and power Mimiron's Jumpjets.\n",
					["cost"] = {
						{"i",208984,1},	-- First Booster Part
						{"i",209781,1},	-- Second Booster Part
						{"i",209055,1},	-- Third Booster Part
					},
				}),
			}),
		}),
		n(VENDORS, {
			n(206864, {	-- Preservationist Kathos
				["coord"] = { 47.3, 48.2, VALDRAKKEN },
				["g"] = {
					i(229375, {	-- Neural Enlarger
						["timeline"] = { ADDED_11_0_5 },
					}),
				},
			}),
		}),
	},
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
	n(SECRETS_OF_AZEROTH_HEADER, {
		q(77204),	-- placed 'Golden Chalice'
		q(76995),	-- looted Crazed Looter first time (NPC 208182)
		q(77687),	-- completed 'A Secretive Contact' (questID 77165)
		q(78202),	-- completed 'Unfinished Thinking Cap' (questID 77237) (account-wide completion)
		q(76505),	-- completed 'The Tricked-Out Thinking Cap' (questID 76504)
		-- q(77513),	-- completed 'The Tricked-Out Thinking Cap' (questID 76504) (account-wide completion)
		-- q(77521),	-- completed 'Preservationist Cleared' (questID 77277) (account-wide completion)
		q(77688),	-- accepted 'Securing an Artifact' (questID 77281)
		q(78201),	-- completed 'Artifact Secured' (questID 77282) (account-wide completion)
		-- q(77522),	-- completed 'The Torch of Pyrreth' (questID 77263) (account-wide completion)
		-- q(77523),	-- completed 'A Knowledgeable Descent' (questID 77286) (account-wide completion)
		q(77689),	-- completed 'Idol Searching' (questID 77303)
		q(77306),	-- completed 'An Idol in Hand' (questID 77304) / finished 'Tools of the Trade' (achievementID 18645)
		q(78200),	-- completed 'An Idol in Hand' (questID 77304) / finished 'Tools of the Trade' (achievementID 18645) (account-wide completion)
		-- q(77524),	-- completed 'Using the Idol' (questID 76456) (account-wide completion)
		q(78008),	-- completed 'A Proper Burial' (questID 77865)
		q(77854),	-- Upon completion of Into the Sands (questID 76509) (account-wide completion)
		-- q(77421),	-- accepted 'Out of the Sands' (questID 77305)
		-- q(76508),	-- Upon completion of Out of the Sands (questID 77305) (account-wide completion)
		-- q(77576),	-- Upon completion of A Titanic Mold (QuestID 77822) (account-wide completion)
		-- q(77577),	-- Upon completion of A Key To Reforging (QuestID 77831) (account-wide completion)
		q(77893),	-- Upon completion of this quest and receiving the QI
		q(78037),	-- Channeling 'Torch of Pyrreth' to Aged Marker [#5] (questID 78029)
		q(77307),	-- Community Rumors (Achievement 18643) (account-wide completion)
		q(78152),	-- Community Rumor Mill (Achievement 18644)
		q(78973),	-- Community Rumor Mill (Achievement 18644) (account-wide completion)
		q(77895),	-- Completed at same time as receiving (itemdID 208888)
		-- q(77579),	-- Upon completion of (QuestID 77908) (account-wide completion)
		q(77916),	-- Upon completion of (QuestID 77928 and getting the QI!)
		-- q(77580),	-- Upon completion of (QuestID 77934) (account-wide completion)
		q(77951),	-- Upon completion of (QuestID 77953)
		-- q(77520),	-- Upon completion of (QuestID 77954) (account-wide completion)
		q(77959),	-- Upon completion of (QuestID 77957)
		-- q(77308),	-- Upon completion of (QuestID 77977) (account-wide completion)
	}),
})));
