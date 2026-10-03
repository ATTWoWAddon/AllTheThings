---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(AZSUNA, {
			petbattle(filter(BATTLE_PETS, {
				["sym"] = {{"select","speciesID",
					396,	-- Dusk Spidering (PET!)
					1731,	-- Felspider (PET!)
					478,	-- Forest Moth (PET!)
					464,	-- Grey Moth (PET!)
					647,	-- Grizzly Squirrel (PET!)
					1583,	-- Kelp Scuttler (PET!)
					1587,	-- Royal Moth (PET!)
					1736,	-- Slithering Brownscale (PET!)
				}},
				["groups"] = {
					pet(1708),	-- Albatross Chick (PET!)
					pet(706),	-- Bandicoon (PET!)
					pet(1914),	-- Coastal Sandpiper (PET!)
					pet(1774, {	-- Eldritch Manafiend (PET!)
						["description"] = "This pet can only spawn during the night between 6:30pm to 6:30am PST(US)/CEST(EU)/AEST(OCE).",
					}),
					pet(1773, {	-- Erudite Manafiend (PET!)
						["description"] = "This pet can only spawn during the day between 6:30am to 6:30pm PST(US)/CEST(EU)/AEST(OCE).",
					}),
					pet(1709, {	-- Fledgling Kingfeather (PET!)
						["coord"] = { 44.4, 23.6, AZSUNA },
					}),
					pet(1710, {	-- Fledgling Oliveback (PET!)
						["coord"] = { 44.4, 23.6, AZSUNA },
					}),
					pet(699, {	-- Jumping Spider (PET!)
						["coord"] = { 48.4, 22.8, AZSUNA },
					}),
					pet(1728, {	-- Juvenile Scuttleback (PET!)
						["coords"] = {
							{ 61.8, 61.6, AZSUNA },
							{ 55.8, 59.0, AZSUNA },
							{ 31.2, 30.6, AZSUNA },
						},
					}),
					pet(1729),	-- Olivetail Hare (PET!)
					pet(743, {	-- Rapana Whelk (PET!)
						["coords"] = {
							{ 45.0, 56.2, AZSUNA },
							{ 50.2, 49.2, AZSUNA },
							{ 57.0, 59.0, AZSUNA },
						},
					}),
					pet(1935, {	-- Squirky (PET!)
						["description"] = "Found at the given coord on Seabreak Isle.",
						["coord"] = { 20.0, 21.8, AZSUNA },
						["timeline"] = { ADDED_7_1_0 },
					}),
					header(HEADERS.NPC, 115787, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_0 } }, {	-- Bloodgazer Hatchling
						["description"] = "1. Buy Azsunian Grapes from Nalysse Dawnsorrow in Azsuna.\n2. Kill Bloodgazer Matriarch.\n3. /target Orphaned Bloodgazer\n4. Feed Orphaned Bloodgazer Azsunian Grapes.\n5. Enjoy new Bloodgazer Hatchling! Do one quest each day for a mount!|r",
						["crs"] = { 115741 },	-- Orphaned Bloodgazer
						["groups"] = {
							pet(1977),	-- Bloodgazer Hatchling (PET!)
							q(44998, {	-- Allies in Azsuna
								["sourceQuest"] = 44996,	-- Hunting Lesson: Erudite Manafiend
								["provider"] = { "n", 115787 },	-- Bloodgazer Hatchling
							}),
							q(45008, {	-- Bloodgazer Bonding
								["sourceQuest"] = 45006,	-- The Unfavorable Faction
								["provider"] = { "n", 115787 },	-- Bloodgazer Hatchling
								["groups"] = {
									i(142494),	-- Purple Blossom (TOY!)
								},
							}),
							q(45020, {	-- Bloodgazer Reunion
								["sourceQuest"] = 45018,	-- Bloodgazer Team Rumble
								["provider"] = { "n", 115787 },	-- Bloodgazer Hatchling
								["groups"] = {
									i(137577),	-- Predatory Bloodgazer (MOUNT!)
								},
							}),
							q(45018, {	-- Bloodgazer Team Rumble
								["sourceQuest"] = 45016,	-- Teamwork Lesson: Skorpyron
								["provider"] = { "n", 115787 },	-- Bloodgazer Hatchling
							}),
							q(45000, {	-- Bloodgazer Team Up
								["sourceQuest"] = 44998,	-- Allies in Azsuna
								["provider"] = { "n", 115787 },	-- Bloodgazer Hatchling
							}),
							q(45002, {	-- Dangerous Prey
								["sourceQuest"] = 45000,	-- Bloodgazer Team Up
								["provider"] = { "n", 115787 },	-- Bloodgazer Hatchling
							}),
							q(44996, {	-- Hunting Lesson: Erudite Manafiend
								["sourceQuests"] = {
									44993,	-- The Smell of Blood Elves
									44991,	-- The Smell of Draenei
								},
								["provider"] = { "n", 115787 },	-- Bloodgazer Hatchling
							}),
							q(45014, {	-- Hunting Lesson: Felspider
								["sourceQuest"] = 45012,	-- Teamwork Lesson: Serpentrix
								["provider"] = { "n", 115787 },	-- Bloodgazer Hatchling
							}),
							q(45004, {	-- Hunting Lesson: Fledgling Kingfeather
								["sourceQuest"] = 45002,	-- Dangerous Prey
								["provider"] = { "n", 115787 },	-- Bloodgazer Hatchling
							}),
							q(45010, {	-- Hunting Lesson: Juvenile Scuttleback
								["sourceQuest"] = 45008,	-- Bloodgazer Bonding
								["provider"] = { "n", 115787 },	-- Bloodgazer Hatchling
							}),
							q(44990, {	-- Raising Your Bloodgazer
								["provider"] = { "n", 115787 },	-- Bloodgazer Hatchling
							}),
							q(45012, {	-- Teamwork Lesson: Serpentrix
								["sourceQuest"] = 45010,	-- Hunting Lesson: Juvenile Scuttleback
								["provider"] = { "n", 115787 },	-- Bloodgazer Hatchling
							}),
							q(45016, {	-- Teamwork Lesson: Skorpyron
								["sourceQuest"] = 45014,	-- Hunting Lesson: Felspider
								["provider"] = { "n", 115787 },	-- Bloodgazer Hatchling
								["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
							}),
							q(44991, {	-- The Smell of Draenei
								["sourceQuest"] = 44990,	-- Raising Your Bloodgazer
								["provider"] = { "n", 115787 },	-- Bloodgazer Hatchling
								["races"] = ALLIANCE_ONLY,
							}),
							q(44993, {	-- The Smell of Blood Elves
								["sourceQuest"] = 44990,	-- Raising Your Bloodgazer
								["provider"] = { "n", 115787 },	-- Bloodgazer Hatchling
								["races"] = HORDE_ONLY,
							}),
							q(45006, {	-- The Unfavorable Faction
								["sourceQuest"] = 45004,	-- Hunting Lesson: Fledgling Kingfeather
								["provider"] = { "n", 115787 },	-- Bloodgazer Hatchling
							}),
						},
					})),
				},
			})),
		}),
	}),
});
