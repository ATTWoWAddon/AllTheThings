---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(NAZJATAR, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
	n(QUESTS, {
		--[[
		56521 popped randomly. possibly a progress flag for 55663?
		56325 - alliance end to the zone, completed after turning in The Tide Turns (55799)
		]]--
		q(55558, {	-- A Bolt Hole
			["sourceQuests"] = { 56234 },	-- Friends in Need
			["coord"] = { 40.2, 55.3, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 153617 },	-- Shandris Feathermoon
		}),
		q(54975, {	-- A Brief Respite
			["provider"] = { "n", 150101 },	-- Lady Jaina Proudmoore
			["coord"] = { 40.3, 55.2, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56156,	-- A Tempered Blade
			["g"] = {
				i(168846),	-- Pearl of Lucid Dreams (Rank 1)
			},
		}),
		q(56561, {	-- A Curious Discovery (A)
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "o", 329805 },	-- Strange Crystal
			["sourceQuest"] = 56156,	-- A Tempered Blade
			["coords"] = {
				{ 32.8, 39.5, NAZJATAR },
				{ 55.2, 48.8, NAZJATAR },
			},
			["g"] = {
				i(169778),	-- Enchanting Crystal (QI!)
			},
		}),
		q(56560, {	-- A Curious Discovery (H)
			["races"] = HORDE_ONLY,
			["provider"] = { "o", 329805 },	-- Strange Crystal
			["sourceQuest"] = 55500,	-- Save a Friend
			["coords"] = {
				{ 32.8, 39.5, NAZJATAR },
				{ 55.2, 48.8, NAZJATAR },
			},
			["g"] = {
				i(169778),	-- Enchanting Crystal (QI!)
			},
		}),
		q(56787, {	-- Additional Supplies
			["description"] = "Offered when |cFFFFD700Bladesman Inowari|r reaches rank 2.",
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 154297 },	-- Bladesman Inowari
			["g"] = {
				i(169903),	-- Nazjatar Survival Pack
			},
		}),
		q(56810, {	-- A Friend Indeed
			["provider"] = { "n", 151310 },	-- Kelfin Scout (Poen Gillbrack)
			["description"] = "Offered when |cFFFFD700Poen Gillbrack|r reaches rank 7.",
			["races"] = HORDE_ONLY,
			["g"] = {
				i(169919),	-- Unshackled Commendation Crate
			},
		}),
		q(56777, {	-- A Gift From The Clan
			["provider"] = { "n", 150202 },	-- Waveblade Hunter (Hunter Akana)
			["races"] = ALLIANCE_ONLY,
			["description"] = "Offered when |cFFFFD700Hunter Akana|r reaches rank 2.",
			["g"] = {
				i(169903),	-- Nazjatar Survival Pack
			},
		}),
		q(56789, {	-- A Gift of Supplies
			["description"] = "Offered when |cFFFFD700Bladesman Inowari|r reaches rank 7.",
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 154297 },	-- Bladesman Inowari
			["g"] = {
				i(169904),	-- Ankoan Commendation Crate
			},
		}),
		q(56778, {	-- A Glint of the Darkness
			["provider"] = { "n", 150202 },	-- Waveblade Hunter (Hunter Akana)
			["races"] = ALLIANCE_ONLY,
			["description"] = "Offered when |cFFFFD700Hunter Akana|r reaches rank 5.",
		}),
		q(55984, {	-- A Good Offense
			["provider"] = { "n", 153623 },	-- Korl
			["coord"] = { 36.3, 30.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 55500,	-- Save a Friend -- todo: verify sourceQuest. Most likely after unlocking the conch
			["description"] = "Requires |cFFFFD700Vim Brineheart|r as your friend.",
		}),
		q(56816, {	-- A Kelfin's Best Friend
			["provider"] = { "n", 151309 },	-- Kelfin Scout (Neri Sharpfin)
			["coord"] = { 45.0, 60.9, NAZJATAR },
			["races"] = HORDE_ONLY,
			["description"] = "Offered when |cFFFFD700Neri Sharpfin|r reaches rank 9.",
		}),
		q(55636, {	-- A Life's Work
			["coord"] = { 78.4, 28.6, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["provider"] = { "o", 325853 },	-- Empty Bookcase
			["sourceQuest"] = 56156,	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Farseer Ori|r as your friend.",
			["g"] = {
				i(168169),	-- Ancient Scroll (QI!)
				o(326594, {	-- Arcane Tome
					i(168170),	-- Arcane Tome (QI!)
				}),
			},
		}),
		q(55993, {	-- A Little Edge
			["description"] = "Requires |cFFFFD700Neri Sharpfin|r as your friend.",
			["provider"] = { "n", 153743 },	-- Kade Makreef
			["isDaily"] = true,
			["coord"] = { 26.0, 41.8, NAZJATAR },
			["races"] = HORDE_ONLY,
			["g"] = {
				i(168605),	-- Chitterspine Spine (QI!)
			},
		}),
		q(55662, {	-- Arcane Cache (A)
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Hunter Akana|r as your friend.",
			["provider"] = {"o",325894},	-- Arcane Cache
			["isDaily"] = true,
			["coord"] = { 53.1, 28.3, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(168199),	-- Arcane Cache Key (QI!)
			},
		}),
		q(56233, {	-- Arcane Cache (H)
			["isDaily"] = true,
			["coord"] = { 53.1, 28.3, NAZJATAR },
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Requires |cFFFFD700Poen Gillbrack|r as your friend.",
			["races"] = HORDE_ONLY,
			["g"] = {
				i(168199),	-- Arcane Cache Key (QI!)
			},
		}),
		q(55983, {	-- A Safer Place (A)
			["provider"] = { "n", 152084 },	-- Mrrl
			["coord"] = { 48.1, 45.3, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56156,	-- A Tempered Blade
		}),
		q(55530, {	-- A Safer Place (H)
			["provider"] = { "n", 152084 },	-- Mrrl
			["coord"] = { 48.1, 45.3, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55500,	-- Save a Friend
		}),
		q(56156, {	-- A Tempered Blade
			["provider"] = { "n", 154248 },	-- Bladesman Inowari
			["coord"] = { 39.4, 53.4, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["description"] = "Must complete this quest for the rest of the zone to become available.",
			["sourceQuest"] = 55363,	-- Rescue the Farseer
			["g"] = {
				spell(304905),	-- World Quests
			},
		}),
		q(56779, {	-- A Valorous Reward
			["description"] = "Offered when |cFFFFD700Hunter Akana|r reaches rank 7.",
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 150202 },	-- Hunter Akana
			["g"] = {
				i(169904),	-- Ankoan Commendation Crate
			},
		}),
		q(54972, {	-- A Way Home
			["provider"] = { "n", 150101 },	-- Lady Jaina Proudmoore
			["coord"] = { 40.2, 55.2, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 55175,	-- Where the Road Leads
			["g"] = {
				-- Cloth
				i(170520),	-- 7th Legionnaire's Hood
				i(170519),	-- 7th Legionnaire's Amice
				i(170514),	-- 7th Legionnaire's Robes

				-- Leather
				i(170522),	-- 7th Legionnaire's Visage
				i(170521),	-- 7th Legionnaire's Mantle
				i(170515),	-- 7th Legionnaire's Vest

				-- Mail
				i(170524),	-- 7th Legionnaire's Helm
				i(170523),	-- 7th Legionnaire's Monnion
				i(170525),	-- 7th Legionnaire's Chainmail

				-- Plate
				i(170527),	-- 7th Legionnaire's Headpiece
				i(170526),	-- 7th Legionnaire's Shoulderplates
				i(170528),	-- 7th Legionnaire's Chestguard
			},
		}),
		q(55053, {	-- A Way Home
			["provider"] = { "n", 151851 },	-- Chief Telemancer Oculeth
			["coord"] = { 48.4, 62.3, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55094,	-- Stay Low, Stay Fast!
			["g"] = {
				i(170530),	-- Honorbound Artificer's Guise	\
				i(170529),	-- Honorbound Artificer's Amice	 > when i completed the alliance version of the quest on my priest, it also awarded these.
				i(170516),	-- Honorbound Artificer's Robes	/
				i(170536),	-- Honorbound Centurion's Greathelm
				i(170535),	-- Honorbound Centurion's Shoulderplates
				i(170537),	-- Honorbound Centurion's Breastplate
				i(170532),	-- Honorbound Outrider's Headpiece
				i(170531),	-- Honorbound Outrider's Shoulderguards
				i(170518),	-- Honorbound Outrider's Tunic
				i(170517),	-- Honorbound Vanguard's Chainmail
				i(170533),	-- Honorbound Vanguard's Shoulderguards
				i(170534),	-- Honorbound Vanguard's Skullguard
			},
		}),
		q(57006, {	-- A Worthy Ally
			["provider"] = { "n", 153509 },	-- Artisan Okata
			["coord"] = { 37.8, 55.8, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56156,	-- A Tempered Blade
		}),
		q(56347, {	-- An Abyssal Opportunity
			["provider"] = { "n", 154257 },	-- Instructor Ulooaka
			["coord"] = { 37.9, 52.9, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56346,	-- Ancient Technology
			["cost"] = { { "i", 171247, 15 } },	-- 15x Abyssal Shard
		}),
		q(56353, {	-- An Abyssal Opportunity
			["provider"] = { "n", 154408 },	-- Rolm
			["coord"] = { 49.3, 61.8, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 56354,	-- Ancient Technology
			["cost"] = { { "i", 171247, 15 } },	-- 15x Abyssal Shard
		}),
		q(56813, {	-- An Unexpected Friend
			["qgs"] = {
				149904,	-- Neri Sharpfin
				151300,	-- Kelfin Scout
			},
			["races"] = HORDE_ONLY,
			["description"] = "Offered when |cFFFFD700Neri Sharpfin|r reaches rank 2.",
			["g"] = {
				i(169903),	-- Nazjatar Survival Pack
			},
		}),
		q(56969, {	-- Ancient Reefwalker Bark
			["repeatable"] = true,
			["cost"] = {
				{"i",170184,1},	-- Ancient Reefwalker Bark
			},
			["aqd"] = {
				["providers"] = {
					{ "n", 153509 },	-- Artisan Okata (A)
				},
				["coords"] = {
					{ 37.9, 55.7, NAZJATAR },	-- Alliance
				},
				["maxReputation"] = {FACTION_WAVEBLADE_ANKOAN,EXALTED},
			},
			["hqd"] = {
				["providers"] = {
					{ "n", 153512 },	-- Finder Pruc (H)
				},
				["coords"] = {
					{ 49.2, 62.2, NAZJATAR },	-- Horde
				},
				["maxReputation"] = {FACTION_THE_UNSHACKLED,EXALTED},
			},
		}),
		q(56346, {	-- Ancient Technology
			["coord"] = { 38.1, 36.9, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "o", 327596 },	-- Broken Abyssal Focus
			["description"] = "This quest is not available unless you have 150 in Kul Tiran Alchemy, Blacksmithing, Engineering, Jewelcrafting, Leatherworking, or Tailoring.",
			["sourceQuest"] = 56156,	-- A Tempered Blade
			["g"] = {
				i(169320),	-- Broken Power Core (QI!)
			},
		}),
		q(56354, {	-- Ancient Technology
			["coord"] = { 38.1, 36.9, NAZJATAR },
			["races"] = HORDE_ONLY,
			["provider"] = { "o", 327596 },	-- Broken Abyssal Focus
			["description"] = "This quest is not available unless you have 150 in Zandalari Alchemy, Blacksmithing, Engineering, Jewelcrafting, Leatherworking, or Tailoring.",
			["sourceQuest"] = 55500,	-- Save a Friend
			["g"] = {
				i(169320),	-- Broken Power Core (QI!)
			},
		}),
		q(56814, {	-- Anytime You Need a Friend
			["provider"] = { "n", 149904 },	-- Neri Sharpfin
			["races"] = HORDE_ONLY,
			["description"] = "Offered when |cFFFFD700Neri Sharpfin|r reaches rank 5.",
			["g"] = {
				i(169908),	-- Cleverly Concealed Supplies
			},
		}),
		q(56218, {	-- Beauty in the Deeps
			["providers"] = {
				{ "n", 154297 },	-- Bladesman Inowari
				{ "n", 149803 },	-- Bladesman Inowari (inactive in front of the bonfire)
			},
			["description"] = "Offered when |cFFFFD700Bladesman Inowari|r reaches rank 20.",
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 120,
			["g"] = {
				i(169354),	-- Brilliant Glimmershell (PET!)
			},
		}),
		q(57005, {	-- Becoming a Friend
			["provider"] = { "n", 154002 },	-- Atolia Seapearl
			["coord"] = { 51.0, 65.5, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55500,	-- Save a Friend
			["g"] = {
				currency(1721),	-- Prismatic Manapearls
			},
		}),
		q(55597, {	-- Bound by Honor
			["provider"] = { "n", 151000 },	-- Blademaster Okani
			["coord"] = { 38.9, 54.6, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 55593,	-- Insight into Our Enemies
		}),
		q(55821, {	-- Bounty: A Few Coral Ancients
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 153509,	-- Artisan Okata (A)
				["coord"] = { 37.9, 55.7, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save a Friend (H)
				["qg"] = 153512,	-- Finder Pruc (H)
				["coord"] = { 49.1, 62.2, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(55823, {	-- Bounty: A Few Crabs
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 153591,	-- Mikah Brewbelly (A)
				["coord"] = { 40.0, 55.6, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save A Friend (H)
				["qg"] = 151635,	-- Slen Darkroe (H)
				["coord"] = { 50.8, 64.7, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(55825, {	-- Bounty: A Few Fathom Rays
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 151772,	-- Ray Tamer Enaka (A)
				["coord"] = { 39.9, 54.1, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save A Friend (H)
				["qg"] = 153772,	-- Lina Bluegill (H)
				["coord"] = { 47.4, 63.2, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(55820, {	-- Bounty: A Few Hydras
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 152942,	-- Lieutenant Hawkins (A)
				["coord"] = { 40.1, 55.5, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save A Friend (H)
				["qg"] = 151614,	-- Nevin Tideheart  (H)
				["coord"] = { 49.8, 66.2, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(55818, {	-- Bounty: A Few Naga
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 152942,	-- Lieutenant Hawkins (A)
				["coord"] = { 40.0, 55.4, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save A Friend (H)
				["qg"] = 151614,	-- Nevin Tideheart  (H)
				["coord"] = { 49.8, 66.2, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(55822, {	-- Bounty: A Few Makura
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 155941,	-- Tamer Orami (A)
				["coord"] = { 39.5, 55.4, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save A Friend (H)
				["qg"] = 151352,	-- Lily Bopip  (H)
				["coord"] = { 47.3, 61.9, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(55819, {	-- Bounty: A Few Murlocs
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 155941,	-- Tamer Orami (A)
				["coord"] = { 39.5, 55.4, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save A Friend (H)
				["qg"] = 151352,	-- Lily Bopip (H)
				["coord"] = { 47.3, 61.9, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(55824, {	-- Bounty: A Few Snapdragons
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 155940,	-- Enizo (A)
				["coord"] = { 37.8, 55.5, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save A Friend (H)
				["qg"] = 151618,	-- Asme Seapearl (H)
				["coord"] = { 50.9, 65.3, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(55837, {	-- Bounty: Dangerous Creatures
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 155941,	-- Tamer Orami (A)
				["coord"] = { 39.6, 55.5, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save A Friend (H)
				["qg"] = 151352,	-- Lily Bopip (H)
				["coord"] = { 47.3, 61.9, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(55836, {	-- Bounty: Elite Naga Forces
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 152942,	-- Lieutenant Hawkins (A)
				["coord"] = { 40.0, 55.4, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save A Friend (H)
				["qg"] = 151614,	-- Nevin Tideheart (H)
				["coord"] = { 50.4, 66.2, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(55830, {	-- Bounty: More Coral Ancients
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 153509,	-- Artisan Okata (A)
				["coord"] = { 37.8, 55.8, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save A Friend (H)
				["qg"] = 153512,	-- Finder Pruc (H)
				["coord"] = { 49.1, 62.1, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(55832, {	-- Bounty: More Crabs
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 153591,	-- Mikah Brewbelly (A)
				["coord"] = { 40.0, 55.6, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save A Friend (H)
				["qg"] = 151635,	-- Slen Darkroe (H)
				["coord"] = { 50.8, 64.7, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(55834, {	-- Bounty: More Fathom Rays
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 151772,	-- Ray Tamer Enaka (A)
				["coord"] = { 39.8, 54.1, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save A Friend (H)
				["qg"] = 153772,	-- Lina Bluegill (H)
				["coord"] = { 47.4, 63.2, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(55829, {	-- Bounty: More Hydras
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 152942,	-- Lieutenant Hawkins (A)
				["coord"] = { 40.1, 55.5, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save A Friend (H)
				["qg"] = 151614,	-- Nevin Tideheart (H)
				["coord"] = { 49.8, 66.2, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(55831, {	-- Bounty: More Makrura
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 155941,	-- Tamer Orami (A)
				["coord"] = { 39.5, 55.4, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save A Friend (H)
				["qg"] = 151352,	-- Lily Bopip (H)
				["coord"] = { 47.4, 62.0, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(55828, {	-- Bounty: More Murlocs
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 155941,	-- Tamer Orami (A)
				["coord"] = { 39.5, 55.4, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save A Friend (H)
				["qg"] = 151352,	-- Lily Bopip (H)
				["coord"] = { 47.4, 62.0, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(55827, {	-- Bounty: More Naga
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 152942,	-- Lieutenant Hawkins (A)
				["coord"] = { 40.0, 55.4, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save A Friend (H)
				["qg"] = 151614,	-- Nevin Tideheart (H)
				["coord"] = { 49.8, 66.2, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(55833, {	-- Bounty: More Snapdragons
			["allianceQuestData"] = {
				["sourceQuest"] = 56156,	-- A Tempered Blade (A)
				["qg"] = 155940,	-- Enizo (A)
				["coord"] = { 37.7, 55.4, NAZJATAR },
			},
			["hordeQuestData"] = {
				["sourceQuest"] = 55500,	-- Save A Friend (H)
				["qg"] = 151618,	-- Asme Seapearl (H)
				["coord"] = { 50.9, 65.3, NAZJATAR },
			},
			["isDaily"] = true,
		}),
		q(56370, {	-- Break a Few Eggs (A)
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Hunter Akana|r as your friend.",
			["isDaily"] = true,
			["coords"] = {
				{ 66.8, 29.2, NAZJATAR },
				{ 67.1, 26.1, NAZJATAR },
			},
			["races"] = ALLIANCE_ONLY,
			["providers"] = {
				{ "n", 154075 },	-- Tracker Kenji
				{ "n", 155844 },	-- Apprentice Anako
			},
		}),
		q(55986, {	-- Break a Few Eggs (H)
			["description"] = "Requires |cFFFFD700Neri Sharpfin|r as your friend.",
			["provider"] = { "n", 153684 },	-- Caitfin Gills
			["coord"] = { 70.2, 23.2, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 55500,	-- Save A Friend -- confirm sourceQuest. Possibly  "The Needs of the People" instead?
		}),
		q(55663, {	-- Broken Controller
			["provider"] = { "n", 152717 },	-- Escaped Kelfin
			["coord"] = { 58.0, 56.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
		}),
		q(56325, {	-- Changing Tides
			["sourceQuests"] = { 56741 },	-- The Spear of Destiny
			["coord"] = { 40.2, 55.2, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 150101 },	-- Lady Jaina Proudmoore
			["g"] = {
				currency(1721),	-- Prismatic Manapearl x25
			},
		}),
		q(56309, {	-- City of Drowned Friends
			["provider"] = { "n", 154522 },	-- Shandris Feathermoon
			["coord"] = { 76.0, 45.8, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56156,	-- A Tempered Blade
		}),
		q(56310, {	-- City of Drowned Friends -- TODO:: verify sourceQuest
			["provider"] = { "n", 154520 },	-- First Arcanist Thalyssra
			["coord"] = { 73.4, 47.8, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55500,	-- Save a Friend
		}),
		q(55937, {	-- Clearing Out the Cache (A)
			["coord"] = { 46.0, 51.9, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "o", 326588 },	-- Azerite Weapons Cache`
			["sourceQuest"] = 55861,	-- Let the Residue Lead You
		}),
		q(55869, {	-- Clearing Out the Cache (H)
			["coord"] = { 46.0, 51.9, NAZJATAR },
			["races"] = HORDE_ONLY,
			["provider"] = { "o", 326588 },	-- Azerite Weapons Cache`
			["sourceQuest"] = 55868,	-- Let the Residue Lead You
		}),
		q(55601, {	-- Coveted Crystals (A)
			["provider"] = { "n", 153385 },	-- Blademaster Okani
			["coord"] = { 38.8, 30.4, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56037,	-- Stealing the Naga's Secrets
			["g"] = {
				i(168540),	-- Deepsea Crystal (QI!)
			},
		}),
		q(55867, {	-- Coveted Crystals (H)
			["provider"] = { "n", 153422 },	-- Chief Telemancer Oculeth
			["coord"] = { 38.8, 30.4, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 56045,	-- Stealing the Naga's Secrets
			["g"] = {
				i(168540),	-- Deepsea Crystal (QI!)
			},
		}),
		q(55681, {	-- Crab Marks The Spot
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Bladesman Inowari|r as your friend.",
			["provider"] = {"o",325954},	-- Illegible Treasure Map
			["isDaily"] = true,
			["coord"] = { 43.8, 54.5, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(168230),	-- Buried Treasure (QI!)
			},
		}),
		q(57004, {	-- Create Your Own Strength
			["provider"] = { "n", 150101 },	-- Lady Jaina Proudmoore
			["coord"] = { 40.2, 55.2, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56350,	-- Scouting the Palace
		}),
		q(57003, {	-- Create Your Own Strength
			["provider"] = { "n", 151848 },	-- Lor'themar Theron
			["coord"] = { 48.5, 62.2, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55481,	-- Scouting the Palace
		}),
		q(56642, {	-- Dark Tides
			["provider"] = { "n", 155482 },	-- Sentinel (Shandris Feathermoon)
			["coord"] = { 48.7, 86.8, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 54969,	-- Descent
			["g"] = {
				i(163887),	-- 7th Legionnaire's Longsword
				i(163881),	-- 7th Legionnaire's Longbow
				i(163890),	-- 7th Legionnaire's Claymore
				i(163885),	-- 7th Legionnaire's Halberd
				i(163886),	-- 7th Legionnaire's Stave
				i(170274),	-- 7th Legionnaire's Greathammer
				i(163894),	-- 7th Legionnaire's Spellhammer
				i(163892),	-- 7th Legionnaire's Censer
				i(163882),	-- 7th Legionnaire's Dagger
				i(166336),	-- 7th Legionnaire's Skullcleaver
			},
		}),
		q(56063, {	-- Dark Tides
			["provider"] = { "n", 150196 },	-- First Arcanist Thalyssra
			["coord"] = { 41.9, 80.6, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 54021,	-- The First Arcanist
			["g"] = {
				i(170275),	-- Honorbound Warmaul
				i(163874),	-- Honorbound Decapitator
				--i(163871),	-- Honorbound Pigstricker
				i(163872),	-- Honorbound War Staff
				i(163868),	-- Honorbound Dagger
				i(163876),	-- Honorbound Focus
				i(163880),	-- Honorbound Gladius
				i(163867),	-- Honorbound Longbow
				i(163869),	-- Honorbound Skullcrusher
				i(163878),	-- Honorbound Barrier
			},
		}),
		q(54969, {	-- Descent (A)
			["provider"] = { "n", 150101 },	-- Lady Jaina Proudmoore
			["coord"] = { 48.8, 89.4, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 55095,	-- Upheaval
		}),
		q(54018, {	-- Descent (H)
			["provider"] = { "n", 150206 },	-- Chief Telemancer Oculeth
			["coord"] = { 36.6, 86.9, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55054,	-- Upheaval
		}),
		q(55595, {	-- Deteriorating Knowledge (A)
			["provider"] = { "n", 151000 },	-- Blademaster Okani
			["coord"] = { 38.9, 54.6, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 55593,	-- Insight into Our Enemies
		}),
		q(55863, {	-- Deteriorating Knowledge (H)
			["provider"] = { "n", 151300 },	-- Kelfin Scout (Neri Sharpfin)
			["coord"] = { 48.5, 62.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55862,	-- Insight into Our Enemies
		}),
		q(56243, {	-- Diaries of the Dead (A)
			["coord"] = { 81.4, 45.4, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "o", 327591 },	-- Preserved Journal
			["sourceQuest"] = 56241,	-- Preserved Clues
		}),
		q(56244, {	-- Diaries of the Dead (H)
			["coord"] = { 81.4, 45.4, NAZJATAR },
			["races"] = HORDE_ONLY,
			["provider"] = { "o", 327591 },	-- Preserved Journal
			["sourceQuest"] = 56242,	-- Preserved Clues
		}),
		{	-- Disruption of Power
			["allianceQuestData"] = q(56641, {	-- Disruption of Power (A)
				["provider"] = { "n", 155482 },	-- Sentinel (Shandris Feathermoon)
				["coord"] = { 48.7, 86.8, NAZJATAR },
			}),
			["hordeQuestData"] = q(55092, {	-- Disruption of Power (H)
				["provider"] = { "n", 150196 },	-- First Arcanist Thalyssra
				["coord"] = { 41.9, 80.6, NAZJATAR },
			}),
			["sourceQuests"] = {
				54969,	-- Descent
				54021,	-- The First Arcanist
			},
			["groups"] = {
				o(322066, {	-- Ley Line Accumulator
					["coords"] = {
						{ 41.3, 78.4, NAZJATAR },
						{ 43.0, 73.8, NAZJATAR },
						{ 44.6, 79.5, NAZJATAR },
						{ 45.1, 78.9, NAZJATAR },
					},
				}),
			},
		},
		q(56236, {	-- Down But Not Out
			["provider"] = { "n", 151848 },	-- Lor'themar Theron
			["coord"] = { 48.5, 62.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55869,	-- Clearing Out the Cache
			["g"] = {
				i(168847),	-- Pearl of Manifest Ambitions (Rank 2)
			},
		}),
		q(56235, {	-- Down Into Nazjatar
			["provider"] = { "n", 151848 },	-- Lor'themar Theron
			["coord"] = { 48.5, 62.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55500,	-- Save A Friend
			["g"] = {
				i(168846),	-- Pearl of Lucid Dreams (Rank 1)
			},
		}),
		pvp(q(56433, {	-- Drowning the Alliance
			["provider"] = { "n", 154652 },	-- Dazzerian
			["coord"] = { 48.8, 60.6, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55481,	-- Scouting the Palace
			["g"] = {
				i(168850),	-- Time-Lost Battlefield Memento (Rank 1)
			},
		})),
		pvp(q(56128, {	-- Drowning the Horde
			["provider"] = { "n", 154653 },	-- Tomas Riogain
			["coord"] = { 38.1, 55.3, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 57010,	-- Harnessing the Power
			["g"] = {
				i(168850),	-- Time-Lost Battlefield Memento (Rank 1)
			},
		})),
		q(56001, {	-- Drunk Angry Murlocs
			["provider"] = { "n", 153884 },	-- King Mrgl-Mrgl
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Bladesman Inowari|r as your friend.",
			["isDaily"] = true,
			["coord"] = { 25.5, 26.5, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(170075),	-- Recipe: Unagi Skewer (RECIPE!)
				i(168629),	-- Ocean "Infused" Lager (QI!)
			},
		}),
		q(56265, {	-- Drunk Angry Murlocs
			["provider"] = { "n", 153884 },	-- King Mrgl-Mrgl
			["coord"] = { 25.5, 26.5, NAZJATAR },
			["sourceQuest"] = 55500,	-- Save A Friend
			["description"] = "Requires |cFFFFD700Poen Gillbrack|r as your friend.",
			["isDaily"] = true,
			["races"] = HORDE_ONLY,
			["g"] = {
				i(170075),	-- Recipe: Unagi Skewer (RECIPE!)
				i(168629),	-- Ocean "Infused" Lager (QI!)
			},
		}),
		q(55569, {	-- Echoes of Pain
			["sourceQuests"] = {	-- may not require other two, definitely requires *
				55565,	-- Shoring Up Mana Reserves
				55694,	-- There's Something in the Water
				55560,	-- Utama's Vengeance
			},
			["coord"] = { 74.6, 25.9, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 153617 },	-- Shandris Feathermoon
		}),
		q(57246,{	-- Eel Filet [A]
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "i", 170167 },	-- Eel Filet
			["repeatable"] = true,
		}),
		q(56971,{	-- Eel Filet [H]
			["races"] = HORDE_ONLY,
			["provider"] = { "i", 170167 },	-- Eel Filet
			["repeatable"] = true,
		}),
		q(55362, {	-- Elemental Fury
			["provider"] = { "n", 151741 },	-- Apprentice Odari
			["coord"] = { 43.4, 49.8, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 55361,	-- The Lost Shaman
			["g"] = {
				i(167748),	-- Stone of Elements (QI!)
			},
		}),
		q(55768, {	-- Emergent Sea Weeds
			["provider"] = { "n", 153006 },	-- Bren Inkfin
			["coord"] = { 38.0, 48.6, NAZJATAR },
			["isDaily"] = true,
			["races"] = HORDE_ONLY,
			["g"] = {
				i(168433),	-- Vent Kelp Sprout (QI!)
			},
		}),
		q(56246, {	-- Enchanted Lock (A)
			["coord"] = { 78.8, 41.1, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "o", 327592 },	-- Enchanted Lock
			["sourceQuest"] = 56243,	-- Diaries of the Dead
			["description"] = "Match 3 purple runes.",
		}),
		q(56245, {	-- Enchanted Lock (H)
			["coord"] = { 78.8, 41.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["provider"] = { "o", 327592 },	-- Enchanted Lock
			["sourceQuest"] = 56244,	-- Diaries of the Dead
			["description"] = "Match 3 purple runes.",
		}),
		q(55851, {	-- Essential Empowerment
			["providers"] = {
				{ "n", 154166 },	-- Magni Bronzebeard (A)
				{ "n", 154167 },	-- Magni Bronzebeard (H)
			},
			["coords"] = {
				{ 40.0, 55.2, NAZJATAR },	-- Alliance
				{ 48.2, 62.4, NAZJATAR },	-- Horde
			},
			["sourceQuests"] = {
				54972,	-- A Way Home (A)
				55053,	-- A Way Home (H)
			},
		}),
		q(55985, {	-- Extra Shiny
			["description"] = "Requires |cFFFFD700Neri Sharpfin|r as your friend.",
			["provider"] = { "n", 153685 },	-- Mari Lazarfin
			["coord"] = { 60.8, 30.9, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 55500,	-- Save a Friend
			["g"] = {
				i(168577),	-- Imbued Pearl (QI!)
			},
		}),
		q(57009, {	-- Fame Waits for Gnome One
			["provider"] = { "n", 156179 },	-- Gila Crosswires
			["coord"] = { 39.5, 53.5, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56156,	-- A Tempered Blade
			["isBreadcrumb"] = true,
		}),
		q(57247,{	-- Fathom Ray Wing [A]
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "i", 170176 },	-- Fathom Ray Wing
			["repeatable"] = true,
		}),
		q(56972,{	-- Fathom Ray Wing [H]
			["races"] = HORDE_ONLY,
			["provider"] = { "i", 170176 },	-- Fathom Ray Wing
			["repeatable"] = true,
		}),
		q(56149, {	-- Feed Them All (A)
			["provider"] = { "n", 154235 },	-- Harvester Akaro
			["coord"] = { 55.6, 47.0, NAZJATAR },
			["sourceQuest"] = 56156,	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Hunter Akana|r as your friend.",
			["isDaily"] = true,
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(168254),	-- Fathom Flesh (QI!)
				i(168253),	-- Fathom Hook (QI!)
			},
		}),
		q(55715, {	-- Feed Them All (H)
			["provider"] = { "n", 152786 },	-- Oben Sandfin
			["coord"] = { 57.4, 45.6, NAZJATAR },
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Requires |cFFFFD700Poen Gillbrack|r as your friend.",
			["isDaily"] = true,
			["races"] = HORDE_ONLY,
			["g"] = {
				i(168254),	-- Fathom Flesh (QI!)
				i(168253),	-- Fathom Hook (QI!)
			},
		}),
		q(55661, {	-- Fighting Venomous With Venom -- TODO:: verify sourceQuest
			["description"] = "Requires |cFFFFD700Neri Sharpfin|r as your friend.",
			["provider"] = { "n", 153777 },	-- Cando Mikfin
			["coord"] = { 64.5, 48.5, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 55500,	-- Save a Friend
			["g"] = {
				i(168404),	-- Envenomed Fangs (QI!)
				i(168525),	-- Poison Globule (QI!)
				i(168198),	-- Venom Droplet (QI!)
			},
		}),
		q(55846, {	-- Forbidden Rituals
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Farseer Ori|r as your friend.",
			["isDaily"] = true,
			["coord"] = { 56.5, 29.2, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 153147 },	-- Apprentice Ukaro
			["g"] = {
				i(168398),	-- Tome of Binding (QI!)
			},
		}),
		q(55683, {	-- Forgotten Memories
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Farseer Ori|r as your friend.",
			["isDaily"] = true,
			["coord"] = { 78.5, 26.8, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 152716 },	-- Arylina
			["g"] = {
				o(326595, {	-- Arylina's Diary
					["coords"] = {
						{ 76.2, 27.5, NAZJATAR },
						{ 76.4, 29.7, NAZJATAR },
						{ 76.6, 30.0, NAZJATAR },
						{ 77.4, 29.4, NAZJATAR },
						{ 77.6, 30.2, NAZJATAR },
						{ 77.7, 26.1, NAZJATAR },
						{ 79.1, 27.5, NAZJATAR },
						{ 79.5, 27.7, NAZJATAR },
						{ 80.3, 29.8, NAZJATAR },
					},
					["g"] = { i(168238) },	-- Arylina's Diary (QI!)
				}),
			},
		}),
		q(56640, {	-- Fortunate Souls
			["provider"] = { "n", 155482 },	-- Sentinel (Shandris Feathermoon)
			["coord"] = { 48.7, 86.8, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 54969,	-- Descent
		}),
		q(54012, {	-- Fortunate Souls
			["provider"] = { "n", 150196 },	-- First Arcanist Thalyssra
			["coord"] = { 41.9, 80.6, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 54021,	-- The First Arcanist
		}),
		q(56812, {	-- Friendship Is Magic
			["provider"] = { "n", 151310 },	-- Kelfin Scout (Poen Gillbrack)
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Offered when |cFFFFD700Poen Gillbrack|r reaches rank 13.",
			["races"] = HORDE_ONLY,
			["g"] = {
				i(169921),	-- Spine Guarded Supplies
			},
		}),
		q(56234, {	-- Friends in Need
			["provider"] = { "n", 150101 },	-- Lady Jaina Proudmoore
			["coord"] = { 40.3, 55.2, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 55937,	-- Clearing Out the Cache
			["g"] = {
				i(168847),	-- Pearl of Manifest Ambitions (Rank 2)
			},
		}),
		q(56806, {	-- Friends Through Eternity
			["providers"] = {
				{ "n", 151309 },	-- Kelfin Scout (Vim Brineheart)
				{ "n", 149906 },	-- Vim Brineheart
			},
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Offered when |cFFFFD700Vim Brineheart|r reaches Rank 9.",
			["races"] = HORDE_ONLY,
			["g"] = {
				i(169916),	-- Brew-Soaked Supplies
			},
		}),
		q(55871, {	-- Gather Friends -- also triggered 56544, 56682
			["provider"] = { "n", 151311 },	-- Narm
			["coord"] = { 26.6, 42.3, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Requires |cFFFFD700Poen Gillbrack|r as your friend.",
			["g"] = {
				i(168406),	-- Captured Friend (QI!)
				i(168407),	-- Friendship Net (QI!)
			},
		}),
		q(57248,{	-- Giant Crab Leg [A]
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "i", 170171, },	-- Giant Crab Leg
			["repeatable"] = true,
		}),
		q(56973,{	-- Giant Crab Leg [H]
			["races"] = HORDE_ONLY,
			["provider"] = { "i", 170171, },	-- Giant Crab Leg
			["repeatable"] = true,
		}),
		q(56215, {	-- Glittering Shell
			["provider"] = { "n", 151310 },	-- Poen Gillbrack
			["description"] = "Offered when |cFFFFD700Poen Gillbrack|r reaches rank 20.",
			["races"] = HORDE_ONLY,
			["lvl"] = 120,
			["g"] = {
				i(169353),	-- Lustrous Glimmershell (PET!)
			},
		}),
		q(56214, {	-- Good Girl
			["provider"] = { "n", 151300 },	-- Neri Sharpfin
			["description"] = "Offered when |cFFFFD700Neri Sharpfin|r reaches rank 20.",
			["races"] = HORDE_ONLY,
			["lvl"] = 120,
			["g"] = {
				i(169199, {	-- Snapdragon Kelpstalker (MOUNT!)
					["description"] = "Learning this mount also unlocks the Alliance |cFFA330C9Deepcoral Snapdragon|r mount.",
				}),
			},
		}),
		q(56784, {	-- Helpful Provisions
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Offered when |cFFFFD700Farseer Ori|r reaches Rank 7.",
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 154304 },	-- Farseer Ori
			["g"] = {
				i(169904),	-- Ankoan Commendation Crate (contained a benthic token, some war resources, and some zin'anthid)
			},
		}),
		q(55571, {	-- Help Them See the Truth
			["sourceQuests"] = {
				55569,	-- Echoes of Pain
				55570,	-- Secrets in the Ruins
			},
			["coord"] = { 74.2, 40.2, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 153617 },	-- Shandris Feathermoon
		}),
		q(56780, {	-- Hidden, But Dangerous
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Offered when |cFFFFD700Hunter Akana|r reaches rank 9.",
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 150202 },	-- Hunter Akana
			["g"] = {
				i(169911, {	-- Liberated Naga Cache
					currency(1721),	-- Prismatic Manapearl x10
				--	i(168185),	-- Osmenite Ore x11
				}),
			},
		}),
		q(56643, {	-- In Deep
			["provider"] = { "n", 155482 },	-- Sentinel (Shandris Feathermoon)
			["races"] = ALLIANCE_ONLY,
			["sourceQuests"] = {
				56642,	-- Dark Tides
				56641,	-- Disruption of Power
				56640,	-- Fortunate Souls
			},
		}),
		q(54015, {	-- In Deep
			["provider"] = { "n", 150196 },	-- First Arcanist Thalyssra
			["coord"] = { 41.9, 80.6, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuests"] = {
				55092,	-- Distruption of Power
				54012,	-- Fortunate Souls
				56063,	-- Dark Tides
			},
			["g"] = {
				i(168817),	-- Siphoning Crystal (QI!)
			},
		}),
		q(55593, {	-- Insight into Our Enemies
			["provider"] = { "n", 150101 },	-- Lady Jaina Proudmoore
			["coord"] = { 40.3, 55.2, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 54975,	-- A Brief Respite
		}),
		q(55862, {	-- Insight into Our Enemies
			["provider"] = { "n", 151848 },	-- Lor'themar Theron
			["coord"] = { 48.5, 62.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 56235,	-- Down Into Nazjatar
		}),
		q(56803, {	-- Just A Friend
			["description"] = "Offered when |cFFFFD700Vim Brineheart|r reaches rank 2.",
			["provider"] = { "n", 149906 },	-- Vim Brineheart
			["coord"] = { 50.8, 65.2, NAZJATAR },
			["races"] = HORDE_ONLY,
			--["sourceQuest"] =
		}),
		q(56150, {	-- Kill the Kritch (A)
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Hunter Akana|r as your friend.",
			["isDaily"] = true,
			["coord"] = { 45.0, 76.7, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 153537 },	-- Rlgmrr
		}),
		q(55873, {	-- Kill the Kritch (H)
			["provider"] = { "n", 153537 },	-- Rlgmrr
			["coord"] = { 44.9, 76.8, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 55500,	-- Save A Friend
		}),
		q(56216, {	-- Last Heirloom
			["providers"] = {
				{ "n", 154304 },	-- Farseer Ori (active bodyguard ID)
				{ "n", 149805 },	-- (inactive in front of the bonfire)
			},
			["description"] = "Offered when |cFFFFD700Farseer Ori|r reaches rank 20.",
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 120,
			["g"] = {
				i(170155, {	-- Carved Ankoan Charm (TOY!)
					["description"] = "Learning this toy also unlocks the Horde |cFF0070DEBook of the Unshackled|r toy.",
				}),
			},
		}),
		q(56095, {	-- Legacy of Nar'anan
			["provider"] = { "n", 154143 },	-- Collector Kojo
			["coord"] = { 66.4, 47.3, NAZJATAR },
			["sourceQuests"] = {
				56156,	-- A Tempered Blade
				55500,	-- Save A Friend
			},
		}),
		q(57086, {	-- Legacy of the Mad Mage
			["description"] = "Loot the Arcane Chest at the provided coordinates to get the item that starts this quest.",
			["provider"] = { "i", 170512 },	-- Lesser Benthic Arcanocrystal
			["coord"] = { 79.4, 27.2, NAZJATAR },
			["g"] = {
				currency(1721),	-- Prismatic Manapearls x7
				i(170547),	-- Mardivas's Arcane Cache Key (QI!)
			},
		}),
		q(55861, {	-- Let the Residue Lead You (A)
			["provider"] = { "n", 153385 },	-- Blademaster Okani
			["coord"] = { 38.8, 30.4, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuests"] = {
				55601,	-- Coveted Crystals
				55860,	-- Sea Slug Liquidation
			},
			["g"] = {
				i(168541),	-- Residue Detector (QI!)
			},
		}),
		q(55868, {	-- Let the Residue Lead You (H)
			["provider"] = { "n", 153422 },	-- Chief Telemancer Oculeth
			["coord"] = { 38.8, 30.4, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuests"] = {
				55867,	-- Coveted Crystals
				55870,	-- Sea Slug Liquidation
			},
			["g"] = {
				i(168541),	-- Residue Detector (QI!)
			},
		}),
		q(56146, {	-- Making Kelpberry Wine (A)
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Bladesman Inowari|r as your friend.",
			["provider"] = { "o", 325869 },	-- Empty Cask
			["isDaily"] = true,
			["coord"] = { 59.5, 42.0, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				o_repeated({
					i(168173),	-- Kelpberry (QI!)
					o(322791),	-- Kelpberry
					o(322803),	-- Kelpberry
				}),
				o(327221, {	-- Kelpberry Cask
					i(168174),	-- Cask of Kelpberry Juice (QI!)
				}),
			},
		}),
		q(55638, {	-- Making Kelpberry Wine (H)
			["coord"] = { 59.5, 41.8, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["provider"] = { "o", 325869 },	-- Empty Cask
			["sourceQuest"] = 55500,	-- Save A Friend
			["g"] = {
				i(168174),	-- Cask of Kelpberry Juice (QI!)
				i(168173),	-- Kelpberry (QI!)
			},
		}),
		q(55482, {	-- Making the Connection
			["provider"] = { "n", 152066 },	-- First Arcanist Thalyssra
			["coord"] = { 64.2, 52.0, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55469,	-- To Zin-Azshari
			["g"] = {
				i(168002),	-- Arcane Scroll (QI!)
				i(169147),	-- Cracked Sphere (QI!)
				i(169148),	-- Discarded Staff (QI!)
			},
		}),
		q(56266, {	-- Mgglurky's Mugglrgl
			["provider"] = { "n", 153884 },	-- King Mrgl-Mrgl
			["coord"] = { 25.5, 26.4, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["g"] = {
				i(168647),	-- Mgglurky's Mugglrgl (QI!)
			},
		}),
		q(55767, {	-- Misdirection
			["provider"] = { "n", 152985 },	-- Dani Bluegill
			["coord"] = { 31.2, 32.0, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 55500,	-- Save A Friend
			["g"] = {
				i(168300),	-- Dani's Treasure (QI!)
			},
		}),
		q(54949, {	-- More Mouths To Feed
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Hunter Akana|r as your friend.",
			["isDaily"] = true,
			["coord"] = { 35.0, 49.0, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 150123 },	-- Tracker Onu
			["g"] = {
				i(166905),	-- Hunting Knife (QI!)
				i(166904),	-- Snapshell Flesh (QI!)
			},
		}),
		q(56153, {	-- Most Delicious Clams (A)
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Bladesman Inowari|r as your friend.",
			["isDaily"] = true,
			["coord"] = { 45.6, 19.6, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 154239 },	-- Tracker Otaru
			["g"] = {
				i(168658),	-- Neptulian Clam (QI!)
				i(168672),	-- Rift Diver (QI!)
			},
		}),
		q(56035, {	-- Most Delicious Clams (H)
			["provider"] = { "n", 153900 },	-- Sardina Lauray
			["coord"] = { 48.7, 22.6, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 55500,	-- Save a Friend -- todo: verify sourceQuest. Most likely after unlocking the conch
			["description"] = "Requires |cFFFFD700Poen Gillbrack|r as your friend.",
			["g"] = {
				i(168658),	-- Neptulian Clam (QI!)
				i(168672),	-- Rift Diver (QI!)
			},
		}),
		q(56002, {	-- Mgglurky's Mugglrgl
			["provider"] = { "n", 153884 },	-- King Mrgl-Mrgl
			["coord"] = { 25.4, 26.3, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 56156,	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Farseer Ori|r as your friend.",
			["g"] = {
				i(168647),	-- Mgglurky's Mugglrgl (QI!)
			},
		}),
		q(56791, {	-- Mysterious Treasure
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Offered when |cFFFFD700Bladesman Inowari|r reaches Rank 13.",
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 154297 },	-- Bladesman Inowari
			["g"] = {
				i(169917),	-- Mysterious Azshari Chest (contained 1 stranged mineralized water, 2 battle-scarred augment runes, 16 gilded seaweave, 8 prismatic manapearls, and 115 war resources.  not sure if rewards are static or just "uhhh [throws random crafting materials/currency at you]"
			},
		}),
		q(56786, {	-- Naga Treasure
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Offered when |cFFFFD700Farseer Ori|r reaches Rank 13.",
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 154304 },	-- Farseer Ori
			["g"] = {
				i(169917),	-- Mysterious Azshari Chest
			},
		}),
		q(55529, {	-- No Backs
			["provider"] = { "n", 152084 },	-- Mrrl
			["coords"] = {
				{ 46.9, 61.4, NAZJATAR },	-- Alliance
				{ 39.1, 54.3, NAZJATAR },	-- Horde
			},
			["sourceQuests"] = {
				55983,	-- A Safer Place (A)
				55530,	-- A Safer Place (H)
			},
			["g"] = {
				i(168093),	-- Grimy Manapearl Bracelet
			},
		}),
		q(56422, {	-- On Ghostly Wings
			["provider"] = { "n", 154601 },	-- Kelya Moonfall
			["coord"] = { 80.2, 31.8, NAZJATAR },
			["sourceQuest"] = 56321,	-- Saving Corin
		}),
		q(55625, {	-- Pearls of Unimaginable Power
			["provider"] = { "n", 152407 },	-- Arcanist Owara
			["coord"] = { 31.5, 37.6, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 56156,	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Farseer Ori|r as your friend.",
			["g"] = {
				o(325759, {	-- Mana-Infused Clam
					["coords"] = {
						{ 28.8, 47.7, NAZJATAR },
						{ 29.0, 44.8, NAZJATAR },
						{ 29.9, 47.4, NAZJATAR },
						{ 30.3, 42.4, NAZJATAR },
						{ 30.3, 45.2, NAZJATAR },
						{ 31.6, 42.7, NAZJATAR },
						{ 31.9, 44.3, NAZJATAR },
						{ 32.3, 45.4, NAZJATAR },
						{ 32.3, 46.7, NAZJATAR },
						{ 33.0, 47.1, NAZJATAR },
						{ 33.0, 47.9, NAZJATAR },
						{ 34.4, 44.4, NAZJATAR },
						{ 37.0, 45.7, NAZJATAR },
					},
					["g"] = {
						i(168158),	-- Enchanted Pearl (QI!)
					},
				}),
			},
		}),
		q(55845, {	-- Plans of Attack
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Bladesman Inowari|r as your friend.",
			["provider"] = {"o",326148},	-- Naga Attack Plans
			["isDaily"] = true,
			["coord"] = { 37.2, 19.2, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(168396),	-- Assault Plans (QI!)
			},
		}),
		q(55877, {	-- Plug the Geysers (H)
			["sourceQuests"] = { 55500 },	-- Save a Friend
			["description"] = "Requires |cFFFFD700Vim Brineheart|r as your friend.",
			["provider"] = { "n", 153522 },	-- Scout Tuli
			["isDaily"] = true,
			["coord"] = { 48.0, 46.6, NAZJATAR },
			["races"] = HORDE_ONLY,
			["g"] = {
				i(168482),	-- Benthic Sealant (QI!)
			},
		}),
		q(56157, {	-- Plug the Geysers
			["provider"] = { "n", 154246 },	-- Apprentice Inari
			["coord"] = { 31.0, 37.7, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 56156,	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Farseer Ori|r as your friend.",
			["g"] = {
				i(168482),	-- Benthic Sealant (QI!)
			},
		}),
		q(56158, {	-- Plug the Geysers
			["sourceQuests"] = { 56156 },	-- A Tempered Blade (maybe add 57041 for selecting Farseer Ori for the day?)
			["description"] = "Requires |cFFFFD700Farseer Ori|r as your friend.",
			["isDaily"] = true,
			["coord"] = { 45.9, 76.6, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 154245 },	-- Apprentice Unato
			["g"] = {
				i(168482),	-- Benthic Sealant (QI!)
			},
		}),
		q(56159, {	-- Plug the Geysers (A)
			["sourceQuests"] = { 56156 },	-- A Tempered Blade (maybe add 57041 for selecting Farseer Ori for the day?)
			["description"] = "Requires |cFFFFD700Farseer Ori|r as your friend.",
			["isDaily"] = true,
			["coord"] = { 44.6, 45.2, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 154244 },	-- Apprentice Uataro
			["g"] = {
				i(168482),	-- Benthic Sealant (QI!)
			},
		}),
		q(56160, {	-- Plug the Geysers
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Bladesman Inowari|r as your friend.",	-- NOT Farseer Ori!
			["isDaily"] = true,
			["coord"] = { 71.5, 31.5, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 154243 },	-- Apprentice Aonari
			["g"] = {
				i(168482),	-- Benthic Sealant (QI!)
			},
		}),
		q(56155, {	-- Plug the Geysers
			["provider"] = { "n", 154247 },	-- Apprentice Utapo
			["coord"] = { 60.7, 50.2, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 56156,	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Farseer Ori|r as your friend.",
			["g"] = {
				i(168482),	-- Benthic Sealant (QI!)
			},
		}),
		q(55874, {	-- Plug the Geysers
			["provider"] = { "n", 153524 },	-- Scout Kleda
			["coord"] = { 60.6, 52.8, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Requires |cFFFFD700Vim Brineheart|r as your friend.",
			["g"] = {
				i(168482),	-- Benthic Sealant (QI!)
			},
		}),
		q(55875, {	-- Plug the Geysers
			["provider"] = { "n", 153834 },	-- Scout Tambrine
			["coord"] = { 33.5, 47.9, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Requires |cFFFFD700Vim Brineheart|r as your friend.",
			["g"] = {
				i(168482),	-- Benthic Sealant (QI!)
			},
		}),
		q(55876, {	-- Plug the Geysers
			["provider"] = { "n", 153833 },	-- Scout Newly
			["coord"] = { 48.2, 73.8, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Requires |cFFFFD700Vim Brineheart|r as your friend.",
			["g"] = {
				i(168482),	-- Benthic Sealant (QI!)
			},
		}),
		q(55878, {	-- Plug the Geysers
			["provider"] = { "n", 153833 },	-- Scout Newly
			["coord"] = { 48.2, 73.8, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Requires |cFFFFD700Vim Brineheart|r as your friend.",
			["g"] = {
				i(168482),	-- Benthic Sealant (QI!)
			},
		}),
		q(56151, {	-- Poen's Favorite Dish
			["provider"] = { "n", 151635 },	-- Slen Darkroe
			["coord"] = { 50.8, 64.7, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Requires |cFFFFD700Poen Gillbrack|r as your friend.",
			["g"] = {
				i(169234),	-- Fresh Unagi (QI!)
			},
		}),
		q(55637, {	-- Poor, Unfortunate Souls
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Bladesman Inowari|r as your friend.",
			["isDaily"] = true,
			["coord"] = { 74.2, 24.8, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 152494 },	-- Elycina Starcaller
		}),
		q(56241, {	-- Preserved Clues (A)
			["provider"] = { "n", 153510 },	-- Artisan Itanu
			["coord"] = { 37.8, 55.7, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56239,	-- Strange Silver Knife
		}),
		q(56242, {	-- Preserved Clues (H)
			["provider"] = { "n", 153514 },	-- Finder Palta
			["coord"] = { 49.2, 62.0, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 56240,	-- Strange Silver Knife
		}),
		q(55573, {	-- Purging the Defilers
			["sourceQuests"] = {
				55569,	-- Echoes of Pain
				55570,	-- Secrets in the Ruins
			},
			["coord"] = { 74.2, 40.2, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 153617 },	-- Shandris Feathermoon
		}),
		q(56050, {	-- PvP Event: Battle for Nazjatar
			["isWeekly"] = true,
			["description"] = "500 rep with your Nazjatar faction",
		}),
		q(56807, {	-- Real Friends Help Hide Bodies
			["providers"] = {
				{ "n", 151309 },	-- Kelfin Scout (Vim Brineheart)
				{ "n", 149906 },	-- Vim Brineheart
			},
			["description"] = "Offered when |cFFFFD700Vim Brineheart|r reaches Rank 13.",
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55500,	-- Save a Friend
			["g"] = {
				i(169922),	-- Vim's Gift of Appreciation
			},
		}),
		q(56970, {	-- Reefwalker Bark
			["repeatable"] = true,
			["cost"] = {
				{"i",170183,1},	-- Reefwalker Bark
			},
			["aqd"] = {
				["providers"] = {
					{ "n", 153509 },	-- Artisan Okata (A)
				},
				["coords"] = {
					{ 37.9, 55.7, NAZJATAR },	-- Alliance
				},
				["maxReputation"] = {FACTION_WAVEBLADE_ANKOAN,EXALTED},
			},
			["hqd"] = {
				["providers"] = {
					{ "n", 153512 },	-- Finder Pruc (H)
				},
				["coords"] = {
					{ 49.2, 62.2, NAZJATAR },	-- Horde
				},
				["maxReputation"] = {FACTION_THE_UNSHACKLED,EXALTED},
			},
		}),
		q(56788, {	-- Reclaimed Treasure
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Offered when |cFFFFD700Bladesman Inowari|r reaches Rank 5.",
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 154297 },	-- Bladesman Inowari
			["g"] = {
				i(169905),	-- Faintly Glowing Supplies
			},
		}),
		q(55728, {	-- Reinforced Cache
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Bladesman Inowari|r as your friend.",
			["provider"] = { "o", 326047 },	-- Reinforced Cache
			["isDaily"] = true,
			["coord"] = { 45.0, 22.1, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(168261),	-- Reinforced Cache Key (QI!)
			},
		}),
		q(56231, {	-- Reinforced Cache
			["sourceQuests"] = { 55500 },	-- Save a Friend
			["description"] = "Requires |cFFFFD700Vim Brineheart|r as your friend.",
			["provider"] = { "o", 326047 },	-- Reinforced Cache
			["isDaily"] = true,
			["coord"] = { 45.0, 22.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["g"] = {
				i(168261),	-- Reinforced Cache Key (QI!)
			},
		}),
		q(55659, {	-- Relics of the Sundering
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Hunter Akana|r as your friend.",
			["isDaily"] = true,
			["coord"] = { 78.9, 42.5, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 152532 },	-- Shirelle McFadden
			["g"] = {
				o(325883, {	-- Highborne Relic
					i(168186),	-- Highborne Relic (QI!)
				}),
			},
		}),
		q(55723, {	-- Requisition: A Few Carp
			["isDaily"] = true,
			["providers"] = {
				{ "n", 151352 },	-- Lily Bopip (H)
				{ "n", 155941 },	-- Tamer Orami (A)
			},
			["coords"] = {
				{ 39.5, 55.4, NAZJATAR },	-- (A)
				{ 47.3, 61.9, NAZJATAR },	-- (H)
			},
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save A Friend (H)
			},
		}),
		q(55726, {	-- Requisition: A Few Cone Shells
			["isDaily"] = true,
			["providers"] = {
				{ "n", 154436 },	-- Craftsman Azama (A)
				{ "n", 151633 },	-- Karn Deepweld (H)
			},
			["coords"] = {
				{ 38.0, 53.3, NAZJATAR },	-- Alliance
				{ 49.3, 61.5, NAZJATAR },	-- Karn Deepweld (H)
			},
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save a Friend (H)
			},
		}),
		q(55724, {	-- Requisition: A Few Deepcoral Buds
			["isDaily"] = true,
			["providers"] = {
				{ "n", 151772 },	-- Ray Tamer Enaka (A)
				{ "n", 153772 },	-- Lina Bluegill (H)
			},
			["coords"] = {
				{ 39.8, 54.1, NAZJATAR },	-- Alliance
				{ 47.4, 63.2, NAZJATAR },	-- Horde
			},
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save a Friend (H)
			},
		}),
		q(55727, {	-- Requisition: A Few Flotsam
			["isDaily"] = true,
			["providers"] = {
				{ "n", 153509 },	-- Artisan Okata (A)
				{ "n", 153512 },	-- Finder Pruc (H)
			},
			["coords"] = {
				{ 37.9, 55.7, NAZJATAR },	-- Alliance
				{ 49.2, 62.2, NAZJATAR },	-- Horde
			},
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save a Friend (H)
			},
		}),
		q(55721, {	-- Requisition: A Few Kelp Buds (also popped 56278, 56605)
			["isDaily"] = true,
			["providers"] = {
				{ "n", 153591 },	-- Mikah Brewbelly (A)
				{ "n", 151635 },	-- Slen Darkroe (H)
			},
			["coords"] = {
				{ 40.0, 55.6, NAZJATAR },	-- Alliance
				{ 50.8, 64.7, NAZJATAR },	-- Horde
			},
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save a Friend (H)
			},
		}),
		q(55720, {	-- Requisition: A Few Seaweed
			["isDaily"] = true,
			["providers"] = {
				{ "n", 151763 },	-- Isla (A)
				{ "n", 151614 },	-- Nevin Tideheart (H)
			},
			["coords"] = {
				{ 37.8, 55.4, NAZJATAR },	-- Alliance
				{ 50.4, 66.2, NAZJATAR },	-- Horde
			},
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save A Friend (H)
			},
		}),
		q(55725, {	-- Requisition: A Few Spiral Leaf
			["isDaily"] = true,
			["providers"] = {
				{ "n", 151763 },	-- Isla (A)
				{ "n", 151614 },	-- Nevin Tideheart (H)
			},
			["coords"] = {
				{ 37.7, 55.3, NAZJATAR },	-- alliance
				{ 50.4, 66.2, NAZJATAR },	-- horde
			},
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save A Friend (H)
			},
		}),
		q(55719, {	-- Requisition: A Few Starfish
			["isDaily"] = true,
			["providers"] = {
				{ "n", 154436 },	-- Craftsman Azama
			--	,	--  (Horde)
			},
			["coords"] = {
				{ 38.0, 53.3, NAZJATAR },	-- Alliance
			--	{ , , NAZJATAR },	-- Horde
			},
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save A Friend (H)
			},
		}),
		q(55789, {	-- Requisition: More Carp
			["isDaily"] = true,
			["providers"] = {
				{ "n", 155941 },	-- Tamer Orami (A)
				{ "n", 151352 },	-- Lily Bopip  (H)
			},
			["coords"] = {
				{ 39.5, 55.4, NAZJATAR },	-- Alliance
				{ 47.3, 61.9, NAZJATAR },	-- Horde
			},
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save A Friend (H)
			},
		}),
		q(55792, {	-- Requisition: More Cone Shells
			["isDaily"] = true,
			["providers"] = {
				{ "n", 154436 },	-- Craftsman Azama (A)
				{ "n", 151633 },	-- Karn Deepweld (H)
			},
			["coords"] = {
				{ 38.0, 53.4, NAZJATAR },	-- Alliance
				{ 49.3, 61.5, NAZJATAR },	-- Horde
			},
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save a Friend (H)
			},
		}),
		q(55790, {	-- Requisition: More Deepcoral Buds
			["isDaily"] = true,
			["providers"] = {
				{ "n", 151772 },	-- Ray Tamer Enaka (A)
				{ "n", 153772 },	-- Lina Bluegill (H)
			},
			["coords"] = {
				{ 39.8, 54.1, NAZJATAR },	-- Alliance
				{ 47.4, 63.2, NAZJATAR },	-- Horde
			},
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save a Friend (H)
			},
		}),
		q(55793, {	-- Requisition: More Flotsam
			["isDaily"] = true,
			["providers"] = {
				{ "n", 153509 },	-- Artisan Okata (A)
				{ "n", 153512 },	-- Finder Pruc (H)
			},
			["coords"] = {
				{ 37.9, 55.6, NAZJATAR },	-- Alliance
				{ 49.2, 62.2, NAZJATAR },	-- Horde
			},
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save a Friend (H)
			},
		}),
		q(55787, {	-- Requisition: More Kelp Buds
			["isDaily"] = true,
			["providers"] = {
				{ "n", 153591 },	-- Mikah Brewbelly (A)
				{ "n", 151635 },	-- Slen Darkroe (H)
			},
			["coords"] = {
				{ 40.1, 55.6, NAZJATAR },	-- Alliance
				{ 50.8, 64.7, NAZJATAR },	-- Horde
			},
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save A Friend (H)
			},
		}),
		q(55786, {	-- Requisition: More Seaweed
			["isDaily"] = true,
			["providers"] = {
				{ "n", 151763 },	-- Isla (A)
				{ "n", 151614 },	-- Nevin Tideheart (H)
			},
			["coords"] = {
				{ 37.8, 55.4, NAZJATAR },	-- Alliance
				{ 50.4, 66.2, NAZJATAR },	-- Horde
			},
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save a Friend (H)
			},
		}),
		q(55791, {	-- Requisition: More Spiral Leaf
			["isDaily"] = true,
			["providers"] = {
				{ "n", 151763 },	-- Isla (A)
				{ "n", 151614 },	-- Nevin Tideheart (H)
			},
			["coords"] = {
				{ 37.8, 55.4, NAZJATAR },	-- Alliance
				{ 50.4, 66.2, NAZJATAR },	-- Horde
			},
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save a Friend (H)
			},
		}),
		q(55785, {	-- Requisition: More Starfish
			["isDaily"] = true,
			["providers"] = {
				{ "n", 154436 },	-- Craftsman Azama (A)
				{ "n", 151633 },	-- Karn Deepweld (H)
			},
			["coords"] = {
				{ 37.9, 53.4, NAZJATAR },	-- Alliance
				{ 49.3, 61.5, NAZJATAR },	-- Horde
			},
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save a Friend (H)
			},
		}),
		q(55801, {	-- Requisition: We Need It All
			["isDaily"] = true,
			["providers"] = {
				{ "n", 151618 },	-- Asme Seapearl (H)
				{ "n", 155940 },	-- Enizo (A)
			},
			["coords"] = {
				{ 37.7, 55.4, NAZJATAR },	-- Alliance
				{ 50.9, 65.7, NAZJATAR },	-- Horde
			},
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save A Friend (H)
			},
		}),
		q(55363, {	-- Rescue The Farseer
			["provider"] = { "n", 151741 },	-- Apprentice Odari
			["coord"] = { 43.4, 49.8, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 55361,	-- The Lost Shaman
			["g"] = {
				i(167784),	-- Prison Key (QI!)
			},
		}),
		q(57024, {	-- Rumors of Mechagon
			["provider"] = { "n", 156187 },	-- Disgruntled Laborer
			["coords"] = {
				{ 48.4, 60.6, NAZJATAR },
				{ 50.1, 92.8, DAZARALOR },
			},
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55500,	-- Save A Friend
			["isBreadcrumb"] = true,
		}),
		q(55600, {	-- Sating Snapdragons (A)
			["provider"] = { "n", 153936 },	-- Overseer Hajeer
			["coord"] = { 36.9, 27.0, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 55599,	-- Scouting Undercover
			["g"] = {
				i(168753),	-- Chitterspine Roe (QI!)
			},
		}),
		q(55967, {	-- Sating Snapdragons (H)
			["provider"] = { "n", 153936 },	-- Overseer Hajeer
			["coord"] = { 36.9, 27.0, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55866,	-- Scouting Undercover
			["g"] = {
				i(168753),	-- Chitterspine Roe (QI!)
			},
		}),
		q(55500, {	-- Save a Friend
			["provider"] = { "n", 152047 },	-- Poen Gillbrack
			["coord"] = { 38.8, 42.4, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55385,	-- Scouting the Pens
			["description"] = "Unlocks the rest of the zone and opens up World Quests.",
			["g"] = {
				spell(304906),	-- World Quests
			},
		}),
		q(56321, {	-- Saving Corin
			["provider"] = { "n", 154514 },	-- Kelya Moonfall
			["coord"] = { 80.0, 31.4, NAZJATAR },
			["sourceQuest"] = 56304,	-- The High Life
		}),
		q(56350, {	-- Scouting the Palace
			["provider"] = { "n", 150101 },	-- Lady Jaina Proudmoore
			["coord"] = { 40.2, 55.2, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuests"] = {
				56162,	-- Back Out to Sea (optional quest, but not an actual breadcrumb)
				57010,	-- Harnessing the Power
			},
			["g"] = {
				i(169482),	-- Benthic Leggings
				i(169483),	-- Benthic Treads
				i(169485),	-- Benthic Gauntlets
				currency(1721),	-- Prismatic Manapearls x20
			},
		}),
		q(55481, {	-- Scouting the Palace
			["provider"] = { "n", 151848 },	-- Lor'themar Theron
			["coord"] = { 48.5, 62.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuests"] = {
				56161,	-- Back Out to Sea (optional quest, but not an actual breadcrumb)
				57010,	-- Harnessing the Power
			},
			["g"] = {
				i(169482),	-- Benthic Leggings
				i(169483),	-- Benthic Treads
				i(169485),	-- Benthic Gauntlets
				currency(1721),	-- Prismatic Manapearls
			},
		}),
		q(55385, {	-- Scouting the Pens
			["provider"] = { "n", 152108 },	-- Kelfin Scout (neri sharpfin)
			["coord"] = { 49.7, 64.5, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55384,	-- Settling In
		}),
		q(55599, {	-- Scouting Undercover
			["provider"] = { "n", 153496 },	-- Adaru
			["coord"] = { 38.9, 30.3, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 55598,	-- What We Know of the Naga
		}),
		q(55866, {	-- Scouting Undercover
			["provider"] = { "n", 153492 },	-- Fenn
			["coord"] = { 38.9, 30.3, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55865,	-- What We Know of the Naga
		}),
		q(56211, {	-- Scrying Stones
			["provider"] = { "n", 153509 },	-- Artisan Okata
			["coord"] = { 37.8, 55.8, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56156,	-- A Tempered Blade
			["g"] = {
				i(169817),	-- Scrying Stone (QI!)
			},
		}),
		q(56210, {	-- Scrying Stones
			["provider"] = { "n", 153512 },	-- Finder Pruc
			["coord"] = { 49.0, 62.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55500,	-- Save A Friend
			["g"] = {
				i(169817),	-- Scrying Stone (QI!)
			},
		}),
		q(55860, {	-- Sea Slug Liquidation (A)
			["provider"] = { "n", 153385 },	-- Blademaster Okani
			["coord"] = { 38.8, 30.4, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56037,	-- Stealing the Naga's Secrets
			["g"] = {
				i(168539),	-- Bioluminescent Ooze (QI!)
			},
		}),
		q(55870, {	-- Sea Slug Liquidation (H)
			["provider"] = { "n", 153422 },	-- Chief Telemancer Oculeth
			["coord"] = { 38.8, 30.4, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 56045,	-- Stealing the Naga's Secrets
			["g"] = {
				i(168539),	-- Bioluminescent Ooze (QI!)
			},
		}),
		q(55570, {	-- Secrets in the Ruins
			["sourceQuests"] = {	-- may not require other two, definitely requires *
				55565,	-- Shoring Up Mana Reserves
				55694,	-- There's Something in the Water
				55560,	-- Utama's Vengeance
			},
			["coord"] = { 74.6, 25.9, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 153617 },	-- Shandris Feathermoon
		}),
		q(55486, {	-- Secrets of Telemancy
			["provider"] = { "n", 152316 },	-- Image of Thalyssra
			["coord"] = { 76.4, 29.8, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55485,	-- Terrors in the Deep
			["g"] = {
				i(168201),	-- Oculeth's Notes (QI!)
			},
		}),
		q(55384, {	-- Settling In
			["provider"] = { "n", 149904 },	-- Neri Sharpfin
			["coord"] = { 49.7, 64.6, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55481,	-- Scouting the Palace
		}),
		q(55766, {	-- She Sells These Shells
			["provider"] = { "n", 153006 },	-- Bren Inkfin
			["isDaily"] = true,
			["coord"] = { 38.0, 48.6, NAZJATAR },
			["sourceQuest"] = 55500,	-- Save A Friend
			["races"] = HORDE_ONLY,
			["g"] = {
				i(167538),	-- Unmarked Seashell (QI!)
			},
		}),
		q(55565, {	-- Shoring Up Mana Reserves
			["sourceQuests"] = { 55561 },	-- What Remains of Zin-Azshari
			["coord"] = { 66.0, 43.6, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 153617 },	-- Shandris Feathermoon
			["g"] = {
				i(168241),	-- Elemental Core (QI!)
			},
		}),
		q(56118, {	-- Snap Back
			["provider"] = { "n", 154143 },	-- Collector Kojo
			["coord"] = { 66.4, 47.3, NAZJATAR },
			["sourceQuests"] = {
				56156,	-- A Tempered Blade
				55500,	-- Save A Friend
			},
			["g"] = {
				i(168947),	-- Scroll of Bursting Power (QI!)
			},
		}),
		q(55701, {	-- Snapdragon Claws
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Hunter Akana|r as your friend.",
			["isDaily"] = true,
			["coord"] = { 62.5, 51.7, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 152737 },	-- Tracker Ikuto
			["g"] = {
				i(168247),	-- Snapdragon Claw (QI!)
			},
		}),
		q(55488, {	-- Speak with the Dead
			["provider"] = { "n", 152316 },	-- Image of Thalyssra
			["coord"] = { 76.4, 29.8, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55485,	-- Terrors in the Deep
		}),
		q(55094, {	-- Stay Low, Stay Fast!
			["provider"] = { "n", 150209 },	-- Neri Sharpfin
			["coord"] = { 37.2, 67.3, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 56429,	-- Up Against It
		}),
		q(56037, {	-- Stealing the Naga's Secrets (A)
			["coord"] = { 34.6, 21.1, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "o", 327170 },	-- Weapon Rack
			["sourceQuest"] = 56039,	-- We Can't Have Dull Weapons
			["g"] = {
				i(168515),	-- Azerite Trident (QI!)
			},
		}),
		q(56045, {	-- Stealing the Naga's Secrets (H)
			["coord"] = { 34.6, 21.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["provider"] = { "o", 327170 },	-- Weapon Rack
			["sourceQuest"] = 56047,	-- We Can't Have Dull Weapons
			["g"] = {
				o(326611, {
					["coord"] = { 34.7, 21.1, NAZJATAR },
					["g"] = { i(168516) },	-- Azerite Trident (QI!)
				}),
			},
		}),
		q(56075, {	-- Stolen Power
			["provider"] = { "n", 154064 },	-- Axol Darksea
			["coord"] = { 59.0, 19.0, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["g"] = {
				i(168841),	-- Scroll of Shirakess (QI!)
			},
		}),
		q(56239, {	-- Strange Silver Knife (A)
			["description"] = "Obtained from the first Arcane Chest you find.",
			["provider"] = { "i", 169215 },	-- Silver Knife
			["races"] = ALLIANCE_ONLY,
		}),
		q(56240, {	-- Strange Silver Knife (H)
			["description"] = "Obtained from the first Arcane Chest you find.",
			["provider"] = { "i", 169216 },	-- Silver Knife
			["races"] = HORDE_ONLY,
		}),
		q(56830, {	-- Summons from the Deep
			["description"] = "This event takes place every 3 hours (based on realm time, it starts at 3:00, 6:00, 9:00, and 12:00 for NA realms; 1:00, 4:00, 7:00, and 10:00 for EU realms).  A zonewide announcement will say \"|cffe1780cThe air crackles with power as Azshara's forces begin summoning a minion from the depths|r,\" and a purple skull will appear on your map to indicate where the event is taking place.",
			["isDaily"] = true,
			["coords"] = {
				{ 48.5, 40.4, NAZJATAR },
				{ 58.2, 28.7, NAZJATAR },
			},
			["crs"] = { -- not sure if there are any other bosses that get summoned
				153306,	-- Azsh'ari Leviathan
				153308,	-- Fury of Azshara
				153307,	-- Unleashed Arcanofiend
			},
			["g"] = {
				ach(13763),	-- Back to the Depths!
				i(170081, {	-- Abyssal Conch (A)
					["races"] = ALLIANCE_ONLY,
				}),
				i(170079, {	-- Abyssal Conch (H)
					["races"] = HORDE_ONLY,
				}),
			},
		}),
		q(56809, {	-- Super Friends
			["provider"] = { "n", 151310 },	-- Kelfin Scout (Poen Gillbrack)
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Offered when |cFFFFD700Poen Gillbrack|r reaches Rank 5.",
			["races"] = HORDE_ONLY,
			["g"] = {
				i(169909, {	-- Poen's Neat Things
					i(169942),	-- Vibrant Sea Blossom
				}),
			},
		}),
		q(56817, {	-- Thank You For Being A Friend
			["provider"] = { "n", 151300 },	-- Kelfin Scout (Neri Sharpfin)
			["description"] = "Offered when |cFFFFD700Neri Sharpfin|r reaches rank 13.",
			["races"] = HORDE_ONLY,
			["g"] = {
				i(169920),	-- Neri's Spare Supplies
			},
		}),
		q(55485, {	-- Terrors in the Deep
			["provider"] = { "n", 152066 },	-- First Arcanist Thalyssra
			["coord"] = { 64.2, 52.0, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55482,	-- Making the Connection
		}),
		q(56805, {	-- That's What Friends Are For
			["providers"] = {
				{ "n", 151309 },	-- Kelfin Scout (Vim Brineheart)
				{ "n", 149906 },	-- Vim Brineheart
			},
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Offered when |cFFFFD700Vim Brineheart|r reaches Rank 7.",
			["races"] = HORDE_ONLY,
			["g"] = {
				i(169919),	-- Unshackled Commendation Crate
			},
		}),
		q(55665, {	-- The Dark Garden
			["provider"] = { "n", 152787 },	-- Moris Criz
			["coord"] = { 56.0, 18.4, NAZJATAR },
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Requires |cFFFFD700Poen Gillbrack|r as your friend.",
			["isDaily"] = true,
			["races"] = HORDE_ONLY,
			["g"] = {
				i(169345),	-- Purified Water (QI!)
			},
		}),
		q(56358, {	-- The Eternal Palace: Queen's Gambit (A)
			["sourceQuests"] = { 56325 },	-- Changing Tides
			["coord"] = { 50.4, 24.1, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 153253 },	-- Lady Jaina Proudmoore
		}),
		q(56356, {	-- The Eternal Palace: Queen's Gambit (H)
			["provider"] = { "n", 153251 },	-- Lor'themar Theron
			["coord"] = { 50.6, 24.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55799,	-- The Tide Turns
		}),
		q(56348, {	-- The Eternal Palace: We Can Make It Stronger... (A)
			["provider"] = { "n", 154257 },	-- Instructor Ulooaka
			["coord"] = { 37.9, 52.9, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56347,	-- An Abyssal Opportunity
			["g"] = {
				i(169329),	-- Eternal Ornament (QI!)
			},
		}),
		q(56352, {	-- The Eternal Palace: We Can Make It Stronger... (H)
			["provider"] = { "n", 154408 },	-- Rolm
			["coord"] = { 49.3, 61.8, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 56353,	-- An Abyssal Opportunity
			["g"] = {
				i(169329),	-- Eternal Ornament (QI!)
			},
		}),
		q(56349, {	-- The Eternal Palace: Pushing the Limits (A)
			["provider"] = { "n", 154257 },	-- Instructor Ulooaka
			["coord"] = { 37.9, 52.9, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56348,	-- The Eternal Palace: We Can Make It Stronger... (A)
			["g"] = {
				i(169329),	-- Eternal Ornament (QI!)
			},
		}),
		q(56351, {	-- The Eternal Palace: Pushing the Limits (H)
			["provider"] = { "n", 154408 },	-- Rolm
			["coord"] = { 49.3, 61.8, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 56352,	-- The Eternal Palace: We Can Make It Stronger... (H)
			["g"] = {
				i(169329),	-- Eternal Ornament (QI!)
			},
		}),
		q(56311, {	-- The Ever Drowning (A)
			["provider"] = { "n", 154660 },	-- Shandris Feathermoon
			["coord"] = { 73.9, 41.7, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56309,	-- City of Drowned Friends
		}),
		q(56312, {	-- The Ever Drowning (H)
			["provider"] = { "n", 154661 },	-- First Arcanist Thalyssra
			["coord"] = { 73.9, 41.7, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 56310,	-- City of Drowned Friends
			["description"] = "Dodge the fleeing civilians.",
		}),
		q(56143, {	-- The Fate of Professor Elryna
			["provider"] = { "n", 154143 },	-- Collector Kojo
			["coord"] = { 66.4, 47.3, NAZJATAR },
			["sourceQuests"] = {
				56095,	-- Legacy of Nar'anan
				56118,	-- Snap Back
			},
			["g"] = {
				i(169207),	-- Memory Core (QI!)
				i(169209),	-- Scroll of Bursting Power (QI!)
			},
		}),
		q(54021, {	-- The First Arcanist
			["provider"] = { "n", 150207 },	-- Lor'thermar Theron
			["coord"] = { 36.3, 82.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 54018,	-- Descent
		}),
		q(55489, {	-- The Handmaiden's Tale
			["provider"] = { "n", 152316 },	-- Image of Thalyssra
			["coord"] = { 76.4, 29.8, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuests"] = {
				55486,	-- Secrets of Telemancy
				55488,	-- Speak with the Dead
			},
			["g"] = {
				i(168212),	-- Javelin of Suramar (QI!)
			},
		}),
		q(55751, {	-- The Heart of the Water
			["provider"] = { "n", 153685 },	-- Mari Lazarfin
			["coord"] = { 60.8, 30.9, NAZJATAR },
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Requires |cFFFFD700Poen Gillbrack|r as your friend.",
			["isDaily"] = true,
			["races"] = HORDE_ONLY,
			["g"] = {
				i(168809),	-- Living Droplet (QI!)
			},
		}),
		q(56304, {	-- The High Life
			["provider"] = { "n", 154574 },	-- Kelya Moonfall
			["coord"] = { 74.2, 24.9, NAZJATAR },
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save a Friend (H)
			},
		}),
		q(55574, {	-- The Javelins of Azshara
			["sourceQuests"] = {
				55573,	-- Purging the Defilers
				56739,	-- The Power of Worship
			},
			["coord"] = { 74.2, 40.2, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 153617 },	-- Shandris Feathermoon
			["g"] = {
				i(168212),	-- Javelin of Suramar (QI!)
			},
		}),
		q(56783, {	-- The Lambent Lockbox
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Offered when |cFFFFD700Farseer Ori|r reaches Rank 5.",
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 154304 },	-- Farseer Ori
			["g"] = {
				i(169905),	-- Faintly Glowing Supplies
			},
		}),
		q(55361, {	-- The Lost Shaman
			["provider"] = { "n", 151626 },	-- Hunter Akana
			["coord"] = { 39.4, 53.5, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56350,	-- Scouting the Palace
		}),
		q(56785, {	-- The Mystic Chest
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Offered when |cFFFFD700Farseer Ori|r reaches Rank 9.",
			["races"] = ALLIANCE_ONLY,
			["providers"] = {	-- add other two bodyguards/friends/whatever
				{ "n", 154304 },	-- Farseer Ori
			},
			["g"] = {
				i(169911, {	-- Liberated Naga Cache
					currency(1721),	-- Prismatic Manapearl x10
				--	i(168185),	-- Osmenite Ore x11
				}),
			},
		}),
		q(56739, {	-- The Power of Worship
			["sourceQuests"] = { 55571 },	-- Help Them See the Truth
			["coord"] = { 54.2, 20.8, 1499 },	-- a temple... thing?  not sure the actual map's name
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 152238 },	-- Riathia Silverstar
		}),
		q(55864, {	-- The Price is Death
			["provider"] = { "n", 151300 },	-- Kelfin Scout (Neri Sharpfin)
			["coord"] = { 48.5, 62.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55862,	-- Insight into Our Enemies
		}),
		q(56782, {	-- The Speaker's Gift (also gave credit for Horde quest 56803 "Just a Friend")
			["provider"] = { "n", 154304 },	-- Waveblade Shaman (Farseer Ori)
			["races"] = ALLIANCE_ONLY,
			["description"] = "Offered when |cFFFFD700Farseer Ori|r reaches rank 2.",
			["g"] = {
				i(169903),	-- Nazjatar Survival Pack
			},
		}),
		q(56741, {	-- The Spear of Destiny
			["sourceQuests"] = { 55574 },	-- The Javelins of Azshara
			["coord"] = { 74.2, 40.2, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 153617 },	-- Shandris Feathermoon
		}),
		q(55799, {	-- The Tide Turns
			["provider"] = { "n", 151848 },	-- Lor'themar Theron
			["coord"] = { 48.5, 62.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55490,	-- We'll Poke Their Eye Out
		}),
		q(56313, {	-- The Warbringer (A)
			["provider"] = { "n", 155071 },	-- Shandris Feathermoon
			["coord"] = { 79.7, 44.9, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56311,	-- The Ever Drowning
		}),
		q(56314, {	-- The Warbringer (H)
			["provider"] = { "n", 155325 },	-- First Arcanist Thalyssra
			["coord"] = { 79.7, 44.9, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 56312,	-- The Ever Drowning
		}),
		q(55694, {	-- There's Something in the Water
			["sourceQuests"] = { 55558 },	-- A Bolt Hole
			["coord"] = { 62.4, 36.0, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 151000 },	-- Blademaster Okani
		}),
		q(55633, {	-- The Sunken Chest
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Bladesman Inowari|r as your friend.",
			["provider"] = { "o", 325795 },	-- Sunken Chest
			["isDaily"] = true,
			["coord"] = { 45.7, 83.7, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(168167),	-- Brass Key (QI!)
			},
		}),
		q(56315, {	-- They Made Their Choice (A)
			["provider"] = { "n", 155071 },	-- Shandris Feathermoon
			["coord"] = { 79.7, 44.9, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56313,	-- The Warbringer
		}),
		q(56316, {	-- They Made Their Choice (H)
			["provider"] = { "n", 155325 },	-- First Arcanist Thalyssra
			["coord"] = { 79.7, 44.9, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 56314,	-- The Warbringer
		}),
		q(56219, {	--	Tome of Tears
			["provider"] = { "n", 151309 },	-- Vim Brineheart
			["description"] = "Offered when |cFFFFD700Vim Brineheart|r reaches rank 20.",
			["races"] = HORDE_ONLY,
			["lvl"] = 120,
			["g"] = {
				i(170154, {	-- Book of the Unshackled (TOY!)
					["description"] = "Learning this toy also unlocks the Alliance |cFF0070DECarved Ankoan Charm|r toy.",
				}),
			},
		}),
		q(55883, {	-- To Soar Like a Ray
			["provider"] = { "n", 153321 },	-- Ian Langill
			["coord"] = { 52.7, 52.8, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 55500,	-- Save a Friend
			["g"] = {
				i(168421),	-- Fathom Ray Egg (QI!)
				i(168425),	-- Swim Jet (QI!)
			},
		}),
		q(55469, {	-- To Zin-Azshari
			["provider"] = { "n", 151848 },	-- Lor'themar Theron
			["coord"] = { 48.5, 62.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 56236,	-- Down But Not Out
		}),
		q(56781, {	-- Treasure in the Deep
			["description"] = "Offered when |cFFFFD700Hunter Akana|r reaches rank 20.",
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 150202 },	-- Hunter Akana
			["g"] = {
				i(169917),	-- Mysterious Azshari Cache
			},
		}),
		q(56247, {	-- Treasure Tale (A)
			["coord"] = { 78.8, 41.1, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "o", 327592 },	-- Enchanted Lock
			["sourceQuest"] = 56246,	-- Enchanted Lock
			["g"] = {
				spell(305101),	-- Curios of Nazjatar
			},
		}),
		q(56248, {	-- Treasure Tale (H)
			["coord"] = { 78.8, 41.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["provider"] = { "o", 327592 },	-- Enchanted Lock
			["sourceQuest"] = 56245,	-- Enchanted Lock
			["g"] = {
				spell(305101),	-- Curios of Nazjatar
			},
		}),
		q(56790, {	-- Treasure to Find
			["description"] = "Offered when |cFFFFD700Bladesman Inowari|r reaches rank 9.",
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 154297 },	-- Bladesman Inowari
			["g"] = {
				i(169911, {	-- Liberated Naga Cache
					currency(1721),	-- Prismatic Manapearls x10 — also contained 10x osmenite ore, but not sure if that's a static reward
				}),
			},
		}),
		q(56152, {	-- Turn the Scale (A)
			["description"] = "Requires |cFFFFD700Hunter Akana|r as your friend.",
			["provider"] = { "n", 154238 },	-- Tracker Akatani
			["coord"] = { 31.2, 37.5, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["g"] = {
				i(168519),	-- Hydra Scale (QI!)
			},
		}),
		q(55980, {	-- Turn the Scale (H)
			["description"] = "Requires |cFFFFD700Vim Brineheart|r as your friend.",
			["provider"] = { "n", 153543 },	-- Krato Flipperfoot
			["coord"] = { 34.4, 37.8, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["g"] = {
				i(168519),	-- Hydra Scale (QI!)
			},
		}),
		q(55032, {	-- Unchained Resistance
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Hunter Akana|r as your friend.",
			["isDaily"] = true,
			["coord"] = { 48.4, 52.5, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 150553 },	-- Tracker Okaju
			["g"] = {
				i(167070),	-- Nazjatar Shackle Key (QI!)
			},
		}),
		q(56644, {	-- Up Against it (A)
			["provider"] = { "n", 150101 },	-- Lady Jaina Proudmoore
			["coord"] = { 45.5, 74.9, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56643,	-- In Deep
		}),
		q(56429, {	-- Up Against It (H)
			["provider"] = { "n", 150196 },	-- First Arcanist Thalyssra
			["coord"] = { 38.5, 76.1, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 54015,	-- In Deep
		}),
		q(55095, {	-- Upheaval (A)
			["provider"] = { "n", 150087 },	-- Genn Greymane
			["coord"] = { 48.2, 92.7, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56043,	-- Send the Fleet
		}),
		q(55054, {	-- Upheaval (H)
			["provider"] = { "n", 150187 },	-- Nathanos Blightcaller
			["coord"] = { 36.7, 93.5, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 56044,	-- Send the Fleet
		}),
		q(55560, {	-- Utama's Vengeance
			["sourceQuests"] = { 55558 },	-- A Bolt Hole
			["coord"] = { 62.4, 36.0, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 151000 },	-- Blademaster Okani
		}),
		q(55714, {	-- Void Cache (A)
			["sourceQuests"] = { 56156 },	-- A Tempered Blade (maybe add 57041 for selecting Farseer Ori for the day?)
			["provider"] = { "o", 326026 },	-- Void Cache
			["description"] = "Requires |cFFFFD700Farseer Ori|r as your friend.",
			["isDaily"] = true,
			["coord"] = { 56.3, 15.0, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(168260),	-- Void Cache Key (QI!)
			},
		}),
		q(56232, {	-- Void Cache (H)
			["coord"] = { 56.3, 15.0, NAZJATAR },
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Requires |cFFFFD700Neri Sharpfin|r as your friend.",
			["isDaily"] = true,
			["races"] = HORDE_ONLY,
			["g"] = {
				i(168260),	-- Void Cache Key (QI!)
			},
		}),
		q(55777, {	-- Wanted: Braxicus
			["coord"] = { 39.1, 54.1, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["provider"] = { "o", 326140 },	-- Bounty Board
			["description"] = "Requires |cFFFFD700Hunter Akana|r as your friend.",
			["g"] = {
				i(168324),	-- Braxicus' Giant Claw (QI!)
			},
		}),
		q(55770, {	-- WANTED: Commander Sarj'eth (A)
			["coord"] = { 39.1, 54.1, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["provider"] = { "o", 326141 },	-- Bounty Board
			["description"] = "Requires |cFFFFD700Farseer Ori|r as your friend.",
			["g"] = {
				i(168317),	-- Commander Sarj'eth's Head (QI!)
			},
		}),
		q(56223, {	-- Wanted: Commander Sarj'eth (H)
			["coord"] = { 47.9, 61.3, NAZJATAR },
			["isDaily"] = true,
			["provider"] = { "o", 327585 },	-- Bounty Board
			["races"] = HORDE_ONLY,
			["g"] = {
				i(168317),	-- Commander Sarj'eth's Head (QI!)
			},
		}),
		q(55776, {	-- WANTED: Emorneth
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Hunter Akana|r as your friend.",
			["provider"] = { "o", 326140 },	-- Bounty Board
			["isDaily"] = true,
			["coord"] = { 39.2, 54.1, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
		}),
		q(55773, {	-- WANTED: Gler'thogg (A)
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Bladesman Inowari|r as your friend.",
			["provider"] = { "o", 326142 },	-- Bounty Board
			["isDaily"] = true,
			["coord"] = { 39.2, 54.1, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(168321),	-- Eye of Gler'thogg (QI!)
			},
		}),
		q(56226, {	-- WANTED: Gler'thogg (H)
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Requires |cFFFFD700Vim Brineheart|r as your friend.",
			["provider"] = { "o", 326142 },	-- Bounty Board
			["isDaily"] = true,
			["coord"] = { 48.0, 61.5, NAZJATAR },
			["races"] = HORDE_ONLY,
			["g"] = {
				i(168321),	-- Eye of Gler'thogg (QI!)
			},
		}),
		q(55775, {	-- WANTED: Haggronar
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Hunter Akana|r as your friend.",
			["provider"] = { "o", 326140 },	-- Bounty Board
			["isDaily"] = true,
			["coord"] = { 39.2, 54.1, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(168323),	-- Haggronar's Head (QI!)
			},
		}),
		q(55774, {	-- WANTED: Inquisitor Ithriza (A)
			["sourceQuests"] = { 56156 },	-- A Tempered Blade (maybe add 57041 for selecting Farseer Ori for the day?)
			["description"] = "Requires |cFFFFD700Farseer Ori|r as your friend.",
			["provider"] = {"o",326141},	-- Bounty Board
			["isDaily"] = true,
			["coord"] = { 39.2, 54.1, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(168322),	-- Inquisitor Ithriza's Head (QI!)
			},
		}),
		q(56227, {	-- WANTED: Inquisitor Ithriza (H)
			["coord"] = { 47.9, 61.3, NAZJATAR },
			["isDaily"] = true,
			["provider"] = { "o", 327585 },	-- Bounty Board
			["races"] = HORDE_ONLY,
			["g"] = {
				i(168322),	-- Inquisitor Ithriza's Head (QI!)
			},
		}),
		q(55772, {	-- WANTED: Lady Narjiss (A)
			["coord"] = { 39.1, 54.1, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["provider"] = { "o", 326141 },	-- Bounty Board
			["description"] = "Requires |cFFFFD700Farseer Ori|r as your friend.",
			["g"] = {
				i(168319),	-- Lady Narjiss' Head (QI!)
			},
		}),
		q(56225, {	-- Wanted: Lady Narjiss (H)
			["description"] = "Requires |cFFFFD700Neri Sharpfin|r as your friend.",
			["coord"] = { 47.9, 61.3, NAZJATAR },
			["isDaily"] = true,
			["provider"] = { "o", 327585 },	-- Bounty Board
			["races"] = HORDE_ONLY,
			["g"] = {
				i(168319),	-- Lady Narjiss' Head (QI!)
			},
		}),
		q(55750, {	-- WANTED: Lady Naz'jess
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Bladesman Inowari|r as your friend.",
			["provider"] = { "o", 326142 },	-- Bounty Board
			["isDaily"] = true,
			["coord"] = { 39.1, 54.1, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				i(168265),	-- Lady Naz'jess' Head (QI!)
			},
		}),
		q(56222, {	-- WANTED: Lady Naz'jess
			["sourceQuest"] = 55500,	-- Save a Friend
			--["description"] = "Requires |cFFFFD700Bladesman Inowari|r as your friend.",
			["provider"] = { "o", 326142 },	-- Bounty Board
			["isDaily"] = true,
			["coord"] = { 48.0, 61.5, NAZJATAR },
			["races"] = HORDE_ONLY,
			["g"] = {
				i(168265),	-- Lady Naz'jess' Head (QI!)
			},
		}),
		q(55771, {	-- WANTED: Lord Ha'kass
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Bladesman Inowari|r as your friend.",
			["provider"] = { "o", 326142 },	-- Bounty Board
			["isDaily"] = true,
			["coord"] = { 39.1, 54.1, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["g"] ={
				i(168318),	-- Lord Ha'kass' Head (QI!)
			},
		}),
		q(56224, {	-- WANTED: Lord Ha'kass
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Requires |cFFFFD700Vim Brineheart|r as your friend.",
			["provider"] = { "o", 326142 },	-- Bounty Board
			["isDaily"] = true,
			["coord"] = { 48.0, 61.5, NAZJATAR },
			["races"] = HORDE_ONLY,
			["g"] ={
				i(168318),	-- Lord Ha'kass' Head (QI!)
			},
		}),
		q(56039, {	-- We Can't Have Dull Weapons (A)
			["provider"] = { "n", 153936 },	-- Overseer Hajeer
			["coord"] = { 36.9, 27.0, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuests"] = {
				55600,	-- Sating Snapdragons
				56038,	-- Working with Purpose
			},
		}),
		q(56047, {	-- We Can't Have Dull Weapons (H)
			["provider"] = { "n", 153936 },	-- Overseer Hajeer
			["coord"] = { 36.9, 27.0, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuests"] = {
				55967,	-- Sating Snapdragons
				56046,	-- Working with Purpose
			},
		}),
		q(55490, {	-- We'll Poke Their Eye Out
			["provider"] = { "n", 152316 },	-- Image of Thalyssra
			["coord"] = { 79.8, 38.8, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55489,	-- The Handmaiden's Tale
		}),
		q(56808, {	-- We're Going To Be Friends
			["provider"] = { "n", 151310 },	-- Kelfin Scout (Poen Gillbrack)
			["races"] = HORDE_ONLY,
			["description"] = "Offered when |cFFFFD700Poen Gillbrack|r reaches rank 2.",
		}),
		q(56000, {	-- We've Got Crabs! (A)
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Hunter Akana|r as your friend.",
			["isDaily"] = true,
			["coord"] = { 25.5, 26.5, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 153884 },	-- King Mrgl-Mrgl
			["g"] = {
				i(168628),	-- Crackleclaw Crab (QI!)
			},
		}),
		q(56264, {	-- We've Got Crabs! (H)
			["provider"] = { "n", 153884 },	-- King Mrgl-Mrgl
			["coord"] = { 25.4, 26.3, NAZJATAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["sourceQuest"] = 55500,	-- Save a Friend -- todo: verify sourceQuest. Most likely after unlocking the conch
			["description"] = "Requires |cFFFFD700Poen Gillbrack|r as your friend.",
			["g"] = {
				i(168628),	-- Crackleclaw Crab (QI!)
			},
		}),
		q(55561, {	-- What Remains of Zin-Azshari
			["sourceQuests"] = { 55558 },	-- A Bolt Hole
			["coord"] = { 62.4, 36.0, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 153617 },	-- Shandris Feathermoon
		}),
		q(55598, {	-- What We Know of the Naga
			["provider"] = { "n", 153496 },	-- Adaru
			["coord"] = { 38.9, 30.3, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuests"] = {
				55597,	-- Bound by Honor
				55595,	-- Deteriorating Knowledge
			},
			["g"] = {
				i(168948),	-- Dried Kelp (QI!)
				i(169477),	-- Benthic Girdle
				i(169478),	-- Benthic Bracers
				i(169481),	-- Benthic Cloak
			},
		}),
		q(55865, {	-- What We Know of the Naga
			["provider"] = { "n", 153492 },	-- Fenn
			["coord"] = { 38.9, 30.3, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuests"] = {
				55863,	-- Deteriorating Knowledge
				55864,	-- The Price is Death
			},
			["g"] = {
				i(168948),	-- Dried Kelp (QI!)
				i(169477),	-- Benthic Girdle
				i(169478),	-- Benthic Bracers
				i(169481),	-- Benthic Cloak
			},
		}),
		q(55426, {	-- What Will It Grow?
			["description"] = "Germinating Seed can drop from any rare in Nazjatar.",
			["provider"] = { "i", 167786 },	-- Germinating Seed
			["_drop"] = { "g" },	-- Drops Zin'anthid
			["g"] = {
				currency(1721),	-- Prismatic Manapearl
				i(167785),	-- Coral Petal (QI!)
			},
		}),
		q(55602, {	-- What Will It Lure?
			["description"] = "Chum can drop from any rare in Nazjatar.",
			["provider"] = { "i", 168155 },	-- Chum
			["_drop"] = { "g" },
			["g"] = {
				currency(1721),	-- Prismatic Manapearls
				i(168159),	-- Chum (QI!)
				i(168155),	-- Chum (QI!)
				i(168157),	-- Shimmering Eel Skin (QI!)
			},
		}),
		q(55531, {	-- What Will It Mine?
			["description"] = "Brinestone Pickaxe can drop from any rare in Nazjatar or be mined from Osmenite Deposits or Seams.",
			["provider"] = { "i", 168081 },	-- Brinestone Pickaxe
			["_drop"] = { "g" },	-- Drop Osmemite Ore
			["g"] = {
				currency(1721),	-- Prismatic Manapearl
				i(168049),	-- Amber Brinestone Shard (QI!)
				i(168051),	-- Azure Brinestone Shard (QI!)
				i(168038),	-- Brinestone Core (QI!)
				i(168081),	-- Brinestone Pickaxe (QI!)
				i(168048),	-- Fiery Brinestone Shard (QI!)
				i(168050),	-- Jade Brinestone Shard (QI!)
				i(168037),	-- Violet Brinestone Shard (QI!)
			},
		}),
		q(55175, {	-- Where the Road Leads
			["provider"] = { "n", 151000 },	-- Blademaster Okani
			["coord"] = { 48.9, 67.4, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 56644,	-- Up Against It
		}),
		q(56154, {	-- Where They Hide
			["sourceQuests"] = { 56156 },	-- A Tempered Blade
			["description"] = "Requires |cFFFFD700Bladesman Inowari|r as your friend.",
			["isDaily"] = true,
			["coord"] = { 41.3, 58.2, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["provider"] = { "n", 154241 },	-- Seeker Anagi
			["g"] = {
				i(168432),	-- Fresh Sponge (QI!)
			},
		}),
		q(55872, {	-- Where They Hide
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Requires |cFFFFD700Vim Brineheart|r as your friend.",
			["providers"] = {
				{"o",326142},	-- Bounty Board
				{"n",153364},	-- Scout Marlin
			},
			["isDaily"] = true,
			["coord"] = { 45.6, 58.6, NAZJATAR },
			["races"] = HORDE_ONLY,
			["g"] = {
				i(168432),	-- Fresh Sponge (QI!)
			},
		}),
		q(56217, {	-- Wild Tame
			["providers"] = {
				{ "n", 150202 },	-- Hunter Akana	(active bodyguard ID)
				{ "n", 149804 },	-- Hunter Akana (inactive in front of the bonfire)
			},
			["description"] = "Offered when |cFFFFD700Hunter Akana|r reaches rank 20.",
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 120,
			["g"] = {
				i(169200, {	-- Deepcoral Snapdragon (MOUNT!)
					["description"] = "Learning this mount also unlocks the Horde |cFFA330C9Snapdragon Kelpstalker|r mount.",
				}),
			},
		}),
		q(56815, {	-- With A Little Help From My Friends
			["provider"] = { "n", 151300 },	-- Kelfin Scout (Neri Sharpfin)
			["races"] = HORDE_ONLY,
			["description"] = "Offered when |cFFFFD700Neri Sharpfin|r reaches rank 7.",
			["g"] = {
				i(169919),	-- Unshackled Commendation Crate
			},
		}),
		q(56804, {	-- With Friends Like You, Who Needs Anemones?
			["provider"] = { "n", 151309 },	-- Vim Brineheart
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Offered when |cFFFFD700Vim Brineheart|r reaches Rank 5.",
			["races"] = HORDE_ONLY,
			["g"] = {
				i(169910, {	-- Vim's Scavenged Supplies
					i(169942),	-- Vibrant Sea Blossom
				}),
			},
		}),
		q(56038, {	-- Working with Purpose (A)
			["provider"] = { "n", 153936 },	-- Overseer Hajeer
			["coord"] = { 36.9, 27.0, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuests"] = { 55599 },	-- Scouting Undercover
			["g"] = {
				i(168810),	-- Iridescent Pearl (QI!)
			},
		}),
		q(56046, {	-- Working with Purpose (H)
			["provider"] = { "n", 153936 },	-- Overseer Hajeer
			["coord"] = { 36.9, 27.0, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 55866,	-- Scouting Undercover
			["g"] = {
				i(168810),	-- Iridescent Pearl (QI!)
			},
		}),
		q(56811, {	-- You've Got A Friend In Me
			["provider"] = { "n", 151310 },	-- Kelfin Scout (Poen Gillbrac)
			["sourceQuest"] = 55500,	-- Save a Friend
			["description"] = "Offered when |cFFFFD700Poen Gillbract|r reaches Rank 9.",
			["races"] = HORDE_ONLY,
			["g"] = {
				i(169915),	-- Poen's Stashed Supplies
			},
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
	m(NAZJATAR, {
		n(QUESTS, {
			q(56212),	-- Triggered when opening the first glimmering chest during "Scrying Stones"
			q(56220),	-- Triggered when opening the second glimmering chest during "Scrying Stones"
			q(56221),	-- Triggered when opening the third glimmering chest during "Scrying Stones"
			--	RECRUITMENT QUESTS
			q(57040),	-- recruiting Hunter Akana / Vim Brineheart for the day
			q(57041),	-- recruiting Farseer Ori / Neri Sharpfin for the day
			q(57042),	-- recruiting Bladesman Inowari / Poen Gillbrack for the day
			--	HORRIBLE NAZJATAR BODYGUARD DIALOGUE QUESTS (usually trigger in areas where you're doing the daily quests for the bodyguard, OR after 1-2 minutes of idling post-pickup)
			--	not sure if Alliance quests are once per account (horde appear to be daily) or if they just don't have HQTs - they have instant dialogue upon quest pickup/turn-in but haven't triggered any HQTs for me at all - the first time i did them on my account would have been looooooooong ago
			--	unknown/probable bodyguard dialogue quests
			q(56659),	-- not sure precisely what triggered this -- selected Neri as my daily follower, refreshed, walked outside, picked up "Down into Nazjatar," and this popped (probably dialogue quest)
			q(56505),	-- Triggered when walking through the Alliance crash site as horde. Bodyguard dialog fires (haven't reproduced w/poen, so probably another horde bodyguard)
			q(56507),	-- Triggered randomly while in nazjatar
			q(56658),	-- Triggered randomly while in Nazjatar
			q(56670),	-- Triggered randomly while in Nazjatar
			q(56678),	-- Triggered when picking up Bounty Wanted:Inquisitor Ithriza (56227)
			--	Akana
			--	Inowari
			--	Neri
			q(56521),	-- "If I'd been put on one of these work crews, I might have never broken free.  The people here haven't been broken yet.  There's still a chance..."
			q(56543),	-- "Like this place?  Vim named it.  He thinks you should always keep something in your pocket that the enemy won't expect."
			q(56663),	-- "What choice would I have made... to save our people?"
			q(56664),	-- "We need to be careful down here.  The locals are definitely not friendly."
			q(56668),	-- "Kelp grass is one of our most useful resources here in Nazjatar."
			q(56669),	-- "The tamed snapdragons aren't producing venom anymore. Our only way to harvest it is from the wild packs roaming here."
			q(56673),	-- "How can a place so horrible still be this beautiful?  One day soon, this chamber will be empty."
			q(56674),	-- "Someday we won't have to think of ourselves as shackled or Unshackled.  We'll all just... be free."
			q(56675),	-- "Have you seen the ankoan?  Impressive fighters, but a bit standoffish.  Too bad.  We'd be stronger together!"
			q(56676),	-- "When it looked like we were done for, Gral found us.  He was angry at the naga, just like we were.  He's a good friend."
			q(56679),	-- "One day, there will be no more shackles."
			q(56680),	-- "It's hard to imagine what we'll do once we don't have to fight to survive.  I look forward to figuring that out."
			q(56681),	-- "The ocean provides for us.  We take what we find and put it to use.  Might not always be pretty, but it gets the job done."
			--	Ori
			--	Poen
			q(56544),	-- "This is one of my favorite spots!  I always keep snacks in my pocket!  It works out great for everyone!"
			q(56671),	-- "I helped a little elf girl find her doll here, once.  It made her so happy, even though there was so little of it left.  I hugged Mak so hard when I got back to Newhome."
			q(56682),	-- "I always dreamt of fighting back against the naga.  Neri gave me that chance."
			q(56683),	-- "I was born in the slave pens.  My family was broken by the naga... I never had a chance to heal them."  yikes, dude
			q(56684),	-- "I talked to an ankoan, once.  They've lost so many of their friends.  It's sad to think about."
			q(56685),	-- "If you really listen, sometimes you can hear the voice of the ocean.  She brings me peace."
			q(56686),	-- "The ocean taught me how to help and heal my friends.  I'm glad when I can be useful."
			q(56687),	-- "This one time, I got caught in some seaweed while fleeling from the naga.  But Mak showed up and saved me!  We've been best friends ever since!"
			q(56688),	-- "The world's a lot less interesting when you can only move on the ground.  Now I see why the sea cucumbers are always complaining."
			q(56689),	-- "When the ocean returns, the tears of all who have suffered will be washed away."
			q(56690),	-- "It sounds like this Horde you come from has survived some awful things.  Just like us!  Seeing you stick together brings me hope."
			q(56692),	-- "Mmm, I love eel!"
			q(56693),	-- "These are lovely.  Sometimes, doing something nice for a friend is what it's all about."
			q(56694),	-- "Do you think water elementals ever get thirsty?"
			q(56695),	-- "Dani is great!  She wrangles all of our snapdragons, even the most difficult and ornery ones."
			q(56696),	-- "Have you ever swooped on a ray?  It's out-ray-geous!"
			q(56697),	-- "We have so many free people in Newhome that we need to gather more food!  This is great!"
			q(56698),	-- "As a wee sprog. I was told that the Shirakess created our nightmares. I thought that was a myth... until I saw this place for myself."
			q(56699),	-- (got this randomly in nazjatar)
			--	Vim
			q(56665),	-- "It's brave to sacrifice yourself to save others.  It's craven to sacrifice others to serve yourself.  And Azshara is anything but brave."
			q(56672),	-- "One person's pride destroyed so many lives."
			q(56700),	-- "In the deep, dark sea, no one can hear you scream.  Trust me..."
			q(56701),	-- "Without Neri, we would have scattered with the current.  She brought us together."
			q(56702),	-- (got this randomly in nazjatar @ 33.8,47.4)
			q(56703),	-- "When the naga were keeping me in chains, I never thought I'd be free again.  Shows what I know, huh?"
			q(56704),	-- "This Horde of yours sure reminds me a lot of the Unshackled."
			q(56705),	-- "Azshara and her 'loyal subjects' are the worst kind of monsters.  We have to stop them here and now."
			q(56706),	-- "Everyone I knew as a sprog is gone.  I've got a new family now, but I'll never forget the one I lost."
			q(56707),	-- "Those sea giants can tell a mean tale... when you can make sense of what they're saying."
			q(56708),	-- "You think you know the naga?  Believe me, you've never faced the ones here in Nazjatar."
			q(56710),	-- "Let me tell ya, sea giants throw the best parties."
			q(56711),	-- "I won't always be around to protect Newhome.  If these scales can help keep our people safe, then they're worth the effort."
			q(56712),	-- "These snakes will go to any length to feel powerful... usually by hurting the helpless."
		}),
		n(ZONE_DROPS, {
			q(57139),	-- Getting the weekly Reefwalker Bark?
			q(57140),	-- pretty sure this is for looting Ancient Reefwalker Bark
			q(57143),	-- looting an Eel Filet
			q(57144),	-- looting Barnacled Bag of Goods
			q(57145),	-- looting Voidcaster's Supply Bag
		}),
	}),
})));