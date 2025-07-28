-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, {
	expansion(EXPANSION.BFA, {
		header(HEADERS.Object, 311218, {	-- Xal'atath, Blade of the Black Empire
			q(54141, {	-- The Azsharan Medallion [A]
				["provider"] = { "i", 165605 },	-- The Azsharan Medallion [A]
				["description"] = "To get the quest item, you need to kill Naga while the world quest 'Naga Attack!' is up.  Complete the questline to receive the Twitching Eyeball toy.",
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
			q(54172, {	-- The Azsharan Medallion [H]
				["provider"] = { "i", 165668 },	-- The Azsharan Medallion [H]
				["description"] = "To get the quest item you need to kill Naga while the world quest 'Naga Attack!' is up.  Complete the questline to receive the Twitching Eyeball Toy",
				["races"] = HORDE_ONLY,
				["crs"] = {
					144778,	-- Darktide Champion
					144769,	-- Darktide Sorceress
					144770,	-- Darktide Witch
					144816,	-- Darktide Slaver
					144777,	-- Darktide Marauder
					144780,	-- Darktide Brute
				},
			}),
			q(54144, {	-- Orders from Azshara [A, Non-Priest]
				["provider"] = { "n", 135793 },	-- Collector Kojo
				["sourceQuests"] = { 54141 },	-- The Azsharan Medallion [A]
				["coord"] = { 40.4, 36.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = exclude(PRIEST, ALL_CLASSES),
				["groups"] = {
					o(307091, {	-- Ominous Whispering Dagger
						["coord"] = { 40.5, 36.5, STORMSONG_VALLEY },
						["groups"] = { i(164761) },	-- Xal'atath, Blade of the Black Empire (QI!)
					}),
				},
			}),
			q(54265, {	-- Orders from Azshara [A, Priest]
				["provider"] = { "n", 134345 },	-- Collector Kojo
				["sourceQuests"] = { 54141 },	-- The Azsharan Medallion [A]
				["coord"] = { 71.4, 30.2, ZULDAZAR },
				["classes"] = { PRIEST },
				["races"] = ALLIANCE_ONLY,
			}),
			q(54174, {	-- Orders from Azshara [H, Non-Priest]
				["provider"] = { "n", 134345 },	-- Collector Kojo
				["sourceQuests"] = { 54172 },	-- The Azsharan Medallion [H]
				["coord"] = { 71.4, 30.2, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["classes"] = exclude(PRIEST, ALL_CLASSES),
				["groups"] = {
					o(307091, {	-- Ominous Whispering Dagger
						["coord"] = { 40.5, 36.5, STORMSONG_VALLEY },
						["groups"] = { i(164761) },	-- Xal'atath, Blade of the Black Empire (QI!)
					}),
				},
			}),
			q(54433, {	-- Orders from Azshara [H, Priest]
				["provider"] = { "n", 134345 },	-- Collector Kojo
				["sourceQuests"] = { 54172 },	-- The Azsharan Medallion [H]
				["coord"] = { 71.4, 30.2, ZULDAZAR },
				["classes"] = { PRIEST },
				["races"] = HORDE_ONLY,
			}),
			q(54113, {	-- Every Little Death Helps [A, Non-Priest]
				["provider"] = { "o", 311218 },	-- Xal'atath, Blade of the Black Empire
				["sourceQuests"] = { 54144 },	-- Orders from Azshara [A, Non-Priest]
				["coord"] = { 34.2, 31.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = exclude(PRIEST, ALL_CLASSES),
			}),
			q(54114, {	-- Every Little Death Helps [A, Priest]
				["provider"] = { "o", 311885 },	-- Xal'atath, Blade of the Black Empire
				["sourceQuests"] = { 54265 },	-- Orders from Azshara [A, Priest]
				["coords"] = {
					{ 78.0, 36.7, ZULDAZAR },
					{ 34.2, 31.8, STORMSONG_VALLEY },
				},
				["classes"] = { PRIEST },
				["races"] = ALLIANCE_ONLY,
			}),
			q(54117, {	-- Every Little Death Helps [H, Non-Priest]
				["provider"] = { "o", 311218 },	-- Xal'atath, Blade of the Black Empire
				["sourceQuests"] = { 54174 },	-- Orders from Azshara [H, Non-Priest]
				["coord"] = { 78.0, 36.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["classes"] = exclude(PRIEST, ALL_CLASSES),
			}),
			q(54118, {	-- Every Little Death Helps [H, Priest]
				["provider"] = { "o", 311885 },	-- Xal'atath, Blade of the Black Empire
				["sourceQuests"] = { 54433 },	-- Orders from Azshara [H, Priest]
				["coords"] = {
					{ 78.0, 36.7, ZULDAZAR },
					{ 34.2, 31.8, STORMSONG_VALLEY },
				},
				["classes"] = { PRIEST },
				["races"] = HORDE_ONLY,
			}),
			q(53760, {	-- Unintended Consequences [Non-Priest]
				["provider"] = { "o", 311218 },	-- Xal'atath, Blade of the Black Empire
				["sourceQuests"] = {
					54113,	-- Every Little Death Helps [A, Non-Priest]
					54117,	-- Every Little Death Helps [H, Non-Priest]
				},
				["coords"] = {
					{ 78.0, 36.7, ZULDAZAR },
					{ 34.2, 31.8, STORMSONG_VALLEY },
				},
				["classes"] = exclude(PRIEST, ALL_CLASSES),
				["groups"] = {
					o(309505, {	-- Void Stone
						["coord"] = { 20.1, 35.8, DRUSTVAR },
						["groups"] = { i(164911) },	-- Void Stone (QI!)
					}),
				},
			}),
			q(54058, {	-- Unintended Consequences [Priest]
				["provider"] = { "o", 311885 },	-- Xal'atath, Blade of the Black Empire
				["sourceQuests"] = {
					54114,	-- Every Little Death Helps [A, Priest]
					54118,	-- Every Little Death Helps [H, Priest]
				},
				["coords"] = {
					{ 78.0, 36.7, ZULDAZAR },
					{ 34.2, 31.8, STORMSONG_VALLEY },
				},
				["classes"] = { PRIEST },
				["groups"] = {
					o(311163, {	-- Void Stone
						["coord"] = { 20.1, 35.8, DRUSTVAR },
						["groups"] = { i(164911) },	-- Void Stone (QI!)
					}),
				},
			}),
			q(53761, {	-- The Pirate's Treasure
				["provider"] = { "n", 144773 },	-- Xal'atath
				["sourceQuests"] = {
					53760,	-- Unintended Consequences [Non-Priest]
					54058,	-- Unintended Consequences [Priest]
				},
				["coord"] = { 20.0, 35.8, DRUSTVAR },
				["groups"] = {
					i(164976),	-- Skeleton Key (QI!)
					o(307066, {	-- Ocean Chest
						["coord"] = { 74.9, 78.9, TIRAGARDE_SOUND },
						["groups"] = { i(164763) },	-- Trident of Deep Ocean (QI!)
					}),
				},
			}),
			q(53762, {	-- The Tempest Crown
				["provider"] = { "n", 145396 },	-- Xal'atath
				["sourceQuests"] = { 53761 },	-- The Pirate's Treasure
				["coord"] = { 75.0, 77.7, TIRAGARDE_SOUND },
				["groups"] = {
					i(165018),	-- Tempest Caller (QI!)
				},
			}),
			q(54126, {	-- Twist the Knife [A]
				["provider"] = { "n", 146384 },	-- Xal'atath
				["sourceQuests"] = { 53762 },	-- The Tempest Crown
				["coords"] = {
					{ 51.9, 13.7, VOLDUN },
					{ 53.0, 13.6, VOLDUN },
				},
				["maps"] = { 1363 },	-- Crucible of Storms (Scenario Map)
				["races"] = ALLIANCE_ONLY,
			}),
			q(53763, {	-- Twist the Knife [H]
				["provider"] = { "n", 146384 },	-- Xal'atath
				["sourceQuests"] = { 53762 },	-- The Tempest Crown
				["coord"] = { 53.0, 13.6, VOLDUN },
				["maps"] = { 1363 },	-- Crucible of Storms (Scenario Map)
				["races"] = HORDE_ONLY,
			}),
			q(53765, {	-- His Eye Upon You [A]
				["provider"] = { "n", 146902 },	-- Brother Pike
				["sourceQuests"] = { 54126 },	-- Twist the Knife [A]
				["coord"] = { 67.4, 21.0, BORALUS },
				["description"] = "You only get the toy if you choose to cleanse the gift.",
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(168123),	-- Twitching Eyeball (TOY!)
				},
			}),
			q(53766, {	-- His Eye Upon You [H]
				["qgs"] = {
					133050,	-- Princess Talanji
					146335,	-- Queen Talanji
				},
				["sourceQuests"] = { 53763 },	-- Twist the Knife [H]
				["coords"] = {
					{ 49.9, 46.6, DAZARALOR },
					{ 41.7, 66.7, THE_GREAT_SEAL },
				},
				["description"] = "You only get the toy if you choose to cleanse the gift.",
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(168123),	-- Twitching Eyeball (TOY!)
				},
			}),
			q(54438, {	-- Crucible of Storms: Relics of Shadow [A]
				["provider"] = { "n", 146902 },	-- Brother Pike
				["sourceQuests"] = { 54126 },	-- Twist the Knife [A]
				["coord"] = { 67.4, 21.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(54439, {	-- Crucible of Storms: Relics of Shadow [H]
				["qgs"] = {
					133050,	-- Princess Talanji
					146335,	-- Queen Talanji
				},
				["sourceQuests"] = { 53763 },	-- Twist the Knife [H]
				["coords"] = {
					{ 49.9, 46.6, DAZARALOR },
					{ 41.7, 66.7, THE_GREAT_SEAL },
				},
				["races"] = HORDE_ONLY,
			}),
			q(54682, {    -- The Missing Blade [A]
				["provider"] = { "o", 316443 },    -- Xal'atath, Blade of the Black Empire
				["sourceQuests"] = { 54438 },    -- Crucible of Storms: Relics of Shadow [A]
				["coord"] = { 27.0, 54.0, 1346 },	-- Tendril of Corruption
				["races"] = ALLIANCE_ONLY,
			}),
			q(54683, {    -- The Black Blade [H]
				["provider"] = { "o", 316443 },    -- Xal'atath, Blade of the Black Empire
				["sourceQuests"] = { 54439 },    -- Crucible of Storms: Relics of Shadow [H]
				["coord"] = { 27.0, 54.0, 1346 },	-- Tendril of Corruption
				["races"] = HORDE_ONLY,
			}),
		}),
	}),
});