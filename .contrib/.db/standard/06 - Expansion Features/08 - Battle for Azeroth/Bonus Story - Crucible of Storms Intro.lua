-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, {
	expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_1_0 } }, {
		header(HEADERS.Object, 311218, {	-- Xal'atath, Blade of the Black Empire
			q(54141, {	-- The Azsharan Medallion [A]
				["description"] = "To get the quest item, you need to kill Naga while the world quest 'Naga Attack!' is up. Complete the questline to receive the Twitching Eyeball toy.",
				["provider"] = { "i", 165605 },	-- The Azsharan Medallion [A]
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
				["description"] = "To get the quest item you need to kill Naga while the world quest 'Naga Attack!' is up. Complete the questline to receive the Twitching Eyeball Toy",
				["provider"] = { "i", 165668 },	-- The Azsharan Medallion [H]
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
				["sourceQuests"] = { 54141 },	-- The Azsharan Medallion [A]
				["provider"] = { "n", 135793 },	-- Collector Kojo
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
				["sourceQuests"] = { 54141 },	-- The Azsharan Medallion [A]
				["provider"] = { "n", 134345 },	-- Collector Kojo
				["coord"] = { 71.4, 30.2, ZULDAZAR },
				["classes"] = { PRIEST },
				["races"] = ALLIANCE_ONLY,
			}),
			q(54174, {	-- Orders from Azshara [H, Non-Priest]
				["sourceQuests"] = { 54172 },	-- The Azsharan Medallion [H]
				["provider"] = { "n", 134345 },	-- Collector Kojo
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
				["sourceQuests"] = { 54172 },	-- The Azsharan Medallion [H]
				["provider"] = { "n", 134345 },	-- Collector Kojo
				["coord"] = { 71.4, 30.2, ZULDAZAR },
				["classes"] = { PRIEST },
				["races"] = HORDE_ONLY,
			}),
			q(54113, {	-- Every Little Death Helps [A, Non-Priest]
				["sourceQuests"] = { 54144 },	-- Orders from Azshara [A, Non-Priest]
				["provider"] = { "o", 311218 },	-- Xal'atath, Blade of the Black Empire
				["coord"] = { 34.2, 31.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = exclude(PRIEST, ALL_CLASSES),
			}),
			q(54114, {	-- Every Little Death Helps [A, Priest]
				["sourceQuests"] = { 54265 },	-- Orders from Azshara [A, Priest]
				["provider"] = { "o", 311885 },	-- Xal'atath, Blade of the Black Empire
				["coords"] = {
					{ 78.0, 36.7, ZULDAZAR },
					{ 34.2, 31.8, STORMSONG_VALLEY },
				},
				["classes"] = { PRIEST },
				["races"] = ALLIANCE_ONLY,
			}),
			q(54117, {	-- Every Little Death Helps [H, Non-Priest]
				["sourceQuests"] = { 54174 },	-- Orders from Azshara [H, Non-Priest]
				["provider"] = { "o", 311218 },	-- Xal'atath, Blade of the Black Empire
				["coord"] = { 78.0, 36.7, ZULDAZAR },
				["races"] = HORDE_ONLY,
				["classes"] = exclude(PRIEST, ALL_CLASSES),
			}),
			q(54118, {	-- Every Little Death Helps [H, Priest]
				["sourceQuests"] = { 54433 },	-- Orders from Azshara [H, Priest]
				["provider"] = { "o", 311885 },	-- Xal'atath, Blade of the Black Empire
				["coords"] = {
					{ 78.0, 36.7, ZULDAZAR },
					{ 34.2, 31.8, STORMSONG_VALLEY },
				},
				["classes"] = { PRIEST },
				["races"] = HORDE_ONLY,
			}),
			q(53760, {	-- Unintended Consequences [Non-Priest]
				["sourceQuests"] = {
					54113,	-- Every Little Death Helps [A, Non-Priest]
					54117,	-- Every Little Death Helps [H, Non-Priest]
				},
				["provider"] = { "o", 311218 },	-- Xal'atath, Blade of the Black Empire
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
				["sourceQuests"] = {
					54114,	-- Every Little Death Helps [A, Priest]
					54118,	-- Every Little Death Helps [H, Priest]
				},
				["provider"] = { "o", 311885 },	-- Xal'atath, Blade of the Black Empire
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
				["sourceQuests"] = {
					53760,	-- Unintended Consequences [Non-Priest]
					54058,	-- Unintended Consequences [Priest]
				},
				["provider"] = { "n", 144773 },	-- Xal'atath
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
				["sourceQuests"] = { 53761 },	-- The Pirate's Treasure
				["provider"] = { "n", 145396 },	-- Xal'atath
				["coord"] = { 75.0, 77.7, TIRAGARDE_SOUND },
				["groups"] = {
					i(165018),	-- Tempest Caller (QI!)
				},
			}),
			q(54126, {	-- Twist the Knife [A]
				["sourceQuests"] = { 53762 },	-- The Tempest Crown
				["provider"] = { "n", 146384 },	-- Xal'atath
				["coords"] = {
					{ 51.9, 13.7, VOLDUN },
					{ 53.0, 13.6, VOLDUN },
				},
				["maps"] = { 1363 },	-- Crucible of Storms (Scenario Map)
				["races"] = ALLIANCE_ONLY,
			}),
			q(53763, {	-- Twist the Knife [H]
				["sourceQuests"] = { 53762 },	-- The Tempest Crown
				["provider"] = { "n", 146384 },	-- Xal'atath
				["coord"] = { 53.0, 13.6, VOLDUN },
				["maps"] = { 1363 },	-- Crucible of Storms (Scenario Map)
				["races"] = HORDE_ONLY,
			}),
			q(53765, {	-- His Eye Upon You [A]
				["description"] = "You only get the toy if you choose to cleanse the gift.",
				["sourceQuests"] = { 54126 },	-- Twist the Knife [A]
				["provider"] = { "n", 146902 },	-- Brother Pike
				["coord"] = { 67.4, 21.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(168123),	-- Twitching Eyeball (TOY!)
				},
			}),
			q(53766, {	-- His Eye Upon You [H]
				["description"] = "You only get the toy if you choose to cleanse the gift.",
				["sourceQuests"] = { 53763 },	-- Twist the Knife [H]
				["qgs"] = {
					133050,	-- Princess Talanji
					146335,	-- Queen Talanji
				},
				["coords"] = {
					{ 49.9, 46.6, DAZARALOR },
					{ 41.7, 66.7, THE_GREAT_SEAL },
				},
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(168123),	-- Twitching Eyeball (TOY!)
				},
			}),
			q(54438, {	-- Crucible of Storms: Relics of Shadow [A]
				["sourceQuests"] = { 54126 },	-- Twist the Knife [A]
				["provider"] = { "n", 146902 },	-- Brother Pike
				["coord"] = { 67.4, 21.0, BORALUS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(54439, {	-- Crucible of Storms: Relics of Shadow [H]
				["sourceQuests"] = { 53763 },	-- Twist the Knife [H]
				["qgs"] = {
					133050,	-- Princess Talanji
					146335,	-- Queen Talanji
				},
				["coords"] = {
					{ 49.9, 46.6, DAZARALOR },
					{ 41.7, 66.7, THE_GREAT_SEAL },
				},
				["races"] = HORDE_ONLY,
			}),
			q(54682, {	-- The Missing Blade [A]
				["sourceQuests"] = { 54438 },	-- Crucible of Storms: Relics of Shadow [A]
				["provider"] = { "o", 316443 },	-- Xal'atath, Blade of the Black Empire
				["coord"] = { 27.0, 54.0, 1346 },	-- Tendril of Corruption
				["races"] = ALLIANCE_ONLY,
			}),
			q(54683, {	-- The Black Blade [H]
				["sourceQuests"] = { 54439 },	-- Crucible of Storms: Relics of Shadow [H]
				["provider"] = { "o", 316443 },	-- Xal'atath, Blade of the Black Empire
				["coord"] = { 27.0, 54.0, 1346 },	-- Tendril of Corruption
				["races"] = HORDE_ONLY,
			}),
		}),
	})),
});
