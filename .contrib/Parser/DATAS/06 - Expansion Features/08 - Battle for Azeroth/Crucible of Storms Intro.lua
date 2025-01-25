-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, {
	expansion(EXPANSION.BFA, {
		header(HEADERS.Object, 311218, {	-- Xal'atath, Blade of the Black Empire
			q(54438, {	-- Crucible of Storms: Relics of Shadow
				["sourceQuests"] = { 54126 },	-- Twist the Knife
				["provider"] = { "n", 146902 },	-- Brother Pike
				["coord"] = { 67.4, 21.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(54439, {	-- Crucible of Storms: Relics of Shadow
				["races"] = HORDE_ONLY,
				["sourceQuests"] = { 53763 },	-- Twist the Knife
				["providers"] = {
					{ "n", 146335 },	-- Queen Talanji
					{ "n", 133050 },	-- Princess Talanji
				},
				["coords"] = {
					{ 49.9, 46.6, DAZARALOR },
					{ 41.7, 66.7, THE_GREAT_SEAL },
				},
			}),
			q(54113, {	-- Every Little Death Helps [A, Non-Priest]
				["sourceQuests"] = { 54144 },	-- Orders from Azshara
				["coord"] = { 34.2, 31.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = exclude(PRIEST, ALL_CLASSES),
			}),
			q(54117, {	-- Every Little Death Helps [H, Non-Priest]
				["sourceQuests"] = { 54174 },	-- Orders from Azshara
				["coord"] = { 78.0, 36.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["classes"] = exclude(PRIEST, ALL_CLASSES),
			}),
			q(54114, {	-- Every Little Death Helps [A, Priest]
				["sourceQuests"] = { 54265 },	-- Orders from Azshara
				["classes"] = { PRIEST },
				["races"] = ALLIANCE_ONLY,
				["coords"] = {
					{ 78.0, 36.7, ZULDAZAR },
					{ 34.2, 31.8, STORMSONG_VALLEY },
				},
			}),
			q(54118, {	-- Every Little Death Helps [H, Priest]
				["sourceQuests"] = { 54433 },	-- Orders from Azshara
				["classes"] = { PRIEST },
				["races"] = HORDE_ONLY,
				["coords"] = {
					{ 78.0, 36.7, ZULDAZAR },
					{ 34.2, 31.8, STORMSONG_VALLEY },
				},
			}),
			q(53765, {	-- His Eye Upon You
				["sourceQuests"] = { 54126 },	-- Twist the Knife [Alliance]
				["description"] = "You only get the toy if you choose to cleanse the gift.",
				["provider"] = { "n", 146902 },	-- Brother Pike
				["coord"] = { 67.4, 21.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(168123),	-- Twitching Eyeball (TOY!)
				},
			}),
			q(53766, {	-- His Eye Upon You
				["races"] = HORDE_ONLY,
				["sourceQuests"] = { 53763 },	-- Twist the Knife
				["description"] = "You just get the Toy if you choose to cleanse the gift.",
				["providers"] = {
					{ "n", 146335 },	-- Queen Talanji
					{ "n", 133050 },	-- Princess Talanji
				},
				["coords"] = {
					{ 49.9, 46.6, DAZARALOR },
					{ 41.7, 66.7, THE_GREAT_SEAL },
				},
				["g"] = {
					i(168123),	-- Twitching Eyeball (TOY!)
				},
			}),
			q(54144, {	-- Orders from Azshara
				["sourceQuests"] = { 54141 },	-- The Azsharan Medallion
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 40.4, 36.4, STORMSONG_VALLEY },
				["provider"] = { "n", 135793 },	-- Collector Kojo
				["classes"] = exclude(PRIEST, ALL_CLASSES),
				["g"] = {
					o(307091, {	-- Ominous Whispering Dagger
						["coord"] = { 40.5, 36.5, STORMSONG_VALLEY },
						["g"] = { i(164761) },	-- Xal'atath, Blade of the Black Empire (QI!)
					}),
				},
			}),
			q(54174, {	-- Orders from Azshara
				["sourceQuests"] = { 54172 },	-- The Azsharan Medallion
				["races"] = HORDE_ONLY,
				["coord"] = { 71.4, 30.2, ZULDAZAR },
				["provider"] = { "n", 134345 },	-- Collector Kojo
				["classes"] = exclude(PRIEST, ALL_CLASSES),
				["g"] = {
					o(307091, {	-- Ominous Whispering Dagger
						["coord"] = { 40.5, 36.5, STORMSONG_VALLEY },
						["g"] = { i(164761) },	-- Xal'atath, Blade of the Black Empire (QI!)
					}),
				},
			}),
			q(54265, {	-- Orders from Azshara
				["sourceQuests"] = { 54172 },	-- The Azsharan Medallion
				["classes"] = { PRIEST },
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 71.4, 30.2, ZULDAZAR },
				["provider"] = { "n", 134345 },	-- Collector Kojo
			}),
			q(54433, {	-- Orders from Azshara
				["sourceQuests"] = { 54172 },	-- The Azsharan Medallion
				["classes"] = { PRIEST },
				["races"] = HORDE_ONLY,
				["coord"] = { 71.4, 30.2, ZULDAZAR },
				["provider"] = { "n", 134345 },	-- Collector Kojo
			}),
			q(54141, {	-- The Azsharan Medallion
				["description"] = "To get the quest item, you need to kill Naga while the world quest 'Naga Attack!' is up.  Complete the questline to receive the Twitching Eyeball toy.",
				["provider"] = { "i", 165605 },	-- The Azsharan Medallion
				["races"] = ALLIANCE_ONLY,
				["crs"] = {
					144778,	-- Darktide Champion
					144769,	-- Darktide Sorceress
					144770,	-- Darktide Witch
					144816,	-- Darktide Slaver
					144777,	-- Darktide Marauder
					144780,	-- Darktide Brute
				},
			}),
			q(54172, {	-- The Azsharan Medallion
				["description"] = "To get the quest item you need to kill Naga while the world quest 'Naga Attack!' is up.  Complete the questline to receive the Twitching Eyeball Toy",
				["races"] = HORDE_ONLY,
				["provider"] = { "i", 165668 },	-- The Azsharan Medallion
				["crs"] = {
					144778,	-- Darktide Champion
					144769,	-- Darktide Sorceress
					144770,	-- Darktide Witch
					144816,	-- Darktide Slaver
					144777,	-- Darktide Marauder
					144780,	-- Darktide Brute
				},
			}),
			q(54683, {    -- The Black Blade
				["races"] = HORDE_ONLY,
				["sourceQuests"] = { 54439 },    -- Crucible of Storms: Relics of Shadow
				["provider"] = { "o", 316443 },    -- Xal'atath, Blade of the Black Empire
				["coord"] = { 27.0, 54.0, 1346 }, -- Tendril of Corruption
			}),
			q(54682, {    -- The Missing Blade
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 54438 },    -- Crucible of Storms: Relics of Shadow
				["provider"] = { "o", 316443 },    -- Xal'atath, Blade of the Black Empire
				["coord"] = { 27.0, 54.0, 1346 }, -- Tendril of Corruption
			}),
			q(53761, {	-- The Pirate's Treasure
				["sourceQuests"] = {
					53760,	-- Unintended Consequences
					54058,	-- Unintended Consequences
				},
				["provider"] = { "n", 144773 },	-- Xal'atath
				["coord"] = { 20.0, 35.8, DRUSTVAR },
				["g"] = {
					i(164976),	-- Skeleton Key (QI!)
					i(164763),	-- Trident of Deep Ocean (QI!)
				},
			}),
			q(53762, {	-- The Tempest Crown
				["sourceQuests"] = { 53761 },	-- The Pirate's Treasure
				["provider"] = { "n", 145396 },	-- Xal'atath
				["coord"] = { 75.0, 77.7, TIRAGARDE_SOUND },
				["g"] = {
					i(165018),	-- Tempest Caller (QI!)
				},
			}),
			q(54126, {	-- Twist the Knife
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 53762 },	-- The Tempest Crown
				["provider"] = { "n", 146384 },	-- Xal'atath
				["coord"] = { 53.0, 13.6, VOLDUN },
				["maps"] = { 1363 },	-- Crucible of Storms (Scenario Map)
			}),
			q(53763, {	-- Twist the Knife
				["races"] = HORDE_ONLY,
				["sourceQuests"] = { 53762 },	-- The Tempest Crown
				["provider"] = { "n", 146384 },	-- Xal'atath
				["coord"] = { 53.0, 13.6, VOLDUN },
				["maps"] = { 1363 },	-- Crucible of Storms (Scenario Map)
			}),
			q(53760, {	-- Unintended Consequences [Non-Priest]
				["sourceQuests"] = {
					54113,	-- Every Little Death Helps [A, Non-Priest]
					54117,	-- Every Little Death Helps [H, Non-Priest]
				},
				["classes"] = exclude(PRIEST, ALL_CLASSES),
				["coords"] = {
					{ 78.0, 36.7, ZULDAZAR },
					{ 34.2, 31.8, STORMSONG_VALLEY },
				},
				["g"] = {
					i(164911),	-- Void Stone (QI!)
				},
			}),
			q(54058, {	-- Unintended Consequences [Priest]
				["sourceQuests"] = { 54114 },	-- Every Little Death Helps [Priest]
				["classes"] = { PRIEST },
				["coords"] = {
					{ 78.0, 36.7, ZULDAZAR },
					{ 34.2, 31.8, STORMSONG_VALLEY },
				},
				["g"] = {
					i(164911),	-- Void Stone (QI!)
				},
			}),
		}),
	}),
});