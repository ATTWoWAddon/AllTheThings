# Blackrock Depths: Lua and JSON, P1 → P4

[All six instances](../README.md) · [The shared schedule](../../schedule.json)

Give Emperor Dagran Thaurissan a later opening than the dungeon. His ordinary drops, including Emperor's Seal, inherit that opening. Keep the other bosses' new rewards and the recipe batches separate.

**Read down:** P1 → P2.1 → P2.2 → P3 → P4. These are migration steps, not game release phases. Each step below shows the file you would change and a complete saved version of the result.

## P1 — start with the existing Lua file

**Lua source:** `.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Blackrock Depths.lua`

**Saved P1 copy:** [Blackrock Depths.lua](../p1/Blackrock%20Depths.lua). Its first line identifies the copy; everything after that line is byte-for-byte the current production source. **No new JSON yet.**

<details>
<summary>Read the whole P1 file</summary>

```lua
-- P1 | Full authoring source at the start of migration. Original: .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Blackrock Depths.lua
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

local DETENTION_BLOCK = createHeader({
	readable = "Detention Block",
	icon = 236718,
	text = {
		en = [[~DUNGEON_FLOOR_BLACKROCKDEPTHS1]],
	},
});
local SHADOWFORGE_CITY = createHeader({
	readable = "Shadowforge City",
	icon = 236718,
	text = {
		en = [[~DUNGEON_FLOOR_BLACKROCKDEPTHS2]],
	},
});

local REPUTATION_FROM_CORES, REPUTATION_FROM_LEATHER, REPUTATION_FROM_DARKIRON = 500, 350, 75;	-- These are the reputation values after TBC, other than for Classic.

-- #if BEFORE TBC
-- Reputation in Classic
REPUTATION_FROM_CORES = 200;
REPUTATION_FROM_LEATHER = 150;
REPUTATION_FROM_DARKIRON = 50;
-- #else
-- #if ANYCLASSIC
-- #if AFTER CATA
-- Reputation in Cata Classic
-- CRIEVE NOTE: Not sure if it is intended, but the reputation gained from these skyrocketed in Cataclysm Classic. It might be unintentional.
REPUTATION_FROM_CORES = 2200;
REPUTATION_FROM_LEATHER = 1540;
REPUTATION_FROM_DARKIRON = 300;
-- #endif
-- #endif
-- #endif

ExportDB.OnTooltipDB.ThoriumBrotherhood = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		addRepInfo(tooltipInfo, reputation, "Turn In Blood & Cores (1x each)",]] .. REPUTATION_FROM_CORES .. [[, 42000);
		addRepInfo(tooltipInfo, reputation, "Turn In Core Leather (2x each)",]] .. REPUTATION_FROM_LEATHER .. [[, 42000);
		addRepInfo(tooltipInfo, reputation, "Turn In Dark Iron Ore (10x each)",]] .. REPUTATION_FROM_DARKIRON .. [[, 42000);
	end
end]];

-- Princess Moira's loot was removed in 4.0.3, but characters who completed The Princess's Surprise or The Princess Saved? still receive it.
local PRINCESS_MOIRA_LOOT_OnUpdate = [[function(t)
	if _.IsQuestFlaggedCompleted(4363) or _.IsQuestFlaggedCompleted(4004) then
		t.u = nil;
		t.rwp = nil;
	end
end]];

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(228, {	-- Blackrock Depths
		-- #if BEFORE MOP
		lore = "Once the capital city of the Dark Iron dwarves, this volcanic labyrinth now serves as the seat of power for Ragnaros the Firelord. Ragnaros has uncovered the secret to creating life from stone and plans to build an army of unstoppable golems to aid him in conquering the whole of Blackrock Mountain. Obsessed with defeating Nefarian and his draconic minions, Ragnaros will go to any extreme to achieve final victory.",
		zoneTextAreaID = 1584,	-- Blackrock Depths
		-- #endif
		description = "The best route for a full clear is to enter Shadowforge City first time through the Dark Iron Highway. The Detention Block can be cleared whenever.",
		mapID = BLACKROCK_DEPTHS,
		coord = { 39.06, 18.12, BLACKROCK_MOUNTAIN_LEVEL3 },
		maps = { BLACKROCK_DEPTHS_LEVEL2 },
		lvl = 42,
		groups = {
			n(FACTIONS, {
				faction(FACTION_THORIUM_BROTHERHOOD, {	-- Thorium Brotherhood
					maps = { SEARING_GORGE },
					OnTooltip = [[_.OnTooltipDB.ThoriumBrotherhood]],
				}),
			}),
			n(QUESTS, {
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, q(84338, {	-- A Binding Contract
					provider = { "i", 227730 },	-- Thorium Brotherhood Contract
					timeline = { ADDED_1_15_3 },
					requireSkill = BLACKSMITHING,
					lvl = 60,
					groups = {
						i(227727),	-- Plans: Sulfuron Hammer (RECIPE!)
					},
				})),
				-- #endif
				q(7604, {	-- A Binding Contract
					provider = { "i", 18628 },	-- Thorium Brotherhood Contract
					-- #if SEASON_OF_DISCOVERY
					timeline = { REMOVED_1_15_3 },
					-- #endif
					lvl = lvlsquish(60, 60, 20),
					groups = {
						i(18592, {	-- Plans: Sulfuron Hammer (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(256673, {	-- Stormwind Forge (DECOR!)
							timeline = { ADDED_11_2_7 },
						}),
					},
				}),
				q(4264, {	-- A Crumpled Up Note
					-- #if BEFORE 3.0.2
					description = "After completing the Abandoned Hope quest, kill trash until this item drops for you. If your group has not yet killed the Dark Keeper, they have a fairly high chance to drop this item as well.",
					-- #endif
					sourceQuest = 4242,	-- Abandoned Hope
					provider = { "i", 11446 },	-- A Crumpled Up Note
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4282, {	-- A Shred of Hope
					sourceQuest = 4264,	-- A Crumpled Up Note
					qg = 9023,	-- Marshal Windsor
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 Marshal Windsor's Lost Information
							provider = { "i", 11464 },	-- Marshal Windsor's Lost Information
						}),
						objective(2, {	-- 0/1 Marshal Windsor's Lost Information
							provider = { "i", 11465 },	-- Marshal Windsor's Lost Information
						}),
					},
				}),
				q(4022, {	-- A Taste of Flame (1/2) (A)
					-- #if BEFORE 4.0.3
					description = "If you completed the quest 'Trinkets...' in Searing Gorge, you can complete this quest immediately without having to fight the elite dragon by bringing the Black Dragonflight Molt with you.",
					-- #endif
					sourceQuest = 3481,	-- Trinkets...
					altQuests = { 4023 },	-- A Taste of Flame
					qg = 9459,	-- Cyrus Therepentous
					coord = { 95.09, 31.56, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					cost = { { "i", 10575, 1 } },	-- Black Dragonflight Molt
					lvl = 52,
				}),
				q(4023, {	-- A Taste of Flame (1/2) (B)
					altQuests = { 4022 },	-- A Taste of Flame (1/2) (A)
					qg = 9459,	-- Cyrus Therepentous
					coord = { 95.09, 31.56, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					lvl = 52,
					groups = {
						objective(1, {	-- 0/1 Black Dragonflight Molt
							provider = { "i", 10575 },	-- Black Dragonflight Molt
							coord = { 93.2, 32.6, BURNING_STEPPES },
							cr = 9461,	-- Frenzied Black Drake <Cyrus's Minion>
						}),
					},
				}),
				q(4024, {	-- A Taste of Flame (2/2)
					sourceQuests = {
						4022,	-- A Taste of Flame (1/2) (A)
						4023,	-- A Taste of Flame (1/2) (B)
					},
					qg = 9459,	-- Cyrus Therepentous
					coord = { 95.09, 31.56, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					groups = {
						objective(1, {	-- 0/1 Encased Fiery Essence
							provider = { "i", 11230 },	-- Encased Fiery Essence
							cost = { { "i", 11231, 1 } },	-- Altered Black Dragonflight Molt
							cr = 9016,	-- Bael'Gar
						}),
						i(12066),	-- Shaleskin Cape
						i(12082),	-- Wyrmhide Spaulders
						i(12083),	-- Valconian Sash
					},
				}),
				q(4242, {	-- Abandoned Hope
					sourceQuest = 4241,	-- Marshal Windsor
					qg = 9023,	-- Marshal Windsor
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					groups = {
						i(12018),	-- Conservator Helm
						i(12021),	-- Shieldplate Sabatons
						i(12041),	-- Windshear Leggings
					},
				}),
				q(3981, {	-- Commander Gor'shak
					sourceQuest = 3906,	-- Disharmony of Flame
					qg = 9081,	-- Galamav the Marksman <Kargath Expeditionary Force>
					coord = { 5.8, 47.6, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
				}),
				q(3801, {	-- Dark Iron Legacy (1/2)
					-- #if BEFORE 4.0.3
					description = "You must be a ghost in order to interact with this quest giver. He's in the middle of Blackrock Mountain on the floating island on top of his tomb.",
					-- #endif
					qg = 8888,	-- Franclorn Forgewright
					timeline = { REMOVED_4_0_3 },
					maps = { BLACKROCK_MOUNTAIN },
					lvl = 48,
				}),
				q(3802, {	-- Dark Iron Legacy (2/2)
					sourceQuest = 3801,	-- Dark Iron Legacy (1/2)
					providers = {
						{ "n",   8888 },	-- Franclorn Forgewright
						{ "o", 164689 },	-- Monument of Franclorn Forgewright
					},
					timeline = { REMOVED_4_0_3 },
					maps = { BLACKROCK_MOUNTAIN },
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Ironfel
							provider = { "i", 10999 },	-- Ironfel
							cr = 9056,	-- Fineous Darkvire <Chief Architect>
						}),
						i(11000, {	-- Shadowforge Key
							timeline = { DELETED_4_0_3 },
						}),
					},
				}),
				q(3906, {	-- Disharmony of Flame
					qg = 9084,	-- Thunderheart <Kargath Expeditionary Force>
					coord = { 3.3, 48.3, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					maps = { BLACKROCK_MOUNTAIN },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Overmaster Pyron slain
							provider = { "n", 9026 },	-- Overmaster Pyron
						}),
					},
				}),
				q(3907, {	-- Disharmony of Fire
					sourceQuest = 3906,	-- Disharmony of Flame
					qg = 9084,	-- Thunderheart <Kargath Expeditionary Force>
					coord = { 3.3, 48.3, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Lord Incendius slain
							provider = { "n", 9017 },	-- Lord Incendius
						}),
						objective(2, {	-- 0/1 Tablet of Kurniya
							provider = { "i", 11126 },	-- Tablet of Kurniya
						}),
						i(12112),	-- Crypt Demon Bracers
						i(12114),	-- Nightfall Gloves
						i(12115),	-- Stalwart Clutch
						i(12113),	-- Sunborne Cape
					},
				}),
				q(4182, {	-- Dragonkin Menace
					-- #if BEFORE 3.0.2
					description = "You should finish this full quest chain up to Marshal Windsor before joining a Blackrock Depths group.",
					-- #endif
					qg = 9562,	-- Helendis Riverhorn
					coord = { 85.8, 69.0, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/15 Black Broodling slain
							provider = { "n", 7047 },	-- Black Broodling
						}),
						objective(2, {	-- 0/10 Black Dragonspawn slain
							provider = { "n", 7040 },	-- Black Dragonspawn
						}),
						objective(3, {	-- 0/1 Black Drake slain
							provider = { "n", 7044 },	-- Black Drake
						}),
						objective(4, {	-- 0/4 Black Wyrmkin slain
							provider = { "n", 7041 },	-- Black Wyrmkin
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, q(82062, {	-- Ever After
					description = "Just east of the Ring in Blackrock Depths is a bridge that leads north over lava.\n\nAs you get onto the bridge, look down and to the left; you'll see a friendly Dark Iron Dwarf below you on the base of a pillar. Clear the rest of the mobs ahead of you (Blazing Fireguards and a group of Shadowforge dwarves).\n\nMove to the left side of the bridge near a small brazier. Get onto the railing, hug the rock wall, and jump ahead onto the platform near the wall.\n\nMove to the end of the platform, hugging the wall, and move hard into the rock corner.\n\nTurn with your left shoulder to the wall and run carefully against the wall, until you just fall down into the exposed corner. Drop down onto the rock outcrop below. \n\nTurn left into a small room, where you'll encounter the Rugged Traveler.",
					qg = 222530,	-- Rugged Traveler
					timeline = { REMOVED_2_0_1 },
					lvl = 48,
					groups = {
						i(221316),	-- Premo's Poise-Demanding Uniform
						i(221315),	-- Rainbow Generator
					},
				})),
				-- #endif
				q(6646, {	-- Favor Amongst the Brotherhood, Blood of the Mountain
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 11382, 1 } },	-- Blood of the Mountain
					repeatable = true,
					lvl = 60,
				}),
				q(6645, {	-- Favor Amongst the Brotherhood, Core Leather
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 17012, 2 } },	-- Core Leather
					repeatable = true,
					lvl = 60,
				}),
				q(6642, {	-- Favor Amongst the Brotherhood, Dark Iron Ore
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 11370, 10 } },	-- Dark Iron Ore
					repeatable = true,
					lvl = 60,
				}),
				q(6643, {	-- Favor Amongst the Brotherhood, Fiery Core
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 17010, 1 } },	-- Fiery Core
					repeatable = true,
					lvl = 60,
				}),
				q(6644, {	-- Favor Amongst the Brotherhood, Lava Core
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 17011, 1 } },	-- Lava Core
					repeatable = true,
					lvl = 60,
				}),
				q(4122, {	-- Grark Lorkrub
					sourceQuests = 4082,	-- KILL ON SIGHT: High Ranking Dark Iron Officials
					qg = 9080,	-- Lexlort <Kargath Expeditionary Force>
					qi = 11286,	-- Thorium Shackles
					coord = { 5.9, 47.6, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
				}),
				q(4126, {	-- Hurley Blackbreath
					sourceQuest = 4128,	-- Ragnar Thunderbrew
					qg = 1267,	-- Ragnar Thunderbrew
					coord = { 46.8, 52.4, DUN_MOROGH },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 Lost Thunderbrew Recipe
							provider = { "i", 11312 },	-- Lost Thunderbrew Recipe
						}),
						i(12000),	-- Limb Cleaver
						i(11964),	-- Swiftstrike Cudgel
						i(12003),	-- Dark Dwarven Lager
					},
				}),
				q(4263, {	-- Incendius!
					sourceQuest = 4262,	-- Overmaster Pyron
					qg = 9561,	-- Jalinda Sprig
					coord = { 85.4, 70.1, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Lord Incendius slain
							provider = { "n", 9017 },	-- Lord Incendius
						}),
						i(12112),	-- Crypt Demon Bracers
						i(12114),	-- Nightfall Gloves
						i(12115),	-- Stalwart Clutch
						i(12113),	-- Sunborne Cape
					},
				}),
				q(4322, {	-- Jail Break!
					sourceQuest = 4282,	-- A Shred of Hope
					qg = 9023,	-- Marshal Windsor
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						i(12061),	-- Blade of Reckoning
						i(12062),	-- Skilled Fighting Blade
						i(12065),	-- Ward of the Elements
					},
				}),
				q(4341, {	-- Kharan Mighthammer
					sourceQuest = 3701,	-- The Smoldering Ruins of Thaurissan (2/2)
					qg = 2784,	-- King Magni Bronzebeard <Lord of Ironforge>
					coord = { 39.09, 56.19, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4342, {	-- Kharan's Tale
					sourceQuest = 4341,	-- Kharan Mighthammer
					qg = 9021,	-- Kharan Mighthammer
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4081, {	-- KILL ON SIGHT: Dark Iron Dwarves
					provider = { "o", 164867 },	-- WANTED
					coord = { 3.9, 47.4, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/10 Anvilrage Guardsman slain
							provider = { "n", 8891 },	-- Anvilrage Guardsman
						}),
						objective(2, {	-- 0/10 Anvilrage Warden slain
							provider = { "n", 8890 },	-- Anvilrage Warden
						}),
						objective(3, {	-- 0/10 Anvilrage Footman slain
							provider = { "n", 8892 },	-- Anvilrage Footman
						}),
					},
				}),
				q(4082, {	-- KILL ON SIGHT: High Ranking Dark Iron Officials
					sourceQuest = 4081,	-- KILL ON SIGHT: Dark Iron Dwarves
					provider = { "o", 164868 },	-- KILL ON SIGHT
					coord = { 3.9, 47.4, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/10 Anvilrage Medic slain
							provider = { "n", 8894 },	-- Anvilrage Medic
						}),
						objective(2, {	-- 0/10 Anvilrage Soldier slain
							provider = { "n", 8893 },	-- Anvilrage Soldier
						}),
						objective(3, {	-- 0/10 Anvilrage Officer slain
							provider = { "n", 8895 },	-- Anvilrage Officer
						}),
					},
				}),
				q(4134, {	-- Lost Thunderbrew Recipe
					sourceQuest = 4133,	-- Vivian Lagrave
					qg = 9078,	-- Shadowmage Vivian Lagrave <Kargath Expeditionary Force>
					coord = { 2.9, 47.8, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 Lost Thunderbrew Recipe
							provider = { "i", 11312 },	-- Lost Thunderbrew Recipe
						}),
						i(12000),	-- Limb Cleaver
						i(11964),	-- Swiftstrike Cudgel
					},
				}),
				q(4241, {	-- Marshal Windsor
					sourceQuest = 4224,	-- The True Masters (6/6)
					qg = 9560,	-- Marshal Maxwell
					coord = { 84.74, 69.02, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				-- Crieve NOTE: If a Blizzard Dev ever reads this, please know that this is why I have trust issues.
				-- #if BEFORE SL
				q(28258, {	-- Meet with Ander Germaine / Meet with Signilda Hardforge / [SL+]
					qgs = {
						17120,	-- Behomat
						4087,	-- Arias'ta Bladesinger
					},
					coords = {
						{ 56.4, 46.2, THE_EXODAR },	-- Behomat
						{ 56.4, 46.2, DARNASSUS },	-- Arias'ta Bladesinger
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { WARRIOR },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28302, {	-- Meet with Avaros Dawnglaive [SL+] / Meet with Sunwalker Atohmo
					qgs = {
						43795,	-- Aponi Brightmane
						20406,	-- Champion Cyssa Dawnrose
					},
					coords = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { PALADIN },
					races = { TAUREN },
					isBreadcrumb = true,
				}),
				q(28303, {	-- Meet With Avaros Dawnglaive [SL+] / Meet with Master Pyreanor
					qgs = {
						43795,	-- Aponi Brightmane
						16681,	-- Champion Bachi
						20406,	-- Champion Cyssa Dawnrose
					},
					coords = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 92.0, 37.2, SILVERMOON_CITY },	-- Champion Bachi
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { PALADIN },
					races = { BLOODELF },
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28260, {	-- Meet with Dalgrun Steelpine [SL+] / Meet with Wulf Hansreim
					qgs = {
						17122,	-- Vord
						5115,	-- Daera Brightspear
						4138,	-- Jeen'ra Nightrunner
					},
					coords = {
						{ 47.2, 88.4, THE_EXODAR },	-- Vord
						{ 47.2, 88.4, IRONFORGE },	-- Daera Brightspear
						{ 43.4, 26.0, DARNASSUS },	-- Jeen'ra Nightrunner
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { HUNTER },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				q(28259, {	-- Meet with Demisette Cloyce / Meet with Evelyn Thorn [SL+]
					qg = 5173,	-- Alexander Calder
					coord = { 50.2, 6.8, IRONFORGE },
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { WARLOCK },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #if AFTER SL
				q(28268, {	-- Meet with Ezul'aan [SL+] / Meet with Lord Grayson Shadowbreaker
					qgs = {
						16761,	-- Baatun
						35281,	-- Rukua
						5147,	-- Valgar Highforge
					},
					coords = {
						{ 39.0, 84.2, THE_EXODAR },	-- Baatun
						{ 43.6, 78.4, DARNASSUS },	-- Rukua
						{ 23.6, 5.6, IRONFORGE },	-- Valgar Highforge
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { PALADIN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28287, {	-- Meet with Farseer Umbrua / Meet with Mulric Boldrock [SL+]
					qgs = {
						52292,	-- Droha
						23127,	-- Farseer Javad
					},
					coords = {
						{ 43.8, 78.8, DARNASSUS },	-- Droha
						{ 55.2, 29.0, IRONFORGE },	-- Farseer Javad
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { SHAMAN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28300, {	-- Meet with Feenix Arcshine [SL+] / Meet with Ureda
					qgs = {
						3047,	-- Archmage Shymm
						4566,	-- Kaelystia Hatebringer
						16653,	-- Inethven
					},
					coords = {
						{ 22.6, 15.0, THUNDER_BLUFF },	-- Archmage Shymm
						{ 59.2, 19.7, SILVERMOON_CITY },	-- Inethven
						{ 85.2, 14.2, UNDERCITY },	-- Kaelystia Hatebringer
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { MAGE },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28263, {	-- Meet with Frazzle Frostfingers [SL+] / Meet with Maginor Dumas
					qgs = {
						16749,	-- Edirah
						50690,	-- Tarelvir
						5146,	-- Nittlebur Sparkfizzle
					},
					coords = {
						{ 26.2, 6.2, THE_EXODAR },	-- Edirah
						{ 37.6, 80.0, DARNASSUS },	-- Tarelvir
						{ 26.2, 6.2, IRONFORGE },	-- Nittlebur Sparkfizzle
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { MAGE },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28285, {	-- Meet with High Priestess Laurena / Meet with Patrice Lancaster [SL+]
					qgs = {
						11401,	-- Priestess Alathea
						11406,	-- High Priest Rohan
						16756,	-- Caedmos
					},
					coords = {
						{ 43.4, 79.2, DARNASSUS },	-- Priestess Alathea
						{ 25.0, 8.2, IRONFORGE },	-- High Priest Rohan
						{ 38.5, 50.9, THE_EXODAR },	-- Caedmos
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { PRIEST },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28301, {	-- Meet with Hretar Riverspeaker [SL+] / Meet with Terga Earthbreaker
					qgs = {
						51639,	-- Kador Cloudsong
						16661,	-- Gez'li
					},
					coords = {
						{ 22.2, 19.0, THUNDER_BLUFF },	-- Kador Cloudsong
						{ 71.8, 56.0, SILVERMOON_CITY },	-- Gez'li
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { SHAMAN },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER WOD
				q(28299, {	-- Meet with Kranosh [WOD+] / Meet with Kazak Darkscream [SL+] / Meet with Zevrost
					qgs = {
						43881,	-- Delano Morisett
						4563,	-- Kaal Soulreaper
						16648,	-- Zanien
						-- #if AFTER MID
						241482,	-- Zanien Silvermoon <Warlock Trainer>
						-- #endif
					},
					coords = {
						{ 25.2, 14.4, THUNDER_BLUFF },	-- Delano Morisett
						{ 73.2, 45.2, SILVERMOON_CITY },	-- Zanien
						{ 86.0, 15.6, UNDERCITY },	-- Kaal Soulreaper
						-- #if AFTER MID
						{ 50.9, 61.0, MAP.MIDNIGHT.SILVERMOON_CITY },	-- Zanien <Warlock Trainer>
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { WARLOCK },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if BEFORE SL
				q(28268, {	-- Meet with Lord Grayson Shadowbreaker / Meet with Ezul'aan [SL+]
					qgs = {
						16761,	-- Baatun
						35281,	-- Rukua
						5147,	-- Valgar Highforge
					},
					coords = {
						{ 39.0, 84.2, THE_EXODAR },	-- Baatun
						{ 43.6, 78.4, DARNASSUS },	-- Rukua
						{ 23.6, 5.6, IRONFORGE },	-- Valgar Highforge
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { PALADIN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28262, {	-- Meet with Lord Tony Romano / Meet with Veruca Darkstream [SL+]
					qgs = {
						4214,	-- Erion Shadewhisper
						5165,	-- Hulfdan Blackbeard
					},
					coords = {
						{ 40.0, 39.6, DARNASSUS },	-- Erion Shadewhisper
						{ 51.6, 14.6, IRONFORGE },	-- Hulfdan Blackbeard
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { ROGUE },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28263, {	-- Meet with Maginor Dumas / Meet with Frazzle Frostfingers [SL+]
					qgs = {
						16749,	-- Edirah
						50690,	-- Tarelvir
						5146,	-- Nittlebur Sparkfizzle
					},
					coords = {
						{ 26.2, 6.2, THE_EXODAR },	-- Edirah
						{ 37.6, 80.0, DARNASSUS },	-- Tarelvir
						{ 26.2, 6.2, IRONFORGE },	-- Nittlebur Sparkfizzle
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { MAGE },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28303, {	-- Meet with Master Pyreanor / Meet With Avaros Dawnglaive [SL+]
					qgs = {
						43795,	-- Aponi Brightmane
						16681,	-- Champion Bachi
						20406,	-- Champion Cyssa Dawnrose
					},
					coords = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 92.0, 37.2, SILVERMOON_CITY },	-- Champion Bachi
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { PALADIN },
					races = { BLOODELF },
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28287, {	-- Meet with Mulric Boldrock [SL+] / Meet with Farseer Umbrua
					qgs = {
						52292,	-- Droha
						23127,	-- Farseer Javad
					},
					coords = {
						{ 43.8, 78.8, DARNASSUS },	-- Droha
						{ 55.2, 29.0, IRONFORGE },	-- Farseer Javad
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { SHAMAN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28297, {	-- Meet with Ormak Grimshot / Meet with Tamanji [SL+]
					qgs = {
						39116,	-- Apolos
						3039,	-- Holt Thunderhorn
						16674,	-- Zandine
					},
					coords = {
						{ 57.4, 89.2, THUNDER_BLUFF },	-- Holt Thunderhorn
						{ 84.4, 28.0, SILVERMOON_CITY },	-- Zandine
						{ 49.6, 29.0, UNDERCITY },	-- Apolos
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { HUNTER },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28285, {	-- Meet with Patrice Lancaster [SL+] / Meet with High Priestess Laurena
					qgs = {
						11401,	-- Priestess Alathea
						11406,	-- High Priest Rohan
						16756,	-- Caedmos
					},
					coords = {
						{ 43.4, 79.2, DARNASSUS },	-- Priestess Alathea
						{ 25.0, 8.2, IRONFORGE },	-- High Priest Rohan
						{ 38.5, 50.9, THE_EXODAR },	-- Caedmos
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { PRIEST },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28258, {	-- Meet with Signilda Hardforge [SL+] / Meet with Ander Germaine
					qgs = {
						17120,	-- Behomat
						4087,	-- Arias'ta Bladesinger
					},
					coords = {
						{ 56.4, 46.2, THE_EXODAR },	-- Behomat
						{ 56.4, 46.2, DARNASSUS },	-- Arias'ta Bladesinger
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { WARRIOR },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28302, {	-- Meet with Sunwalker Atohmo / Meet with Avaros Dawnglaive [SL+]
					qgs = {
						43795,	-- Aponi Brightmane
						20406,	-- Champion Cyssa Dawnrose
					},
					coords = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { PALADIN },
					races = { TAUREN },
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28297, {	-- Meet with Tamanji [SL+] / Meet with Ormak Grimshot
					qgs = {
						39116,	-- Apolos
						3039,	-- Holt Thunderhorn
						16674,	-- Zandine
					},
					coords = {
						{ 57.4, 89.2, THUNDER_BLUFF },	-- Holt Thunderhorn
						{ 84.4, 28.0, SILVERMOON_CITY },	-- Zandine
						{ 49.6, 29.0, UNDERCITY },	-- Apolos
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { HUNTER },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if BEFORE SL
				q(28301, {	-- Meet with Terga Earthbreaker / Meet with Hretar Riverspeaker [SL+]
					qgs = {
						51639,	-- Kador Cloudsong
						16661,	-- Gez'li
					},
					coords = {
						{ 22.2, 19.0, THUNDER_BLUFF },	-- Kador Cloudsong
						{ 71.8, 56.0, SILVERMOON_CITY },	-- Gez'li
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { SHAMAN },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if BEFORE SL
				q(28300, {	-- Meet with Ureda / Meet with Feenix Arcshine [SL+]
					qgs = {
						3047,	-- Archmage Shymm
						4566,	-- Kaelystia Hatebringer
						16653,	-- Inethven
					},
					coords = {
						{ 22.6, 15.0, THUNDER_BLUFF },	-- Archmage Shymm
						{ 53.0, 19.6, SILVERMOON_CITY },	-- Inethven
						{ 85.2, 14.2, UNDERCITY },	-- Kaelystia Hatebringer
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { MAGE },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28262, {	-- Meet with Veruca Darkstream [SL+] / Meet with Lord Tony Romano
					qgs = {
						4214,	-- Erion Shadewhisper
						5165,	-- Hulfdan Blackbeard
					},
					coords = {
						{ 40.0, 39.6, DARNASSUS },	-- Erion Shadewhisper
						{ 51.6, 14.6, IRONFORGE },	-- Hulfdan Blackbeard
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { ROGUE },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28260, {	-- Meet with Wulf Hansreim / Meet with Dalgrun Steelpine [SL+]
					qgs = {
						17122,	-- Vord
						5115,	-- Daera Brightspear
						4138,	-- Jeen'ra Nightrunner
					},
					coords = {
						{ 47.2, 88.4, THE_EXODAR },	-- Vord
						{ 47.2, 88.4, IRONFORGE },	-- Daera Brightspear
						{ 43.4, 26.0, DARNASSUS },	-- Jeen'ra Nightrunner
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { HUNTER },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE WOD
				q(28299, {	-- Meet with Zevrost / Meet with Kranosh [WOD+] / Meet with Kazak Darkscream [SL+]
					qgs = {
						43881,	-- Delano Morisett
						4563,	-- Kaal Soulreaper
						16648,	-- Zanien
					},
					coords = {
						{ 25.2, 14.4, THUNDER_BLUFF },	-- Delano Morisett
						{ 73.2, 45.2, SILVERMOON_CITY },	-- Zanien
						{ 86.0, 15.6, UNDERCITY },	-- Kaal Soulreaper
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { WARLOCK },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif






				q(4132, {	-- Operation: Death to Angerforge
					sourceQuest = 4121,	-- Precarious Predicament
					qg = 9077,	-- Warlord Goretooth <Kargath Expeditionary Force>
					coord = { 5.8, 47.5, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
					groups = {
						objective(1, {	-- 0/1 General Angerforge slain
							provider = { "n", 9033 },	-- General Angerforge
						}),
						i(12059),	-- Conqueror's Medallion
					},
				}),
				q(4262, {	-- Overmaster Pyron
					qg = 9561,	-- Jalinda Sprig
					coord = { 85.4, 70.1, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					maps = { BLACKROCK_MOUNTAIN },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Overmaster Pyron slain
							provider = { "n", 9026 },	-- Overmaster Pyron
						}),
					},
				}),
				q(4121, {	-- Precarious Predicament
					sourceQuest = 4122,	-- Grark Lorkrub
					qg = 9520,	-- Grark Lorkrub
					coord = { 40.2, 34.2, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
					groups = {
						objective(1, {	-- 0/1 Thorium Shackles
							provider = { "i", 11286 },	-- Thorium Shackles
						}),
						objective(2, {	-- Prisoner Transport
							provider = { "i", 11286 },	-- Thorium Shackles
						}),
					},
				}),
				q(4128, {	-- Ragnar Thunderbrew
					qg = 9540,	-- Enohar Thunderbrew
					coord = { 63.6, 20.6, BLASTED_LANDS },
					timeline = { REMOVED_4_0_3 },
					maps = { DUN_MOROGH },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = 50,
				}),
				q(4136, {	-- Ribbly Screwspigot
					sourceQuest = 4324,	-- Yuka Screwspigot
					qg = 9544,	-- Yuka Screwspigot
					coord = { 66.1, 21.9, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Ribbly's Head
							provider = { "i", 11313 },	-- Ribbly's Head
						}),
						i(11963),	-- Penance Spaulders
						i(12049),	-- Splintsteel Armor
						i(11865),	-- Rancor Boots
					},
				}),
				q(4295, {	-- Rocknot's Ale
					qg = 9503,	-- Private Rocknot
					cost = { { "i", 11325, 2 } },	-- Dark Iron Ale Mug
					repeatable = true,
				}),
				q(28401, {	-- Slaves of the Firelord (A)
					sourceQuest = 28287,	-- Meet with Farseer Umbrua / Meet with Mulric Boldrock [SL+]
					qgs = {
						-- #if AFTER SL
						164945,	-- Mulric Boldrock
						-- #else
						20407,	-- Farseer Umbrua
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 78.2, 70.9, STORMWIND_CITY },
						-- #else
						{ 64.6, 33.0, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { SHAMAN },
					races = ALLIANCE_ONLY,
					groups = {
						i(65640),	-- Mask of the Farseer
						i(65622),	-- Headcover of the Farseer
					},
				}),
				q(28465, {	-- Slaves of the Firelord (H)
					sourceQuest = 28301,	-- Meet with Terga Earthbreaker / Meet with Hretar Riverspeaker [SL+]
					qgs = {
						-- #if AFTER SL
						168628,	-- Hretar Riverspeaker <Shaman Trainer>
						-- #else
						72939,	-- Terga Earthbreaker
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 73.6, 43.3, ORGRIMMAR },
						-- #else
						{ 39.0, 47.4, ORGRIMMAR },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { SHAMAN },
					races = HORDE_ONLY,
					qi = 64312,	-- Totem of Freedom (QI!)
					groups = {
						i(65643),	-- Mask of the Speaker
						i(65630),	-- Headcover of the Speaker
					},
				}),
				q(28399, {	-- Stones of Binding (A)
					sourceQuest = 28259,	-- Meet with Demisette Cloyce / Meet with Evelyn Thorn [SL+]
					qgs = {
						-- #if AFTER SL
						164942,	-- Evelyn Thorn
						-- #else
						461,	-- Demisette Cloyce
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 79.5, 69.9, STORMWIND_CITY },
						-- #else
						{ 39.4, 84.8, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					classes = { WARLOCK },
					groups = {
						i(65621),	-- Horns of Justified Sins
					},
				}),
				q(28459, {	-- Stones of Binding (H)
					sourceQuest = 28299,	-- Meet with Zevrost / Meet with Kranosh [WOD+] / Meet with Kazak Darkscream [SL+]
					qgs = {
						-- #if AFTER SL
						168623,	-- Kazak Darkscream
						-- #ELSE
						88705,	-- Kranosh
						-- #ENDIF
					},
					coords = {
						-- #if AFTER SL
						{ 74.6, 47.4, ORGRIMMAR },
						-- #ELSE
						{ 49.0, 55.2, ORGRIMMAR },
						-- #ENDIF
					},
					timeline = { ADDED_4_0_3 },
					classes = { WARLOCK },
					races = HORDE_ONLY,
					groups = {
						i(65627),	-- Horns of the Left Hand Path
					},
				}),
				q(6402, {	-- Stormwind Rendezvous
					sourceQuest = 4322,	-- Jail Break!
					qg = 9560,	-- Marshal Maxwell
					coord = { 84.7, 69.0, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4361, {	-- The Bearer of Bad News
					sourceQuest = 4342,	-- Kharan's Tale
					qg = 9021,	-- Kharan Mighthammer
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(28406, {	-- The Dark Iron Army (A)
					sourceQuest = 28262,	-- Meet with Lord Tony Romano / Meet with Veruca Darkstream [SL+]
					qgs = {
						-- #if AFTER SL
						164946,	-- Veruca Darkstream
						-- #else
						13283,	-- Lord Tony Romano
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 78.7, 70.6, STORMWIND_CITY },
						-- #else
						{ 79.6, 60.8, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					classes = { ROGUE },
					groups = {
						i(65624),	-- SI:7 Special Issue Facemask
					},
				}),
				q(28463, {	-- The Dark Iron Army (H)
					sourceQuest = 28298,	-- Meet with Gordul (Cata+) / Meet with Thega Graveblade (SL+)
					qgs = {
						-- #if AFTER SL
						168598,	-- Thega Graveblade
						-- #else
						47233,	-- Gordul
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 75.4, 47.4, ORGRIMMAR },
						-- #else
						{ 44.6, 61.4, ORGRIMMAR },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { ROGUE },
					races = HORDE_ONLY,
					groups = {
						i(65629),	-- Facemask of the Shattered Hand
					},
				}),
				q(6501, {	-- The Dragon's Eye
					-- #if BEFORE 3.0.2
					description = "Go to Haleh in Winterspring. Use the blue rune on the ground inside the cave to reach her. Don't bother going to Dustwallow Marsh.",
					-- #endif
					sourceQuest = 6403,	-- The Great Masquerade
					qg = 1748,	-- Highlord Bolvar Fordragon
					qi = 16662,	-- Fragment of the Dragon's Eye
					coord = { 78.2, 18.1, STORMWIND_CITY },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4002, {	-- The Eastern Kingdoms
					sourceQuest = 4001,	-- What Is Going On? (2/2)
					qg = 4949,	-- Thrall <Warchief>
					coord = { 31.61, 37.83, ORGRIMMAR },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
				}),
				q(4362, {	-- The Fate of the Kingdom
					sourceQuest = 4361,	-- The Bearer of Bad News
					qg = 2784,	-- King Magni Bronzebeard <Lord of Ironforge>
					coord = { 39.09, 56.19, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 Emperor Dagran Thaurissan slain
							provider = { "n", 9019 },	-- Emperor Dagran Thaurissan
						}),
					},
				}),
				q(6403, {	-- The Great Masquerade
					-- #if BEFORE 3.0.2
					description = "This quest can be solo'd. Do NOT touch anything and let Bolvar take care of the dragons. They do heavy AOE, you will likely die unless you're in a raid group of 20+.",
					-- #endif
					sourceQuest = 6402,	-- Stormwind Rendezvous
					qg = 12580,	-- Reginald Windsor
					coord = { 64.7, 76.8, STORMWIND_CITY },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(28394, {	-- The Golem Lord's Creations (A)
					sourceQuest = 28260,	-- Meet with Wulf Hansreim / Meet with Dalgrun Steelpine [SL+]
					qgs = {
						-- #if AFTER SL
						164960,	-- Dalgrun Steelpine <Hunter Trainer>
						-- #else
						44247,	-- Wulf Hansreim
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 79.2, 71.2, STORMWIND_CITY },
						-- #else
						{ 79.0, 71.0, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { HUNTER },
					races = ALLIANCE_ONLY,
					groups = {
						i(65619),	-- Helm of the Crown
					},
				}),
				q(28461, {	-- The Golem Lord's Creations (H)
					sourceQuest = 28297,	-- Meet with Ormak Grimshot / Meet with Tamanji [SL+]
					qgs = {
						-- #if AFTER SL
						168551,	-- Tamanji
						-- #else
						3352,	-- Ormak Grimshot
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 73.8, 43.8, ORGRIMMAR },
						-- #else
						{ 63.8, 32.8, ORGRIMMAR },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { HUNTER },
					races = HORDE_ONLY,
					groups = {
						i(65628),	-- Helm of the Great Hunter
					},
				}),
				q(4286, {	-- The Good Stuff
					qg = 9177,	-- Oralius
					coord = { 84.6, 68.7, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/20 Dark Iron Fanny Pack
							provider = { "i", 11468 },	-- Dark Iron Fanny Pack
						}),
						i(11883),	-- A Dingy Fanny Pack
					},
				}),
				q(4123, {	-- The Heart of the Mountain
					qg = 9536,	-- Maxwort Uberglint
					coord = { 65.2, 23.9, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 The Heart of the Mountain
							provider = { "i", 11309 },	-- The Heart of the Mountain
						}),
					},
				}),
				q(7201, {	-- The Last Element
					sourceQuest = 3906,	-- Disharmony of Flame
					qg = 9078,	-- Shadowmage Vivian Lagrave <Kargath Expeditionary Force>
					coord = { 2.9, 47.76, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/10 Essence of the Elements
							provider = { "i", 11129 },	-- Essence of the Elements
						}),
						i(12038),	-- Lagrave's Seal
					},
				}),
				q(4201, {	-- The Love Potion
					qg = 9500,	-- Mistress Nagmara
					timeline = { REMOVED_4_0_3 },
					maps = { AZSHARA, UNGORO_CRATER },
					lvl = 50,
					groups = {
						objective(1, {	-- 0/4 Gromsblood
							provider = { "i", 8846 },	-- Gromsblood
						}),
						objective(2, {	-- 0/10 Giant Silver Vein
							provider = { "i", 11405 },	-- Giant Silver Vein
							coord = { 68.0, 17.0, AZSHARA },
							crs = {
								6146,	-- Cliff Breaker
								6147,	-- Cliff Thunderer
								6148,	-- Cliff Walker
							},
						}),
						objective(3, {	-- 0/1 Nagmara's Filled Vial
							provider = { "i", 11413 },	-- Nagmara's Filled Vial
							cost = { { "i", 11412, 1 } },	-- Nagmara's Vial
							coord = { 31.0, 49.0, UNGORO_CRATER },
						}),
						i(11962),	-- Manacle Cuffs
						i(11866),	-- Nagmara's Whipping Belt
					},
				}),
				q(4004, {	-- The Princess Saved?
					sourceQuest = 4003,	-- The Royal Rescue
					qg = 8929,	-- Princess Moira Bronzebeard <Princess of Ironforge>
					timeline = { REMOVED_4_0_3 },
					maps = { ORGRIMMAR },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						i(12545),	-- Eye of Orgrimmar
						i(12544),	-- Thrall's Resolve
					},
				}),
				q(4363, {	-- The Princess's Surprise
					sourceQuest = 4362,	-- The Fate of the Kingdom
					qg = 8929,	-- Princess Moira Bronzebeard <Princess of Ironforge>
					timeline = { REMOVED_4_0_3 },
					maps = { IRONFORGE },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						i(12548),	-- Magni's Will
						i(12543),	-- Songstone of Ironforge
					},
				}),
				q(28398, {	-- The Pyromancer's Grimoire (A)
					sourceQuest = 28263,	-- Meet with Maginor Dumas / Meet with Frazzle Frostfingers [SL+]
					qgs = {
						-- #if AFTER SL
						164955,	-- Frazzle Frostfingers
						-- #else
						331,	-- Maginor Dumas
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 80.0, 69.6, STORMWIND_CITY },
						-- #else
						{ 49.2, 87.6, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					classes = { MAGE },
					groups = {
						i(65620),	-- Hood of the Royal Wizard
					},
				}),
				q(28458, {	-- The Pyromancer's Grimoire (H)
					sourceQuest = 28300,	-- Meet with Ureda / Meet with Feenix Arcshine [SL+]
					qgs = {
						-- #if AFTER SL
						168626,	-- Feenix Arcshine
						-- #else
						47246,	-- Ureda
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 74.6, 43.5, ORGRIMMAR },
						-- #else
						{ 48.4, 62.6, ORGRIMMAR },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { MAGE },
					races = HORDE_ONLY,
					groups = {
						i(65626),	-- Hood of the Arcane Path
					},
				}),
				q(4061, {	-- The Rise of the Machines (1/3)
					qg = 9079,	-- Hierophant Theodora Mulvadania <Kargath Expeditionary Force>
					coord = { 3.02, 47.81, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					maps = { BURNING_STEPPES },
					races = HORDE_ONLY,
					lvl = 52,
					groups = {
						objective(1, {	-- 0/10 Fractured Elemental Shard
							provider = { "i", 11266 },	-- Fractured Elemental Shard
							crs = {
								7032,	-- Greater Obsidian Elemental
								8981,	-- Malfunctioning Reaver
								7039,	-- War Reaver
							},
						}),
					},
				}),
				q(4062, {	-- The Rise of the Machines (2/3)
					sourceQuest = 4061,	-- The Rise of the Machines (1/3)
					qg = 9079,	-- Hierophant Theodora Mulvadania <Kargath Expeditionary Force>
					qi = 11267,	-- Elemental Shard Sample
					coord = { 3.02, 47.81, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
				}),
				q(4063, {	-- The Rise of the Machines (3/3)
					sourceQuest = 4062,	-- The Rise of the Machines (2/3)
					qg = 2921,	-- Lotwil Veriatus
					coord = { 25.95, 44.87, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
					groups = {
						objective(1, {	-- 0/1 Head of Argelmach
							provider = { "i", 11268 },	-- Head of Argelmach
						}),
						objective(2, {	-- 0/10 Intact Elemental Core
							provider = { "i", 11269 },	-- Intact Elemental Core
						}),
						i(12110),	-- Raincaster Drape
						i(12109),	-- Azure Moon Amice
						i(12111),	-- Lavaplate Gauntlets
						i(12108),	-- Basaltscale Armor
					},
				}),
				q(4003, {	-- The Royal Rescue
					sourceQuest = 4002,	-- The Eastern Kingdoms
					qg = 4949,	-- Thrall <Warchief>
					coord = { 31.61, 37.83, ORGRIMMAR },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Emperor Dagran Thaurissan slain
							provider = { "n", 9019 },	-- Emperor Dagran Thaurissan
						}),
					},
				}),
				q(3702, {	-- The Smoldering Ruins of Thaurissan (1/2)
					qg = 8879,	-- Royal Historian Archesonus
					coord = { 38.37, 55.31, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(3701, {	-- The Smoldering Ruins of Thaurissan (2/2)
					sourceQuest = 3702,	-- The Smoldering Ruins of Thaurissan (1/2)
					qg = 8879,	-- Royal Historian Archesonus
					coord = { 38.37, 55.31, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					maps = { BURNING_STEPPES },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/12 Information Recovered
							provider = { "o", 153556 },	-- Thaurissan Relic
						}),
						i(12102),	-- Ring of the Aristocrat
					},
				}),
				q(4083, {	-- The Spectral Chalice
					description = "If you are a miner with 230 skill, speak with Gloom'rel to have him summon the Spectral Chalice.\n\nAfter you deposit the required items, speak to Gloom'rel again to learn how to smelt Dark Iron Ore.",
					provider = { "o", 164869 },	-- Spectral Chalice
					cost = {
						{ "i", 3577, 20 },	-- 20x Gold Bar
						{ "i", 7910, 2 },	-- 2x Star Ruby
						{ "i", 6037, 10 },	-- 10x Truesilver Bar
					},
					requireSkill = MINING,
					cr = 9037,	-- Gloom'rel
					lvl = 40,
					groups = {
						r(14891),	-- Smelt Dark Iron
					},
				}),
				q(4183, {	-- The True Masters (1/6)
					sourceQuest = 4182,	-- Dragonkin Menace
					qg = 9562,	-- Helendis Riverhorn
					qi = 11366,	-- Helendis Riverhorn's Letter
					coord = { 85.8, 69.0, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				q(4184, {	-- The True Masters (2/6)
					sourceQuest = 4183,	-- The True Masters (1/6)
					qg = 344,	-- Magistrate Solomon
					qi = 11367,	-- Solomon's Plea to Bolvar
					coord = { 30.0, 44.5, REDRIDGE_MOUNTAINS },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				q(4185, {	-- The True Masters (3/6)
					sourceQuest = 4184,	-- The True Masters (2/6)
					qg = 1748,	-- Highlord Bolvar Fordragon
					coord = { 78.2, 18.1, STORMWIND_CITY },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- Advice from Lady Prestor
							provider = { "n", 1749 },	-- Lady Katrana Prestor
						}),
					},
				}),
				q(4186, {	-- The True Masters (4/6)
					sourceQuest = 4185,	-- The True Masters (3/6)
					qg = 1748,	-- Highlord Bolvar Fordragon
					qi = 11368,	-- Bolvar's Decree
					coord = { 78.2, 18.1, STORMWIND_CITY },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				q(4223, {	-- The True Masters (5/6)
					sourceQuest = 4186,	-- The True Masters (4/6)
					qg = 344,	-- Magistrate Solomon
					coord = { 30.0, 44.5, REDRIDGE_MOUNTAINS },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				q(4224, {	-- The True Masters (6/6)
					sourceQuest = 4223,	-- The True Masters (5/6)
					qg = 9560,	-- Marshal Maxwell
					coord = { 84.74, 69.02, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- Ragged John's Story
							provider = { "n", 9563 },	-- Ragged John
							coord = { 65.0, 23.8, BURNING_STEPPES },
						}),
					},
				}),
				q(4133, {	-- Vivian Lagrave
					qg = 5204,	-- Apothecary Zinge <Royal Apothecary Society>
					coord = { 50.1, 68.0, UNDERCITY },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = 50,
				}),
				q(28405, {	-- Weapons of Darkness (A)
					sourceQuest = 28268,	-- Meet with Lord Grayson Shadowbreaker
					qgs = {
						-- #if AFTER SL
						164952,	-- Ezul'aan <Paladin Trainer>
						-- #else
						928,	-- Lord Grayson Shadowbreaker
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 79.2, 69.6, STORMWIND_CITY },
						-- #else
						{ 52.6, 45.0, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { PALADIN },
					races = ALLIANCE_ONLY,
					groups = {
						i(65623),	-- Helm of the Order
						i(65641),	-- Faceguard of the Order
						i(65646),	-- Headguard of the Order
					},
				}),
				q(28466, {	-- Weapons of Darkness (Tauren)
					sourceQuest = 28302,	-- Meet with Sunwalker Atohmo / Meet with Avaros Dawnglaive [SL+]
					qg = 44725,	-- Sunwalker Atohmo
					coord = { 45.2, 53.4, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PALADIN },
					races = { TAUREN },
					groups = {
						i(65631),	-- Helm of the Sunwalker
						i(65644),	-- Faceguard of the Sunwalker
						i(65647),	-- Headguard of the Sunwalker
						-- You get these when completing the quest
						i(141976, {	-- Headguard of the Order
							description = "May need to re-login to the game to properly trigger this collected from Blizzard.",
							timeline = { ADDED_7_0_3 },
						}),
						i(141977, {	-- Faceguard of the Order
							description = "May need to re-login to the game to properly trigger this collected from Blizzard.",
							timeline = { ADDED_7_0_3 },
						}),
						i(141978, {	-- Helm of the Order
							description = "May need to re-login to the game to properly trigger this collected from Blizzard.",
							timeline = { ADDED_7_0_3 },
						}),
					},
				}),
				q(28473, {	-- Weapons of Darkness (Blood Elf)
					sourceQuest = 28303,	-- Meet with Master Pyreanor / Meet With Avaros Dawnglaive [SL+]
					qgs = {
						23128,	-- Master Pyreanor
						-- #if AFTER SL
						168597,	-- Avaros Dawnglaive <Paladin Trainer>
						-- #endif
					},
					coord = { 49.2, 71.2, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PALADIN },
					races = { BLOODELF },
					groups = {
						i(65632),	-- Helm of the Order
						i(65645),	-- Faceguard of the Order
						i(65648),	-- Headguard of the Order
						i(25549),	-- Blood Knight Tabard
					},
				}),
				q(3982, {	-- What Is Going On? (1/2)
					sourceQuest = 3981,	-- Commander Gor'shak
					qg = 9020,	-- Commander Gor'shak <Kargath Expeditionary Force>
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
				}),
				q(4001, {	-- What Is Going On? (2/2)
					sourceQuest = 3982,	-- What Is Going On? (1/2)
					qg = 9020,	-- Commander Gor'shak <Kargath Expeditionary Force>
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- Information Gathered from Kharan
							provider = { "n", 9021 },	-- Kharan Mighthammer
						}),
					},
				}),
				q(4324, {	-- Yuka Screwspigot
					qg = 9706,	-- Yorba Screwspigot
					coord = { 67.0, 24.0, TANARIS },
					timeline = { REMOVED_4_0_3 },
					isBreadcrumb = true,
					lvl = 48,
				}),
				q(28393, {	-- A Dangerous Alliance [A]
					sourceQuest = 28258,	-- Meet with Ander Germaine / Meet with Signilda Hardforge / [SL+]
					qgs = {
						-- #if BEFORE SL
						914,	-- Ander Germaine
						-- #else
						164939,	-- Signilda Hardforge <Warrior Trainer>
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 80.3, 70.4, STORMWIND_CITY },
						-- #else
						{ 79.4, 69.0, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { WARRIOR },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65618),	-- Faceguard of the Crown
						i(65639),	-- Headguard of the Crown
					},
				}),
				q(28457, {	-- A Dangerous Alliance [H]
					sourceQuest = 28290,	-- Meet with Grezz Ragefist (Cata+) / Meet with Gormok Ogrefist (SL+)
					qg = 168596,	-- Gormok Ogrefist
					coord = { 73.6, 45.6, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { WARRIOR },
					races = HORDE_ONLY,
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65625),	-- Faceguard of the Horde
						i(65642),	-- Headguard of the Horde
					},
				}),
				-- #if AFTER SL
				q(28304, {	-- Journey to Orgrimmar [Undead] (SL+) / Meet with Dark Cleric Cecille (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { UNDEAD },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28307, {	-- Journey to Orgrimmar [Blood Elf] (SL+) / Meet with Tyelis (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { BLOODELF },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28308, {	-- Journey to Orgrimmar [Tauren] (SL+) / Meet with Seer Liwatha (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TAUREN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28309, {	-- Journey to Orgrimmar [Troll] (SL+) / Meet with Shadow-Walker Zuru (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TROLL },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28323, {	-- Journey to Orgrimmar [Goblin] (SL+) / Meet with Brother Silverhallow (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { GOBLIN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28323, {	-- Meet with Brother Silverhallow (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { GOBLIN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28304, {	-- Meet with Dark Cleric Cecille (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { UNDEAD },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28298, {	-- Meet with Gordul (Cata+) / Meet with Thega Graveblade (SL+)
					qgs = {
						16684,	-- Zelanis <Rogue Trainer>
						4584,	-- Gregory Charles <Rogue Trainer>
					},
					coords = {
						{ 79.4, 52.0, SILVERMOON_CITY },
						{ 84.6, 73.2, UNDERCITY },	-- Gregory Charles (Undercity)
					},
					timeline = { ADDED_4_0_3 },
					classes = { ROGUE },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28290, {	-- Meet with Gormok Ogrefist (SL+) / Meet with Grezz Ragefist (Cata+)
					qgs = {
						43009,	-- Alsudar the Bastion
						3042,	-- Sark Ragetotem
						4593,	-- Christoph Walker
					},
					coords = {
						{ 81.0, 37.8, SILVERMOON_CITY },	-- Alsudar the Bastion
						{ 57.2, 89.0, THUNDER_BLUFF },	-- Sark Ragetotem
						{ 47.2, 15.2, UNDERCITY },	-- Christoph Walker
					},
					timeline = { ADDED_4_0_3 },
					classes = { WARRIOR },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28290, {	-- Meet with Grezz Ragefist (Cata+) / Meet with Gormok Ogrefist (SL+)
					qgs = {
						43009,	-- Alsudar the Bastion
						3042,	-- Sark Ragetotem
						4593,	-- Christoph Walker
					},
					coords = {
						{ 81.0, 37.8, SILVERMOON_CITY },	-- Alsudar the Bastion
						{ 57.2, 89.0, THUNDER_BLUFF },	-- Sark Ragetotem
						{ 47.2, 15.2, UNDERCITY },	-- Christoph Walker
					},
					timeline = { ADDED_4_0_3 },
					classes = { WARRIOR },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28308, {	-- Meet with Seer Liwatha (Cata+) / Journey to Orgrimmar [Tauren] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TAUREN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28309, {	-- Meet with Shadow-Walker Zuru (Cata+) / Journey to Orgrimmar [Troll] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TROLL },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28298, {	-- Meet with Thega Graveblade (SL+) / Meet with Gordul (Cata+)
					qgs = {
						16684,	-- Zelanis <Rogue Trainer>
						4584,	-- Gregory Charles <Rogue Trainer>
					},
					coords = {
						{ 79.4, 52.0, SILVERMOON_CITY },
						{ 84.6, 73.2, UNDERCITY },	-- Gregory Charles (Undercity)
					},
					timeline = { ADDED_4_0_3 },
					classes = { ROGUE },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28307, {	-- Meet with Tyelis (Cata+) / Journey to Orgrimmar [Blood Elf] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { BLOODELF },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif

				q(28475, {	-- Twilight Scheming [Blood Elf]
					sourceQuest = 28307,	-- Meet with Tyelis (Cata+) / Journey to Orgrimmar [Blood Elf] (SL+)
					qg = 45337,	-- Tyelis
					coord = { 49.0, 71.0, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { BLOODELF },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65634),	-- Crown of the Sunchaser
					},
				}),
				q(28478, {	-- Twilight Scheming [Goblin]
					sourceQuest = 28323,	-- Meet with Brother Silverhallow (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					qg = 45347,	-- Brother Silverhallow
					coord = { 37.8, 87.4, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { GOBLIN },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65637),	-- Crown of Golden Worship
					},
				}),
				q(28474, {	-- Twilight Scheming [Undead]
					sourceQuest = 28304,	-- Meet with Dark Cleric Cecille (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					qg = 45339,	-- Dark Cleric Cecille
					coord = { 48.2, 72.8, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { UNDEAD },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65633),	-- Crown of Forsaken Faith
					},
				}),
				q(28476, {	-- Twilight Scheming [Tauren]
					sourceQuest = 28308,	-- Meet with Seer Liwatha (Cata+) / Journey to Orgrimmar [Tauren] (SL+)
					qg = 44735,	-- Seer Liwatha
					coord = { 45.4, 53.4, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TAUREN },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65635),	-- Crown of the Earthmother
						-- You get these when completing the quest
						i(141979),	-- Crown of the Hallowed
						i(141980),	-- Crown of the Hallowed
						i(141981),	-- Crown of the Hallowed
						i(141982),	-- Crown of the Hallowed
					},
				}),
				q(28477, {	-- Twilight Scheming [Troll]
					sourceQuest = 28309,	-- Meet with Shadow-Walker Zuru (Cata+) / Journey to Orgrimmar [Troll] (SL+)
					qg = 45137,	-- Shadow-Walker Zuru
					coord = { 35.4, 69.2, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TROLL },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65636),	-- Crown of the Shadow-Walker
					},
				}),
				q(28328, {	-- Twilight Scheming [Alliance]
					sourceQuest = 28285,	-- Meet with High Priestess Laurena / Meet with Patrice Lancaster [SL+]
					providers = {
						-- #if ANYCLASSIC
						{ "n", 376 },	-- High Priestess Laurena
						-- #else
						{"n", 164949 },	-- Patrice Lancaster
						-- #endif
					},
					coords = {
						-- #if ANYCLASSIC
						{ 49.6, 44.8, STORMWIND_CITY },
						-- #else
						{ 78.9, 69.8, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = ALLIANCE_ONLY,
					groups = {
						i(65616),	-- Crown of the Hallowed
						-- you are supposed to get these when doing the quest, but i completed it on 2 characters and haven't received them :) possible unknown race requirement?
						-- Crieve note: The following items are still sourceless on WoWHead, so it's quite possible the intent was to make versions for Allied Races, but Blizzard realized that'd be dumb and smacked the intern that was doing the dumb.
						-- i(141979),	-- Crown of the Hallowed
						-- i(141980),	-- Crown of the Hallowed
						-- i(141981),	-- Crown of the Hallowed
						-- i(141982),	-- Crown of the Hallowed
					},
				}),

				q(27569, {	-- Dark Iron Tacticians
					sourceQuest = 27568,	-- Infilitrating Shadowforge City [Alliance]
					qg = 45894,	-- Prospector Seymour
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27568, {	-- Infiltrating Shadowforge City [Alliance]
					qg = 45891,	-- Oralius
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27582, {	-- Infiltrating Shadowforge City [Horde]
					qg = 45839,	-- Galamav the Marksman
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27565, {	-- Into the Prison [Alliance]
					qg = 45892,	-- Jalinda Sprig
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27579, {	-- Into the Prison [Horde]
					qg = 45821,	-- Tha'trak Proudtusk
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27585, {	-- The 109th Division
					sourceQuest = 27582,	-- Infiltrating Shadowforge City [Horde]
					qg = 45820,	-- Razal'blade
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27596, {	-- The Heart of the Mountain
					qg = 45850,	-- Maxwort Uberglint
					timeline = { ADDED_4_0_3 },
				}),
				q(27603, {	-- The Sealed Gate
					qg = 45849,	-- Tinkee Steamboil
					timeline = { ADDED_4_0_3 },
				}),
				q(27567, {	-- Twilight?! No! [Alliance]
					sourceQuest = 27565,	-- Into the Prison [Alliance]
					qg = 45898,	-- Kevin Dawson
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27581, {	-- Twilight?! No! [Horde]
					sourceQuest = 27579,	-- Into the Prison [Horde]
					qg = 45818,	-- Lexlort
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27578, {	-- Morgan's Fruition
					sourceQuest = 27573,	-- The Dark Iron Pact [Alliance]
					qg = 45890,	-- Marshal Maxwell
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					groups = {
						i(65956),	-- Maxwell's Cloak
						i(65932),	-- Thaurissan's Breastplate
						i(65980),	-- Dark Iron Band
					},
				}),
				q(27593, {	-- Rebirth of the K.E.F
					sourceQuest = 27591,	-- The Dark Iron Pact [Horde]
					qg = 45840,	-- Warlord Goretooth
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
					groups = {
						i(68054),	-- Dark Iron Band
						i(68052),	-- Kargath Cloak
						i(68053),	-- Thaurissan's Breastplate
					},
				}),
				q(27573, {	-- The Dark Iron Pact [Alliance]
					sourceQuest = 27571,	-- The Grim Guzzler [Alliance]
					qg = 45899,	-- Mountaineer Orfus
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27591, {	-- The Dark Iron Pact [Horde]
					sourceQuest = 27589,	-- The Grim Guzzler [Horde]
					qg = 45824,	-- Thunderheart
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27571, {	-- The Grim Guzzler [Alliance]
					sourceQuest = 27569,	-- Dark Iron Tacticians
					qg = 45888,	-- Mayara Brightwing
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27589, {	-- The Grim Guzzler [Horde]
					sourceQuest = 27585,	-- The 109th Division
					qg = 45817,	-- Hierophant Theodora Mulvadania
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
			}),
			n(TREASURES, {
				i(11614, {	-- Plans: Dark Iron Mail (RECIPE!)
					description = "|cFFFFD700Plans: Dark Iron Mail|r can spawn in one of four spots.\n\n|cFFFFFFFFLocation 1:|r Located in the |cFFFFD700West Garrison|r. After going up the ramp from where |cFFFFD700General Angerforge|r is located on your left are some tables. It will be located in the back corner where the Fireguard Destroyer is and two tables in front of it. This table is close to the table that has vases on it that is near the keg.\n\n|cFFFFFFFFLocation 2:|r In |cFFFFD700Golem Lord Argelmach's|r room. When you walk into the room it will be in the back left corner where in between barrels. There will be two barrels to the left and one barrel to the right of it.\n\n|cFFFFFFFFLocation 3:|r In |cFFFFD700The Manufactory|r, on a bench.\n\n|cFFFFFFFFLocation 4:|r After leaving the room with |cFFFFD700Ambassador Flamelash|r you will cross a bridge that leads into the |cFFFFD700Mold Foundry|r. Once you enter the room you will continue straight until you see the ramp. Instead of going down the ramp you will jump off the ledge to the right of the ramp. After landing on the ground you will see the plans located here.",
					provider = { "o", 173232 },	-- Blacksmithing Plans
				}),
				i(11615, {	-- Plans: Dark Iron Shoulders (RECIPE!)
					description = "|cFFFFD700Plans: Dark Iron Shoulders|r spawn in one of two spots.\n\n|cFFFFFFFFLocation 1:|r In |cFFFFD700General Angerforge's|r room. They are sitting on the bottom shelf next to the floating crystal.\n\n|cFFFFFFFFLocation 2:|r On the ground in the |cFFFFD700Detention Block|r. After passing Lexlort you will continue down into the room. When you come across the first split into two rooms you will enter the room on the left. They will be located on the seat behind the bench which is located next to the 3 red jugs.",
					provider = { "o", 173232 },	-- Blacksmithing Plans
				}),
				i(18235, {	-- Schematic: Field Repair Bot 74A (RECIPE!)
					description = "On the floor next to Golem Lord Argelmach.",
					provider = { "o", 179552 },	-- Schematic: Field Repair Bot 74A
				}),
			}),
			n(VENDORS, {
				n(12944, bubbleDownClassicRep(FACTION_THORIUM_BROTHERHOOD, {	-- Lokhtos Darkbargainer <The Thorium Brotherhood>
					{	-- Neutral
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227730, {	-- Thorium Brotherhood Contract
							description = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
							timeline = { ADDED_1_15_3 },
							cost = { { "i", 17203, 1 } },	-- Sulfuron Ingot
							lvl = 60,
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(20754, {	-- Lesser Mana Oil (RECIPE!)
							timeline = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(20755, {	-- Formula: Wizard Oil (RECIPE!)
							timeline = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(22308, {	-- Pattern: Enchanted Runecloth Bag (RECIPE!)
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(18628, {	-- Thorium Brotherhood Contract
							description = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
							cost = { { "i", 17203, 1 } },	-- Sulfuron Ingot
							lvl = lvlsquish(60, 60, 20),
						}),
					},
					{	-- Friendly
						applyclassicphase(PHASE_THREE_ENCHANTS, i(19444)),	-- Formula: Enchant Weapon - Strength (RECIPE!)
						i(17022),	-- Pattern: Corehound Boots (RECIPE!)
						i(17018),	-- Pattern: Flarecore Gloves (RECIPE!)
						i(17023),	-- Pattern: Molten Helm (RECIPE!)
						i(17051),	-- Plans: Dark Iron Bracers (RECIPE!)
						applyclassicphase(PHASE_FIVE, i(20761)),	-- Recipe: Transmute Elemental Fire (RECIPE!)
					},
					{	-- Honored
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228981, {	-- Formula: Conductive Shield Coating (RECIPE!)
							timeline = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(229008, {	-- Formula: Enchant Cloak - Greater Fire Resistance (RECIPE!)
							timeline = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(229009, {	-- Formula: Enchant Cloak - Greater Nature Resistance (RECIPE!)
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						applyclassicphase(PHASE_THREE_ENCHANTS, i(19448)),	-- Formula: Enchant Weapon - Mighty Versatility / CLASSIC: Formula: Enchant Weapon - Mighty Spirit (RECIPE!)
						i(17025),	-- Pattern: Black Dragonscale Boots (RECIPE!)
						i(17017),	-- Pattern: Flarecore Mantle (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19219)),	-- Pattern: Flarecore Robe (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19330)),	-- Pattern: Lava Belt (RECIPE!)
						i(17060),	-- Plans: Dark Iron Destroyer (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19206)),	-- Plans: Dark Iron Helm (RECIPE!)
						i(17059),	-- Plans: Dark Iron Reaver (RECIPE!)
						i(17049),	-- Plans: Fiery Chain Girdle (RECIPE!)

						-- #if SEASON_OF_DISCOVERY
						-- EPIC ITEM UPGRADES
						applyclassicphase(SOD_PHASE_FOUR, i(227826, {	-- Dark Iron Flame Reaver
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   17015, 1 },	-- Dark Iron Reaver
								{ "i", 227801, 25 },	-- Firelands Ember
								{ "i",   17010, 2 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227842, {	-- Ebon Fist
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19170, 1 },	-- Ebon Hand
								{ "i", 227801, 25 },	-- Firelands Ember
								{ "i",   17010, 2 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227823, {	-- Fine Flarecore Gloves
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   16979, 1 },	-- Flarecore Gloves
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227839, {	-- Fine Flarecore Leggings
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19165, 1 },	-- Flarecore Leggings
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227830, {	-- Fine Flarecore Mantle
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   16980, 1 },	-- Flarecore Mantle
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227831, {	-- Fine Flarecore Robe
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19156, 1 },	-- Flarecore Robe
								{ "i", 227801, 20 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227821, {	-- Flamekissed Molten Helm
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   16983, 1 },	-- Molten Helm
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227833, {	-- Glaive of Obsidian Fury
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19167, 1 },	-- Blackfury
								{ "i", 227801, 25 },	-- Firelands Ember
								{ "i",   17011, 2 },	-- Lava Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227829, {	-- Hardened Black Dragonscale Boots
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   16984, 1 },	-- Black Dragonscale Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227840, {	-- Implacable Blackguard
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19168, 1 },	-- Blackguard
								{ "i", 227801, 25 },	-- Firelands Ember
								{ "i",   17011, 2 },	-- Lava Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227828, {	-- Lavawalker Belt
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19149, 1 },	-- Lava Belt
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227827, {	-- Molten Chain Girdle
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   16989, 1 },	-- Fiery Chain Girdle
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227834, {	-- Molten Chain Shoulders
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   16988, 1 },	-- Fiery Chain Shoulders
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227825, {	-- Molten Dark Iron Destroyer
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   17016, 1 },	-- Dark Iron Destroyer
								{ "i", 227801, 25 },	-- Firelands Ember
								{ "i",   17010, 2 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227838, {	-- Shining Chromatic Gauntlets
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19157, 1 },	-- Chromatic Gauntlets
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227832, {	-- Tempered Black Amnesty
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19166, 1 },	-- Black Amnesty
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 2 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227841, {	-- Tempered Dark Iron Boots (Str/Stam)
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(228924, {	-- Tempered Dark Iron Boots (Agi/Stam)
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(228925, {	-- Tempered Dark Iron Boots (Def/Stam)
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(228926, {	-- Tempered Dark Iron Boots (Int/Holy)
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(228927, {	-- Tempered Dark Iron Boots (Str/Holy)
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(228928, {	-- Tempered Dark Iron Boots (Healing/Stam)
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(228929, {	-- Tempered Dark Iron Boots (Healing/Int)
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227820, {	-- Tempered Dark Iron Bracers
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   17014, 1 },	-- Dark Iron Bracers
								{ "i", 227801, 10 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227835, {	-- Tempered Dark Iron Gauntlets
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19164, 1 },	-- Dark Iron Gauntlets
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227824, {	-- Tempered Dark Iron Helm
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19148, 1 },	-- Dark Iron Helm
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227836, {	-- Tempered Dark Iron Leggings
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   17013, 1 },	-- Dark Iron Leggings
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227837, {	-- Thick Corehound Belt
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19162, 1 },	-- Corehound Belt
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227822, {	-- Thick Corehound Boots
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   16982, 1 },	-- Corehound Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						})),
						-- #endif
					},
					{	-- Revered
						applyclassicphase(PHASE_THREE_ENCHANTS, i(19449)),	-- Formula: Enchant Weapon - Mighty Intellect (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19331)),	-- Pattern: Chromatic Gauntlets (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19332)),	-- Pattern: Corehound Belt (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19220)),	-- Pattern: Flarecore Leggings (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19333)),	-- Pattern: Molten Belt (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19208)),	-- Plans: Black Amnesty (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19209)),	-- Plans: Blackfury (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19207)),	-- Plans: Dark Iron Gauntlets (RECIPE!)
						i(17052),	-- Plans: Dark Iron Leggings (RECIPE!)
						i(17053),	-- Plans: Fiery Chain Shoulders (RECIPE!)
					},
					{	-- Exalted
						applyclassicphase(PHASE_THREE_RECIPES, i(19211)),	-- Plans: Blackguard (RECIPE!)
						applyclassicphase(PHASE_FOUR_DARKIRON_RECIPES,  i(20040)),	-- Plans: Dark Iron Boots (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19210)),	-- Plans: Ebon Hand (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19212, {	-- Plans: Nightfall (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_0 },
							-- #endif
						})),
					},
				})),
				n(9499, {	-- Plugger Spazzring
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(227902, {	-- Pattern: Hardened Black Dragonscale Breastplate (RECIPE!)
						timeline = { ADDED_1_15_3 },
					})),
					-- #endif
					i(15759, {	-- Pattern: Black Dragonscale Breastplate (RECIPE!)
						-- #if SEASON_OF_DISCOVERY
						timeline = { REMOVED_1_15_3 },
						-- #endif
					}),
					i(13483),	-- Recipe: Transmute Fire to Earth (RECIPE!)
					i(11325),	-- Dark Iron Ale Mug
				}),
				n(45843, {	-- Yuka Screwspigot <Engineering Supplies>
					timeline = { ADDED_4_0_1 },
					groups = {
						i(10602),	-- Schematic: Deadly Scope (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(11468),	-- Dark Iron Fanny Pack
				i(18945),	-- Dark Iron Residue
				applyclassicphase(PHASE_FIVE, i(22528)),	-- Dark Iron Scraps
				i(11129),	-- Essence of the Elements
				i(11269, {	-- Intact Elemental Core
					crs = {
						8908,	-- Molten War Golem
						8906,	-- Ragereaver Golem
						8905,	-- Warbringer Construct
						8907,	-- Wrath Hammer Construct
					},
				}),
				i(15781, {	-- Pattern: Black Dragonscale Leggings (RECIPE!)
					-- #if SEASON_OF_DISCOVERY
					timeline = { REMOVED_1_15_3 },
					-- #endif
					cr = 8903,	-- Anvilrage Captain
				}),
				i(15770, {	-- Pattern: Black Dragonscale Shoulders (RECIPE!)
					-- #if SEASON_OF_DISCOVERY
					timeline = { REMOVED_1_15_3 },
					-- #endif
					cr = 8898,	-- Anvilrage Marshal
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, i(227903, {	-- Pattern: Hardened Black Dragonscale Leggings (RECIPE!)
					timeline = { ADDED_1_15_3 },
					cr = 8903,	-- Anvilrage Captain
				})),
				applyclassicphase(SOD_PHASE_FOUR, i(227904, {	-- Pattern: Hardened Black Dragonscale Shoulders (RECIPE!)
					timeline = { ADDED_1_15_3 },
					cr = 8898,	-- Anvilrage Marshal
				})),
				-- #endif
				i(11611, {	-- Plans: Dark Iron Sunderer (RECIPE!)
					crs = {
						9554,	-- Hammered Patron
						10043,	-- Ribbly's Crony
					},
				}),
				i(16049, {	-- Schematic: Dark Iron Bomb (RECIPE!)
					cr = 8920,	-- Weapon Technician
				}),
				i(16048, {	-- Schematic: Dark Iron Rifle (RECIPE!)
					cr = 8897,	-- Doomforge Craftsman
				}),
				i(18654, {	-- Schematic: Gnomish Alarm-o-Bot (RECIPE!)
					cr = 8920,	-- Weapon Technician
				}),
				i(16053, {	-- Schematic: Master Engineer's Goggles
					-- #if AFTER 2.0.1
					description = "This is now learned from the trainer.",
					-- #endif
					timeline = { REMOVED_2_0_1 },
					cr = 8900,	-- Doomforge Arcanasmith
				}),
				i(18661, {	-- Schematic: World Enlarger (RECIPE!)
					cr = 8920,	-- Weapon Technician
				}),
				i(12546),	-- Aristocratic Cuffs
				i(12555),	-- Battlechaser's Greaves
				i(12552),	-- Blisterbane Wrap
				i(12549),	-- Braincage
				i(12535),	-- Doomforged Straightedge
				i(12542),	-- Funeral Pyre Vestment
				i(12547),	-- Mar Alom's Grip
				i(11078),	-- Relic Coffer Key
				i(12527),	-- Ribsplitter
				i(12550),	-- Runed Golem Shackles
				i(12531),	-- Searing Needle
				i(12532),	-- Spire of the Stoneshaper
				i(12551),	-- Stoneshield Cloak
				i(12528),	-- The Judge's Gavel
			}),
			n(DETENTION_BLOCK, {
				e(369, {	-- High Interrogator Gerstahn
					creatureID = 9018,
					groups = {
						i(11140),	-- Prison Cell Key
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_THREE, i(223539, {	-- Enthralled Sphere
							timeline = { ADDED_1_15_2 },
						})),
						-- #endif
						i(11625, {	-- Enthralled Sphere
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_2 },
							-- #endif
						}),
						i(11626),	-- Blackveil Cape
						i(11624),	-- Kentic Amice
						applyclassicphase(PHASE_FIVE, i(22240)),	-- Greaves of Withering Despaire
					},
				}),
				e(370, {	-- Lord Roccor
					creatureID = 9025,
					groups = {
						i(45050, {	-- Formula: Smoking Heart of the Mountain [BOP] (RECIPE!)
							timeline = { ADDED_3_1_0 },
						}),
						i(11813, {	-- Formula: Smoking Heart of the Mountain [BOE] (RECIPE!)
							timeline = { REMOVED_3_1_0 },
						}),
						i(11631),	-- Stoneshell Guard
						i(11632),	-- Earthslag Shoulders
						applyclassicphase(PHASE_FIVE, i(22234)),	-- Mantle of Lost Hope
						-- #if AFTER 7.3.2
						applyclassicphase(PHASE_FIVE, i(22271)),	-- Leggings of Frenzied Magic
						i(11679),	-- Rubicund Armguards
						-- #endif
						applyclassicphase(PHASE_FIVE, i(22397, {	-- Idol of Ferocity
							timeline = { REMOVED_5_0_4 },
						})),
						i(11630, {	-- Rockshard Pellets
							timeline = { DELETED_4_0_1 },
						}),
					},
				}),
				e(371, {	-- Houndmaster Grebmar
					creatureID = 9319,
					groups = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_THREE, i(223540, {	-- Houndmaster's Bow
							timeline = { ADDED_1_15_2 },
						})),
						-- #endif
						i(11628, {	-- Houndmaster's Bow
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_2 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_THREE, i(223982, {	-- Houndmaster's Rifle
							timeline = { ADDED_1_15_2 },
						})),
						-- #endif
						i(11629, {	-- Houndmaster's Rifle
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_2 },
							-- #endif
						}),
						i(11627),	-- Fleetfoot Greaves
						i(11623),	-- Spritecaster Cape
					},
				}),
				e(372, {	-- Ring of Law
					description = "Approaching the center of the ring will start an event, and the High Justice will appear and approach one of the gates and release three waves of non-elite enemies, followed by one of six possible mini-bosses.",
					creatureID = 10096,	-- High Justice Grimstone
					groups = {
						n(9031, {	-- Anub'shiah
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(223986, {	-- Graverot Cape
								timeline = { ADDED_1_15_2 },
							})),
							-- #endif
							i(11677, {	-- Graverot Cape
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_2 },
								-- #endif
							}),
							i(11678),	-- Carapace of Anub'shiah
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(227957, {	-- Savage Gladiator Greaves
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(11731, {	-- Savage Gladiator Greaves
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(11675),	-- Shadefiend Boots
						}),
						n(9029, {	-- Eviscerator
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(223987, {	-- Splinthide Shoulders
								timeline = { ADDED_1_15_2 },
							})),
							-- #endif
							i(11685, {	-- Splinthide Shoulders
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_2 },
								-- #endif
							}),
							-- #if BEFORE 7.3.2
							i(11679),	-- Rubicund Armguards
							-- #endif
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(227961, {	-- Savage Gladiator Grips
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(11730, {	-- Savage Gladiator Grips
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(11686),	-- Girdle of Beastial Fury
						}),
						n(9027, {	-- Gorosh the Dervish
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(227962, {	-- Flarethorn
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							applyclassicphase(PHASE_FIVE, i(22266, {	-- Flarethorn
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							})),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(227952, {	-- Savage Gladiator Chain
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(11726, {	-- Savage Gladiator Chain
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if AFTER 7.3.2
							i(11662),	-- Ban'thok Sash
							-- #endif
							applyclassicphase(PHASE_FIVE, i(22271)),	-- Leggings of Frenzied Magic
							applyclassicphase(PHASE_FIVE, i(22257)),	-- Bloodclot Band
						}),
						n(9028, {	-- Grizzle
							i(11610),	-- Plans: Dark Iron Pulverizer (RECIPE!)
							i(11702),	-- Grizzle's Skinner
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(223544, {	-- Dregmetal Spaulders
								timeline = { ADDED_1_15_2 },
							})),
							-- #endif
							i(11722, {	-- Dregmetal Spaulders
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_2 },
								-- #endif
							}),
							i(11703),	-- Stonewall Girdle
							applyclassicphase(PHASE_FIVE, i(22270)),	-- Entrenching Boots
						}),
						n(9032, {	-- Hedrum the Creeper
							i(11635),	-- Hookfang Shanker
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(227955, {	-- Savage Gladiator Helm
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(11729, {	-- Savage Gladiator Helm
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(11633),	-- Spiderfang Carapace
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(223984, {	-- Silkweb Gloves
								timeline = { ADDED_1_15_2 },
							})),
							-- #endif
							i(11634, {	-- Silkweb Gloves
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_2 },
								-- #endif
							}),
						}),
						n(9030, {	-- Ok'thor the Breaker
							i(11665),	-- Ogreseer Fists
							i(11662),	-- Ban'thok Sash
							i(11728),	-- Savage Gladiator Leggings
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_THREE, i(223985, {	-- Cyclopean Band
								timeline = { ADDED_1_15_2 },
							})),
							-- #endif
							i(11824, {	-- Cyclopean Band
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_2 },
								-- #endif
							}),
						}),
						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, n_conditional(16059, {	-- Theldren
							description = "Requires Banner of Provocation (Dungeon Set 2 Questline) to summon this boss. Loot the grey chest on the grey grate after killing the mobs. You must use the banner before the non-elites are killed.\nSummon Location: Ring of Law.",
							timeline = { REMOVED_4_0_3 },
							-- #if AFTER 4.0.3
							sourceQuest = 9015,	-- The Challenge
							u_sqs = true,	-- remove the u flag if sourcequests are completed
							-- #endif
							providers = {
								{ "i", 21986 },	-- Banner of Provocation
								{ "o", 181074 },	-- Arena Spoils
							},
							groups = {
								i(22047),	-- Top Piece of Lord Valthalak's Amulet
								-- #if SEASON_OF_DISCOVERY
								applyclassicphase(SOD_PHASE_FOUR, i(228700, {	-- Ironweave Mantle
									timeline = { ADDED_1_15_3 },
								})),
								-- #endif
								i(22305, {	-- Ironweave Mantle
									-- #if SEASON_OF_DISCOVERY
									timeline = { REMOVED_1_15_3 },
									-- #endif
								}),
								i(22317),	-- Lefty's Brass Knuckle
								i(22318),	-- Malgen's Long Bow
								i(22330),	-- Shroud of Arcane Mastery
							},
						})),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, n(223265, {	-- Delirious Ancient
					description = "Spawns after defeating High Interrogator Gerstahn, Houndmaster Grebmar, Ring of Law in the Dark Iron Highway.",
					cost = { { "i", 221418, 1 } },	-- Agamaggan's Roar
					groups = {
						i(221271),	-- Ace of Wilds
						i(221262),	-- Wild Offering
					},
				})),
				-- #endif
				e(377, {	-- Bael'gar
					creatureID = 9016,
					groups = {
						i(11803),	-- Force of Magma
						i(11805),	-- Rubidium Hammer
						i(11807),	-- Sash of the Burning Heart
						i(11802),	-- Lavacrest Leggings
						-- #if AFTER 7.3.2
						applyclassicphase(PHASE_FIVE, i(22257)),	-- Bloodclot Band
						-- #endif
					},
				}),
				e(374, {	-- Lord Incendius
					creatureID = 9017,
					groups = {
						applyclassicphase(PHASE_FIVE, i(21987)),	-- Incendicite of Incendius
						i(11126),	-- Tablet of Kurniya
						i(11766),	-- Flameweave Cuffs
						i(11764),	-- Cinderhide Armsplints
						i(11765),	-- Pyremail Wristguards
						i(11767),	-- Emberplate Armguards
						i(11768, {	-- Incendic Bracers
							-- #if BEFORE 10.1.7
							-- #if AFTER 2.0.1
							description = "This item appears to have been removed with TBC Prepatch. Please @Crieve if you get it to drop.",
							isBounty = true,
							-- #endif
							-- #endif
							timeline = { REMOVED_2_0_1, ADDED_10_1_7 },	-- 07.09.2023 ATT DISCORD
						}),
						applyclassicphase(PHASE_THREE_DMF_CARDS, i(19268)),	-- Ace of Elementals
					},
				}),
				e(376, {	-- Fineous Darkvire <Chief Architect>
					creatureID = 9056,
					groups = {
						i(11840),	-- Master Builder's Shirt
						i(11839),	-- Chief Architect's Monocle
						applyclassicphase(PHASE_FIVE, i(22223)),	-- Foreman's Head Protector
						i(151406, {	-- Belt of the Eminent Mason
							timeline = { ADDED_7_3_0 },
						}),
						i(11842),	-- Land Surveyor's Mantle
						i(11841),	-- Senior Designer's Pantaloons
					},
				}),
			}),
			n(SHADOWFORGE_CITY, {
				e(373, {	-- Pyromancer Loregrain
					creatureID = 9024,
					groups = {
						i(11207),	-- Formula: Enchant Weapon - Fiery Weapon (RECIPE!)
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_THREE, i(223538, {	-- Kindling Stave
							timeline = { ADDED_1_15_2 },
						})),
						-- #endif
						i(11750, {	-- Kindling Stave
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_2 },
							-- #endif
						}),
						i(11748),	-- Pyric Caduceus
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_THREE, i(223981, {	-- Flamestrider Robes
							timeline = { ADDED_1_15_2 },
						})),
						applyclassicphase(SOD_PHASE_THREE, i(223980, {	-- Searingscale Leggings
							timeline = { ADDED_1_15_2 },
						})),
						-- #endif
						i(11747, {	-- Flamestrider Robes
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_2 },
							-- #endif
						}),
						i(11749, {	-- Searingscale Leggings
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_2 },
							-- #endif
						}),
						-- #if AFTER 7.3.2
						applyclassicphase(PHASE_FIVE, i(22270)),	-- Entrenching Boots
						-- #endif
					},
				}),
				e(375, {	-- Warder Stilgiss
					creatureID = 9041,
					groups = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_THREE, i(223983, {	-- Arbiter's Blade
							timeline = { ADDED_1_15_2 },
						})),
						-- #endif
						i(11784, {	-- Arbiter's Blade
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_2 },
							-- #endif
						}),
						i(11782),	-- Boreal Mantle
						applyclassicphase(PHASE_FIVE, i(22241)),	-- Dark Warder's Pauldrons
						i(11783),	-- Chillsteel Girdle
						i(151405, {	-- Cold-Forged Chestplate
							timeline = { ADDED_7_3_0 },
						}),
					},
				}),
				n(9042, {	-- Verek
					i(11755),	-- Verek's Collar
					applyclassicphase(PHASE_FIVE, i(22242)),	-- Verek's Leash
				}),
				n(9476, {	-- Watchman Doomgrip
					description = "Watchman Doomgrip spawns once all twelve Relic Coffers have been opened using Relic Coffer Keys that can drop from any Dark Iron mob in the instance. Upon defeating all enemies, a hidden door beneath the Dark Coffer will open allowing access to the Secret Safe as well as the Heart of the Mountain.",
					cost = { { "i", 11078, 12 } },	-- Relic Coffer Key
					groups = {
						o(160836, {	-- Relic Coffer
							description = "Relic Coffer Keys can drop from any Dark Iron mob in the instance.",
							groups = {
								i(11946),	-- Fire Opal Necklace
								i(11945),	-- Dark Iron Ring
								i(11938),	-- Sack of Gems
								i(11966),	-- Small Sack of Coins
								i(11937),	-- Fat Sack of Coins
								i(11944),	-- Dark Iron Baby Booties
							},
						}),
						o(165554, {	-- Heart of the Mountain
							description = "This spawns after defeating Watchman Doomgrip.",
							groups = {
								i(11309),	-- The Heart of the Mountain
							},
						}),
						o(161495, {	-- Secret Safe
							description = "This spawns after defeating Watchman Doomgrip.",
							groups = {
								-- #if BEFORE 1.13.5
								i(11923),	-- The Hammer of Grace
								i(11920),	-- Wraith Scythe
								i(11926),	-- Deathdealer Breastplate
								i(11929),	-- Haunting Specter Leggings
								-- #endif
								applyclassicphase(PHASE_FIVE, i(22256)),	-- Mana Shaping Handwraps
								applyclassicphase(PHASE_FIVE, i(22205)),	-- Black Steel Bindings
								applyclassicphase(PHASE_FIVE, i(22254)),	-- Wand of Eternal Light
								applyclassicphase(PHASE_FIVE, i(22255)),	-- Magma Forged Band
							},
						}),
					},
				}),
				o(164820, {	-- Dark Keeper Nameplate
					description = "Inspect the portrait in front of the coffer room. Opening it will tell you the name of the Dark Keeper you need and where he is located. Only one will spawn each reset.\n\n|cff3399ffDark Keepers:|r\n\n|cFFFFD700Dark Keeper Bethek|r spawns inside the vault room as soon as you open the portrait.\n\n|cFFFFD700Dark Keeper Ofgut|r is located in |cFFFFD700General Angerforge's|r room. When you come down the stairs and are looking straight at |cFFFFD700General Angerforge|r, you will see him located directly to the left near the crystal.\n\n|cFFFFD700Dark Keeper Pelver|r is located in |cFFFFD700The Domicile|r. For quicker access, you can take any of the mole machines and click |cFFFFD700Into the Domicile|r and he will be on top of it.\n\n|cFFFFD700Dark Keeper Uggel|r is quite a close walk; go outside the vault room and turn right to the last room. He is near the entrance where all the golems are.\n\n|cFFFFD700Dark Keeper Vorfalk|r is located at the |cFFFFD700Grim Guzzler|r. When you first enter the room after coming from the bridge, he will be located on your right side in the corner (in front of the band's playing spot).\n\n|cFFFFD700Dark Keeper Zimrel|r is located on the second floor of the |cFFFFD700Ring of Law|r. When entering this floor from the |cFFFFD700East Garrison|r (room with the Shadowforge Lock), you will go around to your right and he will be sitting in the middle of the seats.",
					crs = {
						9438,	-- Dark Keeper Bethek
						9442,	-- Dark Keeper Ofgut
						9443,	-- Dark Keeper Pelver
						9439,	-- Dark Keeper Uggel
						9437,	-- Dark Keeper Vorfalk
						9441,	-- Dark Keeper Zimrel
					},
					groups = {
						o(160845, {	-- Dark Coffer
							sharedDescription =
								-- #if BEFORE 4.0.3
								"Is used to turn in Librams.",
								-- #else
								"Was used to turn in Librams prior to Cataclysm, is now without any purpose.",
								-- #endif
							cost = { { "i", 11197, 1 } },	-- Dark Keeper Key
							groups = {
								i(11752),	-- Black Blood of the Tormented
								i(11751),	-- Burning Essence
								i(11753),	-- Eye of Kajal
							},
						}),
						i(11197),	-- Dark Keeper Key
					},
				}),
				e(378, {	-- General Angerforge
					creatureID = 9033,
					groups = {
						i(11464),	-- Marshal Windsor's Lost Information
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227948, {	-- Angerforge's Battle Axe
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11816, {	-- Angerforge's Battle Axe
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if AFTER 7.3.2
						i(11932),	-- Guiding Stave of Wisdom
						-- #endif
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227940, {	-- Lord General's Sword
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11817, {	-- Lord General's Sword
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if AFTER 7.3.2
						i(12557, {	-- Ebonsteel Spaulders
							timeline = { REMOVED_4_0_3, ADDED_8_1_0 },
						}),
						-- #endif
						i(11820),	-- Royal Decorated Armor
						i(11821),	-- Warstrife Leggings
						i(11810),	-- Force of Will
						-- #if BEFORE 1.13.5
						i(11815),	-- Hand of Justice
						-- #endif
					},
				}),
				e(379, {	-- Golem Lord Argelmach
					creatureID = 8983,
					groups = {
						i(11268),	-- Head of Argelmach
						i(11465),	-- Marshal Windsor's Lost Information
						applyclassicphase(TBC_PHASE_ONE, i(21956, {	-- Design: Dark Iron Scorpid (RECIPE!)
							timeline = { ADDED_2_0_5 },
						})),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227964, {	-- Luminary Kilt
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11823, {	-- Luminary Kilt
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227965, {	-- Omnicast Boots
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11822, {	-- Omnicast Boots
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(11669),	-- Naglering
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227967, {	-- Second Wind
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11819, {	-- Second Wind
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
					},
				}),
				e(380, {	-- Hurley Blackbreath
					creatureID = 9537,
					provider = { "o", 164911 },	-- Thunderbrew Lager Keg
					description = "Break the 3 Thunderbrew Lager Kegs to start the encounter.",
					groups = {
						i(11312),	-- Lost Thunderbrew Recipe
						-- #if AFTER 7.3.2
						i(11922),	-- Blood-Etched Blade
						-- #endif
						i(18044),	-- Hurley's Tankard
						i(11735),	-- Ragefury Eyepatch
						i(151408, {	-- Dark Iron Dredger's Pauldrons
							timeline = { ADDED_7_3_0 },
						}),
						i(151407, {	-- Blackened Pit Trousers
							timeline = { ADDED_7_3_0 },
						}),
						i(18043),	-- Coal Miner Boots
						applyclassicphase(PHASE_FIVE, i(22275)),	-- Firemoss Boots
					},
				}),
				e(9543, {	-- Ribbly Screwspigot
					creatureID = 9543,
					description = "Speak to him to start the encounter.",
					groups = {
						i(11313),	-- Ribbly's Head
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227901, {	-- Plans: Tempered Dark Iron Plate (RECIPE!)
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11612, {	-- Plans: Dark Iron Plate (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(2663, {	-- Ribbly's Bandolier
							timeline = { REMOVED_4_0_1 },
						}),
						i(2662, {	-- Ribbly's Quiver
							timeline = { REMOVED_4_0_1 },
						}),
						i(11742),	-- Wayfarer's Knapsack
					},
				}),
				e(383, {	-- Plugger Spazzring
					creatureID = 9499,
					groups = {
						i(18653),	-- Schematic: Goblin Jumper Cables XL (RECIPE!)
						i(12791),	-- Barman Shanker
						i(12793),	-- Mixologist's Tunic
						i(151410, {	-- Bottle-Popper Ring
							timeline = { ADDED_7_3_0 },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_THREE, i(220168, {	-- Triple-Brewed Molten Lager
							timeline = { ADDED_1_15_2 },
						})),
						-- #endif
					},
				}),
				applyclassicphase(TBC_PHASE_FOUR, n(28067, {	-- Dark Iron Brewer
					description = "Speak to him until he passes out, a Mug will appear on the ground",
					timeline = { ADDED_2_4_3 },
					groups = {
						o(190394, {	-- Mug of Dire Brew
							i(38320),	-- Dire Brew
						}),
					},
				})),
				e(381, {	-- Phalanx
					creatureID = 9502,
					description = "Private Rocknot must be sent into a drunken rage to aggro Phalanx.\nTo do that, give him 6 dark iron ale mugs, which can be bought from Plugger Spazzring.\nRocknot will break one of the kegs, it'll blow the door open and Phalanx will be angry.",
					groups = {
						i(11744),	-- Bloodfist
						i(11743, {	-- Rockfist
							-- #if BEFORE 10.1.7
							-- #if AFTER 2.0.1
							description = "This item appears to have been removed with TBC Prepatch. Please @Crieve if you get it to drop.",
							isBounty = true,
							-- #endif
							-- #endif
							timeline = { REMOVED_2_0_1, ADDED_10_1_7 },
						}),
						-- #if BEFORE 7.3.2
						i(11746),	-- Golem Skull Helm
						-- #endif
						applyclassicphase(PHASE_FIVE, i(22212)),	-- Golem Fitted Pauldrons
						applyclassicphase(PHASE_FIVE, i(22204)),	-- Wristguards of Renown
						i(11745),	-- Fists of Phalanx
						i(151409, {	-- Ferrous Cord
							timeline = { ADDED_7_3_0 },
						}),
					},
				}),
				e(384, {	-- Ambassador Flamelash
					creatureID = 9156,
					groups = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227934, {	-- Flame Wrath
							timeline = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227973, {	-- Circle of Flame
							timeline = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227970, {	-- Cape of the Fire Salamander
							timeline = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227971, {	-- Molten Fists
							timeline = { ADDED_1_15_3 },
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227972, {	-- Burst of Knowledge
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11809, {	-- Flame Wrath
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(11808, {	-- Circle of Flame
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(11812, {	-- Cape of the Fire Salamander
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(11814, {	-- Molten Fists
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(11832, {	-- Burst of Knowledge
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
					},
				}),
				n(8923, {	-- Panzor the Invincible
					description = "This is a Rare Creature and, as such, is not always present.",
					groups = {
						i(11786),	-- Stone of the Earth
						i(11785),	-- Rock Golem Bulwark
						i(11787),	-- Shalehusk Boots
						applyclassicphase(PHASE_FIVE, i(22245)),	-- Soot Encrusted Footwear
					},
				}),
				e(385, {	-- The Seven
					creatureID = 9039,	-- Doom'rel
					provider = { "o", 169243 },	-- Chest of The Seven
					modelScale = 3,
					groups = {
						-- #if BEFORE 7.3.2
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227963, {	-- Blood-Etched Blade
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11922, {	-- Blood-Etched Blade
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #endif
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227960, {	-- Impervious Giant
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11921, {	-- Impervious Giant
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(11923),	-- The Hammer of Grace
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227941, {	-- Wraith Scythe
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11920, {	-- Wraith Scythe
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227958, {	-- Ghostshroud
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11925, {	-- Ghostshroud
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227956, {	-- Deathdealer Breastplate
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11926, {	-- Deathdealer Breastplate
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(11929),	-- Haunting Specter Leggings
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227959, {	-- Legplates of the Eternal Guardian
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11927, {	-- Legplates of the Eternal Guardian
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
					},
				}),
				e(386, {	-- Magmus
					creatureID = 9938,
					groups = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227974, {	-- Lavastone Hammer
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						applyclassicphase(PHASE_FIVE, i(22208, {	-- Lavastone Hammer
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						})),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227978, {	-- Magmus Stone
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11935, {	-- Magmus Stone
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						i(11746),	-- Golem Skull Helm
						i(151411, {	-- Molten-Warden Leggings
							timeline = { ADDED_7_3_0 },
						}),
						i(22275),	-- Firemoss Boots
						applyclassicphase(PHASE_FIVE, i(22400, {	-- Libram of Truth
							timeline = { DELETED_5_0_4 },
						})),
						applyclassicphase(PHASE_FIVE, i(22395, {	-- Totem of Rage
							timeline = { DELETED_5_0_4 },
						})),
					},
				}),
				-- #if BEFORE 7.3.2
				n(8929, {	-- Princess Moira Bronzebeard <Princess of Ironforge> / Thaurissan High Priest
					description = "In order to be eligible for this loot, you need to have completed The Princess's Surprise or The Princess Saved?. Those quests were removed in 4.0.3, but characters who completed them before then still receive this loot.",
					sourceQuests = {
						4363,	-- The Princess's Surprise
						4004,	-- The Princess Saved?
					},
					groups = {
						i(12557, {	-- Ebonsteel Spaulders
							timeline = { REMOVED_4_0_3, ADDED_8_1_0 },
							-- #if ANYCLASSIC
							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
							-- #endif
						}),
						i(12554, {	-- Hands of the Exalted Herald
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
							-- #if ANYCLASSIC
							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
							-- #endif
						}),
						i(12556, {	-- High Priestess Boots
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
							-- #if ANYCLASSIC
							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
							-- #endif
						}),
						i(12553, {	-- Swiftwalker Boots
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
							-- #if ANYCLASSIC
							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
							-- #endif
						}),
					},
				}),
				-- #endif
				e(387, {	-- Emperor Dagran Thaurissan
					creatureID = 9019,
					groups = {
						ach(642),	-- Blackrock Depths
						ach(5051, {	-- Blackrock Depths Guild Run
							timeline = { ADDED_4_0_3 },
						}),
						i(246429, {	-- Dark Iron Chandelier (DECOR!)
							timeline = { ADDED_11_2_7 },
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227981, {	-- Dreadforge Retaliatior
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11931, {	-- Dreadforge Retaliatior
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if BEFORE 7.3.2
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227982, {	-- Guiding Stave of Wisdom
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11932, {	-- Guiding Stave of Wisdom
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #endif
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227991, {	-- Ironfoe
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11684, {	-- Ironfoe
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227984, {	-- Thaurissan's Royal Scepter
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11928, {	-- Thaurissan's Royal Scepter
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227988, {	-- Imperial Jewel
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11933, {	-- Imperial Jewel
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227985, {	-- The Emperor's New Cape
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11930, {	-- The Emperor's New Cape
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227980, {	-- Robes of the Royal Crown
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11924, {	-- Robes of the Royal Crown
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227986, {	-- Wristguards of Renown
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						applyclassicphase(PHASE_FIVE, i(22204, {	-- Wristguards of Renown
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						})),
						-- #if AFTER 7.3.2
						i(12554, {	-- Hands of the Exalted Herald
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						-- #endif
						-- #if BEFORE 1.13.5
						i(16724, {	-- Lightforge Gauntlets
							timeline = { REMOVED_4_0_3 },
						}),
						-- #endif
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227987, {	-- Sash of the Grand Hunt
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						applyclassicphase(PHASE_FIVE, i(22207, {	-- Sash of the Grand Hunt
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						})),
						-- #if AFTER 7.3.2
						i(12556, {	-- High Priestess Boots
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						i(12553, {	-- Swiftwalker Boots
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						-- #endif
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(227983, {	-- Dark Iron Seal
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11934),	-- Emperor's Seal
						-- #if AFTER 1.13.5
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_FOUR, i(228722, {	-- Hand of Justice
							timeline = { ADDED_1_15_3 },
						})),
						-- #endif
						i(11815, {	-- Hand of Justice
							-- #if SEASON_OF_DISCOVERY
							timeline = { REMOVED_1_15_3 },
							-- #endif
						}),
						-- #endif
						i(12033),	-- Thaurissan Family Jewels
					},
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.WOD, {
		inst(228, {
			q(35899),	-- Blackrock Depths (Detention Block) Reward Quest - Normal completion
			q(35901),	-- Blackrock Depths (Detention Bonus) Reward Quest
			q(35902),	-- Blackrock Depths (Upper City) Reward Quest - Normal completion
			q(35903),	-- Blackrock Depths (Detention Bonus) Reward Quest
			q(35904),	-- Blackrock Depths (Everything) Reward Quest
		}),
	}),
	expansion(EXPANSION.TWW, {
		inst(228, {
			timeline = { ADDED_11_0_5 },
			groups = {
				q(82739),	-- ???
				q(82740),	-- Twilight Scheming (New 11.0 ID)
				-- Both of these keep getting reported completed on turnin of seemingly any BRD class quest regardless of race or faction
			},
		}),
	}),
});
```

</details>

## P1 → P2.1 — add the keys to that Lua

**Author’s change:** edit the Lua source above. Keep its old phase calls. Add a key to the parent whose records share one opening; a child only needs another key when it has another rule.

**Saved result:** [p2.1/Blackrock Depths.lua](p2.1/Blackrock%20Depths.lua) — a generated comparison copy showing those proposed edits.

**Read these changed lines first.** They are exact hunks from the complete diff below. `-` is the old line; `+` is its replacement.

```diff
@@ -3403,6 +3405,7 @@
 				}),
 				-- #endif
 				e(387, {	-- Emperor Dagran Thaurissan
+					progressionKey = "brd.second-half",
 					creatureID = 9019,
 					groups = {
 						ach(642),	-- Blackrock Depths
```

Descendants inherit the parent’s key. An additional child key combines with the parent rule using **AND**; it cannot bypass a closed parent. A pure `progressionKey` + `groups` table shares a rule across siblings and adds no visible output header.

<details>
<summary>Show every changed Lua line: P1 → P2.1</summary>

```diff
--- .contrib/phase-examples/evolution/p1/Blackrock Depths.lua
+++ .contrib/phase-examples/evolution/blackrock-depths/p2.1/Blackrock Depths.lua
@@ -1,4 +1,5 @@
--- P1 | Full authoring source at the start of migration. Original: .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Blackrock Depths.lua
+-- Generated comparison snapshot (P2.1 / P2.2 / P3): complete annotated source.
+-- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.
 -----------------------------------------------------
 --   D U N G E O N S  &  R A I D S  M O D U L E    --
 -----------------------------------------------------
@@ -57,6 +58,7 @@
 
 root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
 	inst(228, {	-- Blackrock Depths
+		progressionKey = "brd.dungeon",
 		-- #if BEFORE MOP
 		lore = "Once the capital city of the Dark Iron dwarves, this volcanic labyrinth now serves as the seat of power for Ragnaros the Firelord. Ragnaros has uncovered the secret to creating life from stone and plans to build an army of unstoppable golems to aid him in conquering the whole of Blackrock Mountain. Obsessed with defeating Nefarian and his draconic minions, Ragnaros will go to any extreme to achieve final victory.",
 		zoneTextAreaID = 1584,	-- Blackrock Depths
@@ -75,7 +77,7 @@
 			}),
 			n(QUESTS, {
 				-- #if SEASON_OF_DISCOVERY
-				applyclassicphase(SOD_PHASE_FOUR, q(84338, {	-- A Binding Contract
+				applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { q(84338, {	-- A Binding Contract
 					provider = { "i", 227730 },	-- Thorium Brotherhood Contract
 					timeline = { ADDED_1_15_3 },
 					requireSkill = BLACKSMITHING,
@@ -83,7 +85,7 @@
 					groups = {
 						i(227727),	-- Plans: Sulfuron Hammer (RECIPE!)
 					},
-				})),
+				}) } }),
 				-- #endif
 				q(7604, {	-- A Binding Contract
 					provider = { "i", 18628 },	-- Thorium Brotherhood Contract
@@ -277,7 +279,7 @@
 					},
 				}),
 				-- #if SEASON_OF_DISCOVERY
-				applyclassicphase(SOD_PHASE_THREE, q(82062, {	-- Ever After
+				applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { q(82062, {	-- Ever After
 					description = "Just east of the Ring in Blackrock Depths is a bridge that leads north over lava.\n\nAs you get onto the bridge, look down and to the left; you'll see a friendly Dark Iron Dwarf below you on the base of a pillar. Clear the rest of the mobs ahead of you (Blazing Fireguards and a group of Shadowforge dwarves).\n\nMove to the left side of the bridge near a small brazier. Get onto the railing, hug the rock wall, and jump ahead onto the platform near the wall.\n\nMove to the end of the platform, hugging the wall, and move hard into the rock corner.\n\nTurn with your left shoulder to the wall and run carefully against the wall, until you just fall down into the exposed corner. Drop down onto the rock outcrop below. \n\nTurn left into a small room, where you'll encounter the Rugged Traveler.",
 					qg = 222530,	-- Rugged Traveler
 					timeline = { REMOVED_2_0_1 },
@@ -286,7 +288,7 @@
 						i(221316),	-- Premo's Poise-Demanding Uniform
 						i(221315),	-- Rainbow Generator
 					},
-				})),
+				}) } }),
 				-- #endif
 				q(6646, {	-- Favor Amongst the Brotherhood, Blood of the Mountain
 					qg = 12944,	-- Lokhtos Darkbargainer
@@ -2194,7 +2196,7 @@
 				n(12944, bubbleDownClassicRep(FACTION_THORIUM_BROTHERHOOD, {	-- Lokhtos Darkbargainer <The Thorium Brotherhood>
 					{	-- Neutral
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227730, {	-- Thorium Brotherhood Contract
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(227730, {	-- Thorium Brotherhood Contract
 							description = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
 							timeline = { ADDED_1_15_3 },
 							cost = { { "i", 17203, 1 } },	-- Sulfuron Ingot
@@ -2208,7 +2210,7 @@
 						})),
 						applyclassicphase(SOD_PHASE_FOUR, i(22308, {	-- Pattern: Enchanted Runecloth Bag (RECIPE!)
 							timeline = { ADDED_1_15_3 },
-						})),
+						})) } },
 						-- #endif
 						i(18628, {	-- Thorium Brotherhood Contract
 							description = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
@@ -2220,16 +2222,16 @@
 						}),
 					},
 					{	-- Friendly
-						applyclassicphase(PHASE_THREE_ENCHANTS, i(19444)),	-- Formula: Enchant Weapon - Strength (RECIPE!)
+						applyclassicphase(PHASE_THREE_ENCHANTS, { progressionKey = "brd.enchants", groups = { i(19444) } }),	-- Formula: Enchant Weapon - Strength (RECIPE!)
 						i(17022),	-- Pattern: Corehound Boots (RECIPE!)
 						i(17018),	-- Pattern: Flarecore Gloves (RECIPE!)
 						i(17023),	-- Pattern: Molten Helm (RECIPE!)
 						i(17051),	-- Plans: Dark Iron Bracers (RECIPE!)
-						applyclassicphase(PHASE_FIVE, i(20761)),	-- Recipe: Transmute Elemental Fire (RECIPE!)
+						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(20761) } }),	-- Recipe: Transmute Elemental Fire (RECIPE!)
 					},
 					{	-- Honored
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(228981, {	-- Formula: Conductive Shield Coating (RECIPE!)
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(228981, {	-- Formula: Conductive Shield Coating (RECIPE!)
 							timeline = { ADDED_1_15_3 },
 						})),
 						applyclassicphase(SOD_PHASE_FOUR, i(229008, {	-- Formula: Enchant Cloak - Greater Fire Resistance (RECIPE!)
@@ -2237,21 +2239,21 @@
 						})),
 						applyclassicphase(SOD_PHASE_FOUR, i(229009, {	-- Formula: Enchant Cloak - Greater Nature Resistance (RECIPE!)
 							timeline = { ADDED_1_15_3 },
-						})),
-						-- #endif
-						applyclassicphase(PHASE_THREE_ENCHANTS, i(19448)),	-- Formula: Enchant Weapon - Mighty Versatility / CLASSIC: Formula: Enchant Weapon - Mighty Spirit (RECIPE!)
+						})) } },
+						-- #endif
+						applyclassicphase(PHASE_THREE_ENCHANTS, { progressionKey = "brd.enchants", groups = { i(19448) } }),	-- Formula: Enchant Weapon - Mighty Versatility / CLASSIC: Formula: Enchant Weapon - Mighty Spirit (RECIPE!)
 						i(17025),	-- Pattern: Black Dragonscale Boots (RECIPE!)
 						i(17017),	-- Pattern: Flarecore Mantle (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19219)),	-- Pattern: Flarecore Robe (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19330)),	-- Pattern: Lava Belt (RECIPE!)
+						{ progressionKey = "brd.recipes", groups = { applyclassicphase(PHASE_THREE_RECIPES, i(19219)),	-- Pattern: Flarecore Robe (RECIPE!)
+						applyclassicphase(PHASE_THREE_RECIPES, i(19330)) } },	-- Pattern: Lava Belt (RECIPE!)
 						i(17060),	-- Plans: Dark Iron Destroyer (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19206)),	-- Plans: Dark Iron Helm (RECIPE!)
+						applyclassicphase(PHASE_THREE_RECIPES, { progressionKey = "brd.recipes", groups = { i(19206) } }),	-- Plans: Dark Iron Helm (RECIPE!)
 						i(17059),	-- Plans: Dark Iron Reaver (RECIPE!)
 						i(17049),	-- Plans: Fiery Chain Girdle (RECIPE!)
 
 						-- #if SEASON_OF_DISCOVERY
 						-- EPIC ITEM UPGRADES
-						applyclassicphase(SOD_PHASE_FOUR, i(227826, {	-- Dark Iron Flame Reaver
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(227826, {	-- Dark Iron Flame Reaver
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   17015, 1 },	-- Dark Iron Reaver
@@ -2482,37 +2484,37 @@
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17011, 1 },	-- Lava Core
 							},
-						})),
+						})) } },
 						-- #endif
 					},
 					{	-- Revered
-						applyclassicphase(PHASE_THREE_ENCHANTS, i(19449)),	-- Formula: Enchant Weapon - Mighty Intellect (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19331)),	-- Pattern: Chromatic Gauntlets (RECIPE!)
+						applyclassicphase(PHASE_THREE_ENCHANTS, { progressionKey = "brd.enchants", groups = { i(19449) } }),	-- Formula: Enchant Weapon - Mighty Intellect (RECIPE!)
+						{ progressionKey = "brd.recipes", groups = { applyclassicphase(PHASE_THREE_RECIPES, i(19331)),	-- Pattern: Chromatic Gauntlets (RECIPE!)
 						applyclassicphase(PHASE_THREE_RECIPES, i(19332)),	-- Pattern: Corehound Belt (RECIPE!)
 						applyclassicphase(PHASE_THREE_RECIPES, i(19220)),	-- Pattern: Flarecore Leggings (RECIPE!)
 						applyclassicphase(PHASE_THREE_RECIPES, i(19333)),	-- Pattern: Molten Belt (RECIPE!)
 						applyclassicphase(PHASE_THREE_RECIPES, i(19208)),	-- Plans: Black Amnesty (RECIPE!)
 						applyclassicphase(PHASE_THREE_RECIPES, i(19209)),	-- Plans: Blackfury (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19207)),	-- Plans: Dark Iron Gauntlets (RECIPE!)
+						applyclassicphase(PHASE_THREE_RECIPES, i(19207)) } },	-- Plans: Dark Iron Gauntlets (RECIPE!)
 						i(17052),	-- Plans: Dark Iron Leggings (RECIPE!)
 						i(17053),	-- Plans: Fiery Chain Shoulders (RECIPE!)
 					},
 					{	-- Exalted
-						applyclassicphase(PHASE_THREE_RECIPES, i(19211)),	-- Plans: Blackguard (RECIPE!)
-						applyclassicphase(PHASE_FOUR_DARKIRON_RECIPES,  i(20040)),	-- Plans: Dark Iron Boots (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19210)),	-- Plans: Ebon Hand (RECIPE!)
+						applyclassicphase(PHASE_THREE_RECIPES, { progressionKey = "brd.recipes", groups = { i(19211) } }),	-- Plans: Blackguard (RECIPE!)
+						applyclassicphase(PHASE_FOUR_DARKIRON_RECIPES,  { progressionKey = "brd.dark-iron-recipes", groups = { i(20040) } }),	-- Plans: Dark Iron Boots (RECIPE!)
+						{ progressionKey = "brd.recipes", groups = { applyclassicphase(PHASE_THREE_RECIPES, i(19210)),	-- Plans: Ebon Hand (RECIPE!)
 						applyclassicphase(PHASE_THREE_RECIPES, i(19212, {	-- Plans: Nightfall (RECIPE!)
 							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_0 },
 							-- #endif
-						})),
+						})) } },
 					},
 				})),
 				n(9499, {	-- Plugger Spazzring
 					-- #if SEASON_OF_DISCOVERY
-					applyclassicphase(SOD_PHASE_FOUR, i(227902, {	-- Pattern: Hardened Black Dragonscale Breastplate (RECIPE!)
+					applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227902, {	-- Pattern: Hardened Black Dragonscale Breastplate (RECIPE!)
 						timeline = { ADDED_1_15_3 },
-					})),
+					}) } }),
 					-- #endif
 					i(15759, {	-- Pattern: Black Dragonscale Breastplate (RECIPE!)
 						-- #if SEASON_OF_DISCOVERY
@@ -2532,7 +2534,7 @@
 			n(ZONE_DROPS, {
 				i(11468),	-- Dark Iron Fanny Pack
 				i(18945),	-- Dark Iron Residue
-				applyclassicphase(PHASE_FIVE, i(22528)),	-- Dark Iron Scraps
+				applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22528) } }),	-- Dark Iron Scraps
 				i(11129),	-- Essence of the Elements
 				i(11269, {	-- Intact Elemental Core
 					crs = {
@@ -2555,14 +2557,14 @@
 					cr = 8898,	-- Anvilrage Marshal
 				}),
 				-- #if SEASON_OF_DISCOVERY
-				applyclassicphase(SOD_PHASE_FOUR, i(227903, {	-- Pattern: Hardened Black Dragonscale Leggings (RECIPE!)
+				{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(227903, {	-- Pattern: Hardened Black Dragonscale Leggings (RECIPE!)
 					timeline = { ADDED_1_15_3 },
 					cr = 8903,	-- Anvilrage Captain
 				})),
 				applyclassicphase(SOD_PHASE_FOUR, i(227904, {	-- Pattern: Hardened Black Dragonscale Shoulders (RECIPE!)
 					timeline = { ADDED_1_15_3 },
 					cr = 8898,	-- Anvilrage Marshal
-				})),
+				})) } },
 				-- #endif
 				i(11611, {	-- Plans: Dark Iron Sunderer (RECIPE!)
 					crs = {
@@ -2610,9 +2612,9 @@
 					groups = {
 						i(11140),	-- Prison Cell Key
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, i(223539, {	-- Enthralled Sphere
+						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.enthralled-sphere", groups = { i(223539, {	-- Enthralled Sphere
 							timeline = { ADDED_1_15_2 },
-						})),
+						}) } }),
 						-- #endif
 						i(11625, {	-- Enthralled Sphere
 							-- #if SEASON_OF_DISCOVERY
@@ -2621,7 +2623,7 @@
 						}),
 						i(11626),	-- Blackveil Cape
 						i(11624),	-- Kentic Amice
-						applyclassicphase(PHASE_FIVE, i(22240)),	-- Greaves of Withering Despaire
+						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22240) } }),	-- Greaves of Withering Despaire
 					},
 				}),
 				e(370, {	-- Lord Roccor
@@ -2635,14 +2637,14 @@
 						}),
 						i(11631),	-- Stoneshell Guard
 						i(11632),	-- Earthslag Shoulders
-						applyclassicphase(PHASE_FIVE, i(22234)),	-- Mantle of Lost Hope
+						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22234) } }),	-- Mantle of Lost Hope
 						-- #if AFTER 7.3.2
-						applyclassicphase(PHASE_FIVE, i(22271)),	-- Leggings of Frenzied Magic
+						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22271) } }),	-- Leggings of Frenzied Magic
 						i(11679),	-- Rubicund Armguards
 						-- #endif
-						applyclassicphase(PHASE_FIVE, i(22397, {	-- Idol of Ferocity
+						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22397, {	-- Idol of Ferocity
 							timeline = { REMOVED_5_0_4 },
-						})),
+						}) } }),
 						i(11630, {	-- Rockshard Pellets
 							timeline = { DELETED_4_0_1 },
 						}),
@@ -2652,9 +2654,9 @@
 					creatureID = 9319,
 					groups = {
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, i(223540, {	-- Houndmaster's Bow
+						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223540, {	-- Houndmaster's Bow
 							timeline = { ADDED_1_15_2 },
-						})),
+						}) } }),
 						-- #endif
 						i(11628, {	-- Houndmaster's Bow
 							-- #if SEASON_OF_DISCOVERY
@@ -2662,9 +2664,9 @@
 							-- #endif
 						}),
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, i(223982, {	-- Houndmaster's Rifle
+						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223982, {	-- Houndmaster's Rifle
 							timeline = { ADDED_1_15_2 },
-						})),
+						}) } }),
 						-- #endif
 						i(11629, {	-- Houndmaster's Rifle
 							-- #if SEASON_OF_DISCOVERY
@@ -2681,9 +2683,9 @@
 					groups = {
 						n(9031, {	-- Anub'shiah
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, i(223986, {	-- Graverot Cape
+							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223986, {	-- Graverot Cape
 								timeline = { ADDED_1_15_2 },
-							})),
+							}) } }),
 							-- #endif
 							i(11677, {	-- Graverot Cape
 								-- #if SEASON_OF_DISCOVERY
@@ -2692,9 +2694,9 @@
 							}),
 							i(11678),	-- Carapace of Anub'shiah
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(227957, {	-- Savage Gladiator Greaves
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227957, {	-- Savage Gladiator Greaves
 								timeline = { ADDED_1_15_3 },
-							})),
+							}) } }),
 							-- #endif
 							i(11731, {	-- Savage Gladiator Greaves
 								-- #if SEASON_OF_DISCOVERY
@@ -2705,9 +2707,9 @@
 						}),
 						n(9029, {	-- Eviscerator
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, i(223987, {	-- Splinthide Shoulders
+							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223987, {	-- Splinthide Shoulders
 								timeline = { ADDED_1_15_2 },
-							})),
+							}) } }),
 							-- #endif
 							i(11685, {	-- Splinthide Shoulders
 								-- #if SEASON_OF_DISCOVERY
@@ -2718,9 +2720,9 @@
 							i(11679),	-- Rubicund Armguards
 							-- #endif
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(227961, {	-- Savage Gladiator Grips
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227961, {	-- Savage Gladiator Grips
 								timeline = { ADDED_1_15_3 },
-							})),
+							}) } }),
 							-- #endif
 							i(11730, {	-- Savage Gladiator Grips
 								-- #if SEASON_OF_DISCOVERY
@@ -2731,19 +2733,19 @@
 						}),
 						n(9027, {	-- Gorosh the Dervish
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(227962, {	-- Flarethorn
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227962, {	-- Flarethorn
 								timeline = { ADDED_1_15_3 },
-							})),
-							-- #endif
-							applyclassicphase(PHASE_FIVE, i(22266, {	-- Flarethorn
+							}) } }),
+							-- #endif
+							applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22266, {	-- Flarethorn
 								-- #if SEASON_OF_DISCOVERY
 								timeline = { REMOVED_1_15_3 },
 								-- #endif
-							})),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(227952, {	-- Savage Gladiator Chain
+							}) } }),
+							-- #if SEASON_OF_DISCOVERY
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227952, {	-- Savage Gladiator Chain
 								timeline = { ADDED_1_15_3 },
-							})),
+							}) } }),
 							-- #endif
 							i(11726, {	-- Savage Gladiator Chain
 								-- #if SEASON_OF_DISCOVERY
@@ -2753,16 +2755,16 @@
 							-- #if AFTER 7.3.2
 							i(11662),	-- Ban'thok Sash
 							-- #endif
-							applyclassicphase(PHASE_FIVE, i(22271)),	-- Leggings of Frenzied Magic
-							applyclassicphase(PHASE_FIVE, i(22257)),	-- Bloodclot Band
+							{ progressionKey = "brd.later-loot", groups = { applyclassicphase(PHASE_FIVE, i(22271)),	-- Leggings of Frenzied Magic
+							applyclassicphase(PHASE_FIVE, i(22257)) } },	-- Bloodclot Band
 						}),
 						n(9028, {	-- Grizzle
 							i(11610),	-- Plans: Dark Iron Pulverizer (RECIPE!)
 							i(11702),	-- Grizzle's Skinner
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, i(223544, {	-- Dregmetal Spaulders
+							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223544, {	-- Dregmetal Spaulders
 								timeline = { ADDED_1_15_2 },
-							})),
+							}) } }),
 							-- #endif
 							i(11722, {	-- Dregmetal Spaulders
 								-- #if SEASON_OF_DISCOVERY
@@ -2770,14 +2772,14 @@
 								-- #endif
 							}),
 							i(11703),	-- Stonewall Girdle
-							applyclassicphase(PHASE_FIVE, i(22270)),	-- Entrenching Boots
+							applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22270) } }),	-- Entrenching Boots
 						}),
 						n(9032, {	-- Hedrum the Creeper
 							i(11635),	-- Hookfang Shanker
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(227955, {	-- Savage Gladiator Helm
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227955, {	-- Savage Gladiator Helm
 								timeline = { ADDED_1_15_3 },
-							})),
+							}) } }),
 							-- #endif
 							i(11729, {	-- Savage Gladiator Helm
 								-- #if SEASON_OF_DISCOVERY
@@ -2786,9 +2788,9 @@
 							}),
 							i(11633),	-- Spiderfang Carapace
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, i(223984, {	-- Silkweb Gloves
+							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223984, {	-- Silkweb Gloves
 								timeline = { ADDED_1_15_2 },
-							})),
+							}) } }),
 							-- #endif
 							i(11634, {	-- Silkweb Gloves
 								-- #if SEASON_OF_DISCOVERY
@@ -2801,9 +2803,9 @@
 							i(11662),	-- Ban'thok Sash
 							i(11728),	-- Savage Gladiator Leggings
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, i(223985, {	-- Cyclopean Band
+							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223985, {	-- Cyclopean Band
 								timeline = { ADDED_1_15_2 },
-							})),
+							}) } }),
 							-- #endif
 							i(11824, {	-- Cyclopean Band
 								-- #if SEASON_OF_DISCOVERY
@@ -2811,7 +2813,7 @@
 								-- #endif
 							}),
 						}),
-						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, n_conditional(16059, {	-- Theldren
+						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "brd.dungeon-set-2", groups = { n_conditional(16059, {	-- Theldren
 							description = "Requires Banner of Provocation (Dungeon Set 2 Questline) to summon this boss. Loot the grey chest on the grey grate after killing the mobs. You must use the banner before the non-elites are killed.\nSummon Location: Ring of Law.",
 							timeline = { REMOVED_4_0_3 },
 							-- #if AFTER 4.0.3
@@ -2825,9 +2827,9 @@
 							groups = {
 								i(22047),	-- Top Piece of Lord Valthalak's Amulet
 								-- #if SEASON_OF_DISCOVERY
-								applyclassicphase(SOD_PHASE_FOUR, i(228700, {	-- Ironweave Mantle
+								applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(228700, {	-- Ironweave Mantle
 									timeline = { ADDED_1_15_3 },
-								})),
+								}) } }),
 								-- #endif
 								i(22305, {	-- Ironweave Mantle
 									-- #if SEASON_OF_DISCOVERY
@@ -2838,18 +2840,18 @@
 								i(22318),	-- Malgen's Long Bow
 								i(22330),	-- Shroud of Arcane Mastery
 							},
-						})),
+						}) } }),
 					},
 				}),
 				-- #if SEASON_OF_DISCOVERY
-				applyclassicphase(SOD_PHASE_THREE, n(223265, {	-- Delirious Ancient
+				applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { n(223265, {	-- Delirious Ancient
 					description = "Spawns after defeating High Interrogator Gerstahn, Houndmaster Grebmar, Ring of Law in the Dark Iron Highway.",
 					cost = { { "i", 221418, 1 } },	-- Agamaggan's Roar
 					groups = {
 						i(221271),	-- Ace of Wilds
 						i(221262),	-- Wild Offering
 					},
-				})),
+				}) } }),
 				-- #endif
 				e(377, {	-- Bael'gar
 					creatureID = 9016,
@@ -2859,14 +2861,14 @@
 						i(11807),	-- Sash of the Burning Heart
 						i(11802),	-- Lavacrest Leggings
 						-- #if AFTER 7.3.2
-						applyclassicphase(PHASE_FIVE, i(22257)),	-- Bloodclot Band
+						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22257) } }),	-- Bloodclot Band
 						-- #endif
 					},
 				}),
 				e(374, {	-- Lord Incendius
 					creatureID = 9017,
 					groups = {
-						applyclassicphase(PHASE_FIVE, i(21987)),	-- Incendicite of Incendius
+						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(21987) } }),	-- Incendicite of Incendius
 						i(11126),	-- Tablet of Kurniya
 						i(11766),	-- Flameweave Cuffs
 						i(11764),	-- Cinderhide Armsplints
@@ -2881,7 +2883,7 @@
 							-- #endif
 							timeline = { REMOVED_2_0_1, ADDED_10_1_7 },	-- 07.09.2023 ATT DISCORD
 						}),
-						applyclassicphase(PHASE_THREE_DMF_CARDS, i(19268)),	-- Ace of Elementals
+						applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "brd.darkmoon-cards", groups = { i(19268) } }),	-- Ace of Elementals
 					},
 				}),
 				e(376, {	-- Fineous Darkvire <Chief Architect>
@@ -2889,7 +2891,7 @@
 					groups = {
 						i(11840),	-- Master Builder's Shirt
 						i(11839),	-- Chief Architect's Monocle
-						applyclassicphase(PHASE_FIVE, i(22223)),	-- Foreman's Head Protector
+						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22223) } }),	-- Foreman's Head Protector
 						i(151406, {	-- Belt of the Eminent Mason
 							timeline = { ADDED_7_3_0 },
 						}),
@@ -2904,9 +2906,9 @@
 					groups = {
 						i(11207),	-- Formula: Enchant Weapon - Fiery Weapon (RECIPE!)
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, i(223538, {	-- Kindling Stave
+						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223538, {	-- Kindling Stave
 							timeline = { ADDED_1_15_2 },
-						})),
+						}) } }),
 						-- #endif
 						i(11750, {	-- Kindling Stave
 							-- #if SEASON_OF_DISCOVERY
@@ -2915,12 +2917,12 @@
 						}),
 						i(11748),	-- Pyric Caduceus
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, i(223981, {	-- Flamestrider Robes
+						{ progressionKey = "brd.sod-phase-three-additions", groups = { applyclassicphase(SOD_PHASE_THREE, i(223981, {	-- Flamestrider Robes
 							timeline = { ADDED_1_15_2 },
 						})),
 						applyclassicphase(SOD_PHASE_THREE, i(223980, {	-- Searingscale Leggings
 							timeline = { ADDED_1_15_2 },
-						})),
+						})) } },
 						-- #endif
 						i(11747, {	-- Flamestrider Robes
 							-- #if SEASON_OF_DISCOVERY
@@ -2933,7 +2935,7 @@
 							-- #endif
 						}),
 						-- #if AFTER 7.3.2
-						applyclassicphase(PHASE_FIVE, i(22270)),	-- Entrenching Boots
+						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22270) } }),	-- Entrenching Boots
 						-- #endif
 					},
 				}),
@@ -2941,9 +2943,9 @@
 					creatureID = 9041,
 					groups = {
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, i(223983, {	-- Arbiter's Blade
+						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223983, {	-- Arbiter's Blade
 							timeline = { ADDED_1_15_2 },
-						})),
+						}) } }),
 						-- #endif
 						i(11784, {	-- Arbiter's Blade
 							-- #if SEASON_OF_DISCOVERY
@@ -2951,7 +2953,7 @@
 							-- #endif
 						}),
 						i(11782),	-- Boreal Mantle
-						applyclassicphase(PHASE_FIVE, i(22241)),	-- Dark Warder's Pauldrons
+						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22241) } }),	-- Dark Warder's Pauldrons
 						i(11783),	-- Chillsteel Girdle
 						i(151405, {	-- Cold-Forged Chestplate
 							timeline = { ADDED_7_3_0 },
@@ -2960,7 +2962,7 @@
 				}),
 				n(9042, {	-- Verek
 					i(11755),	-- Verek's Collar
-					applyclassicphase(PHASE_FIVE, i(22242)),	-- Verek's Leash
+					applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22242) } }),	-- Verek's Leash
 				}),
 				n(9476, {	-- Watchman Doomgrip
 					description = "Watchman Doomgrip spawns once all twelve Relic Coffers have been opened using Relic Coffer Keys that can drop from any Dark Iron mob in the instance. Upon defeating all enemies, a hidden door beneath the Dark Coffer will open allowing access to the Secret Safe as well as the Heart of the Mountain.",
@@ -2992,10 +2994,10 @@
 								i(11926),	-- Deathdealer Breastplate
 								i(11929),	-- Haunting Specter Leggings
 								-- #endif
-								applyclassicphase(PHASE_FIVE, i(22256)),	-- Mana Shaping Handwraps
+								{ progressionKey = "brd.later-loot", groups = { applyclassicphase(PHASE_FIVE, i(22256)),	-- Mana Shaping Handwraps
 								applyclassicphase(PHASE_FIVE, i(22205)),	-- Black Steel Bindings
 								applyclassicphase(PHASE_FIVE, i(22254)),	-- Wand of Eternal Light
-								applyclassicphase(PHASE_FIVE, i(22255)),	-- Magma Forged Band
+								applyclassicphase(PHASE_FIVE, i(22255)) } },	-- Magma Forged Band
 							},
 						}),
 					},
@@ -3033,9 +3035,9 @@
 					groups = {
 						i(11464),	-- Marshal Windsor's Lost Information
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227948, {	-- Angerforge's Battle Axe
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.angerforge-axe", groups = { i(227948, {	-- Angerforge's Battle Axe
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11816, {	-- Angerforge's Battle Axe
 							-- #if SEASON_OF_DISCOVERY
@@ -3046,9 +3048,9 @@
 						i(11932),	-- Guiding Stave of Wisdom
 						-- #endif
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227940, {	-- Lord General's Sword
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227940, {	-- Lord General's Sword
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11817, {	-- Lord General's Sword
 							-- #if SEASON_OF_DISCOVERY
@@ -3073,13 +3075,13 @@
 					groups = {
 						i(11268),	-- Head of Argelmach
 						i(11465),	-- Marshal Windsor's Lost Information
-						applyclassicphase(TBC_PHASE_ONE, i(21956, {	-- Design: Dark Iron Scorpid (RECIPE!)
+						applyclassicphase(TBC_PHASE_ONE, { progressionKey = "brd.tbc-jewelcrafting", groups = { i(21956, {	-- Design: Dark Iron Scorpid (RECIPE!)
 							timeline = { ADDED_2_0_5 },
-						})),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227964, {	-- Luminary Kilt
-							timeline = { ADDED_1_15_3 },
-						})),
+						}) } }),
+						-- #if SEASON_OF_DISCOVERY
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227964, {	-- Luminary Kilt
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11823, {	-- Luminary Kilt
 							-- #if SEASON_OF_DISCOVERY
@@ -3087,9 +3089,9 @@
 							-- #endif
 						}),
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227965, {	-- Omnicast Boots
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227965, {	-- Omnicast Boots
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11822, {	-- Omnicast Boots
 							-- #if SEASON_OF_DISCOVERY
@@ -3098,9 +3100,9 @@
 						}),
 						i(11669),	-- Naglering
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227967, {	-- Second Wind
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227967, {	-- Second Wind
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11819, {	-- Second Wind
 							-- #if SEASON_OF_DISCOVERY
@@ -3127,7 +3129,7 @@
 							timeline = { ADDED_7_3_0 },
 						}),
 						i(18043),	-- Coal Miner Boots
-						applyclassicphase(PHASE_FIVE, i(22275)),	-- Firemoss Boots
+						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22275) } }),	-- Firemoss Boots
 					},
 				}),
 				e(9543, {	-- Ribbly Screwspigot
@@ -3136,9 +3138,9 @@
 					groups = {
 						i(11313),	-- Ribbly's Head
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227901, {	-- Plans: Tempered Dark Iron Plate (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227901, {	-- Plans: Tempered Dark Iron Plate (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11612, {	-- Plans: Dark Iron Plate (RECIPE!)
 							-- #if SEASON_OF_DISCOVERY
@@ -3164,13 +3166,13 @@
 							timeline = { ADDED_7_3_0 },
 						}),
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, i(220168, {	-- Triple-Brewed Molten Lager
+						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(220168, {	-- Triple-Brewed Molten Lager
 							timeline = { ADDED_1_15_2 },
-						})),
-						-- #endif
-					},
-				}),
-				applyclassicphase(TBC_PHASE_FOUR, n(28067, {	-- Dark Iron Brewer
+						}) } }),
+						-- #endif
+					},
+				}),
+				applyclassicphase(TBC_PHASE_FOUR, { progressionKey = "brd.dark-iron-brewer", groups = { n(28067, {	-- Dark Iron Brewer
 					description = "Speak to him until he passes out, a Mug will appear on the ground",
 					timeline = { ADDED_2_4_3 },
 					groups = {
@@ -3178,7 +3180,7 @@
 							i(38320),	-- Dire Brew
 						}),
 					},
-				})),
+				}) } }),
 				e(381, {	-- Phalanx
 					creatureID = 9502,
 					description = "Private Rocknot must be sent into a drunken rage to aggro Phalanx.\nTo do that, give him 6 dark iron ale mugs, which can be bought from Plugger Spazzring.\nRocknot will break one of the kegs, it'll blow the door open and Phalanx will be angry.",
@@ -3196,8 +3198,8 @@
 						-- #if BEFORE 7.3.2
 						i(11746),	-- Golem Skull Helm
 						-- #endif
-						applyclassicphase(PHASE_FIVE, i(22212)),	-- Golem Fitted Pauldrons
-						applyclassicphase(PHASE_FIVE, i(22204)),	-- Wristguards of Renown
+						{ progressionKey = "brd.later-loot", groups = { applyclassicphase(PHASE_FIVE, i(22212)),	-- Golem Fitted Pauldrons
+						applyclassicphase(PHASE_FIVE, i(22204)) } },	-- Wristguards of Renown
 						i(11745),	-- Fists of Phalanx
 						i(151409, {	-- Ferrous Cord
 							timeline = { ADDED_7_3_0 },
@@ -3208,7 +3210,7 @@
 					creatureID = 9156,
 					groups = {
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227934, {	-- Flame Wrath
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(227934, {	-- Flame Wrath
 							timeline = { ADDED_1_15_3 },
 						})),
 						applyclassicphase(SOD_PHASE_FOUR, i(227973, {	-- Circle of Flame
@@ -3222,7 +3224,7 @@
 						})),
 						applyclassicphase(SOD_PHASE_FOUR, i(227972, {	-- Burst of Knowledge
 							timeline = { ADDED_1_15_3 },
-						})),
+						})) } },
 						-- #endif
 						i(11809, {	-- Flame Wrath
 							-- #if SEASON_OF_DISCOVERY
@@ -3257,7 +3259,7 @@
 						i(11786),	-- Stone of the Earth
 						i(11785),	-- Rock Golem Bulwark
 						i(11787),	-- Shalehusk Boots
-						applyclassicphase(PHASE_FIVE, i(22245)),	-- Soot Encrusted Footwear
+						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22245) } }),	-- Soot Encrusted Footwear
 					},
 				}),
 				e(385, {	-- The Seven
@@ -3267,9 +3269,9 @@
 					groups = {
 						-- #if BEFORE 7.3.2
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227963, {	-- Blood-Etched Blade
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227963, {	-- Blood-Etched Blade
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11922, {	-- Blood-Etched Blade
 							-- #if SEASON_OF_DISCOVERY
@@ -3278,9 +3280,9 @@
 						}),
 						-- #endif
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227960, {	-- Impervious Giant
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227960, {	-- Impervious Giant
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11921, {	-- Impervious Giant
 							-- #if SEASON_OF_DISCOVERY
@@ -3289,9 +3291,9 @@
 						}),
 						i(11923),	-- The Hammer of Grace
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227941, {	-- Wraith Scythe
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227941, {	-- Wraith Scythe
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11920, {	-- Wraith Scythe
 							-- #if SEASON_OF_DISCOVERY
@@ -3299,9 +3301,9 @@
 							-- #endif
 						}),
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227958, {	-- Ghostshroud
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227958, {	-- Ghostshroud
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11925, {	-- Ghostshroud
 							-- #if SEASON_OF_DISCOVERY
@@ -3309,9 +3311,9 @@
 							-- #endif
 						}),
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227956, {	-- Deathdealer Breastplate
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227956, {	-- Deathdealer Breastplate
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11926, {	-- Deathdealer Breastplate
 							-- #if SEASON_OF_DISCOVERY
@@ -3320,9 +3322,9 @@
 						}),
 						i(11929),	-- Haunting Specter Leggings
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227959, {	-- Legplates of the Eternal Guardian
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227959, {	-- Legplates of the Eternal Guardian
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11927, {	-- Legplates of the Eternal Guardian
 							-- #if SEASON_OF_DISCOVERY
@@ -3335,19 +3337,19 @@
 					creatureID = 9938,
 					groups = {
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227974, {	-- Lavastone Hammer
-							timeline = { ADDED_1_15_3 },
-						})),
-						-- #endif
-						applyclassicphase(PHASE_FIVE, i(22208, {	-- Lavastone Hammer
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227974, {	-- Lavastone Hammer
+							timeline = { ADDED_1_15_3 },
+						}) } }),
+						-- #endif
+						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22208, {	-- Lavastone Hammer
 							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
 							-- #endif
-						})),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227978, {	-- Magmus Stone
-							timeline = { ADDED_1_15_3 },
-						})),
+						}) } }),
+						-- #if SEASON_OF_DISCOVERY
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227978, {	-- Magmus Stone
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11935, {	-- Magmus Stone
 							-- #if SEASON_OF_DISCOVERY
@@ -3359,12 +3361,12 @@
 							timeline = { ADDED_7_3_0 },
 						}),
 						i(22275),	-- Firemoss Boots
-						applyclassicphase(PHASE_FIVE, i(22400, {	-- Libram of Truth
+						{ progressionKey = "brd.later-loot", groups = { applyclassicphase(PHASE_FIVE, i(22400, {	-- Libram of Truth
 							timeline = { DELETED_5_0_4 },
 						})),
 						applyclassicphase(PHASE_FIVE, i(22395, {	-- Totem of Rage
 							timeline = { DELETED_5_0_4 },
-						})),
+						})) } },
 					},
 				}),
 				-- #if BEFORE 7.3.2
@@ -3403,6 +3405,7 @@
 				}),
 				-- #endif
 				e(387, {	-- Emperor Dagran Thaurissan
+					progressionKey = "brd.second-half",
 					creatureID = 9019,
 					groups = {
 						ach(642),	-- Blackrock Depths
@@ -3413,9 +3416,9 @@
 							timeline = { ADDED_11_2_7 },
 						}),
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227981, {	-- Dreadforge Retaliatior
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227981, {	-- Dreadforge Retaliatior
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11931, {	-- Dreadforge Retaliatior
 							-- #if SEASON_OF_DISCOVERY
@@ -3424,9 +3427,9 @@
 						}),
 						-- #if BEFORE 7.3.2
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227982, {	-- Guiding Stave of Wisdom
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227982, {	-- Guiding Stave of Wisdom
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11932, {	-- Guiding Stave of Wisdom
 							-- #if SEASON_OF_DISCOVERY
@@ -3435,9 +3438,9 @@
 						}),
 						-- #endif
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227991, {	-- Ironfoe
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227991, {	-- Ironfoe
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11684, {	-- Ironfoe
 							-- #if SEASON_OF_DISCOVERY
@@ -3445,9 +3448,9 @@
 							-- #endif
 						}),
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227984, {	-- Thaurissan's Royal Scepter
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227984, {	-- Thaurissan's Royal Scepter
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11928, {	-- Thaurissan's Royal Scepter
 							-- #if SEASON_OF_DISCOVERY
@@ -3455,9 +3458,9 @@
 							-- #endif
 						}),
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227988, {	-- Imperial Jewel
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227988, {	-- Imperial Jewel
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11933, {	-- Imperial Jewel
 							-- #if SEASON_OF_DISCOVERY
@@ -3465,9 +3468,9 @@
 							-- #endif
 						}),
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227985, {	-- The Emperor's New Cape
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227985, {	-- The Emperor's New Cape
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11930, {	-- The Emperor's New Cape
 							-- #if SEASON_OF_DISCOVERY
@@ -3475,9 +3478,9 @@
 							-- #endif
 						}),
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227980, {	-- Robes of the Royal Crown
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227980, {	-- Robes of the Royal Crown
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11924, {	-- Robes of the Royal Crown
 							-- #if SEASON_OF_DISCOVERY
@@ -3485,15 +3488,15 @@
 							-- #endif
 						}),
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227986, {	-- Wristguards of Renown
-							timeline = { ADDED_1_15_3 },
-						})),
-						-- #endif
-						applyclassicphase(PHASE_FIVE, i(22204, {	-- Wristguards of Renown
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227986, {	-- Wristguards of Renown
+							timeline = { ADDED_1_15_3 },
+						}) } }),
+						-- #endif
+						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22204, {	-- Wristguards of Renown
 							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
 							-- #endif
-						})),
+						}) } }),
 						-- #if AFTER 7.3.2
 						i(12554, {	-- Hands of the Exalted Herald
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
@@ -3505,15 +3508,15 @@
 						}),
 						-- #endif
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227987, {	-- Sash of the Grand Hunt
-							timeline = { ADDED_1_15_3 },
-						})),
-						-- #endif
-						applyclassicphase(PHASE_FIVE, i(22207, {	-- Sash of the Grand Hunt
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227987, {	-- Sash of the Grand Hunt
+							timeline = { ADDED_1_15_3 },
+						}) } }),
+						-- #endif
+						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22207, {	-- Sash of the Grand Hunt
 							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
 							-- #endif
-						})),
+						}) } }),
 						-- #if AFTER 7.3.2
 						i(12556, {	-- High Priestess Boots
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
@@ -3523,16 +3526,16 @@
 						}),
 						-- #endif
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(227983, {	-- Dark Iron Seal
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227983, {	-- Dark Iron Seal
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11934),	-- Emperor's Seal
 						-- #if AFTER 1.13.5
 						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, i(228722, {	-- Hand of Justice
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(228722, {	-- Hand of Justice
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						-- #endif
 						i(11815, {	-- Hand of Justice
 							-- #if SEASON_OF_DISCOVERY
```

</details>

**Control setting:** `stage: "P2.1"` in [migration.json](p2.1/migration.json). This generated comparison control shows the proposed setting; the production Parser does not yet consume it. `sources` is relative to its folder.

```diff
--- /dev/null
+++ .contrib/phase-examples/evolution/blackrock-depths/p2.1/migration.json
@@ -0,0 +1,13 @@
+{
+  "schema": 1,
+  "defaultStage": "P1",
+  "cohorts": [
+    {
+      "id": "comparison-fixture-blackrock-depths",
+      "stage": "P2.1",
+      "sources": [
+        "Blackrock Depths.lua"
+      ]
+    }
+  ]
+}
```

## P2.1 → P2.2 — write the timing in JSON

**Lua: unchanged** — [the P2.2 copy](p2.2/Blackrock%20Depths.lua) is identical to P2.1.

**Author edits:** [.contrib/phase-examples/schedule.json](../../schedule.json). The entries below are handwritten timing rules. Put them at `rules.blackrock-depths` and `fullSourceRules.blackrock-depths` in that file:

```json
{
  "rules": {
    "blackrock-depths": {
      "brd.dungeon": {
        "default": "start",
        "sod": "vanilla.3"
      },
      "brd.second-half": {
        "default": "start",
        "sod": "vanilla.4"
      },
      "brd.enthralled-sphere": {
        "sod": "vanilla.3"
      },
      "brd.angerforge-axe": {
        "sod": "vanilla.4"
      }
    }
  },
  "fullSourceRules": {
    "blackrock-depths": {
      "brd.sod-phase-three-additions": {
        "sod": "vanilla.3"
      },
      "brd.sod-phase-four-additions": {
        "sod": "vanilla.4"
      },
      "brd.enchants": "unknown",
      "brd.recipes": "unknown",
      "brd.dark-iron-recipes": "unknown",
      "brd.darkmoon-cards": "unknown",
      "brd.later-loot": "unknown",
      "brd.dungeon-set-2": "unknown",
      "brd.tbc-jewelcrafting": "unknown",
      "brd.dark-iron-brewer": "unknown"
    }
  }
}
```

`rules` is shared with the small runnable examples. `fullSourceRules` covers the additional records in the complete source. Both sections belong to this one file and use the same rule format.

`unknown` means the opening is unresolved. It never means open. An unresolved child rule affects that child’s source, while all parent requirements still apply. Retail does not read a phase schedule.

<details>
<summary>Read the complete schedule.json, including the other instances</summary>

```json
{
  "$comment": "Authoring input · P2.2, P3 and P4. Edit the release rules here, then run prepare.py. Retail uses its ordinary Lua tree.",
  "rules": {
    "blackwing-lair": {
      "$comment": "Change the raid opening on common. sameAs reuses its timing for this source. The two Nefarian loot lists stay separate.",
      "raid.bwl.common": { "default": "vanilla.3", "sod": "vanilla.5" },
      "raid.bwl.original": { "default": {"sameAs": "raid.bwl.common"}, "sod": "disabled" },
      "raid.bwl.sod20": { "sod": {"sameAs": "raid.bwl.common"} },
      "raid.bwl.draconic-for-dummies": "unknown"
    },
    "blackrock-depths": {
      "brd.dungeon": { "default": "start", "sod": "vanilla.3" },
      "brd.second-half": { "default": "start", "sod": "vanilla.4" },
      "brd.enthralled-sphere": { "sod": "vanilla.3" },
      "brd.angerforge-axe": { "sod": "vanilla.4" }
    },
    "demon-fall-canyon": {
      "dfc.dungeon": { "sod": "unknown" },
      "dfc.azgaloth": { "sod": "vanilla.5" },
      "dfc.ironwood-branch": { "sod": "vanilla.7" }
    },
    "dire-maul": {
      "dire-maul.common": { "default": "vanilla.1.dire-maul", "anniversary": "vanilla.2", "sod": "vanilla.4" },
      "dire-maul.isalien": { "default": "unknown", "anniversary": "vanilla.4" }
    },
    "temple-of-ahnqiraj": {
      "aq40.common": { "default": "unknown", "sod": "vanilla.6.raids" },
      "aq40.original": { "default": "start", "sod": "disabled" },
      "aq40.reworked": { "sod": {"sameAs": "aq40.common"} }
    },
    "gnomeregan": {
      "gnomeregan.dungeon": { "default": "start", "sod": "disabled" },
      "gnomeregan.raid10": { "sod": "vanilla.2" }
    }
  },
  "fullSourceRules": {
    "$comment": "Additional complete-source owners; unknown boundaries require independent review. These rules do not alter the compact examples.",
    "blackrock-depths": {
      "brd.sod-phase-three-additions": {"sod": "vanilla.3"},
      "brd.sod-phase-four-additions": {"sod": "vanilla.4"},
      "brd.enchants": "unknown",
      "brd.recipes": "unknown",
      "brd.dark-iron-recipes": "unknown",
      "brd.darkmoon-cards": "unknown",
      "brd.later-loot": "unknown",
      "brd.dungeon-set-2": "unknown",
      "brd.tbc-jewelcrafting": "unknown",
      "brd.dark-iron-brewer": "unknown"
    },
    "dire-maul": {
      "dire-maul.dungeon-set-2": "unknown",
      "dire-maul.recipe-quests": "unknown",
      "dire-maul.darkmoon-cards": "unknown",
      "dire-maul.later-recipes": "unknown",
      "dire-maul.sod-phase-four-additions": {"sod": "vanilla.4"},
      "dire-maul.ironwood-branch": {"sod": "vanilla.7"},
      "dire-maul.tbc-pet-training": "unknown"
    },
    "temple-of-ahnqiraj": {
      "aq40.atiesh-base": "unknown",
      "aq40.greater-scarab-coffer-key": "unknown"
    }
  },
  "calendars": {
    "progression": [
      "vanilla.1",
      "vanilla.1.dire-maul",
      "vanilla.2",
      "vanilla.3",
      "vanilla.4",
      "vanilla.5.war-effort",
      "vanilla.6"
    ],
    "era": {
      "sameAs": "progression"
    },
    "anniversary": [
      "vanilla.launch",
      "vanilla.1.raids",
      "vanilla.2",
      "vanilla.3",
      "vanilla.4",
      "vanilla.5.war-effort",
      "vanilla.6"
    ],
    "sod": [
      "vanilla.1",
      "vanilla.2",
      "vanilla.3",
      "vanilla.4",
      "vanilla.4.raids",
      "vanilla.5",
      "vanilla.6.scepter",
      "vanilla.6.war-effort",
      "vanilla.6.war-effort-end",
      "vanilla.6.war",
      "vanilla.6.raids",
      "vanilla.7"
    ]
  }
}
```

</details>

**Control change:** [P2.1](p2.1/migration.json) → [P2.2](p2.2/migration.json). The proposed migration still ships the legacy result and compares the new result separately.

```diff
--- .contrib/phase-examples/evolution/blackrock-depths/p2.1/migration.json
+++ .contrib/phase-examples/evolution/blackrock-depths/p2.2/migration.json
@@ -4,7 +4,7 @@
   "cohorts": [
     {
       "id": "comparison-fixture-blackrock-depths",
-      "stage": "P2.1",
+      "stage": "P2.2",
       "sources": [
         "Blackrock Depths.lua"
       ]
```

## P2.2 → P3 — change the stage value

**Lua: unchanged** — [the P3 copy](p3/Blackrock%20Depths.lua) still matches P2.1 and P2.2. **Timing JSON: unchanged.** Only the setting shown in the generated [migration.json](p3/migration.json) changes:

```diff
--- .contrib/phase-examples/evolution/blackrock-depths/p2.2/migration.json
+++ .contrib/phase-examples/evolution/blackrock-depths/p3/migration.json
@@ -4,7 +4,7 @@
   "cohorts": [
     {
       "id": "comparison-fixture-blackrock-depths",
-      "stage": "P2.2",
+      "stage": "P3",
       "sources": [
         "Blackrock Depths.lua"
       ]
```

This proposed stage makes the new result authoritative after the source passes its migration checks. Unknown timing still prevents promotion of the affected source. The old Lua calls remain available for the independent legacy comparison.

## P3 → P4 — select a complete source for each flavor

SoD keeps its new quest and reward records. Classic and Retail keep their own selected records, including their original quest, reputation and loot conditions.

**Remove:** the old `applyclassicphase` calls and flavor/season `#if` branches. **Keep:** version branches, timelines, quests, costs, loot and other ordinary requirements. **Timing JSON: unchanged.**

**Author’s Lua change:** split the source into the selected files below. Each linked file is a complete generated comparison of the proposed final source.

### SoD

**Before:** [complete P3 Lua](p3/Blackrock%20Depths.lua). **After:** [p4/sod.lua](p4/sod.lua).

<details>
<summary>Read the complete final sod.lua</summary>

```lua
-- Generated comparison snapshot (P4): complete sod source.
-- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

local DETENTION_BLOCK = createHeader({
	readable = "Detention Block",
	icon = 236718,
	text = {
		en = [[~DUNGEON_FLOOR_BLACKROCKDEPTHS1]],
	},
});
local SHADOWFORGE_CITY = createHeader({
	readable = "Shadowforge City",
	icon = 236718,
	text = {
		en = [[~DUNGEON_FLOOR_BLACKROCKDEPTHS2]],
	},
});

local REPUTATION_FROM_CORES, REPUTATION_FROM_LEATHER, REPUTATION_FROM_DARKIRON = 500, 350, 75;	-- These are the reputation values after TBC, other than for Classic.

-- #if BEFORE TBC
-- Reputation in Classic
REPUTATION_FROM_CORES = 200;
REPUTATION_FROM_LEATHER = 150;
REPUTATION_FROM_DARKIRON = 50;
-- #else
-- #if AFTER CATA
-- Reputation in Cata Classic
-- CRIEVE NOTE: Not sure if it is intended, but the reputation gained from these skyrocketed in Cataclysm Classic. It might be unintentional.
REPUTATION_FROM_CORES = 2200;
REPUTATION_FROM_LEATHER = 1540;
REPUTATION_FROM_DARKIRON = 300;
-- #endif
-- #endif

ExportDB.OnTooltipDB.ThoriumBrotherhood = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		addRepInfo(tooltipInfo, reputation, "Turn In Blood & Cores (1x each)",]] .. REPUTATION_FROM_CORES .. [[, 42000);
		addRepInfo(tooltipInfo, reputation, "Turn In Core Leather (2x each)",]] .. REPUTATION_FROM_LEATHER .. [[, 42000);
		addRepInfo(tooltipInfo, reputation, "Turn In Dark Iron Ore (10x each)",]] .. REPUTATION_FROM_DARKIRON .. [[, 42000);
	end
end]];

-- Princess Moira's loot was removed in 4.0.3, but characters who completed The Princess's Surprise or The Princess Saved? still receive it.
local PRINCESS_MOIRA_LOOT_OnUpdate = [[function(t)
	if _.IsQuestFlaggedCompleted(4363) or _.IsQuestFlaggedCompleted(4004) then
		t.u = nil;
		t.rwp = nil;
	end
end]];

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(228, {	-- Blackrock Depths
		progressionKey = "brd.dungeon",
		-- #if BEFORE MOP
		lore = "Once the capital city of the Dark Iron dwarves, this volcanic labyrinth now serves as the seat of power for Ragnaros the Firelord. Ragnaros has uncovered the secret to creating life from stone and plans to build an army of unstoppable golems to aid him in conquering the whole of Blackrock Mountain. Obsessed with defeating Nefarian and his draconic minions, Ragnaros will go to any extreme to achieve final victory.",
		zoneTextAreaID = 1584,	-- Blackrock Depths
		-- #endif
		description = "The best route for a full clear is to enter Shadowforge City first time through the Dark Iron Highway. The Detention Block can be cleared whenever.",
		mapID = BLACKROCK_DEPTHS,
		coord = { 39.06, 18.12, BLACKROCK_MOUNTAIN_LEVEL3 },
		maps = { BLACKROCK_DEPTHS_LEVEL2 },
		lvl = 42,
		groups = {
			n(FACTIONS, {
				faction(FACTION_THORIUM_BROTHERHOOD, {	-- Thorium Brotherhood
					maps = { SEARING_GORGE },
					OnTooltip = [[_.OnTooltipDB.ThoriumBrotherhood]],
				}),
			}),
			n(QUESTS, {
				{ progressionKey = "brd.sod-phase-four-additions", groups = { q(84338, {	-- A Binding Contract
					provider = { "i", 227730 },	-- Thorium Brotherhood Contract
					timeline = { ADDED_1_15_3 },
					requireSkill = BLACKSMITHING,
					lvl = 60,
					groups = {
						i(227727),	-- Plans: Sulfuron Hammer (RECIPE!)
					},
				}) } },
				q(7604, {	-- A Binding Contract
					provider = { "i", 18628 },	-- Thorium Brotherhood Contract
					timeline = { REMOVED_1_15_3 },
					lvl = lvlsquish(60, 60, 20),
					groups = {
						i(18592, {	-- Plans: Sulfuron Hammer (RECIPE!)
							timeline = { REMOVED_1_15_3 },
						}),
						i(256673, {	-- Stormwind Forge (DECOR!)
							timeline = { ADDED_11_2_7 },
						}),
					},
				}),
				q(4264, {	-- A Crumpled Up Note
					-- #if BEFORE 3.0.2
					description = "After completing the Abandoned Hope quest, kill trash until this item drops for you. If your group has not yet killed the Dark Keeper, they have a fairly high chance to drop this item as well.",
					-- #endif
					sourceQuest = 4242,	-- Abandoned Hope
					provider = { "i", 11446 },	-- A Crumpled Up Note
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4282, {	-- A Shred of Hope
					sourceQuest = 4264,	-- A Crumpled Up Note
					qg = 9023,	-- Marshal Windsor
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 Marshal Windsor's Lost Information
							provider = { "i", 11464 },	-- Marshal Windsor's Lost Information
						}),
						objective(2, {	-- 0/1 Marshal Windsor's Lost Information
							provider = { "i", 11465 },	-- Marshal Windsor's Lost Information
						}),
					},
				}),
				q(4022, {	-- A Taste of Flame (1/2) (A)
					-- #if BEFORE 4.0.3
					description = "If you completed the quest 'Trinkets...' in Searing Gorge, you can complete this quest immediately without having to fight the elite dragon by bringing the Black Dragonflight Molt with you.",
					-- #endif
					sourceQuest = 3481,	-- Trinkets...
					altQuests = { 4023 },	-- A Taste of Flame
					qg = 9459,	-- Cyrus Therepentous
					coord = { 95.09, 31.56, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					cost = { { "i", 10575, 1 } },	-- Black Dragonflight Molt
					lvl = 52,
				}),
				q(4023, {	-- A Taste of Flame (1/2) (B)
					altQuests = { 4022 },	-- A Taste of Flame (1/2) (A)
					qg = 9459,	-- Cyrus Therepentous
					coord = { 95.09, 31.56, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					lvl = 52,
					groups = {
						objective(1, {	-- 0/1 Black Dragonflight Molt
							provider = { "i", 10575 },	-- Black Dragonflight Molt
							coord = { 93.2, 32.6, BURNING_STEPPES },
							cr = 9461,	-- Frenzied Black Drake <Cyrus's Minion>
						}),
					},
				}),
				q(4024, {	-- A Taste of Flame (2/2)
					sourceQuests = {
						4022,	-- A Taste of Flame (1/2) (A)
						4023,	-- A Taste of Flame (1/2) (B)
					},
					qg = 9459,	-- Cyrus Therepentous
					coord = { 95.09, 31.56, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					groups = {
						objective(1, {	-- 0/1 Encased Fiery Essence
							provider = { "i", 11230 },	-- Encased Fiery Essence
							cost = { { "i", 11231, 1 } },	-- Altered Black Dragonflight Molt
							cr = 9016,	-- Bael'Gar
						}),
						i(12066),	-- Shaleskin Cape
						i(12082),	-- Wyrmhide Spaulders
						i(12083),	-- Valconian Sash
					},
				}),
				q(4242, {	-- Abandoned Hope
					sourceQuest = 4241,	-- Marshal Windsor
					qg = 9023,	-- Marshal Windsor
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					groups = {
						i(12018),	-- Conservator Helm
						i(12021),	-- Shieldplate Sabatons
						i(12041),	-- Windshear Leggings
					},
				}),
				q(3981, {	-- Commander Gor'shak
					sourceQuest = 3906,	-- Disharmony of Flame
					qg = 9081,	-- Galamav the Marksman <Kargath Expeditionary Force>
					coord = { 5.8, 47.6, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
				}),
				q(3801, {	-- Dark Iron Legacy (1/2)
					-- #if BEFORE 4.0.3
					description = "You must be a ghost in order to interact with this quest giver. He's in the middle of Blackrock Mountain on the floating island on top of his tomb.",
					-- #endif
					qg = 8888,	-- Franclorn Forgewright
					timeline = { REMOVED_4_0_3 },
					maps = { BLACKROCK_MOUNTAIN },
					lvl = 48,
				}),
				q(3802, {	-- Dark Iron Legacy (2/2)
					sourceQuest = 3801,	-- Dark Iron Legacy (1/2)
					providers = {
						{ "n",   8888 },	-- Franclorn Forgewright
						{ "o", 164689 },	-- Monument of Franclorn Forgewright
					},
					timeline = { REMOVED_4_0_3 },
					maps = { BLACKROCK_MOUNTAIN },
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Ironfel
							provider = { "i", 10999 },	-- Ironfel
							cr = 9056,	-- Fineous Darkvire <Chief Architect>
						}),
						i(11000, {	-- Shadowforge Key
							timeline = { DELETED_4_0_3 },
						}),
					},
				}),
				q(3906, {	-- Disharmony of Flame
					qg = 9084,	-- Thunderheart <Kargath Expeditionary Force>
					coord = { 3.3, 48.3, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					maps = { BLACKROCK_MOUNTAIN },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Overmaster Pyron slain
							provider = { "n", 9026 },	-- Overmaster Pyron
						}),
					},
				}),
				q(3907, {	-- Disharmony of Fire
					sourceQuest = 3906,	-- Disharmony of Flame
					qg = 9084,	-- Thunderheart <Kargath Expeditionary Force>
					coord = { 3.3, 48.3, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Lord Incendius slain
							provider = { "n", 9017 },	-- Lord Incendius
						}),
						objective(2, {	-- 0/1 Tablet of Kurniya
							provider = { "i", 11126 },	-- Tablet of Kurniya
						}),
						i(12112),	-- Crypt Demon Bracers
						i(12114),	-- Nightfall Gloves
						i(12115),	-- Stalwart Clutch
						i(12113),	-- Sunborne Cape
					},
				}),
				q(4182, {	-- Dragonkin Menace
					-- #if BEFORE 3.0.2
					description = "You should finish this full quest chain up to Marshal Windsor before joining a Blackrock Depths group.",
					-- #endif
					qg = 9562,	-- Helendis Riverhorn
					coord = { 85.8, 69.0, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/15 Black Broodling slain
							provider = { "n", 7047 },	-- Black Broodling
						}),
						objective(2, {	-- 0/10 Black Dragonspawn slain
							provider = { "n", 7040 },	-- Black Dragonspawn
						}),
						objective(3, {	-- 0/1 Black Drake slain
							provider = { "n", 7044 },	-- Black Drake
						}),
						objective(4, {	-- 0/4 Black Wyrmkin slain
							provider = { "n", 7041 },	-- Black Wyrmkin
						}),
					},
				}),
				{ progressionKey = "brd.sod-phase-three-additions", groups = { q(82062, {	-- Ever After
					description = "Just east of the Ring in Blackrock Depths is a bridge that leads north over lava.\n\nAs you get onto the bridge, look down and to the left; you'll see a friendly Dark Iron Dwarf below you on the base of a pillar. Clear the rest of the mobs ahead of you (Blazing Fireguards and a group of Shadowforge dwarves).\n\nMove to the left side of the bridge near a small brazier. Get onto the railing, hug the rock wall, and jump ahead onto the platform near the wall.\n\nMove to the end of the platform, hugging the wall, and move hard into the rock corner.\n\nTurn with your left shoulder to the wall and run carefully against the wall, until you just fall down into the exposed corner. Drop down onto the rock outcrop below. \n\nTurn left into a small room, where you'll encounter the Rugged Traveler.",
					qg = 222530,	-- Rugged Traveler
					timeline = { REMOVED_2_0_1 },
					lvl = 48,
					groups = {
						i(221316),	-- Premo's Poise-Demanding Uniform
						i(221315),	-- Rainbow Generator
					},
				}) } },
				q(6646, {	-- Favor Amongst the Brotherhood, Blood of the Mountain
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 11382, 1 } },	-- Blood of the Mountain
					repeatable = true,
					lvl = 60,
				}),
				q(6645, {	-- Favor Amongst the Brotherhood, Core Leather
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 17012, 2 } },	-- Core Leather
					repeatable = true,
					lvl = 60,
				}),
				q(6642, {	-- Favor Amongst the Brotherhood, Dark Iron Ore
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 11370, 10 } },	-- Dark Iron Ore
					repeatable = true,
					lvl = 60,
				}),
				q(6643, {	-- Favor Amongst the Brotherhood, Fiery Core
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 17010, 1 } },	-- Fiery Core
					repeatable = true,
					lvl = 60,
				}),
				q(6644, {	-- Favor Amongst the Brotherhood, Lava Core
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 17011, 1 } },	-- Lava Core
					repeatable = true,
					lvl = 60,
				}),
				q(4122, {	-- Grark Lorkrub
					sourceQuests = 4082,	-- KILL ON SIGHT: High Ranking Dark Iron Officials
					qg = 9080,	-- Lexlort <Kargath Expeditionary Force>
					qi = 11286,	-- Thorium Shackles
					coord = { 5.9, 47.6, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
				}),
				q(4126, {	-- Hurley Blackbreath
					sourceQuest = 4128,	-- Ragnar Thunderbrew
					qg = 1267,	-- Ragnar Thunderbrew
					coord = { 46.8, 52.4, DUN_MOROGH },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 Lost Thunderbrew Recipe
							provider = { "i", 11312 },	-- Lost Thunderbrew Recipe
						}),
						i(12000),	-- Limb Cleaver
						i(11964),	-- Swiftstrike Cudgel
						i(12003),	-- Dark Dwarven Lager
					},
				}),
				q(4263, {	-- Incendius!
					sourceQuest = 4262,	-- Overmaster Pyron
					qg = 9561,	-- Jalinda Sprig
					coord = { 85.4, 70.1, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Lord Incendius slain
							provider = { "n", 9017 },	-- Lord Incendius
						}),
						i(12112),	-- Crypt Demon Bracers
						i(12114),	-- Nightfall Gloves
						i(12115),	-- Stalwart Clutch
						i(12113),	-- Sunborne Cape
					},
				}),
				q(4322, {	-- Jail Break!
					sourceQuest = 4282,	-- A Shred of Hope
					qg = 9023,	-- Marshal Windsor
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						i(12061),	-- Blade of Reckoning
						i(12062),	-- Skilled Fighting Blade
						i(12065),	-- Ward of the Elements
					},
				}),
				q(4341, {	-- Kharan Mighthammer
					sourceQuest = 3701,	-- The Smoldering Ruins of Thaurissan (2/2)
					qg = 2784,	-- King Magni Bronzebeard <Lord of Ironforge>
					coord = { 39.09, 56.19, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4342, {	-- Kharan's Tale
					sourceQuest = 4341,	-- Kharan Mighthammer
					qg = 9021,	-- Kharan Mighthammer
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4081, {	-- KILL ON SIGHT: Dark Iron Dwarves
					provider = { "o", 164867 },	-- WANTED
					coord = { 3.9, 47.4, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/10 Anvilrage Guardsman slain
							provider = { "n", 8891 },	-- Anvilrage Guardsman
						}),
						objective(2, {	-- 0/10 Anvilrage Warden slain
							provider = { "n", 8890 },	-- Anvilrage Warden
						}),
						objective(3, {	-- 0/10 Anvilrage Footman slain
							provider = { "n", 8892 },	-- Anvilrage Footman
						}),
					},
				}),
				q(4082, {	-- KILL ON SIGHT: High Ranking Dark Iron Officials
					sourceQuest = 4081,	-- KILL ON SIGHT: Dark Iron Dwarves
					provider = { "o", 164868 },	-- KILL ON SIGHT
					coord = { 3.9, 47.4, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/10 Anvilrage Medic slain
							provider = { "n", 8894 },	-- Anvilrage Medic
						}),
						objective(2, {	-- 0/10 Anvilrage Soldier slain
							provider = { "n", 8893 },	-- Anvilrage Soldier
						}),
						objective(3, {	-- 0/10 Anvilrage Officer slain
							provider = { "n", 8895 },	-- Anvilrage Officer
						}),
					},
				}),
				q(4134, {	-- Lost Thunderbrew Recipe
					sourceQuest = 4133,	-- Vivian Lagrave
					qg = 9078,	-- Shadowmage Vivian Lagrave <Kargath Expeditionary Force>
					coord = { 2.9, 47.8, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 Lost Thunderbrew Recipe
							provider = { "i", 11312 },	-- Lost Thunderbrew Recipe
						}),
						i(12000),	-- Limb Cleaver
						i(11964),	-- Swiftstrike Cudgel
					},
				}),
				q(4241, {	-- Marshal Windsor
					sourceQuest = 4224,	-- The True Masters (6/6)
					qg = 9560,	-- Marshal Maxwell
					coord = { 84.74, 69.02, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				-- Crieve NOTE: If a Blizzard Dev ever reads this, please know that this is why I have trust issues.
				-- #if BEFORE SL
				q(28258, {	-- Meet with Ander Germaine / Meet with Signilda Hardforge / [SL+]
					qgs = {
						17120,	-- Behomat
						4087,	-- Arias'ta Bladesinger
					},
					coords = {
						{ 56.4, 46.2, THE_EXODAR },	-- Behomat
						{ 56.4, 46.2, DARNASSUS },	-- Arias'ta Bladesinger
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { WARRIOR },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28302, {	-- Meet with Avaros Dawnglaive [SL+] / Meet with Sunwalker Atohmo
					qgs = {
						43795,	-- Aponi Brightmane
						20406,	-- Champion Cyssa Dawnrose
					},
					coords = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { PALADIN },
					races = { TAUREN },
					isBreadcrumb = true,
				}),
				q(28303, {	-- Meet With Avaros Dawnglaive [SL+] / Meet with Master Pyreanor
					qgs = {
						43795,	-- Aponi Brightmane
						16681,	-- Champion Bachi
						20406,	-- Champion Cyssa Dawnrose
					},
					coords = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 92.0, 37.2, SILVERMOON_CITY },	-- Champion Bachi
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { PALADIN },
					races = { BLOODELF },
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28260, {	-- Meet with Dalgrun Steelpine [SL+] / Meet with Wulf Hansreim
					qgs = {
						17122,	-- Vord
						5115,	-- Daera Brightspear
						4138,	-- Jeen'ra Nightrunner
					},
					coords = {
						{ 47.2, 88.4, THE_EXODAR },	-- Vord
						{ 47.2, 88.4, IRONFORGE },	-- Daera Brightspear
						{ 43.4, 26.0, DARNASSUS },	-- Jeen'ra Nightrunner
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { HUNTER },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				q(28259, {	-- Meet with Demisette Cloyce / Meet with Evelyn Thorn [SL+]
					qg = 5173,	-- Alexander Calder
					coord = { 50.2, 6.8, IRONFORGE },
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { WARLOCK },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #if AFTER SL
				q(28268, {	-- Meet with Ezul'aan [SL+] / Meet with Lord Grayson Shadowbreaker
					qgs = {
						16761,	-- Baatun
						35281,	-- Rukua
						5147,	-- Valgar Highforge
					},
					coords = {
						{ 39.0, 84.2, THE_EXODAR },	-- Baatun
						{ 43.6, 78.4, DARNASSUS },	-- Rukua
						{ 23.6, 5.6, IRONFORGE },	-- Valgar Highforge
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { PALADIN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28287, {	-- Meet with Farseer Umbrua / Meet with Mulric Boldrock [SL+]
					qgs = {
						52292,	-- Droha
						23127,	-- Farseer Javad
					},
					coords = {
						{ 43.8, 78.8, DARNASSUS },	-- Droha
						{ 55.2, 29.0, IRONFORGE },	-- Farseer Javad
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { SHAMAN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28300, {	-- Meet with Feenix Arcshine [SL+] / Meet with Ureda
					qgs = {
						3047,	-- Archmage Shymm
						4566,	-- Kaelystia Hatebringer
						16653,	-- Inethven
					},
					coords = {
						{ 22.6, 15.0, THUNDER_BLUFF },	-- Archmage Shymm
						{ 59.2, 19.7, SILVERMOON_CITY },	-- Inethven
						{ 85.2, 14.2, UNDERCITY },	-- Kaelystia Hatebringer
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { MAGE },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28263, {	-- Meet with Frazzle Frostfingers [SL+] / Meet with Maginor Dumas
					qgs = {
						16749,	-- Edirah
						50690,	-- Tarelvir
						5146,	-- Nittlebur Sparkfizzle
					},
					coords = {
						{ 26.2, 6.2, THE_EXODAR },	-- Edirah
						{ 37.6, 80.0, DARNASSUS },	-- Tarelvir
						{ 26.2, 6.2, IRONFORGE },	-- Nittlebur Sparkfizzle
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { MAGE },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28285, {	-- Meet with High Priestess Laurena / Meet with Patrice Lancaster [SL+]
					qgs = {
						11401,	-- Priestess Alathea
						11406,	-- High Priest Rohan
						16756,	-- Caedmos
					},
					coords = {
						{ 43.4, 79.2, DARNASSUS },	-- Priestess Alathea
						{ 25.0, 8.2, IRONFORGE },	-- High Priest Rohan
						{ 38.5, 50.9, THE_EXODAR },	-- Caedmos
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { PRIEST },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28301, {	-- Meet with Hretar Riverspeaker [SL+] / Meet with Terga Earthbreaker
					qgs = {
						51639,	-- Kador Cloudsong
						16661,	-- Gez'li
					},
					coords = {
						{ 22.2, 19.0, THUNDER_BLUFF },	-- Kador Cloudsong
						{ 71.8, 56.0, SILVERMOON_CITY },	-- Gez'li
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { SHAMAN },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER WOD
				q(28299, {	-- Meet with Kranosh [WOD+] / Meet with Kazak Darkscream [SL+] / Meet with Zevrost
					qgs = {
						43881,	-- Delano Morisett
						4563,	-- Kaal Soulreaper
						16648,	-- Zanien
						-- #if AFTER MID
						241482,	-- Zanien Silvermoon <Warlock Trainer>
						-- #endif
					},
					coords = {
						{ 25.2, 14.4, THUNDER_BLUFF },	-- Delano Morisett
						{ 73.2, 45.2, SILVERMOON_CITY },	-- Zanien
						{ 86.0, 15.6, UNDERCITY },	-- Kaal Soulreaper
						-- #if AFTER MID
						{ 50.9, 61.0, MAP.MIDNIGHT.SILVERMOON_CITY },	-- Zanien <Warlock Trainer>
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { WARLOCK },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if BEFORE SL
				q(28268, {	-- Meet with Lord Grayson Shadowbreaker / Meet with Ezul'aan [SL+]
					qgs = {
						16761,	-- Baatun
						35281,	-- Rukua
						5147,	-- Valgar Highforge
					},
					coords = {
						{ 39.0, 84.2, THE_EXODAR },	-- Baatun
						{ 43.6, 78.4, DARNASSUS },	-- Rukua
						{ 23.6, 5.6, IRONFORGE },	-- Valgar Highforge
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { PALADIN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28262, {	-- Meet with Lord Tony Romano / Meet with Veruca Darkstream [SL+]
					qgs = {
						4214,	-- Erion Shadewhisper
						5165,	-- Hulfdan Blackbeard
					},
					coords = {
						{ 40.0, 39.6, DARNASSUS },	-- Erion Shadewhisper
						{ 51.6, 14.6, IRONFORGE },	-- Hulfdan Blackbeard
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { ROGUE },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28263, {	-- Meet with Maginor Dumas / Meet with Frazzle Frostfingers [SL+]
					qgs = {
						16749,	-- Edirah
						50690,	-- Tarelvir
						5146,	-- Nittlebur Sparkfizzle
					},
					coords = {
						{ 26.2, 6.2, THE_EXODAR },	-- Edirah
						{ 37.6, 80.0, DARNASSUS },	-- Tarelvir
						{ 26.2, 6.2, IRONFORGE },	-- Nittlebur Sparkfizzle
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { MAGE },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28303, {	-- Meet with Master Pyreanor / Meet With Avaros Dawnglaive [SL+]
					qgs = {
						43795,	-- Aponi Brightmane
						16681,	-- Champion Bachi
						20406,	-- Champion Cyssa Dawnrose
					},
					coords = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 92.0, 37.2, SILVERMOON_CITY },	-- Champion Bachi
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { PALADIN },
					races = { BLOODELF },
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28287, {	-- Meet with Mulric Boldrock [SL+] / Meet with Farseer Umbrua
					qgs = {
						52292,	-- Droha
						23127,	-- Farseer Javad
					},
					coords = {
						{ 43.8, 78.8, DARNASSUS },	-- Droha
						{ 55.2, 29.0, IRONFORGE },	-- Farseer Javad
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { SHAMAN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28297, {	-- Meet with Ormak Grimshot / Meet with Tamanji [SL+]
					qgs = {
						39116,	-- Apolos
						3039,	-- Holt Thunderhorn
						16674,	-- Zandine
					},
					coords = {
						{ 57.4, 89.2, THUNDER_BLUFF },	-- Holt Thunderhorn
						{ 84.4, 28.0, SILVERMOON_CITY },	-- Zandine
						{ 49.6, 29.0, UNDERCITY },	-- Apolos
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { HUNTER },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28285, {	-- Meet with Patrice Lancaster [SL+] / Meet with High Priestess Laurena
					qgs = {
						11401,	-- Priestess Alathea
						11406,	-- High Priest Rohan
						16756,	-- Caedmos
					},
					coords = {
						{ 43.4, 79.2, DARNASSUS },	-- Priestess Alathea
						{ 25.0, 8.2, IRONFORGE },	-- High Priest Rohan
						{ 38.5, 50.9, THE_EXODAR },	-- Caedmos
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { PRIEST },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28258, {	-- Meet with Signilda Hardforge [SL+] / Meet with Ander Germaine
					qgs = {
						17120,	-- Behomat
						4087,	-- Arias'ta Bladesinger
					},
					coords = {
						{ 56.4, 46.2, THE_EXODAR },	-- Behomat
						{ 56.4, 46.2, DARNASSUS },	-- Arias'ta Bladesinger
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { WARRIOR },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28302, {	-- Meet with Sunwalker Atohmo / Meet with Avaros Dawnglaive [SL+]
					qgs = {
						43795,	-- Aponi Brightmane
						20406,	-- Champion Cyssa Dawnrose
					},
					coords = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { PALADIN },
					races = { TAUREN },
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28297, {	-- Meet with Tamanji [SL+] / Meet with Ormak Grimshot
					qgs = {
						39116,	-- Apolos
						3039,	-- Holt Thunderhorn
						16674,	-- Zandine
					},
					coords = {
						{ 57.4, 89.2, THUNDER_BLUFF },	-- Holt Thunderhorn
						{ 84.4, 28.0, SILVERMOON_CITY },	-- Zandine
						{ 49.6, 29.0, UNDERCITY },	-- Apolos
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { HUNTER },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if BEFORE SL
				q(28301, {	-- Meet with Terga Earthbreaker / Meet with Hretar Riverspeaker [SL+]
					qgs = {
						51639,	-- Kador Cloudsong
						16661,	-- Gez'li
					},
					coords = {
						{ 22.2, 19.0, THUNDER_BLUFF },	-- Kador Cloudsong
						{ 71.8, 56.0, SILVERMOON_CITY },	-- Gez'li
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { SHAMAN },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if BEFORE SL
				q(28300, {	-- Meet with Ureda / Meet with Feenix Arcshine [SL+]
					qgs = {
						3047,	-- Archmage Shymm
						4566,	-- Kaelystia Hatebringer
						16653,	-- Inethven
					},
					coords = {
						{ 22.6, 15.0, THUNDER_BLUFF },	-- Archmage Shymm
						{ 53.0, 19.6, SILVERMOON_CITY },	-- Inethven
						{ 85.2, 14.2, UNDERCITY },	-- Kaelystia Hatebringer
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { MAGE },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28262, {	-- Meet with Veruca Darkstream [SL+] / Meet with Lord Tony Romano
					qgs = {
						4214,	-- Erion Shadewhisper
						5165,	-- Hulfdan Blackbeard
					},
					coords = {
						{ 40.0, 39.6, DARNASSUS },	-- Erion Shadewhisper
						{ 51.6, 14.6, IRONFORGE },	-- Hulfdan Blackbeard
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { ROGUE },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28260, {	-- Meet with Wulf Hansreim / Meet with Dalgrun Steelpine [SL+]
					qgs = {
						17122,	-- Vord
						5115,	-- Daera Brightspear
						4138,	-- Jeen'ra Nightrunner
					},
					coords = {
						{ 47.2, 88.4, THE_EXODAR },	-- Vord
						{ 47.2, 88.4, IRONFORGE },	-- Daera Brightspear
						{ 43.4, 26.0, DARNASSUS },	-- Jeen'ra Nightrunner
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { HUNTER },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE WOD
				q(28299, {	-- Meet with Zevrost / Meet with Kranosh [WOD+] / Meet with Kazak Darkscream [SL+]
					qgs = {
						43881,	-- Delano Morisett
						4563,	-- Kaal Soulreaper
						16648,	-- Zanien
					},
					coords = {
						{ 25.2, 14.4, THUNDER_BLUFF },	-- Delano Morisett
						{ 73.2, 45.2, SILVERMOON_CITY },	-- Zanien
						{ 86.0, 15.6, UNDERCITY },	-- Kaal Soulreaper
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { WARLOCK },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif






				q(4132, {	-- Operation: Death to Angerforge
					sourceQuest = 4121,	-- Precarious Predicament
					qg = 9077,	-- Warlord Goretooth <Kargath Expeditionary Force>
					coord = { 5.8, 47.5, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
					groups = {
						objective(1, {	-- 0/1 General Angerforge slain
							provider = { "n", 9033 },	-- General Angerforge
						}),
						i(12059),	-- Conqueror's Medallion
					},
				}),
				q(4262, {	-- Overmaster Pyron
					qg = 9561,	-- Jalinda Sprig
					coord = { 85.4, 70.1, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					maps = { BLACKROCK_MOUNTAIN },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Overmaster Pyron slain
							provider = { "n", 9026 },	-- Overmaster Pyron
						}),
					},
				}),
				q(4121, {	-- Precarious Predicament
					sourceQuest = 4122,	-- Grark Lorkrub
					qg = 9520,	-- Grark Lorkrub
					coord = { 40.2, 34.2, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
					groups = {
						objective(1, {	-- 0/1 Thorium Shackles
							provider = { "i", 11286 },	-- Thorium Shackles
						}),
						objective(2, {	-- Prisoner Transport
							provider = { "i", 11286 },	-- Thorium Shackles
						}),
					},
				}),
				q(4128, {	-- Ragnar Thunderbrew
					qg = 9540,	-- Enohar Thunderbrew
					coord = { 63.6, 20.6, BLASTED_LANDS },
					timeline = { REMOVED_4_0_3 },
					maps = { DUN_MOROGH },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = 50,
				}),
				q(4136, {	-- Ribbly Screwspigot
					sourceQuest = 4324,	-- Yuka Screwspigot
					qg = 9544,	-- Yuka Screwspigot
					coord = { 66.1, 21.9, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Ribbly's Head
							provider = { "i", 11313 },	-- Ribbly's Head
						}),
						i(11963),	-- Penance Spaulders
						i(12049),	-- Splintsteel Armor
						i(11865),	-- Rancor Boots
					},
				}),
				q(4295, {	-- Rocknot's Ale
					qg = 9503,	-- Private Rocknot
					cost = { { "i", 11325, 2 } },	-- Dark Iron Ale Mug
					repeatable = true,
				}),
				q(28401, {	-- Slaves of the Firelord (A)
					sourceQuest = 28287,	-- Meet with Farseer Umbrua / Meet with Mulric Boldrock [SL+]
					qgs = {
						-- #if AFTER SL
						164945,	-- Mulric Boldrock
						-- #else
						20407,	-- Farseer Umbrua
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 78.2, 70.9, STORMWIND_CITY },
						-- #else
						{ 64.6, 33.0, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { SHAMAN },
					races = ALLIANCE_ONLY,
					groups = {
						i(65640),	-- Mask of the Farseer
						i(65622),	-- Headcover of the Farseer
					},
				}),
				q(28465, {	-- Slaves of the Firelord (H)
					sourceQuest = 28301,	-- Meet with Terga Earthbreaker / Meet with Hretar Riverspeaker [SL+]
					qgs = {
						-- #if AFTER SL
						168628,	-- Hretar Riverspeaker <Shaman Trainer>
						-- #else
						72939,	-- Terga Earthbreaker
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 73.6, 43.3, ORGRIMMAR },
						-- #else
						{ 39.0, 47.4, ORGRIMMAR },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { SHAMAN },
					races = HORDE_ONLY,
					qi = 64312,	-- Totem of Freedom (QI!)
					groups = {
						i(65643),	-- Mask of the Speaker
						i(65630),	-- Headcover of the Speaker
					},
				}),
				q(28399, {	-- Stones of Binding (A)
					sourceQuest = 28259,	-- Meet with Demisette Cloyce / Meet with Evelyn Thorn [SL+]
					qgs = {
						-- #if AFTER SL
						164942,	-- Evelyn Thorn
						-- #else
						461,	-- Demisette Cloyce
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 79.5, 69.9, STORMWIND_CITY },
						-- #else
						{ 39.4, 84.8, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					classes = { WARLOCK },
					groups = {
						i(65621),	-- Horns of Justified Sins
					},
				}),
				q(28459, {	-- Stones of Binding (H)
					sourceQuest = 28299,	-- Meet with Zevrost / Meet with Kranosh [WOD+] / Meet with Kazak Darkscream [SL+]
					qgs = {
						-- #if AFTER SL
						168623,	-- Kazak Darkscream
						-- #ELSE
						88705,	-- Kranosh
						-- #ENDIF
					},
					coords = {
						-- #if AFTER SL
						{ 74.6, 47.4, ORGRIMMAR },
						-- #ELSE
						{ 49.0, 55.2, ORGRIMMAR },
						-- #ENDIF
					},
					timeline = { ADDED_4_0_3 },
					classes = { WARLOCK },
					races = HORDE_ONLY,
					groups = {
						i(65627),	-- Horns of the Left Hand Path
					},
				}),
				q(6402, {	-- Stormwind Rendezvous
					sourceQuest = 4322,	-- Jail Break!
					qg = 9560,	-- Marshal Maxwell
					coord = { 84.7, 69.0, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4361, {	-- The Bearer of Bad News
					sourceQuest = 4342,	-- Kharan's Tale
					qg = 9021,	-- Kharan Mighthammer
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(28406, {	-- The Dark Iron Army (A)
					sourceQuest = 28262,	-- Meet with Lord Tony Romano / Meet with Veruca Darkstream [SL+]
					qgs = {
						-- #if AFTER SL
						164946,	-- Veruca Darkstream
						-- #else
						13283,	-- Lord Tony Romano
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 78.7, 70.6, STORMWIND_CITY },
						-- #else
						{ 79.6, 60.8, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					classes = { ROGUE },
					groups = {
						i(65624),	-- SI:7 Special Issue Facemask
					},
				}),
				q(28463, {	-- The Dark Iron Army (H)
					sourceQuest = 28298,	-- Meet with Gordul (Cata+) / Meet with Thega Graveblade (SL+)
					qgs = {
						-- #if AFTER SL
						168598,	-- Thega Graveblade
						-- #else
						47233,	-- Gordul
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 75.4, 47.4, ORGRIMMAR },
						-- #else
						{ 44.6, 61.4, ORGRIMMAR },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { ROGUE },
					races = HORDE_ONLY,
					groups = {
						i(65629),	-- Facemask of the Shattered Hand
					},
				}),
				q(6501, {	-- The Dragon's Eye
					-- #if BEFORE 3.0.2
					description = "Go to Haleh in Winterspring. Use the blue rune on the ground inside the cave to reach her. Don't bother going to Dustwallow Marsh.",
					-- #endif
					sourceQuest = 6403,	-- The Great Masquerade
					qg = 1748,	-- Highlord Bolvar Fordragon
					qi = 16662,	-- Fragment of the Dragon's Eye
					coord = { 78.2, 18.1, STORMWIND_CITY },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4002, {	-- The Eastern Kingdoms
					sourceQuest = 4001,	-- What Is Going On? (2/2)
					qg = 4949,	-- Thrall <Warchief>
					coord = { 31.61, 37.83, ORGRIMMAR },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
				}),
				q(4362, {	-- The Fate of the Kingdom
					sourceQuest = 4361,	-- The Bearer of Bad News
					qg = 2784,	-- King Magni Bronzebeard <Lord of Ironforge>
					coord = { 39.09, 56.19, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 Emperor Dagran Thaurissan slain
							provider = { "n", 9019 },	-- Emperor Dagran Thaurissan
						}),
					},
				}),
				q(6403, {	-- The Great Masquerade
					-- #if BEFORE 3.0.2
					description = "This quest can be solo'd. Do NOT touch anything and let Bolvar take care of the dragons. They do heavy AOE, you will likely die unless you're in a raid group of 20+.",
					-- #endif
					sourceQuest = 6402,	-- Stormwind Rendezvous
					qg = 12580,	-- Reginald Windsor
					coord = { 64.7, 76.8, STORMWIND_CITY },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(28394, {	-- The Golem Lord's Creations (A)
					sourceQuest = 28260,	-- Meet with Wulf Hansreim / Meet with Dalgrun Steelpine [SL+]
					qgs = {
						-- #if AFTER SL
						164960,	-- Dalgrun Steelpine <Hunter Trainer>
						-- #else
						44247,	-- Wulf Hansreim
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 79.2, 71.2, STORMWIND_CITY },
						-- #else
						{ 79.0, 71.0, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { HUNTER },
					races = ALLIANCE_ONLY,
					groups = {
						i(65619),	-- Helm of the Crown
					},
				}),
				q(28461, {	-- The Golem Lord's Creations (H)
					sourceQuest = 28297,	-- Meet with Ormak Grimshot / Meet with Tamanji [SL+]
					qgs = {
						-- #if AFTER SL
						168551,	-- Tamanji
						-- #else
						3352,	-- Ormak Grimshot
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 73.8, 43.8, ORGRIMMAR },
						-- #else
						{ 63.8, 32.8, ORGRIMMAR },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { HUNTER },
					races = HORDE_ONLY,
					groups = {
						i(65628),	-- Helm of the Great Hunter
					},
				}),
				q(4286, {	-- The Good Stuff
					qg = 9177,	-- Oralius
					coord = { 84.6, 68.7, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/20 Dark Iron Fanny Pack
							provider = { "i", 11468 },	-- Dark Iron Fanny Pack
						}),
						i(11883),	-- A Dingy Fanny Pack
					},
				}),
				q(4123, {	-- The Heart of the Mountain
					qg = 9536,	-- Maxwort Uberglint
					coord = { 65.2, 23.9, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 The Heart of the Mountain
							provider = { "i", 11309 },	-- The Heart of the Mountain
						}),
					},
				}),
				q(7201, {	-- The Last Element
					sourceQuest = 3906,	-- Disharmony of Flame
					qg = 9078,	-- Shadowmage Vivian Lagrave <Kargath Expeditionary Force>
					coord = { 2.9, 47.76, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/10 Essence of the Elements
							provider = { "i", 11129 },	-- Essence of the Elements
						}),
						i(12038),	-- Lagrave's Seal
					},
				}),
				q(4201, {	-- The Love Potion
					qg = 9500,	-- Mistress Nagmara
					timeline = { REMOVED_4_0_3 },
					maps = { AZSHARA, UNGORO_CRATER },
					lvl = 50,
					groups = {
						objective(1, {	-- 0/4 Gromsblood
							provider = { "i", 8846 },	-- Gromsblood
						}),
						objective(2, {	-- 0/10 Giant Silver Vein
							provider = { "i", 11405 },	-- Giant Silver Vein
							coord = { 68.0, 17.0, AZSHARA },
							crs = {
								6146,	-- Cliff Breaker
								6147,	-- Cliff Thunderer
								6148,	-- Cliff Walker
							},
						}),
						objective(3, {	-- 0/1 Nagmara's Filled Vial
							provider = { "i", 11413 },	-- Nagmara's Filled Vial
							cost = { { "i", 11412, 1 } },	-- Nagmara's Vial
							coord = { 31.0, 49.0, UNGORO_CRATER },
						}),
						i(11962),	-- Manacle Cuffs
						i(11866),	-- Nagmara's Whipping Belt
					},
				}),
				q(4004, {	-- The Princess Saved?
					sourceQuest = 4003,	-- The Royal Rescue
					qg = 8929,	-- Princess Moira Bronzebeard <Princess of Ironforge>
					timeline = { REMOVED_4_0_3 },
					maps = { ORGRIMMAR },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						i(12545),	-- Eye of Orgrimmar
						i(12544),	-- Thrall's Resolve
					},
				}),
				q(4363, {	-- The Princess's Surprise
					sourceQuest = 4362,	-- The Fate of the Kingdom
					qg = 8929,	-- Princess Moira Bronzebeard <Princess of Ironforge>
					timeline = { REMOVED_4_0_3 },
					maps = { IRONFORGE },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						i(12548),	-- Magni's Will
						i(12543),	-- Songstone of Ironforge
					},
				}),
				q(28398, {	-- The Pyromancer's Grimoire (A)
					sourceQuest = 28263,	-- Meet with Maginor Dumas / Meet with Frazzle Frostfingers [SL+]
					qgs = {
						-- #if AFTER SL
						164955,	-- Frazzle Frostfingers
						-- #else
						331,	-- Maginor Dumas
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 80.0, 69.6, STORMWIND_CITY },
						-- #else
						{ 49.2, 87.6, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					classes = { MAGE },
					groups = {
						i(65620),	-- Hood of the Royal Wizard
					},
				}),
				q(28458, {	-- The Pyromancer's Grimoire (H)
					sourceQuest = 28300,	-- Meet with Ureda / Meet with Feenix Arcshine [SL+]
					qgs = {
						-- #if AFTER SL
						168626,	-- Feenix Arcshine
						-- #else
						47246,	-- Ureda
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 74.6, 43.5, ORGRIMMAR },
						-- #else
						{ 48.4, 62.6, ORGRIMMAR },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { MAGE },
					races = HORDE_ONLY,
					groups = {
						i(65626),	-- Hood of the Arcane Path
					},
				}),
				q(4061, {	-- The Rise of the Machines (1/3)
					qg = 9079,	-- Hierophant Theodora Mulvadania <Kargath Expeditionary Force>
					coord = { 3.02, 47.81, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					maps = { BURNING_STEPPES },
					races = HORDE_ONLY,
					lvl = 52,
					groups = {
						objective(1, {	-- 0/10 Fractured Elemental Shard
							provider = { "i", 11266 },	-- Fractured Elemental Shard
							crs = {
								7032,	-- Greater Obsidian Elemental
								8981,	-- Malfunctioning Reaver
								7039,	-- War Reaver
							},
						}),
					},
				}),
				q(4062, {	-- The Rise of the Machines (2/3)
					sourceQuest = 4061,	-- The Rise of the Machines (1/3)
					qg = 9079,	-- Hierophant Theodora Mulvadania <Kargath Expeditionary Force>
					qi = 11267,	-- Elemental Shard Sample
					coord = { 3.02, 47.81, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
				}),
				q(4063, {	-- The Rise of the Machines (3/3)
					sourceQuest = 4062,	-- The Rise of the Machines (2/3)
					qg = 2921,	-- Lotwil Veriatus
					coord = { 25.95, 44.87, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
					groups = {
						objective(1, {	-- 0/1 Head of Argelmach
							provider = { "i", 11268 },	-- Head of Argelmach
						}),
						objective(2, {	-- 0/10 Intact Elemental Core
							provider = { "i", 11269 },	-- Intact Elemental Core
						}),
						i(12110),	-- Raincaster Drape
						i(12109),	-- Azure Moon Amice
						i(12111),	-- Lavaplate Gauntlets
						i(12108),	-- Basaltscale Armor
					},
				}),
				q(4003, {	-- The Royal Rescue
					sourceQuest = 4002,	-- The Eastern Kingdoms
					qg = 4949,	-- Thrall <Warchief>
					coord = { 31.61, 37.83, ORGRIMMAR },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Emperor Dagran Thaurissan slain
							provider = { "n", 9019 },	-- Emperor Dagran Thaurissan
						}),
					},
				}),
				q(3702, {	-- The Smoldering Ruins of Thaurissan (1/2)
					qg = 8879,	-- Royal Historian Archesonus
					coord = { 38.37, 55.31, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(3701, {	-- The Smoldering Ruins of Thaurissan (2/2)
					sourceQuest = 3702,	-- The Smoldering Ruins of Thaurissan (1/2)
					qg = 8879,	-- Royal Historian Archesonus
					coord = { 38.37, 55.31, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					maps = { BURNING_STEPPES },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/12 Information Recovered
							provider = { "o", 153556 },	-- Thaurissan Relic
						}),
						i(12102),	-- Ring of the Aristocrat
					},
				}),
				q(4083, {	-- The Spectral Chalice
					description = "If you are a miner with 230 skill, speak with Gloom'rel to have him summon the Spectral Chalice.\n\nAfter you deposit the required items, speak to Gloom'rel again to learn how to smelt Dark Iron Ore.",
					provider = { "o", 164869 },	-- Spectral Chalice
					cost = {
						{ "i", 3577, 20 },	-- 20x Gold Bar
						{ "i", 7910, 2 },	-- 2x Star Ruby
						{ "i", 6037, 10 },	-- 10x Truesilver Bar
					},
					requireSkill = MINING,
					cr = 9037,	-- Gloom'rel
					lvl = 40,
					groups = {
						r(14891),	-- Smelt Dark Iron
					},
				}),
				q(4183, {	-- The True Masters (1/6)
					sourceQuest = 4182,	-- Dragonkin Menace
					qg = 9562,	-- Helendis Riverhorn
					qi = 11366,	-- Helendis Riverhorn's Letter
					coord = { 85.8, 69.0, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				q(4184, {	-- The True Masters (2/6)
					sourceQuest = 4183,	-- The True Masters (1/6)
					qg = 344,	-- Magistrate Solomon
					qi = 11367,	-- Solomon's Plea to Bolvar
					coord = { 30.0, 44.5, REDRIDGE_MOUNTAINS },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				q(4185, {	-- The True Masters (3/6)
					sourceQuest = 4184,	-- The True Masters (2/6)
					qg = 1748,	-- Highlord Bolvar Fordragon
					coord = { 78.2, 18.1, STORMWIND_CITY },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- Advice from Lady Prestor
							provider = { "n", 1749 },	-- Lady Katrana Prestor
						}),
					},
				}),
				q(4186, {	-- The True Masters (4/6)
					sourceQuest = 4185,	-- The True Masters (3/6)
					qg = 1748,	-- Highlord Bolvar Fordragon
					qi = 11368,	-- Bolvar's Decree
					coord = { 78.2, 18.1, STORMWIND_CITY },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				q(4223, {	-- The True Masters (5/6)
					sourceQuest = 4186,	-- The True Masters (4/6)
					qg = 344,	-- Magistrate Solomon
					coord = { 30.0, 44.5, REDRIDGE_MOUNTAINS },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				q(4224, {	-- The True Masters (6/6)
					sourceQuest = 4223,	-- The True Masters (5/6)
					qg = 9560,	-- Marshal Maxwell
					coord = { 84.74, 69.02, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- Ragged John's Story
							provider = { "n", 9563 },	-- Ragged John
							coord = { 65.0, 23.8, BURNING_STEPPES },
						}),
					},
				}),
				q(4133, {	-- Vivian Lagrave
					qg = 5204,	-- Apothecary Zinge <Royal Apothecary Society>
					coord = { 50.1, 68.0, UNDERCITY },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = 50,
				}),
				q(28405, {	-- Weapons of Darkness (A)
					sourceQuest = 28268,	-- Meet with Lord Grayson Shadowbreaker
					qgs = {
						-- #if AFTER SL
						164952,	-- Ezul'aan <Paladin Trainer>
						-- #else
						928,	-- Lord Grayson Shadowbreaker
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 79.2, 69.6, STORMWIND_CITY },
						-- #else
						{ 52.6, 45.0, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { PALADIN },
					races = ALLIANCE_ONLY,
					groups = {
						i(65623),	-- Helm of the Order
						i(65641),	-- Faceguard of the Order
						i(65646),	-- Headguard of the Order
					},
				}),
				q(28466, {	-- Weapons of Darkness (Tauren)
					sourceQuest = 28302,	-- Meet with Sunwalker Atohmo / Meet with Avaros Dawnglaive [SL+]
					qg = 44725,	-- Sunwalker Atohmo
					coord = { 45.2, 53.4, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PALADIN },
					races = { TAUREN },
					groups = {
						i(65631),	-- Helm of the Sunwalker
						i(65644),	-- Faceguard of the Sunwalker
						i(65647),	-- Headguard of the Sunwalker
						-- You get these when completing the quest
						i(141976, {	-- Headguard of the Order
							description = "May need to re-login to the game to properly trigger this collected from Blizzard.",
							timeline = { ADDED_7_0_3 },
						}),
						i(141977, {	-- Faceguard of the Order
							description = "May need to re-login to the game to properly trigger this collected from Blizzard.",
							timeline = { ADDED_7_0_3 },
						}),
						i(141978, {	-- Helm of the Order
							description = "May need to re-login to the game to properly trigger this collected from Blizzard.",
							timeline = { ADDED_7_0_3 },
						}),
					},
				}),
				q(28473, {	-- Weapons of Darkness (Blood Elf)
					sourceQuest = 28303,	-- Meet with Master Pyreanor / Meet With Avaros Dawnglaive [SL+]
					qgs = {
						23128,	-- Master Pyreanor
						-- #if AFTER SL
						168597,	-- Avaros Dawnglaive <Paladin Trainer>
						-- #endif
					},
					coord = { 49.2, 71.2, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PALADIN },
					races = { BLOODELF },
					groups = {
						i(65632),	-- Helm of the Order
						i(65645),	-- Faceguard of the Order
						i(65648),	-- Headguard of the Order
						i(25549),	-- Blood Knight Tabard
					},
				}),
				q(3982, {	-- What Is Going On? (1/2)
					sourceQuest = 3981,	-- Commander Gor'shak
					qg = 9020,	-- Commander Gor'shak <Kargath Expeditionary Force>
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
				}),
				q(4001, {	-- What Is Going On? (2/2)
					sourceQuest = 3982,	-- What Is Going On? (1/2)
					qg = 9020,	-- Commander Gor'shak <Kargath Expeditionary Force>
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- Information Gathered from Kharan
							provider = { "n", 9021 },	-- Kharan Mighthammer
						}),
					},
				}),
				q(4324, {	-- Yuka Screwspigot
					qg = 9706,	-- Yorba Screwspigot
					coord = { 67.0, 24.0, TANARIS },
					timeline = { REMOVED_4_0_3 },
					isBreadcrumb = true,
					lvl = 48,
				}),
				q(28393, {	-- A Dangerous Alliance [A]
					sourceQuest = 28258,	-- Meet with Ander Germaine / Meet with Signilda Hardforge / [SL+]
					qgs = {
						-- #if BEFORE SL
						914,	-- Ander Germaine
						-- #else
						164939,	-- Signilda Hardforge <Warrior Trainer>
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 80.3, 70.4, STORMWIND_CITY },
						-- #else
						{ 79.4, 69.0, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { WARRIOR },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65618),	-- Faceguard of the Crown
						i(65639),	-- Headguard of the Crown
					},
				}),
				q(28457, {	-- A Dangerous Alliance [H]
					sourceQuest = 28290,	-- Meet with Grezz Ragefist (Cata+) / Meet with Gormok Ogrefist (SL+)
					qg = 168596,	-- Gormok Ogrefist
					coord = { 73.6, 45.6, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { WARRIOR },
					races = HORDE_ONLY,
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65625),	-- Faceguard of the Horde
						i(65642),	-- Headguard of the Horde
					},
				}),
				-- #if AFTER SL
				q(28304, {	-- Journey to Orgrimmar [Undead] (SL+) / Meet with Dark Cleric Cecille (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { UNDEAD },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28307, {	-- Journey to Orgrimmar [Blood Elf] (SL+) / Meet with Tyelis (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { BLOODELF },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28308, {	-- Journey to Orgrimmar [Tauren] (SL+) / Meet with Seer Liwatha (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TAUREN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28309, {	-- Journey to Orgrimmar [Troll] (SL+) / Meet with Shadow-Walker Zuru (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TROLL },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28323, {	-- Journey to Orgrimmar [Goblin] (SL+) / Meet with Brother Silverhallow (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { GOBLIN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28323, {	-- Meet with Brother Silverhallow (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { GOBLIN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28304, {	-- Meet with Dark Cleric Cecille (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { UNDEAD },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28298, {	-- Meet with Gordul (Cata+) / Meet with Thega Graveblade (SL+)
					qgs = {
						16684,	-- Zelanis <Rogue Trainer>
						4584,	-- Gregory Charles <Rogue Trainer>
					},
					coords = {
						{ 79.4, 52.0, SILVERMOON_CITY },
						{ 84.6, 73.2, UNDERCITY },	-- Gregory Charles (Undercity)
					},
					timeline = { ADDED_4_0_3 },
					classes = { ROGUE },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28290, {	-- Meet with Gormok Ogrefist (SL+) / Meet with Grezz Ragefist (Cata+)
					qgs = {
						43009,	-- Alsudar the Bastion
						3042,	-- Sark Ragetotem
						4593,	-- Christoph Walker
					},
					coords = {
						{ 81.0, 37.8, SILVERMOON_CITY },	-- Alsudar the Bastion
						{ 57.2, 89.0, THUNDER_BLUFF },	-- Sark Ragetotem
						{ 47.2, 15.2, UNDERCITY },	-- Christoph Walker
					},
					timeline = { ADDED_4_0_3 },
					classes = { WARRIOR },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28290, {	-- Meet with Grezz Ragefist (Cata+) / Meet with Gormok Ogrefist (SL+)
					qgs = {
						43009,	-- Alsudar the Bastion
						3042,	-- Sark Ragetotem
						4593,	-- Christoph Walker
					},
					coords = {
						{ 81.0, 37.8, SILVERMOON_CITY },	-- Alsudar the Bastion
						{ 57.2, 89.0, THUNDER_BLUFF },	-- Sark Ragetotem
						{ 47.2, 15.2, UNDERCITY },	-- Christoph Walker
					},
					timeline = { ADDED_4_0_3 },
					classes = { WARRIOR },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28308, {	-- Meet with Seer Liwatha (Cata+) / Journey to Orgrimmar [Tauren] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TAUREN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28309, {	-- Meet with Shadow-Walker Zuru (Cata+) / Journey to Orgrimmar [Troll] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TROLL },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28298, {	-- Meet with Thega Graveblade (SL+) / Meet with Gordul (Cata+)
					qgs = {
						16684,	-- Zelanis <Rogue Trainer>
						4584,	-- Gregory Charles <Rogue Trainer>
					},
					coords = {
						{ 79.4, 52.0, SILVERMOON_CITY },
						{ 84.6, 73.2, UNDERCITY },	-- Gregory Charles (Undercity)
					},
					timeline = { ADDED_4_0_3 },
					classes = { ROGUE },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28307, {	-- Meet with Tyelis (Cata+) / Journey to Orgrimmar [Blood Elf] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { BLOODELF },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif

				q(28475, {	-- Twilight Scheming [Blood Elf]
					sourceQuest = 28307,	-- Meet with Tyelis (Cata+) / Journey to Orgrimmar [Blood Elf] (SL+)
					qg = 45337,	-- Tyelis
					coord = { 49.0, 71.0, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { BLOODELF },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65634),	-- Crown of the Sunchaser
					},
				}),
				q(28478, {	-- Twilight Scheming [Goblin]
					sourceQuest = 28323,	-- Meet with Brother Silverhallow (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					qg = 45347,	-- Brother Silverhallow
					coord = { 37.8, 87.4, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { GOBLIN },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65637),	-- Crown of Golden Worship
					},
				}),
				q(28474, {	-- Twilight Scheming [Undead]
					sourceQuest = 28304,	-- Meet with Dark Cleric Cecille (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					qg = 45339,	-- Dark Cleric Cecille
					coord = { 48.2, 72.8, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { UNDEAD },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65633),	-- Crown of Forsaken Faith
					},
				}),
				q(28476, {	-- Twilight Scheming [Tauren]
					sourceQuest = 28308,	-- Meet with Seer Liwatha (Cata+) / Journey to Orgrimmar [Tauren] (SL+)
					qg = 44735,	-- Seer Liwatha
					coord = { 45.4, 53.4, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TAUREN },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65635),	-- Crown of the Earthmother
						-- You get these when completing the quest
						i(141979),	-- Crown of the Hallowed
						i(141980),	-- Crown of the Hallowed
						i(141981),	-- Crown of the Hallowed
						i(141982),	-- Crown of the Hallowed
					},
				}),
				q(28477, {	-- Twilight Scheming [Troll]
					sourceQuest = 28309,	-- Meet with Shadow-Walker Zuru (Cata+) / Journey to Orgrimmar [Troll] (SL+)
					qg = 45137,	-- Shadow-Walker Zuru
					coord = { 35.4, 69.2, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TROLL },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65636),	-- Crown of the Shadow-Walker
					},
				}),
				q(28328, {	-- Twilight Scheming [Alliance]
					sourceQuest = 28285,	-- Meet with High Priestess Laurena / Meet with Patrice Lancaster [SL+]
					providers = {
						{ "n", 376 },	-- High Priestess Laurena
					},
					coords = {
						{ 49.6, 44.8, STORMWIND_CITY },
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = ALLIANCE_ONLY,
					groups = {
						i(65616),	-- Crown of the Hallowed
						-- you are supposed to get these when doing the quest, but i completed it on 2 characters and haven't received them :) possible unknown race requirement?
						-- Crieve note: The following items are still sourceless on WoWHead, so it's quite possible the intent was to make versions for Allied Races, but Blizzard realized that'd be dumb and smacked the intern that was doing the dumb.
						-- i(141979),	-- Crown of the Hallowed
						-- i(141980),	-- Crown of the Hallowed
						-- i(141981),	-- Crown of the Hallowed
						-- i(141982),	-- Crown of the Hallowed
					},
				}),

				q(27569, {	-- Dark Iron Tacticians
					sourceQuest = 27568,	-- Infilitrating Shadowforge City [Alliance]
					qg = 45894,	-- Prospector Seymour
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27568, {	-- Infiltrating Shadowforge City [Alliance]
					qg = 45891,	-- Oralius
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27582, {	-- Infiltrating Shadowforge City [Horde]
					qg = 45839,	-- Galamav the Marksman
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27565, {	-- Into the Prison [Alliance]
					qg = 45892,	-- Jalinda Sprig
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27579, {	-- Into the Prison [Horde]
					qg = 45821,	-- Tha'trak Proudtusk
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27585, {	-- The 109th Division
					sourceQuest = 27582,	-- Infiltrating Shadowforge City [Horde]
					qg = 45820,	-- Razal'blade
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27596, {	-- The Heart of the Mountain
					qg = 45850,	-- Maxwort Uberglint
					timeline = { ADDED_4_0_3 },
				}),
				q(27603, {	-- The Sealed Gate
					qg = 45849,	-- Tinkee Steamboil
					timeline = { ADDED_4_0_3 },
				}),
				q(27567, {	-- Twilight?! No! [Alliance]
					sourceQuest = 27565,	-- Into the Prison [Alliance]
					qg = 45898,	-- Kevin Dawson
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27581, {	-- Twilight?! No! [Horde]
					sourceQuest = 27579,	-- Into the Prison [Horde]
					qg = 45818,	-- Lexlort
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27578, {	-- Morgan's Fruition
					sourceQuest = 27573,	-- The Dark Iron Pact [Alliance]
					qg = 45890,	-- Marshal Maxwell
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					groups = {
						i(65956),	-- Maxwell's Cloak
						i(65932),	-- Thaurissan's Breastplate
						i(65980),	-- Dark Iron Band
					},
				}),
				q(27593, {	-- Rebirth of the K.E.F
					sourceQuest = 27591,	-- The Dark Iron Pact [Horde]
					qg = 45840,	-- Warlord Goretooth
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
					groups = {
						i(68054),	-- Dark Iron Band
						i(68052),	-- Kargath Cloak
						i(68053),	-- Thaurissan's Breastplate
					},
				}),
				q(27573, {	-- The Dark Iron Pact [Alliance]
					sourceQuest = 27571,	-- The Grim Guzzler [Alliance]
					qg = 45899,	-- Mountaineer Orfus
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27591, {	-- The Dark Iron Pact [Horde]
					sourceQuest = 27589,	-- The Grim Guzzler [Horde]
					qg = 45824,	-- Thunderheart
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27571, {	-- The Grim Guzzler [Alliance]
					sourceQuest = 27569,	-- Dark Iron Tacticians
					qg = 45888,	-- Mayara Brightwing
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27589, {	-- The Grim Guzzler [Horde]
					sourceQuest = 27585,	-- The 109th Division
					qg = 45817,	-- Hierophant Theodora Mulvadania
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
			}),
			n(TREASURES, {
				i(11614, {	-- Plans: Dark Iron Mail (RECIPE!)
					description = "|cFFFFD700Plans: Dark Iron Mail|r can spawn in one of four spots.\n\n|cFFFFFFFFLocation 1:|r Located in the |cFFFFD700West Garrison|r. After going up the ramp from where |cFFFFD700General Angerforge|r is located on your left are some tables. It will be located in the back corner where the Fireguard Destroyer is and two tables in front of it. This table is close to the table that has vases on it that is near the keg.\n\n|cFFFFFFFFLocation 2:|r In |cFFFFD700Golem Lord Argelmach's|r room. When you walk into the room it will be in the back left corner where in between barrels. There will be two barrels to the left and one barrel to the right of it.\n\n|cFFFFFFFFLocation 3:|r In |cFFFFD700The Manufactory|r, on a bench.\n\n|cFFFFFFFFLocation 4:|r After leaving the room with |cFFFFD700Ambassador Flamelash|r you will cross a bridge that leads into the |cFFFFD700Mold Foundry|r. Once you enter the room you will continue straight until you see the ramp. Instead of going down the ramp you will jump off the ledge to the right of the ramp. After landing on the ground you will see the plans located here.",
					provider = { "o", 173232 },	-- Blacksmithing Plans
				}),
				i(11615, {	-- Plans: Dark Iron Shoulders (RECIPE!)
					description = "|cFFFFD700Plans: Dark Iron Shoulders|r spawn in one of two spots.\n\n|cFFFFFFFFLocation 1:|r In |cFFFFD700General Angerforge's|r room. They are sitting on the bottom shelf next to the floating crystal.\n\n|cFFFFFFFFLocation 2:|r On the ground in the |cFFFFD700Detention Block|r. After passing Lexlort you will continue down into the room. When you come across the first split into two rooms you will enter the room on the left. They will be located on the seat behind the bench which is located next to the 3 red jugs.",
					provider = { "o", 173232 },	-- Blacksmithing Plans
				}),
				i(18235, {	-- Schematic: Field Repair Bot 74A (RECIPE!)
					description = "On the floor next to Golem Lord Argelmach.",
					provider = { "o", 179552 },	-- Schematic: Field Repair Bot 74A
				}),
			}),
			n(VENDORS, {
				n(12944, bubbleDownClassicRep(FACTION_THORIUM_BROTHERHOOD, {	-- Lokhtos Darkbargainer <The Thorium Brotherhood>
					{	-- Neutral
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227730, {	-- Thorium Brotherhood Contract
							description = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
							timeline = { ADDED_1_15_3 },
							cost = { { "i", 17203, 1 } },	-- Sulfuron Ingot
							lvl = 60,
						}),
						i(20754, {	-- Lesser Mana Oil (RECIPE!)
							timeline = { ADDED_1_15_3 },
						}),
						i(20755, {	-- Formula: Wizard Oil (RECIPE!)
							timeline = { ADDED_1_15_3 },
						}),
						i(22308, {	-- Pattern: Enchanted Runecloth Bag (RECIPE!)
							timeline = { ADDED_1_15_3 },
						}) } },
						i(18628, {	-- Thorium Brotherhood Contract
							description = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
							timeline = { REMOVED_1_15_3 },
							cost = { { "i", 17203, 1 } },	-- Sulfuron Ingot
							lvl = lvlsquish(60, 60, 20),
						}),
					},
					{	-- Friendly
						{ progressionKey = "brd.enchants", groups = { i(19444) } },	-- Formula: Enchant Weapon - Strength (RECIPE!)
						i(17022),	-- Pattern: Corehound Boots (RECIPE!)
						i(17018),	-- Pattern: Flarecore Gloves (RECIPE!)
						i(17023),	-- Pattern: Molten Helm (RECIPE!)
						i(17051),	-- Plans: Dark Iron Bracers (RECIPE!)
						{ progressionKey = "brd.later-loot", groups = { i(20761) } },	-- Recipe: Transmute Elemental Fire (RECIPE!)
					},
					{	-- Honored
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(228981, {	-- Formula: Conductive Shield Coating (RECIPE!)
							timeline = { ADDED_1_15_3 },
						}),
						i(229008, {	-- Formula: Enchant Cloak - Greater Fire Resistance (RECIPE!)
							timeline = { ADDED_1_15_3 },
						}),
						i(229009, {	-- Formula: Enchant Cloak - Greater Nature Resistance (RECIPE!)
							timeline = { ADDED_1_15_3 },
						}) } },
						{ progressionKey = "brd.enchants", groups = { i(19448) } },	-- Formula: Enchant Weapon - Mighty Versatility / CLASSIC: Formula: Enchant Weapon - Mighty Spirit (RECIPE!)
						i(17025),	-- Pattern: Black Dragonscale Boots (RECIPE!)
						i(17017),	-- Pattern: Flarecore Mantle (RECIPE!)
						{ progressionKey = "brd.recipes", groups = { i(19219),	-- Pattern: Flarecore Robe (RECIPE!)
						i(19330) } },	-- Pattern: Lava Belt (RECIPE!)
						i(17060),	-- Plans: Dark Iron Destroyer (RECIPE!)
						{ progressionKey = "brd.recipes", groups = { i(19206) } },	-- Plans: Dark Iron Helm (RECIPE!)
						i(17059),	-- Plans: Dark Iron Reaver (RECIPE!)
						i(17049),	-- Plans: Fiery Chain Girdle (RECIPE!)

						-- EPIC ITEM UPGRADES
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227826, {	-- Dark Iron Flame Reaver
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   17015, 1 },	-- Dark Iron Reaver
								{ "i", 227801, 25 },	-- Firelands Ember
								{ "i",   17010, 2 },	-- Fiery Core
							},
						}),
						i(227842, {	-- Ebon Fist
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19170, 1 },	-- Ebon Hand
								{ "i", 227801, 25 },	-- Firelands Ember
								{ "i",   17010, 2 },	-- Fiery Core
							},
						}),
						i(227823, {	-- Fine Flarecore Gloves
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   16979, 1 },	-- Flarecore Gloves
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						}),
						i(227839, {	-- Fine Flarecore Leggings
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19165, 1 },	-- Flarecore Leggings
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						}),
						i(227830, {	-- Fine Flarecore Mantle
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   16980, 1 },	-- Flarecore Mantle
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						}),
						i(227831, {	-- Fine Flarecore Robe
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19156, 1 },	-- Flarecore Robe
								{ "i", 227801, 20 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						}),
						i(227821, {	-- Flamekissed Molten Helm
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   16983, 1 },	-- Molten Helm
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						}),
						i(227833, {	-- Glaive of Obsidian Fury
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19167, 1 },	-- Blackfury
								{ "i", 227801, 25 },	-- Firelands Ember
								{ "i",   17011, 2 },	-- Lava Core
							},
						}),
						i(227829, {	-- Hardened Black Dragonscale Boots
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   16984, 1 },	-- Black Dragonscale Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						}),
						i(227840, {	-- Implacable Blackguard
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19168, 1 },	-- Blackguard
								{ "i", 227801, 25 },	-- Firelands Ember
								{ "i",   17011, 2 },	-- Lava Core
							},
						}),
						i(227828, {	-- Lavawalker Belt
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19149, 1 },	-- Lava Belt
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						}),
						i(227827, {	-- Molten Chain Girdle
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   16989, 1 },	-- Fiery Chain Girdle
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						}),
						i(227834, {	-- Molten Chain Shoulders
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   16988, 1 },	-- Fiery Chain Shoulders
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						}),
						i(227825, {	-- Molten Dark Iron Destroyer
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   17016, 1 },	-- Dark Iron Destroyer
								{ "i", 227801, 25 },	-- Firelands Ember
								{ "i",   17010, 2 },	-- Fiery Core
							},
						}),
						i(227838, {	-- Shining Chromatic Gauntlets
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19157, 1 },	-- Chromatic Gauntlets
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						}),
						i(227832, {	-- Tempered Black Amnesty
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19166, 1 },	-- Black Amnesty
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 2 },	-- Fiery Core
							},
						}),
						i(227841, {	-- Tempered Dark Iron Boots (Str/Stam)
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						}),
						i(228924, {	-- Tempered Dark Iron Boots (Agi/Stam)
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						}),
						i(228925, {	-- Tempered Dark Iron Boots (Def/Stam)
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						}),
						i(228926, {	-- Tempered Dark Iron Boots (Int/Holy)
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						}),
						i(228927, {	-- Tempered Dark Iron Boots (Str/Holy)
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						}),
						i(228928, {	-- Tempered Dark Iron Boots (Healing/Stam)
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						}),
						i(228929, {	-- Tempered Dark Iron Boots (Healing/Int)
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   20039, 1 },	-- Dark Iron Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						}),
						i(227820, {	-- Tempered Dark Iron Bracers
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   17014, 1 },	-- Dark Iron Bracers
								{ "i", 227801, 10 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						}),
						i(227835, {	-- Tempered Dark Iron Gauntlets
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19164, 1 },	-- Dark Iron Gauntlets
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						}),
						i(227824, {	-- Tempered Dark Iron Helm
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19148, 1 },	-- Dark Iron Helm
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						}),
						i(227836, {	-- Tempered Dark Iron Leggings
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   17013, 1 },	-- Dark Iron Leggings
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						}),
						i(227837, {	-- Thick Corehound Belt
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   19162, 1 },	-- Corehound Belt
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17010, 1 },	-- Fiery Core
							},
						}),
						i(227822, {	-- Thick Corehound Boots
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i",   16982, 1 },	-- Corehound Boots
								{ "i", 227801, 15 },	-- Firelands Ember
								{ "i",   17011, 1 },	-- Lava Core
							},
						}) } },
					},
					{	-- Revered
						{ progressionKey = "brd.enchants", groups = { i(19449) } },	-- Formula: Enchant Weapon - Mighty Intellect (RECIPE!)
						{ progressionKey = "brd.recipes", groups = { i(19331),	-- Pattern: Chromatic Gauntlets (RECIPE!)
						i(19332),	-- Pattern: Corehound Belt (RECIPE!)
						i(19220),	-- Pattern: Flarecore Leggings (RECIPE!)
						i(19333),	-- Pattern: Molten Belt (RECIPE!)
						i(19208),	-- Plans: Black Amnesty (RECIPE!)
						i(19209),	-- Plans: Blackfury (RECIPE!)
						i(19207) } },	-- Plans: Dark Iron Gauntlets (RECIPE!)
						i(17052),	-- Plans: Dark Iron Leggings (RECIPE!)
						i(17053),	-- Plans: Fiery Chain Shoulders (RECIPE!)
					},
					{	-- Exalted
						{ progressionKey = "brd.recipes", groups = { i(19211) } },	-- Plans: Blackguard (RECIPE!)
						{ progressionKey = "brd.dark-iron-recipes", groups = { i(20040) } },	-- Plans: Dark Iron Boots (RECIPE!)
						{ progressionKey = "brd.recipes", groups = { i(19210),	-- Plans: Ebon Hand (RECIPE!)
						i(19212, {	-- Plans: Nightfall (RECIPE!)
							timeline = { REMOVED_1_15_0 },
						}) } },
					},
				})),
				n(9499, {	-- Plugger Spazzring
					{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227902, {	-- Pattern: Hardened Black Dragonscale Breastplate (RECIPE!)
						timeline = { ADDED_1_15_3 },
					}) } },
					i(15759, {	-- Pattern: Black Dragonscale Breastplate (RECIPE!)
						timeline = { REMOVED_1_15_3 },
					}),
					i(13483),	-- Recipe: Transmute Fire to Earth (RECIPE!)
					i(11325),	-- Dark Iron Ale Mug
				}),
				n(45843, {	-- Yuka Screwspigot <Engineering Supplies>
					timeline = { ADDED_4_0_1 },
					groups = {
						i(10602),	-- Schematic: Deadly Scope (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(11468),	-- Dark Iron Fanny Pack
				i(18945),	-- Dark Iron Residue
				{ progressionKey = "brd.later-loot", groups = { i(22528) } },	-- Dark Iron Scraps
				i(11129),	-- Essence of the Elements
				i(11269, {	-- Intact Elemental Core
					crs = {
						8908,	-- Molten War Golem
						8906,	-- Ragereaver Golem
						8905,	-- Warbringer Construct
						8907,	-- Wrath Hammer Construct
					},
				}),
				i(15781, {	-- Pattern: Black Dragonscale Leggings (RECIPE!)
					timeline = { REMOVED_1_15_3 },
					cr = 8903,	-- Anvilrage Captain
				}),
				i(15770, {	-- Pattern: Black Dragonscale Shoulders (RECIPE!)
					timeline = { REMOVED_1_15_3 },
					cr = 8898,	-- Anvilrage Marshal
				}),
				{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227903, {	-- Pattern: Hardened Black Dragonscale Leggings (RECIPE!)
					timeline = { ADDED_1_15_3 },
					cr = 8903,	-- Anvilrage Captain
				}),
				i(227904, {	-- Pattern: Hardened Black Dragonscale Shoulders (RECIPE!)
					timeline = { ADDED_1_15_3 },
					cr = 8898,	-- Anvilrage Marshal
				}) } },
				i(11611, {	-- Plans: Dark Iron Sunderer (RECIPE!)
					crs = {
						9554,	-- Hammered Patron
						10043,	-- Ribbly's Crony
					},
				}),
				i(16049, {	-- Schematic: Dark Iron Bomb (RECIPE!)
					cr = 8920,	-- Weapon Technician
				}),
				i(16048, {	-- Schematic: Dark Iron Rifle (RECIPE!)
					cr = 8897,	-- Doomforge Craftsman
				}),
				i(18654, {	-- Schematic: Gnomish Alarm-o-Bot (RECIPE!)
					cr = 8920,	-- Weapon Technician
				}),
				i(16053, {	-- Schematic: Master Engineer's Goggles
					-- #if AFTER 2.0.1
					description = "This is now learned from the trainer.",
					-- #endif
					timeline = { REMOVED_2_0_1 },
					cr = 8900,	-- Doomforge Arcanasmith
				}),
				i(18661, {	-- Schematic: World Enlarger (RECIPE!)
					cr = 8920,	-- Weapon Technician
				}),
				i(12546),	-- Aristocratic Cuffs
				i(12555),	-- Battlechaser's Greaves
				i(12552),	-- Blisterbane Wrap
				i(12549),	-- Braincage
				i(12535),	-- Doomforged Straightedge
				i(12542),	-- Funeral Pyre Vestment
				i(12547),	-- Mar Alom's Grip
				i(11078),	-- Relic Coffer Key
				i(12527),	-- Ribsplitter
				i(12550),	-- Runed Golem Shackles
				i(12531),	-- Searing Needle
				i(12532),	-- Spire of the Stoneshaper
				i(12551),	-- Stoneshield Cloak
				i(12528),	-- The Judge's Gavel
			}),
			n(DETENTION_BLOCK, {
				e(369, {	-- High Interrogator Gerstahn
					creatureID = 9018,
					groups = {
						i(11140),	-- Prison Cell Key
						{ progressionKey = "brd.enthralled-sphere", groups = { i(223539, {	-- Enthralled Sphere
							timeline = { ADDED_1_15_2 },
						}) } },
						i(11625, {	-- Enthralled Sphere
							timeline = { REMOVED_1_15_2 },
						}),
						i(11626),	-- Blackveil Cape
						i(11624),	-- Kentic Amice
						{ progressionKey = "brd.later-loot", groups = { i(22240) } },	-- Greaves of Withering Despaire
					},
				}),
				e(370, {	-- Lord Roccor
					creatureID = 9025,
					groups = {
						i(45050, {	-- Formula: Smoking Heart of the Mountain [BOP] (RECIPE!)
							timeline = { ADDED_3_1_0 },
						}),
						i(11813, {	-- Formula: Smoking Heart of the Mountain [BOE] (RECIPE!)
							timeline = { REMOVED_3_1_0 },
						}),
						i(11631),	-- Stoneshell Guard
						i(11632),	-- Earthslag Shoulders
						{ progressionKey = "brd.later-loot", groups = { i(22234) } },	-- Mantle of Lost Hope
						-- #if AFTER 7.3.2
						{ progressionKey = "brd.later-loot", groups = { i(22271) } },	-- Leggings of Frenzied Magic
						i(11679),	-- Rubicund Armguards
						-- #endif
						{ progressionKey = "brd.later-loot", groups = { i(22397, {	-- Idol of Ferocity
							timeline = { REMOVED_5_0_4 },
						}) } },
						i(11630, {	-- Rockshard Pellets
							timeline = { DELETED_4_0_1 },
						}),
					},
				}),
				e(371, {	-- Houndmaster Grebmar
					creatureID = 9319,
					groups = {
						{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223540, {	-- Houndmaster's Bow
							timeline = { ADDED_1_15_2 },
						}) } },
						i(11628, {	-- Houndmaster's Bow
							timeline = { REMOVED_1_15_2 },
						}),
						{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223982, {	-- Houndmaster's Rifle
							timeline = { ADDED_1_15_2 },
						}) } },
						i(11629, {	-- Houndmaster's Rifle
							timeline = { REMOVED_1_15_2 },
						}),
						i(11627),	-- Fleetfoot Greaves
						i(11623),	-- Spritecaster Cape
					},
				}),
				e(372, {	-- Ring of Law
					description = "Approaching the center of the ring will start an event, and the High Justice will appear and approach one of the gates and release three waves of non-elite enemies, followed by one of six possible mini-bosses.",
					creatureID = 10096,	-- High Justice Grimstone
					groups = {
						n(9031, {	-- Anub'shiah
							{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223986, {	-- Graverot Cape
								timeline = { ADDED_1_15_2 },
							}) } },
							i(11677, {	-- Graverot Cape
								timeline = { REMOVED_1_15_2 },
							}),
							i(11678),	-- Carapace of Anub'shiah
							{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227957, {	-- Savage Gladiator Greaves
								timeline = { ADDED_1_15_3 },
							}) } },
							i(11731, {	-- Savage Gladiator Greaves
								timeline = { REMOVED_1_15_3 },
							}),
							i(11675),	-- Shadefiend Boots
						}),
						n(9029, {	-- Eviscerator
							{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223987, {	-- Splinthide Shoulders
								timeline = { ADDED_1_15_2 },
							}) } },
							i(11685, {	-- Splinthide Shoulders
								timeline = { REMOVED_1_15_2 },
							}),
							-- #if BEFORE 7.3.2
							i(11679),	-- Rubicund Armguards
							-- #endif
							{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227961, {	-- Savage Gladiator Grips
								timeline = { ADDED_1_15_3 },
							}) } },
							i(11730, {	-- Savage Gladiator Grips
								timeline = { REMOVED_1_15_3 },
							}),
							i(11686),	-- Girdle of Beastial Fury
						}),
						n(9027, {	-- Gorosh the Dervish
							{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227962, {	-- Flarethorn
								timeline = { ADDED_1_15_3 },
							}) } },
							{ progressionKey = "brd.later-loot", groups = { i(22266, {	-- Flarethorn
								timeline = { REMOVED_1_15_3 },
							}) } },
							{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227952, {	-- Savage Gladiator Chain
								timeline = { ADDED_1_15_3 },
							}) } },
							i(11726, {	-- Savage Gladiator Chain
								timeline = { REMOVED_1_15_3 },
							}),
							-- #if AFTER 7.3.2
							i(11662),	-- Ban'thok Sash
							-- #endif
							{ progressionKey = "brd.later-loot", groups = { i(22271),	-- Leggings of Frenzied Magic
							i(22257) } },	-- Bloodclot Band
						}),
						n(9028, {	-- Grizzle
							i(11610),	-- Plans: Dark Iron Pulverizer (RECIPE!)
							i(11702),	-- Grizzle's Skinner
							{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223544, {	-- Dregmetal Spaulders
								timeline = { ADDED_1_15_2 },
							}) } },
							i(11722, {	-- Dregmetal Spaulders
								timeline = { REMOVED_1_15_2 },
							}),
							i(11703),	-- Stonewall Girdle
							{ progressionKey = "brd.later-loot", groups = { i(22270) } },	-- Entrenching Boots
						}),
						n(9032, {	-- Hedrum the Creeper
							i(11635),	-- Hookfang Shanker
							{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227955, {	-- Savage Gladiator Helm
								timeline = { ADDED_1_15_3 },
							}) } },
							i(11729, {	-- Savage Gladiator Helm
								timeline = { REMOVED_1_15_3 },
							}),
							i(11633),	-- Spiderfang Carapace
							{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223984, {	-- Silkweb Gloves
								timeline = { ADDED_1_15_2 },
							}) } },
							i(11634, {	-- Silkweb Gloves
								timeline = { REMOVED_1_15_2 },
							}),
						}),
						n(9030, {	-- Ok'thor the Breaker
							i(11665),	-- Ogreseer Fists
							i(11662),	-- Ban'thok Sash
							i(11728),	-- Savage Gladiator Leggings
							{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223985, {	-- Cyclopean Band
								timeline = { ADDED_1_15_2 },
							}) } },
							i(11824, {	-- Cyclopean Band
								timeline = { REMOVED_1_15_2 },
							}),
						}),
						{ progressionKey = "brd.dungeon-set-2", groups = { n_conditional(16059, {	-- Theldren
							description = "Requires Banner of Provocation (Dungeon Set 2 Questline) to summon this boss. Loot the grey chest on the grey grate after killing the mobs. You must use the banner before the non-elites are killed.\nSummon Location: Ring of Law.",
							timeline = { REMOVED_4_0_3 },
							-- #if AFTER 4.0.3
							sourceQuest = 9015,	-- The Challenge
							u_sqs = true,	-- remove the u flag if sourcequests are completed
							-- #endif
							providers = {
								{ "i", 21986 },	-- Banner of Provocation
								{ "o", 181074 },	-- Arena Spoils
							},
							groups = {
								i(22047),	-- Top Piece of Lord Valthalak's Amulet
								{ progressionKey = "brd.sod-phase-four-additions", groups = { i(228700, {	-- Ironweave Mantle
									timeline = { ADDED_1_15_3 },
								}) } },
								i(22305, {	-- Ironweave Mantle
									timeline = { REMOVED_1_15_3 },
								}),
								i(22317),	-- Lefty's Brass Knuckle
								i(22318),	-- Malgen's Long Bow
								i(22330),	-- Shroud of Arcane Mastery
							},
						}) } },
					},
				}),
				{ progressionKey = "brd.sod-phase-three-additions", groups = { n(223265, {	-- Delirious Ancient
					description = "Spawns after defeating High Interrogator Gerstahn, Houndmaster Grebmar, Ring of Law in the Dark Iron Highway.",
					cost = { { "i", 221418, 1 } },	-- Agamaggan's Roar
					groups = {
						i(221271),	-- Ace of Wilds
						i(221262),	-- Wild Offering
					},
				}) } },
				e(377, {	-- Bael'gar
					creatureID = 9016,
					groups = {
						i(11803),	-- Force of Magma
						i(11805),	-- Rubidium Hammer
						i(11807),	-- Sash of the Burning Heart
						i(11802),	-- Lavacrest Leggings
						-- #if AFTER 7.3.2
						{ progressionKey = "brd.later-loot", groups = { i(22257) } },	-- Bloodclot Band
						-- #endif
					},
				}),
				e(374, {	-- Lord Incendius
					creatureID = 9017,
					groups = {
						{ progressionKey = "brd.later-loot", groups = { i(21987) } },	-- Incendicite of Incendius
						i(11126),	-- Tablet of Kurniya
						i(11766),	-- Flameweave Cuffs
						i(11764),	-- Cinderhide Armsplints
						i(11765),	-- Pyremail Wristguards
						i(11767),	-- Emberplate Armguards
						i(11768, {	-- Incendic Bracers
							-- #if BEFORE 10.1.7
							-- #if AFTER 2.0.1
							description = "This item appears to have been removed with TBC Prepatch. Please @Crieve if you get it to drop.",
							isBounty = true,
							-- #endif
							-- #endif
							timeline = { REMOVED_2_0_1, ADDED_10_1_7 },	-- 07.09.2023 ATT DISCORD
						}),
						{ progressionKey = "brd.darkmoon-cards", groups = { i(19268) } },	-- Ace of Elementals
					},
				}),
				e(376, {	-- Fineous Darkvire <Chief Architect>
					creatureID = 9056,
					groups = {
						i(11840),	-- Master Builder's Shirt
						i(11839),	-- Chief Architect's Monocle
						{ progressionKey = "brd.later-loot", groups = { i(22223) } },	-- Foreman's Head Protector
						i(151406, {	-- Belt of the Eminent Mason
							timeline = { ADDED_7_3_0 },
						}),
						i(11842),	-- Land Surveyor's Mantle
						i(11841),	-- Senior Designer's Pantaloons
					},
				}),
			}),
			n(SHADOWFORGE_CITY, {
				e(373, {	-- Pyromancer Loregrain
					creatureID = 9024,
					groups = {
						i(11207),	-- Formula: Enchant Weapon - Fiery Weapon (RECIPE!)
						{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223538, {	-- Kindling Stave
							timeline = { ADDED_1_15_2 },
						}) } },
						i(11750, {	-- Kindling Stave
							timeline = { REMOVED_1_15_2 },
						}),
						i(11748),	-- Pyric Caduceus
						{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223981, {	-- Flamestrider Robes
							timeline = { ADDED_1_15_2 },
						}),
						i(223980, {	-- Searingscale Leggings
							timeline = { ADDED_1_15_2 },
						}) } },
						i(11747, {	-- Flamestrider Robes
							timeline = { REMOVED_1_15_2 },
						}),
						i(11749, {	-- Searingscale Leggings
							timeline = { REMOVED_1_15_2 },
						}),
						-- #if AFTER 7.3.2
						{ progressionKey = "brd.later-loot", groups = { i(22270) } },	-- Entrenching Boots
						-- #endif
					},
				}),
				e(375, {	-- Warder Stilgiss
					creatureID = 9041,
					groups = {
						{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223983, {	-- Arbiter's Blade
							timeline = { ADDED_1_15_2 },
						}) } },
						i(11784, {	-- Arbiter's Blade
							timeline = { REMOVED_1_15_2 },
						}),
						i(11782),	-- Boreal Mantle
						{ progressionKey = "brd.later-loot", groups = { i(22241) } },	-- Dark Warder's Pauldrons
						i(11783),	-- Chillsteel Girdle
						i(151405, {	-- Cold-Forged Chestplate
							timeline = { ADDED_7_3_0 },
						}),
					},
				}),
				n(9042, {	-- Verek
					i(11755),	-- Verek's Collar
					{ progressionKey = "brd.later-loot", groups = { i(22242) } },	-- Verek's Leash
				}),
				n(9476, {	-- Watchman Doomgrip
					description = "Watchman Doomgrip spawns once all twelve Relic Coffers have been opened using Relic Coffer Keys that can drop from any Dark Iron mob in the instance. Upon defeating all enemies, a hidden door beneath the Dark Coffer will open allowing access to the Secret Safe as well as the Heart of the Mountain.",
					cost = { { "i", 11078, 12 } },	-- Relic Coffer Key
					groups = {
						o(160836, {	-- Relic Coffer
							description = "Relic Coffer Keys can drop from any Dark Iron mob in the instance.",
							groups = {
								i(11946),	-- Fire Opal Necklace
								i(11945),	-- Dark Iron Ring
								i(11938),	-- Sack of Gems
								i(11966),	-- Small Sack of Coins
								i(11937),	-- Fat Sack of Coins
								i(11944),	-- Dark Iron Baby Booties
							},
						}),
						o(165554, {	-- Heart of the Mountain
							description = "This spawns after defeating Watchman Doomgrip.",
							groups = {
								i(11309),	-- The Heart of the Mountain
							},
						}),
						o(161495, {	-- Secret Safe
							description = "This spawns after defeating Watchman Doomgrip.",
							groups = {
								-- #if BEFORE 1.13.5
								i(11923),	-- The Hammer of Grace
								i(11920),	-- Wraith Scythe
								i(11926),	-- Deathdealer Breastplate
								i(11929),	-- Haunting Specter Leggings
								-- #endif
								{ progressionKey = "brd.later-loot", groups = { i(22256),	-- Mana Shaping Handwraps
								i(22205),	-- Black Steel Bindings
								i(22254),	-- Wand of Eternal Light
								i(22255) } },	-- Magma Forged Band
							},
						}),
					},
				}),
				o(164820, {	-- Dark Keeper Nameplate
					description = "Inspect the portrait in front of the coffer room. Opening it will tell you the name of the Dark Keeper you need and where he is located. Only one will spawn each reset.\n\n|cff3399ffDark Keepers:|r\n\n|cFFFFD700Dark Keeper Bethek|r spawns inside the vault room as soon as you open the portrait.\n\n|cFFFFD700Dark Keeper Ofgut|r is located in |cFFFFD700General Angerforge's|r room. When you come down the stairs and are looking straight at |cFFFFD700General Angerforge|r, you will see him located directly to the left near the crystal.\n\n|cFFFFD700Dark Keeper Pelver|r is located in |cFFFFD700The Domicile|r. For quicker access, you can take any of the mole machines and click |cFFFFD700Into the Domicile|r and he will be on top of it.\n\n|cFFFFD700Dark Keeper Uggel|r is quite a close walk; go outside the vault room and turn right to the last room. He is near the entrance where all the golems are.\n\n|cFFFFD700Dark Keeper Vorfalk|r is located at the |cFFFFD700Grim Guzzler|r. When you first enter the room after coming from the bridge, he will be located on your right side in the corner (in front of the band's playing spot).\n\n|cFFFFD700Dark Keeper Zimrel|r is located on the second floor of the |cFFFFD700Ring of Law|r. When entering this floor from the |cFFFFD700East Garrison|r (room with the Shadowforge Lock), you will go around to your right and he will be sitting in the middle of the seats.",
					crs = {
						9438,	-- Dark Keeper Bethek
						9442,	-- Dark Keeper Ofgut
						9443,	-- Dark Keeper Pelver
						9439,	-- Dark Keeper Uggel
						9437,	-- Dark Keeper Vorfalk
						9441,	-- Dark Keeper Zimrel
					},
					groups = {
						o(160845, {	-- Dark Coffer
							sharedDescription =
								-- #if BEFORE 4.0.3
								"Is used to turn in Librams.",
								-- #else
								"Was used to turn in Librams prior to Cataclysm, is now without any purpose.",
								-- #endif
							cost = { { "i", 11197, 1 } },	-- Dark Keeper Key
							groups = {
								i(11752),	-- Black Blood of the Tormented
								i(11751),	-- Burning Essence
								i(11753),	-- Eye of Kajal
							},
						}),
						i(11197),	-- Dark Keeper Key
					},
				}),
				e(378, {	-- General Angerforge
					creatureID = 9033,
					groups = {
						i(11464),	-- Marshal Windsor's Lost Information
						{ progressionKey = "brd.angerforge-axe", groups = { i(227948, {	-- Angerforge's Battle Axe
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11816, {	-- Angerforge's Battle Axe
							timeline = { REMOVED_1_15_3 },
						}),
						-- #if AFTER 7.3.2
						i(11932),	-- Guiding Stave of Wisdom
						-- #endif
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227940, {	-- Lord General's Sword
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11817, {	-- Lord General's Sword
							timeline = { REMOVED_1_15_3 },
						}),
						-- #if AFTER 7.3.2
						i(12557, {	-- Ebonsteel Spaulders
							timeline = { REMOVED_4_0_3, ADDED_8_1_0 },
						}),
						-- #endif
						i(11820),	-- Royal Decorated Armor
						i(11821),	-- Warstrife Leggings
						i(11810),	-- Force of Will
						-- #if BEFORE 1.13.5
						i(11815),	-- Hand of Justice
						-- #endif
					},
				}),
				e(379, {	-- Golem Lord Argelmach
					creatureID = 8983,
					groups = {
						i(11268),	-- Head of Argelmach
						i(11465),	-- Marshal Windsor's Lost Information
						{ progressionKey = "brd.tbc-jewelcrafting", groups = { i(21956, {	-- Design: Dark Iron Scorpid (RECIPE!)
							timeline = { ADDED_2_0_5 },
						}) } },
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227964, {	-- Luminary Kilt
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11823, {	-- Luminary Kilt
							timeline = { REMOVED_1_15_3 },
						}),
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227965, {	-- Omnicast Boots
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11822, {	-- Omnicast Boots
							timeline = { REMOVED_1_15_3 },
						}),
						i(11669),	-- Naglering
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227967, {	-- Second Wind
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11819, {	-- Second Wind
							timeline = { REMOVED_1_15_3 },
						}),
					},
				}),
				e(380, {	-- Hurley Blackbreath
					creatureID = 9537,
					provider = { "o", 164911 },	-- Thunderbrew Lager Keg
					description = "Break the 3 Thunderbrew Lager Kegs to start the encounter.",
					groups = {
						i(11312),	-- Lost Thunderbrew Recipe
						-- #if AFTER 7.3.2
						i(11922),	-- Blood-Etched Blade
						-- #endif
						i(18044),	-- Hurley's Tankard
						i(11735),	-- Ragefury Eyepatch
						i(151408, {	-- Dark Iron Dredger's Pauldrons
							timeline = { ADDED_7_3_0 },
						}),
						i(151407, {	-- Blackened Pit Trousers
							timeline = { ADDED_7_3_0 },
						}),
						i(18043),	-- Coal Miner Boots
						{ progressionKey = "brd.later-loot", groups = { i(22275) } },	-- Firemoss Boots
					},
				}),
				e(9543, {	-- Ribbly Screwspigot
					creatureID = 9543,
					description = "Speak to him to start the encounter.",
					groups = {
						i(11313),	-- Ribbly's Head
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227901, {	-- Plans: Tempered Dark Iron Plate (RECIPE!)
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11612, {	-- Plans: Dark Iron Plate (RECIPE!)
							timeline = { REMOVED_1_15_3 },
						}),
						i(2663, {	-- Ribbly's Bandolier
							timeline = { REMOVED_4_0_1 },
						}),
						i(2662, {	-- Ribbly's Quiver
							timeline = { REMOVED_4_0_1 },
						}),
						i(11742),	-- Wayfarer's Knapsack
					},
				}),
				e(383, {	-- Plugger Spazzring
					creatureID = 9499,
					groups = {
						i(18653),	-- Schematic: Goblin Jumper Cables XL (RECIPE!)
						i(12791),	-- Barman Shanker
						i(12793),	-- Mixologist's Tunic
						i(151410, {	-- Bottle-Popper Ring
							timeline = { ADDED_7_3_0 },
						}),
						{ progressionKey = "brd.sod-phase-three-additions", groups = { i(220168, {	-- Triple-Brewed Molten Lager
							timeline = { ADDED_1_15_2 },
						}) } },
					},
				}),
				{ progressionKey = "brd.dark-iron-brewer", groups = { n(28067, {	-- Dark Iron Brewer
					description = "Speak to him until he passes out, a Mug will appear on the ground",
					timeline = { ADDED_2_4_3 },
					groups = {
						o(190394, {	-- Mug of Dire Brew
							i(38320),	-- Dire Brew
						}),
					},
				}) } },
				e(381, {	-- Phalanx
					creatureID = 9502,
					description = "Private Rocknot must be sent into a drunken rage to aggro Phalanx.\nTo do that, give him 6 dark iron ale mugs, which can be bought from Plugger Spazzring.\nRocknot will break one of the kegs, it'll blow the door open and Phalanx will be angry.",
					groups = {
						i(11744),	-- Bloodfist
						i(11743, {	-- Rockfist
							-- #if BEFORE 10.1.7
							-- #if AFTER 2.0.1
							description = "This item appears to have been removed with TBC Prepatch. Please @Crieve if you get it to drop.",
							isBounty = true,
							-- #endif
							-- #endif
							timeline = { REMOVED_2_0_1, ADDED_10_1_7 },
						}),
						-- #if BEFORE 7.3.2
						i(11746),	-- Golem Skull Helm
						-- #endif
						{ progressionKey = "brd.later-loot", groups = { i(22212),	-- Golem Fitted Pauldrons
						i(22204) } },	-- Wristguards of Renown
						i(11745),	-- Fists of Phalanx
						i(151409, {	-- Ferrous Cord
							timeline = { ADDED_7_3_0 },
						}),
					},
				}),
				e(384, {	-- Ambassador Flamelash
					creatureID = 9156,
					groups = {
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227934, {	-- Flame Wrath
							timeline = { ADDED_1_15_3 },
						}),
						i(227973, {	-- Circle of Flame
							timeline = { ADDED_1_15_3 },
						}),
						i(227970, {	-- Cape of the Fire Salamander
							timeline = { ADDED_1_15_3 },
						}),
						i(227971, {	-- Molten Fists
							timeline = { ADDED_1_15_3 },
						}),
						i(227972, {	-- Burst of Knowledge
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11809, {	-- Flame Wrath
							timeline = { REMOVED_1_15_3 },
						}),
						i(11808, {	-- Circle of Flame
							timeline = { REMOVED_1_15_3 },
						}),
						i(11812, {	-- Cape of the Fire Salamander
							timeline = { REMOVED_1_15_3 },
						}),
						i(11814, {	-- Molten Fists
							timeline = { REMOVED_1_15_3 },
						}),
						i(11832, {	-- Burst of Knowledge
							timeline = { REMOVED_1_15_3 },
						}),
					},
				}),
				n(8923, {	-- Panzor the Invincible
					description = "This is a Rare Creature and, as such, is not always present.",
					groups = {
						i(11786),	-- Stone of the Earth
						i(11785),	-- Rock Golem Bulwark
						i(11787),	-- Shalehusk Boots
						{ progressionKey = "brd.later-loot", groups = { i(22245) } },	-- Soot Encrusted Footwear
					},
				}),
				e(385, {	-- The Seven
					creatureID = 9039,	-- Doom'rel
					provider = { "o", 169243 },	-- Chest of The Seven
					modelScale = 3,
					groups = {
						-- #if BEFORE 7.3.2
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227963, {	-- Blood-Etched Blade
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11922, {	-- Blood-Etched Blade
							timeline = { REMOVED_1_15_3 },
						}),
						-- #endif
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227960, {	-- Impervious Giant
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11921, {	-- Impervious Giant
							timeline = { REMOVED_1_15_3 },
						}),
						i(11923),	-- The Hammer of Grace
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227941, {	-- Wraith Scythe
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11920, {	-- Wraith Scythe
							timeline = { REMOVED_1_15_3 },
						}),
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227958, {	-- Ghostshroud
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11925, {	-- Ghostshroud
							timeline = { REMOVED_1_15_3 },
						}),
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227956, {	-- Deathdealer Breastplate
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11926, {	-- Deathdealer Breastplate
							timeline = { REMOVED_1_15_3 },
						}),
						i(11929),	-- Haunting Specter Leggings
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227959, {	-- Legplates of the Eternal Guardian
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11927, {	-- Legplates of the Eternal Guardian
							timeline = { REMOVED_1_15_3 },
						}),
					},
				}),
				e(386, {	-- Magmus
					creatureID = 9938,
					groups = {
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227974, {	-- Lavastone Hammer
							timeline = { ADDED_1_15_3 },
						}) } },
						{ progressionKey = "brd.later-loot", groups = { i(22208, {	-- Lavastone Hammer
							timeline = { REMOVED_1_15_3 },
						}) } },
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227978, {	-- Magmus Stone
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11935, {	-- Magmus Stone
							timeline = { REMOVED_1_15_3 },
						}),
						i(11746),	-- Golem Skull Helm
						i(151411, {	-- Molten-Warden Leggings
							timeline = { ADDED_7_3_0 },
						}),
						i(22275),	-- Firemoss Boots
						{ progressionKey = "brd.later-loot", groups = { i(22400, {	-- Libram of Truth
							timeline = { DELETED_5_0_4 },
						}),
						i(22395, {	-- Totem of Rage
							timeline = { DELETED_5_0_4 },
						}) } },
					},
				}),
				-- #if BEFORE 7.3.2
				n(8929, {	-- Princess Moira Bronzebeard <Princess of Ironforge> / Thaurissan High Priest
					description = "In order to be eligible for this loot, you need to have completed The Princess's Surprise or The Princess Saved?. Those quests were removed in 4.0.3, but characters who completed them before then still receive this loot.",
					sourceQuests = {
						4363,	-- The Princess's Surprise
						4004,	-- The Princess Saved?
					},
					groups = {
						i(12557, {	-- Ebonsteel Spaulders
							timeline = { REMOVED_4_0_3, ADDED_8_1_0 },
							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
						}),
						i(12554, {	-- Hands of the Exalted Herald
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
						}),
						i(12556, {	-- High Priestess Boots
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
						}),
						i(12553, {	-- Swiftwalker Boots
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
						}),
					},
				}),
				-- #endif
				e(387, {	-- Emperor Dagran Thaurissan
					progressionKey = "brd.second-half",
					creatureID = 9019,
					groups = {
						ach(642),	-- Blackrock Depths
						ach(5051, {	-- Blackrock Depths Guild Run
							timeline = { ADDED_4_0_3 },
						}),
						i(246429, {	-- Dark Iron Chandelier (DECOR!)
							timeline = { ADDED_11_2_7 },
						}),
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227981, {	-- Dreadforge Retaliatior
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11931, {	-- Dreadforge Retaliatior
							timeline = { REMOVED_1_15_3 },
						}),
						-- #if BEFORE 7.3.2
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227982, {	-- Guiding Stave of Wisdom
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11932, {	-- Guiding Stave of Wisdom
							timeline = { REMOVED_1_15_3 },
						}),
						-- #endif
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227991, {	-- Ironfoe
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11684, {	-- Ironfoe
							timeline = { REMOVED_1_15_3 },
						}),
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227984, {	-- Thaurissan's Royal Scepter
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11928, {	-- Thaurissan's Royal Scepter
							timeline = { REMOVED_1_15_3 },
						}),
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227988, {	-- Imperial Jewel
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11933, {	-- Imperial Jewel
							timeline = { REMOVED_1_15_3 },
						}),
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227985, {	-- The Emperor's New Cape
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11930, {	-- The Emperor's New Cape
							timeline = { REMOVED_1_15_3 },
						}),
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227980, {	-- Robes of the Royal Crown
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11924, {	-- Robes of the Royal Crown
							timeline = { REMOVED_1_15_3 },
						}),
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227986, {	-- Wristguards of Renown
							timeline = { ADDED_1_15_3 },
						}) } },
						{ progressionKey = "brd.later-loot", groups = { i(22204, {	-- Wristguards of Renown
							timeline = { REMOVED_1_15_3 },
						}) } },
						-- #if AFTER 7.3.2
						i(12554, {	-- Hands of the Exalted Herald
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						-- #endif
						-- #if BEFORE 1.13.5
						i(16724, {	-- Lightforge Gauntlets
							timeline = { REMOVED_4_0_3 },
						}),
						-- #endif
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227987, {	-- Sash of the Grand Hunt
							timeline = { ADDED_1_15_3 },
						}) } },
						{ progressionKey = "brd.later-loot", groups = { i(22207, {	-- Sash of the Grand Hunt
							timeline = { REMOVED_1_15_3 },
						}) } },
						-- #if AFTER 7.3.2
						i(12556, {	-- High Priestess Boots
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						i(12553, {	-- Swiftwalker Boots
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						-- #endif
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227983, {	-- Dark Iron Seal
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11934),	-- Emperor's Seal
						-- #if AFTER 1.13.5
						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(228722, {	-- Hand of Justice
							timeline = { ADDED_1_15_3 },
						}) } },
						i(11815, {	-- Hand of Justice
							timeline = { REMOVED_1_15_3 },
						}),
						-- #endif
						i(12033),	-- Thaurissan Family Jewels
					},
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.WOD, {
		inst(228, {
			q(35899),	-- Blackrock Depths (Detention Block) Reward Quest - Normal completion
			q(35901),	-- Blackrock Depths (Detention Bonus) Reward Quest
			q(35902),	-- Blackrock Depths (Upper City) Reward Quest - Normal completion
			q(35903),	-- Blackrock Depths (Detention Bonus) Reward Quest
			q(35904),	-- Blackrock Depths (Everything) Reward Quest
		}),
	}),
	expansion(EXPANSION.TWW, {
		inst(228, {
			timeline = { ADDED_11_0_5 },
			groups = {
				q(82739),	-- ???
				q(82740),	-- Twilight Scheming (New 11.0 ID)
				-- Both of these keep getting reported completed on turnin of seemingly any BRD class quest regardless of race or faction
			},
		}),
	}),
});
```

</details>

<details>
<summary>Show every changed Lua line: P3 → sod.lua</summary>

```diff
--- .contrib/phase-examples/evolution/blackrock-depths/p3/Blackrock Depths.lua
+++ .contrib/phase-examples/evolution/blackrock-depths/p4/sod.lua
@@ -1,4 +1,4 @@
--- Generated comparison snapshot (P2.1 / P2.2 / P3): complete annotated source.
+-- Generated comparison snapshot (P4): complete sod source.
 -- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.
 -----------------------------------------------------
 --   D U N G E O N S  &  R A I D S  M O D U L E    --
@@ -27,14 +27,12 @@
 REPUTATION_FROM_LEATHER = 150;
 REPUTATION_FROM_DARKIRON = 50;
 -- #else
--- #if ANYCLASSIC
 -- #if AFTER CATA
 -- Reputation in Cata Classic
 -- CRIEVE NOTE: Not sure if it is intended, but the reputation gained from these skyrocketed in Cataclysm Classic. It might be unintentional.
 REPUTATION_FROM_CORES = 2200;
 REPUTATION_FROM_LEATHER = 1540;
 REPUTATION_FROM_DARKIRON = 300;
--- #endif
 -- #endif
 -- #endif
 
@@ -76,8 +74,7 @@
 				}),
 			}),
 			n(QUESTS, {
-				-- #if SEASON_OF_DISCOVERY
-				applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { q(84338, {	-- A Binding Contract
+				{ progressionKey = "brd.sod-phase-four-additions", groups = { q(84338, {	-- A Binding Contract
 					provider = { "i", 227730 },	-- Thorium Brotherhood Contract
 					timeline = { ADDED_1_15_3 },
 					requireSkill = BLACKSMITHING,
@@ -85,19 +82,14 @@
 					groups = {
 						i(227727),	-- Plans: Sulfuron Hammer (RECIPE!)
 					},
-				}) } }),
-				-- #endif
+				}) } },
 				q(7604, {	-- A Binding Contract
 					provider = { "i", 18628 },	-- Thorium Brotherhood Contract
-					-- #if SEASON_OF_DISCOVERY
 					timeline = { REMOVED_1_15_3 },
-					-- #endif
 					lvl = lvlsquish(60, 60, 20),
 					groups = {
 						i(18592, {	-- Plans: Sulfuron Hammer (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(256673, {	-- Stormwind Forge (DECOR!)
 							timeline = { ADDED_11_2_7 },
@@ -278,8 +270,7 @@
 						}),
 					},
 				}),
-				-- #if SEASON_OF_DISCOVERY
-				applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { q(82062, {	-- Ever After
+				{ progressionKey = "brd.sod-phase-three-additions", groups = { q(82062, {	-- Ever After
 					description = "Just east of the Ring in Blackrock Depths is a bridge that leads north over lava.\n\nAs you get onto the bridge, look down and to the left; you'll see a friendly Dark Iron Dwarf below you on the base of a pillar. Clear the rest of the mobs ahead of you (Blazing Fireguards and a group of Shadowforge dwarves).\n\nMove to the left side of the bridge near a small brazier. Get onto the railing, hug the rock wall, and jump ahead onto the platform near the wall.\n\nMove to the end of the platform, hugging the wall, and move hard into the rock corner.\n\nTurn with your left shoulder to the wall and run carefully against the wall, until you just fall down into the exposed corner. Drop down onto the rock outcrop below. \n\nTurn left into a small room, where you'll encounter the Rugged Traveler.",
 					qg = 222530,	-- Rugged Traveler
 					timeline = { REMOVED_2_0_1 },
@@ -288,8 +279,7 @@
 						i(221316),	-- Premo's Poise-Demanding Uniform
 						i(221315),	-- Rainbow Generator
 					},
-				}) } }),
-				-- #endif
+				}) } },
 				q(6646, {	-- Favor Amongst the Brotherhood, Blood of the Mountain
 					qg = 12944,	-- Lokhtos Darkbargainer
 					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
@@ -2052,18 +2042,10 @@
 				q(28328, {	-- Twilight Scheming [Alliance]
 					sourceQuest = 28285,	-- Meet with High Priestess Laurena / Meet with Patrice Lancaster [SL+]
 					providers = {
-						-- #if ANYCLASSIC
 						{ "n", 376 },	-- High Priestess Laurena
-						-- #else
-						{"n", 164949 },	-- Patrice Lancaster
-						-- #endif
-					},
-					coords = {
-						-- #if ANYCLASSIC
+					},
+					coords = {
 						{ 49.6, 44.8, STORMWIND_CITY },
-						-- #else
-						{ 78.9, 69.8, STORMWIND_CITY },
-						-- #endif
 					},
 					timeline = { ADDED_4_0_3 },
 					classes = { PRIEST },
@@ -2195,331 +2177,317 @@
 			n(VENDORS, {
 				n(12944, bubbleDownClassicRep(FACTION_THORIUM_BROTHERHOOD, {	-- Lokhtos Darkbargainer <The Thorium Brotherhood>
 					{	-- Neutral
-						-- #if SEASON_OF_DISCOVERY
-						{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(227730, {	-- Thorium Brotherhood Contract
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227730, {	-- Thorium Brotherhood Contract
 							description = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
 							timeline = { ADDED_1_15_3 },
 							cost = { { "i", 17203, 1 } },	-- Sulfuron Ingot
 							lvl = 60,
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(20754, {	-- Lesser Mana Oil (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(20755, {	-- Formula: Wizard Oil (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(22308, {	-- Pattern: Enchanted Runecloth Bag (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})) } },
-						-- #endif
+						}),
+						i(20754, {	-- Lesser Mana Oil (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}),
+						i(20755, {	-- Formula: Wizard Oil (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}),
+						i(22308, {	-- Pattern: Enchanted Runecloth Bag (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18628, {	-- Thorium Brotherhood Contract
 							description = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 							cost = { { "i", 17203, 1 } },	-- Sulfuron Ingot
 							lvl = lvlsquish(60, 60, 20),
 						}),
 					},
 					{	-- Friendly
-						applyclassicphase(PHASE_THREE_ENCHANTS, { progressionKey = "brd.enchants", groups = { i(19444) } }),	-- Formula: Enchant Weapon - Strength (RECIPE!)
+						{ progressionKey = "brd.enchants", groups = { i(19444) } },	-- Formula: Enchant Weapon - Strength (RECIPE!)
 						i(17022),	-- Pattern: Corehound Boots (RECIPE!)
 						i(17018),	-- Pattern: Flarecore Gloves (RECIPE!)
 						i(17023),	-- Pattern: Molten Helm (RECIPE!)
 						i(17051),	-- Plans: Dark Iron Bracers (RECIPE!)
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(20761) } }),	-- Recipe: Transmute Elemental Fire (RECIPE!)
+						{ progressionKey = "brd.later-loot", groups = { i(20761) } },	-- Recipe: Transmute Elemental Fire (RECIPE!)
 					},
 					{	-- Honored
-						-- #if SEASON_OF_DISCOVERY
-						{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(228981, {	-- Formula: Conductive Shield Coating (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(229008, {	-- Formula: Enchant Cloak - Greater Fire Resistance (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(229009, {	-- Formula: Enchant Cloak - Greater Nature Resistance (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})) } },
-						-- #endif
-						applyclassicphase(PHASE_THREE_ENCHANTS, { progressionKey = "brd.enchants", groups = { i(19448) } }),	-- Formula: Enchant Weapon - Mighty Versatility / CLASSIC: Formula: Enchant Weapon - Mighty Spirit (RECIPE!)
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(228981, {	-- Formula: Conductive Shield Coating (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}),
+						i(229008, {	-- Formula: Enchant Cloak - Greater Fire Resistance (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}),
+						i(229009, {	-- Formula: Enchant Cloak - Greater Nature Resistance (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}) } },
+						{ progressionKey = "brd.enchants", groups = { i(19448) } },	-- Formula: Enchant Weapon - Mighty Versatility / CLASSIC: Formula: Enchant Weapon - Mighty Spirit (RECIPE!)
 						i(17025),	-- Pattern: Black Dragonscale Boots (RECIPE!)
 						i(17017),	-- Pattern: Flarecore Mantle (RECIPE!)
-						{ progressionKey = "brd.recipes", groups = { applyclassicphase(PHASE_THREE_RECIPES, i(19219)),	-- Pattern: Flarecore Robe (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19330)) } },	-- Pattern: Lava Belt (RECIPE!)
+						{ progressionKey = "brd.recipes", groups = { i(19219),	-- Pattern: Flarecore Robe (RECIPE!)
+						i(19330) } },	-- Pattern: Lava Belt (RECIPE!)
 						i(17060),	-- Plans: Dark Iron Destroyer (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, { progressionKey = "brd.recipes", groups = { i(19206) } }),	-- Plans: Dark Iron Helm (RECIPE!)
+						{ progressionKey = "brd.recipes", groups = { i(19206) } },	-- Plans: Dark Iron Helm (RECIPE!)
 						i(17059),	-- Plans: Dark Iron Reaver (RECIPE!)
 						i(17049),	-- Plans: Fiery Chain Girdle (RECIPE!)
 
-						-- #if SEASON_OF_DISCOVERY
 						-- EPIC ITEM UPGRADES
-						{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(227826, {	-- Dark Iron Flame Reaver
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227826, {	-- Dark Iron Flame Reaver
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   17015, 1 },	-- Dark Iron Reaver
 								{ "i", 227801, 25 },	-- Firelands Ember
 								{ "i",   17010, 2 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227842, {	-- Ebon Fist
+						}),
+						i(227842, {	-- Ebon Fist
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   19170, 1 },	-- Ebon Hand
 								{ "i", 227801, 25 },	-- Firelands Ember
 								{ "i",   17010, 2 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227823, {	-- Fine Flarecore Gloves
+						}),
+						i(227823, {	-- Fine Flarecore Gloves
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   16979, 1 },	-- Flarecore Gloves
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17010, 1 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227839, {	-- Fine Flarecore Leggings
+						}),
+						i(227839, {	-- Fine Flarecore Leggings
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   19165, 1 },	-- Flarecore Leggings
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17010, 1 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227830, {	-- Fine Flarecore Mantle
+						}),
+						i(227830, {	-- Fine Flarecore Mantle
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   16980, 1 },	-- Flarecore Mantle
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17010, 1 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227831, {	-- Fine Flarecore Robe
+						}),
+						i(227831, {	-- Fine Flarecore Robe
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   19156, 1 },	-- Flarecore Robe
 								{ "i", 227801, 20 },	-- Firelands Ember
 								{ "i",   17011, 1 },	-- Lava Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227821, {	-- Flamekissed Molten Helm
+						}),
+						i(227821, {	-- Flamekissed Molten Helm
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   16983, 1 },	-- Molten Helm
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17011, 1 },	-- Lava Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227833, {	-- Glaive of Obsidian Fury
+						}),
+						i(227833, {	-- Glaive of Obsidian Fury
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   19167, 1 },	-- Blackfury
 								{ "i", 227801, 25 },	-- Firelands Ember
 								{ "i",   17011, 2 },	-- Lava Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227829, {	-- Hardened Black Dragonscale Boots
+						}),
+						i(227829, {	-- Hardened Black Dragonscale Boots
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   16984, 1 },	-- Black Dragonscale Boots
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17011, 1 },	-- Lava Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227840, {	-- Implacable Blackguard
+						}),
+						i(227840, {	-- Implacable Blackguard
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   19168, 1 },	-- Blackguard
 								{ "i", 227801, 25 },	-- Firelands Ember
 								{ "i",   17011, 2 },	-- Lava Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227828, {	-- Lavawalker Belt
+						}),
+						i(227828, {	-- Lavawalker Belt
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   19149, 1 },	-- Lava Belt
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17011, 1 },	-- Lava Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227827, {	-- Molten Chain Girdle
+						}),
+						i(227827, {	-- Molten Chain Girdle
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   16989, 1 },	-- Fiery Chain Girdle
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17010, 1 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227834, {	-- Molten Chain Shoulders
+						}),
+						i(227834, {	-- Molten Chain Shoulders
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   16988, 1 },	-- Fiery Chain Shoulders
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17010, 1 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227825, {	-- Molten Dark Iron Destroyer
+						}),
+						i(227825, {	-- Molten Dark Iron Destroyer
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   17016, 1 },	-- Dark Iron Destroyer
 								{ "i", 227801, 25 },	-- Firelands Ember
 								{ "i",   17010, 2 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227838, {	-- Shining Chromatic Gauntlets
+						}),
+						i(227838, {	-- Shining Chromatic Gauntlets
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   19157, 1 },	-- Chromatic Gauntlets
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17010, 1 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227832, {	-- Tempered Black Amnesty
+						}),
+						i(227832, {	-- Tempered Black Amnesty
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   19166, 1 },	-- Black Amnesty
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17010, 2 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227841, {	-- Tempered Dark Iron Boots (Str/Stam)
+						}),
+						i(227841, {	-- Tempered Dark Iron Boots (Str/Stam)
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   20039, 1 },	-- Dark Iron Boots
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17010, 1 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228924, {	-- Tempered Dark Iron Boots (Agi/Stam)
+						}),
+						i(228924, {	-- Tempered Dark Iron Boots (Agi/Stam)
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   20039, 1 },	-- Dark Iron Boots
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17010, 1 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228925, {	-- Tempered Dark Iron Boots (Def/Stam)
+						}),
+						i(228925, {	-- Tempered Dark Iron Boots (Def/Stam)
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   20039, 1 },	-- Dark Iron Boots
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17010, 1 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228926, {	-- Tempered Dark Iron Boots (Int/Holy)
+						}),
+						i(228926, {	-- Tempered Dark Iron Boots (Int/Holy)
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   20039, 1 },	-- Dark Iron Boots
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17010, 1 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228927, {	-- Tempered Dark Iron Boots (Str/Holy)
+						}),
+						i(228927, {	-- Tempered Dark Iron Boots (Str/Holy)
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   20039, 1 },	-- Dark Iron Boots
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17010, 1 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228928, {	-- Tempered Dark Iron Boots (Healing/Stam)
+						}),
+						i(228928, {	-- Tempered Dark Iron Boots (Healing/Stam)
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   20039, 1 },	-- Dark Iron Boots
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17010, 1 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228929, {	-- Tempered Dark Iron Boots (Healing/Int)
+						}),
+						i(228929, {	-- Tempered Dark Iron Boots (Healing/Int)
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   20039, 1 },	-- Dark Iron Boots
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17010, 1 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227820, {	-- Tempered Dark Iron Bracers
+						}),
+						i(227820, {	-- Tempered Dark Iron Bracers
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   17014, 1 },	-- Dark Iron Bracers
 								{ "i", 227801, 10 },	-- Firelands Ember
 								{ "i",   17010, 1 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227835, {	-- Tempered Dark Iron Gauntlets
+						}),
+						i(227835, {	-- Tempered Dark Iron Gauntlets
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   19164, 1 },	-- Dark Iron Gauntlets
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17011, 1 },	-- Lava Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227824, {	-- Tempered Dark Iron Helm
+						}),
+						i(227824, {	-- Tempered Dark Iron Helm
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   19148, 1 },	-- Dark Iron Helm
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17011, 1 },	-- Lava Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227836, {	-- Tempered Dark Iron Leggings
+						}),
+						i(227836, {	-- Tempered Dark Iron Leggings
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   17013, 1 },	-- Dark Iron Leggings
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17010, 1 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227837, {	-- Thick Corehound Belt
+						}),
+						i(227837, {	-- Thick Corehound Belt
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   19162, 1 },	-- Corehound Belt
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17010, 1 },	-- Fiery Core
 							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227822, {	-- Thick Corehound Boots
+						}),
+						i(227822, {	-- Thick Corehound Boots
 							timeline = { ADDED_1_15_3 },
 							cost = {
 								{ "i",   16982, 1 },	-- Corehound Boots
 								{ "i", 227801, 15 },	-- Firelands Ember
 								{ "i",   17011, 1 },	-- Lava Core
 							},
-						})) } },
-						-- #endif
+						}) } },
 					},
 					{	-- Revered
-						applyclassicphase(PHASE_THREE_ENCHANTS, { progressionKey = "brd.enchants", groups = { i(19449) } }),	-- Formula: Enchant Weapon - Mighty Intellect (RECIPE!)
-						{ progressionKey = "brd.recipes", groups = { applyclassicphase(PHASE_THREE_RECIPES, i(19331)),	-- Pattern: Chromatic Gauntlets (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19332)),	-- Pattern: Corehound Belt (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19220)),	-- Pattern: Flarecore Leggings (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19333)),	-- Pattern: Molten Belt (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19208)),	-- Plans: Black Amnesty (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19209)),	-- Plans: Blackfury (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19207)) } },	-- Plans: Dark Iron Gauntlets (RECIPE!)
+						{ progressionKey = "brd.enchants", groups = { i(19449) } },	-- Formula: Enchant Weapon - Mighty Intellect (RECIPE!)
+						{ progressionKey = "brd.recipes", groups = { i(19331),	-- Pattern: Chromatic Gauntlets (RECIPE!)
+						i(19332),	-- Pattern: Corehound Belt (RECIPE!)
+						i(19220),	-- Pattern: Flarecore Leggings (RECIPE!)
+						i(19333),	-- Pattern: Molten Belt (RECIPE!)
+						i(19208),	-- Plans: Black Amnesty (RECIPE!)
+						i(19209),	-- Plans: Blackfury (RECIPE!)
+						i(19207) } },	-- Plans: Dark Iron Gauntlets (RECIPE!)
 						i(17052),	-- Plans: Dark Iron Leggings (RECIPE!)
 						i(17053),	-- Plans: Fiery Chain Shoulders (RECIPE!)
 					},
 					{	-- Exalted
-						applyclassicphase(PHASE_THREE_RECIPES, { progressionKey = "brd.recipes", groups = { i(19211) } }),	-- Plans: Blackguard (RECIPE!)
-						applyclassicphase(PHASE_FOUR_DARKIRON_RECIPES,  { progressionKey = "brd.dark-iron-recipes", groups = { i(20040) } }),	-- Plans: Dark Iron Boots (RECIPE!)
-						{ progressionKey = "brd.recipes", groups = { applyclassicphase(PHASE_THREE_RECIPES, i(19210)),	-- Plans: Ebon Hand (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19212, {	-- Plans: Nightfall (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
+						{ progressionKey = "brd.recipes", groups = { i(19211) } },	-- Plans: Blackguard (RECIPE!)
+						{ progressionKey = "brd.dark-iron-recipes", groups = { i(20040) } },	-- Plans: Dark Iron Boots (RECIPE!)
+						{ progressionKey = "brd.recipes", groups = { i(19210),	-- Plans: Ebon Hand (RECIPE!)
+						i(19212, {	-- Plans: Nightfall (RECIPE!)
 							timeline = { REMOVED_1_15_0 },
-							-- #endif
-						})) } },
+						}) } },
 					},
 				})),
 				n(9499, {	-- Plugger Spazzring
-					-- #if SEASON_OF_DISCOVERY
-					applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227902, {	-- Pattern: Hardened Black Dragonscale Breastplate (RECIPE!)
+					{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227902, {	-- Pattern: Hardened Black Dragonscale Breastplate (RECIPE!)
 						timeline = { ADDED_1_15_3 },
-					}) } }),
-					-- #endif
+					}) } },
 					i(15759, {	-- Pattern: Black Dragonscale Breastplate (RECIPE!)
-						-- #if SEASON_OF_DISCOVERY
 						timeline = { REMOVED_1_15_3 },
-						-- #endif
 					}),
 					i(13483),	-- Recipe: Transmute Fire to Earth (RECIPE!)
 					i(11325),	-- Dark Iron Ale Mug
@@ -2534,7 +2502,7 @@
 			n(ZONE_DROPS, {
 				i(11468),	-- Dark Iron Fanny Pack
 				i(18945),	-- Dark Iron Residue
-				applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22528) } }),	-- Dark Iron Scraps
+				{ progressionKey = "brd.later-loot", groups = { i(22528) } },	-- Dark Iron Scraps
 				i(11129),	-- Essence of the Elements
 				i(11269, {	-- Intact Elemental Core
 					crs = {
@@ -2545,27 +2513,21 @@
 					},
 				}),
 				i(15781, {	-- Pattern: Black Dragonscale Leggings (RECIPE!)
-					-- #if SEASON_OF_DISCOVERY
 					timeline = { REMOVED_1_15_3 },
-					-- #endif
 					cr = 8903,	-- Anvilrage Captain
 				}),
 				i(15770, {	-- Pattern: Black Dragonscale Shoulders (RECIPE!)
-					-- #if SEASON_OF_DISCOVERY
 					timeline = { REMOVED_1_15_3 },
-					-- #endif
 					cr = 8898,	-- Anvilrage Marshal
 				}),
-				-- #if SEASON_OF_DISCOVERY
-				{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(227903, {	-- Pattern: Hardened Black Dragonscale Leggings (RECIPE!)
+				{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227903, {	-- Pattern: Hardened Black Dragonscale Leggings (RECIPE!)
 					timeline = { ADDED_1_15_3 },
 					cr = 8903,	-- Anvilrage Captain
-				})),
-				applyclassicphase(SOD_PHASE_FOUR, i(227904, {	-- Pattern: Hardened Black Dragonscale Shoulders (RECIPE!)
+				}),
+				i(227904, {	-- Pattern: Hardened Black Dragonscale Shoulders (RECIPE!)
 					timeline = { ADDED_1_15_3 },
 					cr = 8898,	-- Anvilrage Marshal
-				})) } },
-				-- #endif
+				}) } },
 				i(11611, {	-- Plans: Dark Iron Sunderer (RECIPE!)
 					crs = {
 						9554,	-- Hammered Patron
@@ -2611,19 +2573,15 @@
 					creatureID = 9018,
 					groups = {
 						i(11140),	-- Prison Cell Key
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.enthralled-sphere", groups = { i(223539, {	-- Enthralled Sphere
+						{ progressionKey = "brd.enthralled-sphere", groups = { i(223539, {	-- Enthralled Sphere
 							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
+						}) } },
 						i(11625, {	-- Enthralled Sphere
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						i(11626),	-- Blackveil Cape
 						i(11624),	-- Kentic Amice
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22240) } }),	-- Greaves of Withering Despaire
+						{ progressionKey = "brd.later-loot", groups = { i(22240) } },	-- Greaves of Withering Despaire
 					},
 				}),
 				e(370, {	-- Lord Roccor
@@ -2637,14 +2595,14 @@
 						}),
 						i(11631),	-- Stoneshell Guard
 						i(11632),	-- Earthslag Shoulders
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22234) } }),	-- Mantle of Lost Hope
+						{ progressionKey = "brd.later-loot", groups = { i(22234) } },	-- Mantle of Lost Hope
 						-- #if AFTER 7.3.2
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22271) } }),	-- Leggings of Frenzied Magic
+						{ progressionKey = "brd.later-loot", groups = { i(22271) } },	-- Leggings of Frenzied Magic
 						i(11679),	-- Rubicund Armguards
 						-- #endif
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22397, {	-- Idol of Ferocity
+						{ progressionKey = "brd.later-loot", groups = { i(22397, {	-- Idol of Ferocity
 							timeline = { REMOVED_5_0_4 },
-						}) } }),
+						}) } },
 						i(11630, {	-- Rockshard Pellets
 							timeline = { DELETED_4_0_1 },
 						}),
@@ -2653,25 +2611,17 @@
 				e(371, {	-- Houndmaster Grebmar
 					creatureID = 9319,
 					groups = {
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223540, {	-- Houndmaster's Bow
+						{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223540, {	-- Houndmaster's Bow
 							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
+						}) } },
 						i(11628, {	-- Houndmaster's Bow
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_2 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223982, {	-- Houndmaster's Rifle
+						}),
+						{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223982, {	-- Houndmaster's Rifle
 							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
+						}) } },
 						i(11629, {	-- Houndmaster's Rifle
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						i(11627),	-- Fleetfoot Greaves
 						i(11623),	-- Spritecaster Cape
@@ -2682,138 +2632,98 @@
 					creatureID = 10096,	-- High Justice Grimstone
 					groups = {
 						n(9031, {	-- Anub'shiah
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223986, {	-- Graverot Cape
+							{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223986, {	-- Graverot Cape
 								timeline = { ADDED_1_15_2 },
-							}) } }),
-							-- #endif
+							}) } },
 							i(11677, {	-- Graverot Cape
-								-- #if SEASON_OF_DISCOVERY
 								timeline = { REMOVED_1_15_2 },
-								-- #endif
 							}),
 							i(11678),	-- Carapace of Anub'shiah
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227957, {	-- Savage Gladiator Greaves
+							{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227957, {	-- Savage Gladiator Greaves
 								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}) } },
 							i(11731, {	-- Savage Gladiator Greaves
-								-- #if SEASON_OF_DISCOVERY
 								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(11675),	-- Shadefiend Boots
 						}),
 						n(9029, {	-- Eviscerator
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223987, {	-- Splinthide Shoulders
+							{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223987, {	-- Splinthide Shoulders
 								timeline = { ADDED_1_15_2 },
-							}) } }),
-							-- #endif
+							}) } },
 							i(11685, {	-- Splinthide Shoulders
-								-- #if SEASON_OF_DISCOVERY
 								timeline = { REMOVED_1_15_2 },
-								-- #endif
 							}),
 							-- #if BEFORE 7.3.2
 							i(11679),	-- Rubicund Armguards
 							-- #endif
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227961, {	-- Savage Gladiator Grips
+							{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227961, {	-- Savage Gladiator Grips
 								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}) } },
 							i(11730, {	-- Savage Gladiator Grips
-								-- #if SEASON_OF_DISCOVERY
 								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(11686),	-- Girdle of Beastial Fury
 						}),
 						n(9027, {	-- Gorosh the Dervish
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227962, {	-- Flarethorn
+							{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227962, {	-- Flarethorn
 								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
-							applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22266, {	-- Flarethorn
-								-- #if SEASON_OF_DISCOVERY
+							}) } },
+							{ progressionKey = "brd.later-loot", groups = { i(22266, {	-- Flarethorn
 								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}) } }),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227952, {	-- Savage Gladiator Chain
+							}) } },
+							{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227952, {	-- Savage Gladiator Chain
 								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}) } },
 							i(11726, {	-- Savage Gladiator Chain
-								-- #if SEASON_OF_DISCOVERY
 								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							-- #if AFTER 7.3.2
 							i(11662),	-- Ban'thok Sash
 							-- #endif
-							{ progressionKey = "brd.later-loot", groups = { applyclassicphase(PHASE_FIVE, i(22271)),	-- Leggings of Frenzied Magic
-							applyclassicphase(PHASE_FIVE, i(22257)) } },	-- Bloodclot Band
+							{ progressionKey = "brd.later-loot", groups = { i(22271),	-- Leggings of Frenzied Magic
+							i(22257) } },	-- Bloodclot Band
 						}),
 						n(9028, {	-- Grizzle
 							i(11610),	-- Plans: Dark Iron Pulverizer (RECIPE!)
 							i(11702),	-- Grizzle's Skinner
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223544, {	-- Dregmetal Spaulders
+							{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223544, {	-- Dregmetal Spaulders
 								timeline = { ADDED_1_15_2 },
-							}) } }),
-							-- #endif
+							}) } },
 							i(11722, {	-- Dregmetal Spaulders
-								-- #if SEASON_OF_DISCOVERY
 								timeline = { REMOVED_1_15_2 },
-								-- #endif
 							}),
 							i(11703),	-- Stonewall Girdle
-							applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22270) } }),	-- Entrenching Boots
+							{ progressionKey = "brd.later-loot", groups = { i(22270) } },	-- Entrenching Boots
 						}),
 						n(9032, {	-- Hedrum the Creeper
 							i(11635),	-- Hookfang Shanker
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227955, {	-- Savage Gladiator Helm
+							{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227955, {	-- Savage Gladiator Helm
 								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}) } },
 							i(11729, {	-- Savage Gladiator Helm
-								-- #if SEASON_OF_DISCOVERY
 								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(11633),	-- Spiderfang Carapace
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223984, {	-- Silkweb Gloves
+							{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223984, {	-- Silkweb Gloves
 								timeline = { ADDED_1_15_2 },
-							}) } }),
-							-- #endif
+							}) } },
 							i(11634, {	-- Silkweb Gloves
-								-- #if SEASON_OF_DISCOVERY
 								timeline = { REMOVED_1_15_2 },
-								-- #endif
 							}),
 						}),
 						n(9030, {	-- Ok'thor the Breaker
 							i(11665),	-- Ogreseer Fists
 							i(11662),	-- Ban'thok Sash
 							i(11728),	-- Savage Gladiator Leggings
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223985, {	-- Cyclopean Band
+							{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223985, {	-- Cyclopean Band
 								timeline = { ADDED_1_15_2 },
-							}) } }),
-							-- #endif
+							}) } },
 							i(11824, {	-- Cyclopean Band
-								-- #if SEASON_OF_DISCOVERY
 								timeline = { REMOVED_1_15_2 },
-								-- #endif
 							}),
 						}),
-						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "brd.dungeon-set-2", groups = { n_conditional(16059, {	-- Theldren
+						{ progressionKey = "brd.dungeon-set-2", groups = { n_conditional(16059, {	-- Theldren
 							description = "Requires Banner of Provocation (Dungeon Set 2 Questline) to summon this boss. Loot the grey chest on the grey grate after killing the mobs. You must use the banner before the non-elites are killed.\nSummon Location: Ring of Law.",
 							timeline = { REMOVED_4_0_3 },
 							-- #if AFTER 4.0.3
@@ -2826,33 +2736,27 @@
 							},
 							groups = {
 								i(22047),	-- Top Piece of Lord Valthalak's Amulet
-								-- #if SEASON_OF_DISCOVERY
-								applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(228700, {	-- Ironweave Mantle
+								{ progressionKey = "brd.sod-phase-four-additions", groups = { i(228700, {	-- Ironweave Mantle
 									timeline = { ADDED_1_15_3 },
-								}) } }),
-								-- #endif
+								}) } },
 								i(22305, {	-- Ironweave Mantle
-									-- #if SEASON_OF_DISCOVERY
 									timeline = { REMOVED_1_15_3 },
-									-- #endif
 								}),
 								i(22317),	-- Lefty's Brass Knuckle
 								i(22318),	-- Malgen's Long Bow
 								i(22330),	-- Shroud of Arcane Mastery
 							},
-						}) } }),
-					},
-				}),
-				-- #if SEASON_OF_DISCOVERY
-				applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { n(223265, {	-- Delirious Ancient
+						}) } },
+					},
+				}),
+				{ progressionKey = "brd.sod-phase-three-additions", groups = { n(223265, {	-- Delirious Ancient
 					description = "Spawns after defeating High Interrogator Gerstahn, Houndmaster Grebmar, Ring of Law in the Dark Iron Highway.",
 					cost = { { "i", 221418, 1 } },	-- Agamaggan's Roar
 					groups = {
 						i(221271),	-- Ace of Wilds
 						i(221262),	-- Wild Offering
 					},
-				}) } }),
-				-- #endif
+				}) } },
 				e(377, {	-- Bael'gar
 					creatureID = 9016,
 					groups = {
@@ -2861,14 +2765,14 @@
 						i(11807),	-- Sash of the Burning Heart
 						i(11802),	-- Lavacrest Leggings
 						-- #if AFTER 7.3.2
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22257) } }),	-- Bloodclot Band
+						{ progressionKey = "brd.later-loot", groups = { i(22257) } },	-- Bloodclot Band
 						-- #endif
 					},
 				}),
 				e(374, {	-- Lord Incendius
 					creatureID = 9017,
 					groups = {
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(21987) } }),	-- Incendicite of Incendius
+						{ progressionKey = "brd.later-loot", groups = { i(21987) } },	-- Incendicite of Incendius
 						i(11126),	-- Tablet of Kurniya
 						i(11766),	-- Flameweave Cuffs
 						i(11764),	-- Cinderhide Armsplints
@@ -2883,7 +2787,7 @@
 							-- #endif
 							timeline = { REMOVED_2_0_1, ADDED_10_1_7 },	-- 07.09.2023 ATT DISCORD
 						}),
-						applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "brd.darkmoon-cards", groups = { i(19268) } }),	-- Ace of Elementals
+						{ progressionKey = "brd.darkmoon-cards", groups = { i(19268) } },	-- Ace of Elementals
 					},
 				}),
 				e(376, {	-- Fineous Darkvire <Chief Architect>
@@ -2891,7 +2795,7 @@
 					groups = {
 						i(11840),	-- Master Builder's Shirt
 						i(11839),	-- Chief Architect's Monocle
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22223) } }),	-- Foreman's Head Protector
+						{ progressionKey = "brd.later-loot", groups = { i(22223) } },	-- Foreman's Head Protector
 						i(151406, {	-- Belt of the Eminent Mason
 							timeline = { ADDED_7_3_0 },
 						}),
@@ -2905,55 +2809,41 @@
 					creatureID = 9024,
 					groups = {
 						i(11207),	-- Formula: Enchant Weapon - Fiery Weapon (RECIPE!)
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223538, {	-- Kindling Stave
+						{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223538, {	-- Kindling Stave
 							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
+						}) } },
 						i(11750, {	-- Kindling Stave
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						i(11748),	-- Pyric Caduceus
-						-- #if SEASON_OF_DISCOVERY
-						{ progressionKey = "brd.sod-phase-three-additions", groups = { applyclassicphase(SOD_PHASE_THREE, i(223981, {	-- Flamestrider Robes
+						{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223981, {	-- Flamestrider Robes
 							timeline = { ADDED_1_15_2 },
-						})),
-						applyclassicphase(SOD_PHASE_THREE, i(223980, {	-- Searingscale Leggings
+						}),
+						i(223980, {	-- Searingscale Leggings
 							timeline = { ADDED_1_15_2 },
-						})) } },
-						-- #endif
+						}) } },
 						i(11747, {	-- Flamestrider Robes
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						i(11749, {	-- Searingscale Leggings
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						-- #if AFTER 7.3.2
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22270) } }),	-- Entrenching Boots
+						{ progressionKey = "brd.later-loot", groups = { i(22270) } },	-- Entrenching Boots
 						-- #endif
 					},
 				}),
 				e(375, {	-- Warder Stilgiss
 					creatureID = 9041,
 					groups = {
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223983, {	-- Arbiter's Blade
+						{ progressionKey = "brd.sod-phase-three-additions", groups = { i(223983, {	-- Arbiter's Blade
 							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
+						}) } },
 						i(11784, {	-- Arbiter's Blade
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						i(11782),	-- Boreal Mantle
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22241) } }),	-- Dark Warder's Pauldrons
+						{ progressionKey = "brd.later-loot", groups = { i(22241) } },	-- Dark Warder's Pauldrons
 						i(11783),	-- Chillsteel Girdle
 						i(151405, {	-- Cold-Forged Chestplate
 							timeline = { ADDED_7_3_0 },
@@ -2962,7 +2852,7 @@
 				}),
 				n(9042, {	-- Verek
 					i(11755),	-- Verek's Collar
-					applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22242) } }),	-- Verek's Leash
+					{ progressionKey = "brd.later-loot", groups = { i(22242) } },	-- Verek's Leash
 				}),
 				n(9476, {	-- Watchman Doomgrip
 					description = "Watchman Doomgrip spawns once all twelve Relic Coffers have been opened using Relic Coffer Keys that can drop from any Dark Iron mob in the instance. Upon defeating all enemies, a hidden door beneath the Dark Coffer will open allowing access to the Secret Safe as well as the Heart of the Mountain.",
@@ -2994,10 +2884,10 @@
 								i(11926),	-- Deathdealer Breastplate
 								i(11929),	-- Haunting Specter Leggings
 								-- #endif
-								{ progressionKey = "brd.later-loot", groups = { applyclassicphase(PHASE_FIVE, i(22256)),	-- Mana Shaping Handwraps
-								applyclassicphase(PHASE_FIVE, i(22205)),	-- Black Steel Bindings
-								applyclassicphase(PHASE_FIVE, i(22254)),	-- Wand of Eternal Light
-								applyclassicphase(PHASE_FIVE, i(22255)) } },	-- Magma Forged Band
+								{ progressionKey = "brd.later-loot", groups = { i(22256),	-- Mana Shaping Handwraps
+								i(22205),	-- Black Steel Bindings
+								i(22254),	-- Wand of Eternal Light
+								i(22255) } },	-- Magma Forged Band
 							},
 						}),
 					},
@@ -3034,28 +2924,20 @@
 					creatureID = 9033,
 					groups = {
 						i(11464),	-- Marshal Windsor's Lost Information
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.angerforge-axe", groups = { i(227948, {	-- Angerforge's Battle Axe
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						{ progressionKey = "brd.angerforge-axe", groups = { i(227948, {	-- Angerforge's Battle Axe
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11816, {	-- Angerforge's Battle Axe
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						-- #if AFTER 7.3.2
 						i(11932),	-- Guiding Stave of Wisdom
 						-- #endif
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227940, {	-- Lord General's Sword
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227940, {	-- Lord General's Sword
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11817, {	-- Lord General's Sword
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						-- #if AFTER 7.3.2
 						i(12557, {	-- Ebonsteel Spaulders
@@ -3075,39 +2957,27 @@
 					groups = {
 						i(11268),	-- Head of Argelmach
 						i(11465),	-- Marshal Windsor's Lost Information
-						applyclassicphase(TBC_PHASE_ONE, { progressionKey = "brd.tbc-jewelcrafting", groups = { i(21956, {	-- Design: Dark Iron Scorpid (RECIPE!)
+						{ progressionKey = "brd.tbc-jewelcrafting", groups = { i(21956, {	-- Design: Dark Iron Scorpid (RECIPE!)
 							timeline = { ADDED_2_0_5 },
-						}) } }),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227964, {	-- Luminary Kilt
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}) } },
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227964, {	-- Luminary Kilt
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11823, {	-- Luminary Kilt
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227965, {	-- Omnicast Boots
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227965, {	-- Omnicast Boots
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11822, {	-- Omnicast Boots
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11669),	-- Naglering
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227967, {	-- Second Wind
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227967, {	-- Second Wind
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11819, {	-- Second Wind
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 					},
 				}),
@@ -3129,7 +2999,7 @@
 							timeline = { ADDED_7_3_0 },
 						}),
 						i(18043),	-- Coal Miner Boots
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22275) } }),	-- Firemoss Boots
+						{ progressionKey = "brd.later-loot", groups = { i(22275) } },	-- Firemoss Boots
 					},
 				}),
 				e(9543, {	-- Ribbly Screwspigot
@@ -3137,15 +3007,11 @@
 					description = "Speak to him to start the encounter.",
 					groups = {
 						i(11313),	-- Ribbly's Head
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227901, {	-- Plans: Tempered Dark Iron Plate (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227901, {	-- Plans: Tempered Dark Iron Plate (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11612, {	-- Plans: Dark Iron Plate (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(2663, {	-- Ribbly's Bandolier
 							timeline = { REMOVED_4_0_1 },
@@ -3165,14 +3031,12 @@
 						i(151410, {	-- Bottle-Popper Ring
 							timeline = { ADDED_7_3_0 },
 						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(220168, {	-- Triple-Brewed Molten Lager
+						{ progressionKey = "brd.sod-phase-three-additions", groups = { i(220168, {	-- Triple-Brewed Molten Lager
 							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
-					},
-				}),
-				applyclassicphase(TBC_PHASE_FOUR, { progressionKey = "brd.dark-iron-brewer", groups = { n(28067, {	-- Dark Iron Brewer
+						}) } },
+					},
+				}),
+				{ progressionKey = "brd.dark-iron-brewer", groups = { n(28067, {	-- Dark Iron Brewer
 					description = "Speak to him until he passes out, a Mug will appear on the ground",
 					timeline = { ADDED_2_4_3 },
 					groups = {
@@ -3180,7 +3044,7 @@
 							i(38320),	-- Dire Brew
 						}),
 					},
-				}) } }),
+				}) } },
 				e(381, {	-- Phalanx
 					creatureID = 9502,
 					description = "Private Rocknot must be sent into a drunken rage to aggro Phalanx.\nTo do that, give him 6 dark iron ale mugs, which can be bought from Plugger Spazzring.\nRocknot will break one of the kegs, it'll blow the door open and Phalanx will be angry.",
@@ -3198,8 +3062,8 @@
 						-- #if BEFORE 7.3.2
 						i(11746),	-- Golem Skull Helm
 						-- #endif
-						{ progressionKey = "brd.later-loot", groups = { applyclassicphase(PHASE_FIVE, i(22212)),	-- Golem Fitted Pauldrons
-						applyclassicphase(PHASE_FIVE, i(22204)) } },	-- Wristguards of Renown
+						{ progressionKey = "brd.later-loot", groups = { i(22212),	-- Golem Fitted Pauldrons
+						i(22204) } },	-- Wristguards of Renown
 						i(11745),	-- Fists of Phalanx
 						i(151409, {	-- Ferrous Cord
 							timeline = { ADDED_7_3_0 },
@@ -3209,47 +3073,35 @@
 				e(384, {	-- Ambassador Flamelash
 					creatureID = 9156,
 					groups = {
-						-- #if SEASON_OF_DISCOVERY
-						{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(227934, {	-- Flame Wrath
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227973, {	-- Circle of Flame
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227970, {	-- Cape of the Fire Salamander
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227971, {	-- Molten Fists
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227972, {	-- Burst of Knowledge
-							timeline = { ADDED_1_15_3 },
-						})) } },
-						-- #endif
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227934, {	-- Flame Wrath
+							timeline = { ADDED_1_15_3 },
+						}),
+						i(227973, {	-- Circle of Flame
+							timeline = { ADDED_1_15_3 },
+						}),
+						i(227970, {	-- Cape of the Fire Salamander
+							timeline = { ADDED_1_15_3 },
+						}),
+						i(227971, {	-- Molten Fists
+							timeline = { ADDED_1_15_3 },
+						}),
+						i(227972, {	-- Burst of Knowledge
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11809, {	-- Flame Wrath
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11808, {	-- Circle of Flame
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11812, {	-- Cape of the Fire Salamander
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11814, {	-- Molten Fists
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11832, {	-- Burst of Knowledge
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 					},
 				}),
@@ -3259,7 +3111,7 @@
 						i(11786),	-- Stone of the Earth
 						i(11785),	-- Rock Golem Bulwark
 						i(11787),	-- Shalehusk Boots
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22245) } }),	-- Soot Encrusted Footwear
+						{ progressionKey = "brd.later-loot", groups = { i(22245) } },	-- Soot Encrusted Footwear
 					},
 				}),
 				e(385, {	-- The Seven
@@ -3268,105 +3120,73 @@
 					modelScale = 3,
 					groups = {
 						-- #if BEFORE 7.3.2
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227963, {	-- Blood-Etched Blade
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227963, {	-- Blood-Etched Blade
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11922, {	-- Blood-Etched Blade
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #endif
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227960, {	-- Impervious Giant
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
+						-- #endif
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227960, {	-- Impervious Giant
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11921, {	-- Impervious Giant
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11923),	-- The Hammer of Grace
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227941, {	-- Wraith Scythe
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227941, {	-- Wraith Scythe
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11920, {	-- Wraith Scythe
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227958, {	-- Ghostshroud
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227958, {	-- Ghostshroud
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11925, {	-- Ghostshroud
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227956, {	-- Deathdealer Breastplate
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227956, {	-- Deathdealer Breastplate
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11926, {	-- Deathdealer Breastplate
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11929),	-- Haunting Specter Leggings
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227959, {	-- Legplates of the Eternal Guardian
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227959, {	-- Legplates of the Eternal Guardian
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11927, {	-- Legplates of the Eternal Guardian
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 					},
 				}),
 				e(386, {	-- Magmus
 					creatureID = 9938,
 					groups = {
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227974, {	-- Lavastone Hammer
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22208, {	-- Lavastone Hammer
-							-- #if SEASON_OF_DISCOVERY
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227974, {	-- Lavastone Hammer
+							timeline = { ADDED_1_15_3 },
+						}) } },
+						{ progressionKey = "brd.later-loot", groups = { i(22208, {	-- Lavastone Hammer
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}) } }),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227978, {	-- Magmus Stone
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}) } },
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227978, {	-- Magmus Stone
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11935, {	-- Magmus Stone
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11746),	-- Golem Skull Helm
 						i(151411, {	-- Molten-Warden Leggings
 							timeline = { ADDED_7_3_0 },
 						}),
 						i(22275),	-- Firemoss Boots
-						{ progressionKey = "brd.later-loot", groups = { applyclassicphase(PHASE_FIVE, i(22400, {	-- Libram of Truth
+						{ progressionKey = "brd.later-loot", groups = { i(22400, {	-- Libram of Truth
 							timeline = { DELETED_5_0_4 },
-						})),
-						applyclassicphase(PHASE_FIVE, i(22395, {	-- Totem of Rage
+						}),
+						i(22395, {	-- Totem of Rage
 							timeline = { DELETED_5_0_4 },
-						})) } },
+						}) } },
 					},
 				}),
 				-- #if BEFORE 7.3.2
@@ -3379,27 +3199,19 @@
 					groups = {
 						i(12557, {	-- Ebonsteel Spaulders
 							timeline = { REMOVED_4_0_3, ADDED_8_1_0 },
-							-- #if ANYCLASSIC
 							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
-							-- #endif
 						}),
 						i(12554, {	-- Hands of the Exalted Herald
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
-							-- #if ANYCLASSIC
 							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
-							-- #endif
 						}),
 						i(12556, {	-- High Priestess Boots
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
-							-- #if ANYCLASSIC
 							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
-							-- #endif
 						}),
 						i(12553, {	-- Swiftwalker Boots
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
-							-- #if ANYCLASSIC
 							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
-							-- #endif
 						}),
 					},
 				}),
@@ -3415,88 +3227,56 @@
 						i(246429, {	-- Dark Iron Chandelier (DECOR!)
 							timeline = { ADDED_11_2_7 },
 						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227981, {	-- Dreadforge Retaliatior
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227981, {	-- Dreadforge Retaliatior
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11931, {	-- Dreadforge Retaliatior
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						-- #if BEFORE 7.3.2
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227982, {	-- Guiding Stave of Wisdom
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227982, {	-- Guiding Stave of Wisdom
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11932, {	-- Guiding Stave of Wisdom
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #endif
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227991, {	-- Ironfoe
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
+						-- #endif
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227991, {	-- Ironfoe
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11684, {	-- Ironfoe
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227984, {	-- Thaurissan's Royal Scepter
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227984, {	-- Thaurissan's Royal Scepter
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11928, {	-- Thaurissan's Royal Scepter
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227988, {	-- Imperial Jewel
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227988, {	-- Imperial Jewel
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11933, {	-- Imperial Jewel
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227985, {	-- The Emperor's New Cape
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227985, {	-- The Emperor's New Cape
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11930, {	-- The Emperor's New Cape
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227980, {	-- Robes of the Royal Crown
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227980, {	-- Robes of the Royal Crown
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11924, {	-- Robes of the Royal Crown
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227986, {	-- Wristguards of Renown
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22204, {	-- Wristguards of Renown
-							-- #if SEASON_OF_DISCOVERY
+						}),
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227986, {	-- Wristguards of Renown
+							timeline = { ADDED_1_15_3 },
+						}) } },
+						{ progressionKey = "brd.later-loot", groups = { i(22204, {	-- Wristguards of Renown
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}) } }),
+						}) } },
 						-- #if AFTER 7.3.2
 						i(12554, {	-- Hands of the Exalted Herald
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
@@ -3507,16 +3287,12 @@
 							timeline = { REMOVED_4_0_3 },
 						}),
 						-- #endif
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227987, {	-- Sash of the Grand Hunt
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22207, {	-- Sash of the Grand Hunt
-							-- #if SEASON_OF_DISCOVERY
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227987, {	-- Sash of the Grand Hunt
+							timeline = { ADDED_1_15_3 },
+						}) } },
+						{ progressionKey = "brd.later-loot", groups = { i(22207, {	-- Sash of the Grand Hunt
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}) } }),
+						}) } },
 						-- #if AFTER 7.3.2
 						i(12556, {	-- High Priestess Boots
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
@@ -3525,22 +3301,16 @@
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
 						}),
 						-- #endif
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227983, {	-- Dark Iron Seal
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(227983, {	-- Dark Iron Seal
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11934),	-- Emperor's Seal
 						-- #if AFTER 1.13.5
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(228722, {	-- Hand of Justice
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						{ progressionKey = "brd.sod-phase-four-additions", groups = { i(228722, {	-- Hand of Justice
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(11815, {	-- Hand of Justice
-							-- #if SEASON_OF_DISCOVERY
 							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						-- #endif
 						i(12033),	-- Thaurissan Family Jewels
```

</details>

### Classic / Anniversary / Era

**Before:** [complete P3 Lua](p3/Blackrock%20Depths.lua). **After:** [p4/classic.lua](p4/classic.lua).

<details>
<summary>Read the complete final classic.lua</summary>

```lua
-- Generated comparison snapshot (P4): complete classic source.
-- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

local DETENTION_BLOCK = createHeader({
	readable = "Detention Block",
	icon = 236718,
	text = {
		en = [[~DUNGEON_FLOOR_BLACKROCKDEPTHS1]],
	},
});
local SHADOWFORGE_CITY = createHeader({
	readable = "Shadowforge City",
	icon = 236718,
	text = {
		en = [[~DUNGEON_FLOOR_BLACKROCKDEPTHS2]],
	},
});

local REPUTATION_FROM_CORES, REPUTATION_FROM_LEATHER, REPUTATION_FROM_DARKIRON = 500, 350, 75;	-- These are the reputation values after TBC, other than for Classic.

-- #if BEFORE TBC
-- Reputation in Classic
REPUTATION_FROM_CORES = 200;
REPUTATION_FROM_LEATHER = 150;
REPUTATION_FROM_DARKIRON = 50;
-- #else
-- #if AFTER CATA
-- Reputation in Cata Classic
-- CRIEVE NOTE: Not sure if it is intended, but the reputation gained from these skyrocketed in Cataclysm Classic. It might be unintentional.
REPUTATION_FROM_CORES = 2200;
REPUTATION_FROM_LEATHER = 1540;
REPUTATION_FROM_DARKIRON = 300;
-- #endif
-- #endif

ExportDB.OnTooltipDB.ThoriumBrotherhood = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		addRepInfo(tooltipInfo, reputation, "Turn In Blood & Cores (1x each)",]] .. REPUTATION_FROM_CORES .. [[, 42000);
		addRepInfo(tooltipInfo, reputation, "Turn In Core Leather (2x each)",]] .. REPUTATION_FROM_LEATHER .. [[, 42000);
		addRepInfo(tooltipInfo, reputation, "Turn In Dark Iron Ore (10x each)",]] .. REPUTATION_FROM_DARKIRON .. [[, 42000);
	end
end]];

-- Princess Moira's loot was removed in 4.0.3, but characters who completed The Princess's Surprise or The Princess Saved? still receive it.
local PRINCESS_MOIRA_LOOT_OnUpdate = [[function(t)
	if _.IsQuestFlaggedCompleted(4363) or _.IsQuestFlaggedCompleted(4004) then
		t.u = nil;
		t.rwp = nil;
	end
end]];

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(228, {	-- Blackrock Depths
		progressionKey = "brd.dungeon",
		-- #if BEFORE MOP
		lore = "Once the capital city of the Dark Iron dwarves, this volcanic labyrinth now serves as the seat of power for Ragnaros the Firelord. Ragnaros has uncovered the secret to creating life from stone and plans to build an army of unstoppable golems to aid him in conquering the whole of Blackrock Mountain. Obsessed with defeating Nefarian and his draconic minions, Ragnaros will go to any extreme to achieve final victory.",
		zoneTextAreaID = 1584,	-- Blackrock Depths
		-- #endif
		description = "The best route for a full clear is to enter Shadowforge City first time through the Dark Iron Highway. The Detention Block can be cleared whenever.",
		mapID = BLACKROCK_DEPTHS,
		coord = { 39.06, 18.12, BLACKROCK_MOUNTAIN_LEVEL3 },
		maps = { BLACKROCK_DEPTHS_LEVEL2 },
		lvl = 42,
		groups = {
			n(FACTIONS, {
				faction(FACTION_THORIUM_BROTHERHOOD, {	-- Thorium Brotherhood
					maps = { SEARING_GORGE },
					OnTooltip = [[_.OnTooltipDB.ThoriumBrotherhood]],
				}),
			}),
			n(QUESTS, {
				q(7604, {	-- A Binding Contract
					provider = { "i", 18628 },	-- Thorium Brotherhood Contract
					lvl = lvlsquish(60, 60, 20),
					groups = {
						i(18592, {	-- Plans: Sulfuron Hammer (RECIPE!)
						}),
						i(256673, {	-- Stormwind Forge (DECOR!)
							timeline = { ADDED_11_2_7 },
						}),
					},
				}),
				q(4264, {	-- A Crumpled Up Note
					-- #if BEFORE 3.0.2
					description = "After completing the Abandoned Hope quest, kill trash until this item drops for you. If your group has not yet killed the Dark Keeper, they have a fairly high chance to drop this item as well.",
					-- #endif
					sourceQuest = 4242,	-- Abandoned Hope
					provider = { "i", 11446 },	-- A Crumpled Up Note
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4282, {	-- A Shred of Hope
					sourceQuest = 4264,	-- A Crumpled Up Note
					qg = 9023,	-- Marshal Windsor
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 Marshal Windsor's Lost Information
							provider = { "i", 11464 },	-- Marshal Windsor's Lost Information
						}),
						objective(2, {	-- 0/1 Marshal Windsor's Lost Information
							provider = { "i", 11465 },	-- Marshal Windsor's Lost Information
						}),
					},
				}),
				q(4022, {	-- A Taste of Flame (1/2) (A)
					-- #if BEFORE 4.0.3
					description = "If you completed the quest 'Trinkets...' in Searing Gorge, you can complete this quest immediately without having to fight the elite dragon by bringing the Black Dragonflight Molt with you.",
					-- #endif
					sourceQuest = 3481,	-- Trinkets...
					altQuests = { 4023 },	-- A Taste of Flame
					qg = 9459,	-- Cyrus Therepentous
					coord = { 95.09, 31.56, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					cost = { { "i", 10575, 1 } },	-- Black Dragonflight Molt
					lvl = 52,
				}),
				q(4023, {	-- A Taste of Flame (1/2) (B)
					altQuests = { 4022 },	-- A Taste of Flame (1/2) (A)
					qg = 9459,	-- Cyrus Therepentous
					coord = { 95.09, 31.56, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					lvl = 52,
					groups = {
						objective(1, {	-- 0/1 Black Dragonflight Molt
							provider = { "i", 10575 },	-- Black Dragonflight Molt
							coord = { 93.2, 32.6, BURNING_STEPPES },
							cr = 9461,	-- Frenzied Black Drake <Cyrus's Minion>
						}),
					},
				}),
				q(4024, {	-- A Taste of Flame (2/2)
					sourceQuests = {
						4022,	-- A Taste of Flame (1/2) (A)
						4023,	-- A Taste of Flame (1/2) (B)
					},
					qg = 9459,	-- Cyrus Therepentous
					coord = { 95.09, 31.56, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					groups = {
						objective(1, {	-- 0/1 Encased Fiery Essence
							provider = { "i", 11230 },	-- Encased Fiery Essence
							cost = { { "i", 11231, 1 } },	-- Altered Black Dragonflight Molt
							cr = 9016,	-- Bael'Gar
						}),
						i(12066),	-- Shaleskin Cape
						i(12082),	-- Wyrmhide Spaulders
						i(12083),	-- Valconian Sash
					},
				}),
				q(4242, {	-- Abandoned Hope
					sourceQuest = 4241,	-- Marshal Windsor
					qg = 9023,	-- Marshal Windsor
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					groups = {
						i(12018),	-- Conservator Helm
						i(12021),	-- Shieldplate Sabatons
						i(12041),	-- Windshear Leggings
					},
				}),
				q(3981, {	-- Commander Gor'shak
					sourceQuest = 3906,	-- Disharmony of Flame
					qg = 9081,	-- Galamav the Marksman <Kargath Expeditionary Force>
					coord = { 5.8, 47.6, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
				}),
				q(3801, {	-- Dark Iron Legacy (1/2)
					-- #if BEFORE 4.0.3
					description = "You must be a ghost in order to interact with this quest giver. He's in the middle of Blackrock Mountain on the floating island on top of his tomb.",
					-- #endif
					qg = 8888,	-- Franclorn Forgewright
					timeline = { REMOVED_4_0_3 },
					maps = { BLACKROCK_MOUNTAIN },
					lvl = 48,
				}),
				q(3802, {	-- Dark Iron Legacy (2/2)
					sourceQuest = 3801,	-- Dark Iron Legacy (1/2)
					providers = {
						{ "n",   8888 },	-- Franclorn Forgewright
						{ "o", 164689 },	-- Monument of Franclorn Forgewright
					},
					timeline = { REMOVED_4_0_3 },
					maps = { BLACKROCK_MOUNTAIN },
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Ironfel
							provider = { "i", 10999 },	-- Ironfel
							cr = 9056,	-- Fineous Darkvire <Chief Architect>
						}),
						i(11000, {	-- Shadowforge Key
							timeline = { DELETED_4_0_3 },
						}),
					},
				}),
				q(3906, {	-- Disharmony of Flame
					qg = 9084,	-- Thunderheart <Kargath Expeditionary Force>
					coord = { 3.3, 48.3, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					maps = { BLACKROCK_MOUNTAIN },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Overmaster Pyron slain
							provider = { "n", 9026 },	-- Overmaster Pyron
						}),
					},
				}),
				q(3907, {	-- Disharmony of Fire
					sourceQuest = 3906,	-- Disharmony of Flame
					qg = 9084,	-- Thunderheart <Kargath Expeditionary Force>
					coord = { 3.3, 48.3, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Lord Incendius slain
							provider = { "n", 9017 },	-- Lord Incendius
						}),
						objective(2, {	-- 0/1 Tablet of Kurniya
							provider = { "i", 11126 },	-- Tablet of Kurniya
						}),
						i(12112),	-- Crypt Demon Bracers
						i(12114),	-- Nightfall Gloves
						i(12115),	-- Stalwart Clutch
						i(12113),	-- Sunborne Cape
					},
				}),
				q(4182, {	-- Dragonkin Menace
					-- #if BEFORE 3.0.2
					description = "You should finish this full quest chain up to Marshal Windsor before joining a Blackrock Depths group.",
					-- #endif
					qg = 9562,	-- Helendis Riverhorn
					coord = { 85.8, 69.0, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/15 Black Broodling slain
							provider = { "n", 7047 },	-- Black Broodling
						}),
						objective(2, {	-- 0/10 Black Dragonspawn slain
							provider = { "n", 7040 },	-- Black Dragonspawn
						}),
						objective(3, {	-- 0/1 Black Drake slain
							provider = { "n", 7044 },	-- Black Drake
						}),
						objective(4, {	-- 0/4 Black Wyrmkin slain
							provider = { "n", 7041 },	-- Black Wyrmkin
						}),
					},
				}),
				q(6646, {	-- Favor Amongst the Brotherhood, Blood of the Mountain
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 11382, 1 } },	-- Blood of the Mountain
					repeatable = true,
					lvl = 60,
				}),
				q(6645, {	-- Favor Amongst the Brotherhood, Core Leather
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 17012, 2 } },	-- Core Leather
					repeatable = true,
					lvl = 60,
				}),
				q(6642, {	-- Favor Amongst the Brotherhood, Dark Iron Ore
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 11370, 10 } },	-- Dark Iron Ore
					repeatable = true,
					lvl = 60,
				}),
				q(6643, {	-- Favor Amongst the Brotherhood, Fiery Core
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 17010, 1 } },	-- Fiery Core
					repeatable = true,
					lvl = 60,
				}),
				q(6644, {	-- Favor Amongst the Brotherhood, Lava Core
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 17011, 1 } },	-- Lava Core
					repeatable = true,
					lvl = 60,
				}),
				q(4122, {	-- Grark Lorkrub
					sourceQuests = 4082,	-- KILL ON SIGHT: High Ranking Dark Iron Officials
					qg = 9080,	-- Lexlort <Kargath Expeditionary Force>
					qi = 11286,	-- Thorium Shackles
					coord = { 5.9, 47.6, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
				}),
				q(4126, {	-- Hurley Blackbreath
					sourceQuest = 4128,	-- Ragnar Thunderbrew
					qg = 1267,	-- Ragnar Thunderbrew
					coord = { 46.8, 52.4, DUN_MOROGH },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 Lost Thunderbrew Recipe
							provider = { "i", 11312 },	-- Lost Thunderbrew Recipe
						}),
						i(12000),	-- Limb Cleaver
						i(11964),	-- Swiftstrike Cudgel
						i(12003),	-- Dark Dwarven Lager
					},
				}),
				q(4263, {	-- Incendius!
					sourceQuest = 4262,	-- Overmaster Pyron
					qg = 9561,	-- Jalinda Sprig
					coord = { 85.4, 70.1, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Lord Incendius slain
							provider = { "n", 9017 },	-- Lord Incendius
						}),
						i(12112),	-- Crypt Demon Bracers
						i(12114),	-- Nightfall Gloves
						i(12115),	-- Stalwart Clutch
						i(12113),	-- Sunborne Cape
					},
				}),
				q(4322, {	-- Jail Break!
					sourceQuest = 4282,	-- A Shred of Hope
					qg = 9023,	-- Marshal Windsor
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						i(12061),	-- Blade of Reckoning
						i(12062),	-- Skilled Fighting Blade
						i(12065),	-- Ward of the Elements
					},
				}),
				q(4341, {	-- Kharan Mighthammer
					sourceQuest = 3701,	-- The Smoldering Ruins of Thaurissan (2/2)
					qg = 2784,	-- King Magni Bronzebeard <Lord of Ironforge>
					coord = { 39.09, 56.19, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4342, {	-- Kharan's Tale
					sourceQuest = 4341,	-- Kharan Mighthammer
					qg = 9021,	-- Kharan Mighthammer
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4081, {	-- KILL ON SIGHT: Dark Iron Dwarves
					provider = { "o", 164867 },	-- WANTED
					coord = { 3.9, 47.4, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/10 Anvilrage Guardsman slain
							provider = { "n", 8891 },	-- Anvilrage Guardsman
						}),
						objective(2, {	-- 0/10 Anvilrage Warden slain
							provider = { "n", 8890 },	-- Anvilrage Warden
						}),
						objective(3, {	-- 0/10 Anvilrage Footman slain
							provider = { "n", 8892 },	-- Anvilrage Footman
						}),
					},
				}),
				q(4082, {	-- KILL ON SIGHT: High Ranking Dark Iron Officials
					sourceQuest = 4081,	-- KILL ON SIGHT: Dark Iron Dwarves
					provider = { "o", 164868 },	-- KILL ON SIGHT
					coord = { 3.9, 47.4, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/10 Anvilrage Medic slain
							provider = { "n", 8894 },	-- Anvilrage Medic
						}),
						objective(2, {	-- 0/10 Anvilrage Soldier slain
							provider = { "n", 8893 },	-- Anvilrage Soldier
						}),
						objective(3, {	-- 0/10 Anvilrage Officer slain
							provider = { "n", 8895 },	-- Anvilrage Officer
						}),
					},
				}),
				q(4134, {	-- Lost Thunderbrew Recipe
					sourceQuest = 4133,	-- Vivian Lagrave
					qg = 9078,	-- Shadowmage Vivian Lagrave <Kargath Expeditionary Force>
					coord = { 2.9, 47.8, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 Lost Thunderbrew Recipe
							provider = { "i", 11312 },	-- Lost Thunderbrew Recipe
						}),
						i(12000),	-- Limb Cleaver
						i(11964),	-- Swiftstrike Cudgel
					},
				}),
				q(4241, {	-- Marshal Windsor
					sourceQuest = 4224,	-- The True Masters (6/6)
					qg = 9560,	-- Marshal Maxwell
					coord = { 84.74, 69.02, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				-- Crieve NOTE: If a Blizzard Dev ever reads this, please know that this is why I have trust issues.
				-- #if BEFORE SL
				q(28258, {	-- Meet with Ander Germaine / Meet with Signilda Hardforge / [SL+]
					qgs = {
						17120,	-- Behomat
						4087,	-- Arias'ta Bladesinger
					},
					coords = {
						{ 56.4, 46.2, THE_EXODAR },	-- Behomat
						{ 56.4, 46.2, DARNASSUS },	-- Arias'ta Bladesinger
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { WARRIOR },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28302, {	-- Meet with Avaros Dawnglaive [SL+] / Meet with Sunwalker Atohmo
					qgs = {
						43795,	-- Aponi Brightmane
						20406,	-- Champion Cyssa Dawnrose
					},
					coords = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { PALADIN },
					races = { TAUREN },
					isBreadcrumb = true,
				}),
				q(28303, {	-- Meet With Avaros Dawnglaive [SL+] / Meet with Master Pyreanor
					qgs = {
						43795,	-- Aponi Brightmane
						16681,	-- Champion Bachi
						20406,	-- Champion Cyssa Dawnrose
					},
					coords = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 92.0, 37.2, SILVERMOON_CITY },	-- Champion Bachi
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { PALADIN },
					races = { BLOODELF },
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28260, {	-- Meet with Dalgrun Steelpine [SL+] / Meet with Wulf Hansreim
					qgs = {
						17122,	-- Vord
						5115,	-- Daera Brightspear
						4138,	-- Jeen'ra Nightrunner
					},
					coords = {
						{ 47.2, 88.4, THE_EXODAR },	-- Vord
						{ 47.2, 88.4, IRONFORGE },	-- Daera Brightspear
						{ 43.4, 26.0, DARNASSUS },	-- Jeen'ra Nightrunner
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { HUNTER },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				q(28259, {	-- Meet with Demisette Cloyce / Meet with Evelyn Thorn [SL+]
					qg = 5173,	-- Alexander Calder
					coord = { 50.2, 6.8, IRONFORGE },
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { WARLOCK },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #if AFTER SL
				q(28268, {	-- Meet with Ezul'aan [SL+] / Meet with Lord Grayson Shadowbreaker
					qgs = {
						16761,	-- Baatun
						35281,	-- Rukua
						5147,	-- Valgar Highforge
					},
					coords = {
						{ 39.0, 84.2, THE_EXODAR },	-- Baatun
						{ 43.6, 78.4, DARNASSUS },	-- Rukua
						{ 23.6, 5.6, IRONFORGE },	-- Valgar Highforge
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { PALADIN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28287, {	-- Meet with Farseer Umbrua / Meet with Mulric Boldrock [SL+]
					qgs = {
						52292,	-- Droha
						23127,	-- Farseer Javad
					},
					coords = {
						{ 43.8, 78.8, DARNASSUS },	-- Droha
						{ 55.2, 29.0, IRONFORGE },	-- Farseer Javad
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { SHAMAN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28300, {	-- Meet with Feenix Arcshine [SL+] / Meet with Ureda
					qgs = {
						3047,	-- Archmage Shymm
						4566,	-- Kaelystia Hatebringer
						16653,	-- Inethven
					},
					coords = {
						{ 22.6, 15.0, THUNDER_BLUFF },	-- Archmage Shymm
						{ 59.2, 19.7, SILVERMOON_CITY },	-- Inethven
						{ 85.2, 14.2, UNDERCITY },	-- Kaelystia Hatebringer
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { MAGE },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28263, {	-- Meet with Frazzle Frostfingers [SL+] / Meet with Maginor Dumas
					qgs = {
						16749,	-- Edirah
						50690,	-- Tarelvir
						5146,	-- Nittlebur Sparkfizzle
					},
					coords = {
						{ 26.2, 6.2, THE_EXODAR },	-- Edirah
						{ 37.6, 80.0, DARNASSUS },	-- Tarelvir
						{ 26.2, 6.2, IRONFORGE },	-- Nittlebur Sparkfizzle
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { MAGE },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28285, {	-- Meet with High Priestess Laurena / Meet with Patrice Lancaster [SL+]
					qgs = {
						11401,	-- Priestess Alathea
						11406,	-- High Priest Rohan
						16756,	-- Caedmos
					},
					coords = {
						{ 43.4, 79.2, DARNASSUS },	-- Priestess Alathea
						{ 25.0, 8.2, IRONFORGE },	-- High Priest Rohan
						{ 38.5, 50.9, THE_EXODAR },	-- Caedmos
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { PRIEST },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28301, {	-- Meet with Hretar Riverspeaker [SL+] / Meet with Terga Earthbreaker
					qgs = {
						51639,	-- Kador Cloudsong
						16661,	-- Gez'li
					},
					coords = {
						{ 22.2, 19.0, THUNDER_BLUFF },	-- Kador Cloudsong
						{ 71.8, 56.0, SILVERMOON_CITY },	-- Gez'li
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { SHAMAN },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER WOD
				q(28299, {	-- Meet with Kranosh [WOD+] / Meet with Kazak Darkscream [SL+] / Meet with Zevrost
					qgs = {
						43881,	-- Delano Morisett
						4563,	-- Kaal Soulreaper
						16648,	-- Zanien
						-- #if AFTER MID
						241482,	-- Zanien Silvermoon <Warlock Trainer>
						-- #endif
					},
					coords = {
						{ 25.2, 14.4, THUNDER_BLUFF },	-- Delano Morisett
						{ 73.2, 45.2, SILVERMOON_CITY },	-- Zanien
						{ 86.0, 15.6, UNDERCITY },	-- Kaal Soulreaper
						-- #if AFTER MID
						{ 50.9, 61.0, MAP.MIDNIGHT.SILVERMOON_CITY },	-- Zanien <Warlock Trainer>
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { WARLOCK },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if BEFORE SL
				q(28268, {	-- Meet with Lord Grayson Shadowbreaker / Meet with Ezul'aan [SL+]
					qgs = {
						16761,	-- Baatun
						35281,	-- Rukua
						5147,	-- Valgar Highforge
					},
					coords = {
						{ 39.0, 84.2, THE_EXODAR },	-- Baatun
						{ 43.6, 78.4, DARNASSUS },	-- Rukua
						{ 23.6, 5.6, IRONFORGE },	-- Valgar Highforge
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { PALADIN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28262, {	-- Meet with Lord Tony Romano / Meet with Veruca Darkstream [SL+]
					qgs = {
						4214,	-- Erion Shadewhisper
						5165,	-- Hulfdan Blackbeard
					},
					coords = {
						{ 40.0, 39.6, DARNASSUS },	-- Erion Shadewhisper
						{ 51.6, 14.6, IRONFORGE },	-- Hulfdan Blackbeard
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { ROGUE },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28263, {	-- Meet with Maginor Dumas / Meet with Frazzle Frostfingers [SL+]
					qgs = {
						16749,	-- Edirah
						50690,	-- Tarelvir
						5146,	-- Nittlebur Sparkfizzle
					},
					coords = {
						{ 26.2, 6.2, THE_EXODAR },	-- Edirah
						{ 37.6, 80.0, DARNASSUS },	-- Tarelvir
						{ 26.2, 6.2, IRONFORGE },	-- Nittlebur Sparkfizzle
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { MAGE },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28303, {	-- Meet with Master Pyreanor / Meet With Avaros Dawnglaive [SL+]
					qgs = {
						43795,	-- Aponi Brightmane
						16681,	-- Champion Bachi
						20406,	-- Champion Cyssa Dawnrose
					},
					coords = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 92.0, 37.2, SILVERMOON_CITY },	-- Champion Bachi
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { PALADIN },
					races = { BLOODELF },
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28287, {	-- Meet with Mulric Boldrock [SL+] / Meet with Farseer Umbrua
					qgs = {
						52292,	-- Droha
						23127,	-- Farseer Javad
					},
					coords = {
						{ 43.8, 78.8, DARNASSUS },	-- Droha
						{ 55.2, 29.0, IRONFORGE },	-- Farseer Javad
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { SHAMAN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28297, {	-- Meet with Ormak Grimshot / Meet with Tamanji [SL+]
					qgs = {
						39116,	-- Apolos
						3039,	-- Holt Thunderhorn
						16674,	-- Zandine
					},
					coords = {
						{ 57.4, 89.2, THUNDER_BLUFF },	-- Holt Thunderhorn
						{ 84.4, 28.0, SILVERMOON_CITY },	-- Zandine
						{ 49.6, 29.0, UNDERCITY },	-- Apolos
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { HUNTER },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28285, {	-- Meet with Patrice Lancaster [SL+] / Meet with High Priestess Laurena
					qgs = {
						11401,	-- Priestess Alathea
						11406,	-- High Priest Rohan
						16756,	-- Caedmos
					},
					coords = {
						{ 43.4, 79.2, DARNASSUS },	-- Priestess Alathea
						{ 25.0, 8.2, IRONFORGE },	-- High Priest Rohan
						{ 38.5, 50.9, THE_EXODAR },	-- Caedmos
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { PRIEST },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28258, {	-- Meet with Signilda Hardforge [SL+] / Meet with Ander Germaine
					qgs = {
						17120,	-- Behomat
						4087,	-- Arias'ta Bladesinger
					},
					coords = {
						{ 56.4, 46.2, THE_EXODAR },	-- Behomat
						{ 56.4, 46.2, DARNASSUS },	-- Arias'ta Bladesinger
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { WARRIOR },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28302, {	-- Meet with Sunwalker Atohmo / Meet with Avaros Dawnglaive [SL+]
					qgs = {
						43795,	-- Aponi Brightmane
						20406,	-- Champion Cyssa Dawnrose
					},
					coords = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { PALADIN },
					races = { TAUREN },
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28297, {	-- Meet with Tamanji [SL+] / Meet with Ormak Grimshot
					qgs = {
						39116,	-- Apolos
						3039,	-- Holt Thunderhorn
						16674,	-- Zandine
					},
					coords = {
						{ 57.4, 89.2, THUNDER_BLUFF },	-- Holt Thunderhorn
						{ 84.4, 28.0, SILVERMOON_CITY },	-- Zandine
						{ 49.6, 29.0, UNDERCITY },	-- Apolos
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { HUNTER },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if BEFORE SL
				q(28301, {	-- Meet with Terga Earthbreaker / Meet with Hretar Riverspeaker [SL+]
					qgs = {
						51639,	-- Kador Cloudsong
						16661,	-- Gez'li
					},
					coords = {
						{ 22.2, 19.0, THUNDER_BLUFF },	-- Kador Cloudsong
						{ 71.8, 56.0, SILVERMOON_CITY },	-- Gez'li
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { SHAMAN },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if BEFORE SL
				q(28300, {	-- Meet with Ureda / Meet with Feenix Arcshine [SL+]
					qgs = {
						3047,	-- Archmage Shymm
						4566,	-- Kaelystia Hatebringer
						16653,	-- Inethven
					},
					coords = {
						{ 22.6, 15.0, THUNDER_BLUFF },	-- Archmage Shymm
						{ 53.0, 19.6, SILVERMOON_CITY },	-- Inethven
						{ 85.2, 14.2, UNDERCITY },	-- Kaelystia Hatebringer
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { MAGE },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28262, {	-- Meet with Veruca Darkstream [SL+] / Meet with Lord Tony Romano
					qgs = {
						4214,	-- Erion Shadewhisper
						5165,	-- Hulfdan Blackbeard
					},
					coords = {
						{ 40.0, 39.6, DARNASSUS },	-- Erion Shadewhisper
						{ 51.6, 14.6, IRONFORGE },	-- Hulfdan Blackbeard
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { ROGUE },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28260, {	-- Meet with Wulf Hansreim / Meet with Dalgrun Steelpine [SL+]
					qgs = {
						17122,	-- Vord
						5115,	-- Daera Brightspear
						4138,	-- Jeen'ra Nightrunner
					},
					coords = {
						{ 47.2, 88.4, THE_EXODAR },	-- Vord
						{ 47.2, 88.4, IRONFORGE },	-- Daera Brightspear
						{ 43.4, 26.0, DARNASSUS },	-- Jeen'ra Nightrunner
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { HUNTER },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE WOD
				q(28299, {	-- Meet with Zevrost / Meet with Kranosh [WOD+] / Meet with Kazak Darkscream [SL+]
					qgs = {
						43881,	-- Delano Morisett
						4563,	-- Kaal Soulreaper
						16648,	-- Zanien
					},
					coords = {
						{ 25.2, 14.4, THUNDER_BLUFF },	-- Delano Morisett
						{ 73.2, 45.2, SILVERMOON_CITY },	-- Zanien
						{ 86.0, 15.6, UNDERCITY },	-- Kaal Soulreaper
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { WARLOCK },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif






				q(4132, {	-- Operation: Death to Angerforge
					sourceQuest = 4121,	-- Precarious Predicament
					qg = 9077,	-- Warlord Goretooth <Kargath Expeditionary Force>
					coord = { 5.8, 47.5, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
					groups = {
						objective(1, {	-- 0/1 General Angerforge slain
							provider = { "n", 9033 },	-- General Angerforge
						}),
						i(12059),	-- Conqueror's Medallion
					},
				}),
				q(4262, {	-- Overmaster Pyron
					qg = 9561,	-- Jalinda Sprig
					coord = { 85.4, 70.1, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					maps = { BLACKROCK_MOUNTAIN },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Overmaster Pyron slain
							provider = { "n", 9026 },	-- Overmaster Pyron
						}),
					},
				}),
				q(4121, {	-- Precarious Predicament
					sourceQuest = 4122,	-- Grark Lorkrub
					qg = 9520,	-- Grark Lorkrub
					coord = { 40.2, 34.2, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
					groups = {
						objective(1, {	-- 0/1 Thorium Shackles
							provider = { "i", 11286 },	-- Thorium Shackles
						}),
						objective(2, {	-- Prisoner Transport
							provider = { "i", 11286 },	-- Thorium Shackles
						}),
					},
				}),
				q(4128, {	-- Ragnar Thunderbrew
					qg = 9540,	-- Enohar Thunderbrew
					coord = { 63.6, 20.6, BLASTED_LANDS },
					timeline = { REMOVED_4_0_3 },
					maps = { DUN_MOROGH },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = 50,
				}),
				q(4136, {	-- Ribbly Screwspigot
					sourceQuest = 4324,	-- Yuka Screwspigot
					qg = 9544,	-- Yuka Screwspigot
					coord = { 66.1, 21.9, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Ribbly's Head
							provider = { "i", 11313 },	-- Ribbly's Head
						}),
						i(11963),	-- Penance Spaulders
						i(12049),	-- Splintsteel Armor
						i(11865),	-- Rancor Boots
					},
				}),
				q(4295, {	-- Rocknot's Ale
					qg = 9503,	-- Private Rocknot
					cost = { { "i", 11325, 2 } },	-- Dark Iron Ale Mug
					repeatable = true,
				}),
				q(28401, {	-- Slaves of the Firelord (A)
					sourceQuest = 28287,	-- Meet with Farseer Umbrua / Meet with Mulric Boldrock [SL+]
					qgs = {
						-- #if AFTER SL
						164945,	-- Mulric Boldrock
						-- #else
						20407,	-- Farseer Umbrua
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 78.2, 70.9, STORMWIND_CITY },
						-- #else
						{ 64.6, 33.0, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { SHAMAN },
					races = ALLIANCE_ONLY,
					groups = {
						i(65640),	-- Mask of the Farseer
						i(65622),	-- Headcover of the Farseer
					},
				}),
				q(28465, {	-- Slaves of the Firelord (H)
					sourceQuest = 28301,	-- Meet with Terga Earthbreaker / Meet with Hretar Riverspeaker [SL+]
					qgs = {
						-- #if AFTER SL
						168628,	-- Hretar Riverspeaker <Shaman Trainer>
						-- #else
						72939,	-- Terga Earthbreaker
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 73.6, 43.3, ORGRIMMAR },
						-- #else
						{ 39.0, 47.4, ORGRIMMAR },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { SHAMAN },
					races = HORDE_ONLY,
					qi = 64312,	-- Totem of Freedom (QI!)
					groups = {
						i(65643),	-- Mask of the Speaker
						i(65630),	-- Headcover of the Speaker
					},
				}),
				q(28399, {	-- Stones of Binding (A)
					sourceQuest = 28259,	-- Meet with Demisette Cloyce / Meet with Evelyn Thorn [SL+]
					qgs = {
						-- #if AFTER SL
						164942,	-- Evelyn Thorn
						-- #else
						461,	-- Demisette Cloyce
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 79.5, 69.9, STORMWIND_CITY },
						-- #else
						{ 39.4, 84.8, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					classes = { WARLOCK },
					groups = {
						i(65621),	-- Horns of Justified Sins
					},
				}),
				q(28459, {	-- Stones of Binding (H)
					sourceQuest = 28299,	-- Meet with Zevrost / Meet with Kranosh [WOD+] / Meet with Kazak Darkscream [SL+]
					qgs = {
						-- #if AFTER SL
						168623,	-- Kazak Darkscream
						-- #ELSE
						88705,	-- Kranosh
						-- #ENDIF
					},
					coords = {
						-- #if AFTER SL
						{ 74.6, 47.4, ORGRIMMAR },
						-- #ELSE
						{ 49.0, 55.2, ORGRIMMAR },
						-- #ENDIF
					},
					timeline = { ADDED_4_0_3 },
					classes = { WARLOCK },
					races = HORDE_ONLY,
					groups = {
						i(65627),	-- Horns of the Left Hand Path
					},
				}),
				q(6402, {	-- Stormwind Rendezvous
					sourceQuest = 4322,	-- Jail Break!
					qg = 9560,	-- Marshal Maxwell
					coord = { 84.7, 69.0, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4361, {	-- The Bearer of Bad News
					sourceQuest = 4342,	-- Kharan's Tale
					qg = 9021,	-- Kharan Mighthammer
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(28406, {	-- The Dark Iron Army (A)
					sourceQuest = 28262,	-- Meet with Lord Tony Romano / Meet with Veruca Darkstream [SL+]
					qgs = {
						-- #if AFTER SL
						164946,	-- Veruca Darkstream
						-- #else
						13283,	-- Lord Tony Romano
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 78.7, 70.6, STORMWIND_CITY },
						-- #else
						{ 79.6, 60.8, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					classes = { ROGUE },
					groups = {
						i(65624),	-- SI:7 Special Issue Facemask
					},
				}),
				q(28463, {	-- The Dark Iron Army (H)
					sourceQuest = 28298,	-- Meet with Gordul (Cata+) / Meet with Thega Graveblade (SL+)
					qgs = {
						-- #if AFTER SL
						168598,	-- Thega Graveblade
						-- #else
						47233,	-- Gordul
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 75.4, 47.4, ORGRIMMAR },
						-- #else
						{ 44.6, 61.4, ORGRIMMAR },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { ROGUE },
					races = HORDE_ONLY,
					groups = {
						i(65629),	-- Facemask of the Shattered Hand
					},
				}),
				q(6501, {	-- The Dragon's Eye
					-- #if BEFORE 3.0.2
					description = "Go to Haleh in Winterspring. Use the blue rune on the ground inside the cave to reach her. Don't bother going to Dustwallow Marsh.",
					-- #endif
					sourceQuest = 6403,	-- The Great Masquerade
					qg = 1748,	-- Highlord Bolvar Fordragon
					qi = 16662,	-- Fragment of the Dragon's Eye
					coord = { 78.2, 18.1, STORMWIND_CITY },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4002, {	-- The Eastern Kingdoms
					sourceQuest = 4001,	-- What Is Going On? (2/2)
					qg = 4949,	-- Thrall <Warchief>
					coord = { 31.61, 37.83, ORGRIMMAR },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
				}),
				q(4362, {	-- The Fate of the Kingdom
					sourceQuest = 4361,	-- The Bearer of Bad News
					qg = 2784,	-- King Magni Bronzebeard <Lord of Ironforge>
					coord = { 39.09, 56.19, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 Emperor Dagran Thaurissan slain
							provider = { "n", 9019 },	-- Emperor Dagran Thaurissan
						}),
					},
				}),
				q(6403, {	-- The Great Masquerade
					-- #if BEFORE 3.0.2
					description = "This quest can be solo'd. Do NOT touch anything and let Bolvar take care of the dragons. They do heavy AOE, you will likely die unless you're in a raid group of 20+.",
					-- #endif
					sourceQuest = 6402,	-- Stormwind Rendezvous
					qg = 12580,	-- Reginald Windsor
					coord = { 64.7, 76.8, STORMWIND_CITY },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(28394, {	-- The Golem Lord's Creations (A)
					sourceQuest = 28260,	-- Meet with Wulf Hansreim / Meet with Dalgrun Steelpine [SL+]
					qgs = {
						-- #if AFTER SL
						164960,	-- Dalgrun Steelpine <Hunter Trainer>
						-- #else
						44247,	-- Wulf Hansreim
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 79.2, 71.2, STORMWIND_CITY },
						-- #else
						{ 79.0, 71.0, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { HUNTER },
					races = ALLIANCE_ONLY,
					groups = {
						i(65619),	-- Helm of the Crown
					},
				}),
				q(28461, {	-- The Golem Lord's Creations (H)
					sourceQuest = 28297,	-- Meet with Ormak Grimshot / Meet with Tamanji [SL+]
					qgs = {
						-- #if AFTER SL
						168551,	-- Tamanji
						-- #else
						3352,	-- Ormak Grimshot
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 73.8, 43.8, ORGRIMMAR },
						-- #else
						{ 63.8, 32.8, ORGRIMMAR },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { HUNTER },
					races = HORDE_ONLY,
					groups = {
						i(65628),	-- Helm of the Great Hunter
					},
				}),
				q(4286, {	-- The Good Stuff
					qg = 9177,	-- Oralius
					coord = { 84.6, 68.7, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/20 Dark Iron Fanny Pack
							provider = { "i", 11468 },	-- Dark Iron Fanny Pack
						}),
						i(11883),	-- A Dingy Fanny Pack
					},
				}),
				q(4123, {	-- The Heart of the Mountain
					qg = 9536,	-- Maxwort Uberglint
					coord = { 65.2, 23.9, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 The Heart of the Mountain
							provider = { "i", 11309 },	-- The Heart of the Mountain
						}),
					},
				}),
				q(7201, {	-- The Last Element
					sourceQuest = 3906,	-- Disharmony of Flame
					qg = 9078,	-- Shadowmage Vivian Lagrave <Kargath Expeditionary Force>
					coord = { 2.9, 47.76, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/10 Essence of the Elements
							provider = { "i", 11129 },	-- Essence of the Elements
						}),
						i(12038),	-- Lagrave's Seal
					},
				}),
				q(4201, {	-- The Love Potion
					qg = 9500,	-- Mistress Nagmara
					timeline = { REMOVED_4_0_3 },
					maps = { AZSHARA, UNGORO_CRATER },
					lvl = 50,
					groups = {
						objective(1, {	-- 0/4 Gromsblood
							provider = { "i", 8846 },	-- Gromsblood
						}),
						objective(2, {	-- 0/10 Giant Silver Vein
							provider = { "i", 11405 },	-- Giant Silver Vein
							coord = { 68.0, 17.0, AZSHARA },
							crs = {
								6146,	-- Cliff Breaker
								6147,	-- Cliff Thunderer
								6148,	-- Cliff Walker
							},
						}),
						objective(3, {	-- 0/1 Nagmara's Filled Vial
							provider = { "i", 11413 },	-- Nagmara's Filled Vial
							cost = { { "i", 11412, 1 } },	-- Nagmara's Vial
							coord = { 31.0, 49.0, UNGORO_CRATER },
						}),
						i(11962),	-- Manacle Cuffs
						i(11866),	-- Nagmara's Whipping Belt
					},
				}),
				q(4004, {	-- The Princess Saved?
					sourceQuest = 4003,	-- The Royal Rescue
					qg = 8929,	-- Princess Moira Bronzebeard <Princess of Ironforge>
					timeline = { REMOVED_4_0_3 },
					maps = { ORGRIMMAR },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						i(12545),	-- Eye of Orgrimmar
						i(12544),	-- Thrall's Resolve
					},
				}),
				q(4363, {	-- The Princess's Surprise
					sourceQuest = 4362,	-- The Fate of the Kingdom
					qg = 8929,	-- Princess Moira Bronzebeard <Princess of Ironforge>
					timeline = { REMOVED_4_0_3 },
					maps = { IRONFORGE },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						i(12548),	-- Magni's Will
						i(12543),	-- Songstone of Ironforge
					},
				}),
				q(28398, {	-- The Pyromancer's Grimoire (A)
					sourceQuest = 28263,	-- Meet with Maginor Dumas / Meet with Frazzle Frostfingers [SL+]
					qgs = {
						-- #if AFTER SL
						164955,	-- Frazzle Frostfingers
						-- #else
						331,	-- Maginor Dumas
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 80.0, 69.6, STORMWIND_CITY },
						-- #else
						{ 49.2, 87.6, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					classes = { MAGE },
					groups = {
						i(65620),	-- Hood of the Royal Wizard
					},
				}),
				q(28458, {	-- The Pyromancer's Grimoire (H)
					sourceQuest = 28300,	-- Meet with Ureda / Meet with Feenix Arcshine [SL+]
					qgs = {
						-- #if AFTER SL
						168626,	-- Feenix Arcshine
						-- #else
						47246,	-- Ureda
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 74.6, 43.5, ORGRIMMAR },
						-- #else
						{ 48.4, 62.6, ORGRIMMAR },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { MAGE },
					races = HORDE_ONLY,
					groups = {
						i(65626),	-- Hood of the Arcane Path
					},
				}),
				q(4061, {	-- The Rise of the Machines (1/3)
					qg = 9079,	-- Hierophant Theodora Mulvadania <Kargath Expeditionary Force>
					coord = { 3.02, 47.81, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					maps = { BURNING_STEPPES },
					races = HORDE_ONLY,
					lvl = 52,
					groups = {
						objective(1, {	-- 0/10 Fractured Elemental Shard
							provider = { "i", 11266 },	-- Fractured Elemental Shard
							crs = {
								7032,	-- Greater Obsidian Elemental
								8981,	-- Malfunctioning Reaver
								7039,	-- War Reaver
							},
						}),
					},
				}),
				q(4062, {	-- The Rise of the Machines (2/3)
					sourceQuest = 4061,	-- The Rise of the Machines (1/3)
					qg = 9079,	-- Hierophant Theodora Mulvadania <Kargath Expeditionary Force>
					qi = 11267,	-- Elemental Shard Sample
					coord = { 3.02, 47.81, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
				}),
				q(4063, {	-- The Rise of the Machines (3/3)
					sourceQuest = 4062,	-- The Rise of the Machines (2/3)
					qg = 2921,	-- Lotwil Veriatus
					coord = { 25.95, 44.87, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
					groups = {
						objective(1, {	-- 0/1 Head of Argelmach
							provider = { "i", 11268 },	-- Head of Argelmach
						}),
						objective(2, {	-- 0/10 Intact Elemental Core
							provider = { "i", 11269 },	-- Intact Elemental Core
						}),
						i(12110),	-- Raincaster Drape
						i(12109),	-- Azure Moon Amice
						i(12111),	-- Lavaplate Gauntlets
						i(12108),	-- Basaltscale Armor
					},
				}),
				q(4003, {	-- The Royal Rescue
					sourceQuest = 4002,	-- The Eastern Kingdoms
					qg = 4949,	-- Thrall <Warchief>
					coord = { 31.61, 37.83, ORGRIMMAR },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Emperor Dagran Thaurissan slain
							provider = { "n", 9019 },	-- Emperor Dagran Thaurissan
						}),
					},
				}),
				q(3702, {	-- The Smoldering Ruins of Thaurissan (1/2)
					qg = 8879,	-- Royal Historian Archesonus
					coord = { 38.37, 55.31, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(3701, {	-- The Smoldering Ruins of Thaurissan (2/2)
					sourceQuest = 3702,	-- The Smoldering Ruins of Thaurissan (1/2)
					qg = 8879,	-- Royal Historian Archesonus
					coord = { 38.37, 55.31, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					maps = { BURNING_STEPPES },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/12 Information Recovered
							provider = { "o", 153556 },	-- Thaurissan Relic
						}),
						i(12102),	-- Ring of the Aristocrat
					},
				}),
				q(4083, {	-- The Spectral Chalice
					description = "If you are a miner with 230 skill, speak with Gloom'rel to have him summon the Spectral Chalice.\n\nAfter you deposit the required items, speak to Gloom'rel again to learn how to smelt Dark Iron Ore.",
					provider = { "o", 164869 },	-- Spectral Chalice
					cost = {
						{ "i", 3577, 20 },	-- 20x Gold Bar
						{ "i", 7910, 2 },	-- 2x Star Ruby
						{ "i", 6037, 10 },	-- 10x Truesilver Bar
					},
					requireSkill = MINING,
					cr = 9037,	-- Gloom'rel
					lvl = 40,
					groups = {
						r(14891),	-- Smelt Dark Iron
					},
				}),
				q(4183, {	-- The True Masters (1/6)
					sourceQuest = 4182,	-- Dragonkin Menace
					qg = 9562,	-- Helendis Riverhorn
					qi = 11366,	-- Helendis Riverhorn's Letter
					coord = { 85.8, 69.0, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				q(4184, {	-- The True Masters (2/6)
					sourceQuest = 4183,	-- The True Masters (1/6)
					qg = 344,	-- Magistrate Solomon
					qi = 11367,	-- Solomon's Plea to Bolvar
					coord = { 30.0, 44.5, REDRIDGE_MOUNTAINS },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				q(4185, {	-- The True Masters (3/6)
					sourceQuest = 4184,	-- The True Masters (2/6)
					qg = 1748,	-- Highlord Bolvar Fordragon
					coord = { 78.2, 18.1, STORMWIND_CITY },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- Advice from Lady Prestor
							provider = { "n", 1749 },	-- Lady Katrana Prestor
						}),
					},
				}),
				q(4186, {	-- The True Masters (4/6)
					sourceQuest = 4185,	-- The True Masters (3/6)
					qg = 1748,	-- Highlord Bolvar Fordragon
					qi = 11368,	-- Bolvar's Decree
					coord = { 78.2, 18.1, STORMWIND_CITY },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				q(4223, {	-- The True Masters (5/6)
					sourceQuest = 4186,	-- The True Masters (4/6)
					qg = 344,	-- Magistrate Solomon
					coord = { 30.0, 44.5, REDRIDGE_MOUNTAINS },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				q(4224, {	-- The True Masters (6/6)
					sourceQuest = 4223,	-- The True Masters (5/6)
					qg = 9560,	-- Marshal Maxwell
					coord = { 84.74, 69.02, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- Ragged John's Story
							provider = { "n", 9563 },	-- Ragged John
							coord = { 65.0, 23.8, BURNING_STEPPES },
						}),
					},
				}),
				q(4133, {	-- Vivian Lagrave
					qg = 5204,	-- Apothecary Zinge <Royal Apothecary Society>
					coord = { 50.1, 68.0, UNDERCITY },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = 50,
				}),
				q(28405, {	-- Weapons of Darkness (A)
					sourceQuest = 28268,	-- Meet with Lord Grayson Shadowbreaker
					qgs = {
						-- #if AFTER SL
						164952,	-- Ezul'aan <Paladin Trainer>
						-- #else
						928,	-- Lord Grayson Shadowbreaker
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 79.2, 69.6, STORMWIND_CITY },
						-- #else
						{ 52.6, 45.0, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { PALADIN },
					races = ALLIANCE_ONLY,
					groups = {
						i(65623),	-- Helm of the Order
						i(65641),	-- Faceguard of the Order
						i(65646),	-- Headguard of the Order
					},
				}),
				q(28466, {	-- Weapons of Darkness (Tauren)
					sourceQuest = 28302,	-- Meet with Sunwalker Atohmo / Meet with Avaros Dawnglaive [SL+]
					qg = 44725,	-- Sunwalker Atohmo
					coord = { 45.2, 53.4, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PALADIN },
					races = { TAUREN },
					groups = {
						i(65631),	-- Helm of the Sunwalker
						i(65644),	-- Faceguard of the Sunwalker
						i(65647),	-- Headguard of the Sunwalker
						-- You get these when completing the quest
						i(141976, {	-- Headguard of the Order
							description = "May need to re-login to the game to properly trigger this collected from Blizzard.",
							timeline = { ADDED_7_0_3 },
						}),
						i(141977, {	-- Faceguard of the Order
							description = "May need to re-login to the game to properly trigger this collected from Blizzard.",
							timeline = { ADDED_7_0_3 },
						}),
						i(141978, {	-- Helm of the Order
							description = "May need to re-login to the game to properly trigger this collected from Blizzard.",
							timeline = { ADDED_7_0_3 },
						}),
					},
				}),
				q(28473, {	-- Weapons of Darkness (Blood Elf)
					sourceQuest = 28303,	-- Meet with Master Pyreanor / Meet With Avaros Dawnglaive [SL+]
					qgs = {
						23128,	-- Master Pyreanor
						-- #if AFTER SL
						168597,	-- Avaros Dawnglaive <Paladin Trainer>
						-- #endif
					},
					coord = { 49.2, 71.2, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PALADIN },
					races = { BLOODELF },
					groups = {
						i(65632),	-- Helm of the Order
						i(65645),	-- Faceguard of the Order
						i(65648),	-- Headguard of the Order
						i(25549),	-- Blood Knight Tabard
					},
				}),
				q(3982, {	-- What Is Going On? (1/2)
					sourceQuest = 3981,	-- Commander Gor'shak
					qg = 9020,	-- Commander Gor'shak <Kargath Expeditionary Force>
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
				}),
				q(4001, {	-- What Is Going On? (2/2)
					sourceQuest = 3982,	-- What Is Going On? (1/2)
					qg = 9020,	-- Commander Gor'shak <Kargath Expeditionary Force>
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- Information Gathered from Kharan
							provider = { "n", 9021 },	-- Kharan Mighthammer
						}),
					},
				}),
				q(4324, {	-- Yuka Screwspigot
					qg = 9706,	-- Yorba Screwspigot
					coord = { 67.0, 24.0, TANARIS },
					timeline = { REMOVED_4_0_3 },
					isBreadcrumb = true,
					lvl = 48,
				}),
				q(28393, {	-- A Dangerous Alliance [A]
					sourceQuest = 28258,	-- Meet with Ander Germaine / Meet with Signilda Hardforge / [SL+]
					qgs = {
						-- #if BEFORE SL
						914,	-- Ander Germaine
						-- #else
						164939,	-- Signilda Hardforge <Warrior Trainer>
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 80.3, 70.4, STORMWIND_CITY },
						-- #else
						{ 79.4, 69.0, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { WARRIOR },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65618),	-- Faceguard of the Crown
						i(65639),	-- Headguard of the Crown
					},
				}),
				q(28457, {	-- A Dangerous Alliance [H]
					sourceQuest = 28290,	-- Meet with Grezz Ragefist (Cata+) / Meet with Gormok Ogrefist (SL+)
					qg = 168596,	-- Gormok Ogrefist
					coord = { 73.6, 45.6, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { WARRIOR },
					races = HORDE_ONLY,
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65625),	-- Faceguard of the Horde
						i(65642),	-- Headguard of the Horde
					},
				}),
				-- #if AFTER SL
				q(28304, {	-- Journey to Orgrimmar [Undead] (SL+) / Meet with Dark Cleric Cecille (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { UNDEAD },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28307, {	-- Journey to Orgrimmar [Blood Elf] (SL+) / Meet with Tyelis (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { BLOODELF },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28308, {	-- Journey to Orgrimmar [Tauren] (SL+) / Meet with Seer Liwatha (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TAUREN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28309, {	-- Journey to Orgrimmar [Troll] (SL+) / Meet with Shadow-Walker Zuru (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TROLL },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28323, {	-- Journey to Orgrimmar [Goblin] (SL+) / Meet with Brother Silverhallow (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { GOBLIN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28323, {	-- Meet with Brother Silverhallow (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { GOBLIN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28304, {	-- Meet with Dark Cleric Cecille (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { UNDEAD },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28298, {	-- Meet with Gordul (Cata+) / Meet with Thega Graveblade (SL+)
					qgs = {
						16684,	-- Zelanis <Rogue Trainer>
						4584,	-- Gregory Charles <Rogue Trainer>
					},
					coords = {
						{ 79.4, 52.0, SILVERMOON_CITY },
						{ 84.6, 73.2, UNDERCITY },	-- Gregory Charles (Undercity)
					},
					timeline = { ADDED_4_0_3 },
					classes = { ROGUE },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28290, {	-- Meet with Gormok Ogrefist (SL+) / Meet with Grezz Ragefist (Cata+)
					qgs = {
						43009,	-- Alsudar the Bastion
						3042,	-- Sark Ragetotem
						4593,	-- Christoph Walker
					},
					coords = {
						{ 81.0, 37.8, SILVERMOON_CITY },	-- Alsudar the Bastion
						{ 57.2, 89.0, THUNDER_BLUFF },	-- Sark Ragetotem
						{ 47.2, 15.2, UNDERCITY },	-- Christoph Walker
					},
					timeline = { ADDED_4_0_3 },
					classes = { WARRIOR },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28290, {	-- Meet with Grezz Ragefist (Cata+) / Meet with Gormok Ogrefist (SL+)
					qgs = {
						43009,	-- Alsudar the Bastion
						3042,	-- Sark Ragetotem
						4593,	-- Christoph Walker
					},
					coords = {
						{ 81.0, 37.8, SILVERMOON_CITY },	-- Alsudar the Bastion
						{ 57.2, 89.0, THUNDER_BLUFF },	-- Sark Ragetotem
						{ 47.2, 15.2, UNDERCITY },	-- Christoph Walker
					},
					timeline = { ADDED_4_0_3 },
					classes = { WARRIOR },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28308, {	-- Meet with Seer Liwatha (Cata+) / Journey to Orgrimmar [Tauren] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TAUREN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28309, {	-- Meet with Shadow-Walker Zuru (Cata+) / Journey to Orgrimmar [Troll] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TROLL },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28298, {	-- Meet with Thega Graveblade (SL+) / Meet with Gordul (Cata+)
					qgs = {
						16684,	-- Zelanis <Rogue Trainer>
						4584,	-- Gregory Charles <Rogue Trainer>
					},
					coords = {
						{ 79.4, 52.0, SILVERMOON_CITY },
						{ 84.6, 73.2, UNDERCITY },	-- Gregory Charles (Undercity)
					},
					timeline = { ADDED_4_0_3 },
					classes = { ROGUE },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28307, {	-- Meet with Tyelis (Cata+) / Journey to Orgrimmar [Blood Elf] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { BLOODELF },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif

				q(28475, {	-- Twilight Scheming [Blood Elf]
					sourceQuest = 28307,	-- Meet with Tyelis (Cata+) / Journey to Orgrimmar [Blood Elf] (SL+)
					qg = 45337,	-- Tyelis
					coord = { 49.0, 71.0, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { BLOODELF },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65634),	-- Crown of the Sunchaser
					},
				}),
				q(28478, {	-- Twilight Scheming [Goblin]
					sourceQuest = 28323,	-- Meet with Brother Silverhallow (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					qg = 45347,	-- Brother Silverhallow
					coord = { 37.8, 87.4, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { GOBLIN },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65637),	-- Crown of Golden Worship
					},
				}),
				q(28474, {	-- Twilight Scheming [Undead]
					sourceQuest = 28304,	-- Meet with Dark Cleric Cecille (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					qg = 45339,	-- Dark Cleric Cecille
					coord = { 48.2, 72.8, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { UNDEAD },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65633),	-- Crown of Forsaken Faith
					},
				}),
				q(28476, {	-- Twilight Scheming [Tauren]
					sourceQuest = 28308,	-- Meet with Seer Liwatha (Cata+) / Journey to Orgrimmar [Tauren] (SL+)
					qg = 44735,	-- Seer Liwatha
					coord = { 45.4, 53.4, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TAUREN },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65635),	-- Crown of the Earthmother
						-- You get these when completing the quest
						i(141979),	-- Crown of the Hallowed
						i(141980),	-- Crown of the Hallowed
						i(141981),	-- Crown of the Hallowed
						i(141982),	-- Crown of the Hallowed
					},
				}),
				q(28477, {	-- Twilight Scheming [Troll]
					sourceQuest = 28309,	-- Meet with Shadow-Walker Zuru (Cata+) / Journey to Orgrimmar [Troll] (SL+)
					qg = 45137,	-- Shadow-Walker Zuru
					coord = { 35.4, 69.2, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TROLL },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65636),	-- Crown of the Shadow-Walker
					},
				}),
				q(28328, {	-- Twilight Scheming [Alliance]
					sourceQuest = 28285,	-- Meet with High Priestess Laurena / Meet with Patrice Lancaster [SL+]
					providers = {
						{ "n", 376 },	-- High Priestess Laurena
					},
					coords = {
						{ 49.6, 44.8, STORMWIND_CITY },
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = ALLIANCE_ONLY,
					groups = {
						i(65616),	-- Crown of the Hallowed
						-- you are supposed to get these when doing the quest, but i completed it on 2 characters and haven't received them :) possible unknown race requirement?
						-- Crieve note: The following items are still sourceless on WoWHead, so it's quite possible the intent was to make versions for Allied Races, but Blizzard realized that'd be dumb and smacked the intern that was doing the dumb.
						-- i(141979),	-- Crown of the Hallowed
						-- i(141980),	-- Crown of the Hallowed
						-- i(141981),	-- Crown of the Hallowed
						-- i(141982),	-- Crown of the Hallowed
					},
				}),

				q(27569, {	-- Dark Iron Tacticians
					sourceQuest = 27568,	-- Infilitrating Shadowforge City [Alliance]
					qg = 45894,	-- Prospector Seymour
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27568, {	-- Infiltrating Shadowforge City [Alliance]
					qg = 45891,	-- Oralius
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27582, {	-- Infiltrating Shadowforge City [Horde]
					qg = 45839,	-- Galamav the Marksman
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27565, {	-- Into the Prison [Alliance]
					qg = 45892,	-- Jalinda Sprig
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27579, {	-- Into the Prison [Horde]
					qg = 45821,	-- Tha'trak Proudtusk
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27585, {	-- The 109th Division
					sourceQuest = 27582,	-- Infiltrating Shadowforge City [Horde]
					qg = 45820,	-- Razal'blade
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27596, {	-- The Heart of the Mountain
					qg = 45850,	-- Maxwort Uberglint
					timeline = { ADDED_4_0_3 },
				}),
				q(27603, {	-- The Sealed Gate
					qg = 45849,	-- Tinkee Steamboil
					timeline = { ADDED_4_0_3 },
				}),
				q(27567, {	-- Twilight?! No! [Alliance]
					sourceQuest = 27565,	-- Into the Prison [Alliance]
					qg = 45898,	-- Kevin Dawson
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27581, {	-- Twilight?! No! [Horde]
					sourceQuest = 27579,	-- Into the Prison [Horde]
					qg = 45818,	-- Lexlort
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27578, {	-- Morgan's Fruition
					sourceQuest = 27573,	-- The Dark Iron Pact [Alliance]
					qg = 45890,	-- Marshal Maxwell
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					groups = {
						i(65956),	-- Maxwell's Cloak
						i(65932),	-- Thaurissan's Breastplate
						i(65980),	-- Dark Iron Band
					},
				}),
				q(27593, {	-- Rebirth of the K.E.F
					sourceQuest = 27591,	-- The Dark Iron Pact [Horde]
					qg = 45840,	-- Warlord Goretooth
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
					groups = {
						i(68054),	-- Dark Iron Band
						i(68052),	-- Kargath Cloak
						i(68053),	-- Thaurissan's Breastplate
					},
				}),
				q(27573, {	-- The Dark Iron Pact [Alliance]
					sourceQuest = 27571,	-- The Grim Guzzler [Alliance]
					qg = 45899,	-- Mountaineer Orfus
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27591, {	-- The Dark Iron Pact [Horde]
					sourceQuest = 27589,	-- The Grim Guzzler [Horde]
					qg = 45824,	-- Thunderheart
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27571, {	-- The Grim Guzzler [Alliance]
					sourceQuest = 27569,	-- Dark Iron Tacticians
					qg = 45888,	-- Mayara Brightwing
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27589, {	-- The Grim Guzzler [Horde]
					sourceQuest = 27585,	-- The 109th Division
					qg = 45817,	-- Hierophant Theodora Mulvadania
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
			}),
			n(TREASURES, {
				i(11614, {	-- Plans: Dark Iron Mail (RECIPE!)
					description = "|cFFFFD700Plans: Dark Iron Mail|r can spawn in one of four spots.\n\n|cFFFFFFFFLocation 1:|r Located in the |cFFFFD700West Garrison|r. After going up the ramp from where |cFFFFD700General Angerforge|r is located on your left are some tables. It will be located in the back corner where the Fireguard Destroyer is and two tables in front of it. This table is close to the table that has vases on it that is near the keg.\n\n|cFFFFFFFFLocation 2:|r In |cFFFFD700Golem Lord Argelmach's|r room. When you walk into the room it will be in the back left corner where in between barrels. There will be two barrels to the left and one barrel to the right of it.\n\n|cFFFFFFFFLocation 3:|r In |cFFFFD700The Manufactory|r, on a bench.\n\n|cFFFFFFFFLocation 4:|r After leaving the room with |cFFFFD700Ambassador Flamelash|r you will cross a bridge that leads into the |cFFFFD700Mold Foundry|r. Once you enter the room you will continue straight until you see the ramp. Instead of going down the ramp you will jump off the ledge to the right of the ramp. After landing on the ground you will see the plans located here.",
					provider = { "o", 173232 },	-- Blacksmithing Plans
				}),
				i(11615, {	-- Plans: Dark Iron Shoulders (RECIPE!)
					description = "|cFFFFD700Plans: Dark Iron Shoulders|r spawn in one of two spots.\n\n|cFFFFFFFFLocation 1:|r In |cFFFFD700General Angerforge's|r room. They are sitting on the bottom shelf next to the floating crystal.\n\n|cFFFFFFFFLocation 2:|r On the ground in the |cFFFFD700Detention Block|r. After passing Lexlort you will continue down into the room. When you come across the first split into two rooms you will enter the room on the left. They will be located on the seat behind the bench which is located next to the 3 red jugs.",
					provider = { "o", 173232 },	-- Blacksmithing Plans
				}),
				i(18235, {	-- Schematic: Field Repair Bot 74A (RECIPE!)
					description = "On the floor next to Golem Lord Argelmach.",
					provider = { "o", 179552 },	-- Schematic: Field Repair Bot 74A
				}),
			}),
			n(VENDORS, {
				n(12944, bubbleDownClassicRep(FACTION_THORIUM_BROTHERHOOD, {	-- Lokhtos Darkbargainer <The Thorium Brotherhood>
					{	-- Neutral
						i(18628, {	-- Thorium Brotherhood Contract
							description = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
							cost = { { "i", 17203, 1 } },	-- Sulfuron Ingot
							lvl = lvlsquish(60, 60, 20),
						}),
					},
					{	-- Friendly
						{ progressionKey = "brd.enchants", groups = { i(19444) } },	-- Formula: Enchant Weapon - Strength (RECIPE!)
						i(17022),	-- Pattern: Corehound Boots (RECIPE!)
						i(17018),	-- Pattern: Flarecore Gloves (RECIPE!)
						i(17023),	-- Pattern: Molten Helm (RECIPE!)
						i(17051),	-- Plans: Dark Iron Bracers (RECIPE!)
						{ progressionKey = "brd.later-loot", groups = { i(20761) } },	-- Recipe: Transmute Elemental Fire (RECIPE!)
					},
					{	-- Honored
						{ progressionKey = "brd.enchants", groups = { i(19448) } },	-- Formula: Enchant Weapon - Mighty Versatility / CLASSIC: Formula: Enchant Weapon - Mighty Spirit (RECIPE!)
						i(17025),	-- Pattern: Black Dragonscale Boots (RECIPE!)
						i(17017),	-- Pattern: Flarecore Mantle (RECIPE!)
						{ progressionKey = "brd.recipes", groups = { i(19219),	-- Pattern: Flarecore Robe (RECIPE!)
						i(19330) } },	-- Pattern: Lava Belt (RECIPE!)
						i(17060),	-- Plans: Dark Iron Destroyer (RECIPE!)
						{ progressionKey = "brd.recipes", groups = { i(19206) } },	-- Plans: Dark Iron Helm (RECIPE!)
						i(17059),	-- Plans: Dark Iron Reaver (RECIPE!)
						i(17049),	-- Plans: Fiery Chain Girdle (RECIPE!)

					},
					{	-- Revered
						{ progressionKey = "brd.enchants", groups = { i(19449) } },	-- Formula: Enchant Weapon - Mighty Intellect (RECIPE!)
						{ progressionKey = "brd.recipes", groups = { i(19331),	-- Pattern: Chromatic Gauntlets (RECIPE!)
						i(19332),	-- Pattern: Corehound Belt (RECIPE!)
						i(19220),	-- Pattern: Flarecore Leggings (RECIPE!)
						i(19333),	-- Pattern: Molten Belt (RECIPE!)
						i(19208),	-- Plans: Black Amnesty (RECIPE!)
						i(19209),	-- Plans: Blackfury (RECIPE!)
						i(19207) } },	-- Plans: Dark Iron Gauntlets (RECIPE!)
						i(17052),	-- Plans: Dark Iron Leggings (RECIPE!)
						i(17053),	-- Plans: Fiery Chain Shoulders (RECIPE!)
					},
					{	-- Exalted
						{ progressionKey = "brd.recipes", groups = { i(19211) } },	-- Plans: Blackguard (RECIPE!)
						{ progressionKey = "brd.dark-iron-recipes", groups = { i(20040) } },	-- Plans: Dark Iron Boots (RECIPE!)
						{ progressionKey = "brd.recipes", groups = { i(19210),	-- Plans: Ebon Hand (RECIPE!)
						i(19212, {	-- Plans: Nightfall (RECIPE!)
						}) } },
					},
				})),
				n(9499, {	-- Plugger Spazzring
					i(15759, {	-- Pattern: Black Dragonscale Breastplate (RECIPE!)
					}),
					i(13483),	-- Recipe: Transmute Fire to Earth (RECIPE!)
					i(11325),	-- Dark Iron Ale Mug
				}),
				n(45843, {	-- Yuka Screwspigot <Engineering Supplies>
					timeline = { ADDED_4_0_1 },
					groups = {
						i(10602),	-- Schematic: Deadly Scope (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(11468),	-- Dark Iron Fanny Pack
				i(18945),	-- Dark Iron Residue
				{ progressionKey = "brd.later-loot", groups = { i(22528) } },	-- Dark Iron Scraps
				i(11129),	-- Essence of the Elements
				i(11269, {	-- Intact Elemental Core
					crs = {
						8908,	-- Molten War Golem
						8906,	-- Ragereaver Golem
						8905,	-- Warbringer Construct
						8907,	-- Wrath Hammer Construct
					},
				}),
				i(15781, {	-- Pattern: Black Dragonscale Leggings (RECIPE!)
					cr = 8903,	-- Anvilrage Captain
				}),
				i(15770, {	-- Pattern: Black Dragonscale Shoulders (RECIPE!)
					cr = 8898,	-- Anvilrage Marshal
				}),
				i(11611, {	-- Plans: Dark Iron Sunderer (RECIPE!)
					crs = {
						9554,	-- Hammered Patron
						10043,	-- Ribbly's Crony
					},
				}),
				i(16049, {	-- Schematic: Dark Iron Bomb (RECIPE!)
					cr = 8920,	-- Weapon Technician
				}),
				i(16048, {	-- Schematic: Dark Iron Rifle (RECIPE!)
					cr = 8897,	-- Doomforge Craftsman
				}),
				i(18654, {	-- Schematic: Gnomish Alarm-o-Bot (RECIPE!)
					cr = 8920,	-- Weapon Technician
				}),
				i(16053, {	-- Schematic: Master Engineer's Goggles
					-- #if AFTER 2.0.1
					description = "This is now learned from the trainer.",
					-- #endif
					timeline = { REMOVED_2_0_1 },
					cr = 8900,	-- Doomforge Arcanasmith
				}),
				i(18661, {	-- Schematic: World Enlarger (RECIPE!)
					cr = 8920,	-- Weapon Technician
				}),
				i(12546),	-- Aristocratic Cuffs
				i(12555),	-- Battlechaser's Greaves
				i(12552),	-- Blisterbane Wrap
				i(12549),	-- Braincage
				i(12535),	-- Doomforged Straightedge
				i(12542),	-- Funeral Pyre Vestment
				i(12547),	-- Mar Alom's Grip
				i(11078),	-- Relic Coffer Key
				i(12527),	-- Ribsplitter
				i(12550),	-- Runed Golem Shackles
				i(12531),	-- Searing Needle
				i(12532),	-- Spire of the Stoneshaper
				i(12551),	-- Stoneshield Cloak
				i(12528),	-- The Judge's Gavel
			}),
			n(DETENTION_BLOCK, {
				e(369, {	-- High Interrogator Gerstahn
					creatureID = 9018,
					groups = {
						i(11140),	-- Prison Cell Key
						i(11625, {	-- Enthralled Sphere
						}),
						i(11626),	-- Blackveil Cape
						i(11624),	-- Kentic Amice
						{ progressionKey = "brd.later-loot", groups = { i(22240) } },	-- Greaves of Withering Despaire
					},
				}),
				e(370, {	-- Lord Roccor
					creatureID = 9025,
					groups = {
						i(45050, {	-- Formula: Smoking Heart of the Mountain [BOP] (RECIPE!)
							timeline = { ADDED_3_1_0 },
						}),
						i(11813, {	-- Formula: Smoking Heart of the Mountain [BOE] (RECIPE!)
							timeline = { REMOVED_3_1_0 },
						}),
						i(11631),	-- Stoneshell Guard
						i(11632),	-- Earthslag Shoulders
						{ progressionKey = "brd.later-loot", groups = { i(22234) } },	-- Mantle of Lost Hope
						-- #if AFTER 7.3.2
						{ progressionKey = "brd.later-loot", groups = { i(22271) } },	-- Leggings of Frenzied Magic
						i(11679),	-- Rubicund Armguards
						-- #endif
						{ progressionKey = "brd.later-loot", groups = { i(22397, {	-- Idol of Ferocity
							timeline = { REMOVED_5_0_4 },
						}) } },
						i(11630, {	-- Rockshard Pellets
							timeline = { DELETED_4_0_1 },
						}),
					},
				}),
				e(371, {	-- Houndmaster Grebmar
					creatureID = 9319,
					groups = {
						i(11628, {	-- Houndmaster's Bow
						}),
						i(11629, {	-- Houndmaster's Rifle
						}),
						i(11627),	-- Fleetfoot Greaves
						i(11623),	-- Spritecaster Cape
					},
				}),
				e(372, {	-- Ring of Law
					description = "Approaching the center of the ring will start an event, and the High Justice will appear and approach one of the gates and release three waves of non-elite enemies, followed by one of six possible mini-bosses.",
					creatureID = 10096,	-- High Justice Grimstone
					groups = {
						n(9031, {	-- Anub'shiah
							i(11677, {	-- Graverot Cape
							}),
							i(11678),	-- Carapace of Anub'shiah
							i(11731, {	-- Savage Gladiator Greaves
							}),
							i(11675),	-- Shadefiend Boots
						}),
						n(9029, {	-- Eviscerator
							i(11685, {	-- Splinthide Shoulders
							}),
							-- #if BEFORE 7.3.2
							i(11679),	-- Rubicund Armguards
							-- #endif
							i(11730, {	-- Savage Gladiator Grips
							}),
							i(11686),	-- Girdle of Beastial Fury
						}),
						n(9027, {	-- Gorosh the Dervish
							{ progressionKey = "brd.later-loot", groups = { i(22266, {	-- Flarethorn
							}) } },
							i(11726, {	-- Savage Gladiator Chain
							}),
							-- #if AFTER 7.3.2
							i(11662),	-- Ban'thok Sash
							-- #endif
							{ progressionKey = "brd.later-loot", groups = { i(22271),	-- Leggings of Frenzied Magic
							i(22257) } },	-- Bloodclot Band
						}),
						n(9028, {	-- Grizzle
							i(11610),	-- Plans: Dark Iron Pulverizer (RECIPE!)
							i(11702),	-- Grizzle's Skinner
							i(11722, {	-- Dregmetal Spaulders
							}),
							i(11703),	-- Stonewall Girdle
							{ progressionKey = "brd.later-loot", groups = { i(22270) } },	-- Entrenching Boots
						}),
						n(9032, {	-- Hedrum the Creeper
							i(11635),	-- Hookfang Shanker
							i(11729, {	-- Savage Gladiator Helm
							}),
							i(11633),	-- Spiderfang Carapace
							i(11634, {	-- Silkweb Gloves
							}),
						}),
						n(9030, {	-- Ok'thor the Breaker
							i(11665),	-- Ogreseer Fists
							i(11662),	-- Ban'thok Sash
							i(11728),	-- Savage Gladiator Leggings
							i(11824, {	-- Cyclopean Band
							}),
						}),
						{ progressionKey = "brd.dungeon-set-2", groups = { n_conditional(16059, {	-- Theldren
							description = "Requires Banner of Provocation (Dungeon Set 2 Questline) to summon this boss. Loot the grey chest on the grey grate after killing the mobs. You must use the banner before the non-elites are killed.\nSummon Location: Ring of Law.",
							timeline = { REMOVED_4_0_3 },
							-- #if AFTER 4.0.3
							sourceQuest = 9015,	-- The Challenge
							u_sqs = true,	-- remove the u flag if sourcequests are completed
							-- #endif
							providers = {
								{ "i", 21986 },	-- Banner of Provocation
								{ "o", 181074 },	-- Arena Spoils
							},
							groups = {
								i(22047),	-- Top Piece of Lord Valthalak's Amulet
								i(22305, {	-- Ironweave Mantle
								}),
								i(22317),	-- Lefty's Brass Knuckle
								i(22318),	-- Malgen's Long Bow
								i(22330),	-- Shroud of Arcane Mastery
							},
						}) } },
					},
				}),
				e(377, {	-- Bael'gar
					creatureID = 9016,
					groups = {
						i(11803),	-- Force of Magma
						i(11805),	-- Rubidium Hammer
						i(11807),	-- Sash of the Burning Heart
						i(11802),	-- Lavacrest Leggings
						-- #if AFTER 7.3.2
						{ progressionKey = "brd.later-loot", groups = { i(22257) } },	-- Bloodclot Band
						-- #endif
					},
				}),
				e(374, {	-- Lord Incendius
					creatureID = 9017,
					groups = {
						{ progressionKey = "brd.later-loot", groups = { i(21987) } },	-- Incendicite of Incendius
						i(11126),	-- Tablet of Kurniya
						i(11766),	-- Flameweave Cuffs
						i(11764),	-- Cinderhide Armsplints
						i(11765),	-- Pyremail Wristguards
						i(11767),	-- Emberplate Armguards
						i(11768, {	-- Incendic Bracers
							-- #if BEFORE 10.1.7
							-- #if AFTER 2.0.1
							description = "This item appears to have been removed with TBC Prepatch. Please @Crieve if you get it to drop.",
							isBounty = true,
							-- #endif
							-- #endif
							timeline = { REMOVED_2_0_1, ADDED_10_1_7 },	-- 07.09.2023 ATT DISCORD
						}),
						{ progressionKey = "brd.darkmoon-cards", groups = { i(19268) } },	-- Ace of Elementals
					},
				}),
				e(376, {	-- Fineous Darkvire <Chief Architect>
					creatureID = 9056,
					groups = {
						i(11840),	-- Master Builder's Shirt
						i(11839),	-- Chief Architect's Monocle
						{ progressionKey = "brd.later-loot", groups = { i(22223) } },	-- Foreman's Head Protector
						i(151406, {	-- Belt of the Eminent Mason
							timeline = { ADDED_7_3_0 },
						}),
						i(11842),	-- Land Surveyor's Mantle
						i(11841),	-- Senior Designer's Pantaloons
					},
				}),
			}),
			n(SHADOWFORGE_CITY, {
				e(373, {	-- Pyromancer Loregrain
					creatureID = 9024,
					groups = {
						i(11207),	-- Formula: Enchant Weapon - Fiery Weapon (RECIPE!)
						i(11750, {	-- Kindling Stave
						}),
						i(11748),	-- Pyric Caduceus
						i(11747, {	-- Flamestrider Robes
						}),
						i(11749, {	-- Searingscale Leggings
						}),
						-- #if AFTER 7.3.2
						{ progressionKey = "brd.later-loot", groups = { i(22270) } },	-- Entrenching Boots
						-- #endif
					},
				}),
				e(375, {	-- Warder Stilgiss
					creatureID = 9041,
					groups = {
						i(11784, {	-- Arbiter's Blade
						}),
						i(11782),	-- Boreal Mantle
						{ progressionKey = "brd.later-loot", groups = { i(22241) } },	-- Dark Warder's Pauldrons
						i(11783),	-- Chillsteel Girdle
						i(151405, {	-- Cold-Forged Chestplate
							timeline = { ADDED_7_3_0 },
						}),
					},
				}),
				n(9042, {	-- Verek
					i(11755),	-- Verek's Collar
					{ progressionKey = "brd.later-loot", groups = { i(22242) } },	-- Verek's Leash
				}),
				n(9476, {	-- Watchman Doomgrip
					description = "Watchman Doomgrip spawns once all twelve Relic Coffers have been opened using Relic Coffer Keys that can drop from any Dark Iron mob in the instance. Upon defeating all enemies, a hidden door beneath the Dark Coffer will open allowing access to the Secret Safe as well as the Heart of the Mountain.",
					cost = { { "i", 11078, 12 } },	-- Relic Coffer Key
					groups = {
						o(160836, {	-- Relic Coffer
							description = "Relic Coffer Keys can drop from any Dark Iron mob in the instance.",
							groups = {
								i(11946),	-- Fire Opal Necklace
								i(11945),	-- Dark Iron Ring
								i(11938),	-- Sack of Gems
								i(11966),	-- Small Sack of Coins
								i(11937),	-- Fat Sack of Coins
								i(11944),	-- Dark Iron Baby Booties
							},
						}),
						o(165554, {	-- Heart of the Mountain
							description = "This spawns after defeating Watchman Doomgrip.",
							groups = {
								i(11309),	-- The Heart of the Mountain
							},
						}),
						o(161495, {	-- Secret Safe
							description = "This spawns after defeating Watchman Doomgrip.",
							groups = {
								-- #if BEFORE 1.13.5
								i(11923),	-- The Hammer of Grace
								i(11920),	-- Wraith Scythe
								i(11926),	-- Deathdealer Breastplate
								i(11929),	-- Haunting Specter Leggings
								-- #endif
								{ progressionKey = "brd.later-loot", groups = { i(22256),	-- Mana Shaping Handwraps
								i(22205),	-- Black Steel Bindings
								i(22254),	-- Wand of Eternal Light
								i(22255) } },	-- Magma Forged Band
							},
						}),
					},
				}),
				o(164820, {	-- Dark Keeper Nameplate
					description = "Inspect the portrait in front of the coffer room. Opening it will tell you the name of the Dark Keeper you need and where he is located. Only one will spawn each reset.\n\n|cff3399ffDark Keepers:|r\n\n|cFFFFD700Dark Keeper Bethek|r spawns inside the vault room as soon as you open the portrait.\n\n|cFFFFD700Dark Keeper Ofgut|r is located in |cFFFFD700General Angerforge's|r room. When you come down the stairs and are looking straight at |cFFFFD700General Angerforge|r, you will see him located directly to the left near the crystal.\n\n|cFFFFD700Dark Keeper Pelver|r is located in |cFFFFD700The Domicile|r. For quicker access, you can take any of the mole machines and click |cFFFFD700Into the Domicile|r and he will be on top of it.\n\n|cFFFFD700Dark Keeper Uggel|r is quite a close walk; go outside the vault room and turn right to the last room. He is near the entrance where all the golems are.\n\n|cFFFFD700Dark Keeper Vorfalk|r is located at the |cFFFFD700Grim Guzzler|r. When you first enter the room after coming from the bridge, he will be located on your right side in the corner (in front of the band's playing spot).\n\n|cFFFFD700Dark Keeper Zimrel|r is located on the second floor of the |cFFFFD700Ring of Law|r. When entering this floor from the |cFFFFD700East Garrison|r (room with the Shadowforge Lock), you will go around to your right and he will be sitting in the middle of the seats.",
					crs = {
						9438,	-- Dark Keeper Bethek
						9442,	-- Dark Keeper Ofgut
						9443,	-- Dark Keeper Pelver
						9439,	-- Dark Keeper Uggel
						9437,	-- Dark Keeper Vorfalk
						9441,	-- Dark Keeper Zimrel
					},
					groups = {
						o(160845, {	-- Dark Coffer
							sharedDescription =
								-- #if BEFORE 4.0.3
								"Is used to turn in Librams.",
								-- #else
								"Was used to turn in Librams prior to Cataclysm, is now without any purpose.",
								-- #endif
							cost = { { "i", 11197, 1 } },	-- Dark Keeper Key
							groups = {
								i(11752),	-- Black Blood of the Tormented
								i(11751),	-- Burning Essence
								i(11753),	-- Eye of Kajal
							},
						}),
						i(11197),	-- Dark Keeper Key
					},
				}),
				e(378, {	-- General Angerforge
					creatureID = 9033,
					groups = {
						i(11464),	-- Marshal Windsor's Lost Information
						i(11816, {	-- Angerforge's Battle Axe
						}),
						-- #if AFTER 7.3.2
						i(11932),	-- Guiding Stave of Wisdom
						-- #endif
						i(11817, {	-- Lord General's Sword
						}),
						-- #if AFTER 7.3.2
						i(12557, {	-- Ebonsteel Spaulders
							timeline = { REMOVED_4_0_3, ADDED_8_1_0 },
						}),
						-- #endif
						i(11820),	-- Royal Decorated Armor
						i(11821),	-- Warstrife Leggings
						i(11810),	-- Force of Will
						-- #if BEFORE 1.13.5
						i(11815),	-- Hand of Justice
						-- #endif
					},
				}),
				e(379, {	-- Golem Lord Argelmach
					creatureID = 8983,
					groups = {
						i(11268),	-- Head of Argelmach
						i(11465),	-- Marshal Windsor's Lost Information
						{ progressionKey = "brd.tbc-jewelcrafting", groups = { i(21956, {	-- Design: Dark Iron Scorpid (RECIPE!)
							timeline = { ADDED_2_0_5 },
						}) } },
						i(11823, {	-- Luminary Kilt
						}),
						i(11822, {	-- Omnicast Boots
						}),
						i(11669),	-- Naglering
						i(11819, {	-- Second Wind
						}),
					},
				}),
				e(380, {	-- Hurley Blackbreath
					creatureID = 9537,
					provider = { "o", 164911 },	-- Thunderbrew Lager Keg
					description = "Break the 3 Thunderbrew Lager Kegs to start the encounter.",
					groups = {
						i(11312),	-- Lost Thunderbrew Recipe
						-- #if AFTER 7.3.2
						i(11922),	-- Blood-Etched Blade
						-- #endif
						i(18044),	-- Hurley's Tankard
						i(11735),	-- Ragefury Eyepatch
						i(151408, {	-- Dark Iron Dredger's Pauldrons
							timeline = { ADDED_7_3_0 },
						}),
						i(151407, {	-- Blackened Pit Trousers
							timeline = { ADDED_7_3_0 },
						}),
						i(18043),	-- Coal Miner Boots
						{ progressionKey = "brd.later-loot", groups = { i(22275) } },	-- Firemoss Boots
					},
				}),
				e(9543, {	-- Ribbly Screwspigot
					creatureID = 9543,
					description = "Speak to him to start the encounter.",
					groups = {
						i(11313),	-- Ribbly's Head
						i(11612, {	-- Plans: Dark Iron Plate (RECIPE!)
						}),
						i(2663, {	-- Ribbly's Bandolier
							timeline = { REMOVED_4_0_1 },
						}),
						i(2662, {	-- Ribbly's Quiver
							timeline = { REMOVED_4_0_1 },
						}),
						i(11742),	-- Wayfarer's Knapsack
					},
				}),
				e(383, {	-- Plugger Spazzring
					creatureID = 9499,
					groups = {
						i(18653),	-- Schematic: Goblin Jumper Cables XL (RECIPE!)
						i(12791),	-- Barman Shanker
						i(12793),	-- Mixologist's Tunic
						i(151410, {	-- Bottle-Popper Ring
							timeline = { ADDED_7_3_0 },
						}),
					},
				}),
				{ progressionKey = "brd.dark-iron-brewer", groups = { n(28067, {	-- Dark Iron Brewer
					description = "Speak to him until he passes out, a Mug will appear on the ground",
					timeline = { ADDED_2_4_3 },
					groups = {
						o(190394, {	-- Mug of Dire Brew
							i(38320),	-- Dire Brew
						}),
					},
				}) } },
				e(381, {	-- Phalanx
					creatureID = 9502,
					description = "Private Rocknot must be sent into a drunken rage to aggro Phalanx.\nTo do that, give him 6 dark iron ale mugs, which can be bought from Plugger Spazzring.\nRocknot will break one of the kegs, it'll blow the door open and Phalanx will be angry.",
					groups = {
						i(11744),	-- Bloodfist
						i(11743, {	-- Rockfist
							-- #if BEFORE 10.1.7
							-- #if AFTER 2.0.1
							description = "This item appears to have been removed with TBC Prepatch. Please @Crieve if you get it to drop.",
							isBounty = true,
							-- #endif
							-- #endif
							timeline = { REMOVED_2_0_1, ADDED_10_1_7 },
						}),
						-- #if BEFORE 7.3.2
						i(11746),	-- Golem Skull Helm
						-- #endif
						{ progressionKey = "brd.later-loot", groups = { i(22212),	-- Golem Fitted Pauldrons
						i(22204) } },	-- Wristguards of Renown
						i(11745),	-- Fists of Phalanx
						i(151409, {	-- Ferrous Cord
							timeline = { ADDED_7_3_0 },
						}),
					},
				}),
				e(384, {	-- Ambassador Flamelash
					creatureID = 9156,
					groups = {
						i(11809, {	-- Flame Wrath
						}),
						i(11808, {	-- Circle of Flame
						}),
						i(11812, {	-- Cape of the Fire Salamander
						}),
						i(11814, {	-- Molten Fists
						}),
						i(11832, {	-- Burst of Knowledge
						}),
					},
				}),
				n(8923, {	-- Panzor the Invincible
					description = "This is a Rare Creature and, as such, is not always present.",
					groups = {
						i(11786),	-- Stone of the Earth
						i(11785),	-- Rock Golem Bulwark
						i(11787),	-- Shalehusk Boots
						{ progressionKey = "brd.later-loot", groups = { i(22245) } },	-- Soot Encrusted Footwear
					},
				}),
				e(385, {	-- The Seven
					creatureID = 9039,	-- Doom'rel
					provider = { "o", 169243 },	-- Chest of The Seven
					modelScale = 3,
					groups = {
						-- #if BEFORE 7.3.2
						i(11922, {	-- Blood-Etched Blade
						}),
						-- #endif
						i(11921, {	-- Impervious Giant
						}),
						i(11923),	-- The Hammer of Grace
						i(11920, {	-- Wraith Scythe
						}),
						i(11925, {	-- Ghostshroud
						}),
						i(11926, {	-- Deathdealer Breastplate
						}),
						i(11929),	-- Haunting Specter Leggings
						i(11927, {	-- Legplates of the Eternal Guardian
						}),
					},
				}),
				e(386, {	-- Magmus
					creatureID = 9938,
					groups = {
						{ progressionKey = "brd.later-loot", groups = { i(22208, {	-- Lavastone Hammer
						}) } },
						i(11935, {	-- Magmus Stone
						}),
						i(11746),	-- Golem Skull Helm
						i(151411, {	-- Molten-Warden Leggings
							timeline = { ADDED_7_3_0 },
						}),
						i(22275),	-- Firemoss Boots
						{ progressionKey = "brd.later-loot", groups = { i(22400, {	-- Libram of Truth
							timeline = { DELETED_5_0_4 },
						}),
						i(22395, {	-- Totem of Rage
							timeline = { DELETED_5_0_4 },
						}) } },
					},
				}),
				-- #if BEFORE 7.3.2
				n(8929, {	-- Princess Moira Bronzebeard <Princess of Ironforge> / Thaurissan High Priest
					description = "In order to be eligible for this loot, you need to have completed The Princess's Surprise or The Princess Saved?. Those quests were removed in 4.0.3, but characters who completed them before then still receive this loot.",
					sourceQuests = {
						4363,	-- The Princess's Surprise
						4004,	-- The Princess Saved?
					},
					groups = {
						i(12557, {	-- Ebonsteel Spaulders
							timeline = { REMOVED_4_0_3, ADDED_8_1_0 },
							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
						}),
						i(12554, {	-- Hands of the Exalted Herald
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
						}),
						i(12556, {	-- High Priestess Boots
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
						}),
						i(12553, {	-- Swiftwalker Boots
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
						}),
					},
				}),
				-- #endif
				e(387, {	-- Emperor Dagran Thaurissan
					progressionKey = "brd.second-half",
					creatureID = 9019,
					groups = {
						ach(642),	-- Blackrock Depths
						ach(5051, {	-- Blackrock Depths Guild Run
							timeline = { ADDED_4_0_3 },
						}),
						i(246429, {	-- Dark Iron Chandelier (DECOR!)
							timeline = { ADDED_11_2_7 },
						}),
						i(11931, {	-- Dreadforge Retaliatior
						}),
						-- #if BEFORE 7.3.2
						i(11932, {	-- Guiding Stave of Wisdom
						}),
						-- #endif
						i(11684, {	-- Ironfoe
						}),
						i(11928, {	-- Thaurissan's Royal Scepter
						}),
						i(11933, {	-- Imperial Jewel
						}),
						i(11930, {	-- The Emperor's New Cape
						}),
						i(11924, {	-- Robes of the Royal Crown
						}),
						{ progressionKey = "brd.later-loot", groups = { i(22204, {	-- Wristguards of Renown
						}) } },
						-- #if AFTER 7.3.2
						i(12554, {	-- Hands of the Exalted Herald
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						-- #endif
						-- #if BEFORE 1.13.5
						i(16724, {	-- Lightforge Gauntlets
							timeline = { REMOVED_4_0_3 },
						}),
						-- #endif
						{ progressionKey = "brd.later-loot", groups = { i(22207, {	-- Sash of the Grand Hunt
						}) } },
						-- #if AFTER 7.3.2
						i(12556, {	-- High Priestess Boots
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						i(12553, {	-- Swiftwalker Boots
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						-- #endif
						i(11934),	-- Emperor's Seal
						-- #if AFTER 1.13.5
						i(11815, {	-- Hand of Justice
						}),
						-- #endif
						i(12033),	-- Thaurissan Family Jewels
					},
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.WOD, {
		inst(228, {
			q(35899),	-- Blackrock Depths (Detention Block) Reward Quest - Normal completion
			q(35901),	-- Blackrock Depths (Detention Bonus) Reward Quest
			q(35902),	-- Blackrock Depths (Upper City) Reward Quest - Normal completion
			q(35903),	-- Blackrock Depths (Detention Bonus) Reward Quest
			q(35904),	-- Blackrock Depths (Everything) Reward Quest
		}),
	}),
	expansion(EXPANSION.TWW, {
		inst(228, {
			timeline = { ADDED_11_0_5 },
			groups = {
				q(82739),	-- ???
				q(82740),	-- Twilight Scheming (New 11.0 ID)
				-- Both of these keep getting reported completed on turnin of seemingly any BRD class quest regardless of race or faction
			},
		}),
	}),
});
```

</details>

<details>
<summary>Show every changed Lua line: P3 → classic.lua</summary>

```diff
--- .contrib/phase-examples/evolution/blackrock-depths/p3/Blackrock Depths.lua
+++ .contrib/phase-examples/evolution/blackrock-depths/p4/classic.lua
@@ -1,4 +1,4 @@
--- Generated comparison snapshot (P2.1 / P2.2 / P3): complete annotated source.
+-- Generated comparison snapshot (P4): complete classic source.
 -- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.
 -----------------------------------------------------
 --   D U N G E O N S  &  R A I D S  M O D U L E    --
@@ -27,14 +27,12 @@
 REPUTATION_FROM_LEATHER = 150;
 REPUTATION_FROM_DARKIRON = 50;
 -- #else
--- #if ANYCLASSIC
 -- #if AFTER CATA
 -- Reputation in Cata Classic
 -- CRIEVE NOTE: Not sure if it is intended, but the reputation gained from these skyrocketed in Cataclysm Classic. It might be unintentional.
 REPUTATION_FROM_CORES = 2200;
 REPUTATION_FROM_LEATHER = 1540;
 REPUTATION_FROM_DARKIRON = 300;
--- #endif
 -- #endif
 -- #endif
 
@@ -76,28 +74,11 @@
 				}),
 			}),
 			n(QUESTS, {
-				-- #if SEASON_OF_DISCOVERY
-				applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { q(84338, {	-- A Binding Contract
-					provider = { "i", 227730 },	-- Thorium Brotherhood Contract
-					timeline = { ADDED_1_15_3 },
-					requireSkill = BLACKSMITHING,
-					lvl = 60,
-					groups = {
-						i(227727),	-- Plans: Sulfuron Hammer (RECIPE!)
-					},
-				}) } }),
-				-- #endif
 				q(7604, {	-- A Binding Contract
 					provider = { "i", 18628 },	-- Thorium Brotherhood Contract
-					-- #if SEASON_OF_DISCOVERY
-					timeline = { REMOVED_1_15_3 },
-					-- #endif
 					lvl = lvlsquish(60, 60, 20),
 					groups = {
 						i(18592, {	-- Plans: Sulfuron Hammer (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(256673, {	-- Stormwind Forge (DECOR!)
 							timeline = { ADDED_11_2_7 },
@@ -278,18 +259,6 @@
 						}),
 					},
 				}),
-				-- #if SEASON_OF_DISCOVERY
-				applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { q(82062, {	-- Ever After
-					description = "Just east of the Ring in Blackrock Depths is a bridge that leads north over lava.\n\nAs you get onto the bridge, look down and to the left; you'll see a friendly Dark Iron Dwarf below you on the base of a pillar. Clear the rest of the mobs ahead of you (Blazing Fireguards and a group of Shadowforge dwarves).\n\nMove to the left side of the bridge near a small brazier. Get onto the railing, hug the rock wall, and jump ahead onto the platform near the wall.\n\nMove to the end of the platform, hugging the wall, and move hard into the rock corner.\n\nTurn with your left shoulder to the wall and run carefully against the wall, until you just fall down into the exposed corner. Drop down onto the rock outcrop below. \n\nTurn left into a small room, where you'll encounter the Rugged Traveler.",
-					qg = 222530,	-- Rugged Traveler
-					timeline = { REMOVED_2_0_1 },
-					lvl = 48,
-					groups = {
-						i(221316),	-- Premo's Poise-Demanding Uniform
-						i(221315),	-- Rainbow Generator
-					},
-				}) } }),
-				-- #endif
 				q(6646, {	-- Favor Amongst the Brotherhood, Blood of the Mountain
 					qg = 12944,	-- Lokhtos Darkbargainer
 					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
@@ -2052,18 +2021,10 @@
 				q(28328, {	-- Twilight Scheming [Alliance]
 					sourceQuest = 28285,	-- Meet with High Priestess Laurena / Meet with Patrice Lancaster [SL+]
 					providers = {
-						-- #if ANYCLASSIC
 						{ "n", 376 },	-- High Priestess Laurena
-						-- #else
-						{"n", 164949 },	-- Patrice Lancaster
-						-- #endif
-					},
-					coords = {
-						-- #if ANYCLASSIC
+					},
+					coords = {
 						{ 49.6, 44.8, STORMWIND_CITY },
-						-- #else
-						{ 78.9, 69.8, STORMWIND_CITY },
-						-- #endif
 					},
 					timeline = { ADDED_4_0_3 },
 					classes = { PRIEST },
@@ -2195,331 +2156,54 @@
 			n(VENDORS, {
 				n(12944, bubbleDownClassicRep(FACTION_THORIUM_BROTHERHOOD, {	-- Lokhtos Darkbargainer <The Thorium Brotherhood>
 					{	-- Neutral
-						-- #if SEASON_OF_DISCOVERY
-						{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(227730, {	-- Thorium Brotherhood Contract
-							description = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
-							timeline = { ADDED_1_15_3 },
-							cost = { { "i", 17203, 1 } },	-- Sulfuron Ingot
-							lvl = 60,
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(20754, {	-- Lesser Mana Oil (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(20755, {	-- Formula: Wizard Oil (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(22308, {	-- Pattern: Enchanted Runecloth Bag (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})) } },
-						-- #endif
 						i(18628, {	-- Thorium Brotherhood Contract
 							description = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 							cost = { { "i", 17203, 1 } },	-- Sulfuron Ingot
 							lvl = lvlsquish(60, 60, 20),
 						}),
 					},
 					{	-- Friendly
-						applyclassicphase(PHASE_THREE_ENCHANTS, { progressionKey = "brd.enchants", groups = { i(19444) } }),	-- Formula: Enchant Weapon - Strength (RECIPE!)
+						{ progressionKey = "brd.enchants", groups = { i(19444) } },	-- Formula: Enchant Weapon - Strength (RECIPE!)
 						i(17022),	-- Pattern: Corehound Boots (RECIPE!)
 						i(17018),	-- Pattern: Flarecore Gloves (RECIPE!)
 						i(17023),	-- Pattern: Molten Helm (RECIPE!)
 						i(17051),	-- Plans: Dark Iron Bracers (RECIPE!)
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(20761) } }),	-- Recipe: Transmute Elemental Fire (RECIPE!)
+						{ progressionKey = "brd.later-loot", groups = { i(20761) } },	-- Recipe: Transmute Elemental Fire (RECIPE!)
 					},
 					{	-- Honored
-						-- #if SEASON_OF_DISCOVERY
-						{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(228981, {	-- Formula: Conductive Shield Coating (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(229008, {	-- Formula: Enchant Cloak - Greater Fire Resistance (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(229009, {	-- Formula: Enchant Cloak - Greater Nature Resistance (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})) } },
-						-- #endif
-						applyclassicphase(PHASE_THREE_ENCHANTS, { progressionKey = "brd.enchants", groups = { i(19448) } }),	-- Formula: Enchant Weapon - Mighty Versatility / CLASSIC: Formula: Enchant Weapon - Mighty Spirit (RECIPE!)
+						{ progressionKey = "brd.enchants", groups = { i(19448) } },	-- Formula: Enchant Weapon - Mighty Versatility / CLASSIC: Formula: Enchant Weapon - Mighty Spirit (RECIPE!)
 						i(17025),	-- Pattern: Black Dragonscale Boots (RECIPE!)
 						i(17017),	-- Pattern: Flarecore Mantle (RECIPE!)
-						{ progressionKey = "brd.recipes", groups = { applyclassicphase(PHASE_THREE_RECIPES, i(19219)),	-- Pattern: Flarecore Robe (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19330)) } },	-- Pattern: Lava Belt (RECIPE!)
+						{ progressionKey = "brd.recipes", groups = { i(19219),	-- Pattern: Flarecore Robe (RECIPE!)
+						i(19330) } },	-- Pattern: Lava Belt (RECIPE!)
 						i(17060),	-- Plans: Dark Iron Destroyer (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, { progressionKey = "brd.recipes", groups = { i(19206) } }),	-- Plans: Dark Iron Helm (RECIPE!)
+						{ progressionKey = "brd.recipes", groups = { i(19206) } },	-- Plans: Dark Iron Helm (RECIPE!)
 						i(17059),	-- Plans: Dark Iron Reaver (RECIPE!)
 						i(17049),	-- Plans: Fiery Chain Girdle (RECIPE!)
 
-						-- #if SEASON_OF_DISCOVERY
-						-- EPIC ITEM UPGRADES
-						{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(227826, {	-- Dark Iron Flame Reaver
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   17015, 1 },	-- Dark Iron Reaver
-								{ "i", 227801, 25 },	-- Firelands Ember
-								{ "i",   17010, 2 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227842, {	-- Ebon Fist
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19170, 1 },	-- Ebon Hand
-								{ "i", 227801, 25 },	-- Firelands Ember
-								{ "i",   17010, 2 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227823, {	-- Fine Flarecore Gloves
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   16979, 1 },	-- Flarecore Gloves
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227839, {	-- Fine Flarecore Leggings
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19165, 1 },	-- Flarecore Leggings
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227830, {	-- Fine Flarecore Mantle
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   16980, 1 },	-- Flarecore Mantle
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227831, {	-- Fine Flarecore Robe
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19156, 1 },	-- Flarecore Robe
-								{ "i", 227801, 20 },	-- Firelands Ember
-								{ "i",   17011, 1 },	-- Lava Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227821, {	-- Flamekissed Molten Helm
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   16983, 1 },	-- Molten Helm
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17011, 1 },	-- Lava Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227833, {	-- Glaive of Obsidian Fury
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19167, 1 },	-- Blackfury
-								{ "i", 227801, 25 },	-- Firelands Ember
-								{ "i",   17011, 2 },	-- Lava Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227829, {	-- Hardened Black Dragonscale Boots
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   16984, 1 },	-- Black Dragonscale Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17011, 1 },	-- Lava Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227840, {	-- Implacable Blackguard
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19168, 1 },	-- Blackguard
-								{ "i", 227801, 25 },	-- Firelands Ember
-								{ "i",   17011, 2 },	-- Lava Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227828, {	-- Lavawalker Belt
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19149, 1 },	-- Lava Belt
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17011, 1 },	-- Lava Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227827, {	-- Molten Chain Girdle
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   16989, 1 },	-- Fiery Chain Girdle
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227834, {	-- Molten Chain Shoulders
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   16988, 1 },	-- Fiery Chain Shoulders
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227825, {	-- Molten Dark Iron Destroyer
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   17016, 1 },	-- Dark Iron Destroyer
-								{ "i", 227801, 25 },	-- Firelands Ember
-								{ "i",   17010, 2 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227838, {	-- Shining Chromatic Gauntlets
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19157, 1 },	-- Chromatic Gauntlets
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227832, {	-- Tempered Black Amnesty
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19166, 1 },	-- Black Amnesty
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 2 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227841, {	-- Tempered Dark Iron Boots (Str/Stam)
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   20039, 1 },	-- Dark Iron Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228924, {	-- Tempered Dark Iron Boots (Agi/Stam)
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   20039, 1 },	-- Dark Iron Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228925, {	-- Tempered Dark Iron Boots (Def/Stam)
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   20039, 1 },	-- Dark Iron Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228926, {	-- Tempered Dark Iron Boots (Int/Holy)
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   20039, 1 },	-- Dark Iron Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228927, {	-- Tempered Dark Iron Boots (Str/Holy)
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   20039, 1 },	-- Dark Iron Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228928, {	-- Tempered Dark Iron Boots (Healing/Stam)
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   20039, 1 },	-- Dark Iron Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228929, {	-- Tempered Dark Iron Boots (Healing/Int)
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   20039, 1 },	-- Dark Iron Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227820, {	-- Tempered Dark Iron Bracers
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   17014, 1 },	-- Dark Iron Bracers
-								{ "i", 227801, 10 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227835, {	-- Tempered Dark Iron Gauntlets
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19164, 1 },	-- Dark Iron Gauntlets
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17011, 1 },	-- Lava Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227824, {	-- Tempered Dark Iron Helm
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19148, 1 },	-- Dark Iron Helm
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17011, 1 },	-- Lava Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227836, {	-- Tempered Dark Iron Leggings
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   17013, 1 },	-- Dark Iron Leggings
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227837, {	-- Thick Corehound Belt
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19162, 1 },	-- Corehound Belt
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227822, {	-- Thick Corehound Boots
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   16982, 1 },	-- Corehound Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17011, 1 },	-- Lava Core
-							},
-						})) } },
-						-- #endif
 					},
 					{	-- Revered
-						applyclassicphase(PHASE_THREE_ENCHANTS, { progressionKey = "brd.enchants", groups = { i(19449) } }),	-- Formula: Enchant Weapon - Mighty Intellect (RECIPE!)
-						{ progressionKey = "brd.recipes", groups = { applyclassicphase(PHASE_THREE_RECIPES, i(19331)),	-- Pattern: Chromatic Gauntlets (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19332)),	-- Pattern: Corehound Belt (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19220)),	-- Pattern: Flarecore Leggings (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19333)),	-- Pattern: Molten Belt (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19208)),	-- Plans: Black Amnesty (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19209)),	-- Plans: Blackfury (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19207)) } },	-- Plans: Dark Iron Gauntlets (RECIPE!)
+						{ progressionKey = "brd.enchants", groups = { i(19449) } },	-- Formula: Enchant Weapon - Mighty Intellect (RECIPE!)
+						{ progressionKey = "brd.recipes", groups = { i(19331),	-- Pattern: Chromatic Gauntlets (RECIPE!)
+						i(19332),	-- Pattern: Corehound Belt (RECIPE!)
+						i(19220),	-- Pattern: Flarecore Leggings (RECIPE!)
+						i(19333),	-- Pattern: Molten Belt (RECIPE!)
+						i(19208),	-- Plans: Black Amnesty (RECIPE!)
+						i(19209),	-- Plans: Blackfury (RECIPE!)
+						i(19207) } },	-- Plans: Dark Iron Gauntlets (RECIPE!)
 						i(17052),	-- Plans: Dark Iron Leggings (RECIPE!)
 						i(17053),	-- Plans: Fiery Chain Shoulders (RECIPE!)
 					},
 					{	-- Exalted
-						applyclassicphase(PHASE_THREE_RECIPES, { progressionKey = "brd.recipes", groups = { i(19211) } }),	-- Plans: Blackguard (RECIPE!)
-						applyclassicphase(PHASE_FOUR_DARKIRON_RECIPES,  { progressionKey = "brd.dark-iron-recipes", groups = { i(20040) } }),	-- Plans: Dark Iron Boots (RECIPE!)
-						{ progressionKey = "brd.recipes", groups = { applyclassicphase(PHASE_THREE_RECIPES, i(19210)),	-- Plans: Ebon Hand (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19212, {	-- Plans: Nightfall (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_0 },
-							-- #endif
-						})) } },
+						{ progressionKey = "brd.recipes", groups = { i(19211) } },	-- Plans: Blackguard (RECIPE!)
+						{ progressionKey = "brd.dark-iron-recipes", groups = { i(20040) } },	-- Plans: Dark Iron Boots (RECIPE!)
+						{ progressionKey = "brd.recipes", groups = { i(19210),	-- Plans: Ebon Hand (RECIPE!)
+						i(19212, {	-- Plans: Nightfall (RECIPE!)
+						}) } },
 					},
 				})),
 				n(9499, {	-- Plugger Spazzring
-					-- #if SEASON_OF_DISCOVERY
-					applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227902, {	-- Pattern: Hardened Black Dragonscale Breastplate (RECIPE!)
-						timeline = { ADDED_1_15_3 },
-					}) } }),
-					-- #endif
 					i(15759, {	-- Pattern: Black Dragonscale Breastplate (RECIPE!)
-						-- #if SEASON_OF_DISCOVERY
-						timeline = { REMOVED_1_15_3 },
-						-- #endif
 					}),
 					i(13483),	-- Recipe: Transmute Fire to Earth (RECIPE!)
 					i(11325),	-- Dark Iron Ale Mug
@@ -2534,7 +2218,7 @@
 			n(ZONE_DROPS, {
 				i(11468),	-- Dark Iron Fanny Pack
 				i(18945),	-- Dark Iron Residue
-				applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22528) } }),	-- Dark Iron Scraps
+				{ progressionKey = "brd.later-loot", groups = { i(22528) } },	-- Dark Iron Scraps
 				i(11129),	-- Essence of the Elements
 				i(11269, {	-- Intact Elemental Core
 					crs = {
@@ -2545,27 +2229,11 @@
 					},
 				}),
 				i(15781, {	-- Pattern: Black Dragonscale Leggings (RECIPE!)
-					-- #if SEASON_OF_DISCOVERY
-					timeline = { REMOVED_1_15_3 },
-					-- #endif
 					cr = 8903,	-- Anvilrage Captain
 				}),
 				i(15770, {	-- Pattern: Black Dragonscale Shoulders (RECIPE!)
-					-- #if SEASON_OF_DISCOVERY
-					timeline = { REMOVED_1_15_3 },
-					-- #endif
 					cr = 8898,	-- Anvilrage Marshal
 				}),
-				-- #if SEASON_OF_DISCOVERY
-				{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(227903, {	-- Pattern: Hardened Black Dragonscale Leggings (RECIPE!)
-					timeline = { ADDED_1_15_3 },
-					cr = 8903,	-- Anvilrage Captain
-				})),
-				applyclassicphase(SOD_PHASE_FOUR, i(227904, {	-- Pattern: Hardened Black Dragonscale Shoulders (RECIPE!)
-					timeline = { ADDED_1_15_3 },
-					cr = 8898,	-- Anvilrage Marshal
-				})) } },
-				-- #endif
 				i(11611, {	-- Plans: Dark Iron Sunderer (RECIPE!)
 					crs = {
 						9554,	-- Hammered Patron
@@ -2611,19 +2279,11 @@
 					creatureID = 9018,
 					groups = {
 						i(11140),	-- Prison Cell Key
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.enthralled-sphere", groups = { i(223539, {	-- Enthralled Sphere
-							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
 						i(11625, {	-- Enthralled Sphere
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						i(11626),	-- Blackveil Cape
 						i(11624),	-- Kentic Amice
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22240) } }),	-- Greaves of Withering Despaire
+						{ progressionKey = "brd.later-loot", groups = { i(22240) } },	-- Greaves of Withering Despaire
 					},
 				}),
 				e(370, {	-- Lord Roccor
@@ -2637,14 +2297,14 @@
 						}),
 						i(11631),	-- Stoneshell Guard
 						i(11632),	-- Earthslag Shoulders
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22234) } }),	-- Mantle of Lost Hope
+						{ progressionKey = "brd.later-loot", groups = { i(22234) } },	-- Mantle of Lost Hope
 						-- #if AFTER 7.3.2
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22271) } }),	-- Leggings of Frenzied Magic
+						{ progressionKey = "brd.later-loot", groups = { i(22271) } },	-- Leggings of Frenzied Magic
 						i(11679),	-- Rubicund Armguards
 						-- #endif
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22397, {	-- Idol of Ferocity
+						{ progressionKey = "brd.later-loot", groups = { i(22397, {	-- Idol of Ferocity
 							timeline = { REMOVED_5_0_4 },
-						}) } }),
+						}) } },
 						i(11630, {	-- Rockshard Pellets
 							timeline = { DELETED_4_0_1 },
 						}),
@@ -2653,25 +2313,9 @@
 				e(371, {	-- Houndmaster Grebmar
 					creatureID = 9319,
 					groups = {
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223540, {	-- Houndmaster's Bow
-							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
 						i(11628, {	-- Houndmaster's Bow
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_2 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223982, {	-- Houndmaster's Rifle
-							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
+						}),
 						i(11629, {	-- Houndmaster's Rifle
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						i(11627),	-- Fleetfoot Greaves
 						i(11623),	-- Spritecaster Cape
@@ -2682,138 +2326,58 @@
 					creatureID = 10096,	-- High Justice Grimstone
 					groups = {
 						n(9031, {	-- Anub'shiah
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223986, {	-- Graverot Cape
-								timeline = { ADDED_1_15_2 },
-							}) } }),
-							-- #endif
 							i(11677, {	-- Graverot Cape
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_2 },
-								-- #endif
 							}),
 							i(11678),	-- Carapace of Anub'shiah
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227957, {	-- Savage Gladiator Greaves
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(11731, {	-- Savage Gladiator Greaves
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(11675),	-- Shadefiend Boots
 						}),
 						n(9029, {	-- Eviscerator
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223987, {	-- Splinthide Shoulders
-								timeline = { ADDED_1_15_2 },
-							}) } }),
-							-- #endif
 							i(11685, {	-- Splinthide Shoulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_2 },
-								-- #endif
 							}),
 							-- #if BEFORE 7.3.2
 							i(11679),	-- Rubicund Armguards
 							-- #endif
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227961, {	-- Savage Gladiator Grips
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(11730, {	-- Savage Gladiator Grips
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(11686),	-- Girdle of Beastial Fury
 						}),
 						n(9027, {	-- Gorosh the Dervish
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227962, {	-- Flarethorn
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
-							applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22266, {	-- Flarethorn
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}) } }),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227952, {	-- Savage Gladiator Chain
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "brd.later-loot", groups = { i(22266, {	-- Flarethorn
+							}) } },
 							i(11726, {	-- Savage Gladiator Chain
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							-- #if AFTER 7.3.2
 							i(11662),	-- Ban'thok Sash
 							-- #endif
-							{ progressionKey = "brd.later-loot", groups = { applyclassicphase(PHASE_FIVE, i(22271)),	-- Leggings of Frenzied Magic
-							applyclassicphase(PHASE_FIVE, i(22257)) } },	-- Bloodclot Band
+							{ progressionKey = "brd.later-loot", groups = { i(22271),	-- Leggings of Frenzied Magic
+							i(22257) } },	-- Bloodclot Band
 						}),
 						n(9028, {	-- Grizzle
 							i(11610),	-- Plans: Dark Iron Pulverizer (RECIPE!)
 							i(11702),	-- Grizzle's Skinner
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223544, {	-- Dregmetal Spaulders
-								timeline = { ADDED_1_15_2 },
-							}) } }),
-							-- #endif
 							i(11722, {	-- Dregmetal Spaulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_2 },
-								-- #endif
 							}),
 							i(11703),	-- Stonewall Girdle
-							applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22270) } }),	-- Entrenching Boots
+							{ progressionKey = "brd.later-loot", groups = { i(22270) } },	-- Entrenching Boots
 						}),
 						n(9032, {	-- Hedrum the Creeper
 							i(11635),	-- Hookfang Shanker
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227955, {	-- Savage Gladiator Helm
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(11729, {	-- Savage Gladiator Helm
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(11633),	-- Spiderfang Carapace
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223984, {	-- Silkweb Gloves
-								timeline = { ADDED_1_15_2 },
-							}) } }),
-							-- #endif
 							i(11634, {	-- Silkweb Gloves
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_2 },
-								-- #endif
 							}),
 						}),
 						n(9030, {	-- Ok'thor the Breaker
 							i(11665),	-- Ogreseer Fists
 							i(11662),	-- Ban'thok Sash
 							i(11728),	-- Savage Gladiator Leggings
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223985, {	-- Cyclopean Band
-								timeline = { ADDED_1_15_2 },
-							}) } }),
-							-- #endif
 							i(11824, {	-- Cyclopean Band
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_2 },
-								-- #endif
 							}),
 						}),
-						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "brd.dungeon-set-2", groups = { n_conditional(16059, {	-- Theldren
+						{ progressionKey = "brd.dungeon-set-2", groups = { n_conditional(16059, {	-- Theldren
 							description = "Requires Banner of Provocation (Dungeon Set 2 Questline) to summon this boss. Loot the grey chest on the grey grate after killing the mobs. You must use the banner before the non-elites are killed.\nSummon Location: Ring of Law.",
 							timeline = { REMOVED_4_0_3 },
 							-- #if AFTER 4.0.3
@@ -2826,33 +2390,15 @@
 							},
 							groups = {
 								i(22047),	-- Top Piece of Lord Valthalak's Amulet
-								-- #if SEASON_OF_DISCOVERY
-								applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(228700, {	-- Ironweave Mantle
-									timeline = { ADDED_1_15_3 },
-								}) } }),
-								-- #endif
 								i(22305, {	-- Ironweave Mantle
-									-- #if SEASON_OF_DISCOVERY
-									timeline = { REMOVED_1_15_3 },
-									-- #endif
 								}),
 								i(22317),	-- Lefty's Brass Knuckle
 								i(22318),	-- Malgen's Long Bow
 								i(22330),	-- Shroud of Arcane Mastery
 							},
-						}) } }),
-					},
-				}),
-				-- #if SEASON_OF_DISCOVERY
-				applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { n(223265, {	-- Delirious Ancient
-					description = "Spawns after defeating High Interrogator Gerstahn, Houndmaster Grebmar, Ring of Law in the Dark Iron Highway.",
-					cost = { { "i", 221418, 1 } },	-- Agamaggan's Roar
-					groups = {
-						i(221271),	-- Ace of Wilds
-						i(221262),	-- Wild Offering
-					},
-				}) } }),
-				-- #endif
+						}) } },
+					},
+				}),
 				e(377, {	-- Bael'gar
 					creatureID = 9016,
 					groups = {
@@ -2861,14 +2407,14 @@
 						i(11807),	-- Sash of the Burning Heart
 						i(11802),	-- Lavacrest Leggings
 						-- #if AFTER 7.3.2
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22257) } }),	-- Bloodclot Band
+						{ progressionKey = "brd.later-loot", groups = { i(22257) } },	-- Bloodclot Band
 						-- #endif
 					},
 				}),
 				e(374, {	-- Lord Incendius
 					creatureID = 9017,
 					groups = {
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(21987) } }),	-- Incendicite of Incendius
+						{ progressionKey = "brd.later-loot", groups = { i(21987) } },	-- Incendicite of Incendius
 						i(11126),	-- Tablet of Kurniya
 						i(11766),	-- Flameweave Cuffs
 						i(11764),	-- Cinderhide Armsplints
@@ -2883,7 +2429,7 @@
 							-- #endif
 							timeline = { REMOVED_2_0_1, ADDED_10_1_7 },	-- 07.09.2023 ATT DISCORD
 						}),
-						applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "brd.darkmoon-cards", groups = { i(19268) } }),	-- Ace of Elementals
+						{ progressionKey = "brd.darkmoon-cards", groups = { i(19268) } },	-- Ace of Elementals
 					},
 				}),
 				e(376, {	-- Fineous Darkvire <Chief Architect>
@@ -2891,7 +2437,7 @@
 					groups = {
 						i(11840),	-- Master Builder's Shirt
 						i(11839),	-- Chief Architect's Monocle
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22223) } }),	-- Foreman's Head Protector
+						{ progressionKey = "brd.later-loot", groups = { i(22223) } },	-- Foreman's Head Protector
 						i(151406, {	-- Belt of the Eminent Mason
 							timeline = { ADDED_7_3_0 },
 						}),
@@ -2905,55 +2451,25 @@
 					creatureID = 9024,
 					groups = {
 						i(11207),	-- Formula: Enchant Weapon - Fiery Weapon (RECIPE!)
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223538, {	-- Kindling Stave
-							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
 						i(11750, {	-- Kindling Stave
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						i(11748),	-- Pyric Caduceus
-						-- #if SEASON_OF_DISCOVERY
-						{ progressionKey = "brd.sod-phase-three-additions", groups = { applyclassicphase(SOD_PHASE_THREE, i(223981, {	-- Flamestrider Robes
-							timeline = { ADDED_1_15_2 },
-						})),
-						applyclassicphase(SOD_PHASE_THREE, i(223980, {	-- Searingscale Leggings
-							timeline = { ADDED_1_15_2 },
-						})) } },
-						-- #endif
 						i(11747, {	-- Flamestrider Robes
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						i(11749, {	-- Searingscale Leggings
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						-- #if AFTER 7.3.2
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22270) } }),	-- Entrenching Boots
+						{ progressionKey = "brd.later-loot", groups = { i(22270) } },	-- Entrenching Boots
 						-- #endif
 					},
 				}),
 				e(375, {	-- Warder Stilgiss
 					creatureID = 9041,
 					groups = {
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223983, {	-- Arbiter's Blade
-							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
 						i(11784, {	-- Arbiter's Blade
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						i(11782),	-- Boreal Mantle
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22241) } }),	-- Dark Warder's Pauldrons
+						{ progressionKey = "brd.later-loot", groups = { i(22241) } },	-- Dark Warder's Pauldrons
 						i(11783),	-- Chillsteel Girdle
 						i(151405, {	-- Cold-Forged Chestplate
 							timeline = { ADDED_7_3_0 },
@@ -2962,7 +2478,7 @@
 				}),
 				n(9042, {	-- Verek
 					i(11755),	-- Verek's Collar
-					applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22242) } }),	-- Verek's Leash
+					{ progressionKey = "brd.later-loot", groups = { i(22242) } },	-- Verek's Leash
 				}),
 				n(9476, {	-- Watchman Doomgrip
 					description = "Watchman Doomgrip spawns once all twelve Relic Coffers have been opened using Relic Coffer Keys that can drop from any Dark Iron mob in the instance. Upon defeating all enemies, a hidden door beneath the Dark Coffer will open allowing access to the Secret Safe as well as the Heart of the Mountain.",
@@ -2994,10 +2510,10 @@
 								i(11926),	-- Deathdealer Breastplate
 								i(11929),	-- Haunting Specter Leggings
 								-- #endif
-								{ progressionKey = "brd.later-loot", groups = { applyclassicphase(PHASE_FIVE, i(22256)),	-- Mana Shaping Handwraps
-								applyclassicphase(PHASE_FIVE, i(22205)),	-- Black Steel Bindings
-								applyclassicphase(PHASE_FIVE, i(22254)),	-- Wand of Eternal Light
-								applyclassicphase(PHASE_FIVE, i(22255)) } },	-- Magma Forged Band
+								{ progressionKey = "brd.later-loot", groups = { i(22256),	-- Mana Shaping Handwraps
+								i(22205),	-- Black Steel Bindings
+								i(22254),	-- Wand of Eternal Light
+								i(22255) } },	-- Magma Forged Band
 							},
 						}),
 					},
@@ -3034,28 +2550,12 @@
 					creatureID = 9033,
 					groups = {
 						i(11464),	-- Marshal Windsor's Lost Information
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.angerforge-axe", groups = { i(227948, {	-- Angerforge's Battle Axe
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11816, {	-- Angerforge's Battle Axe
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						-- #if AFTER 7.3.2
 						i(11932),	-- Guiding Stave of Wisdom
 						-- #endif
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227940, {	-- Lord General's Sword
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11817, {	-- Lord General's Sword
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						-- #if AFTER 7.3.2
 						i(12557, {	-- Ebonsteel Spaulders
@@ -3075,39 +2575,15 @@
 					groups = {
 						i(11268),	-- Head of Argelmach
 						i(11465),	-- Marshal Windsor's Lost Information
-						applyclassicphase(TBC_PHASE_ONE, { progressionKey = "brd.tbc-jewelcrafting", groups = { i(21956, {	-- Design: Dark Iron Scorpid (RECIPE!)
+						{ progressionKey = "brd.tbc-jewelcrafting", groups = { i(21956, {	-- Design: Dark Iron Scorpid (RECIPE!)
 							timeline = { ADDED_2_0_5 },
-						}) } }),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227964, {	-- Luminary Kilt
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}) } },
 						i(11823, {	-- Luminary Kilt
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227965, {	-- Omnicast Boots
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
 						i(11822, {	-- Omnicast Boots
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11669),	-- Naglering
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227967, {	-- Second Wind
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11819, {	-- Second Wind
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 					},
 				}),
@@ -3129,7 +2605,7 @@
 							timeline = { ADDED_7_3_0 },
 						}),
 						i(18043),	-- Coal Miner Boots
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22275) } }),	-- Firemoss Boots
+						{ progressionKey = "brd.later-loot", groups = { i(22275) } },	-- Firemoss Boots
 					},
 				}),
 				e(9543, {	-- Ribbly Screwspigot
@@ -3137,15 +2613,7 @@
 					description = "Speak to him to start the encounter.",
 					groups = {
 						i(11313),	-- Ribbly's Head
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227901, {	-- Plans: Tempered Dark Iron Plate (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11612, {	-- Plans: Dark Iron Plate (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(2663, {	-- Ribbly's Bandolier
 							timeline = { REMOVED_4_0_1 },
@@ -3165,14 +2633,9 @@
 						i(151410, {	-- Bottle-Popper Ring
 							timeline = { ADDED_7_3_0 },
 						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(220168, {	-- Triple-Brewed Molten Lager
-							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
-					},
-				}),
-				applyclassicphase(TBC_PHASE_FOUR, { progressionKey = "brd.dark-iron-brewer", groups = { n(28067, {	-- Dark Iron Brewer
+					},
+				}),
+				{ progressionKey = "brd.dark-iron-brewer", groups = { n(28067, {	-- Dark Iron Brewer
 					description = "Speak to him until he passes out, a Mug will appear on the ground",
 					timeline = { ADDED_2_4_3 },
 					groups = {
@@ -3180,7 +2643,7 @@
 							i(38320),	-- Dire Brew
 						}),
 					},
-				}) } }),
+				}) } },
 				e(381, {	-- Phalanx
 					creatureID = 9502,
 					description = "Private Rocknot must be sent into a drunken rage to aggro Phalanx.\nTo do that, give him 6 dark iron ale mugs, which can be bought from Plugger Spazzring.\nRocknot will break one of the kegs, it'll blow the door open and Phalanx will be angry.",
@@ -3198,8 +2661,8 @@
 						-- #if BEFORE 7.3.2
 						i(11746),	-- Golem Skull Helm
 						-- #endif
-						{ progressionKey = "brd.later-loot", groups = { applyclassicphase(PHASE_FIVE, i(22212)),	-- Golem Fitted Pauldrons
-						applyclassicphase(PHASE_FIVE, i(22204)) } },	-- Wristguards of Renown
+						{ progressionKey = "brd.later-loot", groups = { i(22212),	-- Golem Fitted Pauldrons
+						i(22204) } },	-- Wristguards of Renown
 						i(11745),	-- Fists of Phalanx
 						i(151409, {	-- Ferrous Cord
 							timeline = { ADDED_7_3_0 },
@@ -3209,47 +2672,15 @@
 				e(384, {	-- Ambassador Flamelash
 					creatureID = 9156,
 					groups = {
-						-- #if SEASON_OF_DISCOVERY
-						{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(227934, {	-- Flame Wrath
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227973, {	-- Circle of Flame
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227970, {	-- Cape of the Fire Salamander
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227971, {	-- Molten Fists
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227972, {	-- Burst of Knowledge
-							timeline = { ADDED_1_15_3 },
-						})) } },
-						-- #endif
 						i(11809, {	-- Flame Wrath
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11808, {	-- Circle of Flame
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11812, {	-- Cape of the Fire Salamander
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11814, {	-- Molten Fists
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11832, {	-- Burst of Knowledge
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 					},
 				}),
@@ -3259,7 +2690,7 @@
 						i(11786),	-- Stone of the Earth
 						i(11785),	-- Rock Golem Bulwark
 						i(11787),	-- Shalehusk Boots
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22245) } }),	-- Soot Encrusted Footwear
+						{ progressionKey = "brd.later-loot", groups = { i(22245) } },	-- Soot Encrusted Footwear
 					},
 				}),
 				e(385, {	-- The Seven
@@ -3268,105 +2699,41 @@
 					modelScale = 3,
 					groups = {
 						-- #if BEFORE 7.3.2
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227963, {	-- Blood-Etched Blade
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11922, {	-- Blood-Etched Blade
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #endif
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227960, {	-- Impervious Giant
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						}),
 						-- #endif
 						i(11921, {	-- Impervious Giant
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11923),	-- The Hammer of Grace
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227941, {	-- Wraith Scythe
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11920, {	-- Wraith Scythe
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227958, {	-- Ghostshroud
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
 						i(11925, {	-- Ghostshroud
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227956, {	-- Deathdealer Breastplate
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
 						i(11926, {	-- Deathdealer Breastplate
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11929),	-- Haunting Specter Leggings
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227959, {	-- Legplates of the Eternal Guardian
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11927, {	-- Legplates of the Eternal Guardian
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 					},
 				}),
 				e(386, {	-- Magmus
 					creatureID = 9938,
 					groups = {
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227974, {	-- Lavastone Hammer
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22208, {	-- Lavastone Hammer
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}) } }),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227978, {	-- Magmus Stone
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						{ progressionKey = "brd.later-loot", groups = { i(22208, {	-- Lavastone Hammer
+						}) } },
 						i(11935, {	-- Magmus Stone
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11746),	-- Golem Skull Helm
 						i(151411, {	-- Molten-Warden Leggings
 							timeline = { ADDED_7_3_0 },
 						}),
 						i(22275),	-- Firemoss Boots
-						{ progressionKey = "brd.later-loot", groups = { applyclassicphase(PHASE_FIVE, i(22400, {	-- Libram of Truth
+						{ progressionKey = "brd.later-loot", groups = { i(22400, {	-- Libram of Truth
 							timeline = { DELETED_5_0_4 },
-						})),
-						applyclassicphase(PHASE_FIVE, i(22395, {	-- Totem of Rage
+						}),
+						i(22395, {	-- Totem of Rage
 							timeline = { DELETED_5_0_4 },
-						})) } },
+						}) } },
 					},
 				}),
 				-- #if BEFORE 7.3.2
@@ -3379,27 +2746,19 @@
 					groups = {
 						i(12557, {	-- Ebonsteel Spaulders
 							timeline = { REMOVED_4_0_3, ADDED_8_1_0 },
-							-- #if ANYCLASSIC
 							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
-							-- #endif
 						}),
 						i(12554, {	-- Hands of the Exalted Herald
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
-							-- #if ANYCLASSIC
 							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
-							-- #endif
 						}),
 						i(12556, {	-- High Priestess Boots
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
-							-- #if ANYCLASSIC
 							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
-							-- #endif
 						}),
 						i(12553, {	-- Swiftwalker Boots
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
-							-- #if ANYCLASSIC
 							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
-							-- #endif
 						}),
 					},
 				}),
@@ -3415,88 +2774,24 @@
 						i(246429, {	-- Dark Iron Chandelier (DECOR!)
 							timeline = { ADDED_11_2_7 },
 						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227981, {	-- Dreadforge Retaliatior
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11931, {	-- Dreadforge Retaliatior
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						-- #if BEFORE 7.3.2
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227982, {	-- Guiding Stave of Wisdom
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11932, {	-- Guiding Stave of Wisdom
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #endif
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227991, {	-- Ironfoe
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						}),
 						-- #endif
 						i(11684, {	-- Ironfoe
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227984, {	-- Thaurissan's Royal Scepter
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
 						i(11928, {	-- Thaurissan's Royal Scepter
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227988, {	-- Imperial Jewel
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
 						i(11933, {	-- Imperial Jewel
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227985, {	-- The Emperor's New Cape
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
 						i(11930, {	-- The Emperor's New Cape
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227980, {	-- Robes of the Royal Crown
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
 						i(11924, {	-- Robes of the Royal Crown
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227986, {	-- Wristguards of Renown
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22204, {	-- Wristguards of Renown
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}) } }),
+						}),
+						{ progressionKey = "brd.later-loot", groups = { i(22204, {	-- Wristguards of Renown
+						}) } },
 						-- #if AFTER 7.3.2
 						i(12554, {	-- Hands of the Exalted Herald
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
@@ -3507,16 +2802,8 @@
 							timeline = { REMOVED_4_0_3 },
 						}),
 						-- #endif
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227987, {	-- Sash of the Grand Hunt
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22207, {	-- Sash of the Grand Hunt
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}) } }),
+						{ progressionKey = "brd.later-loot", groups = { i(22207, {	-- Sash of the Grand Hunt
+						}) } },
 						-- #if AFTER 7.3.2
 						i(12556, {	-- High Priestess Boots
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
@@ -3525,22 +2812,9 @@
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
 						}),
 						-- #endif
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227983, {	-- Dark Iron Seal
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11934),	-- Emperor's Seal
 						-- #if AFTER 1.13.5
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(228722, {	-- Hand of Justice
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11815, {	-- Hand of Justice
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						-- #endif
 						i(12033),	-- Thaurissan Family Jewels
```

</details>

### Retail

**Before:** [complete P3 Lua](p3/Blackrock%20Depths.lua). **After:** [p4/retail.lua](p4/retail.lua).

<details>
<summary>Read the complete final retail.lua</summary>

```lua
-- Generated comparison snapshot (P4): complete retail source.
-- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

local DETENTION_BLOCK = createHeader({
	readable = "Detention Block",
	icon = 236718,
	text = {
		en = [[~DUNGEON_FLOOR_BLACKROCKDEPTHS1]],
	},
});
local SHADOWFORGE_CITY = createHeader({
	readable = "Shadowforge City",
	icon = 236718,
	text = {
		en = [[~DUNGEON_FLOOR_BLACKROCKDEPTHS2]],
	},
});

local REPUTATION_FROM_CORES, REPUTATION_FROM_LEATHER, REPUTATION_FROM_DARKIRON = 500, 350, 75;	-- These are the reputation values after TBC, other than for Classic.

-- #if BEFORE TBC
-- Reputation in Classic
REPUTATION_FROM_CORES = 200;
REPUTATION_FROM_LEATHER = 150;
REPUTATION_FROM_DARKIRON = 50;
-- #else
-- #endif

ExportDB.OnTooltipDB.ThoriumBrotherhood = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		addRepInfo(tooltipInfo, reputation, "Turn In Blood & Cores (1x each)",]] .. REPUTATION_FROM_CORES .. [[, 42000);
		addRepInfo(tooltipInfo, reputation, "Turn In Core Leather (2x each)",]] .. REPUTATION_FROM_LEATHER .. [[, 42000);
		addRepInfo(tooltipInfo, reputation, "Turn In Dark Iron Ore (10x each)",]] .. REPUTATION_FROM_DARKIRON .. [[, 42000);
	end
end]];

-- Princess Moira's loot was removed in 4.0.3, but characters who completed The Princess's Surprise or The Princess Saved? still receive it.
local PRINCESS_MOIRA_LOOT_OnUpdate = [[function(t)
	if _.IsQuestFlaggedCompleted(4363) or _.IsQuestFlaggedCompleted(4004) then
		t.u = nil;
		t.rwp = nil;
	end
end]];

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(228, {	-- Blackrock Depths
		progressionKey = "brd.dungeon",
		-- #if BEFORE MOP
		lore = "Once the capital city of the Dark Iron dwarves, this volcanic labyrinth now serves as the seat of power for Ragnaros the Firelord. Ragnaros has uncovered the secret to creating life from stone and plans to build an army of unstoppable golems to aid him in conquering the whole of Blackrock Mountain. Obsessed with defeating Nefarian and his draconic minions, Ragnaros will go to any extreme to achieve final victory.",
		zoneTextAreaID = 1584,	-- Blackrock Depths
		-- #endif
		description = "The best route for a full clear is to enter Shadowforge City first time through the Dark Iron Highway. The Detention Block can be cleared whenever.",
		mapID = BLACKROCK_DEPTHS,
		coord = { 39.06, 18.12, BLACKROCK_MOUNTAIN_LEVEL3 },
		maps = { BLACKROCK_DEPTHS_LEVEL2 },
		lvl = 42,
		groups = {
			n(FACTIONS, {
				faction(FACTION_THORIUM_BROTHERHOOD, {	-- Thorium Brotherhood
					maps = { SEARING_GORGE },
					OnTooltip = [[_.OnTooltipDB.ThoriumBrotherhood]],
				}),
			}),
			n(QUESTS, {
				q(7604, {	-- A Binding Contract
					provider = { "i", 18628 },	-- Thorium Brotherhood Contract
					lvl = lvlsquish(60, 60, 20),
					groups = {
						i(18592, {	-- Plans: Sulfuron Hammer (RECIPE!)
						}),
						i(256673, {	-- Stormwind Forge (DECOR!)
							timeline = { ADDED_11_2_7 },
						}),
					},
				}),
				q(4264, {	-- A Crumpled Up Note
					-- #if BEFORE 3.0.2
					description = "After completing the Abandoned Hope quest, kill trash until this item drops for you. If your group has not yet killed the Dark Keeper, they have a fairly high chance to drop this item as well.",
					-- #endif
					sourceQuest = 4242,	-- Abandoned Hope
					provider = { "i", 11446 },	-- A Crumpled Up Note
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4282, {	-- A Shred of Hope
					sourceQuest = 4264,	-- A Crumpled Up Note
					qg = 9023,	-- Marshal Windsor
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 Marshal Windsor's Lost Information
							provider = { "i", 11464 },	-- Marshal Windsor's Lost Information
						}),
						objective(2, {	-- 0/1 Marshal Windsor's Lost Information
							provider = { "i", 11465 },	-- Marshal Windsor's Lost Information
						}),
					},
				}),
				q(4022, {	-- A Taste of Flame (1/2) (A)
					-- #if BEFORE 4.0.3
					description = "If you completed the quest 'Trinkets...' in Searing Gorge, you can complete this quest immediately without having to fight the elite dragon by bringing the Black Dragonflight Molt with you.",
					-- #endif
					sourceQuest = 3481,	-- Trinkets...
					altQuests = { 4023 },	-- A Taste of Flame
					qg = 9459,	-- Cyrus Therepentous
					coord = { 95.09, 31.56, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					cost = { { "i", 10575, 1 } },	-- Black Dragonflight Molt
					lvl = 52,
				}),
				q(4023, {	-- A Taste of Flame (1/2) (B)
					altQuests = { 4022 },	-- A Taste of Flame (1/2) (A)
					qg = 9459,	-- Cyrus Therepentous
					coord = { 95.09, 31.56, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					lvl = 52,
					groups = {
						objective(1, {	-- 0/1 Black Dragonflight Molt
							provider = { "i", 10575 },	-- Black Dragonflight Molt
							coord = { 93.2, 32.6, BURNING_STEPPES },
							cr = 9461,	-- Frenzied Black Drake <Cyrus's Minion>
						}),
					},
				}),
				q(4024, {	-- A Taste of Flame (2/2)
					sourceQuests = {
						4022,	-- A Taste of Flame (1/2) (A)
						4023,	-- A Taste of Flame (1/2) (B)
					},
					qg = 9459,	-- Cyrus Therepentous
					coord = { 95.09, 31.56, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					groups = {
						objective(1, {	-- 0/1 Encased Fiery Essence
							provider = { "i", 11230 },	-- Encased Fiery Essence
							cost = { { "i", 11231, 1 } },	-- Altered Black Dragonflight Molt
							cr = 9016,	-- Bael'Gar
						}),
						i(12066),	-- Shaleskin Cape
						i(12082),	-- Wyrmhide Spaulders
						i(12083),	-- Valconian Sash
					},
				}),
				q(4242, {	-- Abandoned Hope
					sourceQuest = 4241,	-- Marshal Windsor
					qg = 9023,	-- Marshal Windsor
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					groups = {
						i(12018),	-- Conservator Helm
						i(12021),	-- Shieldplate Sabatons
						i(12041),	-- Windshear Leggings
					},
				}),
				q(3981, {	-- Commander Gor'shak
					sourceQuest = 3906,	-- Disharmony of Flame
					qg = 9081,	-- Galamav the Marksman <Kargath Expeditionary Force>
					coord = { 5.8, 47.6, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
				}),
				q(3801, {	-- Dark Iron Legacy (1/2)
					-- #if BEFORE 4.0.3
					description = "You must be a ghost in order to interact with this quest giver. He's in the middle of Blackrock Mountain on the floating island on top of his tomb.",
					-- #endif
					qg = 8888,	-- Franclorn Forgewright
					timeline = { REMOVED_4_0_3 },
					maps = { BLACKROCK_MOUNTAIN },
					lvl = 48,
				}),
				q(3802, {	-- Dark Iron Legacy (2/2)
					sourceQuest = 3801,	-- Dark Iron Legacy (1/2)
					providers = {
						{ "n",   8888 },	-- Franclorn Forgewright
						{ "o", 164689 },	-- Monument of Franclorn Forgewright
					},
					timeline = { REMOVED_4_0_3 },
					maps = { BLACKROCK_MOUNTAIN },
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Ironfel
							provider = { "i", 10999 },	-- Ironfel
							cr = 9056,	-- Fineous Darkvire <Chief Architect>
						}),
						i(11000, {	-- Shadowforge Key
							timeline = { DELETED_4_0_3 },
						}),
					},
				}),
				q(3906, {	-- Disharmony of Flame
					qg = 9084,	-- Thunderheart <Kargath Expeditionary Force>
					coord = { 3.3, 48.3, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					maps = { BLACKROCK_MOUNTAIN },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Overmaster Pyron slain
							provider = { "n", 9026 },	-- Overmaster Pyron
						}),
					},
				}),
				q(3907, {	-- Disharmony of Fire
					sourceQuest = 3906,	-- Disharmony of Flame
					qg = 9084,	-- Thunderheart <Kargath Expeditionary Force>
					coord = { 3.3, 48.3, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Lord Incendius slain
							provider = { "n", 9017 },	-- Lord Incendius
						}),
						objective(2, {	-- 0/1 Tablet of Kurniya
							provider = { "i", 11126 },	-- Tablet of Kurniya
						}),
						i(12112),	-- Crypt Demon Bracers
						i(12114),	-- Nightfall Gloves
						i(12115),	-- Stalwart Clutch
						i(12113),	-- Sunborne Cape
					},
				}),
				q(4182, {	-- Dragonkin Menace
					-- #if BEFORE 3.0.2
					description = "You should finish this full quest chain up to Marshal Windsor before joining a Blackrock Depths group.",
					-- #endif
					qg = 9562,	-- Helendis Riverhorn
					coord = { 85.8, 69.0, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/15 Black Broodling slain
							provider = { "n", 7047 },	-- Black Broodling
						}),
						objective(2, {	-- 0/10 Black Dragonspawn slain
							provider = { "n", 7040 },	-- Black Dragonspawn
						}),
						objective(3, {	-- 0/1 Black Drake slain
							provider = { "n", 7044 },	-- Black Drake
						}),
						objective(4, {	-- 0/4 Black Wyrmkin slain
							provider = { "n", 7041 },	-- Black Wyrmkin
						}),
					},
				}),
				q(6646, {	-- Favor Amongst the Brotherhood, Blood of the Mountain
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 11382, 1 } },	-- Blood of the Mountain
					repeatable = true,
					lvl = 60,
				}),
				q(6645, {	-- Favor Amongst the Brotherhood, Core Leather
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 17012, 2 } },	-- Core Leather
					repeatable = true,
					lvl = 60,
				}),
				q(6642, {	-- Favor Amongst the Brotherhood, Dark Iron Ore
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 11370, 10 } },	-- Dark Iron Ore
					repeatable = true,
					lvl = 60,
				}),
				q(6643, {	-- Favor Amongst the Brotherhood, Fiery Core
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 17010, 1 } },	-- Fiery Core
					repeatable = true,
					lvl = 60,
				}),
				q(6644, {	-- Favor Amongst the Brotherhood, Lava Core
					qg = 12944,	-- Lokhtos Darkbargainer
					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
					cost = { { "i", 17011, 1 } },	-- Lava Core
					repeatable = true,
					lvl = 60,
				}),
				q(4122, {	-- Grark Lorkrub
					sourceQuests = 4082,	-- KILL ON SIGHT: High Ranking Dark Iron Officials
					qg = 9080,	-- Lexlort <Kargath Expeditionary Force>
					qi = 11286,	-- Thorium Shackles
					coord = { 5.9, 47.6, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
				}),
				q(4126, {	-- Hurley Blackbreath
					sourceQuest = 4128,	-- Ragnar Thunderbrew
					qg = 1267,	-- Ragnar Thunderbrew
					coord = { 46.8, 52.4, DUN_MOROGH },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 Lost Thunderbrew Recipe
							provider = { "i", 11312 },	-- Lost Thunderbrew Recipe
						}),
						i(12000),	-- Limb Cleaver
						i(11964),	-- Swiftstrike Cudgel
						i(12003),	-- Dark Dwarven Lager
					},
				}),
				q(4263, {	-- Incendius!
					sourceQuest = 4262,	-- Overmaster Pyron
					qg = 9561,	-- Jalinda Sprig
					coord = { 85.4, 70.1, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Lord Incendius slain
							provider = { "n", 9017 },	-- Lord Incendius
						}),
						i(12112),	-- Crypt Demon Bracers
						i(12114),	-- Nightfall Gloves
						i(12115),	-- Stalwart Clutch
						i(12113),	-- Sunborne Cape
					},
				}),
				q(4322, {	-- Jail Break!
					sourceQuest = 4282,	-- A Shred of Hope
					qg = 9023,	-- Marshal Windsor
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						i(12061),	-- Blade of Reckoning
						i(12062),	-- Skilled Fighting Blade
						i(12065),	-- Ward of the Elements
					},
				}),
				q(4341, {	-- Kharan Mighthammer
					sourceQuest = 3701,	-- The Smoldering Ruins of Thaurissan (2/2)
					qg = 2784,	-- King Magni Bronzebeard <Lord of Ironforge>
					coord = { 39.09, 56.19, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4342, {	-- Kharan's Tale
					sourceQuest = 4341,	-- Kharan Mighthammer
					qg = 9021,	-- Kharan Mighthammer
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4081, {	-- KILL ON SIGHT: Dark Iron Dwarves
					provider = { "o", 164867 },	-- WANTED
					coord = { 3.9, 47.4, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/10 Anvilrage Guardsman slain
							provider = { "n", 8891 },	-- Anvilrage Guardsman
						}),
						objective(2, {	-- 0/10 Anvilrage Warden slain
							provider = { "n", 8890 },	-- Anvilrage Warden
						}),
						objective(3, {	-- 0/10 Anvilrage Footman slain
							provider = { "n", 8892 },	-- Anvilrage Footman
						}),
					},
				}),
				q(4082, {	-- KILL ON SIGHT: High Ranking Dark Iron Officials
					sourceQuest = 4081,	-- KILL ON SIGHT: Dark Iron Dwarves
					provider = { "o", 164868 },	-- KILL ON SIGHT
					coord = { 3.9, 47.4, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/10 Anvilrage Medic slain
							provider = { "n", 8894 },	-- Anvilrage Medic
						}),
						objective(2, {	-- 0/10 Anvilrage Soldier slain
							provider = { "n", 8893 },	-- Anvilrage Soldier
						}),
						objective(3, {	-- 0/10 Anvilrage Officer slain
							provider = { "n", 8895 },	-- Anvilrage Officer
						}),
					},
				}),
				q(4134, {	-- Lost Thunderbrew Recipe
					sourceQuest = 4133,	-- Vivian Lagrave
					qg = 9078,	-- Shadowmage Vivian Lagrave <Kargath Expeditionary Force>
					coord = { 2.9, 47.8, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 Lost Thunderbrew Recipe
							provider = { "i", 11312 },	-- Lost Thunderbrew Recipe
						}),
						i(12000),	-- Limb Cleaver
						i(11964),	-- Swiftstrike Cudgel
					},
				}),
				q(4241, {	-- Marshal Windsor
					sourceQuest = 4224,	-- The True Masters (6/6)
					qg = 9560,	-- Marshal Maxwell
					coord = { 84.74, 69.02, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				-- Crieve NOTE: If a Blizzard Dev ever reads this, please know that this is why I have trust issues.
				-- #if BEFORE SL
				q(28258, {	-- Meet with Ander Germaine / Meet with Signilda Hardforge / [SL+]
					qgs = {
						17120,	-- Behomat
						4087,	-- Arias'ta Bladesinger
					},
					coords = {
						{ 56.4, 46.2, THE_EXODAR },	-- Behomat
						{ 56.4, 46.2, DARNASSUS },	-- Arias'ta Bladesinger
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { WARRIOR },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28302, {	-- Meet with Avaros Dawnglaive [SL+] / Meet with Sunwalker Atohmo
					qgs = {
						43795,	-- Aponi Brightmane
						20406,	-- Champion Cyssa Dawnrose
					},
					coords = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { PALADIN },
					races = { TAUREN },
					isBreadcrumb = true,
				}),
				q(28303, {	-- Meet With Avaros Dawnglaive [SL+] / Meet with Master Pyreanor
					qgs = {
						43795,	-- Aponi Brightmane
						16681,	-- Champion Bachi
						20406,	-- Champion Cyssa Dawnrose
					},
					coords = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 92.0, 37.2, SILVERMOON_CITY },	-- Champion Bachi
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { PALADIN },
					races = { BLOODELF },
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28260, {	-- Meet with Dalgrun Steelpine [SL+] / Meet with Wulf Hansreim
					qgs = {
						17122,	-- Vord
						5115,	-- Daera Brightspear
						4138,	-- Jeen'ra Nightrunner
					},
					coords = {
						{ 47.2, 88.4, THE_EXODAR },	-- Vord
						{ 47.2, 88.4, IRONFORGE },	-- Daera Brightspear
						{ 43.4, 26.0, DARNASSUS },	-- Jeen'ra Nightrunner
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { HUNTER },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				q(28259, {	-- Meet with Demisette Cloyce / Meet with Evelyn Thorn [SL+]
					qg = 5173,	-- Alexander Calder
					coord = { 50.2, 6.8, IRONFORGE },
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { WARLOCK },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #if AFTER SL
				q(28268, {	-- Meet with Ezul'aan [SL+] / Meet with Lord Grayson Shadowbreaker
					qgs = {
						16761,	-- Baatun
						35281,	-- Rukua
						5147,	-- Valgar Highforge
					},
					coords = {
						{ 39.0, 84.2, THE_EXODAR },	-- Baatun
						{ 43.6, 78.4, DARNASSUS },	-- Rukua
						{ 23.6, 5.6, IRONFORGE },	-- Valgar Highforge
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { PALADIN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28287, {	-- Meet with Farseer Umbrua / Meet with Mulric Boldrock [SL+]
					qgs = {
						52292,	-- Droha
						23127,	-- Farseer Javad
					},
					coords = {
						{ 43.8, 78.8, DARNASSUS },	-- Droha
						{ 55.2, 29.0, IRONFORGE },	-- Farseer Javad
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { SHAMAN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28300, {	-- Meet with Feenix Arcshine [SL+] / Meet with Ureda
					qgs = {
						3047,	-- Archmage Shymm
						4566,	-- Kaelystia Hatebringer
						16653,	-- Inethven
					},
					coords = {
						{ 22.6, 15.0, THUNDER_BLUFF },	-- Archmage Shymm
						{ 59.2, 19.7, SILVERMOON_CITY },	-- Inethven
						{ 85.2, 14.2, UNDERCITY },	-- Kaelystia Hatebringer
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { MAGE },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28263, {	-- Meet with Frazzle Frostfingers [SL+] / Meet with Maginor Dumas
					qgs = {
						16749,	-- Edirah
						50690,	-- Tarelvir
						5146,	-- Nittlebur Sparkfizzle
					},
					coords = {
						{ 26.2, 6.2, THE_EXODAR },	-- Edirah
						{ 37.6, 80.0, DARNASSUS },	-- Tarelvir
						{ 26.2, 6.2, IRONFORGE },	-- Nittlebur Sparkfizzle
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { MAGE },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28285, {	-- Meet with High Priestess Laurena / Meet with Patrice Lancaster [SL+]
					qgs = {
						11401,	-- Priestess Alathea
						11406,	-- High Priest Rohan
						16756,	-- Caedmos
					},
					coords = {
						{ 43.4, 79.2, DARNASSUS },	-- Priestess Alathea
						{ 25.0, 8.2, IRONFORGE },	-- High Priest Rohan
						{ 38.5, 50.9, THE_EXODAR },	-- Caedmos
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { PRIEST },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28301, {	-- Meet with Hretar Riverspeaker [SL+] / Meet with Terga Earthbreaker
					qgs = {
						51639,	-- Kador Cloudsong
						16661,	-- Gez'li
					},
					coords = {
						{ 22.2, 19.0, THUNDER_BLUFF },	-- Kador Cloudsong
						{ 71.8, 56.0, SILVERMOON_CITY },	-- Gez'li
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { SHAMAN },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER WOD
				q(28299, {	-- Meet with Kranosh [WOD+] / Meet with Kazak Darkscream [SL+] / Meet with Zevrost
					qgs = {
						43881,	-- Delano Morisett
						4563,	-- Kaal Soulreaper
						16648,	-- Zanien
						-- #if AFTER MID
						241482,	-- Zanien Silvermoon <Warlock Trainer>
						-- #endif
					},
					coords = {
						{ 25.2, 14.4, THUNDER_BLUFF },	-- Delano Morisett
						{ 73.2, 45.2, SILVERMOON_CITY },	-- Zanien
						{ 86.0, 15.6, UNDERCITY },	-- Kaal Soulreaper
						-- #if AFTER MID
						{ 50.9, 61.0, MAP.MIDNIGHT.SILVERMOON_CITY },	-- Zanien <Warlock Trainer>
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { WARLOCK },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if BEFORE SL
				q(28268, {	-- Meet with Lord Grayson Shadowbreaker / Meet with Ezul'aan [SL+]
					qgs = {
						16761,	-- Baatun
						35281,	-- Rukua
						5147,	-- Valgar Highforge
					},
					coords = {
						{ 39.0, 84.2, THE_EXODAR },	-- Baatun
						{ 43.6, 78.4, DARNASSUS },	-- Rukua
						{ 23.6, 5.6, IRONFORGE },	-- Valgar Highforge
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { PALADIN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28262, {	-- Meet with Lord Tony Romano / Meet with Veruca Darkstream [SL+]
					qgs = {
						4214,	-- Erion Shadewhisper
						5165,	-- Hulfdan Blackbeard
					},
					coords = {
						{ 40.0, 39.6, DARNASSUS },	-- Erion Shadewhisper
						{ 51.6, 14.6, IRONFORGE },	-- Hulfdan Blackbeard
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { ROGUE },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28263, {	-- Meet with Maginor Dumas / Meet with Frazzle Frostfingers [SL+]
					qgs = {
						16749,	-- Edirah
						50690,	-- Tarelvir
						5146,	-- Nittlebur Sparkfizzle
					},
					coords = {
						{ 26.2, 6.2, THE_EXODAR },	-- Edirah
						{ 37.6, 80.0, DARNASSUS },	-- Tarelvir
						{ 26.2, 6.2, IRONFORGE },	-- Nittlebur Sparkfizzle
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { MAGE },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28303, {	-- Meet with Master Pyreanor / Meet With Avaros Dawnglaive [SL+]
					qgs = {
						43795,	-- Aponi Brightmane
						16681,	-- Champion Bachi
						20406,	-- Champion Cyssa Dawnrose
					},
					coords = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 92.0, 37.2, SILVERMOON_CITY },	-- Champion Bachi
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { PALADIN },
					races = { BLOODELF },
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28287, {	-- Meet with Mulric Boldrock [SL+] / Meet with Farseer Umbrua
					qgs = {
						52292,	-- Droha
						23127,	-- Farseer Javad
					},
					coords = {
						{ 43.8, 78.8, DARNASSUS },	-- Droha
						{ 55.2, 29.0, IRONFORGE },	-- Farseer Javad
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { SHAMAN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28297, {	-- Meet with Ormak Grimshot / Meet with Tamanji [SL+]
					qgs = {
						39116,	-- Apolos
						3039,	-- Holt Thunderhorn
						16674,	-- Zandine
					},
					coords = {
						{ 57.4, 89.2, THUNDER_BLUFF },	-- Holt Thunderhorn
						{ 84.4, 28.0, SILVERMOON_CITY },	-- Zandine
						{ 49.6, 29.0, UNDERCITY },	-- Apolos
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { HUNTER },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28285, {	-- Meet with Patrice Lancaster [SL+] / Meet with High Priestess Laurena
					qgs = {
						11401,	-- Priestess Alathea
						11406,	-- High Priest Rohan
						16756,	-- Caedmos
					},
					coords = {
						{ 43.4, 79.2, DARNASSUS },	-- Priestess Alathea
						{ 25.0, 8.2, IRONFORGE },	-- High Priest Rohan
						{ 38.5, 50.9, THE_EXODAR },	-- Caedmos
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { PRIEST },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28258, {	-- Meet with Signilda Hardforge [SL+] / Meet with Ander Germaine
					qgs = {
						17120,	-- Behomat
						4087,	-- Arias'ta Bladesinger
					},
					coords = {
						{ 56.4, 46.2, THE_EXODAR },	-- Behomat
						{ 56.4, 46.2, DARNASSUS },	-- Arias'ta Bladesinger
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { WARRIOR },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28302, {	-- Meet with Sunwalker Atohmo / Meet with Avaros Dawnglaive [SL+]
					qgs = {
						43795,	-- Aponi Brightmane
						20406,	-- Champion Cyssa Dawnrose
					},
					coords = {
						{ 63.2, 79.8, THUNDER_BLUFF },	-- Aponi Brightmane
						{ 57.8, 90.2, UNDERCITY },	-- Champion Cyssa Dawnrose
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { PALADIN },
					races = { TAUREN },
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28297, {	-- Meet with Tamanji [SL+] / Meet with Ormak Grimshot
					qgs = {
						39116,	-- Apolos
						3039,	-- Holt Thunderhorn
						16674,	-- Zandine
					},
					coords = {
						{ 57.4, 89.2, THUNDER_BLUFF },	-- Holt Thunderhorn
						{ 84.4, 28.0, SILVERMOON_CITY },	-- Zandine
						{ 49.6, 29.0, UNDERCITY },	-- Apolos
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { HUNTER },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if BEFORE SL
				q(28301, {	-- Meet with Terga Earthbreaker / Meet with Hretar Riverspeaker [SL+]
					qgs = {
						51639,	-- Kador Cloudsong
						16661,	-- Gez'li
					},
					coords = {
						{ 22.2, 19.0, THUNDER_BLUFF },	-- Kador Cloudsong
						{ 71.8, 56.0, SILVERMOON_CITY },	-- Gez'li
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { SHAMAN },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if BEFORE SL
				q(28300, {	-- Meet with Ureda / Meet with Feenix Arcshine [SL+]
					qgs = {
						3047,	-- Archmage Shymm
						4566,	-- Kaelystia Hatebringer
						16653,	-- Inethven
					},
					coords = {
						{ 22.6, 15.0, THUNDER_BLUFF },	-- Archmage Shymm
						{ 53.0, 19.6, SILVERMOON_CITY },	-- Inethven
						{ 85.2, 14.2, UNDERCITY },	-- Kaelystia Hatebringer
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { MAGE },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif
				-- #if AFTER SL
				q(28262, {	-- Meet with Veruca Darkstream [SL+] / Meet with Lord Tony Romano
					qgs = {
						4214,	-- Erion Shadewhisper
						5165,	-- Hulfdan Blackbeard
					},
					coords = {
						{ 40.0, 39.6, DARNASSUS },	-- Erion Shadewhisper
						{ 51.6, 14.6, IRONFORGE },	-- Hulfdan Blackbeard
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { ROGUE },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28260, {	-- Meet with Wulf Hansreim / Meet with Dalgrun Steelpine [SL+]
					qgs = {
						17122,	-- Vord
						5115,	-- Daera Brightspear
						4138,	-- Jeen'ra Nightrunner
					},
					coords = {
						{ 47.2, 88.4, THE_EXODAR },	-- Vord
						{ 47.2, 88.4, IRONFORGE },	-- Daera Brightspear
						{ 43.4, 26.0, DARNASSUS },	-- Jeen'ra Nightrunner
					},
					timeline = { ADDED_4_0_3 },
					maps = { STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					classes = { HUNTER },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE WOD
				q(28299, {	-- Meet with Zevrost / Meet with Kranosh [WOD+] / Meet with Kazak Darkscream [SL+]
					qgs = {
						43881,	-- Delano Morisett
						4563,	-- Kaal Soulreaper
						16648,	-- Zanien
					},
					coords = {
						{ 25.2, 14.4, THUNDER_BLUFF },	-- Delano Morisett
						{ 73.2, 45.2, SILVERMOON_CITY },	-- Zanien
						{ 86.0, 15.6, UNDERCITY },	-- Kaal Soulreaper
					},
					timeline = { ADDED_4_0_3 },
					maps = { ORGRIMMAR },
					classes = { WARLOCK },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #endif






				q(4132, {	-- Operation: Death to Angerforge
					sourceQuest = 4121,	-- Precarious Predicament
					qg = 9077,	-- Warlord Goretooth <Kargath Expeditionary Force>
					coord = { 5.8, 47.5, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
					groups = {
						objective(1, {	-- 0/1 General Angerforge slain
							provider = { "n", 9033 },	-- General Angerforge
						}),
						i(12059),	-- Conqueror's Medallion
					},
				}),
				q(4262, {	-- Overmaster Pyron
					qg = 9561,	-- Jalinda Sprig
					coord = { 85.4, 70.1, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					maps = { BLACKROCK_MOUNTAIN },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Overmaster Pyron slain
							provider = { "n", 9026 },	-- Overmaster Pyron
						}),
					},
				}),
				q(4121, {	-- Precarious Predicament
					sourceQuest = 4122,	-- Grark Lorkrub
					qg = 9520,	-- Grark Lorkrub
					coord = { 40.2, 34.2, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
					groups = {
						objective(1, {	-- 0/1 Thorium Shackles
							provider = { "i", 11286 },	-- Thorium Shackles
						}),
						objective(2, {	-- Prisoner Transport
							provider = { "i", 11286 },	-- Thorium Shackles
						}),
					},
				}),
				q(4128, {	-- Ragnar Thunderbrew
					qg = 9540,	-- Enohar Thunderbrew
					coord = { 63.6, 20.6, BLASTED_LANDS },
					timeline = { REMOVED_4_0_3 },
					maps = { DUN_MOROGH },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = 50,
				}),
				q(4136, {	-- Ribbly Screwspigot
					sourceQuest = 4324,	-- Yuka Screwspigot
					qg = 9544,	-- Yuka Screwspigot
					coord = { 66.1, 21.9, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Ribbly's Head
							provider = { "i", 11313 },	-- Ribbly's Head
						}),
						i(11963),	-- Penance Spaulders
						i(12049),	-- Splintsteel Armor
						i(11865),	-- Rancor Boots
					},
				}),
				q(4295, {	-- Rocknot's Ale
					qg = 9503,	-- Private Rocknot
					cost = { { "i", 11325, 2 } },	-- Dark Iron Ale Mug
					repeatable = true,
				}),
				q(28401, {	-- Slaves of the Firelord (A)
					sourceQuest = 28287,	-- Meet with Farseer Umbrua / Meet with Mulric Boldrock [SL+]
					qgs = {
						-- #if AFTER SL
						164945,	-- Mulric Boldrock
						-- #else
						20407,	-- Farseer Umbrua
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 78.2, 70.9, STORMWIND_CITY },
						-- #else
						{ 64.6, 33.0, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { SHAMAN },
					races = ALLIANCE_ONLY,
					groups = {
						i(65640),	-- Mask of the Farseer
						i(65622),	-- Headcover of the Farseer
					},
				}),
				q(28465, {	-- Slaves of the Firelord (H)
					sourceQuest = 28301,	-- Meet with Terga Earthbreaker / Meet with Hretar Riverspeaker [SL+]
					qgs = {
						-- #if AFTER SL
						168628,	-- Hretar Riverspeaker <Shaman Trainer>
						-- #else
						72939,	-- Terga Earthbreaker
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 73.6, 43.3, ORGRIMMAR },
						-- #else
						{ 39.0, 47.4, ORGRIMMAR },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { SHAMAN },
					races = HORDE_ONLY,
					qi = 64312,	-- Totem of Freedom (QI!)
					groups = {
						i(65643),	-- Mask of the Speaker
						i(65630),	-- Headcover of the Speaker
					},
				}),
				q(28399, {	-- Stones of Binding (A)
					sourceQuest = 28259,	-- Meet with Demisette Cloyce / Meet with Evelyn Thorn [SL+]
					qgs = {
						-- #if AFTER SL
						164942,	-- Evelyn Thorn
						-- #else
						461,	-- Demisette Cloyce
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 79.5, 69.9, STORMWIND_CITY },
						-- #else
						{ 39.4, 84.8, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					classes = { WARLOCK },
					groups = {
						i(65621),	-- Horns of Justified Sins
					},
				}),
				q(28459, {	-- Stones of Binding (H)
					sourceQuest = 28299,	-- Meet with Zevrost / Meet with Kranosh [WOD+] / Meet with Kazak Darkscream [SL+]
					qgs = {
						-- #if AFTER SL
						168623,	-- Kazak Darkscream
						-- #ELSE
						88705,	-- Kranosh
						-- #ENDIF
					},
					coords = {
						-- #if AFTER SL
						{ 74.6, 47.4, ORGRIMMAR },
						-- #ELSE
						{ 49.0, 55.2, ORGRIMMAR },
						-- #ENDIF
					},
					timeline = { ADDED_4_0_3 },
					classes = { WARLOCK },
					races = HORDE_ONLY,
					groups = {
						i(65627),	-- Horns of the Left Hand Path
					},
				}),
				q(6402, {	-- Stormwind Rendezvous
					sourceQuest = 4322,	-- Jail Break!
					qg = 9560,	-- Marshal Maxwell
					coord = { 84.7, 69.0, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4361, {	-- The Bearer of Bad News
					sourceQuest = 4342,	-- Kharan's Tale
					qg = 9021,	-- Kharan Mighthammer
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(28406, {	-- The Dark Iron Army (A)
					sourceQuest = 28262,	-- Meet with Lord Tony Romano / Meet with Veruca Darkstream [SL+]
					qgs = {
						-- #if AFTER SL
						164946,	-- Veruca Darkstream
						-- #else
						13283,	-- Lord Tony Romano
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 78.7, 70.6, STORMWIND_CITY },
						-- #else
						{ 79.6, 60.8, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					classes = { ROGUE },
					groups = {
						i(65624),	-- SI:7 Special Issue Facemask
					},
				}),
				q(28463, {	-- The Dark Iron Army (H)
					sourceQuest = 28298,	-- Meet with Gordul (Cata+) / Meet with Thega Graveblade (SL+)
					qgs = {
						-- #if AFTER SL
						168598,	-- Thega Graveblade
						-- #else
						47233,	-- Gordul
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 75.4, 47.4, ORGRIMMAR },
						-- #else
						{ 44.6, 61.4, ORGRIMMAR },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { ROGUE },
					races = HORDE_ONLY,
					groups = {
						i(65629),	-- Facemask of the Shattered Hand
					},
				}),
				q(6501, {	-- The Dragon's Eye
					-- #if BEFORE 3.0.2
					description = "Go to Haleh in Winterspring. Use the blue rune on the ground inside the cave to reach her. Don't bother going to Dustwallow Marsh.",
					-- #endif
					sourceQuest = 6403,	-- The Great Masquerade
					qg = 1748,	-- Highlord Bolvar Fordragon
					qi = 16662,	-- Fragment of the Dragon's Eye
					coord = { 78.2, 18.1, STORMWIND_CITY },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(4002, {	-- The Eastern Kingdoms
					sourceQuest = 4001,	-- What Is Going On? (2/2)
					qg = 4949,	-- Thrall <Warchief>
					coord = { 31.61, 37.83, ORGRIMMAR },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
				}),
				q(4362, {	-- The Fate of the Kingdom
					sourceQuest = 4361,	-- The Bearer of Bad News
					qg = 2784,	-- King Magni Bronzebeard <Lord of Ironforge>
					coord = { 39.09, 56.19, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 Emperor Dagran Thaurissan slain
							provider = { "n", 9019 },	-- Emperor Dagran Thaurissan
						}),
					},
				}),
				q(6403, {	-- The Great Masquerade
					-- #if BEFORE 3.0.2
					description = "This quest can be solo'd. Do NOT touch anything and let Bolvar take care of the dragons. They do heavy AOE, you will likely die unless you're in a raid group of 20+.",
					-- #endif
					sourceQuest = 6402,	-- Stormwind Rendezvous
					qg = 12580,	-- Reginald Windsor
					coord = { 64.7, 76.8, STORMWIND_CITY },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(28394, {	-- The Golem Lord's Creations (A)
					sourceQuest = 28260,	-- Meet with Wulf Hansreim / Meet with Dalgrun Steelpine [SL+]
					qgs = {
						-- #if AFTER SL
						164960,	-- Dalgrun Steelpine <Hunter Trainer>
						-- #else
						44247,	-- Wulf Hansreim
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 79.2, 71.2, STORMWIND_CITY },
						-- #else
						{ 79.0, 71.0, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { HUNTER },
					races = ALLIANCE_ONLY,
					groups = {
						i(65619),	-- Helm of the Crown
					},
				}),
				q(28461, {	-- The Golem Lord's Creations (H)
					sourceQuest = 28297,	-- Meet with Ormak Grimshot / Meet with Tamanji [SL+]
					qgs = {
						-- #if AFTER SL
						168551,	-- Tamanji
						-- #else
						3352,	-- Ormak Grimshot
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 73.8, 43.8, ORGRIMMAR },
						-- #else
						{ 63.8, 32.8, ORGRIMMAR },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { HUNTER },
					races = HORDE_ONLY,
					groups = {
						i(65628),	-- Helm of the Great Hunter
					},
				}),
				q(4286, {	-- The Good Stuff
					qg = 9177,	-- Oralius
					coord = { 84.6, 68.7, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/20 Dark Iron Fanny Pack
							provider = { "i", 11468 },	-- Dark Iron Fanny Pack
						}),
						i(11883),	-- A Dingy Fanny Pack
					},
				}),
				q(4123, {	-- The Heart of the Mountain
					qg = 9536,	-- Maxwort Uberglint
					coord = { 65.2, 23.9, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					lvl = 50,
					groups = {
						objective(1, {	-- 0/1 The Heart of the Mountain
							provider = { "i", 11309 },	-- The Heart of the Mountain
						}),
					},
				}),
				q(7201, {	-- The Last Element
					sourceQuest = 3906,	-- Disharmony of Flame
					qg = 9078,	-- Shadowmage Vivian Lagrave <Kargath Expeditionary Force>
					coord = { 2.9, 47.76, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/10 Essence of the Elements
							provider = { "i", 11129 },	-- Essence of the Elements
						}),
						i(12038),	-- Lagrave's Seal
					},
				}),
				q(4201, {	-- The Love Potion
					qg = 9500,	-- Mistress Nagmara
					timeline = { REMOVED_4_0_3 },
					maps = { AZSHARA, UNGORO_CRATER },
					lvl = 50,
					groups = {
						objective(1, {	-- 0/4 Gromsblood
							provider = { "i", 8846 },	-- Gromsblood
						}),
						objective(2, {	-- 0/10 Giant Silver Vein
							provider = { "i", 11405 },	-- Giant Silver Vein
							coord = { 68.0, 17.0, AZSHARA },
							crs = {
								6146,	-- Cliff Breaker
								6147,	-- Cliff Thunderer
								6148,	-- Cliff Walker
							},
						}),
						objective(3, {	-- 0/1 Nagmara's Filled Vial
							provider = { "i", 11413 },	-- Nagmara's Filled Vial
							cost = { { "i", 11412, 1 } },	-- Nagmara's Vial
							coord = { 31.0, 49.0, UNGORO_CRATER },
						}),
						i(11962),	-- Manacle Cuffs
						i(11866),	-- Nagmara's Whipping Belt
					},
				}),
				q(4004, {	-- The Princess Saved?
					sourceQuest = 4003,	-- The Royal Rescue
					qg = 8929,	-- Princess Moira Bronzebeard <Princess of Ironforge>
					timeline = { REMOVED_4_0_3 },
					maps = { ORGRIMMAR },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						i(12545),	-- Eye of Orgrimmar
						i(12544),	-- Thrall's Resolve
					},
				}),
				q(4363, {	-- The Princess's Surprise
					sourceQuest = 4362,	-- The Fate of the Kingdom
					qg = 8929,	-- Princess Moira Bronzebeard <Princess of Ironforge>
					timeline = { REMOVED_4_0_3 },
					maps = { IRONFORGE },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						i(12548),	-- Magni's Will
						i(12543),	-- Songstone of Ironforge
					},
				}),
				q(28398, {	-- The Pyromancer's Grimoire (A)
					sourceQuest = 28263,	-- Meet with Maginor Dumas / Meet with Frazzle Frostfingers [SL+]
					qgs = {
						-- #if AFTER SL
						164955,	-- Frazzle Frostfingers
						-- #else
						331,	-- Maginor Dumas
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 80.0, 69.6, STORMWIND_CITY },
						-- #else
						{ 49.2, 87.6, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					classes = { MAGE },
					groups = {
						i(65620),	-- Hood of the Royal Wizard
					},
				}),
				q(28458, {	-- The Pyromancer's Grimoire (H)
					sourceQuest = 28300,	-- Meet with Ureda / Meet with Feenix Arcshine [SL+]
					qgs = {
						-- #if AFTER SL
						168626,	-- Feenix Arcshine
						-- #else
						47246,	-- Ureda
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 74.6, 43.5, ORGRIMMAR },
						-- #else
						{ 48.4, 62.6, ORGRIMMAR },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { MAGE },
					races = HORDE_ONLY,
					groups = {
						i(65626),	-- Hood of the Arcane Path
					},
				}),
				q(4061, {	-- The Rise of the Machines (1/3)
					qg = 9079,	-- Hierophant Theodora Mulvadania <Kargath Expeditionary Force>
					coord = { 3.02, 47.81, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					maps = { BURNING_STEPPES },
					races = HORDE_ONLY,
					lvl = 52,
					groups = {
						objective(1, {	-- 0/10 Fractured Elemental Shard
							provider = { "i", 11266 },	-- Fractured Elemental Shard
							crs = {
								7032,	-- Greater Obsidian Elemental
								8981,	-- Malfunctioning Reaver
								7039,	-- War Reaver
							},
						}),
					},
				}),
				q(4062, {	-- The Rise of the Machines (2/3)
					sourceQuest = 4061,	-- The Rise of the Machines (1/3)
					qg = 9079,	-- Hierophant Theodora Mulvadania <Kargath Expeditionary Force>
					qi = 11267,	-- Elemental Shard Sample
					coord = { 3.02, 47.81, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
				}),
				q(4063, {	-- The Rise of the Machines (3/3)
					sourceQuest = 4062,	-- The Rise of the Machines (2/3)
					qg = 2921,	-- Lotwil Veriatus
					coord = { 25.95, 44.87, BADLANDS },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 52,
					groups = {
						objective(1, {	-- 0/1 Head of Argelmach
							provider = { "i", 11268 },	-- Head of Argelmach
						}),
						objective(2, {	-- 0/10 Intact Elemental Core
							provider = { "i", 11269 },	-- Intact Elemental Core
						}),
						i(12110),	-- Raincaster Drape
						i(12109),	-- Azure Moon Amice
						i(12111),	-- Lavaplate Gauntlets
						i(12108),	-- Basaltscale Armor
					},
				}),
				q(4003, {	-- The Royal Rescue
					sourceQuest = 4002,	-- The Eastern Kingdoms
					qg = 4949,	-- Thrall <Warchief>
					coord = { 31.61, 37.83, ORGRIMMAR },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- 0/1 Emperor Dagran Thaurissan slain
							provider = { "n", 9019 },	-- Emperor Dagran Thaurissan
						}),
					},
				}),
				q(3702, {	-- The Smoldering Ruins of Thaurissan (1/2)
					qg = 8879,	-- Royal Historian Archesonus
					coord = { 38.37, 55.31, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 50,
				}),
				q(3701, {	-- The Smoldering Ruins of Thaurissan (2/2)
					sourceQuest = 3702,	-- The Smoldering Ruins of Thaurissan (1/2)
					qg = 8879,	-- Royal Historian Archesonus
					coord = { 38.37, 55.31, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					maps = { BURNING_STEPPES },
					races = ALLIANCE_ONLY,
					lvl = 50,
					groups = {
						objective(1, {	-- 0/12 Information Recovered
							provider = { "o", 153556 },	-- Thaurissan Relic
						}),
						i(12102),	-- Ring of the Aristocrat
					},
				}),
				q(4083, {	-- The Spectral Chalice
					description = "If you are a miner with 230 skill, speak with Gloom'rel to have him summon the Spectral Chalice.\n\nAfter you deposit the required items, speak to Gloom'rel again to learn how to smelt Dark Iron Ore.",
					provider = { "o", 164869 },	-- Spectral Chalice
					cost = {
						{ "i", 3577, 20 },	-- 20x Gold Bar
						{ "i", 7910, 2 },	-- 2x Star Ruby
						{ "i", 6037, 10 },	-- 10x Truesilver Bar
					},
					requireSkill = MINING,
					cr = 9037,	-- Gloom'rel
					lvl = 40,
					groups = {
						r(14891),	-- Smelt Dark Iron
					},
				}),
				q(4183, {	-- The True Masters (1/6)
					sourceQuest = 4182,	-- Dragonkin Menace
					qg = 9562,	-- Helendis Riverhorn
					qi = 11366,	-- Helendis Riverhorn's Letter
					coord = { 85.8, 69.0, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				q(4184, {	-- The True Masters (2/6)
					sourceQuest = 4183,	-- The True Masters (1/6)
					qg = 344,	-- Magistrate Solomon
					qi = 11367,	-- Solomon's Plea to Bolvar
					coord = { 30.0, 44.5, REDRIDGE_MOUNTAINS },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				q(4185, {	-- The True Masters (3/6)
					sourceQuest = 4184,	-- The True Masters (2/6)
					qg = 1748,	-- Highlord Bolvar Fordragon
					coord = { 78.2, 18.1, STORMWIND_CITY },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- Advice from Lady Prestor
							provider = { "n", 1749 },	-- Lady Katrana Prestor
						}),
					},
				}),
				q(4186, {	-- The True Masters (4/6)
					sourceQuest = 4185,	-- The True Masters (3/6)
					qg = 1748,	-- Highlord Bolvar Fordragon
					qi = 11368,	-- Bolvar's Decree
					coord = { 78.2, 18.1, STORMWIND_CITY },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				q(4223, {	-- The True Masters (5/6)
					sourceQuest = 4186,	-- The True Masters (4/6)
					qg = 344,	-- Magistrate Solomon
					coord = { 30.0, 44.5, REDRIDGE_MOUNTAINS },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
				}),
				q(4224, {	-- The True Masters (6/6)
					sourceQuest = 4223,	-- The True Masters (5/6)
					qg = 9560,	-- Marshal Maxwell
					coord = { 84.74, 69.02, BURNING_STEPPES },
					timeline = { REMOVED_3_0_2 },
					races = ALLIANCE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- Ragged John's Story
							provider = { "n", 9563 },	-- Ragged John
							coord = { 65.0, 23.8, BURNING_STEPPES },
						}),
					},
				}),
				q(4133, {	-- Vivian Lagrave
					qg = 5204,	-- Apothecary Zinge <Royal Apothecary Society>
					coord = { 50.1, 68.0, UNDERCITY },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = 50,
				}),
				q(28405, {	-- Weapons of Darkness (A)
					sourceQuest = 28268,	-- Meet with Lord Grayson Shadowbreaker
					qgs = {
						-- #if AFTER SL
						164952,	-- Ezul'aan <Paladin Trainer>
						-- #else
						928,	-- Lord Grayson Shadowbreaker
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 79.2, 69.6, STORMWIND_CITY },
						-- #else
						{ 52.6, 45.0, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { PALADIN },
					races = ALLIANCE_ONLY,
					groups = {
						i(65623),	-- Helm of the Order
						i(65641),	-- Faceguard of the Order
						i(65646),	-- Headguard of the Order
					},
				}),
				q(28466, {	-- Weapons of Darkness (Tauren)
					sourceQuest = 28302,	-- Meet with Sunwalker Atohmo / Meet with Avaros Dawnglaive [SL+]
					qg = 44725,	-- Sunwalker Atohmo
					coord = { 45.2, 53.4, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PALADIN },
					races = { TAUREN },
					groups = {
						i(65631),	-- Helm of the Sunwalker
						i(65644),	-- Faceguard of the Sunwalker
						i(65647),	-- Headguard of the Sunwalker
						-- You get these when completing the quest
						i(141976, {	-- Headguard of the Order
							description = "May need to re-login to the game to properly trigger this collected from Blizzard.",
							timeline = { ADDED_7_0_3 },
						}),
						i(141977, {	-- Faceguard of the Order
							description = "May need to re-login to the game to properly trigger this collected from Blizzard.",
							timeline = { ADDED_7_0_3 },
						}),
						i(141978, {	-- Helm of the Order
							description = "May need to re-login to the game to properly trigger this collected from Blizzard.",
							timeline = { ADDED_7_0_3 },
						}),
					},
				}),
				q(28473, {	-- Weapons of Darkness (Blood Elf)
					sourceQuest = 28303,	-- Meet with Master Pyreanor / Meet With Avaros Dawnglaive [SL+]
					qgs = {
						23128,	-- Master Pyreanor
						-- #if AFTER SL
						168597,	-- Avaros Dawnglaive <Paladin Trainer>
						-- #endif
					},
					coord = { 49.2, 71.2, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PALADIN },
					races = { BLOODELF },
					groups = {
						i(65632),	-- Helm of the Order
						i(65645),	-- Faceguard of the Order
						i(65648),	-- Headguard of the Order
						i(25549),	-- Blood Knight Tabard
					},
				}),
				q(3982, {	-- What Is Going On? (1/2)
					sourceQuest = 3981,	-- Commander Gor'shak
					qg = 9020,	-- Commander Gor'shak <Kargath Expeditionary Force>
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
				}),
				q(4001, {	-- What Is Going On? (2/2)
					sourceQuest = 3982,	-- What Is Going On? (1/2)
					qg = 9020,	-- Commander Gor'shak <Kargath Expeditionary Force>
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 48,
					groups = {
						objective(1, {	-- Information Gathered from Kharan
							provider = { "n", 9021 },	-- Kharan Mighthammer
						}),
					},
				}),
				q(4324, {	-- Yuka Screwspigot
					qg = 9706,	-- Yorba Screwspigot
					coord = { 67.0, 24.0, TANARIS },
					timeline = { REMOVED_4_0_3 },
					isBreadcrumb = true,
					lvl = 48,
				}),
				q(28393, {	-- A Dangerous Alliance [A]
					sourceQuest = 28258,	-- Meet with Ander Germaine / Meet with Signilda Hardforge / [SL+]
					qgs = {
						-- #if BEFORE SL
						914,	-- Ander Germaine
						-- #else
						164939,	-- Signilda Hardforge <Warrior Trainer>
						-- #endif
					},
					coords = {
						-- #if AFTER SL
						{ 80.3, 70.4, STORMWIND_CITY },
						-- #else
						{ 79.4, 69.0, STORMWIND_CITY },
						-- #endif
					},
					timeline = { ADDED_4_0_3 },
					classes = { WARRIOR },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65618),	-- Faceguard of the Crown
						i(65639),	-- Headguard of the Crown
					},
				}),
				q(28457, {	-- A Dangerous Alliance [H]
					sourceQuest = 28290,	-- Meet with Grezz Ragefist (Cata+) / Meet with Gormok Ogrefist (SL+)
					qg = 168596,	-- Gormok Ogrefist
					coord = { 73.6, 45.6, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { WARRIOR },
					races = HORDE_ONLY,
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65625),	-- Faceguard of the Horde
						i(65642),	-- Headguard of the Horde
					},
				}),
				-- #if AFTER SL
				q(28304, {	-- Journey to Orgrimmar [Undead] (SL+) / Meet with Dark Cleric Cecille (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { UNDEAD },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28307, {	-- Journey to Orgrimmar [Blood Elf] (SL+) / Meet with Tyelis (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { BLOODELF },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28308, {	-- Journey to Orgrimmar [Tauren] (SL+) / Meet with Seer Liwatha (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TAUREN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28309, {	-- Journey to Orgrimmar [Troll] (SL+) / Meet with Shadow-Walker Zuru (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TROLL },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28323, {	-- Journey to Orgrimmar [Goblin] (SL+) / Meet with Brother Silverhallow (Cata+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { GOBLIN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28323, {	-- Meet with Brother Silverhallow (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { GOBLIN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28304, {	-- Meet with Dark Cleric Cecille (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { UNDEAD },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28298, {	-- Meet with Gordul (Cata+) / Meet with Thega Graveblade (SL+)
					qgs = {
						16684,	-- Zelanis <Rogue Trainer>
						4584,	-- Gregory Charles <Rogue Trainer>
					},
					coords = {
						{ 79.4, 52.0, SILVERMOON_CITY },
						{ 84.6, 73.2, UNDERCITY },	-- Gregory Charles (Undercity)
					},
					timeline = { ADDED_4_0_3 },
					classes = { ROGUE },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28290, {	-- Meet with Gormok Ogrefist (SL+) / Meet with Grezz Ragefist (Cata+)
					qgs = {
						43009,	-- Alsudar the Bastion
						3042,	-- Sark Ragetotem
						4593,	-- Christoph Walker
					},
					coords = {
						{ 81.0, 37.8, SILVERMOON_CITY },	-- Alsudar the Bastion
						{ 57.2, 89.0, THUNDER_BLUFF },	-- Sark Ragetotem
						{ 47.2, 15.2, UNDERCITY },	-- Christoph Walker
					},
					timeline = { ADDED_4_0_3 },
					classes = { WARRIOR },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28290, {	-- Meet with Grezz Ragefist (Cata+) / Meet with Gormok Ogrefist (SL+)
					qgs = {
						43009,	-- Alsudar the Bastion
						3042,	-- Sark Ragetotem
						4593,	-- Christoph Walker
					},
					coords = {
						{ 81.0, 37.8, SILVERMOON_CITY },	-- Alsudar the Bastion
						{ 57.2, 89.0, THUNDER_BLUFF },	-- Sark Ragetotem
						{ 47.2, 15.2, UNDERCITY },	-- Christoph Walker
					},
					timeline = { ADDED_4_0_3 },
					classes = { WARRIOR },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28308, {	-- Meet with Seer Liwatha (Cata+) / Journey to Orgrimmar [Tauren] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TAUREN },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				q(28309, {	-- Meet with Shadow-Walker Zuru (Cata+) / Journey to Orgrimmar [Troll] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TROLL },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if AFTER SL
				q(28298, {	-- Meet with Thega Graveblade (SL+) / Meet with Gordul (Cata+)
					qgs = {
						16684,	-- Zelanis <Rogue Trainer>
						4584,	-- Gregory Charles <Rogue Trainer>
					},
					coords = {
						{ 79.4, 52.0, SILVERMOON_CITY },
						{ 84.6, 73.2, UNDERCITY },	-- Gregory Charles (Undercity)
					},
					timeline = { ADDED_4_0_3 },
					classes = { ROGUE },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif
				-- #if BEFORE SL
				q(28307, {	-- Meet with Tyelis (Cata+) / Journey to Orgrimmar [Blood Elf] (SL+)
					qgs = {
						16658,	-- Aldrae <Priest Trainer>
						3045,	-- Malakai Cross <Priest Trainer>
						43870,	-- Seer Beryl <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					coords = {
						{ 53.2, 26.6, SILVERMOON_CITY },	-- Aldrae <Priest Trainer>
						{ 24.8, 22.4, THUNDER_BLUFF },	-- Malakai Cross <Priest Trainer>
						{ 75.4, 28.0, THUNDER_BLUFF },	-- Seer Beryl <Priest Trainer>
						{ 49.3, 17.1, UNDERCITY },	-- Aelthalyste <Priest Trainer>
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { BLOODELF },
					isBreadcrumb = true,
					lvl = lvlsquish(50, 50, 20),
				}),
				-- #endif

				q(28475, {	-- Twilight Scheming [Blood Elf]
					sourceQuest = 28307,	-- Meet with Tyelis (Cata+) / Journey to Orgrimmar [Blood Elf] (SL+)
					qg = 45337,	-- Tyelis
					coord = { 49.0, 71.0, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { BLOODELF },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65634),	-- Crown of the Sunchaser
					},
				}),
				q(28478, {	-- Twilight Scheming [Goblin]
					sourceQuest = 28323,	-- Meet with Brother Silverhallow (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					qg = 45347,	-- Brother Silverhallow
					coord = { 37.8, 87.4, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { GOBLIN },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65637),	-- Crown of Golden Worship
					},
				}),
				q(28474, {	-- Twilight Scheming [Undead]
					sourceQuest = 28304,	-- Meet with Dark Cleric Cecille (Cata+) / Journey to Orgrimmar [Goblin] (SL+)
					qg = 45339,	-- Dark Cleric Cecille
					coord = { 48.2, 72.8, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { UNDEAD },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65633),	-- Crown of Forsaken Faith
					},
				}),
				q(28476, {	-- Twilight Scheming [Tauren]
					sourceQuest = 28308,	-- Meet with Seer Liwatha (Cata+) / Journey to Orgrimmar [Tauren] (SL+)
					qg = 44735,	-- Seer Liwatha
					coord = { 45.4, 53.4, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TAUREN },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65635),	-- Crown of the Earthmother
						-- You get these when completing the quest
						i(141979),	-- Crown of the Hallowed
						i(141980),	-- Crown of the Hallowed
						i(141981),	-- Crown of the Hallowed
						i(141982),	-- Crown of the Hallowed
					},
				}),
				q(28477, {	-- Twilight Scheming [Troll]
					sourceQuest = 28309,	-- Meet with Shadow-Walker Zuru (Cata+) / Journey to Orgrimmar [Troll] (SL+)
					qg = 45137,	-- Shadow-Walker Zuru
					coord = { 35.4, 69.2, ORGRIMMAR },
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = { TROLL },
					lvl = lvlsquish(50, 50, 20),
					groups = {
						i(65636),	-- Crown of the Shadow-Walker
					},
				}),
				q(28328, {	-- Twilight Scheming [Alliance]
					sourceQuest = 28285,	-- Meet with High Priestess Laurena / Meet with Patrice Lancaster [SL+]
					providers = {
						{"n", 164949 },	-- Patrice Lancaster
					},
					coords = {
						{ 78.9, 69.8, STORMWIND_CITY },
					},
					timeline = { ADDED_4_0_3 },
					classes = { PRIEST },
					races = ALLIANCE_ONLY,
					groups = {
						i(65616),	-- Crown of the Hallowed
						-- you are supposed to get these when doing the quest, but i completed it on 2 characters and haven't received them :) possible unknown race requirement?
						-- Crieve note: The following items are still sourceless on WoWHead, so it's quite possible the intent was to make versions for Allied Races, but Blizzard realized that'd be dumb and smacked the intern that was doing the dumb.
						-- i(141979),	-- Crown of the Hallowed
						-- i(141980),	-- Crown of the Hallowed
						-- i(141981),	-- Crown of the Hallowed
						-- i(141982),	-- Crown of the Hallowed
					},
				}),

				q(27569, {	-- Dark Iron Tacticians
					sourceQuest = 27568,	-- Infilitrating Shadowforge City [Alliance]
					qg = 45894,	-- Prospector Seymour
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27568, {	-- Infiltrating Shadowforge City [Alliance]
					qg = 45891,	-- Oralius
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27582, {	-- Infiltrating Shadowforge City [Horde]
					qg = 45839,	-- Galamav the Marksman
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27565, {	-- Into the Prison [Alliance]
					qg = 45892,	-- Jalinda Sprig
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27579, {	-- Into the Prison [Horde]
					qg = 45821,	-- Tha'trak Proudtusk
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27585, {	-- The 109th Division
					sourceQuest = 27582,	-- Infiltrating Shadowforge City [Horde]
					qg = 45820,	-- Razal'blade
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27596, {	-- The Heart of the Mountain
					qg = 45850,	-- Maxwort Uberglint
					timeline = { ADDED_4_0_3 },
				}),
				q(27603, {	-- The Sealed Gate
					qg = 45849,	-- Tinkee Steamboil
					timeline = { ADDED_4_0_3 },
				}),
				q(27567, {	-- Twilight?! No! [Alliance]
					sourceQuest = 27565,	-- Into the Prison [Alliance]
					qg = 45898,	-- Kevin Dawson
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27581, {	-- Twilight?! No! [Horde]
					sourceQuest = 27579,	-- Into the Prison [Horde]
					qg = 45818,	-- Lexlort
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27578, {	-- Morgan's Fruition
					sourceQuest = 27573,	-- The Dark Iron Pact [Alliance]
					qg = 45890,	-- Marshal Maxwell
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					groups = {
						i(65956),	-- Maxwell's Cloak
						i(65932),	-- Thaurissan's Breastplate
						i(65980),	-- Dark Iron Band
					},
				}),
				q(27593, {	-- Rebirth of the K.E.F
					sourceQuest = 27591,	-- The Dark Iron Pact [Horde]
					qg = 45840,	-- Warlord Goretooth
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
					groups = {
						i(68054),	-- Dark Iron Band
						i(68052),	-- Kargath Cloak
						i(68053),	-- Thaurissan's Breastplate
					},
				}),
				q(27573, {	-- The Dark Iron Pact [Alliance]
					sourceQuest = 27571,	-- The Grim Guzzler [Alliance]
					qg = 45899,	-- Mountaineer Orfus
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27591, {	-- The Dark Iron Pact [Horde]
					sourceQuest = 27589,	-- The Grim Guzzler [Horde]
					qg = 45824,	-- Thunderheart
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
				q(27571, {	-- The Grim Guzzler [Alliance]
					sourceQuest = 27569,	-- Dark Iron Tacticians
					qg = 45888,	-- Mayara Brightwing
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
				}),
				q(27589, {	-- The Grim Guzzler [Horde]
					sourceQuest = 27585,	-- The 109th Division
					qg = 45817,	-- Hierophant Theodora Mulvadania
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
				}),
			}),
			n(TREASURES, {
				i(11614, {	-- Plans: Dark Iron Mail (RECIPE!)
					description = "|cFFFFD700Plans: Dark Iron Mail|r can spawn in one of four spots.\n\n|cFFFFFFFFLocation 1:|r Located in the |cFFFFD700West Garrison|r. After going up the ramp from where |cFFFFD700General Angerforge|r is located on your left are some tables. It will be located in the back corner where the Fireguard Destroyer is and two tables in front of it. This table is close to the table that has vases on it that is near the keg.\n\n|cFFFFFFFFLocation 2:|r In |cFFFFD700Golem Lord Argelmach's|r room. When you walk into the room it will be in the back left corner where in between barrels. There will be two barrels to the left and one barrel to the right of it.\n\n|cFFFFFFFFLocation 3:|r In |cFFFFD700The Manufactory|r, on a bench.\n\n|cFFFFFFFFLocation 4:|r After leaving the room with |cFFFFD700Ambassador Flamelash|r you will cross a bridge that leads into the |cFFFFD700Mold Foundry|r. Once you enter the room you will continue straight until you see the ramp. Instead of going down the ramp you will jump off the ledge to the right of the ramp. After landing on the ground you will see the plans located here.",
					provider = { "o", 173232 },	-- Blacksmithing Plans
				}),
				i(11615, {	-- Plans: Dark Iron Shoulders (RECIPE!)
					description = "|cFFFFD700Plans: Dark Iron Shoulders|r spawn in one of two spots.\n\n|cFFFFFFFFLocation 1:|r In |cFFFFD700General Angerforge's|r room. They are sitting on the bottom shelf next to the floating crystal.\n\n|cFFFFFFFFLocation 2:|r On the ground in the |cFFFFD700Detention Block|r. After passing Lexlort you will continue down into the room. When you come across the first split into two rooms you will enter the room on the left. They will be located on the seat behind the bench which is located next to the 3 red jugs.",
					provider = { "o", 173232 },	-- Blacksmithing Plans
				}),
				i(18235, {	-- Schematic: Field Repair Bot 74A (RECIPE!)
					description = "On the floor next to Golem Lord Argelmach.",
					provider = { "o", 179552 },	-- Schematic: Field Repair Bot 74A
				}),
			}),
			n(VENDORS, {
				n(12944, bubbleDownClassicRep(FACTION_THORIUM_BROTHERHOOD, {	-- Lokhtos Darkbargainer <The Thorium Brotherhood>
					{	-- Neutral
						i(18628, {	-- Thorium Brotherhood Contract
							description = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
							cost = { { "i", 17203, 1 } },	-- Sulfuron Ingot
							lvl = lvlsquish(60, 60, 20),
						}),
					},
					{	-- Friendly
						{ progressionKey = "brd.enchants", groups = { i(19444) } },	-- Formula: Enchant Weapon - Strength (RECIPE!)
						i(17022),	-- Pattern: Corehound Boots (RECIPE!)
						i(17018),	-- Pattern: Flarecore Gloves (RECIPE!)
						i(17023),	-- Pattern: Molten Helm (RECIPE!)
						i(17051),	-- Plans: Dark Iron Bracers (RECIPE!)
						{ progressionKey = "brd.later-loot", groups = { i(20761) } },	-- Recipe: Transmute Elemental Fire (RECIPE!)
					},
					{	-- Honored
						{ progressionKey = "brd.enchants", groups = { i(19448) } },	-- Formula: Enchant Weapon - Mighty Versatility / CLASSIC: Formula: Enchant Weapon - Mighty Spirit (RECIPE!)
						i(17025),	-- Pattern: Black Dragonscale Boots (RECIPE!)
						i(17017),	-- Pattern: Flarecore Mantle (RECIPE!)
						{ progressionKey = "brd.recipes", groups = { i(19219),	-- Pattern: Flarecore Robe (RECIPE!)
						i(19330) } },	-- Pattern: Lava Belt (RECIPE!)
						i(17060),	-- Plans: Dark Iron Destroyer (RECIPE!)
						{ progressionKey = "brd.recipes", groups = { i(19206) } },	-- Plans: Dark Iron Helm (RECIPE!)
						i(17059),	-- Plans: Dark Iron Reaver (RECIPE!)
						i(17049),	-- Plans: Fiery Chain Girdle (RECIPE!)

					},
					{	-- Revered
						{ progressionKey = "brd.enchants", groups = { i(19449) } },	-- Formula: Enchant Weapon - Mighty Intellect (RECIPE!)
						{ progressionKey = "brd.recipes", groups = { i(19331),	-- Pattern: Chromatic Gauntlets (RECIPE!)
						i(19332),	-- Pattern: Corehound Belt (RECIPE!)
						i(19220),	-- Pattern: Flarecore Leggings (RECIPE!)
						i(19333),	-- Pattern: Molten Belt (RECIPE!)
						i(19208),	-- Plans: Black Amnesty (RECIPE!)
						i(19209),	-- Plans: Blackfury (RECIPE!)
						i(19207) } },	-- Plans: Dark Iron Gauntlets (RECIPE!)
						i(17052),	-- Plans: Dark Iron Leggings (RECIPE!)
						i(17053),	-- Plans: Fiery Chain Shoulders (RECIPE!)
					},
					{	-- Exalted
						{ progressionKey = "brd.recipes", groups = { i(19211) } },	-- Plans: Blackguard (RECIPE!)
						{ progressionKey = "brd.dark-iron-recipes", groups = { i(20040) } },	-- Plans: Dark Iron Boots (RECIPE!)
						{ progressionKey = "brd.recipes", groups = { i(19210),	-- Plans: Ebon Hand (RECIPE!)
						i(19212, {	-- Plans: Nightfall (RECIPE!)
						}) } },
					},
				})),
				n(9499, {	-- Plugger Spazzring
					i(15759, {	-- Pattern: Black Dragonscale Breastplate (RECIPE!)
					}),
					i(13483),	-- Recipe: Transmute Fire to Earth (RECIPE!)
					i(11325),	-- Dark Iron Ale Mug
				}),
				n(45843, {	-- Yuka Screwspigot <Engineering Supplies>
					timeline = { ADDED_4_0_1 },
					groups = {
						i(10602),	-- Schematic: Deadly Scope (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(11468),	-- Dark Iron Fanny Pack
				i(18945),	-- Dark Iron Residue
				{ progressionKey = "brd.later-loot", groups = { i(22528) } },	-- Dark Iron Scraps
				i(11129),	-- Essence of the Elements
				i(11269, {	-- Intact Elemental Core
					crs = {
						8908,	-- Molten War Golem
						8906,	-- Ragereaver Golem
						8905,	-- Warbringer Construct
						8907,	-- Wrath Hammer Construct
					},
				}),
				i(15781, {	-- Pattern: Black Dragonscale Leggings (RECIPE!)
					cr = 8903,	-- Anvilrage Captain
				}),
				i(15770, {	-- Pattern: Black Dragonscale Shoulders (RECIPE!)
					cr = 8898,	-- Anvilrage Marshal
				}),
				i(11611, {	-- Plans: Dark Iron Sunderer (RECIPE!)
					crs = {
						9554,	-- Hammered Patron
						10043,	-- Ribbly's Crony
					},
				}),
				i(16049, {	-- Schematic: Dark Iron Bomb (RECIPE!)
					cr = 8920,	-- Weapon Technician
				}),
				i(16048, {	-- Schematic: Dark Iron Rifle (RECIPE!)
					cr = 8897,	-- Doomforge Craftsman
				}),
				i(18654, {	-- Schematic: Gnomish Alarm-o-Bot (RECIPE!)
					cr = 8920,	-- Weapon Technician
				}),
				i(16053, {	-- Schematic: Master Engineer's Goggles
					-- #if AFTER 2.0.1
					description = "This is now learned from the trainer.",
					-- #endif
					timeline = { REMOVED_2_0_1 },
					cr = 8900,	-- Doomforge Arcanasmith
				}),
				i(18661, {	-- Schematic: World Enlarger (RECIPE!)
					cr = 8920,	-- Weapon Technician
				}),
				i(12546),	-- Aristocratic Cuffs
				i(12555),	-- Battlechaser's Greaves
				i(12552),	-- Blisterbane Wrap
				i(12549),	-- Braincage
				i(12535),	-- Doomforged Straightedge
				i(12542),	-- Funeral Pyre Vestment
				i(12547),	-- Mar Alom's Grip
				i(11078),	-- Relic Coffer Key
				i(12527),	-- Ribsplitter
				i(12550),	-- Runed Golem Shackles
				i(12531),	-- Searing Needle
				i(12532),	-- Spire of the Stoneshaper
				i(12551),	-- Stoneshield Cloak
				i(12528),	-- The Judge's Gavel
			}),
			n(DETENTION_BLOCK, {
				e(369, {	-- High Interrogator Gerstahn
					creatureID = 9018,
					groups = {
						i(11140),	-- Prison Cell Key
						i(11625, {	-- Enthralled Sphere
						}),
						i(11626),	-- Blackveil Cape
						i(11624),	-- Kentic Amice
						{ progressionKey = "brd.later-loot", groups = { i(22240) } },	-- Greaves of Withering Despaire
					},
				}),
				e(370, {	-- Lord Roccor
					creatureID = 9025,
					groups = {
						i(45050, {	-- Formula: Smoking Heart of the Mountain [BOP] (RECIPE!)
							timeline = { ADDED_3_1_0 },
						}),
						i(11813, {	-- Formula: Smoking Heart of the Mountain [BOE] (RECIPE!)
							timeline = { REMOVED_3_1_0 },
						}),
						i(11631),	-- Stoneshell Guard
						i(11632),	-- Earthslag Shoulders
						{ progressionKey = "brd.later-loot", groups = { i(22234) } },	-- Mantle of Lost Hope
						-- #if AFTER 7.3.2
						{ progressionKey = "brd.later-loot", groups = { i(22271) } },	-- Leggings of Frenzied Magic
						i(11679),	-- Rubicund Armguards
						-- #endif
						{ progressionKey = "brd.later-loot", groups = { i(22397, {	-- Idol of Ferocity
							timeline = { REMOVED_5_0_4 },
						}) } },
						i(11630, {	-- Rockshard Pellets
							timeline = { DELETED_4_0_1 },
						}),
					},
				}),
				e(371, {	-- Houndmaster Grebmar
					creatureID = 9319,
					groups = {
						i(11628, {	-- Houndmaster's Bow
						}),
						i(11629, {	-- Houndmaster's Rifle
						}),
						i(11627),	-- Fleetfoot Greaves
						i(11623),	-- Spritecaster Cape
					},
				}),
				e(372, {	-- Ring of Law
					description = "Approaching the center of the ring will start an event, and the High Justice will appear and approach one of the gates and release three waves of non-elite enemies, followed by one of six possible mini-bosses.",
					creatureID = 10096,	-- High Justice Grimstone
					groups = {
						n(9031, {	-- Anub'shiah
							i(11677, {	-- Graverot Cape
							}),
							i(11678),	-- Carapace of Anub'shiah
							i(11731, {	-- Savage Gladiator Greaves
							}),
							i(11675),	-- Shadefiend Boots
						}),
						n(9029, {	-- Eviscerator
							i(11685, {	-- Splinthide Shoulders
							}),
							-- #if BEFORE 7.3.2
							i(11679),	-- Rubicund Armguards
							-- #endif
							i(11730, {	-- Savage Gladiator Grips
							}),
							i(11686),	-- Girdle of Beastial Fury
						}),
						n(9027, {	-- Gorosh the Dervish
							{ progressionKey = "brd.later-loot", groups = { i(22266, {	-- Flarethorn
							}) } },
							i(11726, {	-- Savage Gladiator Chain
							}),
							-- #if AFTER 7.3.2
							i(11662),	-- Ban'thok Sash
							-- #endif
							{ progressionKey = "brd.later-loot", groups = { i(22271),	-- Leggings of Frenzied Magic
							i(22257) } },	-- Bloodclot Band
						}),
						n(9028, {	-- Grizzle
							i(11610),	-- Plans: Dark Iron Pulverizer (RECIPE!)
							i(11702),	-- Grizzle's Skinner
							i(11722, {	-- Dregmetal Spaulders
							}),
							i(11703),	-- Stonewall Girdle
							{ progressionKey = "brd.later-loot", groups = { i(22270) } },	-- Entrenching Boots
						}),
						n(9032, {	-- Hedrum the Creeper
							i(11635),	-- Hookfang Shanker
							i(11729, {	-- Savage Gladiator Helm
							}),
							i(11633),	-- Spiderfang Carapace
							i(11634, {	-- Silkweb Gloves
							}),
						}),
						n(9030, {	-- Ok'thor the Breaker
							i(11665),	-- Ogreseer Fists
							i(11662),	-- Ban'thok Sash
							i(11728),	-- Savage Gladiator Leggings
							i(11824, {	-- Cyclopean Band
							}),
						}),
						{ progressionKey = "brd.dungeon-set-2", groups = { n_conditional(16059, {	-- Theldren
							description = "Requires Banner of Provocation (Dungeon Set 2 Questline) to summon this boss. Loot the grey chest on the grey grate after killing the mobs. You must use the banner before the non-elites are killed.\nSummon Location: Ring of Law.",
							timeline = { REMOVED_4_0_3 },
							-- #if AFTER 4.0.3
							sourceQuest = 9015,	-- The Challenge
							u_sqs = true,	-- remove the u flag if sourcequests are completed
							-- #endif
							providers = {
								{ "i", 21986 },	-- Banner of Provocation
								{ "o", 181074 },	-- Arena Spoils
							},
							groups = {
								i(22047),	-- Top Piece of Lord Valthalak's Amulet
								i(22305, {	-- Ironweave Mantle
								}),
								i(22317),	-- Lefty's Brass Knuckle
								i(22318),	-- Malgen's Long Bow
								i(22330),	-- Shroud of Arcane Mastery
							},
						}) } },
					},
				}),
				e(377, {	-- Bael'gar
					creatureID = 9016,
					groups = {
						i(11803),	-- Force of Magma
						i(11805),	-- Rubidium Hammer
						i(11807),	-- Sash of the Burning Heart
						i(11802),	-- Lavacrest Leggings
						-- #if AFTER 7.3.2
						{ progressionKey = "brd.later-loot", groups = { i(22257) } },	-- Bloodclot Band
						-- #endif
					},
				}),
				e(374, {	-- Lord Incendius
					creatureID = 9017,
					groups = {
						{ progressionKey = "brd.later-loot", groups = { i(21987) } },	-- Incendicite of Incendius
						i(11126),	-- Tablet of Kurniya
						i(11766),	-- Flameweave Cuffs
						i(11764),	-- Cinderhide Armsplints
						i(11765),	-- Pyremail Wristguards
						i(11767),	-- Emberplate Armguards
						i(11768, {	-- Incendic Bracers
							-- #if BEFORE 10.1.7
							-- #if AFTER 2.0.1
							description = "This item appears to have been removed with TBC Prepatch. Please @Crieve if you get it to drop.",
							isBounty = true,
							-- #endif
							-- #endif
							timeline = { REMOVED_2_0_1, ADDED_10_1_7 },	-- 07.09.2023 ATT DISCORD
						}),
						{ progressionKey = "brd.darkmoon-cards", groups = { i(19268) } },	-- Ace of Elementals
					},
				}),
				e(376, {	-- Fineous Darkvire <Chief Architect>
					creatureID = 9056,
					groups = {
						i(11840),	-- Master Builder's Shirt
						i(11839),	-- Chief Architect's Monocle
						{ progressionKey = "brd.later-loot", groups = { i(22223) } },	-- Foreman's Head Protector
						i(151406, {	-- Belt of the Eminent Mason
							timeline = { ADDED_7_3_0 },
						}),
						i(11842),	-- Land Surveyor's Mantle
						i(11841),	-- Senior Designer's Pantaloons
					},
				}),
			}),
			n(SHADOWFORGE_CITY, {
				e(373, {	-- Pyromancer Loregrain
					creatureID = 9024,
					groups = {
						i(11207),	-- Formula: Enchant Weapon - Fiery Weapon (RECIPE!)
						i(11750, {	-- Kindling Stave
						}),
						i(11748),	-- Pyric Caduceus
						i(11747, {	-- Flamestrider Robes
						}),
						i(11749, {	-- Searingscale Leggings
						}),
						-- #if AFTER 7.3.2
						{ progressionKey = "brd.later-loot", groups = { i(22270) } },	-- Entrenching Boots
						-- #endif
					},
				}),
				e(375, {	-- Warder Stilgiss
					creatureID = 9041,
					groups = {
						i(11784, {	-- Arbiter's Blade
						}),
						i(11782),	-- Boreal Mantle
						{ progressionKey = "brd.later-loot", groups = { i(22241) } },	-- Dark Warder's Pauldrons
						i(11783),	-- Chillsteel Girdle
						i(151405, {	-- Cold-Forged Chestplate
							timeline = { ADDED_7_3_0 },
						}),
					},
				}),
				n(9042, {	-- Verek
					i(11755),	-- Verek's Collar
					{ progressionKey = "brd.later-loot", groups = { i(22242) } },	-- Verek's Leash
				}),
				n(9476, {	-- Watchman Doomgrip
					description = "Watchman Doomgrip spawns once all twelve Relic Coffers have been opened using Relic Coffer Keys that can drop from any Dark Iron mob in the instance. Upon defeating all enemies, a hidden door beneath the Dark Coffer will open allowing access to the Secret Safe as well as the Heart of the Mountain.",
					cost = { { "i", 11078, 12 } },	-- Relic Coffer Key
					groups = {
						o(160836, {	-- Relic Coffer
							description = "Relic Coffer Keys can drop from any Dark Iron mob in the instance.",
							groups = {
								i(11946),	-- Fire Opal Necklace
								i(11945),	-- Dark Iron Ring
								i(11938),	-- Sack of Gems
								i(11966),	-- Small Sack of Coins
								i(11937),	-- Fat Sack of Coins
								i(11944),	-- Dark Iron Baby Booties
							},
						}),
						o(165554, {	-- Heart of the Mountain
							description = "This spawns after defeating Watchman Doomgrip.",
							groups = {
								i(11309),	-- The Heart of the Mountain
							},
						}),
						o(161495, {	-- Secret Safe
							description = "This spawns after defeating Watchman Doomgrip.",
							groups = {
								-- #if BEFORE 1.13.5
								i(11923),	-- The Hammer of Grace
								i(11920),	-- Wraith Scythe
								i(11926),	-- Deathdealer Breastplate
								i(11929),	-- Haunting Specter Leggings
								-- #endif
								{ progressionKey = "brd.later-loot", groups = { i(22256),	-- Mana Shaping Handwraps
								i(22205),	-- Black Steel Bindings
								i(22254),	-- Wand of Eternal Light
								i(22255) } },	-- Magma Forged Band
							},
						}),
					},
				}),
				o(164820, {	-- Dark Keeper Nameplate
					description = "Inspect the portrait in front of the coffer room. Opening it will tell you the name of the Dark Keeper you need and where he is located. Only one will spawn each reset.\n\n|cff3399ffDark Keepers:|r\n\n|cFFFFD700Dark Keeper Bethek|r spawns inside the vault room as soon as you open the portrait.\n\n|cFFFFD700Dark Keeper Ofgut|r is located in |cFFFFD700General Angerforge's|r room. When you come down the stairs and are looking straight at |cFFFFD700General Angerforge|r, you will see him located directly to the left near the crystal.\n\n|cFFFFD700Dark Keeper Pelver|r is located in |cFFFFD700The Domicile|r. For quicker access, you can take any of the mole machines and click |cFFFFD700Into the Domicile|r and he will be on top of it.\n\n|cFFFFD700Dark Keeper Uggel|r is quite a close walk; go outside the vault room and turn right to the last room. He is near the entrance where all the golems are.\n\n|cFFFFD700Dark Keeper Vorfalk|r is located at the |cFFFFD700Grim Guzzler|r. When you first enter the room after coming from the bridge, he will be located on your right side in the corner (in front of the band's playing spot).\n\n|cFFFFD700Dark Keeper Zimrel|r is located on the second floor of the |cFFFFD700Ring of Law|r. When entering this floor from the |cFFFFD700East Garrison|r (room with the Shadowforge Lock), you will go around to your right and he will be sitting in the middle of the seats.",
					crs = {
						9438,	-- Dark Keeper Bethek
						9442,	-- Dark Keeper Ofgut
						9443,	-- Dark Keeper Pelver
						9439,	-- Dark Keeper Uggel
						9437,	-- Dark Keeper Vorfalk
						9441,	-- Dark Keeper Zimrel
					},
					groups = {
						o(160845, {	-- Dark Coffer
							sharedDescription =
								-- #if BEFORE 4.0.3
								"Is used to turn in Librams.",
								-- #else
								"Was used to turn in Librams prior to Cataclysm, is now without any purpose.",
								-- #endif
							cost = { { "i", 11197, 1 } },	-- Dark Keeper Key
							groups = {
								i(11752),	-- Black Blood of the Tormented
								i(11751),	-- Burning Essence
								i(11753),	-- Eye of Kajal
							},
						}),
						i(11197),	-- Dark Keeper Key
					},
				}),
				e(378, {	-- General Angerforge
					creatureID = 9033,
					groups = {
						i(11464),	-- Marshal Windsor's Lost Information
						i(11816, {	-- Angerforge's Battle Axe
						}),
						-- #if AFTER 7.3.2
						i(11932),	-- Guiding Stave of Wisdom
						-- #endif
						i(11817, {	-- Lord General's Sword
						}),
						-- #if AFTER 7.3.2
						i(12557, {	-- Ebonsteel Spaulders
							timeline = { REMOVED_4_0_3, ADDED_8_1_0 },
						}),
						-- #endif
						i(11820),	-- Royal Decorated Armor
						i(11821),	-- Warstrife Leggings
						i(11810),	-- Force of Will
						-- #if BEFORE 1.13.5
						i(11815),	-- Hand of Justice
						-- #endif
					},
				}),
				e(379, {	-- Golem Lord Argelmach
					creatureID = 8983,
					groups = {
						i(11268),	-- Head of Argelmach
						i(11465),	-- Marshal Windsor's Lost Information
						{ progressionKey = "brd.tbc-jewelcrafting", groups = { i(21956, {	-- Design: Dark Iron Scorpid (RECIPE!)
							timeline = { ADDED_2_0_5 },
						}) } },
						i(11823, {	-- Luminary Kilt
						}),
						i(11822, {	-- Omnicast Boots
						}),
						i(11669),	-- Naglering
						i(11819, {	-- Second Wind
						}),
					},
				}),
				e(380, {	-- Hurley Blackbreath
					creatureID = 9537,
					provider = { "o", 164911 },	-- Thunderbrew Lager Keg
					description = "Break the 3 Thunderbrew Lager Kegs to start the encounter.",
					groups = {
						i(11312),	-- Lost Thunderbrew Recipe
						-- #if AFTER 7.3.2
						i(11922),	-- Blood-Etched Blade
						-- #endif
						i(18044),	-- Hurley's Tankard
						i(11735),	-- Ragefury Eyepatch
						i(151408, {	-- Dark Iron Dredger's Pauldrons
							timeline = { ADDED_7_3_0 },
						}),
						i(151407, {	-- Blackened Pit Trousers
							timeline = { ADDED_7_3_0 },
						}),
						i(18043),	-- Coal Miner Boots
						{ progressionKey = "brd.later-loot", groups = { i(22275) } },	-- Firemoss Boots
					},
				}),
				e(9543, {	-- Ribbly Screwspigot
					creatureID = 9543,
					description = "Speak to him to start the encounter.",
					groups = {
						i(11313),	-- Ribbly's Head
						i(11612, {	-- Plans: Dark Iron Plate (RECIPE!)
						}),
						i(2663, {	-- Ribbly's Bandolier
							timeline = { REMOVED_4_0_1 },
						}),
						i(2662, {	-- Ribbly's Quiver
							timeline = { REMOVED_4_0_1 },
						}),
						i(11742),	-- Wayfarer's Knapsack
					},
				}),
				e(383, {	-- Plugger Spazzring
					creatureID = 9499,
					groups = {
						i(18653),	-- Schematic: Goblin Jumper Cables XL (RECIPE!)
						i(12791),	-- Barman Shanker
						i(12793),	-- Mixologist's Tunic
						i(151410, {	-- Bottle-Popper Ring
							timeline = { ADDED_7_3_0 },
						}),
					},
				}),
				{ progressionKey = "brd.dark-iron-brewer", groups = { n(28067, {	-- Dark Iron Brewer
					description = "Speak to him until he passes out, a Mug will appear on the ground",
					timeline = { ADDED_2_4_3 },
					groups = {
						o(190394, {	-- Mug of Dire Brew
							i(38320),	-- Dire Brew
						}),
					},
				}) } },
				e(381, {	-- Phalanx
					creatureID = 9502,
					description = "Private Rocknot must be sent into a drunken rage to aggro Phalanx.\nTo do that, give him 6 dark iron ale mugs, which can be bought from Plugger Spazzring.\nRocknot will break one of the kegs, it'll blow the door open and Phalanx will be angry.",
					groups = {
						i(11744),	-- Bloodfist
						i(11743, {	-- Rockfist
							-- #if BEFORE 10.1.7
							-- #if AFTER 2.0.1
							description = "This item appears to have been removed with TBC Prepatch. Please @Crieve if you get it to drop.",
							isBounty = true,
							-- #endif
							-- #endif
							timeline = { REMOVED_2_0_1, ADDED_10_1_7 },
						}),
						-- #if BEFORE 7.3.2
						i(11746),	-- Golem Skull Helm
						-- #endif
						{ progressionKey = "brd.later-loot", groups = { i(22212),	-- Golem Fitted Pauldrons
						i(22204) } },	-- Wristguards of Renown
						i(11745),	-- Fists of Phalanx
						i(151409, {	-- Ferrous Cord
							timeline = { ADDED_7_3_0 },
						}),
					},
				}),
				e(384, {	-- Ambassador Flamelash
					creatureID = 9156,
					groups = {
						i(11809, {	-- Flame Wrath
						}),
						i(11808, {	-- Circle of Flame
						}),
						i(11812, {	-- Cape of the Fire Salamander
						}),
						i(11814, {	-- Molten Fists
						}),
						i(11832, {	-- Burst of Knowledge
						}),
					},
				}),
				n(8923, {	-- Panzor the Invincible
					description = "This is a Rare Creature and, as such, is not always present.",
					groups = {
						i(11786),	-- Stone of the Earth
						i(11785),	-- Rock Golem Bulwark
						i(11787),	-- Shalehusk Boots
						{ progressionKey = "brd.later-loot", groups = { i(22245) } },	-- Soot Encrusted Footwear
					},
				}),
				e(385, {	-- The Seven
					creatureID = 9039,	-- Doom'rel
					provider = { "o", 169243 },	-- Chest of The Seven
					modelScale = 3,
					groups = {
						-- #if BEFORE 7.3.2
						i(11922, {	-- Blood-Etched Blade
						}),
						-- #endif
						i(11921, {	-- Impervious Giant
						}),
						i(11923),	-- The Hammer of Grace
						i(11920, {	-- Wraith Scythe
						}),
						i(11925, {	-- Ghostshroud
						}),
						i(11926, {	-- Deathdealer Breastplate
						}),
						i(11929),	-- Haunting Specter Leggings
						i(11927, {	-- Legplates of the Eternal Guardian
						}),
					},
				}),
				e(386, {	-- Magmus
					creatureID = 9938,
					groups = {
						{ progressionKey = "brd.later-loot", groups = { i(22208, {	-- Lavastone Hammer
						}) } },
						i(11935, {	-- Magmus Stone
						}),
						i(11746),	-- Golem Skull Helm
						i(151411, {	-- Molten-Warden Leggings
							timeline = { ADDED_7_3_0 },
						}),
						i(22275),	-- Firemoss Boots
						{ progressionKey = "brd.later-loot", groups = { i(22400, {	-- Libram of Truth
							timeline = { DELETED_5_0_4 },
						}),
						i(22395, {	-- Totem of Rage
							timeline = { DELETED_5_0_4 },
						}) } },
					},
				}),
				-- #if BEFORE 7.3.2
				n(8929, {	-- Princess Moira Bronzebeard <Princess of Ironforge> / Thaurissan High Priest
					description = "In order to be eligible for this loot, you need to have completed The Princess's Surprise or The Princess Saved?. Those quests were removed in 4.0.3, but characters who completed them before then still receive this loot.",
					sourceQuests = {
						4363,	-- The Princess's Surprise
						4004,	-- The Princess Saved?
					},
					groups = {
						i(12557, {	-- Ebonsteel Spaulders
							timeline = { REMOVED_4_0_3, ADDED_8_1_0 },
						}),
						i(12554, {	-- Hands of the Exalted Herald
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						i(12556, {	-- High Priestess Boots
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						i(12553, {	-- Swiftwalker Boots
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
					},
				}),
				-- #endif
				e(387, {	-- Emperor Dagran Thaurissan
					progressionKey = "brd.second-half",
					creatureID = 9019,
					groups = {
						ach(642),	-- Blackrock Depths
						ach(5051, {	-- Blackrock Depths Guild Run
							timeline = { ADDED_4_0_3 },
						}),
						i(246429, {	-- Dark Iron Chandelier (DECOR!)
							timeline = { ADDED_11_2_7 },
						}),
						i(11931, {	-- Dreadforge Retaliatior
						}),
						-- #if BEFORE 7.3.2
						i(11932, {	-- Guiding Stave of Wisdom
						}),
						-- #endif
						i(11684, {	-- Ironfoe
						}),
						i(11928, {	-- Thaurissan's Royal Scepter
						}),
						i(11933, {	-- Imperial Jewel
						}),
						i(11930, {	-- The Emperor's New Cape
						}),
						i(11924, {	-- Robes of the Royal Crown
						}),
						{ progressionKey = "brd.later-loot", groups = { i(22204, {	-- Wristguards of Renown
						}) } },
						-- #if AFTER 7.3.2
						i(12554, {	-- Hands of the Exalted Herald
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						-- #endif
						-- #if BEFORE 1.13.5
						i(16724, {	-- Lightforge Gauntlets
							timeline = { REMOVED_4_0_3 },
						}),
						-- #endif
						{ progressionKey = "brd.later-loot", groups = { i(22207, {	-- Sash of the Grand Hunt
						}) } },
						-- #if AFTER 7.3.2
						i(12556, {	-- High Priestess Boots
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						i(12553, {	-- Swiftwalker Boots
							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
						}),
						-- #endif
						i(11934),	-- Emperor's Seal
						-- #if AFTER 1.13.5
						i(11815, {	-- Hand of Justice
						}),
						-- #endif
						i(12033),	-- Thaurissan Family Jewels
					},
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.WOD, {
		inst(228, {
			q(35899),	-- Blackrock Depths (Detention Block) Reward Quest - Normal completion
			q(35901),	-- Blackrock Depths (Detention Bonus) Reward Quest
			q(35902),	-- Blackrock Depths (Upper City) Reward Quest - Normal completion
			q(35903),	-- Blackrock Depths (Detention Bonus) Reward Quest
			q(35904),	-- Blackrock Depths (Everything) Reward Quest
		}),
	}),
	expansion(EXPANSION.TWW, {
		inst(228, {
			timeline = { ADDED_11_0_5 },
			groups = {
				q(82739),	-- ???
				q(82740),	-- Twilight Scheming (New 11.0 ID)
				-- Both of these keep getting reported completed on turnin of seemingly any BRD class quest regardless of race or faction
			},
		}),
	}),
});
```

</details>

<details>
<summary>Show every changed Lua line: P3 → retail.lua</summary>

```diff
--- .contrib/phase-examples/evolution/blackrock-depths/p3/Blackrock Depths.lua
+++ .contrib/phase-examples/evolution/blackrock-depths/p4/retail.lua
@@ -1,4 +1,4 @@
--- Generated comparison snapshot (P2.1 / P2.2 / P3): complete annotated source.
+-- Generated comparison snapshot (P4): complete retail source.
 -- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.
 -----------------------------------------------------
 --   D U N G E O N S  &  R A I D S  M O D U L E    --
@@ -27,15 +27,6 @@
 REPUTATION_FROM_LEATHER = 150;
 REPUTATION_FROM_DARKIRON = 50;
 -- #else
--- #if ANYCLASSIC
--- #if AFTER CATA
--- Reputation in Cata Classic
--- CRIEVE NOTE: Not sure if it is intended, but the reputation gained from these skyrocketed in Cataclysm Classic. It might be unintentional.
-REPUTATION_FROM_CORES = 2200;
-REPUTATION_FROM_LEATHER = 1540;
-REPUTATION_FROM_DARKIRON = 300;
--- #endif
--- #endif
 -- #endif
 
 ExportDB.OnTooltipDB.ThoriumBrotherhood = [[~function(t, tooltipInfo)
@@ -76,28 +67,11 @@
 				}),
 			}),
 			n(QUESTS, {
-				-- #if SEASON_OF_DISCOVERY
-				applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { q(84338, {	-- A Binding Contract
-					provider = { "i", 227730 },	-- Thorium Brotherhood Contract
-					timeline = { ADDED_1_15_3 },
-					requireSkill = BLACKSMITHING,
-					lvl = 60,
-					groups = {
-						i(227727),	-- Plans: Sulfuron Hammer (RECIPE!)
-					},
-				}) } }),
-				-- #endif
 				q(7604, {	-- A Binding Contract
 					provider = { "i", 18628 },	-- Thorium Brotherhood Contract
-					-- #if SEASON_OF_DISCOVERY
-					timeline = { REMOVED_1_15_3 },
-					-- #endif
 					lvl = lvlsquish(60, 60, 20),
 					groups = {
 						i(18592, {	-- Plans: Sulfuron Hammer (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(256673, {	-- Stormwind Forge (DECOR!)
 							timeline = { ADDED_11_2_7 },
@@ -278,18 +252,6 @@
 						}),
 					},
 				}),
-				-- #if SEASON_OF_DISCOVERY
-				applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { q(82062, {	-- Ever After
-					description = "Just east of the Ring in Blackrock Depths is a bridge that leads north over lava.\n\nAs you get onto the bridge, look down and to the left; you'll see a friendly Dark Iron Dwarf below you on the base of a pillar. Clear the rest of the mobs ahead of you (Blazing Fireguards and a group of Shadowforge dwarves).\n\nMove to the left side of the bridge near a small brazier. Get onto the railing, hug the rock wall, and jump ahead onto the platform near the wall.\n\nMove to the end of the platform, hugging the wall, and move hard into the rock corner.\n\nTurn with your left shoulder to the wall and run carefully against the wall, until you just fall down into the exposed corner. Drop down onto the rock outcrop below. \n\nTurn left into a small room, where you'll encounter the Rugged Traveler.",
-					qg = 222530,	-- Rugged Traveler
-					timeline = { REMOVED_2_0_1 },
-					lvl = 48,
-					groups = {
-						i(221316),	-- Premo's Poise-Demanding Uniform
-						i(221315),	-- Rainbow Generator
-					},
-				}) } }),
-				-- #endif
 				q(6646, {	-- Favor Amongst the Brotherhood, Blood of the Mountain
 					qg = 12944,	-- Lokhtos Darkbargainer
 					maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
@@ -2052,18 +2014,10 @@
 				q(28328, {	-- Twilight Scheming [Alliance]
 					sourceQuest = 28285,	-- Meet with High Priestess Laurena / Meet with Patrice Lancaster [SL+]
 					providers = {
-						-- #if ANYCLASSIC
-						{ "n", 376 },	-- High Priestess Laurena
-						-- #else
 						{"n", 164949 },	-- Patrice Lancaster
-						-- #endif
-					},
-					coords = {
-						-- #if ANYCLASSIC
-						{ 49.6, 44.8, STORMWIND_CITY },
-						-- #else
+					},
+					coords = {
 						{ 78.9, 69.8, STORMWIND_CITY },
-						-- #endif
 					},
 					timeline = { ADDED_4_0_3 },
 					classes = { PRIEST },
@@ -2195,331 +2149,54 @@
 			n(VENDORS, {
 				n(12944, bubbleDownClassicRep(FACTION_THORIUM_BROTHERHOOD, {	-- Lokhtos Darkbargainer <The Thorium Brotherhood>
 					{	-- Neutral
-						-- #if SEASON_OF_DISCOVERY
-						{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(227730, {	-- Thorium Brotherhood Contract
-							description = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
-							timeline = { ADDED_1_15_3 },
-							cost = { { "i", 17203, 1 } },	-- Sulfuron Ingot
-							lvl = 60,
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(20754, {	-- Lesser Mana Oil (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(20755, {	-- Formula: Wizard Oil (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(22308, {	-- Pattern: Enchanted Runecloth Bag (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})) } },
-						-- #endif
 						i(18628, {	-- Thorium Brotherhood Contract
 							description = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 							cost = { { "i", 17203, 1 } },	-- Sulfuron Ingot
 							lvl = lvlsquish(60, 60, 20),
 						}),
 					},
 					{	-- Friendly
-						applyclassicphase(PHASE_THREE_ENCHANTS, { progressionKey = "brd.enchants", groups = { i(19444) } }),	-- Formula: Enchant Weapon - Strength (RECIPE!)
+						{ progressionKey = "brd.enchants", groups = { i(19444) } },	-- Formula: Enchant Weapon - Strength (RECIPE!)
 						i(17022),	-- Pattern: Corehound Boots (RECIPE!)
 						i(17018),	-- Pattern: Flarecore Gloves (RECIPE!)
 						i(17023),	-- Pattern: Molten Helm (RECIPE!)
 						i(17051),	-- Plans: Dark Iron Bracers (RECIPE!)
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(20761) } }),	-- Recipe: Transmute Elemental Fire (RECIPE!)
+						{ progressionKey = "brd.later-loot", groups = { i(20761) } },	-- Recipe: Transmute Elemental Fire (RECIPE!)
 					},
 					{	-- Honored
-						-- #if SEASON_OF_DISCOVERY
-						{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(228981, {	-- Formula: Conductive Shield Coating (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(229008, {	-- Formula: Enchant Cloak - Greater Fire Resistance (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(229009, {	-- Formula: Enchant Cloak - Greater Nature Resistance (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})) } },
-						-- #endif
-						applyclassicphase(PHASE_THREE_ENCHANTS, { progressionKey = "brd.enchants", groups = { i(19448) } }),	-- Formula: Enchant Weapon - Mighty Versatility / CLASSIC: Formula: Enchant Weapon - Mighty Spirit (RECIPE!)
+						{ progressionKey = "brd.enchants", groups = { i(19448) } },	-- Formula: Enchant Weapon - Mighty Versatility / CLASSIC: Formula: Enchant Weapon - Mighty Spirit (RECIPE!)
 						i(17025),	-- Pattern: Black Dragonscale Boots (RECIPE!)
 						i(17017),	-- Pattern: Flarecore Mantle (RECIPE!)
-						{ progressionKey = "brd.recipes", groups = { applyclassicphase(PHASE_THREE_RECIPES, i(19219)),	-- Pattern: Flarecore Robe (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19330)) } },	-- Pattern: Lava Belt (RECIPE!)
+						{ progressionKey = "brd.recipes", groups = { i(19219),	-- Pattern: Flarecore Robe (RECIPE!)
+						i(19330) } },	-- Pattern: Lava Belt (RECIPE!)
 						i(17060),	-- Plans: Dark Iron Destroyer (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, { progressionKey = "brd.recipes", groups = { i(19206) } }),	-- Plans: Dark Iron Helm (RECIPE!)
+						{ progressionKey = "brd.recipes", groups = { i(19206) } },	-- Plans: Dark Iron Helm (RECIPE!)
 						i(17059),	-- Plans: Dark Iron Reaver (RECIPE!)
 						i(17049),	-- Plans: Fiery Chain Girdle (RECIPE!)
 
-						-- #if SEASON_OF_DISCOVERY
-						-- EPIC ITEM UPGRADES
-						{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(227826, {	-- Dark Iron Flame Reaver
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   17015, 1 },	-- Dark Iron Reaver
-								{ "i", 227801, 25 },	-- Firelands Ember
-								{ "i",   17010, 2 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227842, {	-- Ebon Fist
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19170, 1 },	-- Ebon Hand
-								{ "i", 227801, 25 },	-- Firelands Ember
-								{ "i",   17010, 2 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227823, {	-- Fine Flarecore Gloves
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   16979, 1 },	-- Flarecore Gloves
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227839, {	-- Fine Flarecore Leggings
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19165, 1 },	-- Flarecore Leggings
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227830, {	-- Fine Flarecore Mantle
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   16980, 1 },	-- Flarecore Mantle
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227831, {	-- Fine Flarecore Robe
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19156, 1 },	-- Flarecore Robe
-								{ "i", 227801, 20 },	-- Firelands Ember
-								{ "i",   17011, 1 },	-- Lava Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227821, {	-- Flamekissed Molten Helm
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   16983, 1 },	-- Molten Helm
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17011, 1 },	-- Lava Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227833, {	-- Glaive of Obsidian Fury
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19167, 1 },	-- Blackfury
-								{ "i", 227801, 25 },	-- Firelands Ember
-								{ "i",   17011, 2 },	-- Lava Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227829, {	-- Hardened Black Dragonscale Boots
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   16984, 1 },	-- Black Dragonscale Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17011, 1 },	-- Lava Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227840, {	-- Implacable Blackguard
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19168, 1 },	-- Blackguard
-								{ "i", 227801, 25 },	-- Firelands Ember
-								{ "i",   17011, 2 },	-- Lava Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227828, {	-- Lavawalker Belt
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19149, 1 },	-- Lava Belt
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17011, 1 },	-- Lava Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227827, {	-- Molten Chain Girdle
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   16989, 1 },	-- Fiery Chain Girdle
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227834, {	-- Molten Chain Shoulders
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   16988, 1 },	-- Fiery Chain Shoulders
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227825, {	-- Molten Dark Iron Destroyer
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   17016, 1 },	-- Dark Iron Destroyer
-								{ "i", 227801, 25 },	-- Firelands Ember
-								{ "i",   17010, 2 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227838, {	-- Shining Chromatic Gauntlets
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19157, 1 },	-- Chromatic Gauntlets
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227832, {	-- Tempered Black Amnesty
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19166, 1 },	-- Black Amnesty
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 2 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227841, {	-- Tempered Dark Iron Boots (Str/Stam)
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   20039, 1 },	-- Dark Iron Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228924, {	-- Tempered Dark Iron Boots (Agi/Stam)
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   20039, 1 },	-- Dark Iron Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228925, {	-- Tempered Dark Iron Boots (Def/Stam)
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   20039, 1 },	-- Dark Iron Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228926, {	-- Tempered Dark Iron Boots (Int/Holy)
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   20039, 1 },	-- Dark Iron Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228927, {	-- Tempered Dark Iron Boots (Str/Holy)
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   20039, 1 },	-- Dark Iron Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228928, {	-- Tempered Dark Iron Boots (Healing/Stam)
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   20039, 1 },	-- Dark Iron Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(228929, {	-- Tempered Dark Iron Boots (Healing/Int)
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   20039, 1 },	-- Dark Iron Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227820, {	-- Tempered Dark Iron Bracers
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   17014, 1 },	-- Dark Iron Bracers
-								{ "i", 227801, 10 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227835, {	-- Tempered Dark Iron Gauntlets
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19164, 1 },	-- Dark Iron Gauntlets
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17011, 1 },	-- Lava Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227824, {	-- Tempered Dark Iron Helm
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19148, 1 },	-- Dark Iron Helm
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17011, 1 },	-- Lava Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227836, {	-- Tempered Dark Iron Leggings
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   17013, 1 },	-- Dark Iron Leggings
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227837, {	-- Thick Corehound Belt
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   19162, 1 },	-- Corehound Belt
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17010, 1 },	-- Fiery Core
-							},
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227822, {	-- Thick Corehound Boots
-							timeline = { ADDED_1_15_3 },
-							cost = {
-								{ "i",   16982, 1 },	-- Corehound Boots
-								{ "i", 227801, 15 },	-- Firelands Ember
-								{ "i",   17011, 1 },	-- Lava Core
-							},
-						})) } },
-						-- #endif
 					},
 					{	-- Revered
-						applyclassicphase(PHASE_THREE_ENCHANTS, { progressionKey = "brd.enchants", groups = { i(19449) } }),	-- Formula: Enchant Weapon - Mighty Intellect (RECIPE!)
-						{ progressionKey = "brd.recipes", groups = { applyclassicphase(PHASE_THREE_RECIPES, i(19331)),	-- Pattern: Chromatic Gauntlets (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19332)),	-- Pattern: Corehound Belt (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19220)),	-- Pattern: Flarecore Leggings (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19333)),	-- Pattern: Molten Belt (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19208)),	-- Plans: Black Amnesty (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19209)),	-- Plans: Blackfury (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19207)) } },	-- Plans: Dark Iron Gauntlets (RECIPE!)
+						{ progressionKey = "brd.enchants", groups = { i(19449) } },	-- Formula: Enchant Weapon - Mighty Intellect (RECIPE!)
+						{ progressionKey = "brd.recipes", groups = { i(19331),	-- Pattern: Chromatic Gauntlets (RECIPE!)
+						i(19332),	-- Pattern: Corehound Belt (RECIPE!)
+						i(19220),	-- Pattern: Flarecore Leggings (RECIPE!)
+						i(19333),	-- Pattern: Molten Belt (RECIPE!)
+						i(19208),	-- Plans: Black Amnesty (RECIPE!)
+						i(19209),	-- Plans: Blackfury (RECIPE!)
+						i(19207) } },	-- Plans: Dark Iron Gauntlets (RECIPE!)
 						i(17052),	-- Plans: Dark Iron Leggings (RECIPE!)
 						i(17053),	-- Plans: Fiery Chain Shoulders (RECIPE!)
 					},
 					{	-- Exalted
-						applyclassicphase(PHASE_THREE_RECIPES, { progressionKey = "brd.recipes", groups = { i(19211) } }),	-- Plans: Blackguard (RECIPE!)
-						applyclassicphase(PHASE_FOUR_DARKIRON_RECIPES,  { progressionKey = "brd.dark-iron-recipes", groups = { i(20040) } }),	-- Plans: Dark Iron Boots (RECIPE!)
-						{ progressionKey = "brd.recipes", groups = { applyclassicphase(PHASE_THREE_RECIPES, i(19210)),	-- Plans: Ebon Hand (RECIPE!)
-						applyclassicphase(PHASE_THREE_RECIPES, i(19212, {	-- Plans: Nightfall (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_0 },
-							-- #endif
-						})) } },
+						{ progressionKey = "brd.recipes", groups = { i(19211) } },	-- Plans: Blackguard (RECIPE!)
+						{ progressionKey = "brd.dark-iron-recipes", groups = { i(20040) } },	-- Plans: Dark Iron Boots (RECIPE!)
+						{ progressionKey = "brd.recipes", groups = { i(19210),	-- Plans: Ebon Hand (RECIPE!)
+						i(19212, {	-- Plans: Nightfall (RECIPE!)
+						}) } },
 					},
 				})),
 				n(9499, {	-- Plugger Spazzring
-					-- #if SEASON_OF_DISCOVERY
-					applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227902, {	-- Pattern: Hardened Black Dragonscale Breastplate (RECIPE!)
-						timeline = { ADDED_1_15_3 },
-					}) } }),
-					-- #endif
 					i(15759, {	-- Pattern: Black Dragonscale Breastplate (RECIPE!)
-						-- #if SEASON_OF_DISCOVERY
-						timeline = { REMOVED_1_15_3 },
-						-- #endif
 					}),
 					i(13483),	-- Recipe: Transmute Fire to Earth (RECIPE!)
 					i(11325),	-- Dark Iron Ale Mug
@@ -2534,7 +2211,7 @@
 			n(ZONE_DROPS, {
 				i(11468),	-- Dark Iron Fanny Pack
 				i(18945),	-- Dark Iron Residue
-				applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22528) } }),	-- Dark Iron Scraps
+				{ progressionKey = "brd.later-loot", groups = { i(22528) } },	-- Dark Iron Scraps
 				i(11129),	-- Essence of the Elements
 				i(11269, {	-- Intact Elemental Core
 					crs = {
@@ -2545,27 +2222,11 @@
 					},
 				}),
 				i(15781, {	-- Pattern: Black Dragonscale Leggings (RECIPE!)
-					-- #if SEASON_OF_DISCOVERY
-					timeline = { REMOVED_1_15_3 },
-					-- #endif
 					cr = 8903,	-- Anvilrage Captain
 				}),
 				i(15770, {	-- Pattern: Black Dragonscale Shoulders (RECIPE!)
-					-- #if SEASON_OF_DISCOVERY
-					timeline = { REMOVED_1_15_3 },
-					-- #endif
 					cr = 8898,	-- Anvilrage Marshal
 				}),
-				-- #if SEASON_OF_DISCOVERY
-				{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(227903, {	-- Pattern: Hardened Black Dragonscale Leggings (RECIPE!)
-					timeline = { ADDED_1_15_3 },
-					cr = 8903,	-- Anvilrage Captain
-				})),
-				applyclassicphase(SOD_PHASE_FOUR, i(227904, {	-- Pattern: Hardened Black Dragonscale Shoulders (RECIPE!)
-					timeline = { ADDED_1_15_3 },
-					cr = 8898,	-- Anvilrage Marshal
-				})) } },
-				-- #endif
 				i(11611, {	-- Plans: Dark Iron Sunderer (RECIPE!)
 					crs = {
 						9554,	-- Hammered Patron
@@ -2611,19 +2272,11 @@
 					creatureID = 9018,
 					groups = {
 						i(11140),	-- Prison Cell Key
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.enthralled-sphere", groups = { i(223539, {	-- Enthralled Sphere
-							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
 						i(11625, {	-- Enthralled Sphere
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						i(11626),	-- Blackveil Cape
 						i(11624),	-- Kentic Amice
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22240) } }),	-- Greaves of Withering Despaire
+						{ progressionKey = "brd.later-loot", groups = { i(22240) } },	-- Greaves of Withering Despaire
 					},
 				}),
 				e(370, {	-- Lord Roccor
@@ -2637,14 +2290,14 @@
 						}),
 						i(11631),	-- Stoneshell Guard
 						i(11632),	-- Earthslag Shoulders
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22234) } }),	-- Mantle of Lost Hope
+						{ progressionKey = "brd.later-loot", groups = { i(22234) } },	-- Mantle of Lost Hope
 						-- #if AFTER 7.3.2
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22271) } }),	-- Leggings of Frenzied Magic
+						{ progressionKey = "brd.later-loot", groups = { i(22271) } },	-- Leggings of Frenzied Magic
 						i(11679),	-- Rubicund Armguards
 						-- #endif
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22397, {	-- Idol of Ferocity
+						{ progressionKey = "brd.later-loot", groups = { i(22397, {	-- Idol of Ferocity
 							timeline = { REMOVED_5_0_4 },
-						}) } }),
+						}) } },
 						i(11630, {	-- Rockshard Pellets
 							timeline = { DELETED_4_0_1 },
 						}),
@@ -2653,25 +2306,9 @@
 				e(371, {	-- Houndmaster Grebmar
 					creatureID = 9319,
 					groups = {
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223540, {	-- Houndmaster's Bow
-							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
 						i(11628, {	-- Houndmaster's Bow
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_2 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223982, {	-- Houndmaster's Rifle
-							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
+						}),
 						i(11629, {	-- Houndmaster's Rifle
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						i(11627),	-- Fleetfoot Greaves
 						i(11623),	-- Spritecaster Cape
@@ -2682,138 +2319,58 @@
 					creatureID = 10096,	-- High Justice Grimstone
 					groups = {
 						n(9031, {	-- Anub'shiah
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223986, {	-- Graverot Cape
-								timeline = { ADDED_1_15_2 },
-							}) } }),
-							-- #endif
 							i(11677, {	-- Graverot Cape
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_2 },
-								-- #endif
 							}),
 							i(11678),	-- Carapace of Anub'shiah
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227957, {	-- Savage Gladiator Greaves
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(11731, {	-- Savage Gladiator Greaves
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(11675),	-- Shadefiend Boots
 						}),
 						n(9029, {	-- Eviscerator
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223987, {	-- Splinthide Shoulders
-								timeline = { ADDED_1_15_2 },
-							}) } }),
-							-- #endif
 							i(11685, {	-- Splinthide Shoulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_2 },
-								-- #endif
 							}),
 							-- #if BEFORE 7.3.2
 							i(11679),	-- Rubicund Armguards
 							-- #endif
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227961, {	-- Savage Gladiator Grips
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(11730, {	-- Savage Gladiator Grips
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(11686),	-- Girdle of Beastial Fury
 						}),
 						n(9027, {	-- Gorosh the Dervish
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227962, {	-- Flarethorn
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
-							applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22266, {	-- Flarethorn
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}) } }),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227952, {	-- Savage Gladiator Chain
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "brd.later-loot", groups = { i(22266, {	-- Flarethorn
+							}) } },
 							i(11726, {	-- Savage Gladiator Chain
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							-- #if AFTER 7.3.2
 							i(11662),	-- Ban'thok Sash
 							-- #endif
-							{ progressionKey = "brd.later-loot", groups = { applyclassicphase(PHASE_FIVE, i(22271)),	-- Leggings of Frenzied Magic
-							applyclassicphase(PHASE_FIVE, i(22257)) } },	-- Bloodclot Band
+							{ progressionKey = "brd.later-loot", groups = { i(22271),	-- Leggings of Frenzied Magic
+							i(22257) } },	-- Bloodclot Band
 						}),
 						n(9028, {	-- Grizzle
 							i(11610),	-- Plans: Dark Iron Pulverizer (RECIPE!)
 							i(11702),	-- Grizzle's Skinner
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223544, {	-- Dregmetal Spaulders
-								timeline = { ADDED_1_15_2 },
-							}) } }),
-							-- #endif
 							i(11722, {	-- Dregmetal Spaulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_2 },
-								-- #endif
 							}),
 							i(11703),	-- Stonewall Girdle
-							applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22270) } }),	-- Entrenching Boots
+							{ progressionKey = "brd.later-loot", groups = { i(22270) } },	-- Entrenching Boots
 						}),
 						n(9032, {	-- Hedrum the Creeper
 							i(11635),	-- Hookfang Shanker
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227955, {	-- Savage Gladiator Helm
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(11729, {	-- Savage Gladiator Helm
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(11633),	-- Spiderfang Carapace
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223984, {	-- Silkweb Gloves
-								timeline = { ADDED_1_15_2 },
-							}) } }),
-							-- #endif
 							i(11634, {	-- Silkweb Gloves
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_2 },
-								-- #endif
 							}),
 						}),
 						n(9030, {	-- Ok'thor the Breaker
 							i(11665),	-- Ogreseer Fists
 							i(11662),	-- Ban'thok Sash
 							i(11728),	-- Savage Gladiator Leggings
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223985, {	-- Cyclopean Band
-								timeline = { ADDED_1_15_2 },
-							}) } }),
-							-- #endif
 							i(11824, {	-- Cyclopean Band
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_2 },
-								-- #endif
 							}),
 						}),
-						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "brd.dungeon-set-2", groups = { n_conditional(16059, {	-- Theldren
+						{ progressionKey = "brd.dungeon-set-2", groups = { n_conditional(16059, {	-- Theldren
 							description = "Requires Banner of Provocation (Dungeon Set 2 Questline) to summon this boss. Loot the grey chest on the grey grate after killing the mobs. You must use the banner before the non-elites are killed.\nSummon Location: Ring of Law.",
 							timeline = { REMOVED_4_0_3 },
 							-- #if AFTER 4.0.3
@@ -2826,33 +2383,15 @@
 							},
 							groups = {
 								i(22047),	-- Top Piece of Lord Valthalak's Amulet
-								-- #if SEASON_OF_DISCOVERY
-								applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(228700, {	-- Ironweave Mantle
-									timeline = { ADDED_1_15_3 },
-								}) } }),
-								-- #endif
 								i(22305, {	-- Ironweave Mantle
-									-- #if SEASON_OF_DISCOVERY
-									timeline = { REMOVED_1_15_3 },
-									-- #endif
 								}),
 								i(22317),	-- Lefty's Brass Knuckle
 								i(22318),	-- Malgen's Long Bow
 								i(22330),	-- Shroud of Arcane Mastery
 							},
-						}) } }),
-					},
-				}),
-				-- #if SEASON_OF_DISCOVERY
-				applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { n(223265, {	-- Delirious Ancient
-					description = "Spawns after defeating High Interrogator Gerstahn, Houndmaster Grebmar, Ring of Law in the Dark Iron Highway.",
-					cost = { { "i", 221418, 1 } },	-- Agamaggan's Roar
-					groups = {
-						i(221271),	-- Ace of Wilds
-						i(221262),	-- Wild Offering
-					},
-				}) } }),
-				-- #endif
+						}) } },
+					},
+				}),
 				e(377, {	-- Bael'gar
 					creatureID = 9016,
 					groups = {
@@ -2861,14 +2400,14 @@
 						i(11807),	-- Sash of the Burning Heart
 						i(11802),	-- Lavacrest Leggings
 						-- #if AFTER 7.3.2
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22257) } }),	-- Bloodclot Band
+						{ progressionKey = "brd.later-loot", groups = { i(22257) } },	-- Bloodclot Band
 						-- #endif
 					},
 				}),
 				e(374, {	-- Lord Incendius
 					creatureID = 9017,
 					groups = {
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(21987) } }),	-- Incendicite of Incendius
+						{ progressionKey = "brd.later-loot", groups = { i(21987) } },	-- Incendicite of Incendius
 						i(11126),	-- Tablet of Kurniya
 						i(11766),	-- Flameweave Cuffs
 						i(11764),	-- Cinderhide Armsplints
@@ -2883,7 +2422,7 @@
 							-- #endif
 							timeline = { REMOVED_2_0_1, ADDED_10_1_7 },	-- 07.09.2023 ATT DISCORD
 						}),
-						applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "brd.darkmoon-cards", groups = { i(19268) } }),	-- Ace of Elementals
+						{ progressionKey = "brd.darkmoon-cards", groups = { i(19268) } },	-- Ace of Elementals
 					},
 				}),
 				e(376, {	-- Fineous Darkvire <Chief Architect>
@@ -2891,7 +2430,7 @@
 					groups = {
 						i(11840),	-- Master Builder's Shirt
 						i(11839),	-- Chief Architect's Monocle
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22223) } }),	-- Foreman's Head Protector
+						{ progressionKey = "brd.later-loot", groups = { i(22223) } },	-- Foreman's Head Protector
 						i(151406, {	-- Belt of the Eminent Mason
 							timeline = { ADDED_7_3_0 },
 						}),
@@ -2905,55 +2444,25 @@
 					creatureID = 9024,
 					groups = {
 						i(11207),	-- Formula: Enchant Weapon - Fiery Weapon (RECIPE!)
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223538, {	-- Kindling Stave
-							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
 						i(11750, {	-- Kindling Stave
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						i(11748),	-- Pyric Caduceus
-						-- #if SEASON_OF_DISCOVERY
-						{ progressionKey = "brd.sod-phase-three-additions", groups = { applyclassicphase(SOD_PHASE_THREE, i(223981, {	-- Flamestrider Robes
-							timeline = { ADDED_1_15_2 },
-						})),
-						applyclassicphase(SOD_PHASE_THREE, i(223980, {	-- Searingscale Leggings
-							timeline = { ADDED_1_15_2 },
-						})) } },
-						-- #endif
 						i(11747, {	-- Flamestrider Robes
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						i(11749, {	-- Searingscale Leggings
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						-- #if AFTER 7.3.2
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22270) } }),	-- Entrenching Boots
+						{ progressionKey = "brd.later-loot", groups = { i(22270) } },	-- Entrenching Boots
 						-- #endif
 					},
 				}),
 				e(375, {	-- Warder Stilgiss
 					creatureID = 9041,
 					groups = {
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(223983, {	-- Arbiter's Blade
-							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
 						i(11784, {	-- Arbiter's Blade
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_2 },
-							-- #endif
 						}),
 						i(11782),	-- Boreal Mantle
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22241) } }),	-- Dark Warder's Pauldrons
+						{ progressionKey = "brd.later-loot", groups = { i(22241) } },	-- Dark Warder's Pauldrons
 						i(11783),	-- Chillsteel Girdle
 						i(151405, {	-- Cold-Forged Chestplate
 							timeline = { ADDED_7_3_0 },
@@ -2962,7 +2471,7 @@
 				}),
 				n(9042, {	-- Verek
 					i(11755),	-- Verek's Collar
-					applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22242) } }),	-- Verek's Leash
+					{ progressionKey = "brd.later-loot", groups = { i(22242) } },	-- Verek's Leash
 				}),
 				n(9476, {	-- Watchman Doomgrip
 					description = "Watchman Doomgrip spawns once all twelve Relic Coffers have been opened using Relic Coffer Keys that can drop from any Dark Iron mob in the instance. Upon defeating all enemies, a hidden door beneath the Dark Coffer will open allowing access to the Secret Safe as well as the Heart of the Mountain.",
@@ -2994,10 +2503,10 @@
 								i(11926),	-- Deathdealer Breastplate
 								i(11929),	-- Haunting Specter Leggings
 								-- #endif
-								{ progressionKey = "brd.later-loot", groups = { applyclassicphase(PHASE_FIVE, i(22256)),	-- Mana Shaping Handwraps
-								applyclassicphase(PHASE_FIVE, i(22205)),	-- Black Steel Bindings
-								applyclassicphase(PHASE_FIVE, i(22254)),	-- Wand of Eternal Light
-								applyclassicphase(PHASE_FIVE, i(22255)) } },	-- Magma Forged Band
+								{ progressionKey = "brd.later-loot", groups = { i(22256),	-- Mana Shaping Handwraps
+								i(22205),	-- Black Steel Bindings
+								i(22254),	-- Wand of Eternal Light
+								i(22255) } },	-- Magma Forged Band
 							},
 						}),
 					},
@@ -3034,28 +2543,12 @@
 					creatureID = 9033,
 					groups = {
 						i(11464),	-- Marshal Windsor's Lost Information
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.angerforge-axe", groups = { i(227948, {	-- Angerforge's Battle Axe
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11816, {	-- Angerforge's Battle Axe
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						-- #if AFTER 7.3.2
 						i(11932),	-- Guiding Stave of Wisdom
 						-- #endif
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227940, {	-- Lord General's Sword
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11817, {	-- Lord General's Sword
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						-- #if AFTER 7.3.2
 						i(12557, {	-- Ebonsteel Spaulders
@@ -3075,39 +2568,15 @@
 					groups = {
 						i(11268),	-- Head of Argelmach
 						i(11465),	-- Marshal Windsor's Lost Information
-						applyclassicphase(TBC_PHASE_ONE, { progressionKey = "brd.tbc-jewelcrafting", groups = { i(21956, {	-- Design: Dark Iron Scorpid (RECIPE!)
+						{ progressionKey = "brd.tbc-jewelcrafting", groups = { i(21956, {	-- Design: Dark Iron Scorpid (RECIPE!)
 							timeline = { ADDED_2_0_5 },
-						}) } }),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227964, {	-- Luminary Kilt
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}) } },
 						i(11823, {	-- Luminary Kilt
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227965, {	-- Omnicast Boots
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
 						i(11822, {	-- Omnicast Boots
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11669),	-- Naglering
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227967, {	-- Second Wind
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11819, {	-- Second Wind
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 					},
 				}),
@@ -3129,7 +2598,7 @@
 							timeline = { ADDED_7_3_0 },
 						}),
 						i(18043),	-- Coal Miner Boots
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22275) } }),	-- Firemoss Boots
+						{ progressionKey = "brd.later-loot", groups = { i(22275) } },	-- Firemoss Boots
 					},
 				}),
 				e(9543, {	-- Ribbly Screwspigot
@@ -3137,15 +2606,7 @@
 					description = "Speak to him to start the encounter.",
 					groups = {
 						i(11313),	-- Ribbly's Head
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227901, {	-- Plans: Tempered Dark Iron Plate (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11612, {	-- Plans: Dark Iron Plate (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(2663, {	-- Ribbly's Bandolier
 							timeline = { REMOVED_4_0_1 },
@@ -3165,14 +2626,9 @@
 						i(151410, {	-- Bottle-Popper Ring
 							timeline = { ADDED_7_3_0 },
 						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_THREE, { progressionKey = "brd.sod-phase-three-additions", groups = { i(220168, {	-- Triple-Brewed Molten Lager
-							timeline = { ADDED_1_15_2 },
-						}) } }),
-						-- #endif
-					},
-				}),
-				applyclassicphase(TBC_PHASE_FOUR, { progressionKey = "brd.dark-iron-brewer", groups = { n(28067, {	-- Dark Iron Brewer
+					},
+				}),
+				{ progressionKey = "brd.dark-iron-brewer", groups = { n(28067, {	-- Dark Iron Brewer
 					description = "Speak to him until he passes out, a Mug will appear on the ground",
 					timeline = { ADDED_2_4_3 },
 					groups = {
@@ -3180,7 +2636,7 @@
 							i(38320),	-- Dire Brew
 						}),
 					},
-				}) } }),
+				}) } },
 				e(381, {	-- Phalanx
 					creatureID = 9502,
 					description = "Private Rocknot must be sent into a drunken rage to aggro Phalanx.\nTo do that, give him 6 dark iron ale mugs, which can be bought from Plugger Spazzring.\nRocknot will break one of the kegs, it'll blow the door open and Phalanx will be angry.",
@@ -3198,8 +2654,8 @@
 						-- #if BEFORE 7.3.2
 						i(11746),	-- Golem Skull Helm
 						-- #endif
-						{ progressionKey = "brd.later-loot", groups = { applyclassicphase(PHASE_FIVE, i(22212)),	-- Golem Fitted Pauldrons
-						applyclassicphase(PHASE_FIVE, i(22204)) } },	-- Wristguards of Renown
+						{ progressionKey = "brd.later-loot", groups = { i(22212),	-- Golem Fitted Pauldrons
+						i(22204) } },	-- Wristguards of Renown
 						i(11745),	-- Fists of Phalanx
 						i(151409, {	-- Ferrous Cord
 							timeline = { ADDED_7_3_0 },
@@ -3209,47 +2665,15 @@
 				e(384, {	-- Ambassador Flamelash
 					creatureID = 9156,
 					groups = {
-						-- #if SEASON_OF_DISCOVERY
-						{ progressionKey = "brd.sod-phase-four-additions", groups = { applyclassicphase(SOD_PHASE_FOUR, i(227934, {	-- Flame Wrath
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227973, {	-- Circle of Flame
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227970, {	-- Cape of the Fire Salamander
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227971, {	-- Molten Fists
-							timeline = { ADDED_1_15_3 },
-						})),
-						applyclassicphase(SOD_PHASE_FOUR, i(227972, {	-- Burst of Knowledge
-							timeline = { ADDED_1_15_3 },
-						})) } },
-						-- #endif
 						i(11809, {	-- Flame Wrath
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11808, {	-- Circle of Flame
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11812, {	-- Cape of the Fire Salamander
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11814, {	-- Molten Fists
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11832, {	-- Burst of Knowledge
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 					},
 				}),
@@ -3259,7 +2683,7 @@
 						i(11786),	-- Stone of the Earth
 						i(11785),	-- Rock Golem Bulwark
 						i(11787),	-- Shalehusk Boots
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22245) } }),	-- Soot Encrusted Footwear
+						{ progressionKey = "brd.later-loot", groups = { i(22245) } },	-- Soot Encrusted Footwear
 					},
 				}),
 				e(385, {	-- The Seven
@@ -3268,105 +2692,41 @@
 					modelScale = 3,
 					groups = {
 						-- #if BEFORE 7.3.2
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227963, {	-- Blood-Etched Blade
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11922, {	-- Blood-Etched Blade
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #endif
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227960, {	-- Impervious Giant
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						}),
 						-- #endif
 						i(11921, {	-- Impervious Giant
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11923),	-- The Hammer of Grace
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227941, {	-- Wraith Scythe
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11920, {	-- Wraith Scythe
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227958, {	-- Ghostshroud
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
 						i(11925, {	-- Ghostshroud
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227956, {	-- Deathdealer Breastplate
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
 						i(11926, {	-- Deathdealer Breastplate
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11929),	-- Haunting Specter Leggings
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227959, {	-- Legplates of the Eternal Guardian
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11927, {	-- Legplates of the Eternal Guardian
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 					},
 				}),
 				e(386, {	-- Magmus
 					creatureID = 9938,
 					groups = {
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227974, {	-- Lavastone Hammer
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22208, {	-- Lavastone Hammer
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}) } }),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227978, {	-- Magmus Stone
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						{ progressionKey = "brd.later-loot", groups = { i(22208, {	-- Lavastone Hammer
+						}) } },
 						i(11935, {	-- Magmus Stone
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						i(11746),	-- Golem Skull Helm
 						i(151411, {	-- Molten-Warden Leggings
 							timeline = { ADDED_7_3_0 },
 						}),
 						i(22275),	-- Firemoss Boots
-						{ progressionKey = "brd.later-loot", groups = { applyclassicphase(PHASE_FIVE, i(22400, {	-- Libram of Truth
+						{ progressionKey = "brd.later-loot", groups = { i(22400, {	-- Libram of Truth
 							timeline = { DELETED_5_0_4 },
-						})),
-						applyclassicphase(PHASE_FIVE, i(22395, {	-- Totem of Rage
+						}),
+						i(22395, {	-- Totem of Rage
 							timeline = { DELETED_5_0_4 },
-						})) } },
+						}) } },
 					},
 				}),
 				-- #if BEFORE 7.3.2
@@ -3379,27 +2739,15 @@
 					groups = {
 						i(12557, {	-- Ebonsteel Spaulders
 							timeline = { REMOVED_4_0_3, ADDED_8_1_0 },
-							-- #if ANYCLASSIC
-							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
-							-- #endif
 						}),
 						i(12554, {	-- Hands of the Exalted Herald
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
-							-- #if ANYCLASSIC
-							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
-							-- #endif
 						}),
 						i(12556, {	-- High Priestess Boots
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
-							-- #if ANYCLASSIC
-							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
-							-- #endif
 						}),
 						i(12553, {	-- Swiftwalker Boots
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
-							-- #if ANYCLASSIC
-							OnUpdate = PRINCESS_MOIRA_LOOT_OnUpdate,
-							-- #endif
 						}),
 					},
 				}),
@@ -3415,88 +2763,24 @@
 						i(246429, {	-- Dark Iron Chandelier (DECOR!)
 							timeline = { ADDED_11_2_7 },
 						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227981, {	-- Dreadforge Retaliatior
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11931, {	-- Dreadforge Retaliatior
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						-- #if BEFORE 7.3.2
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227982, {	-- Guiding Stave of Wisdom
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11932, {	-- Guiding Stave of Wisdom
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #endif
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227991, {	-- Ironfoe
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						}),
 						-- #endif
 						i(11684, {	-- Ironfoe
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227984, {	-- Thaurissan's Royal Scepter
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
 						i(11928, {	-- Thaurissan's Royal Scepter
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227988, {	-- Imperial Jewel
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
 						i(11933, {	-- Imperial Jewel
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227985, {	-- The Emperor's New Cape
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
 						i(11930, {	-- The Emperor's New Cape
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227980, {	-- Robes of the Royal Crown
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
+						}),
 						i(11924, {	-- Robes of the Royal Crown
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}),
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227986, {	-- Wristguards of Renown
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22204, {	-- Wristguards of Renown
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}) } }),
+						}),
+						{ progressionKey = "brd.later-loot", groups = { i(22204, {	-- Wristguards of Renown
+						}) } },
 						-- #if AFTER 7.3.2
 						i(12554, {	-- Hands of the Exalted Herald
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
@@ -3507,16 +2791,8 @@
 							timeline = { REMOVED_4_0_3 },
 						}),
 						-- #endif
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227987, {	-- Sash of the Grand Hunt
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
-						applyclassicphase(PHASE_FIVE, { progressionKey = "brd.later-loot", groups = { i(22207, {	-- Sash of the Grand Hunt
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
-						}) } }),
+						{ progressionKey = "brd.later-loot", groups = { i(22207, {	-- Sash of the Grand Hunt
+						}) } },
 						-- #if AFTER 7.3.2
 						i(12556, {	-- High Priestess Boots
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
@@ -3525,22 +2801,9 @@
 							timeline = { REMOVED_4_0_3, ADDED_7_3_2 },
 						}),
 						-- #endif
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(227983, {	-- Dark Iron Seal
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11934),	-- Emperor's Seal
 						-- #if AFTER 1.13.5
-						-- #if SEASON_OF_DISCOVERY
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "brd.sod-phase-four-additions", groups = { i(228722, {	-- Hand of Justice
-							timeline = { ADDED_1_15_3 },
-						}) } }),
-						-- #endif
 						i(11815, {	-- Hand of Justice
-							-- #if SEASON_OF_DISCOVERY
-							timeline = { REMOVED_1_15_3 },
-							-- #endif
 						}),
 						-- #endif
 						i(12033),	-- Thaurissan Family Jewels
```

</details>

### Add the file selection

**New setting shown in:** [p4/selection.json](p4/selection.json), a generated comparison file. The proposed loader selects the source before executing Lua. `null` selects no source for that instance.

```diff
--- /dev/null
+++ .contrib/phase-examples/evolution/blackrock-depths/p4/selection.json
@@ -0,0 +1,18 @@
+{
+  "$comment": "Generated comparison selection; choose the complete source before Lua execution.",
+  "retail": {
+    "blackrock-depths": "retail.lua"
+  },
+  "progression:main": {
+    "blackrock-depths": "classic.lua"
+  },
+  "anniversary:main": {
+    "blackrock-depths": "classic.lua"
+  },
+  "era:main": {
+    "blackrock-depths": "classic.lua"
+  },
+  "sod:main": {
+    "blackrock-depths": "sod.lua"
+  }
+}
```

### Update the control’s source list

```diff
--- .contrib/phase-examples/evolution/blackrock-depths/p3/migration.json
+++ .contrib/phase-examples/evolution/blackrock-depths/p4/migration.json
@@ -4,9 +4,11 @@
   "cohorts": [
     {
       "id": "comparison-fixture-blackrock-depths",
-      "stage": "P3",
+      "stage": "P4",
       "sources": [
-        "Blackrock Depths.lua"
+        "retail.lua",
+        "classic.lua",
+        "sod.lua"
       ]
     }
   ]
```

## Key locations in the complete source

| Record or group | Key | What inherits it |
|---|---|---|
| Instance `228` | `brd.dungeon` | The dungeon and its descendants. |
| Emperor encounter `387` | `brd.second-half` | The Emperor and his loot, including Emperor's Seal `11934`. This does not mark every boss in Shadowforge City. |
| Gerstahn’s item `223539` | `brd.enthralled-sphere` | This individual addition. |
| Angerforge’s item `227948` | `brd.angerforge-axe` | This individual addition. |
| Other existing SoD phase-three/four writers | `brd.sod-phase-three-additions`, `brd.sod-phase-four-additions` | The records already enclosed by those writers. Adjacent records with the same rule share a scope. |
| Enchant, recipe, Dark Iron, Darkmoon, later-loot, Dungeon Set 2 and TBC writers | Eight separate entries under `fullSourceRules.blackrock-depths` | Each affected batch keeps its own rule. Their release boundaries remain `unknown`. |

```text
inst(228) — brd.dungeon
├─ Gerstahn
│  └─ item(223539) — adds brd.enthralled-sphere
├─ Angerforge
│  └─ item(227948) — adds brd.angerforge-axe
└─ e(387) — adds brd.second-half
   └─ item(11934) — inherits both parent rules
```

## Reproduce and check these files

The generator reproduces the comparison copies for this PR. Ordinary database maintenance still edits the Lua source itself; it does not require editing this Python tool. The production migration and stage switch remain proposed.

| File | Maintained by |
|---|---|
| [schedule.json](../../schedule.json) | Author: edit the timing rules here. |
| [full-source/generate.py](../full-source/generate.py) | Comparison setup: the proposed Lua edits and original-writer mappings. |
| Stage Lua, `migration.json`, `selection.json` | Generator: saved complete versions for this comparison. |
| [coverage.json](coverage.json) | Generator: all 141 original writer calls, with their source lines and replacement keys. |

From the repository root, using Lua 5.1:

```console
python .contrib/phase-examples/evolution/full-source/generate.py
python .contrib/phase-examples/evolution/full-source/verify.py --lua lua5.1
python .contrib/phase-examples/prepare.py --check
```

The checks compare P1’s raw payload with production, require identical P2.1/P2.2/P3 Lua, and read the saved P2/P4 files to compare all ordinary source tokens against P1 after selecting each branch. They also check key coverage and Lua 5.1 syntax across client versions and flavors. They do **not** execute these complete native files through the production Parser or establish an independent legacy golden.

The expanded full-file diffs contain every changed hunk; the short P2.1 view selects exact hunks from that full diff. Line endings are normalized for Markdown. `/dev/null` means the file is absent at the preceding migration step.

[Choose another instance](../README.md)
