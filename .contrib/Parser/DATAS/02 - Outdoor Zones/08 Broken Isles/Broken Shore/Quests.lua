---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(BROKEN_ISLES, {
	m(BROKEN_SHORE, {
		n(QUESTS, {
			q(46268, {	-- A Found Memento
				["provider"] = { "o", 268478 },	-- Battered Trinket
				["timeline"] = { ADDED_7_2_0 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(47097, {	-- A Walk to Remember
				["sourceQuests"] = { 47202 },	-- A Personal Message
				["provider"] = { "n", 121224 },	-- Anduin Wrynn
				["coord"] = { 41.4, 59.4, BROKEN_SHORE },
				["timeline"] = { ADDED_7_2_0 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(46832, {	-- Aalgen Point
				["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["coord"] = { 44.4, 63.0, BROKEN_SHORE },
			}),
			q(46245, {	-- Begin Construction
				["sourceQuests"] = { 46286 },	-- Legionfall Supplies
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["coord"] = { 44.4, 63.0, BROKEN_SHORE },
			}),
			q(46904, {	-- Boon of the Command Center (Heavily Augmented)
				["sourceQuests"] = { 46773 },	-- The Command Center
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["coord"] = { 44.4, 63.1, BROKEN_SHORE },
				["repeatable"] = true,	-- technically isOccasional, lol
			}),
			q(46998, {	-- Boon of the Command Center (War Effort)
				["sourceQuests"] = { 46773 },	-- The Command Center
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["coord"] = { 44.4, 63.1, BROKEN_SHORE },
				["repeatable"] = true,	-- technically isOccasional, lol
			}),
			q(46999, {	-- Boon of the Command Center (Well Prepared)
				["sourceQuests"] = { 46773 },	-- The Command Center
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["coord"] = { 44.4, 63.1, BROKEN_SHORE },
				["repeatable"] = true,	-- technically isOccasional, lol
			}),
			q(46997, {	-- Boon of the Command Center (Worthy Champions)
				["sourceQuests"] = { 46773 },	-- The Command Center
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["coord"] = { 44.4, 63.1, BROKEN_SHORE },
				["repeatable"] = true,	-- technically isOccasional, lol
			}),
			q(47007, {	-- Boon of the Mage Tower
				["sourceQuest"] = 46772,	-- The Mage Tower
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
				["repeatable"] = true,
			}),
			q(47008, {	-- Boon of the Mage Tower
				["sourceQuest"] = 46772,	-- The Mage Tower
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
				["repeatable"] = true,
			}),
			q(47009, {	-- Boon of the Mage Tower
				["sourceQuest"] = 46772,	-- The Mage Tower
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
				["repeatable"] = true,
			}),
			q(47010, {	-- Boon of the Mage Tower
				["sourceQuest"] = 46772,	-- The Mage Tower
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
				["repeatable"] = true,
			}),
			q(47012, {	-- Boon of the Nether Disruptor
				["sourceQuest"] = 46774,	-- The Nether Disruptor
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
				["repeatable"] = true,
			}),
			q(47014, {	-- Boon of the Nether Disruptor
				["sourceQuest"] = 46774,	-- The Nether Disruptor
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
				["repeatable"] = true,
			}),
			q(47015, {	-- Boon of the Nether Disruptor
				["sourceQuest"] = 46774,	-- The Nether Disruptor
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
				["repeatable"] = true,
			}),
			q(47016, {	-- Boon of the Nether Disruptor
				["sourceQuest"] = 46774,	-- The Nether Disruptor
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
				["repeatable"] = true,
			}),
			q(46244, {	-- Cathedral of Eternal Night: Altar of the Aegis
				["sourceQuests"] = { 46286 },	-- Legionfall Supplies
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
				["groups"] = {
					i(146932),	-- Condensed Storm's Fury
					i(146926),	-- Fel Command Beacon
					i(146928),	-- Heat Absorbing Prism
					i(146933),	-- Highborne Martyr's Blood
					i(146927),	-- Inferno Oil
					i(146925),	-- Mature Morrowsprout
					i(146931),	-- Mephistroth's Rib
					i(146929),	-- Moonstone Figurine
					i(146930),	-- Pure Arcane Powder
					i(146934),	-- Untouched Holy Candle
				},
			}),
			q(46249, {	-- Championing Our Cause
				["sourceQuests"] = { 46250 },	-- Take Out the Head
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
			}),
			q(47137, {	-- Champions of Legionfall
				["description"] = "In addition to the prerequisite quests listed, you must complete your class's Order Hall Campaign to pick up this quest.",
				["sourceQuests"] = {
					-- #IF AFTER 9.1.5
					46734,	-- Assault on Broken Shore
					-- #ELSE
					46247,	-- Defending Broken Isles
					-- #ENDIF
				},
				["provider"] = { "n", 116576 },	-- Maiev Shadowsong
				["coord"] = { 44.4, 63.4, BROKEN_SHORE },
			}),
			q(46247, {	-- Defending Broken Isles
				["sourceQuests"] = { 46286 },	-- Legionfall Supplies
				["provider"] = { "n", 116576 },	-- Maiev Shadowsong
				["coord"] = { 44.4, 63.4, BROKEN_SHORE },
			}),
			q(46809, {	-- Delivering Lost Knowledge
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.7, 63.2, BROKEN_SHORE },
				["classes"] = { DEATHKNIGHT },
				["u"] = REMOVED_FROM_GAME,
			}),
			q(47069, {	-- Delivering Lost Knowledge
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.7, 63.2, BROKEN_SHORE },
				["classes"] = { MONK },
				["u"] = REMOVED_FROM_GAME,
			}),
			q(47070, {	-- Delivering Lost Knowledge
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.7, 63.2, BROKEN_SHORE },
				["classes"] = { MAGE },
				["u"] = REMOVED_FROM_GAME,
			}),
			q(47071, {	-- Delivering Lost Knowledge
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.7, 63.2, BROKEN_SHORE },
				["classes"] = { PALADIN },
				["u"] = REMOVED_FROM_GAME,
			}),
			q(47072, {	-- Delivering Lost Knowledge
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.7, 63.2, BROKEN_SHORE },
				["classes"] = { WARRIOR },
				["u"] = REMOVED_FROM_GAME,
			}),
			q(47073, {	-- Delivering Lost Knowledge
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.7, 63.2, BROKEN_SHORE },
				["classes"] = { HUNTER },
				["u"] = REMOVED_FROM_GAME,
			}),
			q(47074, {	-- Delivering Lost Knowledge
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.7, 63.2, BROKEN_SHORE },
				["classes"] = { SHAMAN },
				["u"] = REMOVED_FROM_GAME,
			}),
			q(47075, {	-- Delivering Lost Knowledge
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.7, 63.2, BROKEN_SHORE },
				["classes"] = { DRUID },
				["u"] = REMOVED_FROM_GAME,
			}),
			q(47076, {	-- Delivering Lost Knowledge
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.7, 63.2, BROKEN_SHORE },
				["classes"] = { WARLOCK },
				["u"] = REMOVED_FROM_GAME,
			}),
			q(47077, {	-- Delivering Lost Knowledge
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.7, 63.2, BROKEN_SHORE },
				["classes"] = { PRIEST },
				["u"] = REMOVED_FROM_GAME,
			}),
			q(47078, {	-- Delivering Lost Knowledge
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.7, 63.2, BROKEN_SHORE },
				["classes"] = { DEMONHUNTER },
				["u"] = REMOVED_FROM_GAME,
			}),
			q(47079, {	-- Delivering Lost Knowledge
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.7, 63.2, BROKEN_SHORE },
				["classes"] = { ROGUE },
				["u"] = REMOVED_FROM_GAME,
			}),
			q(47040, {	-- Fate Sealed
				["sourceQuest"] = 46774,	-- The Nether Disruptor
				["provider"] = { "n", 121137 },	-- Maggie "Slither" Masterson
				["coord"] = { 41.2, 64.4, BROKEN_SHORE },
				["repeatable"] = true,
			}),
			q(47045, {	-- Further Progress
				["sourceQuest"] = 46774,	-- The Nether Disruptor
				["provider"] = { "n", 121137 },	-- Maggie "Slither" Masterson
				["coord"] = { 41.2, 64.4, BROKEN_SHORE },
				["repeatable"] = true,
			}),
			q(46501, {	-- Grave Robbin'
				["sourceQuests"] = { 46499 },	-- Spiders, Huh?
				["provider"] = { "n", 119886 },	-- Excavator Karla
				["coord"] = { 39.6, 71.7, BROKEN_SHORE },
				["groups"] = {
					i(146956),	-- Promising Treasure Key (QI!)
					i(146664),	-- Finely-Jeweled Key
				},
			}),
			q(46252, {	-- Intolerable Infestation
				["sourceQuests"] = { 46248 },	-- Self-Fulfilling Prophecy
				["provider"] = { "n", 116576 },	-- Maiev Shadowsong
				["coord"] = { 44.4, 63.4, BROKEN_SHORE },
			}),
			q(46286, {	-- Legionfall Supplies
				["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["coord"] = { 44.4, 63.0, BROKEN_SHORE },
			}),
			q(47032, {	-- Legion Threat: Azshara
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
				["classes"] = {
					DEATHKNIGHT,	-- Frost
					DEMONHUNTER,	-- Havoc
					HUNTER,			-- Survival
					ROGUE,			-- Subtlety
					WARRIOR,		-- Arms
				},
				["isBreadcrumb"] = true,
				["DisablePartySync"] = true,
			}),
			q(47030, {	-- Legion Threat: Dalaran Infiltration
				["sourceQuests"] = { 44821 },	-- In Dire Need
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
				["classes"] = {
					DEATHKNIGHT,	-- Blood
					DEMONHUNTER,	-- Vengeance
					DRUID,			-- Guardian
					MONK,			-- Brewmaster
					PALADIN,		-- Protection
					WARRIOR,		-- Protection
				},
				["isBreadcrumb"] = true,
				["DisablePartySync"] = true,
			}),
			q(47031, {	-- Legion Threat: Highmountain
				["sourceQuests"] = { 44821 },	-- In Dire Need
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
				["classes"] = {
					HUNTER,		-- Beast Mastery
					MONK,		-- Windwalker
					PRIEST,		-- Discipline
					WARLOCK,	-- Destruction
				},
				["isBreadcrumb"] = true,
				["DisablePartySync"] = true,
			}),
			q(47033, {	-- Legion Threat: Suramar
				["sourceQuest"] = 44821,	-- In Dire Need
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.7, 63.2, BROKEN_SHORE },
				["classes"] = {
					MAGE,		-- Arcane
					PALADIN,	-- Retribution
					ROGUE,		-- Assassination
					SHAMAN,		-- Enhancement
					WARLOCK,	-- Demonology
				},
				["isBreadcrumb"] = true,
				["DisablePartySync"] = true,
			}),
			q(47035, {	-- Legion Threat: The Missing Mage
				["sourceQuest"] = 44821,	-- In Dire Need
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.7, 63.2, BROKEN_SHORE },
				["classes"] = {
					DEATHKNIGHT,	-- Unholy
					DRUID,			-- Feral
					MAGE,			-- Fire
					ROGUE,			-- Outlaw
					SHAMAN,			-- Elemental
					WARRIOR,		-- Fury
				},
				["isBreadcrumb"] = true,
				["DisablePartySync"] = true,
			}),
			q(47034, {	-- Legion Threat: The Necromancer
				["sourceQuest"] = 44821,	-- In Dire Need
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.7, 63.2, BROKEN_SHORE },
				["classes"] = {
					DRUID,		-- Balance
					HUNTER,		-- Marksmanship
					MAGE,		-- Frost
					PRIEST,		-- Shadow
					WARLOCK,	-- Affliction
				},
				["isBreadcrumb"] = true,
				["DisablePartySync"] = true,
			}),
			q(47027, {	-- Legion Threat: Val'sharah
				["sourceQuest"] = 44821,	-- In Dire Need
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
				["classes"] = {
					DRUID,		-- Restoration
					MONK,		-- Mistweaver
					PALADIN,	-- Holy
					PRIEST,		-- Holy
					SHAMAN,		-- Restoration
				},
				["isBreadcrumb"] = true,
				["DisablePartySync"] = true,
			}),
			q(47112, {	-- Lost Souls
				["sourceQuests"] = { 47097 },	-- A Walk to Remember
				["provider"] = { "n", 121226 },	-- Anduin Wrynn
				["coord"] = { 52.5, 48.4, BROKEN_SHORE },
				["timeline"] = { ADDED_7_2_0 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(47139, {	-- Mark of the Sentinax
				["sourceQuests"] = { 46251 },	-- Shard Times
				["provider"] = { "n", 117873 },	-- Illidan Stormrage
				["coord"] = { 44.6, 63.1, BROKEN_SHORE },
				["groups"] = { i(147582) },	-- Mark of the Sentinax (QI!)
			}),
			q(45193, {	-- One Step Behind
				["sourceQuests"] = { 45192 },	-- Runes of Rending
				["provider"] = { "n", 116175 },	-- Karam Magespear
				["classes"] = {
					DRUID,		-- Balance
					HUNTER,		-- Marksmanship
					MAGE,		-- Frost
					PRIEST,		-- Shadow
					WARLOCK,	-- Affliction
				},
			}),
			q(47017, {	-- Only the Best
				["provider"] = { "n", 121081 },	-- Merris Townsend
				["coord"] = { 43.6, 64.0, BROKEN_SHORE },
				["groups"] = {
					i(147432),	-- Champion Equipment
				},
			}),
			q(46253, {	-- Pillars of Creation
				["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
				["qgs"] = {
					116302,	-- Archmage Khadgar
					122799,	-- Archmage Khadgar
				},
				["coord"] = { 44.6, 63.1, BROKEN_SHORE },
			}),
			q(46769, {	-- Relieved of Their Valuables
				["sourceQuests"] = { 46252 },	-- Intolerable Infestation
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.6, 63.1, BROKEN_SHORE },
			}),
			q(45192, {	-- Runes of Rending
				["sourceQuests"] = { 45190 },	-- Where it's Thinnest
				["provider"] = { "n", 116175 },	-- Karam Magespear
				["coord"] = { 56.4, 27.2, BROKEN_SHORE },
				["classes"] = {
					DRUID,		-- Balance
					HUNTER,		-- Marksmanship
					MAGE,		-- Frost
					PRIEST,		-- Shadow
					WARLOCK,	-- Affliction
				},
			}),
			q(47067, {	-- Seeking Lost Knowledge
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
				["u"] = REMOVED_FROM_GAME,
			}),
			q(46248, {	-- Self-Fulfilling Prophecy
				["sourceQuests"] = { 47139 },	-- Mark of the Sentinax
				["provider"] = { "n", 120372 },	-- Prophet Velen
				["coord"] = { 44.4, 63.3, BROKEN_SHORE },
			}),
			q(46251, {	-- Shard Times
				["sourceQuests"] = { 47137 },	-- Champions of Legionfall
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
			-- TODO: could theoretically attach each class's champion recruitment to this, which would possibly make more sense?  DH's is 45391
			}),
			q(46510, {	-- Ship Graveyard
				["sourceQuests"] = { 46509 },	-- Tomb Raidering
				["provider"] = { "n", 119886 },	-- Excavator Karla
				["coord"] = { 39.6, 71.7, BROKEN_SHORE },
				["groups"] = {
					i(146958),	-- Wonderfully-Adorned Cloth (QI!)
					i(146663),	-- Soggy Tapestry
				},
			}),
			q(46499, {	-- Spiders, Huh?
				["sourceQuests"] = { 46734 },	-- Assault on Brokeen Shore
				["provider"] = { "n", 119886 },	-- Excavator Karla
				["coord"] = { 39.6, 71.7, BROKEN_SHORE },
				["groups"] = {
					i(146955),	-- Potentially Precious Gem (QI!)
				},
			}),
			q(46246, {	-- Strike Them Down
				["sourceQuests"] = { 46249 },	-- Championing Our Cause
				["provider"] = { "n", 116576 },	-- Maiev Shadowsong
				["coord"] = { 44.4, 63.4, BROKEN_SHORE },
			}),
			q(46272, {	-- Summons to the Keep
				["sourceQuests"] = { 46268 },	-- A Found Memento
				["provider"] = { "n", 120281 },	-- Captain Shwayder
				["coord"] = { 41.6, 59.6, BROKEN_SHORE },
				["timeline"] = { ADDED_7_2_0 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(46250, {	-- Take Out the Head...
				["sourceQuests"] = { 46769 },	-- Relieved of Their Valuables
				["provider"] = { "n", 116576 },	-- Maiev Shadowsong
				["coord"] = { 44.4, 63.5, BROKEN_SHORE },
			}),
			q(46765, {	-- The Broken Shore: Investigating the Legion
				["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
				["groups"] = {
					i(147430),	-- Mysterious Runebound Scroll (QI!)
				},
			}),
			q(46773, {	-- The Command Center
				["sourceQuest"] = 46245,	-- Begin Construction
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["coord"] = { 44.4, 63.1, BROKEN_SHORE },
			}),
			q(47000, {	-- The Council's Call
				["sourceQuest"] = 46765,	-- The Broken Shore: Investigating the Legion
				["provider"] = { "n", 116302 },	-- Archmage Khadgar
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
			}),
			q(46805, {	-- The Deceiver's Downfall
				["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
				["qgs"] = {
					120372,	-- Prophet Velen
					122800,	-- Prophet Velen
				},
				["coord"] = { 44.6, 63.2, BROKEN_SHORE },
			}),
			q(46282, {	-- The King's Path
				["sourceQuests"] = { 47112 },	-- Lost Souls
				["provider"] = { "n", 121237 },	-- Anduin Wrynn
				["coord"] = { 58.2, 26.6, BROKEN_SHORE },
				["timeline"] = { ADDED_7_2_0 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(46772, {	-- The Mage Tower
				["sourceQuest"] = 46245,	-- Begin Construction
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["coord"] = { 44.4, 63.1, BROKEN_SHORE },
			}),
			q(46774, {	-- The Nether Disruptor
				["sourceQuest"] = 46245,	-- Begin Construction
				["provider"] = { "n", 120183 },	-- Commander Chambers
				["groups"] = {
					i(147451),	-- Armorcrafter's Commendation
				},
			}),
			q(46666, {	-- The Motherlode
				["sourceQuests"] = { 46511 },	-- We're Treasure Hunters
				["provider"] = { "n", 119886 },	-- Excavator Karla
				["coord"] = { 39.6, 71.7, BROKEN_SHORE },
				["groups"] = {
					i(143559),	-- Wyrmtongue's Cache Key
				},
			}),
			q(46935, {	-- The Shadow of the Sentinax
				["sourceQuests"] = { 46734 },	-- Assault on Broken Shore
				["provider"] = { "i", 147356 },	-- Broken Sentinax Beacon
			}),
			q(54120, {	-- To Orgrimmar
				["sourceQuests"] = { 53778 },	-- Where He Fell
				["qgs"] = {
					145965,	-- Spirit of Vol'jin
					145981, -- Restless Spirit
				},
				["coord"] = { 62.3, 30.4, BROKEN_SHORE },
				["races"] = HORDE_ONLY,
				["lvl"] = 50,
				["groups"] = { i(165371) },	-- The Glaive of Vol'jin (QI!)
			}),
			q(46509, {	-- Tomb Raidering
				["sourceQuests"] = { 46501 },	-- Grave Robbin'
				["provider"] = { "n", 119886 },	-- Excavator Karla
				["coord"] = { 39.6, 71.7, BROKEN_SHORE },
				["groups"] = {
					i(146957),	-- Mysterious Potion (QI!)
				},
			}),
			q(47054, {	-- Touched By Fate
				["sourceQuest"] = 46774,	-- The Nether Disruptor
				["provider"] = { "n", 121137 },	-- Maggie "Slither" Masterson
				["coord"] = { 41.2, 64.4, BROKEN_SHORE },
				["repeatable"] = true,
			}),
			q(46845, {	-- Vengeance Point
				["sourceQuests"] = { 46832 },	-- Aalgen Point
				["provider"] = { "n", 120118 },	-- Heidirk the Scalekeeper
				["coord"] = { 70.6, 47.5, BROKEN_SHORE },
			}),
			q(46511, {	-- We're Treasure Hunters
				["sourceQuests"] = { 46510 },	-- Ship Graveyard
				["provider"] = { "n", 119886 },	-- Excavator Karla
				["coord"] = { 39.6, 71.7, BROKEN_SHORE },
				["groups"] = {
					i(146653),	-- Ancient Shard of Binding (QI!)
				},
			}),
			q(53778, {	-- Where He Fell
				["sourceQuests"] = { 53776 },	-- To the Broken Shore
				["provider"] = { "n", 145965 },	-- Spirit of Vol'jin
				["coord"] = { 63.2, 33.3, BROKEN_SHORE },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {
	m(BROKEN_ISLES, {
		m(BROKEN_SHORE, {
			n(FACTIONS, {
				n(EMISSARY_QUESTS, {
					q(46802),	-- Paragon of the Legionfall Armies
				}),
			}),
			n(QUESTS, {
				q(47038),	-- 7.2 Broken Shore - Buildings - Activation Buff - Nether Disruptor - Seal Your Fate - Day 1 - Tracking
				q(47044),	-- 7.2 Broken Shore - Buildings - Activation Buff - Nether Disruptor - Seal Your Fate - Day 2 - Tracking
				q(47053),	-- 7.2 Broken Shore - Buildings - Activation Buff - Nether Disruptor - Seal Your Fate - Day 3 - Tracking
				q(46870),	-- 7.2 Broken Shore - Buildings - Command Center - Buff Activation - Tracking Quest
				-- q(47021),	-- 7.2 Broken Shore - Buildings - Command Center - Buff - Follower Token - Tracking
				q(46283),	-- 7.2 Broken Shore - Buildings - Mage Tower - Personal Reward Received
				q(46793),	-- 7.2 Broken Shore - Buildings - Mage Tower - Buff Activation - Tracking Quest
				q(46871),	-- 7.2 Broken Shore - Buildings - Nether Disruptor - Buff Activiation - Tracking Quest
				q(46775),	-- Campaign Cooldown - triggers after turning in "Champions of Legionfall" (questID 47137) during the Legionfall Campaign
				q(46735),	-- Contribute to Command Center - during "Begin Construction" quest, not sure if that matters
				q(46277),	-- Contribute to Mage Tower
				q(46709),	-- Ready for Crafted Legendary flag
				q(47590),	-- Tier 3 Mob Daily Bonus (DNT) - Daily kill
				q(46665),	-- Tracking Quest - triggers with "Spiders, Huh?"
				q(46751),	-- Tracking Quest - triggers when turning in "A Found Memento" (#46268)
				q(47092),	-- Working on Crafted Legendary
			}),
		}),
	}),
})));
