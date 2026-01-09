-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

root(ROOTS.WorldEvents, applyclassicphase(MOP_PHASE_LANDFALL, n(BRAWLERS_GUILD, {
	["timeline"] = {
		ADDED_5_1_0, REMOVED_6_0_2,	-- Season 1
		ADDED_6_0_3_LAUNCH, REMOVED_7_0_3_LAUNCH,	-- Season 2
		ADDED_7_1_5, REMOVED_8_0_1_LAUNCH,	-- Season 3
		ADDED_8_1_5, REMOVED_9_0_2_LAUNCH,	-- Season 4
		ADDED_11_2_7,	-- Season 5
	},
	["maps"] = {
		DEEPRUN_TRAM,
		DEEPRUN_TRAM_BIZMOS_BRAWLPUB,
		BRAWLGAR_ARENA,
	},
	-- #if MOP
	["lvl"] = 90,
	-- #elseif WOD
	["lvl"] = 100,
	-- #elseif LEGION
	["lvl"] = 110,
	-- #elseif BFA
	["lvl"] = 120,
	-- #endif
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(7944, {		-- Bottle Service (Season 1 & 2)
				["timeline"] = { ADDED_5_1_0, REMOVED_7_0_3, ADDED_11_2_7 },
			}),
			ach(13191, {	-- Brawler for Azeroth (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5, REMOVED_9_1_5 },
				["groups"] = { title(209) },	-- Brawler <Name>
			}),
			ach(13192, {	-- Brawler for Azeroth (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5, REMOVED_9_1_5 },
				["groups"] = { title(209) },	-- Brawler <Name>
			}),
			ach(7941, {		-- Brawlin' and Shot Callin' (Season 1) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
				["groups"] = { title(209) },	-- Brawler <Name>
			}),
			ach(7942, {		-- Brawlin' and Shot Callin' (Season 1) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
				["groups"] = { title(209) },	-- Brawler <Name>
			}),
			ach(9170, {		-- Brawlin' and Shot Callin' (Season 2) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
				["groups"] = { title(209) },	-- Brawler <Name>
			}),
			ach(9174, {		-- Brawlin' and Shot Callin' (Season 2) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
				["groups"] = { title(209) },	-- Brawler <Name>
			}),
			applyclassicphase(MOP_PHASE_ESCALATION, ach(8339, {		-- Collect Your Deck (Season 1 & 2) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
			})),
			applyclassicphase(MOP_PHASE_ESCALATION, ach(8342, {		-- Collect Your Deck (Season 1 & 2) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
			})),
			applyclassicphase(MOP_PHASE_ESCALATION, ach(8340, {		-- Deck Your Collection (Season 1) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_6_0_2 },
				["groups"] = {
					i(98543, {	-- Wraps of the Blood-Soaked Brawler
						["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
					}),
				},
			})),
			applyclassicphase(MOP_PHASE_ESCALATION, ach(8343, {		-- Deck Your Collection (Season 1) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_6_0_2 },
				["groups"] = {
					i(98543, {	-- Wraps of the Blood-Soaked Brawler
						["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
					}),
				},
			})),
			applyclassicphase(MOP_PHASE_ESCALATION, ach(9176, {		-- Deck Your Collection (Season 2) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
				["groups"] = {
					i(98543, {	-- Wraps of the Blood-Soaked Brawler
						["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
					}),
				},
			})),
			applyclassicphase(MOP_PHASE_ESCALATION, ach(9177, {		-- Deck Your Collection (Season 2) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_7_0_3 },
				["groups"] = {
					i(98543, {	-- Wraps of the Blood-Soaked Brawler
						["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
					}),
				},
			})),
			ach(11570, {	-- Educated Guesser
				["timeline"] = { ADDED_7_1_5, REMOVED_8_0_1 },
			}),
			ach(7945, {		-- Haters Gonna Hate (Season 2)
				["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
			}),
			applyclassicphase(MOP_PHASE_ESCALATION, ach(8335, {		-- Having a Brawl (Season 1) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_6_0_2 },
			})),
			applyclassicphase(MOP_PHASE_ESCALATION, ach(8337, {		-- Having a Brawl (Season 1) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_6_0_2 },
			})),
			ach(11572, {	-- I Am Thrall's Complete Lack Of Surprise (Season 3)
				["timeline"] = { ADDED_7_1_5, REMOVED_8_0_1, ADDED_11_2_7 },
			}),
			ach(13194, {	-- I Am Thrall's Complete Lack Of Surprise
				["timeline"] = { ADDED_7_1_5, REMOVED_8_1_5, ADDED_11_2_7 },
			}),
			ach(7943, {		-- I'm Your Number One Fan (Season 1 & 2)
				["timeline"] = { ADDED_5_1_0, REMOVED_7_0_3 },
			}),
			applyclassicphase(MOP_PHASE_ESCALATION, ach(8336, {		-- I've Got the Biggest Brawls of Them All (Season 1) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_6_0_2 },
			})),
			applyclassicphase(MOP_PHASE_ESCALATION, ach(8338, {		-- I've Got the Biggest Brawls of Them All (Season 1) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_6_0_2 },
			})),
			ach(11565, {	-- King of the Guild (Season 3) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_7_1_5, REMOVED_8_0_1 },
				["groups"] = { title(209) },	-- Brawler <Name>
			}),
			ach(11566, {	-- King of the Guild (Season 3) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_7_1_5, REMOVED_8_0_1 },
			}),
			-- Wouter NOTE: idk wth Blizzard is doing but they locked people out of queuing 1 after obtaining Rank 8 (like 1 day after patch) so this isn't available yet,
			-- 				probably because Disruptron was bugged or whatever
			applyclassicphase(MOP_PHASE_ESCALATION, ach(7946, {		-- Now You're Just Showing Off (Season 1) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
			})),
			applyclassicphase(MOP_PHASE_ESCALATION, ach(8022, {		-- Now You're Just Showing Off (Season 1) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
			})),
			ach(9171, {		-- Now You're Just Showing Off (Season 2) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			ach(9175, {		-- Now You're Just Showing Off (Season 2) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			ach(7949, {		-- Rabble Rabble Rabble (Season 2) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
			}),
			ach(7950, {		-- Rabble Rabble Rabble (Season 2) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
			}),
			ach(11573, {	-- Rumble Club
				["timeline"] = { ADDED_7_1_5, REMOVED_9_1_5 },
			}),
			ach(7947, {		-- The First Rule of Brawler's Guild (Season 1 or 2) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_7_0_3 },
			}),
			ach(7948, {		-- The First Rule of Brawler's Guild (Season 1 or 2) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_7_0_3 },
			}),
			ach(11558, {	-- The First Rule of Brawler's Guild (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
			}),
			ach(11559, {	-- The First Rule of Brawler's Guild (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
			}),
			ach(7940, {		-- The Second Rule of Brawler's Guild (Season 1) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
				-- #if MOP
				["groups"] = { i(93195) },	-- Brawler's Pass
				-- #endif
			}),
			ach(7939, {		-- The Second Rule of Brawler's Guild (Season 1) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
				-- #if MOP
				["groups"] = { i(93195) },	-- Brawler's Pass
				-- #endif
			}),
			ach(9169, {		-- The Second Rule of Brawler's Guild (Season 2) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
				-- #if WOD
				["groups"] = { i(93195) },	-- Brawler's Pass
				-- #endif
			}),
			ach(9173, {		-- The Second Rule of Brawler's Guild (Season 2) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
				-- #if WOD
				["groups"] = { i(93195) },	-- Brawler's Pass
				-- #endif
			}),
			ach(11563, {	-- The Second Rule of Brawler's Guild (Season 3) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_7_1_5, REMOVED_8_0_1 },
				-- #if LEGION
				["groups"] = { i(93195) },	-- Brawler's Pass
				-- #endif
			}),
			ach(11564, {	-- The Second Rule of Brawler's Guild (Season 3) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_7_1_5, REMOVED_8_0_1 },
				-- #if LEGION
				["groups"] = { i(93195) },	-- Brawler's Pass
				-- #endif
			}),
			ach(13189, {	-- The Second Rule of Brawler's Guild (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH },
				["groups"] = { i(93195) },	-- Brawler's Pass
			}),
			ach(13190, {	-- The Second Rule of Brawler's Guild (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH },
				["groups"] = { i(93195) },	-- Brawler's Pass
			}),
			ach(7937, {		-- You Are Not Your $#*@! Legplates (Season 1) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
			}),
			ach(8020, {		-- You Are Not Your $#*@! Legplates (Season 1) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
			}),
			ach(9168, {		-- You Are Not Your $#*@! Legplates (Season 2) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			ach(9172, {		-- You Are Not Your $#*@! Legplates (Season 2) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			ach(11560, {	-- You Are Not Your $#*@! Legplates (Season 3) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_7_1_5, REMOVED_8_0_1 },
			}),
			ach(11561, {	-- You Are Not Your $#*@! Legplates (Season 3) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_7_1_5, REMOVED_8_0_1 },
			}),
			ach(13186, {	-- You Are Not Your $#*@! Legplates (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH },
			}),
			ach(13188, {	-- You Are Not Your $#*@! Legplates (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH },
			}),
			ach(11567, {	-- You Are Not The Contents Of Your Wallet
				["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
			}),
		}),
		-- Season 5
		n(ACHIEVEMENTS, sharedData({
			["timeline"] = { ADDED_11_2_7 },
		},{
			ach(61466, {	-- The Best There Is
				["crs"] = {
					70751,	-- Card Trader Ami
					70752,	-- Card Trader Leila
				},
			}),
			ach(61413, {	-- The First Rule of Brawler's Guild
				["races"] = ALLIANCE_ONLY,
			}),
			ach(61414, {	-- The First Rule of Brawler's Guild
				["races"] = HORDE_ONLY,
			}),
		})),
		-- Season 5 - Challenges
		n(ACHIEVEMENTS, sharedData({
			["crs"] = {
				254940,	-- Challenge Broker Senna
				253381,	-- Challenge Broker Guo
			},
			["timeline"] = { ADDED_11_2_7 },
		},{
			ach(61429, {	-- Brawl Star
				["groups"] = { title(666) },	-- Brawl Star %s
			}),
			ach(61421),	-- A Prime Ordeal
			ach(61422),	-- Audience Participation
			ach(61419),	-- Brawler's Chilled
			ach(61424),	-- Brawlzilla
			ach(61426),	-- Bare Knuckle Brawl
			ach(61423),	-- Featherweight Brawler
			ach(61425),	-- Hot Footed
			ach(61420),	-- Let Me Solo It
		})),
		-- #if BEFORE LEGION
		n(BOSSES, {
			n(67262, {	-- Bruce
				applyclassicphase(MOP_PHASE_ESCALATION, i(97983, {	-- Modified Chomping Apparatus
					["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3_LAUNCH },
				})),
			}),
		}),
		-- #endif
		n(FACTIONS, {
			faction(FACTION_BRAWLPUB_SEASON_1, {	-- Bizmo's Brawlpub (Season 1) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
				-- #if BEFORE 5.5.3
				["description"] = "Before Phase 4, you can only reach Rank 8.",
				["minReputation"] = { FACTION_BRAWLPUB_SEASON_1, 8 },	-- Rank 8
				-- #endif
			}),
			faction(FACTION_BRAWLPUB_SEASON_2, {	-- Bizmo's Brawlpub (Season 2) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_7_0_3_LAUNCH },
			}),
			faction(FACTION_BRAWLPUB_SEASON_3, {	-- Bizmo's Brawlpub (Season 3) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_7_1_5, REMOVED_8_0_1_LAUNCH },
			}),
			faction(FACTION_BRAWLPUB_SEASON_4, {	-- Bizmo's Brawlpub (Season 4) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH },
			}),
			faction(FACTION_BRAWLPUB_SEASON_5, {	-- Bizmo's Brawlpub (Season 5) (Alliance)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_11_2_7 },
			}),
			faction(FACTION_BRAWLGAR_SEASON_1, {	-- Brawl'gar Arena (Season 1) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
				-- #if BEFORE 5.5.3
				["description"] = "Before Phase 4, you can only reach Rank 8.",
				["minReputation"] = { FACTION_BRAWLGAR_SEASON_1, 8 },	-- Rank 8
				-- #endif
			}),
			faction(FACTION_BRAWLGAR_SEASON_2, {	-- Brawl'gar Arena (Season 2) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_7_0_3_LAUNCH },
			}),
			faction(FACTION_BRAWLGAR_SEASON_3, {	-- Brawl'gar Arena (Season 3) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_7_1_5, REMOVED_8_0_1_LAUNCH },
			}),
			faction(FACTION_BRAWLGAR_SEASON_4, {	-- Brawl'gar Arena (Season 4) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH },
			}),
			faction(FACTION_BRAWLGAR_SEASON_5, {	-- Brawl'gar Arena (Season 5) (Horde)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_11_2_7 },
			}),
		}),
		n(QUESTS, appendGroups(
			-- MOP
			applyclassicphase(MOP_PHASE_ESCALATION, sharedData({ ["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3_LAUNCH } }, {
				q(32836, {	-- A Knockoff Grumplefloot
					["provider"] = { "i", 97978 },	-- Knockoff Grumplefloot
				}),
				q(32837, {	-- Grandpa Grumplefloot
					["aqd"] = {
						["qg"] = 70752,	-- Card Trader Leila
						["coord"] = { 52.3, 25.2, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					},
					["hqd"] = {
						["qg"] = 70751,	-- Card Trader Ami
						["coord"] = { 60.4, 77.5, BRAWLGAR_ARENA },
					},
					["groups"] = {
						objective(1, {	-- 0/1 Grandpa Grumplefloot defeated
							-- Wouter TODO: verify NPC ID - ID for same NPC 70736 is also used in Brawler's Guild
							["provider"] = { "n", 70689 },	-- Grandpa Grumplefloot
						}),
						i(98079),	-- Floot-Tooter's Tunic
						i(98099),	-- Giant Sack of Coins
					},
					["sourceQuest"] = 32836,	-- A Knockoff Grumplefloot
				}),
				q(32838, {	-- A Tale of Romance and Chivalry
					["provider"] = { "i", 97979 },	-- The Bear and the Lady Fair
				}),
				q(32839, {	-- The Bear and the Lady Fair
					["aqd"] = {
						["qg"] = 70752,	-- Card Trader Leila
						["coord"] = { 52.3, 25.2, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					},
					["hqd"] = {
						["qg"] = 70751,	-- Card Trader Ami
						["coord"] = { 60.4, 77.5, BRAWLGAR_ARENA },
					},
					["groups"] = {
						objective(1, {	-- 0/1 Argh defeated
							["provider"] = { "n", 70748 },	-- Argh
						}),
						i(98080),	-- Gorgeous Blouse
						i(98102),	-- Overflowing Sack of Coins
					},
					["sourceQuest"] = 32838,	-- A Tale of Romance and Chivalry
				}),
				q(32840, {	-- Boom Boom's Fuse
					["provider"] = { "i", 97980 },	-- Hozen-Fur Fuse
				}),
				q(32841, {	-- Master Boom Boom
					["aqd"] = {
						["qg"] = 70752,	-- Card Trader Leila
						["coord"] = { 52.3, 25.2, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					},
					["hqd"] = {
						["qg"] = 70751,	-- Card Trader Ami
						["coord"] = { 60.4, 77.5, BRAWLGAR_ARENA },
					},
					["groups"] = {
						objective(1, {	-- 0/1 Master Boom Boom defeated
							["provider"] = { "n", 70677 },	-- Master Boom Boom
						}),
						i(98081),	-- The Boomshirt
						i(98099),	-- Giant Sack of Coins
					},
					["sourceQuest"] = 32840,	-- Boom Boom's Fuse
				}),
				q(32842, {	-- Teeth Like Swords
					["provider"] = { "i", 97981 },	-- Impeccably Sharp Tooth
				}),
				q(32843, {	-- Razorgrin
					["aqd"] = {
						["qg"] = 70752,	-- Card Trader Leila
						["coord"] = { 52.3, 25.2, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					},
					["hqd"] = {
						["qg"] = 70751,	-- Card Trader Ami
						["coord"] = { 60.4, 77.5, BRAWLGAR_ARENA },
					},
					["groups"] = {
						objective(1, {	-- 0/1 Razorgrin defeated
							["provider"] = { "n", 71085 },	-- Razorgrin
						}),
						i(98083),	-- Sharkskin Tunic
						i(98100),	-- Humongous Sack of Coins
					},
					["sourceQuest"] = 32842,	-- Teeth Like Swords
				}),
				q(32844, {	-- Secret of the Ooze
					["provider"] = { "i", 97982 },	-- Vial of Reddish Ooze
				}),
				q(32845, {	-- Splat
					["aqd"] = {
						["qg"] = 70752,	-- Card Trader Leila
						["coord"] = { 52.3, 25.2, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					},
					["hqd"] = {
						["qg"] = 70751,	-- Card Trader Ami
						["coord"] = { 60.4, 77.5, BRAWLGAR_ARENA },
					},
					["groups"] = {
						objective(1, {	-- 0/1 Splat defeated
							-- Wouter TODO: verify NPC ID - ID for same NPC 70736 is also used in Brawler's Guild
							["provider"] = { "n", 70737 },	-- Splat
						}),
						i(98084),	-- Ooze-Soaked Shirt
						i(98100),	-- Humongous Sack of Coins
					},
					["sourceQuest"] = 32844,	-- Secret of the Ooze
				}),
				q(32846, {	-- Modified Chomping Apparatus
					["provider"] = { "i", 97983 },	-- Modified Chomping Apparatus
				}),
				q(32847, {	-- Mecha-Bruce
					["aqd"] = {
						["qg"] = 70752,	-- Card Trader Leila
						["coord"] = { 52.3, 25.2, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					},
					["hqd"] = {
						["qg"] = 70751,	-- Card Trader Ami
						["coord"] = { 60.4, 77.5, BRAWLGAR_ARENA },
					},
					["groups"] = {
						objective(1, {	-- 0/1 Mecha-Bruce defeated
							["provider"] = { "n", 71081 },	-- Mecha-Bruce
						}),
						i(98085),	-- Brucehide Jersey
						i(98101),	-- Enormous Sack of Coins
					},
					["sourceQuest"] = 32846,	-- Modified Chomping Apparatus
				}),
				q(32848, {	-- Frost-Tipped Eggshell
					["provider"] = { "i", 97984 },	-- Frost-Tipped Eggshell
				}),
				q(32849, {	-- Dippy and Doopy
					["aqd"] = {
						["qg"] = 70752,	-- Card Trader Leila
						["coord"] = { 52.3, 25.2, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					},
					["hqd"] = {
						["qg"] = 70751,	-- Card Trader Ami
						["coord"] = { 60.4, 77.5, BRAWLGAR_ARENA },
					},
					["groups"] = {
						objective(1, {	-- 0/1 Dippy & Doopy defeated
							["providers"] = {
								{ "n", 70647 },	-- Dippy
								{ "n", 70648 },	-- Doopy
							},
						}),
						i(98086),	-- Tuxedo-Like Shirt
						i(98100),	-- Humongous Sack of Coins
					},
					["sourceQuest"] = 32848,	-- Frost-Tipped Eggshell
				}),
				q(32850, {	-- Last Year's Model
					["provider"] = { "i", 97985 },	-- Dusty Old Robot
				}),
				q(32851, {	-- Blingtron 3000
					["aqd"] = {
						["qg"] = 70752,	-- Card Trader Leila
						["coord"] = { 52.3, 25.2, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					},
					["hqd"] = {
						["qg"] = 70751,	-- Card Trader Ami
						["coord"] = { 60.4, 77.5, BRAWLGAR_ARENA },
					},
					["groups"] = {
						objective(1, {	-- 0/1 Blingtron 3000 defeated
							["provider"] = { "n", 70740 },	-- Blingtron 3000
						}),
						i(98091),	-- Last Season's Shirt
						i(98101),	-- Enormous Sack of Coins
					},
					["sourceQuest"] = 32850,	-- Last Year's Model
				}),
				q(32852, {	-- The Digmaster's Earthblade
					["provider"] = { "i", 97986 },	-- Digmaster's Earthblade
				}),
				q(32853, {	-- Mingus Diggs
					["aqd"] = {
						["qg"] = 70752,	-- Card Trader Leila
						["coord"] = { 52.3, 25.2, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					},
					["hqd"] = {
						["qg"] = 70751,	-- Card Trader Ami
						["coord"] = { 60.4, 77.5, BRAWLGAR_ARENA },
					},
					["groups"] = {
						objective(1, {	-- 0/1 Mingus Diggs defeated
							["provider"] = { "n", 70616 },	-- Mingus Diggs
						}),
						i(98092),	-- Digmaster's Bodysleeve
						i(98103),	-- Gigantic Sack of Coins
					},
					["sourceQuest"] = 32852,	-- The Digmaster's Earthblade
				}),
				q(32854, {	-- Well-Worn Blindfold
					["provider"] = { "i", 97987 },	-- Well-Worn Blindfold
				}),
				q(32855, {	-- The Blind Hero
					["aqd"] = {
						["qg"] = 70752,	-- Card Trader Leila
						["coord"] = { 52.3, 25.2, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					},
					["hqd"] = {
						["qg"] = 70751,	-- Card Trader Ami
						["coord"] = { 60.4, 77.5, BRAWLGAR_ARENA },
					},
					["groups"] = {
						objective(1, {	-- 0/1 Blind Hero defeated
							["provider"] = { "n", 70794 },	-- Blind Hero
						}),
						i(98093),	-- Sightless Mantle
						i(98103),	-- Gigantic Sack of Coins
					},
					["sourceQuest"] = 32854,	-- Well-Worn Blindfold
				}),
				q(32856, {	-- Paper-Covered Rock
					["provider"] = { "i", 97988 },	-- Paper-Covered Rock
				}),
				q(32857, {	-- Ro-Shambo
					["aqd"] = {
						["qg"] = 70752,	-- Card Trader Leila
						["coord"] = { 52.3, 25.2, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					},
					["hqd"] = {
						["qg"] = 70751,	-- Card Trader Ami
						["coord"] = { 60.4, 77.5, BRAWLGAR_ARENA },
					},
					["groups"] = {
						objective(1, {	-- 0/1 Ro-Shambo defeated
							["provider"] = { "n", 70749 },	-- Ro-Shambo
						}),
						i(98087),	-- Paper Shirt
						i(98102),	-- Overflowing Sack of Coins
					},
					["sourceQuest"] = 32856,	-- Paper-Covered Rock
				}),
				q(32858, {	-- Raptorhide Boxing Gloves
					["provider"] = { "i", 97990 },	-- Raptorhide Boxing Gloves
				}),
				q(32859, {	-- Ty'thar
					["aqd"] = {
						["qg"] = 70752,	-- Card Trader Leila
						["coord"] = { 52.3, 25.2, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					},
					["hqd"] = {
						["qg"] = 70751,	-- Card Trader Ami
						["coord"] = { 60.4, 77.5, BRAWLGAR_ARENA },
					},
					["groups"] = {
						objective(1, {	-- 0/1 Ty'thar defeated
							["provider"] = { "n", 70666 },	-- Ty'thar
						}),
						i(98082),	-- Undisputed Champion's Shirt
						i(98099),	-- Giant Sack of Coins
					},
					["sourceQuest"] = 32858,	-- Raptorhide Boxing Gloves
				}),
			})),
			-- WOD
			sharedData({ ["timeline"] = { ADDED_6_0_2, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 }, }, {
				q(36702, {	-- Meatball
					["description"] = "Reach Rank 5 in the arena.",
					["qg"] = 86272,	-- Meatball
					["coords"] = {
						{ 56.7, 77.3, BRAWLGAR_ARENA },
						{ 61.4, 27.0, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					},
					["groups"] = { follower(203) },	-- Meatball
				}),
			}),
			-- BFA
			sharedData({ ["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH }, ["races"] = ALLIANCE_ONLY }, {
				q(55002, {	-- Murder at the Brawlpub
					["description"] = "This quest can be accepted after you successfully complete any (or your first) Brawl.",
					["qg"] = 68363,	-- Quackenbush <Bizmo's Brawlpub Quartermaster>
					["coord"] = { 54.3, 25.2, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
				}),
				q(55003, {	-- Put Up Your Dukes
					["sourceQuest"] = 55002,	-- Murder at the Brawlpub
					["qg"] = 150313,	-- Commander Daalo
					["coord"] = { 72.7, 68.4, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
				}),
				q(55004, {	-- Undercover Agent: Ann Dennyson
					["sourceQuest"] = 55003,	-- Put Up Your Dukes
					["qg"] = 150313,	-- Commander Daalo
					["coord"] = { 72.7, 68.4, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
				}),
				q(55005, {	-- The Financial Participation Incentive
					["sourceQuest"] = 55004,	-- Undercover Agent: Ann Dennyson
					["qg"] = 150314,	-- Ann Dennyson
					["coord"] = { 69.7, 36.7, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					["cost"] = { { "i", 143762, 1 }, },	-- High Roller's Contract
				}),
				q(55006, {	-- A Favor for Your Old Chum Winifred
					["sourceQuest"] = 55005,	-- The Financial Participation Incentive
					["qg"] = 68365,	-- Lord Winifred Browne <Prediction Incentives>
					["coord"] = { 63.2, 40.9, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
				}),
				q(55007, {	-- Lord Browne's Debts
					["sourceQuest"] = 55006,	-- A Favor for Your Old Chum Winifred
					["qg"] = 68365,	-- Lord Winifred Browne <Prediction Incentives>
					["coord"] = { 63.3, 40.6, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					["cost"] = { { "i", 164935, 1 }, },	-- Challenge Card: Lord Sylysthrel
					["groups"] = {
						i(164941),	-- Huge Pile of Legitimately-Earned Brawler's Gold (QI!)
					},
				}),
				q(55008, {	-- Evidence Packet: Lord Winifred Browne
					["sourceQuest"] = 55007,	-- Lord Browne's Debts
					["qg"] = 150314,	-- Ann Dennyson
					["coord"] = { 68.0, 36.6, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					["groups"] = {
						i(167034),	-- Evidence Packet: Lord Winifred Browne (QI!)
					},
				}),
				q(55009, {	-- Undercover Agent: Saralara Fizzlesprang
					["sourceQuest"] = 55008,	-- Evidence Packet: Lord Winifred Browne
					["qg"] = 150313,	-- Commander Daalo
					["coord"] = { 72.7, 68.4, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
				}),
				q(55010, {	-- Soul Splinters
					["description"] = "You can save previously earned Brawler's Purses and open them while on this quest - Each Brawler's Purse gives 10 - 12 Soul Splinters, so you will need 9 - 10 Brawler's Purses to complete this quest.",
					["sourceQuest"] = 55009,	-- Undercover Agent: Saralara Fizzlesprang
					["qg"] = 150317,	-- Shadowmaster O'Flannerty
					["coord"] = { 68.0, 24.8, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					["groups"] = { i(164928) },	-- Soul Splinter (QI!)
				}),
				q(55011, {	-- Super Soul Splinters
					["description"] = "You can save previously earned Rumbler's Purses and open them while on this quest - Each Rumbler's Purse gives 1 Super Soul Splinter, so you will need 3 Rumbler's Purses to complete this quest.",
					["sourceQuest"] = 55010,	-- Soul Splinters
					["qg"] = 150317,	-- Shadowmaster O'Flannerty
					["coord"] = { 68.0, 24.8, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					["groups"] = { i(164929) },	-- Super Soul Splinter (QI!)
				}),
				q(55012, {	-- Cause for Concern
					["sourceQuest"] = 55011,	-- Super Soul Splinters
				}),
				q(55013, {	-- The Precious 13-Tooth Gogglegear
					["sourceQuest"] = 55012,	-- Cause for Concern
					["qg"] = 150315,	-- Saralara Fizzlesprang
					["coord"] = { 44.4, 34.6, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					["cost"] = { { "i", 94178, 1 }, },	-- Challenge Card: G.G. Engineering
					["groups"] = { i(164937) },	-- 13-Tooth Gogglegear (QI!)
				}),
				q(55014, {	-- The Fizzlesprang Goggle Experiment
					["sourceQuest"] = 55013,	-- The Precious 13-Tooth Gogglegear
					["qg"] = 150315,	-- Saralara Fizzlesprang
					["coord"] = { 44.4, 34.6, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					["groups"] = { i(167033) },	-- Saralara's Goggles (QI!)
				}),
				q(55015, {	-- Evidence Packet: Shadowmaster O'Flannerty
					["sourceQuest"] = 55014,	-- The Fizzlesprang Goggle Experiment
					["qg"] = 150315,	-- Saralara Fizzlesprang
					["coord"] = { 44.4, 34.6, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					["groups"] = { i(167035) },	-- Evidence Packet: Shadowmaster O'Flannerty (QI!)
				}),
				q(55016, {	-- Undercover Agent: Silent Jussho
					["sourceQuest"] = 55015,	-- Evidence Packet: Shadowmaster O'Flannerty
					["qg"] = 150313,	-- Commander Daalo
					["coord"] = { 72.7, 68.4, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					["cost"] = { { "i", 143759, 1 }, },	-- VIP Room Rental Form
				}),
				q(55017, {	-- Flaunt It If You Got It
					["sourceQuest"] = 55016,	-- Undercover Agent: Silent Jussho
					["qg"] = 70722,	-- Grant Lazarby
					["coord"] = { 33.1, 64.3, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					["cost"] = {
						{ "i", 98121, 1, },		-- Amberseed Bun
						{ "i", 98117, 1, },		-- Moneybrau
						{ "i", 143758, 1, },	-- Free Drinks Voucher
					},
				}),
				q(55018, {	-- Simply Dying of Boredom
					["sourceQuest"] = 55017,	-- Flaunt It If You Got It
					["qg"] = 70722,	-- Grant Lazarby
					["coord"] = { 33.1, 64.3, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					["groups"] = { i(167038) },	-- Bizmo's Brawlpub Sign (QI!)
				}),
				q(55019, {	-- Evidence Packet: Grant Lazarby
					["sourceQuest"] = 55018,	-- Simply Dying of Boredom
					["qg"] = 150316,	-- Silent Jussho
					["coord"] = { 30.3, 87.7, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
					["groups"] = { i(167036) },	-- Evidence Packet: Grant Lazarby (QI!)
				}),
				q(55020, {	-- The Brawlpub Trial
					["sourceQuest"] = 55019,	-- Evidence Packet: Grant Lazarby
					["qg"] = 150313,	-- Commander Daalo
					["coord"] = { 72.7, 68.4, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
				}),
				q(55021, {	-- A Clue from Area 52
					["sourceQuest"] = 55020,	-- The Brawlpub Trial
					["qg"] = 150313,	-- Commander Daalo
					["coord"] = { 72.7, 68.4, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
				}),
				q(55022, {	-- Solving the Mystery
					["sourceQuest"] = 55021,	-- A Clue from Area 52
					["qg"] = 150320,	-- Bizmo
					["coord"] = { 31.1, 66.5, NETHERSTORM },
					["cost"] = { { "i", 164936, 1 }, },	-- Mysterious Challenge Card
					["groups"] = { i(166724) },	-- Bruce (MOUNT!)
				}),
			}),
			sharedData({ ["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH }, ["races"] = HORDE_ONLY }, {
				q(53914, {	-- Murder at the Brawl'gar Arena
					["description"] = "This quest can be accepted after you successfully complete any (or your first) Brawl.",
					["qg"] = 68364,	-- Paul North
					["coord"] = { 50.8, 29.4, BRAWLGAR_ARENA },
				}),
				q(53915, {	-- Put Up Your Dukes
					["sourceQuest"] = 53914,	-- Murder at the Brawl'gar Arena
					["qg"] = 145581,	-- Commander Arlu Ravenhide
					["coord"] = { 43.4, 97.0, BRAWLGAR_ARENA },
				}),
				q(53917, {	-- Undercover Agent: Sharisanda
					["sourceQuest"] = 53915,	-- Put Up Your Dukes
					["qg"] = 145581,	-- Commander Arlu Ravenhide
					["coord"] = { 43.4, 97.0, BRAWLGAR_ARENA },
				}),
				q(53918, {	-- The Financial Participation Incentive
					["sourceQuest"] = 53917,	-- Undercover Agent: Sharisanda
					["qg"] = 145582,	-- Sharisanda
					["coord"] = { 48.8, 79.8, BRAWLGAR_ARENA },
					["cost"] = { { "i", 142318, 1, } },	-- High Roller's Contract
				}),
				q(53920, {	-- A Favor for Your Ol' Pal Buxdoggle
					["sourceQuest"] = 53918,	-- The Financial Participation Incentive
					["qg"] = 68372,	-- Pit Boss Buxdoggle
					["coord"] = { 49.2, 68.0, BRAWLGAR_ARENA },
				}),
				q(53921, {	-- The Pit Boss's Debts
					["sourceQuest"] = 53920,	-- A Favor for Your Ol' Pal Buxdoggle
					["qg"] = 68372,	-- Pit Boss Buxdoggle
					["coord"] = { 49.2, 68.0, BRAWLGAR_ARENA },
					["groups"] = { i(164941) },	-- Huge Pile of Legitimately-Earned Brawler's Gold (QI!)
				}),
				q(53922, {	-- Evidence Packet: Pit Boss Buxdoggle
					["sourceQuest"] = 53921,	-- The Pit Boss's Debts
					["qg"] = 145582,	-- Sharisanda
					["coord"] = { 48.8, 79.8, BRAWLGAR_ARENA },
					["groups"] = { i(164962) },	-- Evidence Packet: Pit Boss Buxdoggle (QI!)
				}),
				q(53923, {	-- Undercover Agent: Stone Guard Mollivox
					["sourceQuest"] = 53922,	-- Evidence Packet: Pit Boss Buxdoggle
					["qg"] = 145581,	-- Commander Arlu Ravenhide
					["coord"] = { 43.4, 97.0, BRAWLGAR_ARENA },
				}),
				q(53924, {	-- Soul Splinters
					["description"] = "You can save previously earned Brawler's Purses and open them while on this quest - Each Brawler's Purse gives 10 - 12 Soul Splinters, so you will need 9 - 10 Brawler's Purses to complete this quest.",
					["sourceQuest"] = 53923,	-- Undercover Agent: Stone Guard Mollivox
					["qg"] = 145691,	-- Shadowmaster Skrizzik
					["coord"] = { 37.4, 33.0, BRAWLGAR_ARENA },
					["groups"] = { i(164928) },	-- Soul Splinter (QI!)
				}),
				q(53925, {	-- Super Soul Splinters
					["sourceQuest"] = 53924,	-- Soul Splinters
					["qg"] = 145691,	-- Shadowmaster Skrizzik
					["coord"] = { 37.4, 33.0, BRAWLGAR_ARENA },
					["groups"] = { i(164929) },	-- Super Soul Splinter (QI!)
				}),
				q(53926, {	-- Cause for Concern
					["sourceQuest"] = 53925,	-- Super Soul Splinters
				}),
				q(53927, {	-- The Precious 13-Tooth Gogglegear
					["sourceQuest"] = 53926,	-- Cause for Concern
					["qg"] = 145583,	-- Stone Guard Mollivox
					["coord"] = { 50.0, 12.4, BRAWLGAR_ARENA },
					["groups"] = { i(164937) },	-- 13-Tooth Gogglegear (QI!)
				}),
				q(53928, {	-- The Mollivox Goggle Experiment
					["sourceQuest"] = 53927,	-- The Precious 13-Tooth Gogglegear
					["qg"] = 145583,	-- Stone Guard Mollivox
					["coord"] = { 50.0, 12.4, BRAWLGAR_ARENA },
					["groups"] = { i(164943) },	-- Mollivox's Goggles (QI!)
				}),
				q(53929, {	-- Evidence Packet: Shadowmaster Skrizzik
					["sourceQuest"] = 53928,	-- The Mollivox Goggle Experiment
					["qg"] = 145583,	-- Stone Guard Mollivox
					["coord"] = { 50.0, 12.4, BRAWLGAR_ARENA },
					["groups"] = { i(164963) },	-- Evidence Packet: Shadowmaster Skrizzik (QI!)
				}),
				q(53930, {	-- Undercover Agent: Nugg Lumbo
					["sourceQuest"] = 53929,	-- Evidence Packet: Shadowmaster Skrizzik
					["qg"] = 145581,	-- Commander Arlu Ravenhide
					["coord"] = { 43.4, 97.0, BRAWLGAR_ARENA },
					["cost"] = { { "i", 143759, 1, } },	-- VIP Room Rental Form
				}),
				q(53931, {	-- Flaunt It If You Got It
					["sourceQuest"] = 53930,	-- Undercover Agent: Nugg Lumbo
					["qg"] = 70716,	-- Libbiara Blightrunner
					["coord"] = { 31.2, 54.0, BRAWLGAR_ARENA },
					["cost"] = { { "i", 142311, 1, } },	-- Free Drinks Voucher
				}),
				q(53952, {	-- Simply Dying of Boredom
					["sourceQuest"] = 53931,	-- Flaunt It If You Got It
					["qg"] = 70716,	-- Libbiara Blightrunner
					["coord"] = { 31.2, 54.0, BRAWLGAR_ARENA },
					["groups"] = { i(164947) },	-- Brawl'gar Arena Sign (QI!)
				}),
				q(53932, {	-- Evidence Packet: Libbiara Blightrunner
					["sourceQuest"] = 53952,	-- Simply Dying of Boredom
					["qg"] = 145584,	-- Nugg Lumbo
					["coord"] = { 29.8, 50.0, BRAWLGAR_ARENA },
					["groups"] = { i(164964) },	-- Evidence Packet: Libbiara Blightrunner (QI!)
				}),
				q(53933, {	-- The Brawl'gar Trial
					["sourceQuest"] = 53932,	-- Evidence Packet: Libbiara Blightrunner
					["qg"] = 145581,	-- Commander Arlu Ravenhide
					["coord"] = { 43.4, 97.0, BRAWLGAR_ARENA },
				}),
				q(53934, {	-- A Clue from Area 52
					["sourceQuest"] = 53933,	-- The Brawl'gar Trial
					["qg"] = 145581,	-- Commander Arlu Ravenhide
					["coord"] = { 43.4, 97.0, BRAWLGAR_ARENA },
				}),
				q(53935, {	-- Solving the Mystery
					["sourceQuest"] = 53934,	-- A Clue from Area 52
					["qg"] = 149808,	-- Boss Bazzelflange
					["maps"] = { NETHERSTORM },
					["groups"] = { i(166724) },	-- Bruce (MOUNT!)
				}),
			}),
			-- TWW
			sharedData({ ["timeline"] = { ADDED_11_2_7 }, ["races"] = ALLIANCE_ONLY }, {
				q(92845, {	-- By Invitation Only?
					["qg"] = 253181,	-- Babbling Brawler
					["DisablePartySync"] = true,
					["coords"] = {
						{ 51.2, 43.4, DORNOGAL },
						{ 66.6, 72.2, STORMWIND_CITY },
					},
				}),
				q(92851, {	-- Questionable Qualifications
					["sourceQuest"] = 92845,	-- By Invitation Only?
					["qg"] = 253170,	-- Pick Butterworth
					["lockCriteria"] = { 1,
						"achID", 61413,	-- The First Rule of Brawler's Guild [A]
						"achID", 61414,	-- The First Rule of Brawler's Guild [H]
					},
					["DisablePartySync"] = true,
					["coord"] = { 53.7, 61.6, DEEPRUN_TRAM },
					["groups"] = { i(254690) },	-- Blood-Soaked Invitation
				}),
				q(94363, {	-- The Gloves Are Off
					["sourceQuest"] = 92851,	-- Questionable Qualifications
					["qg"] = 253170,	-- Pick Butterworth
					["coords"] = {
						{ 53.7, 61.6, DEEPRUN_TRAM },
						{ 55.2, 61.4, DEEPRUN_TRAM },
					},
				}),
			}),
			sharedData({ ["timeline"] = { ADDED_11_2_7 }, ["races"] = HORDE_ONLY }, {
				q(92715, {	-- By Invitation Only?
					["qg"] = 252857,	-- Garrulous Gladiator
					["DisablePartySync"] = true,
					["coords"] = {
						{ 51.4, 40.1, DORNOGAL },
						{ 46.0, 60.8, ORGRIMMAR },
					},
				}),
				q(92740, {	-- Questionable Qualifications
					["sourceQuest"] = 92715,	-- By Invitation Only?
					["qg"] = 252933,	-- Alton Philips
					["coord"] = { 73.4, 31.6, ORGRIMMAR },
					["lockCriteria"] = { 1,
						"achID", 61413,	-- The First Rule of Brawler's Guild [A]
						"achID", 61414,	-- The First Rule of Brawler's Guild [H]
					},
					["DisablePartySync"] = true,
					["groups"] = { i(254690) },	-- Blood-Soaked Invitation
				}),
				q(94372, {	-- The Gloves Are Off
					["sourceQuest"] = 92740,	-- Questionable Qualifications
					["qg"] = 252933,	-- Alton Philips
					["coord"] = { 73.4, 31.6, ORGRIMMAR },
				}),
			})
		)),
		n(REWARDS, {
			i(92718, {	-- Brawler's Purse
				-- #if BFA
				["description"] = "Awarded for winning a Brawl. If you haven't already finished the quest chain for Bruce, save these for the 'Soul Splinters' quest.",
				-- #else
				["description"] = "Awarded for winning a Brawl.",
				-- #endif
			}),
			i(92719, {	-- Bulging Brawler's Purse
				-- #if BFA
				["description"] = "Awarded for winning a Brawl. If you haven't already finished the quest chain for Bruce, save these for the 'Soul Splinters' quest.",
				-- #else
				["description"] = "Awarded for winning a Brawl.",
				-- #endif
			}),
			i(164938, {	-- G.G. Gearbox
				["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH },
				-- #if BFA
				["description"] = "Awarded for beating the G.G. Engineering Challenge Card encounter. You need this to complete the 'The Precious 13-Tooth Gogglegear' quest.",
				-- #else
				["description"] = "Awarded for beating the G.G. Engineering Challenge Card encounter.",
				-- #endif
			}),
			i(164931, {	-- Rumbler's Purse
				["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH },
				-- #if BFA
				["description"] = "Awarded for winning a Rumble. If you haven't already finished the quest chain for Bruce, save these for the 'Super Soul Splinters' quest.",
				-- #else
				["description"] = "Awarded for winning a Rumble.",
				-- #endif
			}),
		}),
		n(VENDORS, {
			n(145695, {	-- "Bad Luck" Symmes <Brawl'gar Arena Quartermaster>
				["sourceQuest"] = 53914,	-- Murder at the Brawl'gar Arena
				["maps"] = { BRAWLGAR_ARENA },
				-- ["coord"] = { 0.0, 0.0, BRAWLGAR_ARENA },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH },
				["sym"] = { {"sub", "common_vendor", 68364} },	-- Paul North <Brawl'gar Arena Quartermaster>
			}),
			n(70751, {	-- Card Trader Ami
				["coord"] = { 60.4, 77.5, BRAWLGAR_ARENA },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
				["groups"] = {
					-- TODO: Many unsourced challenge cards
					i(93823, {	-- Challenge Card: Bruce
						["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3_LAUNCH, ADDED_11_2_7 },
						["groups"] = {
							n(67262, {	-- Bruce
								applyclassicphase(MOP_PHASE_ESCALATION, i(97983, {	-- Modified Chomping Apparatus
									["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3_LAUNCH },
								})),
							}),
						},
					}),
					applyclassicphase(MOP_PHASE_ESCALATION, i(94178, {	-- Challenge Card: G.G. Engineering
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					i(253515, { ["timeline"] = { ADDED_11_2_7 } }),	-- Challenge Card: Glorp
					i(164935, {	-- Challenge Card: Lord Sylysthrel
						["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH },
					}),
					i(253575, { ["timeline"] = { ADDED_11_2_7 } }),	-- Challenge Card: Renegade Swabbie
					i(253581, { ["timeline"] = { ADDED_11_2_7 } }),	-- Challenge Card: Sunny
					i(253868, { ["timeline"] = { ADDED_11_2_7 } }),	-- Challenge Card: The Quacken
					i(164936, {	-- Mysterious Challenge Card
						["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH },
						["description"] = "If you fail to kill Xan-Sallish for the 'Solving the Mystery' quest, you can buy this card again from this vendor.",
						["groups"] = {
							n(145782, {	-- Xan-Sallish <Blade of the Watcher>
								i(164940, {	-- Mysterious Satchel
									i(164942),	-- Shadowscrawled Tome
								}),
							}),
						},
					}),
				},
			}),
			n(70752, {	-- Card Trader Leila
				["coord"] = { 52.3, 25.2, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
				["groups"] = {
					-- TODO: Many unsourced challenge cards
					i(93823, {	-- Challenge Card: Bruce
						["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3_LAUNCH, ADDED_11_2_7 },
						["groups"] = {
							n(67262, {	-- Bruce
								applyclassicphase(MOP_PHASE_ESCALATION, i(97983, {	-- Modified Chomping Apparatus
									["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3_LAUNCH },
								})),
							}),
						},
					}),
					applyclassicphase(MOP_PHASE_ESCALATION, i(94178, {	-- Challenge Card: G.G. Engineering
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					i(253515, { ["timeline"] = { ADDED_11_2_7 } }),	-- Challenge Card: Glorp
					i(164935, {	-- Challenge Card: Lord Sylysthrel
						["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH },
					}),
					i(253575, { ["timeline"] = { ADDED_11_2_7 } }),	-- Challenge Card: Renegade Swabbie
					i(253581, { ["timeline"] = { ADDED_11_2_7 } }),	-- Challenge Card: Sunny
					i(253868, { ["timeline"] = { ADDED_11_2_7 } }),	-- Challenge Card: The Quacken
					i(164936, {	-- Mysterious Challenge Card
						["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH },
						["description"] = "If you fail to kill Xan-Sallish for the 'Solving the Mystery' quest, you can buy this card again from this vendor.",
						["groups"] = {
							n(145782, {	-- Xan-Sallish <Blade of the Watcher>
								i(164940, {	-- Mysterious Satchel
									i(164942),	-- Shadowscrawled Tome
								}),
							}),
						},
					}),
				},
			}),
			n(70723, {	-- Dame Jesepha <Luxury Food Vendor>
				["coord"] = { 22.1, 72.4, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
				-- #if BFA
				["groups"] = {
					i(98121, {	-- Amberseed Bun
						["description"] = "Throw this at Brawlers while on the 'Flaunt It If You Got It' quest.",
					}),
				},
				-- #endif
			}),
			n(151941, {	-- Dershway the Triggered <Bizmo's Brawlpub Quartermaster>
				["sourceQuest"] = 55002,	-- Murder at the Brawlpub
				["maps"] = { DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
				-- ["coord"] = { 0.0, 0.0, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH },
				["sym"] = { {"sub", "common_vendor", 68363} },	-- Quackenbush <Bizmo's Brawlpub Quartermaster>
			}),
			n(70714, {	-- Harr Grayhide <Luxury Food Vendor>
				["maps"] = { BRAWLGAR_ARENA },
				-- Wouter TODO: add coords
				-- ["coord"] = { 0.0, 0.0, BRAWLGAR_ARENA },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
				-- #if BFA
				["groups"] = {
					i(98121, {	-- Amberseed Bun
						["description"] = "Throw this at Brawlers while on the 'Flaunt It If You Got It' quest.",
					}),
				},
				-- #endif
			}),
			n(70713, {	-- Haxxil Drinkmeister <Rare and Luxury Drink Vendor>
				["maps"] = { BRAWLGAR_ARENA },
				-- Wouter TODO: add coords
				-- ["coord"] = { 0.0, 0.0, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
				-- #if BFA
				["groups"] = {
					i(98117, {	-- Moneybrau
						["description"] = "Drink this while on the 'Flaunt It If You Got It' quest.",
					}),
				},
				-- #endif
			}),
			n(70719, {	-- Mozzle Gearbeer <Rare and Luxury Drink Vendor>
				["coord"] = { 24.7, 65.0, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
				-- #if BFA
				["groups"] = {
					i(98117, {	-- Moneybrau
						["description"] = "Drink this while on the 'Flaunt It If You Got It' quest.",
					}),
				},
				-- #endif
			}),
			n(68364, {	-- Paul North <Brawl'gar Arena Quartermaster>
				["coord"] = { 50.8, 29.4, BRAWLGAR_ARENA },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_1_0 },
				-- #if AFTER SL
				-- #if BEFORE 11.2.7
				["description"] = "Even though the Brawler's Guild has closed, this vendor remains available to players.\nShirts are only available to those who have already earned them.",
				-- #else
				["description"] = "Shirts are available to those who have already earned them through the quests.",
				-- #endif
				-- #endif
				["groups"] = {
					filter(MOUNTS, {
						i(259238, {	-- Ballistic Bronco (MOUNT!)
							["minReputation"] = { FACTION_BRAWLGAR_SEASON_5, 8 },
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = 100000000,	-- 10000g
						}),
						i(142403, {	-- Brawler's Burly Basilisk (MOUNT!)
							["timeline"] = { ADDED_7_1_0, REMOVED_8_0_1 },
						}),
						applyclassicphase(MOP_PHASE_ESCALATION, i(98405, {	-- Brawler's Burly Mushan Beast (MOUNT!) unobtainable unless you reached Rank 8 in either Season 1 or Season 2
							["timeline"] = { ADDED_5_3_0, REMOVED_7_1_5 },
							-- #if MOP
								-- #if BEFORE 5.5.3
								["description"] = "While this is already in the shop, you cannot get Rank 10 until Phase 4.",
								-- #else
								["description"] = "Available after reaching Rank 10.",
								-- #endif
							-- #elseif AFTER 7.1.5
							["description"] = "Only available to those who had reached Rank 8 in Season 1 or Season 2.",
							-- #endif
						})),
						i(259227, {	-- Brawlin' Bruno (MOUNT!)
							["minReputation"] = { FACTION_BRAWLGAR_SEASON_5, 6 },
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = 40000000,	-- 4000g
						}),
					}),
					filter(BATTLE_PETS, {
						i(93025, {	-- Clock'em (PET!)
							["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
							-- #if MOP
							["description"] = "Available after reaching Rank 4.",
							-- #endif
						}),
						i(144394, {	-- Tylarr Gronnden (PET!)
							["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
						}),
					}),
					n(DECOR, {
						i(263026, {	-- Brawler's Barricade (DECOR!)
							["minReputation"] = { FACTION_BRAWLGAR_SEASON_5, 2 },
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = 5000000,	-- 500g
						}),
						i(259071, {	-- Brawler's Guild Punching Bag (DECOR!)
							["minReputation"] = { FACTION_BRAWLGAR_SEASON_5, 5 },
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = 40000000,	-- 4000g
						}),
						i(255840, {	-- Champion Brawler's Gloves (DECOR!)
							["minReputation"] = { FACTION_BRAWLGAR_SEASON_5, 7 },
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = 80000000,	-- 8000g
						}),
					}),
					i(93858, {	-- Brawler's Bladed Claws (Pre-WoD)
						["timeline"] = { ADDED_5_2_0, REMOVED_6_0_2 },
						-- #if MOP
						["description"] = "Available after reaching Rank 8.",
						-- #endif
					}),
					i(167812, {	-- Brawlers Guild Tabard
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
					}),
					i(92948, {	-- Brawler's Razor Claws (Pre-WoD)
						["timeline"] = { ADDED_5_2_0, REMOVED_6_0_2 },
						-- #if MOP
						["description"] = "Available after reaching Rank 8.",
						-- #endif
					}),
					i(122396, {	-- Brawler's Razor Claws
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
					}),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98085, {	-- Brucehide Jersey
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					i(253011, {	-- Brawler's Healing Brute Punch
						["timeline"] = { ADDED_11_2_7 },
					}),
					i(253014, {	-- Brawler's Fight Tonic of Strength
						["timeline"] = { ADDED_11_2_7 },
					}),
					i(253015, {	-- Brawler's Fight Tonic of Agility
						["timeline"] = { ADDED_11_2_7 },
					}),
					i(253016, {	-- Brawler's Fight Tonic of Intellect
						["timeline"] = { ADDED_11_2_7 },
					}),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98092, {	-- Digmaster's Bodysleeve
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					iensemble(167892, {	-- Ensemble: Brawler's Garb
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
					}),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98079, {	-- Floot-Tooter's Tunic
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					TempForceMisc(i(127773, {	-- Gemcutter Module: Mastery
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7  },
						["description"] = "Take this recipe to the \"Apexis Gemcutter\" in Tanaan Jungle to learn. If you have this recipe already you will need to revisit the vendor to cache the recipe.",
						["requireSkill"] = JEWELCRAFTING,
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98080, {	-- Gorgeous Blouse
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98091, {	-- Last Season's Shirt
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98084, {	-- Ooze-Soaked Shirt
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98087, {	-- Paper Shirt
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					i(118908, {	-- Pit Fighter's Punching Ring
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_6_0_2, REMOVED_9_0_2_LAUNCH },
					}),
					i(144392, {	-- Pugilist's Powerful Punching Ring
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
					}),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98083, {	-- Sharkskin Tunic
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98093, {	-- Sightless Mantle
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98081, {	-- The Boomshirt
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					i(95050, {	-- The Brassiest Knuckle
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_5_2_0, REMOVED_6_0_2 },
					}),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98086, {	-- Tuxedo-Like Shirt
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98082, {	-- Undisputed Champion's Shirt
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98543, {	-- Wraps of the Blood-Soaked Brawler
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
				},
			}),
			n(68363, {	-- Quackenbush <Bizmo's Brawlpub Quartermaster>
				["coord"] = { 54.3, 25.2, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_1_0 },
				-- #if AFTER SL
				-- #if BEFORE 11.2.7
				["description"] = "Even though the Brawler's Guild has closed, this vendor remains available to players.\nShirts are only available to those who have already earned them.",
				-- #else
				["description"] = "Shirts are available to those who have already earned them through the quests.",
				-- #endif
				-- #endif
				["groups"] = {
					filter(MOUNTS, {
						i(259238, {	-- Ballistic Bronco (MOUNT!)
							["minReputation"] = { FACTION_BRAWLPUB_SEASON_5, 8 },
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = 100000000,	-- 10000g
						}),
						i(142403, {	-- Brawler's Burly Basilisk (MOUNT!)
							["timeline"] = { ADDED_7_1_0, REMOVED_8_0_1 },
						}),
						applyclassicphase(MOP_PHASE_ESCALATION, i(98405, {	-- Brawler's Burly Mushan Beast (MOUNT!) unobtainable unless you reached Rank 8 in either Season 1 or Season 2
							["timeline"] = { ADDED_5_3_0, REMOVED_7_1_5 },
							-- #if MOP
								-- #if BEFORE 5.5.3
								["description"] = "While this is already in the shop, you cannot get Rank 10 until Phase 4.",
								-- #else
								["description"] = "Available after reaching Rank 10.",
								-- #endif
							-- #elseif AFTER 7.1.5
							["description"] = "Only available to those who had reached Rank 8 in Season 1 or Season 2.",
							-- #endif
						})),
						i(259227, {	-- Brawlin' Bruno (MOUNT!)
							["minReputation"] = { FACTION_BRAWLPUB_SEASON_5, 6 },
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = 40000000,	-- 4000g
						}),
					}),
					filter(BATTLE_PETS, {
						i(93025, {	-- Clock'em (PET!)
							["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
							-- #if MOP
							["description"] = "Only available after reaching Rank 4.",
							-- #endif
						}),
						i(144394, {	-- Tylarr Gronnden (PET!)
							["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
						}),
					}),
					n(DECOR, {
						i(263026, {	-- Brawler's Barricade (DECOR!)
							["minReputation"] = { FACTION_BRAWLPUB_SEASON_5, 2 },
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = 5000000,	-- 500g
						}),
						i(259071, {	-- Brawler's Guild Punching Bag (DECOR!)
							["minReputation"] = { FACTION_BRAWLPUB_SEASON_5, 5 },
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = 40000000,	-- 4000g
						}),
						i(255840, {	-- Champion Brawler's Gloves (DECOR!)
							["minReputation"] = { FACTION_BRAWLPUB_SEASON_5, 7 },
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = 80000000,	-- 8000g
						}),
					}),
					i(93858, {	-- Brawler's Bladed Claws (Pre-WoD)
						["timeline"] = { ADDED_5_2_0, REMOVED_6_0_2 },
						-- #if MOP
						["description"] = "Available after reaching Rank 8.",
						-- #endif
					}),
					i(167811, {	-- Brawlers Guild Tabard
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
					}),
					i(92948, {	-- Brawler's Razor Claws (Pre-WoD)
						["timeline"] = { ADDED_5_2_0, REMOVED_6_0_2 },
						-- #if MOP
						["description"] = "Available after reaching Rank 8.",
						-- #endif
					}),
					i(122396, {	-- Brawler's Razor Claws
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
					}),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98085, {	-- Brucehide Jersey
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					i(253011, {	-- Brawler's Healing Brute Punch
						["timeline"] = { ADDED_11_2_7 },
					}),
					i(253014, {	-- Brawler's Fight Tonic of Strength
						["timeline"] = { ADDED_11_2_7 },
					}),
					i(253015, {	-- Brawler's Fight Tonic of Agility
						["timeline"] = { ADDED_11_2_7 },
					}),
					i(253016, {	-- Brawler's Fight Tonic of Intellect
						["timeline"] = { ADDED_11_2_7 },
					}),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98092, {	-- Digmaster's Bodysleeve
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					iensemble(167891, {	-- Ensemble: Brawler's Garb
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
					}),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98079, {	-- Floot-Tooter's Tunic
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					TempForceMisc(i(127773, {	-- Gemcutter Module: Mastery
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
						["description"] = "Take this recipe to the \"Apexis Gemcutter\" in Tanaan Jungle to learn. If you have this recipe already you will need to revisit the vendor to cache the recipe.",
						["requireSkill"] = JEWELCRAFTING,
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98080, {	-- Gorgeous Blouse
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98091, {	-- Last Season's Shirt
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98084, {	-- Ooze-Soaked Shirt
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98087, {	-- Paper Shirt
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					i(118907, {	-- Pit Fighter's Punching Ring
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_6_0_2, REMOVED_9_0_2_LAUNCH },
					}),
					i(144391, {	-- Pugilist's Powerful Punching Ring
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
					}),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98083, {	-- Sharkskin Tunic
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98093, {	-- Sightless Mantle
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98081, {	-- The Boomshirt
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					i(95051, {	-- The Brassiest Knuckle
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_5_2_0, REMOVED_6_0_2 },
					}),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98086, {	-- Tuxedo-Like Shirt
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98082, {	-- Undisputed Champion's Shirt
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, i(98543, {	-- Wraps of the Blood-Soaked Brawler
						["timeline"] = { ADDED_5_3_0, REMOVED_9_0_2_LAUNCH },
					})),
				},
			}),
			n(115797, {	-- Tiana Nevermorn <Gold Exchange>
				["maps"] = { BRAWLGAR_ARENA },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
				["groups"] = {
					i(142319, {	-- Bag of Chipped Dice
						-- TODO: They changed how the dice works, confirm which bosses are still available and if shirts/achievement can be obtained
						["races"] = HORDE_ONLY,
						["cost"] = { { "c", 1299, 100 }, },	-- 100x Brawler's Gold
						-- #if BEFORE 11.2.7
						["groups"] = {
							-- Wouter NOTE: if you're confused like me, fighting bosses with Bag of Chipped Dice still allowed you to fight Season 2 bosses and earn the achievement + shirt
							ach(9177, {	-- Deck Your Collection [Season 2]
								["races"] = HORDE_ONLY,
								["groups"] = {
									i(98543),	-- Wraps of the Blood-Soaked Brawler
								},
							}),
							ach(13194),	-- I Am Thrall's Complete Lack Of Surprise
							n(117208, {	-- a Seagull
								i(144375, {	-- Feathered Brawler's Purse
									i(144368),	-- Felfeather Jersey
								}),
							}),
							n(70748, {	-- Argh
								i(151222, {	-- Leather Brawler's Purse
									i(98080),	-- Gorgeous Blouse
								}),
							}),
							n(116855, {	-- Ash'katzuum
								i(144373, {	-- Claw-Marked Brawler's Purse
									i(144365),	-- The Very Best Shirt
								}),
							}),
							n(115245, {	-- B3@7 B-0X
								i(144374, {	-- Groovy Brawler's Purse
									i(144366),	-- Dubvest
								}),
							}),
							n(70694, {	-- Big Badda Boom
								i(151223, {	-- Booming Brawler's Purse
									i(98081),	-- The Boomshirt
								}),
							}),
							n(70794, {	-- Blind Hero
								i(151238, {	-- Dark Brawler's Purse
									i(98093),	-- Sightless MAntle
								}),
							}),
							n(70740, {	-- Blingtron 3000
								i(151233, {	-- Blingin' Brawler's Bag
									i(98091),	-- Last Seasons Shirt
								}),
							}),
							n(67262, {	-- Bruce
								i(144377, {	-- Beginning Brawler's Purse
									i(144370),	-- Croc-Tooth Harness
								}),
							}),
							n(68255, {	-- Dippy (and Doopy, but seriously I don't care about Doopy.)
								i(151231, {	-- Brawler's Egg
									i(98086),	-- Tuxedo-Like Shirt
								}),
							}),
							n(68257, {	-- Goredome
								i(144378, {	-- Gorestained Brawler's Purse
									i(144371),	-- Gorestained Tunic
								}),
							}),
							n(70678, {	-- Grandpa Grumplefloot
								i(151229, {	-- Brawler's Music Box
									i(98079),	-- Floot-Tooter's Tunic
								}),
							}),
							n(70659, {	-- Hexos
								i(144376, {	-- Agile Brawler's Purse
									i(144367),	-- Observer's Shirt
								}),
							}),
							n(119150, {	-- Klunk
								i(151264, {	-- Clunky Brawler's Purse
									i(151263),	-- Electrified Compression Shirt
								}),
							}),
							n(71081, {	-- Mecha-Bruce
								i(151230, {	-- Croc-Skin Brawler's Purse
									i(98085),	-- Brucehide Jersey
								}),
							}),
							n(70616, {	-- Mingus Diggs
								i(151235, {	-- Filthy Brawler's Purse
									i(98092),	-- Digmaster's Bodysleeve
								}),
							}),
							n(71085, {	-- Razorgrin <Terror of the High Seas>
								i(151225, {	-- Wet Brawler's Purse
									i(98083),	-- Sharkskin Tunic
								}),
							}),
							n(70749, {	-- Ro-Shambo
								i(151232, {	-- Brawler's Package
									i(98087),	-- Paper Shirt
								}),
							}),
							n(70736, {	-- Splat
								i(151221, {	-- Gooey Brawler's Purse
									i(98084),	-- Ooze-Soaked Shirt
								}),
							}),
							n(70666, {	-- Ty'Thar
								i(151224, {	-- Bitten Brawler's Purse
									i(98082),	-- Undisputed Champion's Shirt
								}),
							}),
							n(68250, {	-- Unguloxx <The Murderaffe>
								i(144379, {	-- Murderous Brawler's Purse
									i(144372),	-- Hide of the Murderaffe
								}),
							}),
						},
						-- #endif
					}),
					i(142317, {	-- Blood-Soaked Angel Figurine
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
						["cost"] = { { "c", 1299, 250 }, },	-- 250x Brawler's Gold
					}),
					i(142314, {	-- Brawler's Potion Dispenser
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
					}),
					i(142311, {	-- Free Drinks Voucher
						-- #if BEFORE SL
						["description"] = "Use this while on the 'Flaunt It If You Got It' quest.",
						-- #end
						["cost"] = { { "c", 1299, 1000 }, },	-- 1,000x Brawler's Gold
					}),
					i(142318, {	-- High Roller's Contract
						-- #if BEFORE SL
						["description"] = "Use this while on the 'The Financial Participation Incentive' quest.",
						-- #endif
						["cost"] = { { "c", 1299, 100 }, },	-- 100x Brawler's Gold
					}),
					i(142290, {	-- Rumble Card: Battle of the Brew
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							crit(35477, {	-- Battle of the Brew
								["achievementID"] = 11573,	-- Rumble Club
							}),
						},
					}),
					i(142288, {	-- Rumble Card: Grief Warden
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							n(114943, {	-- Grief Warden <Enmity Moose>
								crit(35472, {	-- Grief Warden
									["achievementID"] = 11573,	-- Rumble Club
								}),
							}),
						},
					}),
					i(142294, {	-- Rumble Card: Mazhareen
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							n(68251, {	-- Mazhareen
								crit(35473, {	-- Mazhareen
									["achievementID"] = 11573,	-- Rumble Club
								}),
							}),
						},
					}),
					i(142293, {	-- Rumble Card: Mindbreaker Gzzaj
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							n(117102, {	-- Mindbreaker Gzzaj
								crit(35474, {	-- Mindbreaker Gzzaj
									["achievementID"] = 11573,	-- Rumble Club
								}),
							}),
						},
					}),
					i(142289, {	-- Rumble Card: Penguin Stampede
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							n(115185, {	-- Penguin Stampede
								crit(35478, {	-- Penguin Stampede
									["achievementID"] = 11573,	-- Rumble Club
								}),
							}),
						},
					}),
					i(142291, {	-- Rumble Card: Senya
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							n(115357, {	-- Senya
								crit(35476, {	-- Senya
									["achievementID"] = 11573,	-- Rumble Club
								}),
							}),
						},
					}),
					i(142292, {	-- Rumble Card: Stranglethorn Streak
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							crit(35475, {	-- Stranglethorn Streak
								["achievementID"] = 11573,	-- Rumble Club
							}),
						},
					}),
					i(143759, {	-- VIP Room Rental Form
						-- #if BEFORE SL
						["description"] = "Use this while on the 'Undercover Agent: Nugg Lumbo' quest if you do not have Rank 6 by this point.",
						-- #endif
						["cost"] = { { "c", 1299, 1000 }, },	-- 1,000x Brawler's Gold
					}),
				},
			}),
			n(118898, {	-- Ulaani <Gold Exchange>
				["coord"] = { 61.9, 25.3, DEEPRUN_TRAM_BIZMOS_BRAWLPUB },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH, ADDED_11_2_7 },
				["groups"] = {
					i(143763, {	-- Bag of Chipped Dice
						-- TODO: They changed how the dice works, confirm which bosses are still available and if shirts/achievement can be obtained
						["races"] = ALLIANCE_ONLY,
						["cost"] = { { "c", 1299, 100 }, },	-- 100x Brawler's Gold
						-- #if BEFORE 11.2.7
						["groups"] = {
							-- Wouter NOTE: if you're confused like me, fighting bosses with Bag of Chipped Dice still allowed you to fight Season 2 bosses and earn the achievement + shirt
							ach(9176, {	-- Deck Your Collection [Season 2]
								["races"] = ALLIANCE_ONLY,
								["groups"] = {
									i(98543),	-- Wraps of the Blood-Soaked Brawler
								},
							}),
							ach(13194),	-- I Am Thrall's Complete Lack Of Surprise
							n(117208, {	-- a Seagull
								i(144375, {	-- Feathered Brawler's Purse
									i(144368),	-- Felfeather Jersey
								}),
							}),
							n(70748, {	-- Argh
								i(151222, {	-- Leather Brawler's Purse
									i(98080),	-- Gorgeous Blouse
								}),
							}),
							n(116855, {	-- Ash'katzuum
								i(144373, {	-- Claw-Marked Brawler's Purse
									i(144365),	-- The Very Best Shirt
								}),
							}),
							n(115245, {	-- B3@7 B-0X
								i(144374, {	-- Groovy Brawler's Purse
									i(144366),	-- Dubvest
								}),
							}),
							n(70694, {	-- Big Badda Boom
								i(151223, {	-- Booming Brawler's Purse
									i(98081),	-- The Boomshirt
								}),
							}),
							n(70794, {	-- Blind Hero
								i(151238, {	-- Dark Brawler's Purse
									i(98093),	-- Sightless MAntle
								}),
							}),
							n(70740, {	-- Blingtron 3000
								i(151233, {	-- Blingin' Brawler's Bag
									i(98091),	-- Last Seasons Shirt
								}),
							}),
							n(67262, {	-- Bruce
								i(144377, {	-- Beginning Brawler's Purse
									i(144370),	-- Croc-Tooth Harness
								}),
							}),
							n(68255, {	-- Dippy (and Doopy, but seriously I don't care about Doopy.)
								i(151231, {	-- Brawler's Egg
									i(98086),	-- Tuxedo-Like Shirt
								}),
							}),
							n(68257, {	-- Goredome
								i(144378, {	-- Gorestained Brawler's Purse
									i(144371),	-- Gorstained Tunic
								}),
							}),
							n(70678, {	-- Grandpa Grumplefloot
								i(151229, {	-- Brawler's Music Box
									i(98079),	-- Floot-Tooter's Tunic
								}),
							}),
							n(70659, {	-- Hexos
								i(144376, {	-- Agile Brawler's Purse
									i(144367),	-- Observer's Shirt
								}),
							}),
							n(119150, {	-- Klunk
								i(151264, {	-- Clunky Brawler's Purse
									i(151263),	-- Electrified Compression Shirt
								}),
							}),
							n(71081, {	-- Mecha-Bruce
								i(151230, {	-- Croc-Skin Brawler's Purse
									i(98085),	-- Brucehide Jersey
								}),
							}),
							n(70616, {	-- Mingus Diggs
								i(151235, {	-- Filthy Brawler's Purse
									i(98092),	-- Digmaster's Bodysleeve
								}),
							}),
							n(71085, {	-- Razorgrin <Terror of the High Seas>
								i(151225, {	-- Wet Brawler's Purse
									i(98083),	-- Sharkskin Tunic
								}),
							}),
							n(70749, {	-- Ro-Shambo
								i(151232, {	-- Brawler's Package
									i(98087),	-- Paper Shirt
								}),
							}),
							n(70736, {	-- Splat
								i(151221, {	-- Gooey Brawler's Purse
									i(98084),	-- Ooze-Soaked Shirt
								}),
							}),
							n(70666, {	-- Ty'Thar
								i(151224, {	-- Bitten Brawler's Purse
									i(98082),	-- Undisputed Champion's Shirt
								}),
							}),
							n(68250, {	-- Unguloxx <The Murderaffe>
								i(144379, {	-- Murderous Brawler's Purse
									i(144372),	-- Hide of the Murderaffe
								}),
							}),
						},
						-- #endif
					}),
					i(143761, {	-- Blood-Soaked Angel Figurine
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
						["cost"] = { { "c", 1299, 250 }, },	-- 250x Brawler's Gold
					}),
					i(143760, {	-- Brawler's Potion Dispenser
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
					}),
					i(143758, {	-- Free Drinks Voucher
						-- #if BEFORE SL
						["description"] = "Use this while on the 'Flaunt It If You Got It' quest.",
						-- #endif
						["cost"] = { { "c", 1299, 1000 }, },	-- 1,000x Brawler's Gold
					}),
					i(143762, {	-- High Roller's Contract
						-- #if BEFORE SL
						["description"] = "Use this while on the 'The Financial Participation Incentive' quest.",
						-- #endif
						["cost"] = { { "c", 1299, 100 }, },	-- 100x Brawler's Gold
					}),
					i(142290, {	-- Rumble Card: Battle of the Brew
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							crit(35477, {	-- Battle of the Brew
								["achievementID"] = 11573,	-- Rumble Club
							}),
						},
					}),
					i(142288, {	-- Rumble Card: Grief Warden
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							n(114943, {	-- Grief Warden <Enmity Moose>
								crit(35472, {	-- Grief Warden
									["achievementID"] = 11573,	-- Rumble Club
								}),
							}),
						},
					}),
					i(142294, {	-- Rumble Card: Mazhareen
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							n(68251, {	-- Mazhareen
								crit(35473, {	-- Mazhareen
									["achievementID"] = 11573,	-- Rumble Club
								}),
							}),
						},
					}),
					i(142293, {	-- Rumble Card: Mindbreaker Gzzaj
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							n(117102, {	-- Mindbreaker Gzzaj
								crit(35474, {	-- Mindbreaker Gzzaj
									["achievementID"] = 11573,	-- Rumble Club
								}),
							}),
						},
					}),
					i(142289, {	-- Rumble Card: Penguin Stampede
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							n(115185, {	-- Penguin Stampede
								crit(35478, {	-- Penguin Stampede
									["achievementID"] = 11573,	-- Rumble Club
								}),
							}),
						},
					}),
					i(142291, {	-- Rumble Card: Senya
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							n(115357, {	-- Senya
								crit(35476, {	-- Senya
									["achievementID"] = 11573,	-- Rumble Club
								}),
							}),
						},
					}),
					i(142292, {	-- Rumble Card: Stranglethorn Streak
						["timeline"] = { ADDED_7_1_5, REMOVED_9_0_2_LAUNCH },
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							crit(35475, {	-- Stranglethorn Streak
								["achievementID"] = 11573,	-- Rumble Club
							}),
						},
					}),
					i(143759, {	-- VIP Room Rental Form
						-- #if BEFORE SL
						["description"] = "Use this while on the 'Undercover Agent: Silent Jussho' quest if you do not have Rank 6 by this point.",
						-- #endif
						["cost"] = { { "c", 1299, 1000 }, },	-- 1,000x Brawler's Gold
					}),
				},
			}),
		}),
	},
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_1_0, REMOVED_9_0_2_LAUNCH } }, applyclassicphase(MOP_PHASE_LANDFALL, {
		n(BRAWLERS_GUILD, {
			n(QUESTS, {
				q(32112),	-- FLAG - Been to Fight Club - completing first fight
				q(32113),	-- FLAG - Been to Fight Club Today
				q(32444),	-- FLAG - Earned Brawler Title (Weekly)
			}),
		}),
	})));
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_7 } }, {
		n(BRAWLERS_GUILD, {
			n(QUESTS, {
				q(93223),	-- Triggered upon entering the arena for the first time
			}),
		}),
	}));
});
