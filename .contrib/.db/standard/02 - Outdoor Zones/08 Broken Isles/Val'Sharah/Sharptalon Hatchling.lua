---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(BROKEN_ISLES, bubbleDown({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	m(VALSHARAH, {
		header(HEADERS.NPC, 115786, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_0 } }, {	-- Sharptalon Hatchling
			["description"] = "1. Buy Dried Bilberries from Nalysse Dawnsorrow in Azsuna.\n2. Kill Sharptalon Matriarch.\n3. /target Orphaned Sharptalon\n4. Feed Orphaned Sharptalon Dried Bilberries.\n5. Enjoy new Sharptalon Hatchling! Do one quest each day for a mount!|r",
			["crs"] = { 115740 },	-- Orphaned Sharptalon
			["groups"] = {
				pet(1976),	-- Sharptalon Hatchling (PET!)
				q(44997, {	-- Allies in Val'sharah
					["sourceQuest"] = 44995,	-- Hunting Lesson: Spring Strider
					["provider"] = { "n", 115786 },	-- Sharptalon Hatchling
				}),
				q(45001, {	-- Destructive Prey
					["sourceQuest"] = 44999,	-- Sharptalon Team Up
					["provider"] = { "n", 115786 },	-- Sharptalon Hatchling
				}),
				q(45009, {	-- Hunting Lesson: Auburn Ringtail
					["sourceQuest"] = 45007,	-- Sharptalon Bonding
					["provider"] = { "n", 115786 },	-- Sharptalon Hatchling
				}),
				q(44995, {	-- Hunting Lesson: Spring Strider
					["sourceQuests"] = {
						44992,	-- The Smell of Night Elves
						44994,	-- The Smell of Undead
					},
					["provider"] = { "n", 115786 },	-- Sharptalon Hatchling
				}),
				q(45003, {	-- Hunting Lesson: Terror Larva
					["sourceQuest"] = 45001,	-- Destructive Prey
					["provider"] = { "n", 115786 },	-- Sharptalon Hatchling
				}),
				q(45013, {	-- Hunting Lesson: Vale Flitter
					["sourceQuest"] = 45011,	-- Teamwork Lesson: Dresaron
					["provider"] = { "n", 115786 },	-- Sharptalon Hatchling
				}),
				q(44989, {	-- Raising Your Sharptalon
					["provider"] = { "n", 115786 },	-- Sharptalon Hatchling
				}),
				q(45007, {	-- Sharptalon Bonding
					["sourceQuest"] = 45005,	-- The Uncongenial Faction
					["provider"] = { "n", 115786 },	-- Sharptalon Hatchling
					["groups"] = {
						i(142496),	-- Dirty Spoon (TOY!)
					},
				}),
				q(45019, {	-- Sharptalon Reunion
					["sourceQuest"] = 45017,	-- Sharptalon Team Rumble
					["provider"] = { "n", 115786 },	-- Sharptalon Hatchling
					["groups"] = {
						i(137580),	-- Viridian Sharptalon (MOUNT!)
					},
				}),
				q(45017, {	-- Sharptalon Team Rumble
					["sourceQuest"] = 45015,	-- Teamwork Lesson: Xavius
					["provider"] = { "n", 115786 },	-- Sharptalon Hatchling
				}),
				q(44999, {	-- Sharptalon Team Up
					["sourceQuest"] = 44997,	-- Allies in Val'sharah
					["provider"] = { "n", 115786 },	-- Sharptalon Hatchling
				}),
				q(45011, {	-- Teamwork Lesson: Dresaron
					["sourceQuest"] = 45009,	-- Hunting Lesson: Auburn Ringtail
					["provider"] = { "n", 115786 },	-- Sharptalon Hatchling
				}),
				q(45015, {	-- Teamwork Lesson: Xavius
					["sourceQuest"] = 45013,	-- Hunting Lesson: Vale Flitter
					["provider"] = { "n", 115786 },	-- Sharptalon Hatchling
					["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
				}),
				q(44992, {	-- The Smell of Night Elves
					["sourceQuest"] = 44989,	-- Raising Your Sharptalon
					["provider"] = { "n", 115786 },	-- Sharptalon Hatchling
					["races"] = ALLIANCE_ONLY,
				}),
				q(44994, {	-- The Smell of Undead
					["sourceQuest"] = 44989,	-- Raising Your Sharptalon
					["provider"] = { "n", 115786 },	-- Sharptalon Hatchling
					["races"] = HORDE_ONLY,
				}),
				q(45005, {	-- The Uncongenial Faction
					["sourceQuest"] = 45003,	-- Hunting Lesson: Terror Larva
					["provider"] = { "n", 115786 },	-- Sharptalon Hatchling
				}),
			},
		})),
	}),
})));
