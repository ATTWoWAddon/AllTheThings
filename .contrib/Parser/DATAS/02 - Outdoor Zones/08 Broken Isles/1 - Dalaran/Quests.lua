---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(LEGION_DALARAN, {
			n(QUESTS, {
				q(44720, {	-- A Call to Action
					["qgs"] = {
						114946,	-- Muninn
						119531,	-- Muninn
					},
					["coords"] = {
						{ 44.6, 64.1, BROKEN_SHORE },
						{ 73.8, 41.6, LEGION_DALARAN },
					},
					["lvl"] = 110,
				}),
				q(45865, {	-- A Gift From the Six
					["sourceQuests"] = { 46177 },	-- A Portal Away
					["provider"] = { "n", 90418 },	-- Archmage Modera
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = {
						DEATHKNIGHT,	-- Frost
						DEMONHUNTER,	-- Havoc
						HUNTER,			-- Survival
						ROGUE,			-- Subtlety
						WARRIOR,		-- Arms
					},
					["groups"] = {
						hqt(45853, name(HEADERS.Achievement, 11609)),	-- Melee DPS Trait Complete
					},
				}),
				q(45864, {	-- A Gift From the Six
					["sourceQuests"] = { 46200 },	-- The Matter Resolved... For Now...
					["provider"] = { "n", 90418 },	-- Archmage Modera
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = {
						PALADIN,
						PRIEST,
						SHAMAN,
						MONK,
						DRUID
					},
					["groups"] = {
						hqt(45852, name(HEADERS.Achievement, 11609)),	-- Healer Trait Complete
					},
				}),
				q(45862, {	-- A Gift From the Six
					["sourceQuests"] = { 46340 },	-- The Gates Are Closed
					["provider"] = { "n", 90418 },	-- Archmage Modera
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = {
						MAGE,		-- Arcane
						PALADIN,	-- Retribution
						ROGUE,		-- Assassination
						SHAMAN,		-- Enhancement
						WARLOCK,	-- Demonology
					},
					["groups"] = {
						hqt(45849, name(HEADERS.Achievement, 11609)),	-- 3+ Targets Trait Complete
					},
				}),
				q(45842, {	-- A Gift From the Six
					["sourceQuests"] = { 45841 },	-- A Triumphant Report
					["provider"] = { "n", 90418 },	-- Archmage Modera
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = {
						HUNTER,		-- Beast Mastery
						MONK,		-- Windwalker
						PRIEST,		-- Discipline
						WARLOCK,	-- Destruction
					},
					["groups"] = {
						hqt(45851, name(HEADERS.Achievement, 11609)),	-- Dual Boss Trait Complete
					},
				}),
				q(45866, {	-- A Gift From the Six
					["sourceQuests"] = { 45193 },	-- One Step Behind
					["provider"] = { "n", 90418 },	-- Archmage Modera
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = {
						DRUID,	-- Balance
						HUNTER,	-- Marksmanship
						MAGE,	-- Frost
						PRIEST,	-- Shadow
						WARLOCK,	-- Affliction
					},
					["groups"] = {
						hqt(45854, name(HEADERS.Achievement, 11609)),	-- Ranged DPS Trait Complete
					},
				}),
				q(45861, {	-- A Gift From the Six
					["sourceQuests"] = { 45127 },	-- Fel-Crossed Lovers
					["provider"] = { "n", 90418 },	-- Archmage Modera
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = {
						DRUID,			-- Feral
						DEATHKNIGHT,	-- Unholy
						MAGE,			-- Fire
						ROGUE,			-- Outlaw
						SHAMAN,			-- Elemental
						WARRIOR,		-- Fury
					},
					["groups"] = {
						hqt(45850, name(HEADERS.Achievement, 11609)),	-- AoE DPS Trait Complete
					},
				}),
				q(45863, {	-- A Gift From the Six
					["sourceQuests"] = { 45843 },	-- Dark Omens
					["provider"] = { "n", 90418 },	-- Archmage Modera
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = {
						DEATHKNIGHT,	-- Blood
						DEMONHUNTER,	-- Vengeance
						DRUID,			-- Guardian
						MONK,			-- Brewmaster
						PALADIN,		-- Protection
						WARRIOR,		-- Protection
					},
					["groups"] = {
						hqt(45855, name(HEADERS.Achievement, 11609)),	-- Tank Trait Complete
					},
				}),
				q(72129, {	-- Aiding Khadgar
					["coord"] = { 28.8, 48.4, LEGION_DALARAN },
					["timeline"] = { ADDED_10_0_2 },
					["classes"] = { EVOKER },
					["_drop"] = { "classes", "c" },	-- bad API data
				}),
				q(72134, {	-- An Adventurer's Aid
					["sourceQuest"] = 72129,	-- Aiding Khadgar
					["provider"] = { "n", 90417 },	-- Archmage Khadgar
					["coord"] = { 28.8, 48.4, LEGION_DALARAN },
					["timeline"] = { ADDED_10_0_2 },
					["classes"] = { EVOKER },
				}),
				q(38035, {	-- A Royal Summons
					["sourceQuests"] = {
						39735,	-- Stormheim
						44700,	-- Stormheim
					},
					["provider"] = { "n", 96644 },	-- Sky Admiral Rogers
					["coord"] = { 29.2, 47.2, LEGION_DALARAN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = { i(128687) },	-- Royal Summons (QI!)
				}),
				q(50318, {	-- A Timely Summons from Northrend
					["provider"] = { "n", 111246 },	-- Archmage Timear
					["coord"] = { 63.8, 55.2, LEGION_DALARAN },
					["isBreadcrumb"] = true,
				}),
				q(47663, {	-- A Timely Summons from Shattrath
					["provider"] = { "n", 111246 },	-- Archmage Timear
					["coord"] = { 63.8, 55.2, LEGION_DALARAN },
					["isBreadcrumb"] = true,
				}),
				q(49472, {	-- A Titanic Effort
					["sourceQuest"] = 49474,	-- The Cursed Shard
					["timeline"] = {
						ADDED_7_3_5,
						REMOVED_8_0_1
					},
				}),
				q(49473, {	-- A Titanic Effort
					["sourceQuest"] = 49472,	-- A Titanic Effort
					["timeline"] = {
						ADDED_7_3_5,
						REMOVED_8_0_1
					},
					["repeatable"] = true,
				}),
				q(47041, {	-- Affliction: The Twisted Twin
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47034,	-- Legion Threat: The Necromancer
					},
					["qgs"] = {
						90463,	-- Archmage Karlain
						115468,	-- Archmage Karlain
					},
					["coords"] = {
						{ 23.4, 39.8, LEGION_DALARAN },
						{ 28.8, 48.6, LEGION_DALARAN },
					},
					["classes"] = { WARLOCK },
					["lvl"] = 110,
				}),
				q(44421, {	-- Anomalous Anomalies
					["sourceQuests"] = { 44182 },	-- City Under Siege
					["provider"] = { "n", 113986 },	-- Archmage Khadgar
					["coord"] = { 47.6, 74.6, DEADWIND_PASS },
					["groups"] = {
						i(141411),	-- Translocation Anomaly Neutralization Crystal (QI!)
					},
				}),
				q(45482, {	-- Arcane: Fate of the Tideskorn
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47033,	-- Legion Threat: Suramar
					},
					["qgs"] = {
						90417,	-- Archmage Khadgar
						115464,	-- Archmage Khadgar
					},
					["coords"] = {
						{ 22.6, 39.2, LEGION_DALARAN },
						{ 28.8, 48.6, LEGION_DALARAN },
					},
					["classes"] = { MAGE },
					["lvl"] = 110,
					["groups"] = { i(144457) },	-- Scrolls of the Faldrottin (QI!)
				}),
				q(46730, {	-- Armies of Legionfall
					["sourceQuests"] = { 45727 },	-- Uniting the Isles
					["provider"] = { "n", 120215 },	-- Archmage Khadgar
					["coord"] = { 66.2, 42.6, LEGION_DALARAN },
					["lvl"] = 110,
				}),
				q(44914, {	-- Arms: The Thieving Apprentice
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47032,	-- Legion Threat: Azshara
					},
					["qgs"] = {
						105081,	-- Archmage Kalec
						115467,	-- Archmage Kalec
					},
					["coords"] = {
						{ 23.0, 40.6, LEGION_DALARAN },
						{ 28.7, 49.9, LEGION_DALARAN },
					},
					["classes"] = { WARRIOR },
				}),
				q(47051, {	-- Assassination: Fate of the Tideskorn
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47033,	-- Legion Threat: Suramar
					},
					["qgs"] = {
						90417,	-- Archmage Khadgar
						115464,	-- Archmage Khadgar
					},
					["coords"] = {
						{ 22.6, 39.2, LEGION_DALARAN },
						{ 28.8, 48.6, LEGION_DALARAN },
					},
					["classes"] = { ROGUE },
					["groups"] = { i(144457) },	-- Scrolls of the Faldrottin (QI!)
				}),
				q(46734, {	-- Assault on Broken Shore
					["sourceQuests"] = { 46730 },	-- Armies of the Legionfall
					["provider"] = { "n", 120215 },	-- Archmage Khadgar
					["coord"] = { 69.4, 43.5, LEGION_DALARAN },
					["maps"] = { 858 },	-- Assault on Broken Shore (scenario)
					["lvl"] = 110,
				}),
				q(44400, {	-- Assault on Violet Hold: Purple Pain
					["provider"] = { "n", 113813 },	-- Lieutenant Sinclari
					["coord"] = { 66.3, 67.9, LEGION_DALARAN },
					["groups"] = {
						i(141359),	-- Violet Guardian's Corona
						i(141358),	-- Violet Guardian's Cowl
						i(141357),	-- Violet Guardian's Helm
						i(141356),	-- Violet Guardian's Faceguard
					},
				}),
				q(44500, {	-- Author! Author!
					["sourceQuests"] = { 44421 },	-- Author! Author!
					["provider"] = { "n", 113986 },	-- Archmage Khadgar
					["coord"] = { 47.6, 74.6, DEADWIND_PASS },
				}),
				q(44782, {	-- Away From Prying Eyes
					["sourceQuests"] = { 47000 },	-- The Council's Call
					["provider"] = { "n", 90417 },	-- Archmage Khadgar
					["coord"] = { 28.8, 48.4, LEGION_DALARAN },
					["lvl"] = 110,
				}),
				q(47037, {	-- Balance: The Twisted Twin
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47034,	-- Legion Threat: The Necromancer
					},
					["qgs"] = {
						90463,	-- Archmage Karlain
						115468,	-- Archmage Karlain
					},
					["classes"] = { DRUID },
					["lvl"] = 110,
				}),
				q(46327, {	-- Bargaining with Shadows
					["sourceQuests"] = {
						45123,	-- Elemental: The Folly of Levia laurence
						47059,	-- Feral: The Folly of Levia laurence
						47055,	-- Fire: The Folly of Levia laurence
						47056,	-- Fury: The Folly of Levia laurence
						47058,	-- Outlaw: The Folly of Levia laurence
						47057,	-- Unholy: The Folly of Levia laurence
					},
					["provider"] = { "n", 90418 },	-- Archmage Modera
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = {
						DRUID,			-- Feral
						DEATHKNIGHT,	-- Unholy
						MAGE,			-- Fire
						ROGUE,			-- Outlaw
						SHAMAN,			-- Elemental
						WARRIOR,		-- Fury
					},
				}),
				q(47018, {	-- Beast Mastery: Rumblings Near Feltotem
					["sourceQuests"] = {
						47031,	-- Legion Threat: Highmountain
						44821,	-- In Dire Need
					},
					["qgs"] = {
						90418,	-- Archmage Modera
						115465,	-- Archmage Modera (2 versions)
					},
					["coords"] = {
						{ 23.4, 39.6, LEGION_DALARAN },
						{ 28.5, 48.9, LEGION_DALARAN },
					},
					["classes"] = { HUNTER },
				}),
				q(45415, {	-- Between Worlds
					["sourceQuests"] = { 45414 },	-- Confirming Suspicions
					["provider"] = { "n", 117042 },	-- Prophet Velen
					["coord"] = { 74.8, 45.6, LEGION_DALARAN },
					["classes"] = {
						DEATHKNIGHT,	-- Blood
						DEMONHUNTER,	-- Vengeance
						DRUID,			-- Guardian
						MONK,			-- Brewmaster
						PALADIN,		-- Protection
						WARRIOR,		-- Protection
					},
				}),
				q(44760, {	-- Blood On Your Hands
					["provider"] = { "n", 115264 },	-- Illnea Bloodthorn
					["u"] = REMOVED_FROM_GAME,	-- presumably, was unable to find it on a character fresh to legion and on a level 50. may be available under random specific circumstances (45 but not unlocked WQs, not above 45, etc) but LIKELY removed
				}),
				q(47025, {	-- Blood: Aid of the Illidari
					["sourceQuests"] = {
						47030,	-- Legion Threat: Dalaran Infiltration
						44821,	-- In Dire Need
					},
					["qgs"] = {
						90431,	-- Archmage Ansirem Runeweaver
						115466,	-- Archmage Ansirem Runeweaver
					},
					["coords"] = {
						{ 22.8, 40.2, LEGION_DALARAN },
						{ 28.5, 49.5, LEGION_DALARAN },
					},
					["classes"] = { DEATHKNIGHT },
				}),
				q(47024, {	-- Brewmaster: Aid of the Illidari
					["sourceQuests"] = {
						47030,	-- Legion Threat: Dalaran Infiltration
						44821,	-- In Dire Need
					},
					["qgs"] = {
						90431,	-- Archmage Ansirem Runeweaver
						115466,	-- Archmage Ansirem Runeweaver
					},
					["coord"] = { 28.5, 49.5, LEGION_DALARAN },
					["classes"] = { MONK },
				}),
				q(40717, {	-- Calling of the Council [A]
					["description"] = "You can start this quest by going to Dalaran (Legion) and talking to Archivist Elysiana in The Violet Citadel.",
					["sourceQuests"] = { 46734 },	-- Assault on Broken Shore	-- TODO: confirm sourceQuests
					["provider"] = { "n", 114550 },	-- Khadgar's Upgraded Servant
					-- ["coord"] = { },
					["races"] = ALLIANCE_ONLY,
				}),
				q(40718, {	-- Calling of the Council [H]
					["description"] = "You can start this quest by going to Dalaran (Legion) and talking to Archivist Elysiana in The Violet Citadel.",
					["sourceQuests"] = { 46734 },	-- Assault on Broken Shore	-- TODO: confirm sourceQuests
					["provider"] = { "n", 114550 },	-- Khadgar's Upgraded Servant
					-- ["coord"] = { },
					["races"] = HORDE_ONLY,
				}),
				q(44182, {	-- City Under Siege
					["sourceQuests"] = { 40755 },	-- Hiding in the Stacks
					["provider"] = { "n", 114561 },	-- Khadgar's Upgraded Servant
				}),
				q(45414, {	-- Confirming Suspicions
					["sourceQuests"] = { 45413 },	-- Gathering Information
					["provider"] = { "n", 116880 },	-- Kor'vas Bloodthorn
					["coord"] = { 52.0, 19.6, LEGION_DALARAN },
					["classes"] = {
						DEATHKNIGHT,	-- Blood
						DEMONHUNTER,	-- Vengeance
						DRUID,			-- Guardian
						MONK,			-- Brewmaster
						PALADIN,		-- Protection
						WARRIOR,		-- Protection
					},
				}),
				q(45239, {	-- Cubic Coalescing
					["sourceQuests"] = { 45238 },	-- Return to Karazhan: Cubic Cynosure
					["provider"] = { "n", 93538 },	-- Dariness the Learned
					["groups"] = {
						i(142536),	-- Memory Cube (TOY!)
					},
				}),
				q(45159, {	-- Cubic Conundrum
					["provider"] = { "i", 142559 },	-- Mysterious Cube
				}),
				q(45160, {	-- Cubic Currents
					["sourceQuests"] = { 45159 },	-- Cubic Conundrum
					["provider"] = { "n", 93538 },	-- Dariness the Learned
					["coord"] = { 41, 26.2, LEGION_DALARAN },
				}),
				q(45125, {	-- Dabbling in the Demonic
					["sourceQuests"] = { 45916 },	-- The Acolyte Imperiled
					["provider"] = { "n", 116714 },	-- Ritssyn Flamescowl
					["coord"] = { 57.9, 72.6, 629 },
					["classes"] = {
						DRUID,			-- Feral
						DEATHKNIGHT,	-- Unholy
						MAGE,			-- Fire
						ROGUE,			-- Outlaw
						SHAMAN,			-- Elemental
						WARRIOR,		-- Fury
					},
					["lvl"] = 110,
				}),
				q(45843, {	-- Dark Omens
					["sourceQuest"] = 45415,	-- Between Worlds
					["qg"] = 116880,	-- Kor'vas Bloodthorn
					["coords"] = {
						{ 52.2, 19.6, LEGION_DALARAN },
						{ 85.2, 50.1, HELLFIRE_PENINSULA },
					},
					["classes"] = {
						DEATHKNIGHT,	-- Blood
						DEMONHUNTER,	-- Vengeance
						DRUID,			-- Guardian
						MONK,			-- Brewmaster
						PALADIN,		-- Protection
						WARRIOR,		-- Protection
					},
				}),
				q(47049, {	-- Demonology: Fate of the Tideskorn
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47033,	-- Legion Threat: Suramar
					},
					["qgs"] = {
						90417,	-- Archmage Khadgar
						115464,	-- Archmage Khadgar
					},
					["coords"] = {
						{ 22.8, 39.1, LEGION_DALARAN },
						{ 28.5, 48.4, LEGION_DALARAN },
					},
					["classes"] = { WARLOCK },
					["groups"] = { i(144457) },	-- Scrolls of the Faldrottin (QI!)
				}),
				q(45560, {	-- Destruction: Rumblings Near Feltotem
					["sourceQuests"] = {
						47031,	-- Legion Threat: Highmountain
						44821,	-- In Dire Need
					},
					["qgs"] = {
						90418,	-- Archmage Modera
						115465,	-- Archmage Modera
					},
					["coords"] = {
						{ 22.8, 39.4, LEGION_DALARAN },
						{ 28.5, 48.9, LEGION_DALARAN },
					},
					["classes"] = { WARLOCK },
				}),
				q(47020, {	-- Discipline: Rumblings Near Feltotem
					["sourceQuests"] = {
						47031,	-- Legion Threat: Highmountain
						44821,	-- In Dire Need
					},
					["qgs"] = {
						90418,	-- Archmage Modera
						115465,	-- Archmage Modera
					},
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = { PRIEST },
				}),
				q(41220, {	-- Down to Azsuna
					["sourceQuests"] = { 39718 },	-- Paradise Lost
					["provider"] = { "n", 86563 },	-- Archmage Khadgar
					["coord"] = { 72.0, 45.4, LEGION_DALARAN },
					["isBreadcrumb"] = true,
				}),
				q(45123, {	-- Elemental: The Folly of Levia Laurence
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47035,	-- Legion Threat: The Missing Mage
					},
					["qgs"] = {
						90418,	-- Archmage Modera
						115465,	-- Archmage Modera
					},
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = { SHAMAN },
				}),
				q(44412, {	-- Enemies Everywhere
					["sourceQuest"] = 44411,	-- Strange Humming Crystal
					["provider"] = { "n", 90417 },	-- Archmage Khadgar
					["coord"] = { 28.5, 48.4, LEGION_DALARAN },
					["groups"] = {
						i(141348, {	-- Wondrous Wisdomball (PET!)
							["cost"] = {{"i",141349,1}},	-- Strange Humming Crystal
							-- added cost of original quest chain start item
						}),
					},
				}),
				q(47050, {	-- Enhancement: Fate of the Tideskorn
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47033,	-- Legion Threat: Suramar
					},
					["qgs"] = {
						90417,	-- Archmage Khadgar
						115464,	-- Archmage Khadgar
					},
					["coords"] = {
						{ 22.6, 39.2, LEGION_DALARAN },
						{ 28.8, 48.6, LEGION_DALARAN },
					},
					["classes"] = { SHAMAN },	-- Shaman
					["lvl"] = 110,
					["groups"] = { i(144457) },	-- Scrolls of the Faldrottin (QI!)
				}),
				q(43473, {	-- Experimental Potion: Test Subjects Needed
					["provider"] = { "n", 110642 },	-- Fizzi Liverzapper
					["coord"] = { 75.4, 83.4, LEGION_THE_UNDERBELLY },
					["isDaily"] = true,
				}),
				q(43474, {	-- Experimental Potion: Test Subjects Needed
					["provider"] = { "n", 110642 },	-- Fizzi Liverzapper
					["coord"] = { 75.4, 83.4, LEGION_THE_UNDERBELLY },
					["isDaily"] = true,
				}),
				q(43475, {	-- Experimental Potion: Test Subjects Needed
					["provider"] = { "n", 110642 },	-- Fizzi Liverzapper
					["coord"] = { 75.4, 83.4, LEGION_THE_UNDERBELLY },
					["isDaily"] = true,
				}),
				q(43477, {	-- Experimental Potion: Test Subjects Needed
					["provider"] = { "n", 110642 },	-- Fizzi Liverzapper
					["coord"] = { 75.4, 83.4, LEGION_THE_UNDERBELLY },
					["isDaily"] = true,
				}),
				q(43476, {	-- Experimental Potion: Test Subjects Needed
					["provider"] = { "n", 110642 },	-- Fizzi Liverzapper
					["coord"] = { 75.4, 83.4, LEGION_THE_UNDERBELLY },
					["isDaily"] = true,
				}),
				q(43478, {	-- Experimental Potion: Test Subjects Needed
					["provider"] = { "n", 110642 },	-- Fizzi Liverzapper
					["coord"] = { 75.4, 83.4, LEGION_THE_UNDERBELLY },
					["isDaily"] = true,
				}),
				q(47059, {	-- Feral: The Folly of Levia Laurence
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47035,	-- Legion Threat: The Missing Mage
					},
					["qgs"] = {
						90418,	-- Archmage Modera
						115465,	-- Archmage Modera
					},
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = { DRUID },
				}),
				q(47055, {	-- Fire: The Folly of Levia Laurence
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47035,	-- Legion Threat: The Missing mage
					},
					["qgs"] = {
						90418,	-- Archmage Modera
						115465,	-- Archmage Modera
					},
					["coord"] = { 22.2, 39.6, 635 },
					["classes"] = { MAGE },
				}),
				q(41778, {	-- Firing Up the Forge
					["provider"] = { "n", 90463 },	-- Archmage Karlain
					["coord"] = { 42.7, 28.4, LEGION_DALARAN },
					["timeline"] = { REMOVED_9_1_0 },
					["lvl"] = 45,
					["groups"] = {
						i(136352),	-- Archmage Karlain's Imbued Silkweave Robe (QI!)
						i(136351),	-- Handful of Obliterum Ash (QI!)
					},
				}),
				q(45917, {	-- Following the Scent
					["sourceQuests"] = { 45125 },	-- Dabbling in the Demonic
					["provider"] = { "n", 116714 },	-- Ritssyn Flamescowl
					["coord"] = { 57.9, 72.6, 629 },
					["classes"] = {
						DRUID,			-- Feral
						DEATHKNIGHT,	-- Unholy
						MAGE,			-- Fire
						ROGUE,			-- Outlaw
						SHAMAN,			-- Elemental
						WARRIOR,		-- Fury
					},
					["lvl"] = 110,
				}),
				q(47046, {	-- Frost: The Thieving Apprentice
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47032,	-- Legion Threat: Azshara
					},
					["qgs"] = {
						115467,	-- Archmage Kalec
						105081,	-- Archmage Kalec
					},
					["coords"] = {
						{ 23.0, 40.6, LEGION_DALARAN },
						{ 29.0, 49.6, LEGION_DALARAN },
					},
					["classes"] = { DEATHKNIGHT },
					["lvl"] = 110,
				}),
				q(45182, {	-- Frost: The Twisted Twin
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47034,	-- Legion Threat: The Necromancer
					},
					["qgs"] = {
						90463,	-- Archmage Karlain
						115468,	-- Archmage Karlain
					},
					["coord"] = { 22.9, 38.1, 635 },
					["classes"] = { MAGE },
					["lvl"] = 110,
				}),
				q(47056, {	-- Fury: The Folly of Levia Laurence
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47035,	-- Legion Threat: The Missing Mage
					},
					["qgs"] = {
						90418,	-- Archmage Modera
						115465,	-- Archmage Modera
					},
					["coords"] = {
						{ 22.6, 39.2, LEGION_DALARAN },
						{ 28.5, 48.9, LEGION_DALARAN },
					},
					["classes"] = { WARRIOR },
				}),
				q(45413, {	-- Gathering Information
					["sourceQuests"] = {
						47025,	-- Blood: Aid of the Illidari
						47024,	-- Brewmaster: Aid of the Illidari
						47023,	-- Guardian: Aid of the Illidari
						45412,	-- Protection: Aid of the Illidari
						47022,	-- Protection: Aid of the Illidari
						46314,	-- Vengeance: Seeking Kor'vas
					},
					["provider"] = { "n", 116880 },	-- Kor'vas Bloodthorn
					["coord"] = { 52.0, 19.6, LEGION_DALARAN },
					["classes"] = {
						DEATHKNIGHT,	-- Blood
						DEMONHUNTER,	-- Vengeance
						DRUID,			-- Guardian
						MONK,			-- Brewmaster
						PALADIN,		-- Protection
						WARRIOR,		-- Protection
					},
				}),
				q(46744, {	-- Greater Power for Greater Threats
					["qgs"] = {
						90417,	-- Archmage Khadgar
						116302,	-- Archmage Khadgar
					},
					["isBreadcrumb"] = true,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(47023, {	-- Guardian: Aid of the Illidari
					["sourceQuests"] = {
						47030,	-- Legion Threat: Dalaran Infiltration
						44821,	-- In Dire Need
					},
					["qgs"] = {
						90431,	-- Archmage Ansirem Runeweaver
						115466,	-- Archmage Ansirem Runeweaver
					},
					["classes"] = { DRUID },
					["lvl"] = 110,
				}),
				q(47043, {	-- Havoc: The Thieving Apprentice
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47032,	-- Legion Threat: Azshara
					},
					["qgs"] = {
						115467,	-- Archmage Kalec
						105081,	-- Archmage Kalec
					},
					["coords"] = {
						{ 22.9, 41.1, LEGION_DALARAN },
						{ 28.7, 49.9, LEGION_DALARAN },
					},
					["classes"] = { DEMONHUNTER },
					["lvl"] = 110,
				}),
				q(40755, {	-- Hiding in the Stacks
					["sourceQuests"] = { 42970 },	-- The Diamond King
					["provider"] = { "n", 101547 },	-- Archmage Khadgar
					["coord"] = { 47.0, 75.0, DEADWIND_PASS },
					["maps"] = {
						794,	-- Karazhan
						795,	-- Karazhan
						796,	-- Karazhan
						797,	-- Karazhan
					},
					["groups"] = {
						o(253980, {	-- Notable Antiquities of Ancient Azeroth
							["coord"] = { 75.6, 22.7, 797 },	-- Karazhan
							["groups"] = { i(140635) },	-- Notable Antiquities of Ancient Azeroth (QI!)
						}),
						--
						i(139905),	-- Gloves of thee Arcane Purge
						i(139934),	-- Handguards of Demonsbane
						i(139965),	-- Grips of the Fel Destroyer
						i(139997),	-- Gauntlets of Legion Devastation
					},
				}),
				q(47006, {	-- Holy: The Bradensbrook Investigation
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47027,	-- Legion Threat: Val'sharah
					},
					["qgs"] = {
						90418,	-- Archmage Modera
						115465,	-- Archmage Modera
					},
					["coords"] = {
						{ 23.4, 39.6, LEGION_DALARAN },
						{ 28.5, 48.9, LEGION_DALARAN },
					},
					["classes"] = { PALADIN },
				}),
				q(46078, {	-- Holy: The Bradensbrook Investigation
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47027,	-- Legion Threat: Val'sharah
					},
					["qgs"] = {
						90418,	-- Archmage Modera
						115465,	-- Archmage Modera
					},
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = { PRIEST },
				}),
				q(44821, {	-- In Dire Need
					["sourceQuests"] = { 44782 },	-- Away From Prying Eyes
					["provider"] = { "n", 115465 },	-- Archmage Modera
					["coord"] = { 22.5, 39.2, LEGION_DALARAN },
				}),
				q(44663, {	-- In the Blink of an Eye
					["sourceQuests"] = {
						44120,	-- Illidari Allies (A)
						44473,	-- A Weapon of the Alliance (A)
						41002,	-- A Weapon of the Horde (h)
						40605,	-- Keep Your Friends Close (H)
					},
					["qgs"] = {
						101004,	-- Elerion Bladedancer (A)
						95234,	-- Elthyn Da'rai (H)
					},
					["coords"] = {
						{ 52.6, 56.2, ORGRIMMAR },
						{ 40.4, 77.8, STORMWIND_CITY },
					},
					["groups"] = {
						i(140192),	-- Dalaran Heartstone (TOY!)
						i(143785),	-- Tome of the Tranquil Mind
					},
				}),
				q(44547, {	-- Isle Hopping
					["description"] = "This quest is offered after placing your 2nd Pillar of Creation in Dalaran after the NPC dialogue has finished, if you have not quested in Legion zones other than the ones you've chosen previously.\n\nIf your Scouting Map is gone and/or you cannot complete this quest, you can Party Sync to pick up the quest 'Stormheim' from Archmage Landon at 30,40 in Stormheim to fulfil the quest requirements.",
					["sourceQuests"] = {
						42454,	-- The Hammer of Khaz'goroth
						43349,	-- The Aegis of Aggramar
						42213,	-- Eye of Azshara: The Tidestone of Golganneth
						40890,	-- The Tears of Elune
						45420,	-- The Nighthold: The Eye of Aman'Thul
					},
					["sourceQuestNumRequired"] = 2,
					["lockCriteria"] = { 3,
						"questID", 42454,	-- The Hammer of Khaz'goroth
						"questID", 43349,	-- The Aegis of Aggramar
						"questID", 42213,	-- Eye of Azshara: The Tidestone of Golganneth
						"questID", 40890,	-- The Tears of Elune
						"questID", 45420,	-- The Nighthold: The Eye of Aman'Thul
					},
					["isBreadcrumb"] = true,
				}),
				q(45906, {	-- Jarod's Gift
					["sourceQuests"] = { 46035 },	-- End of the Risen Threat
					["provider"] = { "n", 90418 },	-- Archmage Modera
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
						["classes"] = {
							DRUID,		-- Restoration
							PALADIN,	-- Holy
							MONK,		-- Mistweaver
							PRIEST,		-- Holy
							SHAMAN,		-- Restoration
						},
					["u"] = REMOVED_FROM_GAME,	-- Mage Tower quest
				}),
				q(38907, {	-- Keepers of the Hammer
					["sourceQuests"] = { 39733 },	-- The Lone Mountain
					["provider"] = { "n", 97666 },	-- Warbrave Oro
					["coords"] = {
						{ 69.9, 43.8, LEGION_DALARAN },
						{ 36.0, 65.7, HIGHMOUNTAIN },
					},
				}),
				q(39985, {	-- Khadgar's Discovery
					["provider"] = { "n", 90417 },	-- Archmage Khadgar
					["coord"] = { 28.8, 48.4, LEGION_DALARAN },
					["isBreadcrumb"] = true,	-- for "Magic Message"
					["lvl"] = 110,
				}),
				q(45905, {	-- Kruul's Gift
					["sourceQuests"] = { 45416 },	-- The Highlord's Return
					["provider"] = { "n", 90431 },	-- Archmage Ansirem Runeweaver
					["coord"] = { 28.5, 49.5, LEGION_DALARAN },
					["classes"] = {
						DEATHKNIGHT,	-- Blood
						DEMONHUNTER,	-- Vengeance
						DRUID,			-- Guardian
						MONK,			-- Brewmaster
						PALADIN,		-- Protection
						WARRIOR,		-- Protection
					},
					["u"] = REMOVED_FROM_GAME,	-- Mage Tower quest
				}),
				q(39986, {	-- Magic Message
					["sourceQuests"] = {
						39985,	-- Khadgar's Discovery
						44555,	-- Khadgar's Discovery
					},
					["provider"] = { "n", 90417 },	-- Archmage Khadgar
					["coord"] = { 28.8, 48.4, LEGION_DALARAN },
					["lvl"] = 110,
				}),
				q(47039, {	-- Marksmanship: The Twisted Twin
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47034,	-- Legion Threat: The Necromancer
					},
					["qgs"] = {
						90463,	-- Archmage Karlain
						115468,	-- Archmage Karlain
					},
					["coords"] = {
						{ 28.8, 48.6, LEGION_DALARAN },
						{ 23.4, 39.8, LEGION_DALARAN },
					},
					["classes"] = { HUNTER },
					["lvl"] = 110,
				}),
				q(48376, {	-- Mass Primal Obliterum
					["sourceQuests"] = { 41778 },	-- Firing Up the Forge
					["provider"] = { "n", 114719 },	-- Trader Caelen
					["coord"] = { 42.3, 27.0, LEGION_DALARAN },
					["timeline"] = { REMOVED_9_1_0 },
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(44549, {	-- Master of the Isles
					["description"] = "This quest is offered after placing your 4th Pillar of Creation in Dalaran after the NPC dialogue has finished, if you have not quested in Legion zones other than the ones you've chosen previously.\n\nIf your Scouting Map is gone and/or you cannot complete this quest, you can Party Sync to pick up the quest 'Stormheim' from Archmage Landon at 30,40 in Stormheim to fulfil the quest requirements.",
					["sourceQuests"] = {
						42454,	-- The Hammer of Khaz'goroth
						43349,	-- The Aegis of Aggramar
						42213,	-- Eye of Azshara: The Tidestone of Golganneth
						40890,	-- The Tears of Elune
						45420,	-- The Nighthold: The Eye of Aman'Thul
					},
					["sourceQuestNumRequired"] = 4,
					["lockCriteria"] = { 5,
						"questID", 42454,	-- The Hammer of Khaz'goroth
						"questID", 43349,	-- The Aegis of Aggramar
						"questID", 42213,	-- Eye of Azshara: The Tidestone of Golganneth
						"questID", 40890,	-- The Tears of Elune
						"questID", 45420,	-- The Nighthold: The Eye of Aman'Thul
					},
					["isBreadcrumb"] = true,
				}),
				q(45185, {	-- Message from the Shadows
					["sourceQuests"] = {
						47041,	-- Affliction: The Twisted Twin
						47037,	-- Balance: The Twisted Twin
						45182,	-- Frost: The Twisted Twin, Mage
						47039,	-- Marksmanship: The Twisted Twin
						47042,	-- Shadow: The Twisted Twin
					},
					["provider"] = { "n", 116175 },	-- Karam Magespear
					["coord"] = { 49.6, 39.4, LEGION_DALARAN },
					["classes"] = {
						DRUID,		-- Balance
						HUNTER,		-- Marksmanship
						MAGE,		-- Frost
						PRIEST,		-- Shadow
						WARLOCK,	-- Affliction
					},
					["groups"] = {
						o(266619, {	-- A Mysterious Note
							["coord"] = { 47.0, 39.5, LEGION_DALARAN },
							["groups"] = { i(143494) },	-- A Mysterious Note (QI!)
						}),
					},
				}),
				q(47005, {	-- Mistweaver: The Bradensbrook Investigation
					["sourceQuests"] = {
						47027,	-- Legion Threat: Val'sharah
						44821,	-- In Dire Need
					},
					["qgs"] = {
						90418,	-- Archmage Modera
						115465,	-- Archmage Modera
					},
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = { MONK },
				}),
				q(45909, {	-- Navarrogg's Gift
					["sourceQuests"] = { 45627 },	-- Feltotem's Fall
					["provider"] = { "n", 90418 },	-- Archmage Modera
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = {
						HUNTER,		-- Beast Mastery
						MONK,		-- Windwalker
						PRIEST,		-- Discipline
						WARLOCK,	-- Destruction
					},
					["u"] = REMOVED_FROM_GAME,	-- Mage Tower quest
				}),
				q(47058, {	-- Outlaw: The Folly of Levia Laurence
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47035,	-- Legion Threat: The Missing Mage
					},
					["qgs"] = {
						90418,	-- Archmage Modera
						115465,	-- Archmage Modera
					},
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = { ROGUE },
				}),
				q(44545, {	-- Pressing the Assault
					["description"] = "This quest is offered after placing your 1st Pillar of Creation in Dalaran after the NPC dialogue has finished, if you have not quested in Legion zones other than the one you've chosen previously.\n\nIf your Scouting Map is gone and/or you cannot complete this quest, you can Party Sync to pick up the quest 'Stormheim' from Archmage Landon at 30,40 in Stormheim to fulfil the quest requirements.",
					["sourceQuests"] = {
						42454,	-- The Hammer of Khaz'goroth
						43349,	-- The Aegis of Aggramar
						42213,	-- Eye of Azshara: The Tidestone of Golganneth
						40890,	-- The Tears of Elune
						45420,	-- The Nighthold: The Eye of Aman'Thul
					},
					["sourceQuestNumRequired"] = 1,
					["lockCriteria"] = { 2,
						"questID", 42454,	-- The Hammer of Khaz'goroth
						"questID", 43349,	-- The Aegis of Aggramar
						"questID", 42213,	-- Eye of Azshara: The Tidestone of Golganneth
						"questID", 40890,	-- The Tears of Elune
						"questID", 45420,	-- The Nighthold: The Eye of Aman'Thul
					},
					["isBreadcrumb"] = true,
				}),
				q(48375, {	-- Primal Obliterum
					["sourceQuests"] = { 41778 },	-- Firing Up the Forge
					["provider"] = { "n", 114719 },	-- Trader Caelen
					["coord"] = { 42.3, 27.0, LEGION_DALARAN },
					["timeline"] = { REMOVED_9_1_0 },
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(47022, {	-- Protection: Aid of the Illidari
					["sourceQuests"] = {
						47030,	-- Legion Threat: Dalaran Infiltration
						44821,	-- In Dire Need
					},
					["qgs"] = {
						90431,	-- Archmage Ansirem Runeweaver
						115466,	-- Archmage Ansirem Runeweaver
					},
					["coords"] = {
						{ 22.8, 40.2, LEGION_DALARAN },
						{ 28.5, 49.5, LEGION_DALARAN },
					},
					["classes"] = { PALADIN },
				}),
				q(45412, {	-- Protection: Aid of the Illidari (Warrior) -- this is still obtainable, confirmed in 8.3
					["sourceQuests"] = {
						47030,	-- Legion Threat: Dalaran Inflitration
						44821,	-- In Dire Need
					},
					["qgs"] = {
						90431,	-- Archmage Ansirem Runeweaver
						115466,	-- Archmage Ansirem Runeweaver
					},
					["coords"] = {
						{ 22.8, 40.2, LEGION_DALARAN },
						{ 28.5, 49.5, LEGION_DALARAN },
					},
					["classes"] = { WARRIOR },
				}),
				q(45910, {	-- Raest's Gift
					["sourceQuests"] = { 46127 },	-- Thwarting the Twins
					["provider"] = { "n", 90463 },	-- Archmage Karlain
					["races"] = ALLIANCE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(47004, {	-- Restoration: The Bradensbrook Investigation (Druid version)
					["sourceQuests"] = {
						47027,	-- Legion Threat: Val'sharah
						44821,	-- In Dire Need
					},
					["qgs"] = {
						90418,	-- Archmage Modera
						115465,	-- Archmage Modera
					},
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = { DRUID },
				}),
				q(47003, {	-- Restoration: The Bradensbrook Investigation (Shaman version)
					["sourceQuests"] = {
						47027,	-- Legion Threat: Val'sharah
						44821,	-- In Dire Need
					},
					["qgs"] = {
						90418,	-- Archmage Modera
						115465,	-- Archmage Modera
					},
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = { SHAMAN },
				}),
				q(47052, {	-- Retribution: Fate of the Tideskorn
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47033,	-- Legion Threat: Suramar
					},
					["qgs"] = {
						90417,	-- Archmage Khadgar
						115464,	-- Archmage Khadgar
					},
					["coords"] = {
						{ 22.6, 39.2, LEGION_DALARAN },
						{ 28.8, 48.6, LEGION_DALARAN },
					},
					["classes"] = { PALADIN },
					["lvl"] = 110,
					["groups"] = { i(144457) },	-- Scrolls of the Faldrottin (QI!)
				}),
				q(45238, {	-- Return to Karazhan: Cubic Cynosure
					["sourceQuests"] = { 45160 },	-- Cubic Currents
					["provider"] = { "n", 93538 },	-- Dariness the Learned
				}),
				q(44548, {	-- Scouring What Remains
					["description"] = "This quest is offered after placing your 3rd Pillar of Creation in Dalaran after the NPC dialogue has finished, if you have not quested in Legion zones other than the ones you've chosen previously.\n\nIf your Scouting Map is gone and/or you cannot complete this quest, you can Party Sync to pick up the quest 'Stormheim' from Archmage Landon at 30,40 in Stormheim to fulfil the quest requirements.",
					["sourceQuests"] = {
						42454,	-- The Hammer of Khaz'goroth
						43349,	-- The Aegis of Aggramar
						42213,	-- Eye of Azshara: The Tidestone of Golganneth
						40890,	-- The Tears of Elune
						45420,	-- The Nighthold: The Eye of Aman'Thul
					},
					["sourceQuestNumRequired"] = 3,
					["lockCriteria"] = { 4,
						"questID", 42454,	-- The Hammer of Khaz'goroth
						"questID", 43349,	-- The Aegis of Aggramar
						"questID", 42213,	-- Eye of Azshara: The Tidestone of Golganneth
						"questID", 40890,	-- The Tears of Elune
						"questID", 45420,	-- The Nighthold: The Eye of Aman'Thul
					},
					["isBreadcrumb"] = true,
				}),
				q(47864, {	-- Sealing Fate: Additional Marks of Honor
					["provider"] = { "n", 111243 },	-- Archmage Lan'Dalock
					["coord"] = { 57.2, 67.5, LEGION_DALARAN },
					["isWeekly"] = true,
				}),
				q(43894, {	-- Sealing Fate: Extraneous Order Resources
					["provider"] = { "n", 111243 },	-- Archmage Lan'Dalock
					["coord"] = { 57.2, 67.5, LEGION_DALARAN },
					["isWeekly"] = true,
				}),
				q(43895, {	-- Sealing Fate: Gold
					["provider"] = { "n", 111243 },	-- Archmage Lan'Dalock
					["coord"] = { 57.2, 67.5, LEGION_DALARAN },
					["isWeekly"] = true,
				}),
				q(43897, {	-- Sealing Fate: Immense Fortune of Gold
					["provider"] = { "n", 111243 },	-- Archmage Lan'Dalock
					["coord"] = { 57.2, 67.5, LEGION_DALARAN },
					["isWeekly"] = true,
				}),
				q(47851, {	-- Sealing Fate: Marks of Honor
					["provider"] = { "n", 111243 },	-- Archmage Lan'Dalock
					["coord"] = { 57.2, 67.5, LEGION_DALARAN },
					["isWeekly"] = true,
				}),
				q(43892, {	-- Sealing Fate: Order Resources
					["provider"] = { "n", 111243 },	-- Archmage Lan'Dalock
					["coord"] = { 57.2, 67.5, LEGION_DALARAN },
					["isWeekly"] = true,
				}),
				q(43896, {	-- Sealing Fate: Piles of Gold
					["provider"] = { "n", 111243 },	-- Archmage Lan'Dalock
					["coord"] = { 57.2, 67.5, LEGION_DALARAN },
					["isWeekly"] = true,
				}),
				q(47865, {	-- Sealing Fate: Piles of Marks of Honor
					["provider"] = { "n", 111243 },	-- Archmage Lan'Dalock
					["coord"] = { 57.2, 67.5, LEGION_DALARAN },
					["isWeekly"] = true,
				}),
				q(43893, {	-- Sealing Fate: Stashed Order Resources
					["provider"] = { "n", 111243 },	-- Archmage Lan'Dalock
					["coord"] = { 57.2, 67.5, LEGION_DALARAN },
					["isWeekly"] = true,
				}),
				q(45187, {	-- Secrets in the Underbelly
					["sourceQuests"] = { 45185 },	-- Message from the Shadows
					["provider"] = { "n", 116175 },	-- Karam Magespear
					["coord"] = { 49.6, 39.4, LEGION_DALARAN },
					["classes"] = {
						DRUID,		-- Balance
						HUNTER,		-- Marksmanship
						MAGE,		-- Frost
						PRIEST,		-- Shadow
						WARLOCK,	-- Affliction
					},
					["lvl"] = 45,
					["groups"] = { i(143496) },	-- Nethersworn Manifesto (QI!)
				}),
				q(47042, {	-- Shadow: The Twisted Twin
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47034,	-- Legion Threat: The Necromancer
					},
					["qgs"] = {
						90463,	-- Archmage Karlain
						115468,	-- Archmage Karlain
					},
					["classes"] = { PRIEST },
					["lvl"] = 110,
				}),
				q(44411, {	-- Strange Humming Crystal
					["provider"] = { "i", 141349 },	-- Strange Humming Crystal
				}),
				q(47048, {	-- Subtlety: The Thieving Apprentice
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47032,	-- Legion Threat: Azshara
					},
					["qgs"] = {
						115467,	-- Archmage Kalec
						105081,	-- Archmage Kalec
					},
					["coord"] = { 28.7, 49.9, LEGION_DALARAN },
					["classes"] = { ROGUE },
				}),
				q(47047, {	-- Survival: The Thieving Apprentice
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47032,	-- Legion Threat: Azshara
					},
					["qgs"] = {
						115467,	-- Archmage Kalec
						105081,	-- Archmage Kalec
					},
					["coords"] = {
						{ 23.0, 40.6, LEGION_DALARAN },
						{ 29.0, 49.6, LEGION_DALARAN },
					},
					["classes"] = { HUNTER },
					["lvl"] = 110,
				}),
				q(45916, {	-- The Acolyte Imperiled
					["sourceQuests"] = { 46327 },	-- Bargaining With Shadows
					["provider"] = { "n", 116714 },	-- Ritssyn Flamescowl
					["coord"] = { 52.7, 59.2, 629 },
					["classes"] = {
						DRUID,			-- Feral
						DEATHKNIGHT,	-- Unholy
						MAGE,			-- Fire
						ROGUE,			-- Outlaw
						SHAMAN,			-- Elemental
						WARRIOR,		-- Fury
					},
					["lvl"] = 110,
				}),
				q(49474, {	-- The Cursed Shard
					["provider"] = { "i", 154880 },	-- Cursed Shard
					["timeline"] = {
						ADDED_7_3_5,
						REMOVED_8_0_1
					},
					["isBreadcrumb"] = true,
					["groups"] = {
						i(154880),	-- Cursed Shard (QI!)
					},
				}),
				q(42970, {	-- The Diamond King
					["sourceQuests"] = { 40717, 40718 },	-- Calling of the Council [A/H]
					["provider"] = { "n", 113655 },	-- Brann Bronzebeard
					["coords"] = {
						{ 30.7, 49.0, LEGION_DALARAN },
						{ 41.2, 74.8, DEADWIND_PASS },
					},
				}),
				q(45904, {	-- The God-Queen's Gift
					["provider"] = { "n", 90417 },	-- Archmage Khadgar
					["classes"] = { PALADIN, ROGUE, SHAMAN, MAGE, WARLOCK },
					["u"] = REMOVED_FROM_GAME,
				}),
				q(48506, {	-- The Hand of Fate (A)
					["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
					["provider"] = { "n", 90417 },	-- Archmage Khadgar
					["coord"] = { 28.8, 48.4, LEGION_DALARAN },
					["lvl"] = 110,
				}),
				q(48507, {	-- The Hand of Fate (H)
					["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
					["provider"] = { "n", 90417 },	-- Archmage Khadgar
					["coord"] = { 28.8, 48.4, LEGION_DALARAN },
					["lvl"] = 110,
				}),
				q(47221, {	-- The Hand of Fate (A)
					["u"] = REMOVED_FROM_GAME,	-- old version that used to be automatically provided
				}),
				q(47835, {	-- The Hand of Fate (H)
					["u"] = REMOVED_FROM_GAME,	-- old version that used to be automatically provided
				}),
				q(45902, {	-- The Imp Mother's Gift
					["sourceQuests"] = { 46065 },	-- An Impossible Foe
					["provider"] = { "n", 90418 },	-- Archmage Modera
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = {
						DEATHKNIGHT,	-- Unholy
						DRUID,			-- Feral
						MAGE,			-- Fire
						ROGUE,			-- Outlaw
						SHAMAN,			-- Elemental
						WARRIOR,		-- Fury
					},
					["u"] = REMOVED_FROM_GAME,	-- Mage Tower quest
				}),
				q(39733, {	-- The Lone Mountain -- granted by order hall scouting map
					["isBreadcrumb"] = true,
				}),
				q(47793, {	-- The Spoiled Sample
					["u"] = REMOVED_FROM_GAME,
				}),
				q(38307, {	-- The Warchief Beckons
					["sourceQuests"] = {
						39864,	-- Stormheim
						44701,	-- Stormheim
					},
					["provider"] = { "n", 96683 },	-- Nathanos Blightcaller
					["coord"] = { 29.4, 47.1, LEGION_DALARAN },
					["races"] = HORDE_ONLY,
				}),
				q(45188, {	-- The Wisdom of the Council
					["sourceQuests"] = { 45187 },	-- Secrets in the Underbelly
					["provider"] = { "n", 116308 },	-- Karam Magespear
					["coords"] = {
						{ 49.6, 39.4, LEGION_DALARAN },
						{ 60.7, 45.4, LEGION_THE_UNDERBELLY },
					},
					["classes"] = {
						DRUID,		-- Balance
						HUNTER,		-- Marksmanship
						MAGE,		-- Frost
						PRIEST,		-- Shadow
						WARLOCK,	-- Affliction
					},
					["lvl"] = 45,
					["groups"] = { i(143496) },	-- Nethersworn Manifesto (QI!)
				}),
				q(43331, {	-- Time to Collect
					["sourceQuests"] = { 42483 },	-- Put It All on Red
					["provider"] = { "n", 110018 },	-- Gazrix Gearlock <Steamwheedle Cartel>
					["coord"] = { 50.2, 23.0, LEGION_DALARAN },
					["lvl"] = 110,
					["groups"] = {
						i(139276),	-- Sixtriggers' Key (QI!)
						--
						i(140601, {	-- Sixtrigger Resource Crate
							i(133815),	-- Recipe: Spiced Rib Roast [Rank 1] (RECIPE!)
							i(140600),	-- Sixtrigger Lucky Ring
						}),
						i(140599),	-- Pretty Silk Gloves
						i(140597),	-- Rax's Piloting Handgrips
						i(140596),	-- Reinforced Mook Handguards
						i(140598),	-- Snaggle's Best Gloves
						i(140592),	-- Mook Battlepants
						i(140593),	-- Rax's Polished Greaves
						i(140595),	-- Rax's Silk Pajama Bottoms
						i(140594),	-- Snaggle's Favorite Pants
					},
				}),
				q(50432, {	-- Titanic Innovation
					["provider"] = { "n", 106655 },	-- Arcanomancer Vridiel
					["coord"] = { 44.9, 28.8, LEGION_DALARAN },
					["lvl"] = 110,
				}),
				q(46810, {	-- To the Forge It Goes...
					["races"] = ALLIANCE_ONLY,
					["u"] = REMOVED_FROM_GAME,	-- PVP wins no longer reward the quest item
				}),
				q(46946, {	-- To the Forge It Goes...
					["races"] = HORDE_ONLY,
					["u"] = REMOVED_FROM_GAME,	-- PVP wins no longer reward the quest item
				}),
				q(39987, {	-- Trail of Echoes
					["sourceQuests"] = { 39986 },	-- Magic Message
					["qgs"] = {
						90417,	-- Archmage Khadgar
						91172,	-- Archmage Khadgar
					},
					["coords"] = {
						{ 28.4, 48.3, LEGION_DALARAN },
						{ 70.6, 43.8, LEGION_DALARAN },
					},
					["groups"] = { i(131931) },	-- Khadgar's Wand (QI!)
				}),
				q(47057, {	-- Unholy: The Folly of Levia Laurence
					["sourceQuests"] = {
						44821,	-- In Dire Need
						47035,	-- Legion Threat: The Missing Mage
					},
					["qgs"] = {
						90418,	-- Archmage Modera
						115465,	-- Archmage Modera
					},
					["coords"] = {
						{ 23.4, 39.6, LEGION_DALARAN },
						{ 28.5, 48.9, LEGION_DALARAN },
					},
					["classes"] = { DEATHKNIGHT },
				}),
				q(43341, {	-- Uniting the Isles
					["provider"] = { "n", 90417 },	-- Archmage Khadgar
					["groups"] = {
						i(141605, {	-- Flight Master Whistle	// (TOY!) as of 11.2.5
							["modID"] = 11,
						}),
					},
				}),
				q(45727, {	-- Uniting the Isles
					["provider"] = { "n", 90417 },	-- Archmage Khadgar
					["coord"] = { 28.5, 48.3, LEGION_DALARAN },
					["groups"] = {
						i(141605, {	-- Flight Master Whistle	// (TOY!) as of 11.2.5
							["modID"] = 11,
						}),
					},
				}),
				q(47790, {	-- Unsettled Power
					["u"] = REMOVED_FROM_GAME,
				}),
				q(47791, {	-- Unsettled Power
					["u"] = REMOVED_FROM_GAME,
				}),
				q(44115, {	-- Welcome to Legion!
					["u"] = REMOVED_FROM_GAME,
				}),
				q(46314, {	-- Vengeance: Seeking Kor'vas
					["sourceQuests"] = {
						47030,	-- Legion Threat: Dalaran Infiltration
						44821,	-- In Dire Need
					},
					["qgs"] = {
						90431,	-- Archmage Ansirem Runeweaver
						115466,	-- Archmage Ansirem Runeweaver
					},
					["coords"] = {
						{ 22.5, 40.6, LEGION_DALARAN },
						{ 28.5, 49.5, LEGION_DALARAN },
					},
					["classes"] = { DEMONHUNTER },
					["lvl"] = 110,
				}),
				q(45190, {	-- Where it's Thinnest
					["sourceQuests"] = { 45188 },	-- The Wisdom of the Council
					["provider"] = { "n", 90463 },	-- Archmage Karlain
					["coord"] = { 28.8, 48.6, LEGION_DALARAN },
					["classes"] = {
						DRUID,		-- Balance
						HUNTER,		-- Marksmanship
						MAGE,		-- Frost
						PRIEST,		-- Shadow
						WARLOCK,	-- Affliction
					},
					["lvl"] = 110,
				}),
				q(47330, {	-- Whispers of a Frightened World
					["provider"] = { "n", 90417 },	-- Archmage Khadgar
					["coord"] = { 28.8, 48.4, LEGION_DALARAN },
					["maps"] = { 888 },	-- Hall of Communion
					["lvl"] = 110,
				--	unsure if there are prerequisites for this quest.
				}),
				q(46206, {	-- Whispers of a Frightened World
					["u"] = REMOVED_FROM_GAME,	-- version that used to be automatically given?
				}),
				q(47019, {	-- Windwalker: Rumblings Near Feltotem
					["sourceQuests"] = {
						47031,	-- Legion Threat: Highmountain
						44821,	-- In Dire Need
					},
					["qgs"] = {
						90418,	-- Archmage Modera
						115465,	-- Archmage Modera
					},
					["coord"] = { 28.5, 48.9, LEGION_DALARAN },
					["classes"] = { MONK },
				}),
				q(45908, {	-- Xylem's Gift
					["provider"] = { "n", 105081 },	-- Archmage Kalec
					["u"] = REMOVED_FROM_GAME,
				}),
			}),
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
		m(BROKEN_ISLES, {
			m(LEGION_DALARAN, {
				q(46955),	-- Akazamzarak Silenced
				q(40340),	-- Alard Schmied Greeting Seen - "Well, I'll be... the Ashbringer. ...' in Dalaran
				n(QUESTS, {
					q(45518),	-- First Aid Shop Searched - triggered after searching first aid shop during "Confirming Suspicions" (questID 45414)
					q(47282),	-- First Aid Shop Searched - triggered after searching first aid shop during "Confirming Suspicions" (questID 45414)
					q(46321),	-- Krasus Landing Searched - triggered when finding Velen during "Confirming Suspicions" (questID 45414)
					q(46312),	-- Triggered after completing 'Where it's Thinnest' (questID 45190)
					q(46835),	-- Whispers of a Frightened World Tracking - triggers while doing "Whispers of a Frightened World" (questID 46206)
					q(41694),	-- World Quests Available - triggers when turning in "Uniting the Isles" (questID 45727)
				}),
			}),
		}),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0 } }, {
		m(BROKEN_ISLES, {
			m(LEGION_DALARAN, {
				q(58658),	-- Selecting an option to hide Vulpera hyena mount canopy/sunshade
			}),
		}),
	})),
});
