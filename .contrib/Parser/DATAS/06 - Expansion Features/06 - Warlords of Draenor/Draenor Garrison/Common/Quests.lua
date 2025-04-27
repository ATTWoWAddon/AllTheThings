-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local GARRISON_CAMPAIGN = createHeader({
	readable = "Garrison Campaign",
	icon = 1032149,
	text = {
		en = "Garrison Campaign",
		de = "Garnisonskampagne",
		ru = "Гарнизонная кампания",
		cn = "要塞战役",
		tw = "要塞戰役",
	},
})

local WOD_CHROMIE_TIME_DESCRIPTION
-- #IF AFTER 9.0.1
WOD_CHROMIE_TIME_DESCRIPTION = "If you don't see a Command Board or a Bulletin Board in your garrison, check whether you can obtain the quest from your Adventure Guide while in WoD Chromie time. If you can't find it there either, your level may be too low or high. Check the zone's minimum level requirements."
-- #ENDIF

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.WOD, {
	n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
		n(QUESTS, {
			n(GARRISON_CAMPAIGN, {	-- Garrison Campaign
			-- A Stolen Heart
				q(36160, {	-- Garrison Campaign: Every Rose Has Its Thorn
					["provider"] = { "n", 77209 },	-- Baros Alexston
					["coord"] = { 29.2, 33.1, LUNARFALL },	-- garrison lvl 3
				}),
				q(36261, {	-- Garrison Campaign: Missing Grunt
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 79740 },	-- Warmaster Zog
					["coord"] = { 53.8, 54.6, FROSTWALL },
				}),
				q(36161, {	-- Where There Is Smoke...
					["sourceQuest"] = 36160,	-- Garrison Campaign: Every Rose Has Its Thorn
					["provider"] = { "n", 84684 },	-- Lieutenant Thorn <Mission Specialist>
					["coord"] = { 29.6, 34.4, LUNARFALL },
					["races"] = ALLIANCE_ONLY,
				}),
				q(36242, {	-- Where There Is Smoke... (H)
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 36261 },	-- Garrison Campaign: Missing Grunt
					["providers"] = {
						{ "n", 79740 },	-- Warmaster Zog
						{ "o", 233956 },	-- Bloody Blade
					},
					["coords"] = {
						{ 53.8, 54.6, FROSTWALL },	-- Warmaster Zog
						{ 63.8, 44.9, FROSTWALL },	-- Bloody Blade
					},
				}),
				q(36162, {    -- A Stolen Heart
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 36161 },    -- Where There Is Smoke... (A)
					["provider"] = { "n", 84511 },    -- Lieutenant Thorn
					["coord"] = { 31.6, 33.6, LUNARFALL },
				}),
				q(36248, {	-- A Stolen Heart
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 36242 },	-- Where There Is Smoke... (H)
					["provider"] = { "n", 79740 },	-- Warmaster Zog
					["coord"] = { 53.8, 54.6, FROSTWALL },
				}),

			-- Seismic Matters
				q(34026, {	-- Garrison Campaign: Seismic Matters
					["provider"] = { "n", 77209 },	-- Baros Alexston
					["coord"] = { 29.2, 33.1, LUNARFALL },	-- garrison lvl 3
				}),
				q(34027, {	-- Groundbreaking Data
					["provider"] = { "n", 77217 },	-- Jr. Surveyor Dorn
					["coord"] = { 64.5, 69.8, LUNARFALL },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 34026,	-- Garrison Campaign: Seismic Matters
				}),
				q(34028, {	-- These Look Familiar....
					["provider"] = { "n", 77217 },	-- Jr. Surveyor Dorn
					["coord"] = { 64.5, 69.8, LUNARFALL },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 34027,	-- Groundbreaking Data
				}),
				q(34029, {	-- The Prototype
					["provider"] = { "n", 77160 },	-- Hansel Heavyhands
					["coord"] = { 69.6, 26.1, GORGROND },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 34028,	-- These Look Familiar
				}),
				q(34030, {	-- The Captive Engineer
					["provider"] = { "n", 77160 },	-- Hansel Heavyhands
					["coord"] = { 86.3, 48.9, FROSTFIRE_RIDGE },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 34029,	-- The Prototype
				}),
				q(34048, {	-- "Mole Machine, Go Home"
					["provider"] = { "n", 77167 },	-- Thaelin Darkanvil (Dark Iron Golem)
					["coord"] = { 88.4, 49.4, FROSTFIRE_RIDGE },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 34030,	-- The Captive Engineer
				}),
				q(34031, {	-- Something to Remember Me By
					["provider"] = { "n", 77167 },	-- Thaelin Darkanvil (Dark Iron Golem)
					["coord"] = { 88.4, 49.4, FROSTFIRE_RIDGE },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 34030,	-- The Captive Engineer
				}),
				q(34032, {	-- Privileged Information
					["provider"] = { "n", 77167 },	-- Thaelin Darkanvil (Dark Iron Golem)
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						34048,	-- "Mole Machine, Go Home"
						34031,	-- Something to Remember Me By
					},
				}),
				q(34033, {	-- And The Mole You Rode In On
					["provider"] = { "n", 77167 },	-- Thaelin Darkanvil (Dark Iron Golem)
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 34032,	-- Privileged Information
				}),

			-- Grinding Gears
				q(34034, {	-- Garrison Campaign: Grinding Gears
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 78487 },	-- Rokhan
					["coord"] = { 51.6, 51.6, FROSTWALL },
				}),
				q(34035, {	-- I Know The Drill!
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 34034 },	-- Garrison Campaign: Grinding Gears
					["provider"] = { "n", 77928 },	-- Gazlowe
					["coord"] = { 78.2, 55.0, FROSTFIRE_RIDGE },
				}),
				q(34040, {	-- Maker's Mark
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 34035 },	-- I Know The Drill!
					["provider"] = { "n", 77928 },	-- Gazlowe
					["coord"] = { 80.0, 56.2, FROSTFIRE_RIDGE },
				}),
				q(34041, {	-- Four Finger Discount
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 34035 },	-- I Know The Drill!
					["provider"] = { "n", 77928 },	-- Gazlowe
					["coord"] = { 80.0, 56.2, FROSTFIRE_RIDGE },
				}),
				q(34042, {	-- A Fellow Gearhead
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						34040,	-- Maker's Mark
						34041,	-- Four Finger Discount
					},
					["provider"] = { "n", 77928 },	-- Gazlowe
					["coord"] = { 85.8, 45.8, FROSTFIRE_RIDGE },
				}),
				q(34039, {	-- WANTED: Overlord Blackhammer
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 34042 },	-- A Fellow Gearhead
					["qgs"] = {
						77928,	-- Gazlowe
						78323,	-- Goblin Engineer
					},
					["coord"] = { 88.4, 49.6, FROSTFIRE_RIDGE },
				}),
				q(34078, {	-- Payment Due for Services Rendered
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 34039 },	-- WANTED: Overlord Blackhammer
					["qgs"] = {
						77928,	-- Gazlowe
						78323,	-- Goblin Engineer
					},
					["coord"] = { 85.8, 45.8, FROSTFIRE_RIDGE },
				}),

			-- Awakening
				q(36134, {	-- Garrison Campaign: Awakening
					["provider"] = { "n", 81492 },	-- Bodrick Grey
					["races"] = ALLIANCE_ONLY,
				}),
				q(36136, {	-- Garrison Campaign: Awakening
					["provider"] = { "n", 78487 },	-- Rokhan
					["races"] = HORDE_ONLY,
				}),
				q(36341, {	-- Primal Fury (A)
					["provider"] = { "n", 84185 },	-- Thisalee Crow
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 36134,	-- Garrison Campaign: Awakening
					["g"] = {
						follower(217),	-- Thisalee Crow
					},
				}),
				q(36342, {	-- Primal Fury (H)
					["provider"] = { "n", 88530 },	-- Choluna
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 36136,	-- Garrison Campaign: Awakening
					["g"] = {
						follower(217),	-- Choluna
					},
				}),

			-- Crows In The Field
				q(34409, {	-- Garrison Campaign: Crows In The Field
					["provider"] = { "n", 88112 },	-- Morthis Whisperwing
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 47.0, 88.8, LUNARFALL },
				}),
				q(34335, {	-- Garrison Campaign: Crows In The Field
					["qg"] = 78192,	-- Choluna
					["races"] = HORDE_ONLY,
					["coords"] = {
						{ 42.2, 45.8, FROSTWALL },
						{ 69.4, 9.0, TALADOR },
					},
				}),
				q(34336, {	-- Ambushing the Enemy
					["provider"] = { "n", 78187 },	-- Thisalee Crow
					["coord"] = { 39.8, 37.0, GORGROND },
					["allianceQuestData"] = {
						["sourceQuest"] = 34409,	-- Garrison Campaign: Crows In The Field (A)
					},
					["hordeQuestData"] = {
						["sourceQuest"] = 34335,	-- Garrison Campaign: Crows In The Field (H)
					},
				}),
				q(34347, {	-- Bladefury's Orders
					["provider"] = { "o", 237821 },	-- Bladefury's Orders
					["coord"] = { 40.4, 40.3, GORGROND },
					["allianceQuestData"] = {
						["sourceQuest"] = 34409,	-- Garrison Campaign: Crows In The Field (A)
					},
					["hordeQuestData"] = {
						["sourceQuest"] = 34335,	-- Garrison Campaign: Crows In The Field (H)
					},
				}),
				q(34337, {	-- The Giant Cauldron
					["provider"] = { "n", 78187 },	-- Thisalee Crow
					["coord"] = { 39.8, 37.0, GORGROND },
					["sourceQuests"] = {
						34336,	-- Ambushing the Enemy
						34347,	-- Bladefury's Orders
					},
				}),
				q(34339, {	-- A Goren's Feast
					["provider"] = { "n", 89179 },	-- Choluna
					["sourceQuest"] = 34337,	-- The Giant Cauldron
					["coord"] = { 54.2, 56.0, GORGROND },
				}),
				q(34340, {	-- Heating Up
					["provider"] = { "n", 74125 },	-- Aren Mistshade
					["sourceQuest"] = 34337,	-- The Giant Cauldron
					["coord"] = { 54.2, 56.0, GORGROND },
				}),
				q(34338, {	-- The Descent
					["provider"] = { "n", 78251 },	-- Thisalee Crow
					["sourceQuest"] = 34337,	-- The Giant Cauldron
					["coord"] = { 54.2, 56.0, GORGROND },
				}),
				q(34410, {	-- The Beating Heart
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "n", 78251 },	-- Thisalee Crow
					["coord"] = { 54.2, 56.0, GORGROND },
					["sourceQuests"] = {
						34339,	-- A Goren's Feast
						34340,	-- Heating Up
						34338,	-- The Descent
					},
				}),
				q(34341, {	-- The Beating Heart
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 78251 },	-- Thisalee Crow
					["coord"] = { 54.2, 56.0, GORGROND },
					["sourceQuests"] = {
						34339,	-- A Goren's Feast
						34340,	-- Heating Up
						34338,	-- The Descent
					},
				}),

			-- The Sargerei
				q(35185, {	-- Garrison Campaign: The Sargerei
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "n", 83858 },	-- Khadgar's Servant
				}),
				q(35186, {	-- Garrison Campaign: The Sargerei
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 83858 },	-- Khadgar's Servant
				}),
				q(35187, {	-- Infiltrating the Sargerei
					["allianceQuestData"] = {
						["sourceQuest"] = 35185,	-- Garrison Campaign: The Sargerei (A)
					},
					["hordeQuestData"] = {
						["sourceQuest"] = 35186,	-- Garrison Campaign: The Sargerei (H)
					},
					["provider"] = { "n", 88276 },	-- Archmage Modera
					["coord"] = { 43.6, 77.2, DRAENOR_SHADOWMOON_VALLEY },
					["g"] = {
						i(112791),	-- Sargerei Cowl (QI!)
						i(112904),	-- Sargerei Disguise (QI!)
						i(112891),	-- Sargerei Robe (QI!)
						i(112893),	-- Sargerei Slippers (QI!)
					},
				}),
				q(35188, {	-- Pesky Podlings
					["sourceQuests"] = { 35187 },	-- Infiltrating the Sargerei
					["provider"] = { "n", 81499 },	-- Soulbinder Zamaya
					["coord"] = { 49.8, 81.4, DRAENOR_SHADOWMOON_VALLEY },
				}),
				q(35189, {	-- The Word of Socrethar
					["sourceQuests"] = { 35187 },	-- Infiltrating the Sargerei
					["provider"] = { "n", 81530 },	-- Anchorite Laanda
					["coord"] = { 50.0, 81.2, DRAENOR_SHADOWMOON_VALLEY },
				}),
				q(35190, {	-- An Ancient Threat
					["sourceQuests"] = { 35187 },	-- Infiltrating the Sargerei
					["provider"] = { "n", 81499 },	-- Soulbinder Zamaya
					["coord"] = { 49.8, 81.4, DRAENOR_SHADOWMOON_VALLEY },
				}),
				q(35191, {	-- Shattering the Enemy
					["sourceQuests"] = { 35187 },	-- Infiltrating the Sargerei
					["provider"] = { "n", 81530 },	-- Anchorite Laanda
					["coord"] = { 50.0, 81.2, DRAENOR_SHADOWMOON_VALLEY },
				}),
				q(35194, {	-- Facing Demons
					["sourceQuests"] = {
						35188,	-- Pesky Podlings
						35189,	-- The Word of Socrethar
						35190,	-- An Ancient Threat
						35191,	-- Shattering the Enemy
					},
					["provider"] = { "n", 81530 },	-- Anchorite Laanda
					["coord"] = { 50.0, 81.2, DRAENOR_SHADOWMOON_VALLEY },
				}),
				q(35195, {	-- Socrethar's Fury
					["sourceQuests"] = { 35194 },	-- Facing Demons
					["provider"] = { "o", 231918 },	-- Laanda's Scroll
					["coord"] = { 50.0, 81.2, DRAENOR_SHADOWMOON_VALLEY },
					["g"] = {
						i(119134),	-- Sargerei Disguise (TOY!)
					},
				}),
				q(35196, {	-- Forging Ahead
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = { 35195 },	-- Socrethar's Fury
					["provider"] = { "n", 81530 },	-- Anchorite Laanda
					["coord"] = { 50.6, 82.2, DRAENOR_SHADOWMOON_VALLEY },
				}),
				q(35197, {	-- Forging Ahead
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 35195 },	-- Socrethar's Fury
					["provider"] = { "n", 81530 },	-- Anchorite Laanda
					["coord"] = { 50.6, 82.2, DRAENOR_SHADOWMOON_VALLEY },
				}),

			-- Darktide Roost
				q(35861, {	-- Garrison Campaign: Darktide Roost (A)
					["provider"] = { "n", 81492 },	-- Bodrick Gray
					["coord"] = { 37.8, 36.8, LUNARFALL },
					["races"] = ALLIANCE_ONLY,
				}),
				q(35876, {	-- Garrison Campaign: Darktide Roost (H)
					["provider"] = { "n", 78487 },	-- Rokhan
					["coord"] = { 45.8, 43.2, FROSTWALL },
					["races"] = HORDE_ONLY,
				}),
				q(34353, {	-- Shredder Suppressor
					["allianceQuestData"] = {
						["sourceQuest"] = 35861,	-- Garrison Campaign: Darktide Roost (A)
					},
					["hordeQuestData"] = {
						["sourceQuest"] = 35876,	-- Garrison Campaign: Darktide Roost (H)
					},
					["coord"] = { 59.2, 82.2, DRAENOR_SHADOWMOON_VALLEY },
					["provider"] = { "n", 77982 },	-- Rexxar
				}),
				q(34355, {	-- Dirty Rats
					["sourceQuest"] = 34353,	-- Shredder Suppressor
					["coord"] = { 59.2, 82.2, DRAENOR_SHADOWMOON_VALLEY },
					["provider"] = { "n", 77982 },	-- Rexxar
				}),
				q(34397, {	-- Downsizing the Darktide
					["sourceQuest"] = 34355,	-- Dirty Rats
					["coord"] = { 58.1, 93.9, DRAENOR_SHADOWMOON_VALLEY },
					["provider"] = { "n", 78258 },	-- Rexxar
				}),
				q(34365, {	-- Releasing Rylak
					["sourceQuest"] = 34355,	-- Dirty Rats
					["coord"] = { 58.1, 93.9, DRAENOR_SHADOWMOON_VALLEY },
					["provider"] = { "n", 78258 },	-- Rexxar
				}),
				q(34450, {	-- Rylak Rescue
					["sourceQuests"] = {
						34365,	-- Releasing Rylak
						34397,	-- Downsizing the Darktide
					},
					["coord"] = { 58.1, 93.9, DRAENOR_SHADOWMOON_VALLEY },
					["provider"] = { "n", 78258 },	-- Rexxar
				}),

			-- Deep Recon
				q(35837, {	-- Garrison Campaign: Deep Recon
					["races"] = ALLIANCE_ONLY,
				}),
				q(35843, {	-- Garrison Campaign: Deep Recon
					["races"] = HORDE_ONLY,
				}),
				q(35838, {	-- The Warlord's Council
					["provider"] = { "n", 83051 },	-- Jeanine Amrell
					["coord"] = { 49.8, 37.0, DRAENOR_NAGRAND },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 35837,	-- Garrison Campaign: Deep Recon
				}),
				q(35844, {	-- The Warlord's Council
					["provider"] = { "n", 83052 },	-- Shadow Hunter Zasta
					["coord"] = { 49.8, 37.0, DRAENOR_NAGRAND },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 35843,	-- Garrison Campaign: Deep Recon
				}),
				q(35839, {	-- Plans of War
					["provider"] = { "n", 83053 },	-- Flint Shadowmore
					["coord"] = { 41.8, 37.0, DRAENOR_NAGRAND },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 35838,	-- The Warlord's Council
				}),
				q(35845, {	-- Plans of War
					["provider"] = { "n", 83054 },	-- Shadow Hunter Kajassa
					["coord"] = { 41.8, 37.0, DRAENOR_NAGRAND },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 35844,	-- The Warlord's Council
				}),
				q(35840, {	-- Intercepting the Orders
					["provider"] = { "n", 83053 },	-- Flint Shadowmore
					["coord"] = { 41.8, 37.0, DRAENOR_NAGRAND },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 35839,	-- Plans of War
				}),
				q(35846, {	-- Intercepting the Orders
					["provider"] = { "n", 83054 },	-- Shadow Hunter Kajassa
					["coord"] = { 41.8, 37.0, DRAENOR_NAGRAND },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 35845,	-- Plans of War
				}),
				q(35841, {	-- Putting Down the Packleader
					["provider"] = { "n", 83053 },	-- Flint Shadowmore
					["coord"] = { 41.8, 37.0, DRAENOR_NAGRAND },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 35839,	-- Plans of War (35840 is too far)
				}),
				q(35842, {	-- Putting Down the Packleader
					["provider"] = { "n", 83054 },	-- Shadow Hunter Kajassa
					["coord"] = { 41.8, 37.0, DRAENOR_NAGRAND },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 35845,	-- Plans of War (35846 is too far)
				}),

			-- The Bane of the Bleeding Hollow
				q(38560, {	-- Garrison Campaign: The Bane of the Bleeding Hollow (A)
					["provider"] = { "n", 90481 },	-- Exarch Yrel
					["coord"] = { 58.4, 60.2, TANAAN_JUNGLE },
					["races"] = ALLIANCE_ONLY,
				}),
				q(38453, {	-- Garrison Campaign: The Bane of the Bleeding Hollow (H)
					["provider"] = { "n", 90481 },	-- Draka
					["coord"] = { 61.4, 45.7, TANAAN_JUNGLE },
					["races"] = HORDE_ONLY,
				}),
				q(38270, {	-- Finding the Killer
					["allianceQuestData"] = {
						["sourceQuest"] = 38560,	-- Garrison Campaign: The Bane of the Bleeding Hollow (A)
					},
					["hordeQuestData"] = {
						["sourceQuest"] = 38453,	-- Garrison Campaign: The Bane of the Bleeding Hollow (H)
					},
					["provider"] = { "n", 91299 },	-- Ariok
					["coord"] = { 27.0, 44.4, TANAAN_JUNGLE },
				}),
				q(38271, {	-- Following the Bloody Path
					["sourceQuest"] = 38270,
					["provider"] = { "n", 91348 },	-- Ariok
					["coord"] = { 27.0, 44.4, TANAAN_JUNGLE },
				}),
				q(38273, {	-- Spirits of the Bleeding Hollow
					["provider"] = { "o", 240547 },	-- Orc Skull
					["coord"] = { 32.5, 37.5, TANAAN_JUNGLE },
					["sourceQuest"] = 38271,	-- Following the Bloody Path
				}),
				q(38272, {	-- The Bleeding Hollow
					["sourceQuest"] = 38271,
					["provider"] = { "n", 91421 },	-- Ariok
					["coord"] = { 32.5, 37.5, TANAAN_JUNGLE },
				}),
				q(38274, {	-- The Eye of Kilrogg
					["provider"] = { "n", 91324 },	-- Braknoth
					["g"] = {
						i(124553, {	-- Baleful Gauntlets
							["sym"] = { { "fill" } },
						}),
					},
				}),

			-- In the Shadows
				q(37687, {	-- Garrison Campaign: In the Shadows (A)
					["provider"] = { "n", 91290 },	-- Reshad
					["coord"] = { 57.4, 58.8, TANAAN_JUNGLE },
					["races"] = ALLIANCE_ONLY,
				}),
				q(37688, {	-- Garrison Campaign: In the Shadows (H)
					["provider"] = { "n", 91292 },	-- Reshad
					["coord"] = { 60.4, 46.2, TANAAN_JUNGLE },
					["races"] = HORDE_ONLY,
				}),
				q(38267, {	-- Friends Above (A)
					["provider"] = { "n", 91290 },	-- Reshad
					["coord"] = { 57.4, 58.8, TANAAN_JUNGLE },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 37687,	-- Garrison Campaign: In the Shadows (A)
				}),
				q(38269, {	-- Friends Above (H)
					["provider"] = { "n", 91292 },	-- Reshad
					["coord"] = { 60.4, 46.2, TANAAN_JUNGLE },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 37688,	-- Garrison Campaign: In the Shadows (H)
				}),
				q(38213, {	-- Get a Clue
					["provider"] = { "n", 91291 },	-- Reshad
					["coord"] = { 25.8, 38.8, TANAAN_JUNGLE },
					["allianceQuestData"] = {
						["sourceQuest"] = 38267,	-- Friends Above (A)
					},
					["hordeQuestData"] = {
						["sourceQuest"] = 38269,	-- Friends Above (H)
					},
				}),
				q(38223, {	-- Dark Ascension
					["provider"] = { "o", 240317 },	-- Iskar's Tome of Shadows
					["coord"] = { 16.1, 44.3, TANAAN_JUNGLE },
					["sourceQuest"] = 38213,	-- Get a Clue
					["g"] = {
						i(124557, {	-- Baleful Girdle
							["sym"] = { { "fill" } },
						}),
					},
				}),

			-- Onslaught at Auchindoun
				q(38421, {	-- Garrison Campaign: Onslaught at Auchindoun (A)
					["provider"] = { "n", 90309 },	-- Exarch Yrel
					["coord"] = { 58.4, 60.2, TANAAN_JUNGLE },
					["races"] = ALLIANCE_ONLY,
				}),
				q(38415, {	-- Garrison Campaign: Onslaught at Auchindoun (H)
					["provider"] = { "n", 90481 },	-- Draka
					["coord"] = { 61.4, 45.7, TANAAN_JUNGLE },
					["races"] = HORDE_ONLY,
				}),
				q(38562, {	-- Secrets of the Sargerei (A)
					["provider"] = { "n", 91751 },	-- Exarch Yrel
					["coord"] = { 44.2, 65.4, TALADOR },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 38421,	-- Garrison Campaign: Onslaught at Auchindoun (A)
					["g"] = {
						i(124552, {	-- Baleful Treads
							i(124573),	-- Axeclaw Boots
							i(124572),	-- Bladefang Boots
							i(124574),	-- Felbane Greaves
							i(124571),	-- Felcast Sandals
						}),
					},
				}),
				q(38416, {	-- Secrets of the Sargerei (H)
					["provider"] = { "n", 91750 },	-- Lady Liadrin
					["coord"] = { 44.2, 65.2, TALADOR },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 38415,	-- Garrison Campaign: Onslaught at Auchindoun (H)
					["g"] = {
						i(124552, {	-- Baleful Treads
							i(124573),	-- Axeclaw Boots
							i(124572),	-- Bladefang Boots
							i(124574),	-- Felbane Greaves
							i(124571),	-- Felcast Sandals
						}),
					},
				}),

			-- The Warlock
				q(38561, {	-- Garrison Campaign: The Warlock (A)
					["provider"] = { "n", 90309 },	-- Exarch Yrel
					["coord"] = { 58.4, 60.2, TANAAN_JUNGLE },
					["races"] = ALLIANCE_ONLY,
				}),
				q(38458, {	-- Garrison Campaign: The Warlock (H)
					["provider"] = { "n", 90481 },	-- Draka
					["coord"] = { 61.4, 45.8, TANAAN_JUNGLE },
					["races"] = HORDE_ONLY,
				}),
				q(38462, {	-- Breaching the Barrier
					["provider"] = { "n", 92055 },	-- Oronok Torn-heart
					["coord"] = { 47.2, 70.4, TANAAN_JUNGLE },
					["allianceQuestData"] = {
						["sourceQuest"] = 38561,	-- Garrison Campaign: The Warlock (A)
					},
					["hordeQuestData"] = {
						["sourceQuest"] = 38458,	-- Garrison Campaign: The Warlock (H)
					},
				}),
				q(39394, {	-- The Cipher of Damnation (A)
					["provider"] = { "n", 92120 },	-- Oronok Torn-heart
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 38462,	-- Breaching the Barrier
					["g"] = {
						i(128225),	-- Empowered Apexis Fragment
						i(124551, {	-- Baleful Tunic
							["sym"] = { { "fill" } },
						}),
					},
				}),
				q(38463, {	-- The Cipher of Damnation (H)
					["provider"] = { "n", 92120 },	-- Oronok Torn-heart
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 38462,	-- Breaching the Barrier
					["g"] = {
						i(128225),	-- Empowered Apexis Fragment
						i(124551, {	-- Baleful Tunic
							["sym"] = { { "fill" } },
						}),
					},
				}),

			-- The Broken Precipice
				q(35985, {	-- Garrison Campaign: The Broken Precipice
					["provider"] = { "n", 88892 },	-- Nixxie
					["races"] = ALLIANCE_ONLY,
				}),
				q(36117, {	-- Garrison Campaign: The Broken Precipice
					["provider"] = { "n", 88892 },	-- Nixxie
					["races"] = HORDE_ONLY,
				}),
				q(35945, {	-- Greblin Fastfizzle
					["provider"] = { "n", 83686 },	-- Greblin Fastfizzle
					["coord"] = { 39.6, 24.6, DRAENOR_NAGRAND },
					["allianceQuestData"] = {
						["sourceQuest"] = 35985,	-- Garrison Campaign: The Broken Precipice (A)
					},
					["hordeQuestData"] = {
						["sourceQuest"] = 36117,	-- Garrison Campaign: The Broken Precipice (H)
					},
				}),
				q(35972, {	-- Ogre Onslaught
					["provider"] = { "n", 83734 },	-- Greblin Fastfizzle
					["coord"] = { 39.6, 24.4, DRAENOR_NAGRAND },
					["sourceQuest"] = 35945,	-- Greblin Fastfizzle
				}),
				q(35970, {	-- Preservation Capitalization
					["provider"] = { "n", 83734 },	-- Greblin Fastfizzle
					["coord"] = { 39.6, 24.4, DRAENOR_NAGRAND },
					["sourceQuest"] = 35945,	-- Greblin Fastfizzle
				}),
				q(37511, {	-- Dizzy Sparkshift
					["provider"] = { "n", 83734 },	-- Greblin Fastfizzle
					["coord"] = { 39.6, 24.4, DRAENOR_NAGRAND },
					["sourceQuests"] = {
						35972,	-- Ogre Onslaught
						35970,	-- Preservation Capitalization
					},
				}),
				q(35973, {	-- Brokyo Beatdown
					["provider"] = { "n", 76508 },	-- Dizzy Sparkshift
					["coord"] = { 40.6, 13.0, DRAENOR_NAGRAND },
					["sourceQuest"] = 37511,	-- Dizzy Sparkshift
				}),
				q(37517, {	-- News for Nixxie
					["provider"] = { "n", 76508 },	-- Dizzy Sparkshift
					["coord"] = { 40.6, 13.0, DRAENOR_NAGRAND },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 35973,	-- Brokyo Breakdown
				}),
				q(37516, {	-- News for Nixxie
					["provider"] = { "n", 76508 },	-- Dizzy Sparkshift
					["coord"] = { 40.6, 13.0, DRAENOR_NAGRAND },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 35973,	-- Brokyo Breakdown
				}),

			-- The Exarch's Call
				q(36163, {	-- Garrison Campaign: The Exarch's Call
					["provider"] = { "n", 82776 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(36164, {	-- The Trial of Courage
					["coord"] = { 55.8, 32.8, DRAENOR_SHADOWMOON_VALLEY },
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "n", 80078 },	-- Exarch Akama
					["sourceQuest"] = 36163,	-- Garrison Campaign: The Exarch's Call
				}),
				q(36168, {	-- The Trial of Faith
					["coord"] = { 62.4, 26.2, DRAENOR_SHADOWMOON_VALLEY },
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "n", 80073 },	-- Exarch Maladaar
					["sourceQuest"] = 36163,	-- Garrison Campaign: The Exarch's Call
				}),
				q(36167, {	-- The Trial of Heart
					["coord"] = { 62.4, 26.2, DRAENOR_SHADOWMOON_VALLEY },
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "n", 80079 },	-- Exarch Naielle
					["sourceQuest"] = 36163,	-- Garrison Campaign: The Exarch's Call
				}),
				q(36169, {	-- The Trial of Champions
					["coord"] = { 75.0, 57.8, DRAENOR_SHADOWMOON_VALLEY },
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "n", 84974 },	-- Exarch Maladaar
					["sourceQuests"] = {
						36168,	-- The Trial of Faith
						36164,	-- The Trial of Courage
						36167,	-- The Trial of Heart
					},
					["g"] = {
						i(119144, {	-- Touch of the Naaru (TOY!)
							["races"] = ALLIANCE_ONLY,
						}),
					},
				}),

			-- Farseer's Rock
				q(32979, {	-- Garrison Campaign: Farseer's Rock
					["provider"] = { "n", 74808 },	-- Thrall
					["coord"] = { 51.0, 37.4, FROSTWALL },
					["races"] = HORDE_ONLY,
				}),
				q(32980, {	-- Eaters of the Elements
					["sourceQuests"] = { 32979 },	-- Garrison Campaign: Farseer's Rock
					["provider"] = { "n", 72230 },	-- Draka
					["coord"] = { 57.6, 41.6, FROSTFIRE_RIDGE },
					["races"] = HORDE_ONLY,
				}),
				q(33444, {	-- Eatercology
					["sourceQuests"] = { 32980 },	-- Eaters of the Elements
					["provider"] = { "n", 72230 },	-- Draka
					["coord"] = { 57.2, 41.6, FROSTFIRE_RIDGE },
					["races"] = HORDE_ONLY,
				}),
				q(32983, {	-- In the Shadow of Giants
					["sourceQuests"] = { 32980 },	-- Eaters of the Elements
					["provider"] = { "n", 74253 },	-- Farseer Drek'Thar
					["coord"] = { 57.6, 41.6, FROSTFIRE_RIDGE },
					["races"] = HORDE_ONLY,
				}),
				q(32984, {	-- The Ascent
					["sourceQuests"] = {
						33444,	-- Eatercology
						32983,	-- In the Shadow of Giants
					},
					["provider"] = { "n", 74253 },	-- Farseer Drek'Thar
					["coord"] = { 74.0, 29.6, FROSTFIRE_RIDGE },
					["races"] = HORDE_ONLY,
				}),
				q(32985, {	-- Fury of Frostfire
					["sourceQuests"] = { 32984 },	-- The Ascent
					["provider"] = { "n", 74330 },	-- Farseer Drek'Thar
					["coord"] = { 70.0, 38.2, FROSTFIRE_RIDGE },
					["races"] = HORDE_ONLY,
					["g"] = {
						i(119145),	-- Firefury Totem (TOY!)
					},
				}),
				q(33427, {	-- Ours is the Fury
					["sourceQuests"] = { 32985 },	-- Fury of Frostfire
					["provider"] = { "n", 76622 },	-- Thrall
					["coord"] = { 70.0, 38.2, FROSTFIRE_RIDGE },
					["races"] = HORDE_ONLY,
				}),

			-- The Fall of Shattrath
				q(35679, {	-- Garrison Campaign: The Fall of Shattrath
					["provider"] = { "n", 83858 },	-- Khadgar's Servant
					["races"] = ALLIANCE_ONLY,
				}),
				q(35680, {	-- Garrison Campaign: The Fall of Shattrath
					["provider"] = { "n", 83858 },	-- Khadgar's Servant
					["races"] = HORDE_ONLY,
				}),
				q(35683, {	-- Reclaiming the City
					["provider"] = { "n", 75028 },	-- Exarch Maladaar
					["coord"] = { 49.8, 48.6, TALADOR },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 35679,	-- Garrison Campaign: The Fall of Shattrath
				}),
				q(35684, {	-- Reclaiming the City
					["provider"] = { "n", 76804 },	-- Lady Liadrin
					["coord"] = { 50.0, 48.4, TALADOR },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 35680,	-- Garrison Campaign: The Fall of Shattrath
				}),
				q(35685, {	-- Socrethar's Demise
					["provider"] = { "n", 75028 },	-- Exarch Maladaar
					["coord"] = { 49.8, 48.6, TALADOR },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 35683,	-- Reclaiming the City
				}),
				q(35687, {	-- Socrethar's Demise
					["provider"] = { "n", 76804 },	-- Lady Liadrin
					["coord"] = { 50.0, 48.4, TALADOR },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 35684,	-- Reclaiming the City
				}),

			-- The Ring of Blood
				q(36219, {	-- Garrison Campaign: The Ring of Blood
					["description"] = "Offered if you have NOT completed |cFFFFD700The Ring of Trials|r in Nagrand or the |cFFFFD700Stonemaul Arena|r bonus objective in Gorgrond.",
					["providers"] = {
						{ "o", 234243 },	-- Overly Gaudy Note [H Tier 2]
					},
					["coords"] = {
						{ 42.9, 50.2, FROSTWALL },	-- [H Tier 2]
					},
				}),
				q(36280, {	-- Garrison Campaign: The Ring of Blood
					["description"] = "Offered if you complete |cFFFFD700The Ring of Trials|r in Nagrand.",
				}),
				q(36281, {	-- Garrison Campaign: The Ring of Blood
					["description"] = "Offered if you complete the |cFFFFD700Stonemaul Arena|r bonus objective in Gorgrond.",
				}),
				q(36282, {	-- Garrison Campaign: The Ring of Blood
					["description"] = "Offered if you complete |cFFFFD700The Ring of Trials|r in Nagrand and the |cFFFFD700Stonemaul Arena|r bonus objective in Gorgrond.",
				}),
				q(36220, {	-- How Tough Are You?
					["provider"] = { "n", 84637 },	-- Gurgthock
					["coord"] = { 63.0, 36.0, DRAENOR_NAGRAND },
					["sourceQuests"] = { 36219, 36280, 36281, 36282 },	-- Garrison Campaign: The Ring of Blood (4 different versions... come on, blizzard)
				}),
				q(36221, {	-- Entry Fee
					["provider"] = { "n", 84720 },	-- Kroggol the Wall
					["coord"] = { 56.8, 19.2, DRAENOR_NAGRAND },
					["sourceQuest"] = 36220,	-- How Tough Are You?
				}),
				q(36222, {	-- The Champion of Blood
					["provider"] = { "n", 84784 },	-- Wodin the Troll-Servant
					["coord"] = { 56.8, 13.0, DRAENOR_NAGRAND },
					["sourceQuest"] = 36221,	-- Entry Fee
					["g"] = {
						title(261),	-- Blood Champion <Name>
					},
				}),
				q(36289, {	-- Out of the Shadows
					["provider"] = { "n", 84784 },	-- Wodin the Troll-Servant
					["coord"] = { 56.8, 13.0, DRAENOR_NAGRAND },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 36222,	-- The Champion of Blood
				}),
				q(36290, {	-- Out of the Shadows
					["provider"] = { "n", 84784 },	-- Wodin the Troll-Servant
					["coord"] = { 56.8, 13.0, DRAENOR_NAGRAND },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 36222,	-- The Champion of Blood
				}),

			-- The Search for Owynn Graddock
				q(34284, {	-- Garrison Campaign: The Search for Owynn Graddock
					["provider"] = { "n", 81492 },	-- Bodrick Grey <SI:7>
					["coord"] = { 38.0, 37.6, LUNARFALL },	-- garrison lvl 3
					["races"] = ALLIANCE_ONLY,
				}),
				q(34281, {	-- Out of the Chains
					["provider"] = { "n", 78056 },	-- Owynn Graddock <SI:7>
					["coord"] = { 48.8, 14.6, FROSTFIRE_RIDGE },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 34284,	-- Garrison Campaign: The Search for Owynn Graddock
					["cost"] = {
						{ "i", 110116, 1 },	-- Bloodmaul Shackle Key
					},
				}),
				q(34285, {	-- Gearing Up
					["provider"] = { "n", 78056 },	-- Owynn Graddock <SI:7>
					["coord"] = { 48.8, 14.6, FROSTFIRE_RIDGE },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 34281,	-- Out of the Chains
					["cost"] = {
						{ "i", 110229, 1 },	-- Owynn's Armor
						{ "i", 110232, 1 },	-- Owynn's Dagger
						{ "i", 110149, 1 },	-- Owynn's Mace
					},
				}),
				q(34286, {	-- Seeking the Truth
					["provider"] = { "n", 78056 },	-- Owynn Graddock <SI:7>
					["coord"] = { 48.8, 14.6, FROSTFIRE_RIDGE },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 34285,	-- Gearing Up
				}),
				q(34362, {	-- The Shadow Gate
					["provider"] = { "n", 78056 },	-- Owynn Graddock <SI:7>
					["coord"] = { 40.22, 21.46, FROSTFIRE_RIDGE },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 34286,	-- Seeking the Truth
				}),
				q(34287, {	-- Cleansing the Souls
					["provider"] = { "n", 78428 },	-- Orlana Strongbrow
					["coord"] = { 39.6, 23.4, FROSTFIRE_RIDGE },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 34362,	-- The Shadow Gate
				}),
				q(34288, {	-- The Totems That Bind
					["provider"] = { "n", 78428 },	-- Orlana Strongbrow
					["coord"] = { 39.6, 23.4, FROSTFIRE_RIDGE },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 34362,	-- The Shadow Gate
					["cost"] = { { "i", 110378, 5 } },	-- Borgal's Totem
				}),
				q(34289, {	-- Soulgrinder Survivor
					["provider"] = { "n", 78428 },	-- Orlana Strongbrow
					["coord"] = { 39.6, 23.4, FROSTFIRE_RIDGE },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						34287,	-- Cleansing the Souls
						34288,	-- The Totems That Bind
					},
					["g"] = {
						i(119151),	-- Soulgrinder
					},
				}),

			-- The Search for Shadow Hunter Bwu'ja
				q(34309, {	-- Garrison Campaign: The Search for Shadow Hunter Bwu'ja
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 78487 },	-- Rokhan
					["coord"] = { 51.6, 51.6, FROSTWALL },
				}),
				q(34314, {	-- Out of the Chains
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 34309 },	-- Garrison Campaign: The Search for Shadow Hunter Bwu'ja
					["provider"] = { "n", 78659 },	-- Shadow Hunter Bwu'ja
					["coord"] = { 51.8, 16.8, FROSTFIRE_RIDGE },
				}),
				q(34315, {	-- Gearing Up
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 34314 },	-- Out of the Chains
					["provider"] = { "n", 78659 },	-- Shadow Hunter Bwu'ja
					["coord"] = { 51.8, 16.8, FROSTFIRE_RIDGE },
				}),
				q(34316, {	-- Seeking the Truth
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 34315 },	-- Gearing Up
					["provider"] = { "n", 78746 },	-- Shadow Hunter Bwu'ja
					["coord"] = { 51.8, 16.8, FROSTFIRE_RIDGE },
				}),
				q(34381, {	-- The Shadow Gate
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 34316 },	-- Seeking the Truth
					["provider"] = { "n", 78785 },	-- Shadow Hunter Bwu'ja
					["coord"] = { 40.6, 21.8, FROSTFIRE_RIDGE },
				}),
				q(34469, {	-- Cleansing the Souls
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 34381 },	-- The Shadow Gate
					["provider"] = { "n", 78428 },	-- Orlana Strongbrow
					["coord"] = { 39.6, 23.4, FROSTFIRE_RIDGE },
				}),
				q(34318, {	-- The Totems That Bind
					["races"] = HORDE_ONLY,
					["sourceQuests"] = { 34381 },	-- The Shadow Gate
					["provider"] = { "n", 78428 },	-- Orlana Strongbrow
					["coord"] = { 39.6, 23.4, FROSTFIRE_RIDGE },
				}),
				q(34319, {	-- Soulgrinder Survivor
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						34469,	-- Cleansing the Souls
						34318,	-- The Totems That Bind
					},
					["provider"] = { "n", 78428 },	-- Orlana Strongbrow
					["coord"] = { 39.6, 23.4, FROSTFIRE_RIDGE },
					["g"] = {
						i(119151),	-- Soulgrinder
					},
				}),

			-- War Council
				q(38253, {	-- Garrison Campaign: War Council
					["sourceQuests"] = { 36615 },	-- My Very Own Castle
					["races"] = ALLIANCE_ONLY,
					["description"] = "Automatically granted upon entering your garrison.",
					["altQuests"] = { 40418 },	-- To Tanaan!
				}),
				q(38567, {	-- Garrison Campaign: War Council
					["sourceQuests"] = { 36614 },	-- My Very Own Fortress
					["races"] = HORDE_ONLY,
					["description"] = "Automatically granted upon upgrading your garrison to Rank 3.",
					["altQuests"] = { 40417 },	-- To Tanaan!
				}),
				q(38257, {	-- We Need a Shipwright
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "n", 92219 },	-- King Varian Wrynn
					["coord"] = { 32.0, 31.9, LUNARFALL },
					["sourceQuests"] = {
						38253,	-- Garrison Campaign: War Council
						40418,	-- To Tanaan!
					},
				}),
				q(38568, {	-- We Need a Shipwright
					["races"] = HORDE_ONLY,
					["provider"] = { "n", 92400 },	-- Vol'jin
					["coord"] = { 39.2, 54.9, FROSTWALL },
					["sourceQuests"] = {
						38567,	-- Garrison Campaign: War Council
						40417,	-- To Tanaan!
					},
				}),
				q(38254, {	-- Derailment (A)
					["provider"] = { "n", 90180 },	-- Exarch Naielle
					["coord"] = { 52.5, 9.8, GORGROND },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 38257,	-- We Need a Shipwright
				}),
				q(38570, {	-- Derailment (H)
					["provider"] = { "n", 89937 },	-- Sammy Fivefingers
					["coord"] = { 52.5, 9.8, GORGROND },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 38568,	-- We Need a Shipwright
				}),
				q(38255, {	-- The Train Gang (A)
					["provider"] = { "n", 90177 },	-- Exarch Yrel
					["coord"] = { 56.7, 17.1, GORGROND },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 38254,	-- Derailment
				}),
				q(38571, {	-- The Train Gang (H)
					["provider"] = { "n", 92401 },	-- Durotan
					["coord"] = { 56.7, 17.1, GORGROND },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 38570,	-- Derailment
				}),
				q(38256, {	-- Hook, Line, and... Sink Him! (A)
					["provider"] = { "n", 91242 },	-- Solog Roark
					["coord"] = { 56.7, 17.2, GORGROND },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 38255,	-- The Train Gang
				}),
				q(38572, {	-- Hook, Line, and... Sink Him! (H)
					["provider"] = { "n", 91242 },	-- Solog Roark
					["coord"] = { 56.7, 17.2, GORGROND },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 38571,	-- The Train Gang
				}),
				q(38258, {	-- Nothing Remains (A)
					["provider"] = { "n", 91242 },	-- Solog Roark
					["coord"] = { 50.6, 16.6, GORGROND },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 38256,	-- Hook, Line, and... Sink Him!
				}),
				q(38573, {	-- Nothing Remains (H)
					["provider"] = { "n", 91242 },	-- Solog Roark
					["coord"] = { 50.6, 16.6, GORGROND },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 38572,	-- Hook, Line, and... Sink Him!
				}),
				q(38259, {	-- All Hands on Deck
					["provider"] = { "n", 92219 },	-- King Varian Wrynn
					["coord"] = { 32.0, 31.9, LUNARFALL },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 38258,	-- Nothing Remains
					["g"] = {
						garrisonBuilding(205),	-- Shipyard lvl 1
					},
				}),
				q(38574, {	-- All Hands on Deck
					["provider"] = { "n", 92400 },	-- Vol'jin
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 38573,	-- Nothing Remains
					["g"] = {
						garrisonBuilding(205),	-- Shipyard lvl 1
					},
				}),
			}),
			n(SPECIAL, {
				i(123975, {	-- Greater Bounty Spoils
					["description"] = "This satchel is an award from some of the weekly garrison raid quests that can be picked up from High Overlord Saurfang and Muradin Bronzebeard.",
					["g"] = {
						i(114111, {	-- Formidable Armament
							i(115335),	-- Formidable Axe
							i(115338),	-- Formidable Dagger
							i(115336),	-- Formidable Greataxe
							i(115337),	-- Formidable Longbow
							i(115340),	-- Formidable Polearm
							i(115342),	-- Formidable Scepter
							i(115341),	-- Formidable Spire
							i(115339),	-- Formidable Warmace
						}),
						i(114088, {	-- Formidable Bracers
							i(114554),	-- Aerial Acolyte's Bracers
							i(114557),	-- Crimson Carapace Bracers
							i(114556),	-- Sickened Scale Bracers
							i(114555),	-- Yeti-Hide Bracers
						}),
						i(114092, {	-- Formidable Choker
							i(114602),	-- Bladeblunter Gorget
							i(114600),	-- Chain of Misty Vapors
							i(114598),	-- Choker of Crimson Cuts
							i(114601),	-- Groon-Tooth Locket
							i(114599),	-- Scorch-Sear Necklace
						}),
						i(119125, {	-- Formidable Cloak
							i(114607),	-- Bloodstained Miser's Cloak
							i(114604),	-- Cloak of Blind Focus
							i(114605),	-- Doomwake Drape
							i(114606),	-- Fathom-Ripped Cape
							i(114608),	-- Ultimate Greatcloak
						}),
						i(119115, {	-- Formidable Gauntlets
							i(114566),	-- Aerial Acolyte's Gloves
							i(114569),	-- Crimson Carapace Gauntlets
							i(114568),	-- Sickened Scale Gauntlets
							i(114567),	-- Yeti-Hide Gauntlets
						}),
						i(119121, {	-- Formidable Girdle
							i(114582),	-- Aerial Acolyte's Cord
							i(114585),	-- Crimson Carapace Girdle
							i(114584),	-- Sickened Scale Belt
							i(114583),	-- Yeti-Hide Belt
						}),
						i(119117, {	-- Formidable Hood
							i(114570),	-- Aerial Acolyte's Hood
							i(114573),	-- Crimson Carapace Greathelm
							i(114572),	-- Sickened Scale Helm
							i(114571),	-- Yeti-Hide Hood
						}),
						i(119119, {	-- Formidable Leggings
							i(114574),	-- Aerial Acolyte's Trousers
							i(114577),	-- Crimson Carapace Legplates
							i(114576),	-- Sickened Scale Legguards
							i(114575),	-- Yeti-Hide Legguards
						}),
						i(119123, {	-- Formidable Ring
							i(114593),	-- Draenic Sorcerer's Mark
							i(114592),	-- Grimtouch Seal
							i(114595),	-- Gronn Bone Seal
							i(114596),	-- Opalescent Tri-Ring
							i(114594),	-- Soft-Stream Band
						}),
						i(114089, {	-- Formidable Robes
							i(114561),	-- Aerial Acolyte's Robes
							i(114560),	-- Crimson Carapace Breastplate
							i(114559),	-- Sickened Scale Chestguard
							i(114558),	-- Yeti-Hide Chestguard
						}),
						i(114091, {	-- Formidable Spaulders
							i(114578),	-- Aerial Acolyte's Mantle
							i(114581),	-- Crimson Carapace Shoulderguard
							i(114580),	-- Sickened Scale Spaulders
							i(114579),	-- Yeti-Hide Spaulders
						}),
						i(114090, {	-- Formidable Treads
							i(114562),	-- Aerial Acolyte's Sandals
							i(114565),	-- Crimson Carapace Greaves
							i(114564),	-- Sickened Scale Boots
							i(114563),	-- Yeti-Hide Boots
						}),
						i(114112, {	-- Grandiose Armament
							i(115327),	-- Grandiose Axe
							i(115330),	-- Grandiose Dagger
							i(115328),	-- Grandiose Greataxe
							i(115329),	-- Grandiose Longbow
							i(115332),	-- Grandiose Polearm
							i(115334),	-- Grandiose Scepter
							i(115333),	-- Grandiose Spire
							i(115331),	-- Grandiose Warmace
						}),
						i(114082, {	-- Grandiose Bracers
							i(114494),	-- Bracers Of Determined Resolve
							i(114493),	-- Bracers of Volatile Ice
							i(114496),	-- Crazed Bomber's Bracers
							i(114495),	-- Undying Bracers
						}),
						i(119124, {	-- Grandiose Cloak
							i(114544),	-- Drape of Surging Stars
							i(114545),	-- Hearthhealer Cloak
							i(114543),	-- Keen-Eye Forestcloak
							i(114547),	-- Reinforced Moonsong Cloak
							i(114546),	-- Warmonger's Bloodcloak
						}),
						i(119114, {	-- Grandiose Gauntlets
							i(114508),	-- Crazed Bomber's Gauntlets
							i(114506),	-- Gauntlets of Determined Resolve
							i(114505),	-- Gloves of Volatile Ice
							i(114507),	-- Undying Gauntlets
						}),
						i(119120, {	-- Grandiose Girdle
							i(114522),	-- Belt of Determined Resolve
							i(114521),	-- Cord of Volatile Ice
							i(114524),	-- Crazed Bomber's Girdle
							i(114523),	-- Undying Belt
						}),
						i(119116, {	-- Grandiose Hood
							i(114512),	-- Crazed Bomber's Greathelm
							i(114510),	-- Hood of Determined Resolve
							i(114509),	-- Hood of Volatile Ice
							i(114511),	-- Undying Helm
						}),
						i(119118, {	-- Grandiose Leggings
							i(114516),	-- Crazed Bomber's Legplates
							i(114514),	-- Legguards of Determined Resolve
							i(114513),	-- Trousers of Volatile Ice
							i(114515),	-- Undying Legguards
						}),
						i(119122, {	-- Grandiose Ring
							i(114531),	-- Daggerfinger Ring
							i(114532),	-- Frostfire Band
							i(114533),	-- Loop of Shielding Light
							i(114535),	-- Officiant's Formidable Seal
							i(114534),	-- Wrenchtooth Signet
						}),
						i(114083, {	-- Grandiose Robes
							i(114497),	-- Chestguard of Determined Resolve
							i(114499),	-- Crazed Bomber's Breastplate
							i(114500),	-- Robes of Volatile Ice
							i(114498),	-- Undying Chestguard
						}),
						i(114085, {	-- Grandiose Spaulders
							i(114520),	-- Crazed Bomber's Shoulderguard
							i(114517),	-- Mantle of Volatile Ice
							i(114518),	-- Spaulders of Determined Resolve
							i(114519),	-- Undying Spaulders
						}),
						i(114084, {	-- Grandiose Treads
							i(114502),	-- Boots of Determined Resolve
							i(114504),	-- Crazed Bomber's Greaves
							i(114501),	-- Sandals of Volatile Ice
							i(114503),	-- Undying Boots
						}),
					},
				}),
				i(122191, {	-- Bloody Stack of Invitations
					["description"] = "Has a chance to be rewarded when killing the target NPC of certain Daily Quests from the special visitor in the Garrison. May also drop on repeat kills while on the respective quest.",
					["g"] = {
						i(122190),	-- Ring of Blood Invitation
					},
				}),
				header(HEADERS.NPC,	89763, {	-- Muradin Bronzebeard
					["description"] = "Muradin Bronzebeard has a chance to spawn in your garrison daily, or you can find someone with him spawned and join their garrison. He starts a weekly raid quest which will either have Greater Bounty Spoils or Apexis Crystals as a reward.",
					["crs"] = { 91196 },	-- Muradin Bronzebeard
					["races"] = ALLIANCE_ONLY,
					["g"] = bubbleDownFiltered({ ["coord"] = { 34.1, 32.6, LUNARFALL }, ["races"] = ALLIANCE_ONLY, ["qgs"] = { 91196, 89763 }},FILTERFUNC_questID,{
						i(123975, {	-- Greater Bounty Spoils
							["sym"] = { { "fill" } },	-- simply fill this item
						}),
						q(39255, {	-- Amphitheater of the Eternal
							["isWeekly"] = true,
							["u"] = REMOVED_FROM_GAME,
						}),
						q(37767, {	-- Arcane Sanctum: Ko'ragh
							["isWeekly"] = true,
							["g"] = {
								i(123975),	-- Greater Bounty Spoils
							},
						}),
						q(37796, {	-- Auchindoun
							["isDaily"] = true,
							["g"] = {
								currency(824),	-- Garrison Resources (175)
							},
						}),
						q(37772, {	-- Blackhand's Crucible: Blackhand
							["isWeekly"] = true,
							["g"] = {
								i(123975),	-- Greater Bounty Spoils
							},
						}),
						q(37795, {	-- Bloodmaul Slag Mines
							["isDaily"] = true,
							["g"] = {
								currency(824),	-- Garrison Resources (175)
							},
						}),
						q(39251, {	-- Court of Blood
							["isWeekly"] = true,
							["u"] = REMOVED_FROM_GAME,
						}),
						q(39252, {	-- Deadeye's Vision
							["isWeekly"] = true,
							["u"] = REMOVED_FROM_GAME,
						}),
						q(39259, {	-- Destructor's Rise
							["isWeekly"] = true,
							["g"] = {
								currency(823),	-- Apexis Crystal (1,000)
							},
						}),
						q(37794, {	-- Grimrail Depot
							["isDaily"] = true,
							["g"] = {
								currency(824),	-- Garrison Resources (175)
							},
						}),
						q(39257, {	-- Grommash's Torment
							["isWeekly"] = true,
							["u"] = REMOVED_FROM_GAME,
						}),
						q(39248, {	-- Hellfire Assault
							["isWeekly"] = true,
							["u"] = REMOVED_FROM_GAME,
						}),
						q(37768, {	-- Imperator's Rise: Imperator Mar'gok
							["isWeekly"] = true,
							["g"] = {
								i(123975),	-- Greater Bounty Spoils
							},
						}),
						q(37771, {	-- Iron Assembly: Admiral Gar'an
							["isWeekly"] = true,
							["g"] = {
								i(123975),	-- Greater Bounty Spoils
							},
						}),
						q(37793, {	-- Iron Docks
							["isDaily"] = true,
							["g"] = {
								currency(824),	-- Garrison Resources (175)
							},
						}),
						q(39254, {	-- Iskar's Clutch
							["isWeekly"] = true,
							["u"] = REMOVED_FROM_GAME,
						}),
						q(39253, {	-- Maw of Souls
							["isWeekly"] = true,
							["g"] = {
								currency(823),	-- Apexis Crystal (1,000)
							},
						}),
						q(39250, {	-- Pits of Mannoroth
							["isWeekly"] = true,
							["g"] = {
								currency(823),	-- Apexis Crystal (1,000)
							},
						}),
						q(37792, {	-- Shadowmoon Burial Grounds
							["isDaily"] = true,
							["g"] = {
								currency(824),	-- Garrison Resources (175)
							},
						}),
						q(37791, {	-- Skyreach
							["isDaily"] = true,
							["g"] = {
								currency(824),	-- Garrison Resources (175)
							},
						}),
						q(37769, {	-- Slagworks: Heart of the Mountain
							["isWeekly"] = true,
							["g"] = {
								i(123975),	-- Greater Bounty Spoils
							},
						}),
						q(39256, {	-- Temple of Tyranny
							["isWeekly"] = true,
							["g"] = {
								currency(823),	-- Apexis Crystal (1,000)
							},
						}),
						q(37770, {	-- The Black Forge: Kromog
							["isWeekly"] = true,
							["g"] = {
								i(123975),	-- Greater Bounty Spoils
							},
						}),
						q(39260, {	-- The Black Gate
							["isWeekly"] = true,
							["g"] = {
								currency(823),	-- Apexis Crystal (1,000)
							},
						}),
						q(37790, {	-- The Everbloom
							["isDaily"] = true,
							["g"] = {
								currency(824),	-- Garrison Resources (175)
							},
						}),
						q(39258, {	-- The Felborne Breach
							["isWeekly"] = true,
							["u"] = REMOVED_FROM_GAME,
						}),
						q(39249, {	-- The Iron Bulwark
							["isWeekly"] = true,
							["u"] = REMOVED_FROM_GAME,
						}),
						q(37789, {	-- Upper Blackrock Spire
							["isDaily"] = true,
							["g"] = {
								currency(824),	-- Garrison Resources (175)
							},
						}),
						q(37766, {	-- Walled City: Brackenspore
							["isWeekly"] = true,
							["g"] = {
								i(123975),	-- Greater Bounty Spoils
							},
						}),
					}),
				}),
				header(HEADERS.NPC, 89753, {	-- High Overlord Saurfang
					["description"] = "High Overlord Saurfang has a chance to spawn in your garrison daily, or you can find someone with him spawned and join their garrison. He starts a weekly raid quest which will either have Greater Bounty Spoils or Apexis Crystals as a reward.",
					["crs"] = { 91195 },	-- High Overlord Saurfang
					["races"] = HORDE_ONLY,
					["g"] = bubbleDownFiltered({ ["coord"] = { 40.2, 56.7, FROSTWALL }, ["races"] = HORDE_ONLY, ["qg"] = 91195 },FILTERFUNC_questID,{
						i(123975, {	-- Greater Bounty Spoils
							["sym"] = { { "fill" } },	-- simply fill this item
						}),
						q(39227, {	-- Amphitheater of the Eternal
							["isWeekly"] = true,
							["u"] = REMOVED_FROM_GAME,
						}),
						q(37757, {	-- Arcane Sanctum: Ko'ragh
							["isWeekly"] = true,
							["g"] = {
								i(123975),	-- Greater Bounty Spoils
							},
						}),
						q(37780, {	-- Auchindoun
							["isDaily"] = true,
							["g"] = {
								currency(824),	-- Garrison Resources x175
							},
						}),
						q(37765, {	-- Blackhand's Crucible: Blackhand
							["isWeekly"] = true,
							["g"] = {
								i(123975),	-- Greater Bounty Spoils
							},
						}),
						q(37781, {	-- Bloodmaul Slag Mines
							["isDaily"] = true,
							["g"] = {
								currency(824),	-- Garrison Resources x175
							},
						}),
						q(39222, {	-- Court of Blood
							["isWeekly"] = true,
							["u"] = REMOVED_FROM_GAME,
						}),
						q(39223, {	-- Deadeye's Vision
							["isWeekly"] = true,
							["u"] = REMOVED_FROM_GAME,
						}),
						q(39231, {	-- Destructor's Rise
							["isWeekly"] = true,
							["g"] = {
								currency(823),	-- Apexis Crystal x1000
							},
						}),
						q(37782, {	-- Grimrail Depot
							["isDaily"] = true,
							["g"] = {
								currency(824),	-- Garrison Resources x175
							},
						}),
						q(39229, {	-- Grommash's Torment
							["isWeekly"] = true,
							["u"] = REMOVED_FROM_GAME,
						}),
						q(39193, {	-- Hellfire Assault
							["isWeekly"] = true,
							["u"] = REMOVED_FROM_GAME,
						}),
						q(37758, {	-- Imperator's Rise: Imperator Mar'gok
							["isWeekly"] = true,
							["g"] = {
								i(123975),	-- Greater Bounty Spoils
							},
						}),
						q(37764, {	-- Iron Assembly: Admiral Gar'an
							["isWeekly"] = true,
							["g"] = {
								i(123975),	-- Greater Bounty Spoils
							},
						}),
						q(37783, {	-- Iron Docks
							["isDaily"] = true,
							["g"] = {
								currency(824),	-- Garrison Resources x175
							},
						}),
						q(39226, {	-- Iskar's Clutch
							["isWeekly"] = true,
							["u"] = REMOVED_FROM_GAME,
						}),
						q(39225, {	-- Maw of Souls
							["isDaily"] = true,
							["g"] = {
								currency(823),	-- Apexis Crystal x1000
							},
						}),
						q(39221, {	-- Pits of Mannoroth
							["isDaily"] = true,
							["g"] = {
								currency(823),	-- Apexis Crystal x1000
							},
						}),
						q(37784, {	-- Shadowmoon Burial Grounds
							["isDaily"] = true,
							["g"] = {
								currency(824),	-- Garrison Resources x175
							},
						}),
						q(37785, {	-- Skyreach
							["isDaily"] = true,
							["g"] = {
								currency(824),	-- Garrison Resources x175
							},
						}),
						q(37762, {	-- Slagworks: Heart of the Mountain
							["isWeekly"] = true,
							["g"] = {
								i(123975),	-- Greater Bounty Spoils
							},
						}),
						q(39228, {	-- Temple of Tyranny
							["isDaily"] = true,
							["g"] = {
								currency(823),	-- Apexis Crystal x1000
							},
						}),
						q(37763, {	-- The Black Forge: Kromog
							["isWeekly"] = true,
							["g"] = {
								i(123975),	-- Greater Bounty Spoils
							},
						}),
						q(39232, {	-- The Black Gate
							["isDaily"] = true,
							["g"] = {
								currency(823),	-- Apexis Crystal x1000
							},
						}),
						q(37786, {	-- The Everbloom
							["isDaily"] = true,
							["g"] = {
								currency(824),	-- Garrison Resources x175
							},
						}),
						q(39230, {	-- The Felborne Breach
							["isWeekly"] = true,
							["u"] = REMOVED_FROM_GAME,
						}),
						q(39219, {	-- The Iron Bulwark
							["isWeekly"] = true,
							["u"] = REMOVED_FROM_GAME,
						}),
						q(37787, {	-- Upper Blackrock Spire
							["isDaily"] = true,
							["g"] = {
								currency(824),	-- Garrison Resources x175
							},
						}),
						q(37756, {	-- Walled City: Brackenspore
							["isWeekly"] = true,
							["g"] = {
								i(123975),	-- Greater Bounty Spoils
							},
						}),
					}),
				}),
			}),
			q(38243, {	-- A Bit of Ore
				["providers"] = {
					{ "n", 90894 },	-- Alexi Hackercam
					{ "n", 91030 },	-- Trixxy Volt
				},
				["coords"] = {
					{ 40.4, 56.0, FROSTWALL },
					{ 34.4, 33.0, LUNARFALL },
				},
				["isDaily"] = true,
			}),
			q(39020, {	-- A Burning Path Through Time
				["provider"] = { "n", 94870 },	-- Seer Kazal
				["coords"] = {
					{ 33.6, 37.6, LUNARFALL },
					{ 41.8, 46.8, FROSTWALL },
				},
				["isWeekly"] = true,
				["u"] = REMOVED_FROM_GAME,
				["g"] = {
					i(127853),	-- Iron Fleet Treasure Chest
				},
			}),
			q(39040, {	-- A Call to Battle
				["provider"] = { "n", 94870 },	-- Seer Kazal
				["coords"] = {
					{ 33.6, 37.6, LUNARFALL },
					{ 41.8, 46.8, FROSTWALL },
				},
				["isWeekly"] = true,
				["u"] = REMOVED_FROM_GAME,
			}),
			q(39021, {	-- A Frozen Path Through Time
				["provider"] = { "n", 94870 },	-- Seer Kazal
				["coords"] = {
					{ 33.6, 37.6, LUNARFALL },
					{ 41.8, 46.8, FROSTWALL },
				},
				["isWeekly"] = true,
				["u"] = REMOVED_FROM_GAME,
				["g"] = {
					i(127853),	-- Iron Fleet Treasure Chest
				},
			}),
			q(33075, {	-- A Hero's Welcome
				["sourceQuests"] = { 34692 },	-- Delegating on Draenor
				["provider"] = { "n", 80568 },	-- Yrel
				["races"] = ALLIANCE_ONLY,
				["coords"] = {
					{ 46.9, 50.8, LUNARFALL },	-- lvl 1 garrison
					{ 47.0, 51.0, LUNARFALL },	-- lvl 2/3 garrison
				},
			}),
			q(36408, {	-- A Power Lost
				["races"] = ALLIANCE_ONLY,
				["provider"] = { "i", 115507 },	-- Drained Crystal Fragment
				["requireSkill"] = JEWELCRAFTING,
			}),
			q(40792, {	-- A Shattered Path Through Time
				["provider"] = { "n", 94870 },	-- Seer Kazal
				["coords"] = {
					{ 33.6, 37.6, LUNARFALL },
					{ 41.8, 46.8, FROSTWALL },
				},
				["isWeekly"] = true,
				["u"] = REMOVED_FROM_GAME,
				["g"] = {
					i(127853),	-- Iron Fleet Treasure Chest
				},
			}),
			q(37851, {	-- Amulet of Rukhmar: The Final Key
				["sourceQuests"] = { 37850 },	-- Amulet of Rukhmar: The Second Key
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(37849, {	-- Amulet of Rukhmar: The First Key
				["sourceQuests"] = { 37848 },	-- Treasure Contract: Amulet of Rukhmar
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(37850, {	-- Amulet of Rukhmar: The Second Key
				["sourceQuests"] = { 37849 },	-- Amulet of Rukhmar: The First Key
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(37852, {	-- Amulet of Rukhmar: The Apexis Device [A]
				["sourceQuests"] = { 37851 },	-- Amulet of Rukhmar: The Final Key
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coord"] = { 34.6, 32.7, LUNARFALL },
				["isDaily"] = true,
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					crit(27581, {
						["achievementID"] = 9825,	-- Master Relic Hunter (A)
					}),
				},
			}),
			q(37993, {	-- Amulet of Rukhmar: The Apexis Device [H]
				["sourceQuests"] = { 37851 },	-- Amulet of Rukhmar: The Final Key
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coord"] = { 40.2, 56.0, FROSTWALL },
				["isDaily"] = true,
				["races"] = HORDE_ONLY,
				["g"] = {
					crit(27602, {
						["achievementID"] = 9836,	-- Master Relic Hunter (H)
					}),
				},
			}),
			q(34653, {	-- Arakkoa Exodus
				["sourceQuests"] = { 35537, 35554 },	-- News from Spires of Arak H/A
				["isBreadcrumb"] = true,
				["coords"] = { { 45.6, 43.2, FROSTWALL }, { 37.8, 36.8, LUNARFALL } },
				["providers"] = {
					{ "n", 81492 },	-- Bodrick Grey
					{ "n", 78487 },	-- Rokhan
				},
			}),
			q(36951, {	-- Arakkoa Exodus
				["description"] = WOD_CHROMIE_TIME_DESCRIPTION,
				["sourceQuests"] = { 35554 },	-- News from Spires of Arak
				["isBreadcrumb"] = true,
				["coords"] = { { 49.3, 41.3, FROSTWALL }, { 42.8, 45.2, LUNARFALL } },
				["providers"] = {
					{ "o", 232397 },	-- Bulletin Board
					{ "o", 232398 },	-- Bounty Board
					{ "o", 232400 },	-- Bulletin Board
					{ "o", 232416 },	-- Command Board lvl 1
					{ "o", 233291 },	-- Command Board lvl 2
					{ "o", 237022 },	-- Command Board lvl 3
				},
			}),
			q(36624, {	-- Ashran Appearance
				["provider"] = { "n", 79953 },	-- Lieutenant Thorn
				["races"] = ALLIANCE_ONLY,
				["sourceQuest"] = 34692,	-- Delegating on Draenor
				["coords"] = {
					{ 40.7, 53.6, LUNARFALL },	-- lvl 1 garrison
					{ 31.1, 32.8, LUNARFALL },	-- lvl 2 garrison
				},
			}),
			q(36706, {	-- Ashran Appearance
				["provider"] = { "n", 78466 },	-- Gazlowe
				["coord"] = { 52.4, 53.3, FROSTWALL },
				["races"] = HORDE_ONLY,
				["sourceQuest"] = 34775,	-- Mission Probable
			}),
			q(36679, {	-- Assault on Darktide Roost [A]
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236165 },	-- War Planning Map
				["coords"] = {
					{ 30.7, 31.8, LUNARFALL },	-- lvl 2 garrison
					{ 31.4, 31.0, LUNARFALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26254, {
						["achievementID"] = 9564,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36692, {	-- Assault on Darktide Roost [H]
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236206 },	-- War Planning Map
				["coords"] = {
					{ 41.8, 50.7, FROSTWALL },	-- lvl 2 garrison
					{ 41.0, 50.8, FROSTWALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26239, {
						["achievementID"] = 9562,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36681, {	-- Assault on Lost Veil Anzu [A]
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236165 },	-- War Planning Map
				["coords"] = {
					{ 30.7, 31.8, LUNARFALL },	-- lvl 2 garrison
					{ 31.4, 31.0, LUNARFALL },	-- lvl 3 garrison
				},
				["g"] = {
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36690, {	-- Assault on Lost Veil Anzu [H]
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236206 },	-- War Planning Map
				["coords"] = {
					{ 41.8, 50.7, FROSTWALL },	-- lvl 2 garrison
					{ 41.0, 50.8, FROSTWALL },	-- lvl 3 garrison
				},
				["g"] = {
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36675, {	-- Assault on Magnarok [A]
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236165 },	-- War Planning Map
				["coords"] = {
					{ 30.7, 31.8, LUNARFALL },	-- lvl 2 garrison
					{ 31.4, 31.0, LUNARFALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26247, {
						["achievementID"] = 9564,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36697, {	-- Assault on Magnarok [H]
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236206 },	-- War Planning Map
				["coords"] = {
					{ 41.8, 50.7, FROSTWALL },	-- lvl 2 garrison
					{ 41.0, 50.8, FROSTWALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26228, {
						["achievementID"] = 9562,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36678, {	-- Assault on Mok'gol Watchpost [A]
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236165 },	-- War Planning Map
				["coords"] = {
					{ 30.7, 31.8, LUNARFALL },	-- lvl 2 garrison
					{ 31.4, 31.0, LUNARFALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26252, {
						["achievementID"] = 9564,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36693, {	-- Assault on Mok'gol Watchpost [H]
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236206 },	-- War Planning Map
				["coords"] = {
					{ 41.8, 50.7, FROSTWALL },	-- lvl 2 garrison
					{ 41.0, 50.8, FROSTWALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26237, {
						["achievementID"] = 9562,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36682, {	-- Assault on Pillars of Fate [A]
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236165 },	-- War Planning Map
				["coords"] = {
					{ 30.7, 31.8, LUNARFALL },	-- lvl 2 garrison
					{ 31.4, 31.0, LUNARFALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26256, {
						["achievementID"] = 9564,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36689, {	-- Assault on Pillars of Fate [H]
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236206 },	-- War Planning Map
				["coords"] = {
					{ 41.8, 50.7, FROSTWALL },	-- lvl 2 garrison
					{ 41.0, 50.8, FROSTWALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26240, {
						["achievementID"] = 9562,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36649, {	-- Assault on Shattrath Harbor [A]
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236165 },	-- War Planning Map
				["coords"] = {
					{ 30.7, 31.8, LUNARFALL },	-- lvl 2 garrison
					{ 31.4, 31.0, LUNARFALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26258, {
						["achievementID"] = 9564,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36667, {	-- Assault on Shattrath Harbor [H]
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236206 },	-- War Planning Map
				["coords"] = {
					{ 41.8, 50.7, FROSTWALL },	-- lvl 2 garrison
					{ 41.0, 50.8, FROSTWALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26242, {
						["achievementID"] = 9562,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36683, {	-- Assault on Skettis [A]
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236165 },	-- War Planning Map
				["coords"] = {
					{ 30.7, 31.8, LUNARFALL },	-- lvl 2 garrison
					{ 31.4, 31.0, LUNARFALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26255, {
						["achievementID"] = 9564,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36688, {	-- Assault on Skettis [H]
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236206 },	-- War Planning Map
				["coords"] = {
					{ 41.8, 50.7, FROSTWALL },	-- lvl 2 garrison
					{ 41.0, 50.8, FROSTWALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26243, {
						["achievementID"] = 9562,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36680, {	-- Assault on Socrethar's Rise [A]
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236165 },	-- War Planning Map
				["coords"] = {
					{ 30.7, 31.8, LUNARFALL },	-- lvl 2 garrison
					{ 31.4, 31.0, LUNARFALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26253, {
						["achievementID"] = 9564,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36691, {	-- Assault on Socrethar's Rise [H]
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236206 },	-- War Planning Map
				["coords"] = {
					{ 41.8, 50.7, FROSTWALL },	-- lvl 2 garrison
					{ 41.0, 50.8, FROSTWALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26238, {
						["achievementID"] = 9562,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36648, {	-- Assault on Stonefury Cliffs [A]
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236165 },	-- War Planning Map
				["coords"] = {
					{ 30.7, 31.8, LUNARFALL },	-- lvl 2 garrison
					{ 31.4, 31.0, LUNARFALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26245, {
						["achievementID"] = 9564,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36669, {	-- Assault on Stonefury Cliffs [H]
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236206 },	-- War Planning Map
				["coords"] = {
					{ 41.8, 50.7, FROSTWALL },	-- lvl 2 garrison
					{ 41.0, 50.8, FROSTWALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26226, {
						["achievementID"] = 9562,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36677, {	-- Assault on the Broken Precipice [A]
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236165 },	-- War Planning Map
				["coords"] = {
					{ 30.7, 31.8, LUNARFALL },	-- lvl 2 garrison
					{ 31.4, 31.0, LUNARFALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26250, {
						["achievementID"] = 9564,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36694, {	-- Assault on the Broken Precipice [H]
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236206 },	-- War Planning Map
				["coords"] = {
					{ 41.8, 50.7, FROSTWALL },	-- lvl 2 garrison
					{ 41.0, 50.8, FROSTWALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26233, {
						["achievementID"] = 9562,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36676, {	-- Assault on the Everbloom Wilds [A]
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236165 },	-- War Planning Map
				["coords"] = {
					{ 30.7, 31.8, LUNARFALL },	-- lvl 2 garrison
					{ 31.4, 31.0, LUNARFALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26249, {
						["achievementID"] = 9564,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36695, {	-- Assault on the Everbloom Wilds [H]
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236206 },	-- War Planning Map
				["coords"] = {
					{ 41.8, 50.7, FROSTWALL },	-- lvl 2 garrison
					{ 41.0, 50.8, FROSTWALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26232, {
						["achievementID"] = 9562,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36685, {	-- Assault on the Heart of Shattrath [A]
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236165 },	-- War Planning Map
				["coords"] = {
					{ 30.7, 31.8, LUNARFALL },	-- lvl 2 garrison
					{ 31.4, 31.0, LUNARFALL },	-- lvl 3 garrison
				},
				["g"] = {
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36699, {	-- Assault on the Heart of Shattrath [H]
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236206 },	-- War Planning Map
				["coords"] = {
					{ 41.8, 50.7, FROSTWALL },	-- lvl 2 garrison
					{ 41.0, 50.8, FROSTWALL },	-- lvl 3 garrison
				},
				["g"] = {
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36674, {	-- Assault on the Iron Siegeworks [A]
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236165 },	-- War Planning Map
				["coords"] = {
					{ 30.7, 31.8, LUNARFALL },	-- lvl 2 garrison
					{ 31.4, 31.0, LUNARFALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26244, {
						["achievementID"] = 9564,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36696, {	-- Assault on the Iron Siegeworks [H]
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236206 },	-- War Planning Map
				["coords"] = {
					{ 41.8, 50.7, FROSTWALL },	-- lvl 2 garrison
					{ 41.0, 50.8, FROSTWALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26225, {
						["achievementID"] = 9562,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x800
				},
			}),
			q(36686, {	-- Assault on the Pit [A]
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236165 },	-- War Planning Map
				["coords"] = {
					{ 30.7, 31.8, LUNARFALL },	-- lvl 2 garrison
					{ 31.4, 31.0, LUNARFALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26248, {
						["achievementID"] = 9564,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x1000
				},
			}),
			q(36701, {	-- Assault on the Pit [H]
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236206 },	-- War Planning Map
				["coords"] = {
					{ 41.8, 50.7, FROSTWALL },	-- lvl 2 garrison
					{ 41.0, 50.8, FROSTWALL },	-- lvl 3 garrison
				},
				["g"] = {
					crit(26229, {
						["achievementID"] = 9562,	-- Securing Draenor
					}),
					currency(823),	-- Apexis Crystal x1000
				},
			}),
			q(38929, {	-- Battle Hardened
				["provider"] = { "n", 94870 },	-- Seer Kazal
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 33.6, 37.6, LUNARFALL },
				["isWeekly"] = true,
				["u"] = REMOVED_FROM_GAME,
				["g"] = {
					i(126924),	-- Champion's Strongbox
				},
			}),
			q(38927, {	-- Battle Hardened
				["provider"] = { "n", 94870 },	-- Seer Kazal
				["races"] = HORDE_ONLY,
				["coord"] = { 41.8, 46.8, FROSTWALL },
				["isWeekly"] = true,
				["u"] = REMOVED_FROM_GAME,
				["g"] = {
					i(126924),	-- Champion's Strongbox
				},
			}),
			q(36684, {	-- Battle in Ashran
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236165 },	-- War Planning Map
				["coords"] = {
					{ 30.7, 31.8, LUNARFALL },	-- lvl 2 garrison
					{ 31.4, 31.0, LUNARFALL },	-- lvl 3 garrison
				},
				["g"] = {
					currency(823),	-- Apexis Crystal x1000
				},
			}),
			q(36698, {	-- Battle in Ashran
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236206 },	-- War Planning Map
				["coords"] = {
					{ 41.8, 50.7, FROSTWALL },	-- lvl 2 garrison
					{ 41.0, 50.8, FROSTWALL },	-- lvl 3 garrison
				},
				["g"] = {
					currency(823),	-- Apexis Crystal x1000
				},
			}),
			q(36627, {	-- Big Frostfire Gun
				["coord"] = { 62.2, 73.4, FROSTWALL },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 85882 },	-- Blixthraz Blastcharge
				["sourceQuest"] = 36594,	-- "Spare" Parts
				["requireSkill"] = ENGINEERING,
				["g"] = appendGroups(DRAENOR_ENGINEERING, {
					i(109258),	-- Engineering Works, lvl 1
				}),
			}),
			q(36592, {	-- Bigger is Better
				["sourceQuests"] = {
					34692,	-- Delegating on Draenor
					33814,	-- Fast Expansion
				},
				["coord"] = { 41.2, 49.3, LUNARFALL },
				["provider"] = { "n", 77209 },	-- Baros Alexston
				["races"] = ALLIANCE_ONLY,
			}),
			q(36567, {	-- Bigger is Better
				["coord"] = { 52.4, 53.3, FROSTWALL },	-- lvl 1
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 78466 },	-- Gazlowe
				["sourceQuest"] = 34775,	-- Mission Probable
			}),
			q(33111, {	-- Bounty: Twisted Ancient
				["providers"] = {
					{ "o", 232397 },	-- Bulletin Board
					{ "o", 232398 },	-- Bulletin Board
					{ "o", 232400 },	-- Bulletin Board
				},
				["coord"] = { 43.5, 45.0, LUNARFALL },
				["races"] = ALLIANCE_ONLY,
				["u"] = REMOVED_FROM_GAME,
			}),
			q(38356, {	-- Bringing the Bass
				["sourceQuests"] = { 36615 },	-- My Very Own Castle
				["provider"] = { "n", 91589 },	-- Fix "Smallie" Biggswrench
				["coord"] = { 33.8, 36.4, LUNARFALL },
				["timeline"] = { ADDED_6_1_0 },
				["races"] = ALLIANCE_ONLY,
				["_drop"] = { "races" },	-- bad API data
				["g"] = {
					spell(181715),	-- Unlock Garrison Jukebox
					i(122613, {	-- Stash of Dusty Music Rolls
						i(122209),	-- Music Roll: Curse of the Worgen
						i(122208),	-- Music Roll: Exodar
						i(122206),	-- Music Roll: Gnomeregan
						i(122203),	-- Music Roll: Ironforge
						i(122205),	-- Music Roll: Night Song
						i(122201),	-- Music Roll: Stormwind
						i(122219),	-- Music Roll: Way of the Monk
						i(122207),	-- Music Roll: Tinkertown
					}),
				},
			}),
			q(37961, {	-- Bringing the Bass
				["sourceQuests"] = { 36614 },	-- My Very Own Fortress
				["provider"] = { "n", 91072 },	-- Drix Bassbolter
				["coord"] = { 40.9, 47.8, FROSTWALL },
				["races"] = HORDE_ONLY,
				["_drop"] = { "races" },	-- bad API data
				["g"] = {
					spell(181715),	-- Unlock Garrison Jukebox
					i(122613, {	-- Stash of Dusty Music Rolls
						i(122210),	-- Music Roll: Orgrimmar
						i(122218),	-- Music Roll: Rescue the Warchief
						i(122217),	-- Music Roll: Silvermoon
						i(122216),	-- Music Roll: The Zandalari
						i(122213),	-- Music Roll: Thunder Bluff
						i(122212),	-- Music Roll: Undercity
						i(122219),	-- Music Roll: Way of the Monk
						i(122215),	-- Music Roll: Zul'Gurub Voodoo
					}),
				},
			}),
			q(34587, {	-- Build Your Barracks
				["sourceQuests"] = {
					35176,	-- Keeping it Together
					35174,	-- Pale Moonlight
					35166,	-- Ship Salvage
				},
				["coord"] = { 41.1, 49.4, LUNARFALL },
				["provider"] = { "n", 77209 },	-- Baros Alexston
				["races"] = ALLIANCE_ONLY,
			}),
			q(34461, {	-- Build Your Barracks
				["coord"] = { 52.4, 53.3, FROSTWALL },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 78466 },	-- Gazlowe
				["sourceQuests"] = {
					34823,	-- The Ogron Live?
					34824,	-- What We Got
					34822,	-- What We Need
				},
			}),
			q(36100, {	-- Building For Professions
				["races"] = ALLIANCE_ONLY,
				["sourceQuest"] = 34586,	-- Establish Your Garrison
				["provider"] = { "n", 77209 },	-- Baros Alexston
				["description"] = "Becomes available after completing any seconday profession intro quest.",
				["DisablePartySync"] = true,
				["coords"] = {
					{ 41.3, 49.4, LUNARFALL },	-- lvl 1 garrison
					{ 29.2, 33.1, LUNARFALL },	-- lvl 2/3 garrison
				},
			}),
			q(37669, {	-- Building For Professions
				["races"] = HORDE_ONLY,
				["sourceQuest"] = 34378,	-- Establish Your Garrison
				["provider"] = { "n", 78466 },	-- Gazlowe
				["description"] = "Becomes available after completing any seconday profession intro quest.",
				["DisablePartySync"] = true,
				["coords"] = {
					{ 52.4, 53.3, FROSTWALL },	-- lvl 1
					{ 42.2, 55.6, FROSTWALL },	-- lvl 2
					{ 37.6, 50.3, FROSTWALL },	-- lvl 3
				},
			}),
			q(36687, {	-- Challenge at the Ring of Blood
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236165 },	-- War Planning Map
				["coords"] = {
					{ 30.7, 31.8, LUNARFALL },	-- lvl 2 garrison
					{ 31.4, 31.0, LUNARFALL },	-- lvl 3 garrison
				},
				["g"] = {
					currency(823),	-- Apexis Crystal x1000
				},
				["u"] = REMOVED_FROM_GAME,
			}),
			q(36700, {	-- Challenge at the Ring of Blood
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["provider"] = { "o", 236206 },	-- War Planning Map
				["coords"] = {
					{ 41.8, 50.7, FROSTWALL },	-- lvl 2 garrison
					{ 41.0, 50.8, FROSTWALL },	-- lvl 3 garrison
				},
				["g"] = {
					currency(823),	-- Apexis Crystal x1000
				},
				["u"] = REMOVED_FROM_GAME,
			}),
			q(36404, {	-- Clearing the Garden
				["sourceQuest"] = 36592,	-- Bigger is Better
				["coord"] = { 58.9, 53.4, LUNARFALL },
				["provider"] = { "n", 85344 },	-- Naron Bloomthistle
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					garrisonBuilding(29),	-- Herb Garden lvl 1
				},
			}),
			q(34193, {	-- Clearing the Garden
				["provider"] = { "n", 81981 },	-- Tarnon
				["coord"] = { 43.4, 83.2, FROSTWALL },
				["races"] = HORDE_ONLY,
				["sourceQuest"] = 36567,	-- Bigger is Better
				["g"] = {
					garrisonBuilding(29),	-- Herb Garden lvl 1
				},
			}),
			q(37885, {	-- Dark Grimoire: Breaching the Barrier (A)
				["sourceQuest"] = 37884,	-- Dark Grimoire: The Final Ingredient
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coord"] = { 34.6, 32.7, LUNARFALL },
				["isDaily"] = true,
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					crit(27580, {
						["achievementID"] = 9825,	-- Master Relic Hunter (A)
					}),
				},
			}),
			q(37994, {	-- Dark Grimoire: Breaching the Barrier (H)
				["sourceQuest"] = 37884,	-- Dark Grimoire: The Final Ingredient
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coord"] = { 40.2, 56.0, FROSTWALL },
				["isDaily"] = true,
				["races"] = HORDE_ONLY,
				["g"] = {
					crit(27601, {
						["achievementID"] = 9836,	-- Master Relic Hunter (H)
					}),
				},
			}),
			q(37884, {	-- Dark Grimoire: The Final Ingredient
				["sourceQuest"] = 37883,	-- Dark Grimoire: The Second Ingredient
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(37882, {	-- Dark Grimoire: The First Ingredient
				["sourceQuest"] = 37881,	-- Treasure Contract: Explosive Discoveries
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(37883, {	-- Dark Grimoire: The Second Ingredient
				["sourceQuest"] = 37882,	-- Dark Grimoire: The First Ingredient
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(37773, {	-- Death to Amethon!
				["coord"] = { 34.4, 32.5, LUNARFALL },
				["provider"] = { "n", 89805 },	-- Renzik "The Shiv"
				["isDaily"] = true,
				["races"] = ALLIANCE_ONLY,
				["maps"] = { TALADOR },
				["sym"] = {{"select","itemID",
					122191,    -- Bloody Sack of Invitations
				}},
			}),
			q(37813, {	-- Death to Amethon!
				["coord"] = { 40.2, 56.7, FROSTWALL },
				["races"] = HORDE_ONLY,
				["maps"] = { TALADOR },
				["isDaily"] = true,
				["provider"] = { "n", 89806 },	-- Shadow Hunter Ty'jin
				["sym"] = {{"select","itemID",
					122191,    -- Bloody Sack of Invitations
				}},
			}),
			q(37774, {	-- Death to Gor'thul!
				["coord"] = { 34.4, 32.5, LUNARFALL },
				["provider"] = { "n", 89805 },	-- Renzik "The Shiv"
				["isDaily"] = true,
				["races"] = ALLIANCE_ONLY,
				["maps"] = { SPIRES_OF_ARAK },
				["sym"] = {{"select","itemID",
					122191,    -- Bloody Sack of Invitations
				}},
			}),
			q(37814, {	-- Death to Gor'thul!
				["coord"] = { 40.2, 56.7, FROSTWALL },
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["maps"] = { SPIRES_OF_ARAK },
				["provider"] = { "n", 89806 },	-- Shadow Hunter Ty'jin
				["sym"] = {{"select","itemID",
					122191,    -- Bloody Sack of Invitations
				}},
			}),
			q(37778, {	-- Death to Hivelord Ik'rix!
				["coord"] = { 34.4, 32.5, LUNARFALL },
				["provider"] = { "n", 89805 },	-- Renzik "The Shiv"
				["isDaily"] = true,
				["races"] = ALLIANCE_ONLY,
				["maps"] = { FROSTFIRE_RIDGE },
				["sym"] = {{"select","itemID",
					122191,    -- Bloody Sack of Invitations
				}},
			}),
			q(37818, {	-- Death to Hivelord Ik'rix!
				["coord"] = { 40.2, 56.7, FROSTWALL },
				["races"] = HORDE_ONLY,
				["maps"] = { FROSTFIRE_RIDGE },
				["isDaily"] = true,
				["provider"] = { "n", 89806 },	-- Shadow Hunter Ty'jin
				["sym"] = {{"select","itemID",
					122191,    -- Bloody Sack of Invitations
				}},
			}),
			q(37775, {	-- Death to Nullifier Darkoor!
				["coord"] = { 34.4, 32.5, LUNARFALL },
				["provider"] = { "n", 89805 },	-- Renzik "The Shiv"
				["isDaily"] = true,
				["races"] = ALLIANCE_ONLY,
				["maps"] = { DRAENOR_NAGRAND },
				["sym"] = {{"select","itemID",
					122191,    -- Bloody Sack of Invitations
				}},
			}),
			q(37815, {	-- Death to Nullifier Darkoor!
				["coord"] = { 40.2, 56.7, FROSTWALL },
				["races"] = HORDE_ONLY,
				["maps"] = { DRAENOR_NAGRAND },
				["isDaily"] = true,
				["provider"] = { "n", 89806 },	-- Shadow Hunter Ty'jin
				["sym"] = {{"select","itemID",
					122191,    -- Bloody Sack of Invitations
				}},
			}),
			q(37948, {	-- Death to Nullifier Darkoor!
				["coord"] = { 34.4, 32.5, LUNARFALL },
				["provider"] = { "n", 89805 },	-- Renzik "The Shiv"
				["isDaily"] = true,
				["races"] = ALLIANCE_ONLY,
				["maps"] = { DRAENOR_NAGRAND },
				["sym"] = {{"select","itemID",
					122191,    -- Bloody Sack of Invitations
				}},
			}),
			q(37949, {	-- Death to Nullifier Darkoor!
				["coord"] = { 40.2, 56.7, FROSTWALL },
				["races"] = HORDE_ONLY,
				["maps"] = { DRAENOR_NAGRAND },
				["isDaily"] = true,
				["provider"] = { "n", 89806 },	-- Shadow Hunter Ty'jin
				["sym"] = {{"select","itemID",
					122191,    -- Bloody Sack of Invitations
				}},
			}),
			q(37777, {	-- Death to Tremor!
				["coord"] = { 34.4, 32.5, LUNARFALL },
				["provider"] = { "n", 89805 },	-- Renzik "The Shiv"
				["isDaily"] = true,
				["races"] = ALLIANCE_ONLY,
				["maps"] = { GORGROND },
				["sym"] = {{"select","itemID",
					122191,    -- Bloody Sack of Invitations
				}},
			}),
			q(37817, {	-- Death to Tremor!
				["coord"] = { 40.2, 56.7, FROSTWALL },
				["races"] = HORDE_ONLY,
				["maps"] = { GORGROND },
				["isDaily"] = true,
				["provider"] = { "n", 89806 },	-- Shadow Hunter Ty'jin
				["sym"] = {{"select","itemID",
					122191,    -- Bloody Sack of Invitations
				}},
			}),
			q(37776, {	-- Death to Undertow!
				["coord"] = { 34.4, 32.5, LUNARFALL },
				["provider"] = { "n", 89805 },	-- Renzik "The Shiv"
				["isDaily"] = true,
				["races"] = ALLIANCE_ONLY,
				["maps"] = { DRAENOR_SHADOWMOON_VALLEY },
				["sym"] = {{"select","itemID",
					122191,    -- Bloody Sack of Invitations
				}},
			}),
			q(37816, {	-- Death to Undertow!
				["coord"] = { 40.2, 56.7, FROSTWALL },
				["races"] = HORDE_ONLY,
				["maps"] = { DRAENOR_SHADOWMOON_VALLEY },
				["isDaily"] = true,
				["provider"] = { "n", 89806 },	-- Shadow Hunter Ty'jin
				["sym"] = {{"select","itemID",
					122191,    -- Bloody Sack of Invitations
				}},
			}),
			q(34692, {	-- Delegating on Draenor
				["sourceQuests"] = { 34646 },	-- Qiana Moonshadow
				["coord"] = { 40.2, 43.6, LUNARFALL },
				["provider"] = { "n", 79953 },	-- Lieutenant Thorn
				["races"] = ALLIANCE_ONLY,
			}),
			q(34379, {	-- Den of Wolves
				["provider"] = { "n", 76411 },	-- Farseer Drek'Thar
				["coord"] = { 49.7, 49.5, FROSTWALL },
				["races"] = HORDE_ONLY,
				["sourceQuest"] = 34775,	-- Mission Probable
			}),
			q(37979, {	-- Dream of Argus: The Crystal Reborn (A)
				["sourceQuest"] = 37978,	-- Dream of Argus: The Final Fragment
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coord"] = { 34.6, 32.7, LUNARFALL },
				["isDaily"] = true,
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					crit(27599, {
						["achievementID"] = 9825,	-- Master Relic Hunter (A)
					}),
				},
			}),
			q(37997, {	-- Dream of Argus: The Crystal Reborn (H)
				["sourceQuest"] = 37978,	-- Dream of Argus: The Final Fragment
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coord"] = { 40.2, 56.0, FROSTWALL },
				["isDaily"] = true,
				["races"] = HORDE_ONLY,
				["g"] = {
					crit(27605, {
						["achievementID"] = 9836,	-- Master Relic Hunter (H)
					}),
				},
			}),
			q(37978, {	-- Dream of Argus: The Final Fragment
				["sourceQuest"] = 37977,	-- Dream of Argus: The Second Fragment
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(37976, {	-- Dream of Argus: The First Fragment
				["sourceQuest"] = 37973,	-- Treasure Contract: The Artificer
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(37977, {	-- Dream of Argus: The Second Fragment
				["sourceQuest"] = 37976,	-- Dream of Argus: The First Fragment
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(39034, {	-- Emissary of War
				["provider"] = { "n", 94870 },	-- Seer Kazal
				["coords"] = { { 41.8, 46.8, FROSTWALL }, { 33.6, 37.6, LUNARFALL } },
				["isWeekly"] = true,
				["u"] = REMOVED_FROM_GAME,
				["g"] = {
					i(127853),	-- Iron Fleet Treasure Chest
				},
			}),
			q(34586, {	-- Establish Your Garrison
				["coord"] = { 32.7, 34.0, LUNARFALL },
				["provider"] = { "n", 79243 },	-- Baros Alexston
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 34585 },	-- Quakefist
				["g"] = {
					i(110560),	-- Garrison Hearthstone (TOY!)
				},
			}),
			q(34378, {	-- Establish Your Garrison
				["coord"] = { 51.2, 39.6, FROSTWALL },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 78466 },	-- Gazlowe
				["sourceQuests"] = { 34765 },	-- The Den of Skog
				["g"] = {
					i(110560),	-- Garrison Hearthstone (TOY!)
				},
			}),
			q(34583, {	-- For the Alliance
				["sourceQuests"] = { 34582 },	-- Finding a Foothold
				["coord"] = { 30.0, 34.3, LUNARFALL },
				["provider"] = { "n", 79470 },	-- Vindicator Maraad
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(108908),	-- Rangari Initiate Crossbow
					i(108909),	-- Karabor Footman's Pike
					i(108910),	-- Rangari Initiate Dagger
					i(108912),	-- Karabor Greatsword
					i(108913),	-- Rangari Initiate Armblade
					i(108914),	-- Karabor Footman Sword
					i(108918),	-- Karabor Arcanist Rod
					i(108919),	-- Karabor Augury Mace
				},
			}),
			q(34364, {	-- For the Horde!
				["coord"] = { 51.2, 43.2, FROSTWALL },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 70859 },	-- Thrall
				["sourceQuest"] = 34402,	-- Of Wolves and Warriors
				["g"] = {
					i(111540),	-- Frostwolf Augury Staff
					i(111539),	-- Frostwolf Boot Knife
					i(111536),	-- Frostwolf Cleaver
					i(111537),	-- Frostwolf Greataxe
					i(111535),	-- Frostwolf Hand Axe
					i(111538),	-- Frostwolf Hunting Crossbow
					i(111541),	-- Frostwolf Mountaineering Stick
					i(111542),	-- Frostwolf Wind-Talker Cudgel
				},
			}),
			q(39195, {	-- Gems of the Apexis
				["requireSkill"] = JEWELCRAFTING,
				["isBreadcrumb"] = true,
				["sourceQuest"] = 38445,	-- The Assault Base
				["provider"] = { "n", 77209 },	-- Baros Alexston
				["races"] = ALLIANCE_ONLY,
			}),
			q(39175, {	-- Gems of the Apexis
				["requireSkill"] = JEWELCRAFTING,
				["isBreadcrumb"] = true,
				["provider"] = { "n", 78466 },	-- Gazlowe
				["races"] = HORDE_ONLY,
			}),
			q(33461, {	-- Gloomshade Game Hunter
				["providers"] = {
					{ "o", 230865 },	-- List of Ingredients
					{ "n", 79966 },	-- Lost Packmule
				},
				-- ["icon"] = 632821,
				["sourceQuests"] = {
					33081,	-- Escape from Shaz'gul
					33059,	-- The Fate of Karabor
				},
				["races"] = ALLIANCE_ONLY,
				["coords"] = {
					{ 30.2, 18.1, LUNARFALL },	-- level 2 garrison
					{ 39.8, 29.4, DRAENOR_SHADOWMOON_VALLEY },	-- Lost Packmule
				},
			}),
			q(37917, {	-- Gronnsbane: The Blessing of Fire
				["sourceQuest"] = 37916, -- Gronnsbane: The Broken Spear
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(37918, {	-- Gronnsbane: The Blessing of Fire
				["sourceQuest"] = 37917, -- Gronnsbane: The Broken Spear
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(37919, {	-- Gronnsbane: The Blessing of Beasts (A)
				["sourceQuest"] = 37918, -- Gronnsbane: The Blessing of Fire
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coord"] = { 34.6, 32.7, LUNARFALL },
				["isDaily"] = true,
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					crit(27579, {
						["achievementID"] = 9825,	-- Master Relic Hunter (A)
					}),
				},
			}),
			q(37995, {	-- Gronnsbane: The Blessing of Beasts (H)
				["sourceQuest"] = 37918, -- Gronnsbane: The Blessing of Fire
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coord"] = { 40.2, 56.0, FROSTWALL },
				["isDaily"] = true,
				["races"] = HORDE_ONLY,
				["g"] = {
					crit(27600, {
						["achievementID"] = 9836,	-- Master Relic Hunter (H)
					}),
				},
			}),
			q(37916, {	-- Gronnsbane: The Broken Spear
				["sourceQuest"] = 37914, -- Treasure Contract: The Thunderlord Sage
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(37799, {	-- Gutrek's Cleaver: The Final Piece
				["sourceQuest"] = 37798,	-- Gutrek's Cleaver: The Second Piece
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(37797, {	-- Gutrek's Cleaver: The First Piece
				["sourceQuest"] = 37788,	-- Treasure Contract: Gutrek's Cleaver
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(37798, {	-- Gutrek's Cleaver: The Second Piece
				["sourceQuest"] = 37797,	-- Gutrek's Cleaver: The First Piece
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(37811, {	-- Gutrek's Cleaver: The Spirit Forge (A)
				["sourceQuest"] = 37799,	-- Gutrek's Cleaver: The Final Piece
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coord"] = { 34.6, 32.7, LUNARFALL },
				["isDaily"] = true,
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					crit(27582, {
						["achievementID"] = 9825,	-- Master Relic Hunter (A)
					}),
				},
			}),
			q(37992, {	-- Gutrek's Cleaver: The Spirit Forge (H)
				["sourceQuest"] = 37799,	-- Gutrek's Cleaver: The Final Piece
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coord"] = { 40.2, 56.0, FROSTWALL },
				["isDaily"] = true,
				["races"] = HORDE_ONLY,
				["g"] = {
					crit(27603, {
						["achievementID"] = 9836,	-- Master Relic Hunter (H)
					}),
				},
			}),
			q(36589, {	-- Heavy Arms
				["races"] = HORDE_ONLY,
				["provider"] = { "i", 116438 },	-- Burned-Out Hand Cannon
				["requireSkill"] = ENGINEERING,
			}),
			q(38296, {	-- Herbs Galore
				["providers"] = {
					{ "n", 91031 },	-- Nicholas Mitrik (Horde)
					{ "n", 91404 },	-- Samantha Scarlet (Alliance)
				},
				["isDaily"] = true,
				["cost"] = {
					{ "i", 109125, 10 },	-- 10x Fireweed
					{ "i", 109126, 10 },	-- 10x Gorgrond Flytrap
					{ "i", 109128, 10 },	-- 10x Nagrand Arrowbloom
					{ "i", 109127, 10 },	-- 10x Starflower
					{ "i", 109129, 10 },	-- 10x Talador Orchid
				},
			}),
			q(36953, {	-- It's a Matter of Strategy
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
				["providers"] = {
					{ "o", 232416 },	-- Command Board lvl 1
					{ "o", 233291 },	-- Command Board lvl 2
					{ "o", 237022 },	-- Command Board lvl 3
				},
			}),
			q(34681, {	-- It's a Matter of Strategy
				["coord"] = { 45.9, 42.7, FROSTWALL },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 78487 },	-- Rokhan
				["sourceQuest"] = 36494,	-- News from Talador
			}),
			q(35176, {	-- Keeping it Together
				["sourceQuests"] = { 34586 },	-- Establish Your Garrison
				["coord"] = { 41.1, 49.4, LUNARFALL },
				["provider"] = { "n", 77209 },	-- Baros Alexston
				["races"] = ALLIANCE_ONLY,
			}),
			q(36352, {	-- Locating the Lapidarist
				["coord"] = { 60.9, 40.0, FROSTWALL },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 84967 },	-- "Appraiser" Sazsel Stickyfingers
				["sourceQuest"] = 36314,	-- The Intricate Pendant
				["requireSkill"] = JEWELCRAFTING,
			}),
			q(34584, {	-- Looking for Lumber
				["sourceQuests"] = { 34583 },	-- For the Alliance!
				["coord"] = { 32.5, 34.2, LUNARFALL },
				["provider"] = { "n", 79243 },	-- Baros Alexston
				["races"] = ALLIANCE_ONLY,
			}),
			q(34820, {	-- Lost Lumberjacks
				["sourceQuests"] = {
					33081,	-- Escape from Shaz'gul
					33059,	-- The Fate of Karabor
				},
				["coords"] = {
					{ 29.6, 19.3, LUNARFALL },	-- level 2 garrison
					{ 40.3, 54.4, LUNARFALL },	-- lvl 3 garrison
				},
				["provider"] = { "n", 80163 },	-- Ken Loggin
				["races"] = ALLIANCE_ONLY,
			}),
			q(33359, {	-- Meet Us at Starfall Post
				["sourceQuests"] = { 34586 },	-- Establish Your Garrison
				["provider"] = { "n", 80645 },	-- Cordana Felsong
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["coords"] = {
					{ 43.8, 44.4, LUNARFALL },	-- lvl 1 garrison
					{ 43.1, 44.7, LUNARFALL },	-- lvl 2/3 garrison
				},
			}),
			q(34778, {	-- Migrant Workers
				["sourceQuests"] = { 34692 },	-- Delegating on Draenor
				["provider"] = { "n", 79457 },	-- Vindicator Maraad
				["races"] = ALLIANCE_ONLY,
				["coords"] = {
					{ 44.1, 53.2, LUNARFALL },	-- lvl 1 garrison
					{ 41.5, 44.9, LUNARFALL },	-- lvl 2/3 garrison
				},
			}),
			q(36615, {	-- My Very Own Castle
				["provider"] = { "n", 77209 },	-- Baros Alexston
				["coord"] = { 31.8, 31.0, LUNARFALL },
				["sourceQuest"] = 36592,	-- Bigger is Better
				["races"] = ALLIANCE_ONLY,
			}),
			q(36614, {	-- My Very Own Fortress
				["coord"] = { 42.1, 55.5, FROSTWALL },	-- Rank 2
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 78466 },	-- Gazlowe
				["sourceQuest"] = 36567,	-- Bigger is Better
			}),
			q(38344, {	-- Mystery Notebook
				["sourceQuest"] = 36615,	-- My Very Own Castle
				["provider"] = { "n", 91589 },	-- Fix "Smallie" Biggswrench
				["coord"] = { 33.8, 36.4, LUNARFALL },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = {
					ADDED_6_1_0,
					REMOVED_9_0_1,	-- seems inadvertent, maybe blizzard will fix eventually
				},
			}),
			q(38306, {	-- Mystery Notebook
				["sourceQuests"] = { 36614 },	-- My Very Own Fortress
				["coord"] = { 40.9, 47.8, FROSTWALL },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 91072 },	-- Drix Bassbolter
				["timeline"] = {
					ADDED_6_1_0,
					REMOVED_9_0_1,	-- seems inadvertent, maybe blizzard will fix eventually
				},
			}),
			q(38408, {	-- New Goods
				["sourceQuests"] = { 36615 },	-- My Very Own Castle
				["coord"] = { 28.7, 35.0, LUNARFALL },
				["provider"] = { "n", 79953 },	-- Lieutenant Thorn
				["races"] = ALLIANCE_ONLY,
			}),
			q(38427, {	-- New Goods
				["sourceQuests"] = { 36614 },	-- My Very Own Fortress
				["coord"] = { 39.2, 55.3, FROSTWALL },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 79740 },	-- Warmaster Zog
			}),
			q(35174, {	-- Pale Moonlight
				["provider"] = { "n", 79457 },	-- Vindicator Maraad
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 44.0, 53.3, LUNARFALL },
				["sourceQuests"] = { 34586 },	-- Establish Your Garrison
			}),
			q(36861, {	-- Pinchwhistle Gearworks
				["sourceQuests"] = { 34586 },	-- Establish Your Garrison
				["provider"] = { "n", 86589 },	-- Watchman Tilnia
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["coords"] = {
					{ 45.8, 46.0, LUNARFALL },	-- lvl 1 garrison
					{ 46.1, 45.7, LUNARFALL },	-- lvl 2/3 garrison
				},
			}),
			q(36862, {	-- Pinchwhistle Gearworks
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 86614 },	-- Pinchwhistle Gearworks
				["sourceQuest"] = 34378,	-- Establish Your Garrison
				["isBreadcrumb"] = true,
				["coords"] = {
					{ 50.8, 50.7, FROSTWALL },	-- lvl 1 garrison
					{ 46.8, 45.8, FROSTWALL },	-- lvl 2 garrison
				},
			}),
			q(37433, {	-- Proving Grounds
				["coord"] = { 29.1, 34.6, LUNARFALL },
				["provider"] = { "n", 79953 },	-- Lieutenant Thorn
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 34586 },	-- Establish Your Garrison
				["g"] = {
					i(119463),	-- Staff of Trials
					i(119458),	-- Greataxe of Trials
					i(119462),	-- Skullcutter of Trials
					i(119459),	-- Longbow of Trials
					i(119461),	-- Skullthumper of Trials
					i(119460),	-- Lockbreaker of Trials
					i(119464),	-- Cudgel of Trials
					i(119457),	-- Handaxe of Trials
				},
			}),
			q(37434, {	-- Proving Grounds
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 79740 },	-- Warmaster Zog
				["sourceQuest"] = 34378,	-- Establish Your Garrison
				["coords"] = {
					{ 53.8, 54.9, FROSTWALL },	-- lvl 1 garrison
					{ 40.5, 54.8, FROSTWALL },	-- lvl 2 garrison
				},
				["g"] = {
					i(119463),	-- Staff of Trials
					i(119458),	-- Greataxe of Trials
					i(119462),	-- Skullcutter of Trials
					i(119459),	-- Longbow of Trials
					i(119461),	-- Skullthumper of Trials
					i(119460),	-- Lockbreaker of Trials
					i(119464),	-- Cudgel of Trials
					i(119457),	-- Handaxe of Trials
				},
			}),
			q(34646, {	-- Qiana Moonshadow
				["sourceQuests"] = { 34587 },	-- Build Your Barracks
				["coord"] = { 44.1, 53.3, LUNARFALL },
				["provider"] = { "n", 79457 },	-- Vindicator Maraad
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					follower(34),	-- Qiana Moonshadow
				},
			}),
			q(34585, {	-- Quakefist
				["sourceQuests"] = {
					34584,	-- Looking for Lumber
					34616,	-- Ravenous Ravens
				},
				["coord"] = { 31.4, 35.8, LUNARFALL },
				["provider"] = { "n", 79567 },	-- Yrel
				["races"] = ALLIANCE_ONLY,
			}),
			q(34616, {	-- Ravenous Ravens
				["sourceQuests"] = { 34583 },	-- For the Alliance!
				["coord"] = { 32.5, 34.2, LUNARFALL },
				["provider"] = { "n", 79243 },	-- Baros Alexston
				["races"] = ALLIANCE_ONLY,
			}),
			q(38287, {	-- Raw Beast Hides
				["providers"] = {
					{ "n", 91033 },	-- Zeezu (Horde)
					{ "n", 91024 },	-- Jake the Fox (Alliance)
				},
				["isDaily"] = true,
				["cost"] = { { "i", 110609, 50 } },	-- 50x Raw Beast Hide
			}),
			q(37288, {	-- Resources in Ashran
			--	unknown SQ.  wowhead says level requirement is 92, but i didn't see this until i hit 100 and upgraded to a level 3 garrison
			--	possible that you have to pick up 'outpost building assembly notes,' which are awarded by specific quests in spires of arak and gorgrond
			--	i had also just received my first outpost notes before finding this quest
			--	gorgrond is a level 92 zone, so that's possible
			--	["sourceQuests"] = {  },	--
				["coord"] = { 29.5, 33.3, LUNARFALL },
				["provider"] = { "n", 77209 },	-- Baros Alexston
				["races"] = ALLIANCE_ONLY,
			}),
			q(34733, {    -- Services of Dagg
				["sourceQuests"] = { 34651 },	-- Dagg
				["provider"] = { "n", 79492 },	-- Dagg
				["aqd"] = {
					["coord"] = { 61.6, 74.8, LUNARFALL },
				},
				["hqd"] = {
					["coord"] = { 48.6, 17.2, FROSTWALL },
				},
				["g"] = {
					follower(32),    -- Follower: Dagg
				},
			}),
			q(37289, {	-- Shadowmoon Invasion!
			--	not a real invasion!  this is the trial one.
				["sourceQuests"] = {
					33081,	-- Escape from Shaz'gul
					33059,	-- The Fate of Karabor
				},
				["coord"] = { 29.5, 16.4, LUNARFALL },	-- level 2 garrison
				["provider"] = { "n", 88223 },	-- Sergeant Crowler
				["races"] = ALLIANCE_ONLY,
				["DisablePartySync"] = true,
			}),
			o(233263,{	-- Shamanstone: Blessing of the Wolf
				["questID"] = 33977,	-- Blessing of the Wolf
				["races"] = HORDE_ONLY,
				["coords"] = {
					{ 48.91, 52.21, FROSTWALL },	-- Tier 1 Garrison
					{ 48.47, 52.12, FROSTWALL },	-- Tier 2 Garrison
					{ 48.67, 52.21, FROSTWALL },	-- Tier 3 Garrison
				},
			}),
			q(35166, {	-- Ship Salvage
				["sourceQuests"] = { 34586 },	-- Establish Your Garrison
				["coord"] = { 41.1, 49.4, LUNARFALL },
				["provider"] = { "n", 77209 },	-- Baros Alexston
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/15 Drudgeboat Salvage
						["providers"] = {
							{ "i", 112696 },	-- Drudgeboat Salvage (QI!)
							{ "o", 231851 },	-- Drudgeboat Salvage
							{ "o", 231826 },	-- Drudgeboat Salvage
						},
						["crs"] = {
							79205,	-- Pale Devourer
							81408,	-- Shadowmoon Darter
						},
					}),
				},
			}),
			q(36522, {	-- Solidarity in Death
				["provider"] = { "n", 85777 },	-- Ahm
				["coords"] = {
					{ 50.5, 15.7, FROSTWALL },
					{ 53.4, 69.2, LUNARFALL },
				},
				["sourceQuest"] = 33973,	-- Dying Wish
				["g"] = {
					follower(208),	-- Ahm
				},
			}),
			q(36594, {	-- "Spare" Parts
				["coord"] = { 62.2, 73.4, FROSTWALL },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 85882 },	-- Blixthraz Blastcharge
				["sourceQuest"] = 36589,	-- Heavy Arms
				["requireSkill"] = ENGINEERING,
			}),
			q(38293, {	-- Sumptuous Fur
				["providers"] = {
					{ "n", 91034 },	-- Calvo Klyne (Horde)
					{ "n", 91025 },	-- Dorothy "Two" (Alliance)
				},
				["isDaily"] = true,
				["cost"] = { { "i", 111557, 50 } },	-- 50x Sumptuous Fur
			}),
			q(34674, {	-- Taking the Fight to Nagrand
				["description"] = WOD_CHROMIE_TIME_DESCRIPTION,
				["providers"] = {
					{ "o", 232397 },	-- Bulletin Board
					{ "o", 232398 },	-- Bounty Board
					{ "o", 232400 },	-- Bulletin Board
				},
				["coord"] = { 42.8, 45.2, LUNARFALL },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(36952, {	-- Taking the Fight to Nagrand
				["description"] = WOD_CHROMIE_TIME_DESCRIPTION,
				["providers"] = {
					{ "o", 232416 },	-- Command Board lvl 1
					{ "o", 233291 },	-- Command Board lvl 2
					{ "o", 237022 },	-- Command Board lvl 3
				},
				["coord"] = { 49.8, 41.7, FROSTWALL },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(37184, {	-- Taking the Fight to Nagrand
				["provider"] = { "n", 81492 },	-- Bodrick Grey
				["coord"] = { 38.2, 37.0, LUNARFALL },	-- garrison lvl 3
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["sourceQuests"] = {
					36601,	-- News From Nagrand (Shadow-sage Iskar)
					36606,	-- News From Nagrand (Lieutenant Willem)
				},
			}),
			q(34794, {	-- Taking the Fight to Nagrand
				["provider"] = { "n", 78487 },	-- Rokhan
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
				["sourceQuests"] = {
					36601,	-- News From Nagrand (Shadow-sage Iskar)
					36606,	-- News From Nagrand (Lieutenant Willem)
				},
			}),
			q(39041, {	-- The Arena Calls
				["provider"] = { "n", 94870 },	-- Seer Kazal
				["coords"] = { { 41.8, 46.8, FROSTWALL }, { 33.6, 37.6, LUNARFALL } },
				["isWeekly"] = true,
				["u"] = REMOVED_FROM_GAME,
			}),
			q(34676, {	-- The Critical Path
				["description"] = WOD_CHROMIE_TIME_DESCRIPTION,
				["providers"] = {
					{ "o", 232397 },	-- Bulletin Board
					{ "o", 232398 },	-- Bounty Board
					{ "o", 232400 },	-- Bulletin Board
				},
				["coord"] = { 42.8, 45.2, LUNARFALL },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["DisablePartySync"] = true,
			}),
			q(37183, {	-- The Critical Path
				["provider"] = { "n", 81492 },	-- Bodrick Grey
				["coord"] = { 38.2, 37.0, LUNARFALL },	-- garrison lvl 3
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["DisablePartySync"] = true,
			}),
			q(36314, {	-- The Intricate Pendant
				["races"] = HORDE_ONLY,
				["provider"] = { "i", 115287 },	-- Intricate Crimson Pendant
				["requireSkill"] = JEWELCRAFTING,
			}),
			q(35556, {	-- The Secrets of Gorgrond
				["isBreadcrumb"] = true,
				["provider"] = { "n", 81492 },	-- Bodrick Grey
				["races"] = ALLIANCE_ONLY,
				["coords"] = {
					{ 31.4, 33.5, LUNARFALL },	-- level 1 garrison
					{ 38.3, 36.7, LUNARFALL },	-- level 2/3 garrison
				},
			}),
			q(35557, {	-- The Secrets of Gorgrond
				["description"] = WOD_CHROMIE_TIME_DESCRIPTION,
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
				["providers"] = {
					{ "o", 232416 },	-- Command Board lvl 1
					{ "o", 233291 },	-- Command Board lvl 2
					{ "o", 237022 },	-- Command Board lvl 3
				},
			}),
			q(37945, {	-- The Silent Skull: Taking from the Taker (A)
				["sourceQuest"] = 37944,	-- The Silent Skull: The Third Reagent
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coord"] = { 34.6, 32.7, LUNARFALL },
				["isDaily"] = true,
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					crit(27584, {
						["achievementID"] = 9825,	-- Master Relic Hunter (A)
					}),
				},
			}),
			q(37996, {	-- The Silent Skull: Taking from the Taker (H)
				["sourceQuest"] = 37944,	-- The Silent Skull: The Third Reagent
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coord"] = { 40.2, 56.0, FROSTWALL },
				["isDaily"] = true,
				["races"] = HORDE_ONLY,
				["g"] = {
					crit(27604, {
						["achievementID"] = 9836,	-- Master Relic Hunter (H)
					}),
				},
			}),
			q(37942, {	-- The Silent Skull: The First Reagent
				["sourceQuest"] = 37941,	-- Treasure Contract: The Infected Orc
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(37943, {	-- The Silent Skull: The Second Reagent
				["sourceQuest"] = 37942,	-- The Silent Skull: The First Reagent
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(37944, {	-- The Silent Skull: The Third Reagent
				["sourceQuest"] = 37943,	-- The Silent Skull: The Second Reagent
				["provider"] = { "o", 239791 },	-- Relic Hunting Notes
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 32.7, LUNARFALL } },
				["isDaily"] = true,
			}),
			q(35459, {	-- The Southern Wilds
				["sourceQuests"] = { 34019 },	-- Shadows Awaken
				["coord"] = { 42.8, 45.2, LUNARFALL },
				["races"] = ALLIANCE_ONLY,
				["u"] = REMOVED_FROM_GAME, -- There is no Bulletin Board anymore, only heroes calls
				["isBreadcrumb"] = true,
				["providers"] = {
					{ "o", 232397 },	-- Bulletin Board
					{ "o", 232398 },	-- Bounty Board
					{ "o", 232400 },	-- Bulletin Board
				},
			}),
			q(39033, {	-- The Time to Strike
				["provider"] = { "n", 94870 },	-- Seer Kazal
				["coords"] = { { 41.8, 46.8, FROSTWALL }, { 33.6, 37.6, LUNARFALL } },
				["isWeekly"] = true,
				["u"] = REMOVED_FROM_GAME,
			}),
			q(39042, {	-- The Very Best
				["provider"] = { "n", 94870 },	-- Seer Kazal
				["coords"] = {
					{ 33.6, 37.6, LUNARFALL },
					{ 41.8, 46.8, FROSTWALL },
				},
				["isWeekly"] = true,
				["u"] = REMOVED_FROM_GAME,
				["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
			}),
			q(34192, {	-- Things Are Not Goren Our Way
				["sourceQuests"] = { 36592 },	-- Bigger is Better
				["provider"] = { "n", 77730 },	-- Timothy Leens
				["coord"] = { 65.2, 41.8, LUNARFALL },
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					garrisonBuilding(61),	-- Frostwall Mines
				},
			}),
			q(35154, {	-- Things Are Not Goren Our Way
				["coord"] = { 62.0, 73.9, FROSTWALL },	-- lvl 2 garrison
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 81688 },	-- Gorsol
				["sourceQuest"] = 36567,	-- Bigger is Better
				["g"] = {
					garrisonBuilding(61),	-- Frostwall Mines lvl 1
				},
			}),
			q(40418, {	-- To Tanaan!
				-- FOUND! Almost certainly a breadcrumb for WoD characters that used a Legion boost. Keeping note in here just in case we ever find additional conditions to pop it.
				["u"] = REMOVED_FROM_GAME,
				["sourceQuests"] = { 36615 },	-- My Very Own Castle
				["races"] = ALLIANCE_ONLY,
				["altQuests"] = { 38253 },	-- Garrison Campaign: War Council
				["description"] = "This quest is only available to characters who used a character boost during Warlords of Draenor leading into Legion. If you receive this quest on a character that did NOT use a boost during that time, please report in the errors channel of the discord!",
			}),
			q(40417, {	-- To Tanaan!
				-- FOUND! Almost certainly a breadcrumb for WoD characters that used a Legion boost. Keeping note in here just in case we ever find additional conditions to pop it.
				["u"] = REMOVED_FROM_GAME,
				["sourceQuests"] = { 36614 },	-- My Very Own Fortress
				["races"] = HORDE_ONLY,
				["altQuests"] = { 38567 },	-- Garrison Campaign: War Council
				["description"] = "This quest is only available to characters who used a character boost during Warlords of Draenor leading into Legion. If you receive this quest on a character that did NOT use a boost during that time, please report in the errors channel of the discord!",
			}),
			q(37848, {	-- Treasure Contract: Amulet of Rukhmar
				["isDaily"] = true,
				["providers"] = {
					{ "n", 89793 },	-- Harrison Jones
					{ "n", 92223 },	-- Surveyor Daltry
				},
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 33.2, LUNARFALL } },
			}),
			q(37881, {	-- Treasure Contract: Explosive Discoveries
				["isDaily"] = true,
				["providers"] = {
					{ "n", 89793 },	-- Harrison Jones
					{ "n", 92223 },	-- Surveyor Daltry
				},
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 33.2, LUNARFALL } },
			}),
			q(37788, {	-- Treasure Contract: Gutrek's Cleaver
				["isDaily"] = true,
				["providers"] = {
					{ "n", 89793 },	-- Harrison Jones
					{ "n", 92223 },	-- Surveyor Daltry
				},
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 33.2, LUNARFALL } },
			}),
			q(37941, {	-- Treasure Contract: The Infected Orc
				["isDaily"] = true,
				["providers"] = {
					{ "n", 89793 },	-- Harrison Jones
					{ "n", 92223 },	-- Surveyor Daltry
				},
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 33.2, LUNARFALL } },
			}),
			q(37973, {	-- Treasure Contract: The Artificer
				["isDaily"] = true,
				["providers"] = {
					{ "n", 89793 },	-- Harrison Jones
					{ "n", 92223 },	-- Surveyor Daltry
				},
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 33.2, LUNARFALL } },
			}),
			q(37914, {	-- Treasure Contract: The Thunderlord Sage
				["isDaily"] = true,
				["providers"] = {
					{ "n", 89793 },	-- Harrison Jones
					{ "n", 92223 },	-- Surveyor Daltry
				},
				["coords"] = { { 40.2, 56.0, FROSTWALL }, { 34.6, 33.2, LUNARFALL } },
			}),
			q(37290, {	-- Upgrades in Ashran
				["description"] = "You need to have Comprehensive Construction Outpost Guide (item 116395) in your inventory",
				["provider"] = { "n", 78466 },	-- Gazlowe
				["coord"] = { 37.5, 50.3, FROSTWALL },	-- lvl 3
				["races"] = HORDE_ONLY,
			}),
			q(34209, {	-- Vouchsafe Our Arrival
				["coord"] = { 49.4, 36.5, FROSTWALL },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 79252 },	-- Cordana Felsong
				["sourceQuest"] = 34378,	-- Establish Your Garrison
			}),
			o(236165, {	-- War Planning Map
				["sourceQuest"] = 36592,	-- Bigger is Better
				["races"] = ALLIANCE_ONLY,
				["coords"] = {
					{ 30.7, 31.8, LUNARFALL },	-- lvl 2 garrison
					{ 31.4, 31.0, LUNARFALL },	-- lvl 3 garrison
				},
			}),
			o(236206, {	-- War Planning Map
				["sourceQuest"] = 36567,	-- Bigger is Better
				["races"] = HORDE_ONLY,
				["coords"] = {
					{ 41.8, 50.7, FROSTWALL },	-- lvl 2 garrison
					{ 41.0, 50.8, FROSTWALL },	-- lvl 3 garrison
				},
			}),
			q(34736, {	-- We Be Needin' Supplies
				["coord"] = { 51.2, 51.3, FROSTWALL },	-- lvl 1
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 78487 },	-- Rokhan
				["isBreadcrumb"] = true,
				["sourceQuest"] = 33657,	-- Moving In
			}),
			q(38193, {	-- Missive: Assault on the Broken Precipice
				["provider"] = { "i", 122423 },	-- Scouting Missive: Broken Precipice
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(38196, {	-- Missive: Assault on Darktide Roost
				["provider"] = { "i", 122417 },	-- Scouting Missive: Darktide Roost
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(38192, {	-- Missive: Assault on the Everbloom Wilds
				["provider"] = { "i", 122404 },	-- Scouting Missive: Everbloom Wilds
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(38191, {	-- Missive: Assault on the Iron Siegeworks
				["provider"] = { "i", 122406 },	-- Scouting Missive: Iron Siegeworks
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(38198, {	-- Missive: Assault on Lost Veil Anzu
				["provider"] = { "i", 122414 },	-- Scouting Missive: Lost Veil Anzu
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(38190, {	-- Missive: Assault on Magnarok
				["provider"] = { "i", 122399 },	-- Scouting Missive: Magnarok
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(38195, {	-- Missive: Assault on Mok'gol Watchpost
				["provider"] = { "i", 122422 },	-- Scouting Missive: Mok'gol Watchpost
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(38199, {	-- Missive: Assault on Pillars of Fate
				["provider"] = { "i", 122409 },	-- Scouting Missive: Pillars of Fate
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(38201, {	-- Missive: Assault on Shattrath Harbor
				["provider"] = { "i", 122410 },	-- Scouting Missive: Shattrath Harbor
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(38200, {	-- Missive: Assault on Skettis
				["provider"] = { "i", 122407 },	-- Scouting Missive: Skettis
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(38197, {	-- Missive: Assault on Socrethar's Rise
				["provider"] = { "i", 122415 },	-- Scouting Missive: Socrethar's Rise
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(38189, {	-- Missive: Assault on Stonefury Cliffs
				["provider"] = { "i", 122401 },	-- Scouting Missive: Stonefury Cliffs
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(40944, {	-- Missive: Assault on the Heart of Shattrath
				["provider"] = { "i", 133883 },	-- Scouting Missive: The Heart of Shattrath
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(40942, {	-- Missive: Assault on the Pit
				["provider"] = { "i", 133878 },	-- Scouting Missive: The Pit
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(38180, {	-- Missive: Assault on the Broken Precipice
				["provider"] = { "i", 122424 },	-- Scouting Missive: Broken Precipice
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(38182, {	-- Missive: Assault on Darktide Roost
				["provider"] = { "i", 122418 },	-- Scouting Missive: Darktide Roost
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(38179, {	-- Missive: Assault on the Everbloom Wilds
				["provider"] = { "i", 122400 },	-- Scouting Missive: Everbloom Wilds
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(38178, {	-- Missive: Assault on the Iron Siegeworks
				["provider"] = { "i", 122402 },	-- Scouting Missive: Iron Siegeworks
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(38184, {	-- Missive: Assault on Lost Veil Anzu
				["provider"] = { "i", 122413 },	-- Scouting Missive: Lost Veil Anzu
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(38177, {	-- Missive: Assault on Magnarok
				["provider"] = { "i", 122403 },	-- Scouting Missive: Magnarok
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(38181, {	-- Missive: Assault on Mok'gol Watchpost
				["provider"] = { "i", 122421 },	-- Scouting Missive: Mok'gol Watchpost
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(38185, {	-- Missive: Assault on Pillars of Fate
				["provider"] = { "i", 122411 },	-- Scouting Missive: Pillars of Fate
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(38187, {	-- Missive: Assault on Shattrath Harbor
				["provider"] = { "i", 122412 },	-- Scouting Missive: Shattrath Harbor
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(38186, {	-- Missive: Assault on Skettis
				["provider"] = { "i", 122408 },	-- Scouting Missive: Skettis
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(38183, {	-- Missive: Assault on Socrethar's Rise
				["provider"] = { "i", 122416 },	-- Scouting Missive: Socrethar's Rise
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(38176, {	-- Missive: Assault on Stonefury Cliffs
				["provider"] = { "i", 122405 },	-- Scouting Missive: Stonefury Cliffs
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(40943, {	-- Missive: Assault on the Heart of Shattrath
				["provider"] = { "i", 133884 },	-- Scouting Missive: The Heart of Shattrath
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(40941, {	-- Missive: Assault on the Pit
				["provider"] = { "i", 133876 },	-- Scouting Missive: The Pit
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
		}),
	})),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	n(GARRISONS, {
		n(QUESTS, {
			n(GARRISON_CAMPAIGN, {
				q(37647),	-- Tracking Quest - Hide Old Baros / Thorn / Brightstone - after picking up the rose quest item during quest "Garrison Campaign: Every Rose Has Its Thorn" (questID 36160)
				q(37670),	-- [Deprecated] Tracking Quest - Hide Old Baros / Thorn / Brightstone - after picking up the rose quest item during quest "Garrison Campaign: Every Rose Has Its Thorn" (questID 36160)
				q(37197),	-- See Rexxar Quest Giver 002 - Garrison Campaign for Darktide Roost
			}),
			q(38315, { ["timeline"] = { ADDED_6_1_0 } }),	-- DEPRECATED - triggered when turning in "Bringing the Bass" on alliance
			q(38401, { ["timeline"] = { ADDED_6_1_0 } }),	-- DEPRECATED - triggered when turning in "Bringing the Bass" on alliance
			q(38348, { ["timeline"] = { ADDED_6_1_0 } }),	-- Unlock "Silvermoon" - triggers when using "Music Roll: Silvermoon" or "Music Roll: Exodar", appears to be a duplicate ID
			q(37311),	-- Drafting Table Interact
			q(36640),	-- Followers Obtained
			q(36530),	-- Garrison Max-level Choice Tracker: Frostfire Iron Siegeworks
			q(36550),	-- Garrison Max-level Choice Tracker: Frostfire Iron Siegeworks
			q(36529),	-- Garrison Max-level Choice Tracker: Frostfire Magnarok
			q(36551),	-- Garrison Max-level Choice Tracker: Frostfire Magnarok
			q(36538),	-- Garrison Max-level Choice Tracker: Spires Upper Skettis
			q(36559),	-- Garrison Max-level Choice Tracker: Spires Upper Skettis
			q(36560),	-- Garrison Max-level Choice Tracker: Talador Shattrath City, East
			q(36561),	-- Garrison Max-level Choice Tracker: Talador Shattrath City, East
			q(36534),	-- Garrison Max-level Choice Tracker: (GROUP) Talador Shattrath City, West (When picking up Assault on the Heart of Shattrath on Horde character)
			q(36547),	-- Garrison Max-level Choice Tracker: (GROUP) Talador Shattrath City, West (When picking up Assault on the Heart of Shattrath on Horde character)
			q(36663),	-- Garrison Max-level Choice Tracker: ANY CHOICE MADE (When picking up Assault on the Heart of Shattrath on Horde character)
			q(36664),	-- Garrison Max-level Choice Tracker: ANY CHOICE MADE (When picking up Assault on the Heart of Shattrath on Alliance character)
			q(36537),	-- Garrison Max-level Choice Tracker: Spires Shadowmoon Cliffs
			q(36558),	-- Garrison Max-level Choice Tracker: Spires Shadowmoon Cliffs
			q(36532),	-- Garrison Max-level Choice Tracker: (GROUP) Gorgrond Blackrock Foundry
			q(36545),	-- Garrison Max-level Choice Tracker: (GROUP) Gorgrond Blackrock Foundry
			q(36527),	-- Garrison Max-level Choice Tracker: Frostfire Bloodmaul Compound
			q(36549),	-- Garrison Max-level Choice Tracker: Frostfire Bloodmaul Compound
			q(36528),	-- Garrison Max-level Choice Tracker: Shadowmoon Darktide Roost
			q(36555),	-- Garrison Max-level Choice Tracker: Shadowmoon Darktide Roost
			q(36533),	-- Garrison Max-level Choice Tracker: Gorgrond Primal Forest
			q(36552),	-- Garrison Max-level Choice Tracker: Gorgrond Primal Forest
			q(36531),	-- Garrison Max-level Choice Tracker: Shadowmoon Sanctum of Othaar
			q(36556),	-- Garrison Max-level Choice Tracker: Shadowmoon Sanctum of Othaar
			q(36539),	-- Garrison Max-level Choice Tracker: Spires Mushroom Swamp
			q(36557),	-- Garrison Max-level Choice Tracker: Spires Mushroom Swamp
			q(36540),	-- Garrison Max-level Choice Tracker: Nagrand Broken Precipice
			q(36553),	-- Garrison Max-level Choice Tracker: Nagrand Broken Precipice
			q(36541),	-- Garrison Max-level Choice Tracker: Nagrand Mok'gol Watchpost
			q(36554),	-- Garrison Max-level Choice Tracker: Nagrand Mok'gol Watchpost
			q(36799),	-- Garrison Nodes - Tracking Quest - triggers after unlocking the mine, picking herbs
			q(36492),	-- Garrison Pet Battle — discord report, "for today's EU garrison menagerie fight, the Blingtron/protectron one"
			q(39408, { ["timeline"] = { ADDED_6_2_0 } }),	-- Tracking Quest - interact with the mission table.
			q(39409, { ["timeline"] = { ADDED_6_2_0 } }),	-- Tracking Quest - after completing the WoD mission "Ghost Wrangler" (mission ID: 305), although not sure why that would be tracked.
			q(39410, { ["timeline"] = { ADDED_6_2_0 } }),	-- Tracking Quest - first interaction with the Garrison Mission Table this week. Completed a bunch of mission + one of the followers leveled up
			q(39709, { ["timeline"] = { ADDED_6_2_0 } }),	-- Tracking Quest - first time this quest popped in WoD Garrison after opening some salvage crates. Then it unflagged on fresh toon, after I walked a little it got completed again
			q(39609, { ["timeline"] = { ADDED_6_2_2 } }),	-- Hallow's End Active
			q(39828, { ["timeline"] = { ADDED_6_2_2 } }),	-- Horseman and Guards Shared Criteria - Hallow's End
			q(39610, { ["timeline"] = { ADDED_6_2_2 } }),	-- Winter Veil Active
			q(39829, { ["timeline"] = { ADDED_6_2_2 } }),	-- Sleigh and Guards Shared Criteria - Winter Veil
		}),
	}),
})));