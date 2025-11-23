---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(SURAMAR, {
			n(QUESTS, {
				q(41916, {	-- A Better Future
					["sourceQuest"] = 40632,	-- Take Me To Your Leader
					["provider"] = { "n", 114908 },	-- First Arcanist Thalyssra
					["coords"] = {
						{ 40.5, 53.1, SURAMAR },
						{ 41.6, 51.6, SURAMAR },
					},
				}),
				q(42841, {	-- A Big Score
					["sourceQuest"] = 42840,	-- If Words Don't Work...
					["provider"] = { "n", 107253 },	-- Arluin
					["coord"] = { 48.9, 73.4, SURAMAR },
				}),
				q(44919, {	-- A Challenge From Our Enemies
					["sourceQuest"] = 44918,	-- A Message From Our Enemies
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 45.8, SURAMAR },
				}),
				q(43502, {	-- A Change of Seasons
					["sourceQuest"] = 43362,	-- The Stuff of Dreams
					["provider"] = { "n", 107126 },	-- Valewalker Farodin
					["coord"] = { 36.8, 46.5, SURAMAR },
				}),
				q(44876, {	-- A Dance With Dragons
					["sourceQuest"] = 44875,	-- The Art of Flow
					["provider"] = { "n", 115701 },	-- Stellagosa
					["coord"] = { 59.8, 13.9, AZSUNA },
				}),
				q(40424, {	-- A Desperate Journey
					["sourceQuest"] = 40469,	-- Final Preparations
					["provider"] = { "n", 100185 },	-- Iadreth
					["coord"] = { 34.3, 56.1, SURAMAR },
				}),
				q(40625, {	-- A Different Source
					["provider"] = { "n", 101076 },	-- Kyrtos
					["coord"] = { 26.7, 70.7, SURAMAR },
					["groups"] = { i(132472) },	-- Fel Deconstructor (QI!)
				}),
				q(40328, {	-- A Fate Worse Than Dying
					["sourceQuests"] = {
						40901,	-- Grimwing the Devourer (non-DH)
						44490,	-- Grimwing the Devourer (DH)
					},
					["provider"] = { "n", 99890 },	-- Lyana Darksorrow
					["coord"] = { 30.0, 69.4, SURAMAR },
				}),
				q(44152, {	-- A Growing Crisis
					["sourceQuest"] = 43318,	-- Ly'leth's Champion
					["provider"] = { "n", 107126 },	-- Valewalker Farodin
					["coord"] = { 36.5, 46.8, SURAMAR },
					-- used to require revered reputation, but that was changed in a later patch
				}),
				q(45262, {	-- A Message From Ly'leth
					["sourceQuests"] = {
						45277,	-- Insurrection: Waxing Crescent
						44814,	-- Waning Refuge
					},
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.7, SURAMAR },
					["groups"] = { i(143597) },	-- Fruit of the Arcan'dor (QI!)
				}),
				q(44918, {	-- A Message From Our Enemies
					["sourceQuest"] = 45268,	-- The Advisor and the Arcanist
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 45.8, SURAMAR },
				}),
				q(42728, {	-- A Mlrglrmg For Grlmrgl
					["sourceQuest"] = 42688,	-- Mrgls of Endearment
					["provider"] = { "n", 107302 },	-- Pearlhunter Phin
					["coord"] = { 15.2, 52.4, SURAMAR },
				}),
				q(41149, {	-- A Re-Warding Effort
					["sourceQuest"] = 40012,	-- An Old Ally
					["provider"] = { "n", 109022 },	-- Arcane Ward
					["coord"] = { 30.6, 40.0, SURAMAR },
				}),
				q(45269, {	-- A Taste of Freedom
					["sourceQuests"] = {
						45287,	-- Insurrection: Breaking the Nighthold
						45064,	-- Felborne No More
					},
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 45.8, SURAMAR },
					["groups"] = { i(143597) },	-- Fruit of the Arcan'dor (QI!)
				}),
				q(45266, {	-- A United Front
					["sourceQuests"] = {
						45281,	-- Insurrection: March on Suramar
						44790,	-- Trial by Demonfire
					},
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.7, SURAMAR },
					-- TODO:  may also require A Dance With Dragons (44876)
					["groups"] = { i(143597) },	-- Fruit of the Arcan'dor (QI!)
				}),
				q(40401, {	-- A Way Back In
					["provider"] = { "n", 100185 },	-- Iadreth
					["coord"] = { 34.3, 56.1, SURAMAR },
					-- TODO: does this have a sourceQuest?
				}),
				q(41426, {	-- Against Their Will
					["sourceQuest"] = 40927,	-- Jandvik's Last Hope
					["provider"] = { "n", 102390 },	-- Toryl
					["coord"] = { 75.9, 52.7, SURAMAR },
				}),
				q(40727, {	-- All Along the Waterways
					["sourceQuest"] = 41878,	-- The Gondolier
					["provider"] = { "n", 107225 },	-- Deline
					["coord"] = { 51.1, 76.1, SURAMAR },
				}),
				q(43567, {	-- All In
					["sourceQuests"] = {
						43565,	-- Bring Home the Beacon
						43563,	-- Ephemeral Manastorm Projector
						43564,	-- Flow Control
					},
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 37.1, 46.5, SURAMAR },
				}),
				q(41307, {	-- All That Glitters
					["sourceQuest"] = 41123,	-- An Artisan's Mark
					["provider"] = { "n", 103175 },	-- Lespin Silverleaf
					["coord"] = { 41.5, 71.2, SURAMAR },
					["groups"] = {
						o(247609, {	-- Arcane Glowlamp
							["coords"] = {
								{ 38.4, 86.0, SURAMAR },
								{ 39.0, 85.4, SURAMAR },
								{ 39.1, 83.4, SURAMAR },
								{ 39.8, 81.7, SURAMAR },
								{ 39.8, 86.4, SURAMAR },
								{ 40.3, 84.0, SURAMAR },
								{ 40.4, 79.9, SURAMAR },
								{ 40.5, 80.0, SURAMAR },
								{ 40.7, 81.6, SURAMAR },
							},
							["groups"] = { i(136537) },	-- Arcane Glowlamp (QI!)
						}),
						i(141949),	-- Everburning Arcane Glowlamp (QI!)
					},
				}),
				q(40744, {	-- An Ancient Recipe
					["sourceQuest"] = 42230,	-- The Valewalker's Burden
					["provider"] = { "n", 99065 },	-- Thaedris Feathersong
					["coord"] = { 45.6, 40.8, SURAMAR },
					["groups"] = { i(132881) },	-- Harpy Talon (QI!)
				}),
				q(41123, {	-- An Artisan's Mark
					["provider"] = { "n", 103175 },	-- Lespin Silverleaf
					["coord"] = { 41.5, 71.2, SURAMAR },
					-- TODO: figure out the sourceQuest. this isn't always available
					-- ["sourceQuest"] =
					["groups"] = { i(134041) },	-- Bloodspattered Signet Ring (QI!)
				}),
				q(40012, {	-- An Old Ally
					["sourceQuest"] = 42229,	-- Shal'Aran
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.9, SURAMAR },
				}),
				q(44672, {	-- Ancient Mana
					["sourceQuest"] = 42229,	-- Shal'Aran
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.9, SURAMAR },
					["groups"] = {
						i(141652),	-- Mana Divining Stone
						o(260247, {	-- Ancient Mana Chunk
							["coord"] = { 35.8, 55.7, SURAMAR },
							["questID"] = 44677,	-- Ancient Mana Tutorial Chest A
						}),
						o(260248, {	-- Ancient Mana Chunk
							["coord"] = { 35.1, 51.5, SURAMAR },
							["questID"] = 44678,	-- Ancient Mana Tutorial Chest B
						}),
						o(260249, {	-- Ancient Mana Chunk
							["coord"] = { 33.3, 49.0, SURAMAR },
							["questID"] = 44679,	-- Ancient Mana Tutorial Chest C
						}),
					},
				}),
				q(44052, {	-- And They Will Tremble
					["sourceQuest"] = 42792,	-- Make Your Mark
					["provider"] = { "n", 107598 },	-- Vanthir
					["coord"] = { 48.4, 83.2, SURAMAR },
				}),
				q(44156, {	-- Another Arcan'dor Closes...
					["sourceQuests"] = {
						43361,	-- Fragments of Disaster
						43360,	-- The Shardmaidens
					},
					["provider"] = { "n", 112967 },	-- Valewalker Farodin
					["coord"] = { 42.3, 14.9, 684 },
				}),
				q(38692, {	-- Answering Aggression
					["sourceQuest"] = 38695,	-- Crackdown
					["provider"] = { "n", 114948 },	-- Silgryn
					["coord"] = { 47.8, 82.9, SURAMAR },
				}),
				q(41231, {	-- Apex Predator
					["sourceQuest"] = 41216,	-- Survival of the Fittest
					["provider"] = { "n", 111019 },	-- Nighteyes
					["coord"] = { 47.9, 52.2, SURAMAR },
				}),
				q(43568, {	-- Arcan'dor, Gift of the Ancient Magi
					["sourceQuest"] = 43567,	-- All In
					["provider"] = { "n", 107126 },	-- Valewalker Farodin
					["coord"] = { 36.8, 46.5, SURAMAR },
					["groups"] = {
						o(253081, {	-- Fruit of the Arcan'dor
							["coord"] = { 36.8, 46.6, SURAMAR },
							["groups"] = { i(140315) },	-- Fruit of the Arcan'dor (QI!)
						}),
					},
				}),
				q(40324, {	-- Arcane Communion
					["sourceQuests"] = {
						42147,	-- First Contact
						41138,	-- Feeding Shal'Aran
					},
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 37.0, 46.2, SURAMAR },
				}),
				q(40009, {  -- Arcane Thirst
					["sourceQuest"] = 40123,	-- The Nightborne Pact
					["provider"] = { "n", 98312 },	-- First Arcanist Thalyssra
					["coord"] = { 35.3, 47.3, SURAMAR },
					["groups"] = {
						i(141667),	-- Ancient Keeper's Brooch
						o(245126, {	-- Crystallized Ancient Mana
							["coord"] = { 37.0, 46.5, SURAMAR },
							["groups"] = { i(129979) },	-- Crystallized Ancient Mana (QI!)
						}),
						i(121804),	-- Cloak of the Everliving Keeper
					},
				}),
				q(43569, {	-- Arluin's Request
					["sourceQuest"] = 43567,	-- All In
					["provider"] = { "n", 107598 },	-- Vanthir
					["coord"] = { 36.4, 46.6, SURAMAR },
				}),
				q(44861, {	-- Arming the Rebels (A)
					["sourceQuests"] = {
						44928,	-- Something's Not Quite Right...
						44858,	-- Trolling Them
					},
					["provider"] = { "n", 114838 },	-- Tyrande Whisperwind
					["coord"] = { 41.6, 51.5, SURAMAR },
					["races"] = ALLIANCE_ONLY,
				}),
				q(44862, {	-- Arming the Rebels (H)
					["sourceQuests"] = {
						44928,	-- Something's Not Quite Right...
						44860,	-- Trolling Them
					},
					["provider"] = { "n", 114841 },	-- Lady Liadrin
					["coord"] = { 40.4, 53.0, SURAMAR },
					["races"] = HORDE_ONLY,
				}),
				q(43352, {	-- Asset Security
					["sourceQuest"] = 42840,	-- If Words Don't Work...
					["provider"] = { "n", 107253 },	-- Arluin
					["coord"] = { 48.9, 73.4, SURAMAR },
				}),
				q(40412, {	-- Azoran Must Die
					["sourceQuests"] = {
						41098,	-- Shard of Kozak
						41097,	-- Shard of Vorgos
					},
					["qgs"] = {
						100823,	-- Lyana Darksorrow
						100053,	-- Lyana Darksorrow
					},
					["coord"] = { 31.0, 85.0, SURAMAR },
				}),
				q(41107, {	-- Bad Apples
					["description"] = "Must be disguised as a Nightborne.",
					["provider"] = { "n", 103131 },	-- Keelay Moongrow
					["coord"] = { 47.2, 56.5, SURAMAR },
					["groups"] = {
						o(247023, {	-- Shadowbloom
							["coords"] = {
								{ 36.8, 56.7, SURAMAR },
								{ 37.1, 55.6, SURAMAR },
								{ 37.2, 53.4, SURAMAR },
								{ 37.4, 52.2, SURAMAR },
								{ 37.5, 56.7, SURAMAR },
								{ 37.9, 57.5, SURAMAR },
								{ 38.1, 54.3, SURAMAR },
								{ 38.1, 55.9, SURAMAR },
								{ 38.6, 58.9, SURAMAR },
								{ 38.7, 56.4, SURAMAR },
								{ 38.8, 57.5, SURAMAR },
							},
							["groups"] = { i(134014) },	-- Shadowbloom (QI!)
						}),
					},
				}),
				q(40227, {	-- Bad Intentions
					["sourceQuests"] = {
						40744,	-- An Ancient Recipe
						40266,	-- The Lost Advisor
					},
					["provider"] = { "n", 99093 },	-- Thaedris Feathersong
					["coord"] = { 49.1, 43.8, SURAMAR },
				}),
				q(42837, {  -- Balance to Spare
					["sourceQuest"] = 42835,	-- The Old Fashioned Way
					["provider"] = { "n", 108872 },	-- Margaux
					["coord"] = { 60.6, 56.5, SURAMAR },
					["groups"] = {
						i(139790),	-- Untethered Wyrmling (PET!)
					},
				}),
				q(40320, {	-- Band of Blood Brothers
					["sourceQuest"] = 40908,	-- Jarl Come Back Now
					["provider"] = { "n", 99544 },	-- Brandolf
					["coord"] = { 69.0, 54.1, SURAMAR },
				}),
				q(40332, {	-- Beach Bonfire
					["sourceQuest"] = 40908,	-- Jarl Come Back Now
					["provider"] = { "n", 99559 },	-- Jarl Throndyr
					["coord"] = { 68.9, 54.0, SURAMAR },
					["groups"] = {
						o_repeated({	-- Driftwood
							["coords"] = {
								{ 70.4, 55.4, SURAMAR },
								{ 70.7, 57.1, SURAMAR },
								{ 71.2, 55.4, SURAMAR },
								{ 71.4, 57.3, SURAMAR },
								{ 71.6, 54.5, SURAMAR },
								{ 71.8, 56.4, SURAMAR },
							},
							["groups"] = {
								i(132371), 	-- Driftwood (QI!)
								o(245887),	-- Driftwood
								o(245792),	-- Driftwood
							},
						}),
					},
				}),
				q(45267, {	-- Before the Siege
					["sourceQuests"] = {
						45317,	-- Fighting on All Fronts (legacy)
						45282,	-- Insurrection: Elisande's Retort
						44740,	-- Staging Point
					},
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 46.7, SURAMAR },
					["groups"] = { i(143597) },	-- Fruit of the Arcan'dor (QI!)
				}),
				q(40331, {	-- Bite of the Sashj'tar
					["sourceQuest"] = 40908,	-- Jarl Come Back Now
					["provider"] = { "n", 99544 },	-- Brandolf
					["coord"] = { 69.0, 54.1, SURAMAR },
					["groups"] = { i(132244) },	-- Sashj'tar Fang (QI!)
				}),
				q(41256, {	-- Blast of Spice Fish
					["description"] = "Must be disguised as a Nightborne.",
					["provider"] = { "n", 103131 },	-- Keelay Moongrow
					["coord"] = { 47.2, 56.5, SURAMAR },
				}),
				q(41989, {	-- Blood of My Blood
					["sourceQuest"] = 41834,	-- The Masks We Wear
					["provider"] = { "n", 105342 },	-- Ly'leth Lunastre
					["coord"] = { 43.3, 78.7, SURAMAR },
				}),
				q(40125, {	-- Branch of the Arcan'dor
					["sourceQuest"] = 44156,	-- Another Arcan'dor Closes
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.7, SURAMAR },
				}),
				q(44719, {	-- Breaching the Sanctum
					["sourceQuest"] = 44964,	-- I'll Just Leave This Here
					["provider"] = { "n", 115710 },	-- Chief Telemancer Oculeth
					["coord"] = { 36.6, 45.0, SURAMAR },
					["groups"] = { i(142118) },	-- Telemancy Orbs (QI!)
				}),
				q(44845, {	-- Break An Arm
					["sourceQuests"] = {
						41916,	-- A Better Future
						43810,	-- Down to Business (A)
						43812,	-- Down to Business (H)
						44831,	-- Taking a Promenade (A)
						41607,	-- Taking a Promenade (H)
					},
					["provider"] = { "n", 114908 },	-- First Arcanist Thalyssra
					["coords"] = {
						{ 40.5, 53.1, SURAMAR },
						{ 41.6, 51.6, SURAMAR },
					},
				}),
				q(41709, {	-- Breaking Down the Big Guns
					["sourceQuest"] = 40927,	-- Jandvik's Last Hope
					["provider"] = { "n", 102390 },	-- Toryl
					["coord"] = { 75.9, 52.7, SURAMAR },
					["groups"] = { i(133926 ) },	-- Harpoon Parts (QI!)
				}),
				q(42225, {	-- Breaking the Seal
					["sourceQuest"] = 42224,	-- Cloaked in Moonshade
					["provider"] = { "o", 250383 },	-- Moonshade Relic
					["coord"] = { 17.3, 37.8, SURAMAR },
				}),
				q(43565, {	-- Bring Home the Beacon
					["sourceQuest"] = 43562,	-- Giving It All We've Got
					["provider"] = { "n", 98548 },	-- Chief Telemancer Oculeth
					["coord"] = { 37.1, 46.6, SURAMAR },
					["groups"] = { i(140257) },	-- Advanced Telemancy Beacon (QI!)
				}),
				q(40364, {	-- Bubble Trouble
					["sourceQuest"] = 41606,	-- Finding Brytag
					["provider"] = { "n", 104406 },	-- Brytag
					["coord"] = { 74.9, 63.3, SURAMAR },
					["groups"] = {
						o(248080, {	-- Needle Coral
							["coord"] = { 75.2, 61.9, SURAMAR },
							["groups"] = { i(130944) },	-- Needle Coral (QI!)
						}),
					},
				}),
				q(44636, {	-- Building an Army
					["sourceQuest"] = 42230,	-- The Valewalker's Burden
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 36.8, 46.6, SURAMAR },
				}),
				q(44827, {	-- Citizens' Army
					["sourceQuests"] = {
						44861,	-- Arming the Rebels (A)
						44862,	-- Arming the Rebels (H)
					},
					["provider"] = { "n", 116256 },	-- Victoire
					["coord"] = { 39.7, 51.2, SURAMAR },
				}),
				q(40798, {	-- Cling to Hope
					["sourceQuest"] = 40796,	-- Lingering on the Edge
					["provider"] = { "n", 101848 },	-- Absolon
					["coord"] = { 37.7, 47.8, SURAMAR },
					["groups"] = {
						i(139779),	-- Absolon's Letter (QI!)
					},
				}),
				q(42224, {	-- Cloaked in Moonshade
					["sourceQuest"] = 40325,	-- Scenes from a Memory
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 37.0, 46.2, SURAMAR },
				}),
				q(40830, {	-- Close Enough
					["sourceQuest"] = 40748,	-- Network Security
					["provider"] = { "n", 102142 },	-- Chief Telemancer Oculeth
					["coord"] = { 34.4, 48.7, SURAMAR },
				}),
				q(45261, {	-- Continuing the Cure
					["sourceQuests"] = {
						45272,	-- Insurrection: Missing Persons
						44955,	-- Visitor in Shal'Aran
					},
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 46.7, SURAMAR },
					["groups"] = { i(143597) },	-- Fruit of the Arcan'dor (QI!)
				}),
				q(43314, {	-- Court of Stars: Beware the Fury of a Patient Elf
					["sourceQuest"] = 44053,	-- Friends With Benefits
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.7, SURAMAR },
					["groups"] = { i(140757 ) },	-- Melandrus' Spellstone (QI!)
				}),
				q(38695, {	-- Crackdown
					["sourceQuest"] = 38649,	-- Silence in the City
					["provider"] = { "n", 115710 },	-- Chief Telemancer Oculeth
					["coord"] = { 36.6, 45.0, SURAMAR },
				}),
				q(44843, {	-- Crystal Clearing
					["sourceQuests"] = { -- TODO: verify these
						40391,	-- Take Me To Your Leader (A)
						40632,	-- Take Me To Your Leader (H)
					},
					["provider"] = { "n", 115521 },	-- Sentinel Moonshade
					["coord"] = { 40.6, 64.4, SURAMAR },
				}),
				q(43315, {	-- Death Becomes Him
					["sourceQuest"] = 43311,	-- Or Against Us
					["provider"] = { "n", 107253 },	-- Arluin
					["coord"] = { 48.9, 73.4, SURAMAR },
				}),
				q(40683, {	-- Discovery Requires Experimentation
					["sourceQuest"] = 40625,	-- A Different Source
					["provider"] = { "n", 101076 },	-- Kyrtos
					["coord"] = { 26.7, 70.7, SURAMAR },
					["groups"] = { i(133793) },	-- Felfire Spine (QI!)
				}),
				q(44722, {	-- Disillusioned Defector
					["sourceQuest"] = 45261,	-- Continuing the Cure
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 46.7, SURAMAR },
				}),
				q(41148, {	-- Dispensing Compassion
					["sourceQuest"] = 40746,	-- One of the People
					["provider"] = { "n", 107598 },	-- Vanthir
					["coord"] = { 48.4, 83.2, SURAMAR },
					["groups"] = { i(138308) },	-- Mana Wine Flask (QI!)
				}),
				q(42396, {	-- Do The Thing!
					["provider"] = { "n", 107302 },	-- Pearlhunter Phin
					["coord"] = { 15.8, 54.8, SURAMAR },
					["groups"] = {
						o(250288, {	-- Speckled Pearl
							["coord"] = { 15.9, 54.8, SURAMAR },
							["groups"] = { i(137383) },	-- Speckled Pearl (QI!)
						}),
					},
				}),
				q(43810, {	-- Down to Business (A)
					["sourceQuest"] = 40391,	-- Take Me To Your Leader
					["provider"] = { "n", 114838 },	-- Tyrande Whisperwind
					["coord"] = { 41.6, 51.5, SURAMAR },
					["races"] = ALLIANCE_ONLY,
				}),
				q(43812, {	-- Down to Business (H)
					["sourceQuest"] = 40632,	-- Take Me To Your Leader
					["provider"] = { "n", 114841 },	-- Lady Liadrin
					["coord"] = { 40.4, 53.0, SURAMAR },
					["races"] = HORDE_ONLY,
				}),
				q(41410, {	-- Dry Powder
					["sourceQuest"] = 40927,	-- Jandvik's Last Hope
					["provider"] = { "n", 104586 },	-- Fjolrik
					["coord"] = { 77.5, 59.7, SURAMAR },
					["groups"] = {
						o(247851, {	-- Sealed Powder Keg
							["coords"] = {
								{ 75.8, 61.8, SURAMAR },
								{ 75.9, 60.6, SURAMAR },
								{ 76.1, 59.6, SURAMAR },
								{ 76.4, 63.6, SURAMAR },
								{ 76.5, 61.7, SURAMAR },
								{ 76.7, 65.0, SURAMAR },
								{ 77.0, 61.3, SURAMAR },
								{ 77.4, 64.0, SURAMAR },
							},
							["groups"] = { i(135478) },	-- Sealed Powder Keg (QI!)
						}),
					},
				}),
				q(45263, {	-- Eating Before the Meeting
					["sourceQuests"] = {
						45278,	-- Insurrection: An Elven Problem
						45316,	-- Stabilizing Suramar
					},
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 46.7, SURAMAR },
					["groups"] = { i(143597) },	-- Fruit of the Arcan'dor (QI!)
				}),
				q(43310, {	-- Either With Us
					["sourceQuest"] = 43309,	-- The Perfect Opportunity
					["provider"] = { "n", 107632 },	-- Ly'leth Lunastre
					["coord"] = { 47.8, 82.9, SURAMAR },
				}),
				q(41146, {	-- Elegant Design
					["sourceQuests"] = {
						41465,	-- Estate Jewelry: A Braggart's Brooch
						41466,	-- Estate Jewelry: Haute Claw-ture
					},
					["provider"] = { "n", 103175 },	-- Lespin Silverleaf
					["coord"] = { 41.5, 71.2, SURAMAR },
				}),
				q(41494, {	-- Eminent Grow-main
					["sourceQuest"] = 41469,	-- Return to Irongrove Retreat
					["provider"] = { "n", 103569 },	-- Mythandros Irongrove
					["coord"] = { 26.1, 31.3, SURAMAR },
					["groups"] = { i(136680) },	-- Ritual Bundle (QI!)
				}),
				q(40315, {	-- End of the Line
					["sourceQuests"] = {
						40578,	-- Paying Respects
						40306,	-- The Last Chapter
					},
					["provider"] = { "n", 99575 },	-- Thaedris Feathersong
					["coord"] = { 45.0, 30.9, SURAMAR },
				}),
				q(43563, {	-- Ephemeral Manastorm Projector
					["sourceQuest"] = 43562,	-- Giving It All We've Got
					["provider"] = { "n", 103155 },	-- Arcanist Valtrois
					["coord"] = { 37.0, 46.5, SURAMAR },
					["groups"] = { i(139689) },	-- Warp-Resistant Plating (QI!)
				}),
				q(44752, {	-- Essence Triangulation
					["sourceQuest"] = 44742,	-- Tavernkeeper's Fate
					["provider"] = { "n", 115248 },	-- First Arcanist Thalyssra
					["coord"] = { 43.3, 78.7, SURAMAR },
				}),
				q(41465, {	-- Estate Jewelry: A Braggart's Brooch
					["sourceQuests"] = {
						41307,	-- All That Glitters
						41320,	-- Pry It From Their Cold, Feral Claws
					},
					["provider"] = { "n", 103175 },	-- Lespin Silverleaf
					["coord"] = { 41.5, 71.2, SURAMAR },
					["groups"] = { i(135508) },	-- Lespin's Brooch (QI!)
				}),
				q(41466, {	-- Estate Jewelry: Haute Claw-ture
					["sourceQuests"] = {
						41307,	-- All That Glitters
						41320,	-- Pry It From Their Cold, Feral Claws
					},
					["provider"] = { "n", 103175 },	-- Lespin Silverleaf
					["coord"] = { 41.5, 71.2, SURAMAR },
					["groups"] = {
						o(247050, {	-- Mornath's Curio Chest
							["coord"] = { 42.5, 76.8, SURAMAR },
							["groups"] = { i(135509) },	-- "The Claw Clacks for Thee" (QI!)
						}),
						i(136577),	-- Mornath's Key (QI!)
					},
				}),
				q(45066, {	-- Experimental Instability
					["sourceQuest"] = 45065,	-- Survey the City
					["provider"] = { "n", 115710 },	-- Chief Telemancy Oculeth
					["coord"] = { 36.6, 45.0, SURAMAR },
				}),
				q(40883, {	-- Fate of the Guard
					["sourceQuest"] = 42228,	-- The Hidden City (42230 was too far)
					["provider"] = { "n", 101766 },	-- Thalrenus Rivertree
					["coord"] = { 27.8, 21.1, SURAMAR },
				}),
				q(45372, {	-- Fate of the Nightborne
					["sourceQuest"] = 45420,	-- The Nighthold: The Eye of Aman'Thul
					["provider"] = { "n", 115710 },	-- Chief Telemancer Oculeth
					["coord"] = { 36.6, 45.1, SURAMAR },
					["groups"] = {
						i(142436),	-- Arcanist's Manasaber (MOUNT!)
					},
				}),
				q(40321, {	-- Feathersong's Redemption
					["sourceQuest"] = 40319,	-- The Final Ingredient
					["provider"] = { "n", 99575 },	-- Thaedris Feathersong
					["coord"] = { 45.0, 30.9, SURAMAR },
					["groups"] = { i(130260 ) },	-- Thaedris's Elixir (QI!)
				}),
				q(43106, {	-- Feed Oculeth
					["sourceQuest"] = 44691,	-- Hungry Work
					["provider"] = { "n", 98548 },	-- Chief Telemancer Oculeth
					["coords"] = {
						{ 36.6, 45.1, SURAMAR },
						{ 36.6, 47.0, SURAMAR },
					},
					["isDaily"] = true,
				}),
				q(43994, {	-- Feed Thalyssra
					["sourceQuest"] = 42229,	-- Shal'Aran -- TODO: verify. Fairly irrelevant, but worth figuring out for the sake of accuracy
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 36.9, 46.6, SURAMAR },
					["isDaily"] = true,
				}),
				q(43995, {	-- Feed Valtrois
					["sourceQuest"] = 41138,	-- Feeding Shal'Aran -- TODO: verify. Fairly irrelevant, but worth figuring out for the sake of accuracy
					["provider"] = { "n", 103155 },	-- Arcanist Valtrois
					["coord"] = { 37.0, 46.3, SURAMAR },
					["isDaily"] = true,
				}),
				q(41138, {	-- Feeding Shal'Aran
					["sourceQuest"] = 41028,	-- Power Grid
					["provider"] = { "n", 102600 },	-- Arcanist Valtrois
					["coord"] = { 36.5, 46.9, SURAMAR },
				}),
				q(45265, {	-- Feeding the Rebellion
					["sourceQuests"] = {
						44845,	-- Break An Arm
						45280,	-- Insurrection: Crafting War
					},
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.7, SURAMAR },
					["groups"] = { i(143597) },	-- Fruit of the Arcan'dor (QI!)
				}),
				q(40919, {	-- Fel Bent for Leather
					["sourceQuest"] = 40694,	-- One Small Step for Magic
					["provider"] = { "n", 101076 },	-- Kyrtos
					["coord"] = { 26.7, 70.7, SURAMAR },
					["groups"] = {
						i(133925),	-- Fel Lash (QI!)
						i(133780),	-- Felbat Hide Scraps (QI!)
					},
				}),
				q(45064, {	-- Felborne No More
					["sourceQuests"] = {
						45066,	-- Experimental Instability
						45062,	-- Resisting Arrest
						45065,	-- Survey The City
					},
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 45.8, SURAMAR },
					["groups"] = { i(142491) },	-- Experimental Telemancy Orb (QI!)
				}),
				q(41452, {	-- Feline Frantic
					["provider"] = { "n", 103568 },	-- Mayruna Moonwing
					["coord"] = { 25.6, 30.8, SURAMAR },
				}),
				q(41575, {	-- Felsoul Teleporter Online!
					["provider"] = { "o", 252107 },	-- Unpowered Telemancy Beacon
					["coord"] = { 53.6, 36.7, 682 },	-- Felsoul Hold
				}),
				q(41474, {	-- Fertilizing the Future
					["sourceQuest"] = 41473,	-- Redhoof the Ancient
					["provider"] = { "n", 103569 },	-- Mythandros Irongrove
					["coord"] = { 28.3, 29.7, SURAMAR },
				}),
				q(45317, {	-- Fighting on All Fronts
					["provider"] = { "n", 115039 },	-- Archmage Khadgar
					["u"] = REMOVED_FROM_GAME,
				}),
				q(40469, {	-- Final Preparations
					["sourceQuest"] = 40401,	-- A Way Back In
					["provider"] = { "n", 100192 },	-- Astoril
					["coord"] = { 41.3, 60.7, SURAMAR },
					["groups"] = {
						o(245507, {	-- Supply Cache
							["coords"] = {
								{ 40.4, 68.8, SURAMAR },
								{ 40.7, 62.0, SURAMAR },
								{ 41.2, 65.2, SURAMAR },
								{ 41.3, 63.8, SURAMAR },
								{ 41.6, 69.3, SURAMAR },
								{ 41.7, 58.9, SURAMAR },
								{ 41.7, 60.8, SURAMAR },
								{ 42.0, 65.8, SURAMAR },
								{ 42.1, 58.0, SURAMAR },
								{ 42.6, 62.4, SURAMAR },
								{ 42.7, 60.0, SURAMAR },
								{ 42.7, 64.7, SURAMAR },
								{ 42.9, 63.6, SURAMAR },
								{ 43.2, 60.8, SURAMAR },
								{ 43.4, 58.5, SURAMAR },
								{ 44.2, 60.2, SURAMAR },
							},
							["groups"] = { i(132177) },	-- Stashed Supplies (QI!)
						}),
					},
				}),
				q(41606, {	-- Finding Brytag
					["sourceQuest"] = 40927,	-- Jandvik's Last Hope
					["provider"] = { "n", 104630 },	-- Kell
					["coord"] = { 75.8, 52.5, SURAMAR },
				}),
				q(42147, {	-- First Contact
					["sourceQuest"] = 42079,	-- Masquerade
					["provider"] = { "n", 105342 },	-- Ly'leth Lunastre
					["coord"] = { 43.3, 78.7, SURAMAR },
					["groups"] = {
						i(137011),	-- Corked Bottle (QI!)
						i(137010),	-- Half-Full Bottle of Arcwine
					},
				}),
				q(40334, {	-- Fisherman's Tonic
					["sourceQuests"] = {
						40320,	-- Band of Blood Brothers
						40332,	-- Beach Bonfire
						40331,	-- Bite of the Sashj'tar
					},
					["provider"] = { "n", 102334 },	-- Brandolf
					["coord"] = { 72.2, 59.0, SURAMAR },
					["groups"] = {
						i(133960),	-- Axetail Eyeball (QI!)
						i(133961),	-- Sashj'tar Air Bladder (QI!)
						i(133962),	-- Siren Blood (QI!)
					},
				}),
				q(43564, {	-- Flow Control
					["sourceQuest"] = 43562,	-- Giving It All We've Got
					["provider"] = { "n", 103155 },	-- Arcanist Valtrois
					["coord"] = { 37.0, 46.5, SURAMAR },
				}),
				q(43361, {	-- Fragments of Disaster
					["sourceQuest"] = 44152,	-- A Growing Crisis
					["provider"] = { "n", 112967 },	-- Valewalker Farodin
					["coord"] = { 42.3, 14.8, 684 },
					["groups"] = {
						o(252010, {	-- Crystallized Bough
							i(139340),	-- Crystallized Bark (QI!)
						}),
					},
				}),
				q(40308, {	-- Fragments of Memory
					["sourceQuest"] = 40227,	-- Bad Intentions
					["provider"] = { "o", 245688 },	-- Shattered Burial Urn
					["coord"] = { 49.1, 34.3, SURAMAR },
					["groups"] = { i(130212) },	-- Tel'anor Memento (QI!)
				}),
				q(40898, {	-- Fresh Meat
					["sourceQuests"] = {
						40297,	-- Lyana Darksorrow (not demon hunter)
						44489,	-- Lyana Darksorrow (demon hunter)
					},
					["provider"] = { "n", 99514 },	-- Lyana Darksorrow
					["coord"] = { 30.8, 59.1, SURAMAR },
					["groups"] = { i(133743) },	-- Fresh Fel-Flesh (QI!)
				}),
				q(42722, {  -- Friends in Cages
					["sourceQuest"] = 40745,	-- Shift Change
					["provider"] = { "n", 108063 },	-- Korine
					["coord"] = { 44.2, 73.0, SURAMAR },
					["groups"] = {
						i(138301),	-- Control Orb (QI!
						--
						i(130209, {	-- Never Ending Toy Chest (TOY!)
							i(140753),	-- Half Eaten Candy Bar
						}),
					},
				}),
				q(42487, {	-- Friends On the Outside
					["sourceQuest"] = 42486,	-- Little One Lost
					["provider"] = { "n", 107598 },	-- Vanthir
					["coord"] = { 48.4, 83.2, SURAMAR },
					["groups"] = { i(138389) },	-- Gift-Wrapped Bottle of Arcwine (QI!)
				}),
				q(44053, {	-- Friends With Benefits
					["sourceQuest"] = 43318,	-- Ly'leth's Champion
					["provider"] = { "n", 111903 },	-- Lunastre Attendant
					["coord"] = { 47.8, 82.8, SURAMAR },
				}),
				q(41258, {	-- Fruit of the Doom
					["sourceQuests"] = {
						41107,	-- Bad Apples
						41256,	-- Blast of Spice Fish
					},
					["provider"] = { "n", 103131 },	-- Keelay Moongrow
					["coord"] = { 47.2, 56.5, SURAMAR },
				}),
				q(44738, {	-- Full Might of the Elves
					["sourceQuest"] = 44739,	-- Ready for Battle
					["provider"] = { "n", 114909 },	-- Archmage Khadgar
					["coord"] = { 41.0, 51.7, SURAMAR },
					["groups"] = {
						i(140040),	-- Comet Dust
						i(143749),	-- Corrupted Nightborne Matrix
						i(140078),	-- Crystalized Leypetal
						i(140076),	-- Felborne Energist's Gem
						i(140071),	-- first Page of the Book of Shadows
						i(140077),	-- Goldleaf Arcwine Phial
						i(140072),	-- Headpiece of the Elunian Cycle
						i(140073),	-- Khadgar's Pocket Warmer
						i(140075),	-- Petrified Ancient Bark
						i(140074),	-- Sin'dorei Blood Gems
						i(140069),	-- Trueflight Arrow
					},
				}),
				q(44736, {	-- Gates of the Nighthold
					["sourceQuest"] = 45267,	-- Before the Siege
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.7, SURAMAR },
				}),
				q(43562, {	-- Giving It All We've Got
					["sourceQuest"] = 43502,	-- A Change of Seasons
					["provider"] = { "n", 103155 },	-- Arcanist Valtrois
					["coord"] = { 37.0, 46.2, SURAMAR },
				}),
				q(40307, {	-- Glaive Circumstances
					["sourceQuests"] = {
						40297,	-- Lyana Darksorrow (not demon hunter)
						44489,	-- Lyana Darksorrow (demon hunter)
					},
					["provider"] = { "n", 99514 },	-- Lyana Darksorrow
					["coord"] = { 30.8, 59.1, SURAMAR },
					["groups"] = {
						i(130210),	-- Lyana's Wrathful Warglaive (QI!)
						o(245245, {	-- Vengeful Warglaive
							["coord"] = { 27.2, 59.9, SURAMAR },
							["groups"] = { i(130211) },	-- Lyana's Vengeful Warglaive (QI!)
						}),
					},
				}),
				q(44490, {	-- Grimwing the Devourer (Demon hunter)
					["sourceQuests"] = {
						40898,	-- Fresh Meat
						40307,	-- Glaive Circumstances
					},
					["provider"] = { "n", 99514 },	-- Lyana Darksorrow
					["coord"] = { 30.8, 59.1, SURAMAR },
					["classes"] = { DEMONHUNTER },
					["groups"] = {
						i(133756),	-- Fresh Mound of Flesh (QI!)
						i(134065),	-- Grimwing's Head (QI!)
					},
				}),
				q(40901, {	-- Grimwing the Devourer (All others)
					["sourceQuests"] = {
						40898,	-- Fresh Meat
						40307,	-- Glaive Circumstances
					},
					["provider"] = { "n", 99514 },	-- Lyana Darksorrow
					["coord"] = { 30.8, 59.1, SURAMAR },
					["classes"] = exclude(DEMONHUNTER, ALL_CLASSES),
					["groups"] = {
						i(133756),	-- Fresh Mound of Flesh (QI!)
						i(134065),	-- Grimwing's Head (QI!)
					},
				}),
				q(44562, {	-- Growing Strong
					["sourceQuest"] = 44561,	-- Seed of Hope
					["provider"] = { "n", 107126 },	-- Valewalker Farodin
					["coord"] = { 36.8, 46.5, SURAMAR },
					["minReputation"] = { FACTION_THE_NIGHTFALLEN, HONORED },
				}),
				q(43969, {	-- Hired Help
					["sourceQuest"] = 42839,	-- Seek the Unsavory
					["provider"] = { "n", 107598 },	-- Vanthir
					["coord"] = { 48.4, 83.2, SURAMAR },
				}),
				q(41453, {	-- Homeward Bounding
					["sourceQuest"] = 41452,	-- Feline Frantic
					["provider"] = { "n", 103570 },	-- Mardranel Forestheart
					["coord"] = { 25.6, 30.9, SURAMAR },
				}),
				q(44725, {	-- Hostage Situation
					["sourceQuests"] = {
						44724,	-- Missing Persons
						44723,	-- More Like Me
					},
					["provider"] = { "n", 114948 },	-- Silgryn
					["coord"] = { 52.1, 79.1, SURAMAR },
				}),
				q(42833, {	-- How It's Made: Arcwinee
					["sourceQuest"] = 42832,	-- The Fruit of Our Efforts
					["provider"] = { "n", 108872 },	-- Margaux
					["coord"] = { 56.0, 51.8, SURAMAR },
				}),
				q(44691, {	-- Hungry Work
					["sourceQuest"] = 40830,	-- Close Enough
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.9, SURAMAR },
				}),
				q(44964, {	-- I'll Just Leave This Here
					["sourceQuest"] = 45269,	-- A Taste of Freedom
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 45.8, SURAMAR },
				}),
				q(42840, {	-- If Words Don't Work...
					["sourceQuest"] = 43969,	-- Hired Help
					["provider"] = { "n", 107253 },	-- Arluin
					["coord"] = { 48.9, 73.4, SURAMAR },
				}),
				q(43317, {	-- In the Bag
					["sourceQuests"] = {
						43313,	-- Rumor Has It
						44040,	-- Vote of Confidence
					},
					["provider"] = { "n", 107632 },	-- Ly'leth Lunastre
					["coord"] = { 47.8, 82.9, SURAMAR },
				}),
				q(44726, {	-- In the Business of Souls
					["sourceQuest"] = 44725,	-- Hostage Situation
					["provider"] = { "n", 115067 },	-- Silgryn
					["coord"] = { 24.8, 88.6, SURAMAR },
				}),
				q(45271, {	-- Insurrection
					["isBreadcrumb"] = true,
					["u"] = REMOVED_FROM_GAME,	-- provided by the adventure journal in 7.1
				}),
				q(45278, {	-- Insurrection: An Elven Problem
					["isBreadcrumb"] = true,
					["u"] = REMOVED_FROM_GAME,	-- old adventure guide quest
				}),
				q(45285, {	-- Insurrection: As Strong As Our Will
					["isBreadcrumb"] = true,
					["u"] = REMOVED_FROM_GAME,	-- old adventure guide quest
				}),
				q(45287, {	-- Insurrection: Breaking the Nighthold
					["isBreadcrumb"] = true,
					["u"] = REMOVED_FROM_GAME,	-- old adventure guide quest
				}),
				q(45280, {	-- Insurrection: Crafting War
					["isBreadcrumb"] = true,
					["u"] = REMOVED_FROM_GAME,	-- old adventure guide quest
				}),
				q(45282, {	-- Insurrection: Elisande's Retort
					["isBreadcrumb"] = true,
					["u"] = REMOVED_FROM_GAME,	-- old adventure guide quest
				}),
				q(45281, {	-- Insurrection: March on Suramar
					["isBreadcrumb"] = true,
					["u"] = REMOVED_FROM_GAME,	-- old adventure guide quest
				}),
				q(45272, {	-- Insurrection: Missing Persons
					["isBreadcrumb"] = true,
					["u"] = REMOVED_FROM_GAME,	-- old adventure guide quest
				}),
				q(45277, {	-- Insurrection: Waxing Crescent
					["isBreadcrumb"] = true,
					["u"] = REMOVED_FROM_GAME,	-- old adventure guide quest
				}),
				q(42834, {	-- Intense Concentration
					["sourceQuest"] = 42833,	-- How It's Made: Arcwine
					["provider"] = { "n", 108870 },	-- Sylverin
					["coord"] = { 58.2, 53.0, SURAMAR },
				}),
				q(42227, {	-- Into the Crevasse
					["sourceQuest"] = 42226,	-- Moonshade Holdout
					["provider"] = { "n", 107126 },	-- Valewalker Farodin
					["coord"] = { 17.4, 37.9, SURAMAR },
				}),
				q(41222, {	-- Into The Pit!
					["sourceQuest"] = 41140,	-- Search and Rescue!
					["provider"] = { "n", 103437 },	-- Angus Stormbrew
					["coord"] = { 27.1, 86.0, SURAMAR },
				}),
				q(40927, {	-- Jandvik's Last Hope
					["sourceQuest"] = 41034,	-- Testing the Waters
					["provider"] = { "n", 99948 },	-- Toryl
					["coord"] = { 70.5, 48.8, SURAMAR },
				}),
				q(40908, {	-- Jarl Come Back Now
					["sourceQuest"] = 40907,	-- Removing Obstacles
					["provider"] = { "n", 99948 },	-- Toryl
					["coord"] = { 70.5, 48.8, SURAMAR },
				}),
				q(41760, {	-- Kel'danath's Legacy
					["sourceQuest"] = 41704,	-- Subject 16
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 37.0, 46.2, SURAMAR },
				}),
				q(41877, {	-- Lady Lunastre
					["sourceQuest"] = 42230,	-- The Valewalker's Burden
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 36.8, 46.6, SURAMAR },
				}),
				q(40972, {	-- Last Stand of the Moon Guard
					["sourceQuests"] = {
						40971,	-- Overwhelming Distraction
						40970,	-- The Orchestrator of Our Demise
					},
					["provider"] = { "n", 101766 },	-- Thalrenus Rivertree
					["coord"] = { 30.0, 10.3, SURAMAR },
				}),
				q(40965, {	-- Lay Waste, Lay Mines
					["sourceQuest"] = 40964,	-- The Rift Between
					["provider"] = { "n", 101768 },	-- Lothrius Mooncaller
					["coord"] = { 36.4, 22.3, SURAMAR },
					["groups"] = {
						i(133882),	-- Trap Rune (QI!)
					},
				}),
				q(44830, {	-- Learning From the Dead
					["sourceQuests"] = {
						44861,	-- Arming the Rebels (A)
						44862,	-- Arming the Rebels (H)
					},
					["provider"] = { "n", 115499 },	-- Silgryn
					["coord"] = { 39.9, 50.9, SURAMAR },
					["groups"] = {
						o_repeated({
							["coords"] = {
								{ 39.9, 52.1, VALSHARAH },
								{ 40.4, 55.7, VALSHARAH },
								{ 41.0, 50.6, VALSHARAH },
								{ 41.0, 56.4, VALSHARAH },
								{ 41.2, 50.8, VALSHARAH },
								{ 41.4, 53.2, VALSHARAH },
								{ 41.6, 49.8, VALSHARAH },
								{ 42.1, 52.2, VALSHARAH },
								{ 42.3, 51.9, VALSHARAH },
								{ 42.4, 50.1, VALSHARAH },
								{ 43.1, 53.7, VALSHARAH },
								{ 43.3, 50.1, VALSHARAH },
								{ 43.4, 46.6, VALSHARAH },
								{ 43.6, 52.1, VALSHARAH },
								{ 43.8, 54.2, VALSHARAH },
								{ 44.3, 52.1, VALSHARAH },
								{ 44.5, 49.6, VALSHARAH },
							},
							["groups"] = {
								i(142258),	-- Book of Tactics (QI!)
								o(266117),	-- The Rook's Gambit
								o(266118),	-- The Raven's Prey
								o(266119),	-- Jungle Warfare: The Troll Problem
								o(266120),	-- Zandalari - The True Enemy
								o(266122),	-- Voodoo, Geomancy, and the Magic of Peasants
								o(266123),	-- Spellbreaking, the Art of Shieldbashing
							},
						}),
					},
				}),
				q(44492, {	-- Leyline Apprentice
					["description"] = "Must restore 3 Leyline feeds to get this quest.",
					["provider"] = { "n", 103155 },	-- Arcanist Valtrois
					["coord"] = { 37.0, 46.2, SURAMAR },
				}),
				q(43587, {	-- Leyline Feed: Elor'shan
					["sourceQuests"] = { 41138 },	-- Feeding Shal'Aran
					["provider"] = { "o", 252258 },	-- Leyline Feed
					["coords"] = {
						{ 65.9, 42.0, SURAMAR },	-- cave entrance
						{ 48.0, 48.5, 686 },	-- Elor'shan
					},
				}),
				q(43592, {	-- Leyline Feed: Falanaar Arcway
					["sourceQuests"] = { 41138 },	-- Feeding Shal'Aran
					["provider"] = { "o", 252262 },	-- Leyline Feed
					["coord"] = { 66.5, 52.5, 685 },
				}),
				q(43593, {	-- Leyline Feed: Falanaar Depths
					["sourceQuests"] = { 41138 },	-- Feeding Shal'Aran
					["provider"] = { "o", 252263 },	-- Leyline Feed
					["coords"] = {
						{ 20.5, 50.4, SURAMAR },	-- cave entrance
						{ 57.9, 75.2, 685 },
					},
				}),
				q(43594, {	-- Leyline Feed: Halls of the Eclipse
					["sourceQuests"] = { 41138 },	-- Feeding Shal'Aran
					["provider"] = { "o", 252264 },	-- Leyline Feed
					["coords"] = {
						{ 29.1, 84.6, SURAMAR },	-- cave entrance
						{ 27.2, 86.4, SURAMAR },
					},
				}),
				q(43588, {	-- Leyline Feed: Kel'balor
					["sourceQuests"] = { 41138 },	-- Feeding Shal'Aran
					["provider"] = { "o", 252259 },	-- Leyline Feed
					["coords"] = {
						{ 59.3, 42.9, SURAMAR },
						{ 52.5, 45.1, 687 },
					},
				}),
				q(43591, {	-- Leyline Feed: Ley Station Aethenar
					["sourceQuests"] = { 41138 },	-- Feeding Shal'Aran
					["provider"] = { "o", 252261 },	-- Leyline Feed
					["coords"] = {
						{ 24.2, 19.3, SURAMAR },	-- cave entrance
						{ 50.1, 47.6, 690 },	-- Ley Station Aethenar
					},
					["groups"] = { i(140318) },	-- Leyline Feed Fragment (QI!)
				}),
				q(43590, {	-- Leyline Feed: Ley Station Moonfall
					["sourceQuests"] = { 41138 },	-- Feeding Shal'Aran
					["provider"] = { "o", 252260 },	-- Leyline Feed
					["coords"] = {
						{ 35.7, 24.2, SURAMAR },	-- cave entrance
						{ 54.2, 45.5, 689 },	-- Ley Station Moonfall
					},
					["groups"] = { i(140317) },	-- Broken Leydar Dish (QI!)
				}),
				q(44495, {	-- Leyline Master
					["sourceQuests"] = {
						43587,	-- Leyline Feed: Elor'shan
						43592,	-- Leyline Feed: Falanaar Arcway
						43593,	-- Leyline Feed: Falanaar Depths
						43594,	-- Leyline Feed: Halls of the Eclipse
						43588,	-- Leyline Feed: Kel'balor
						43591,	-- Leyline Feed: Ley Station Aethenar
						43590,	-- Leyline Feed: Ley Station Moonfall
						41028,	-- Power Grid
					},
					["provider"] = { "n", 103155 },	-- Arcanist Valtrois
					["coord"] = { 37.0, 46.2, SURAMAR },
				}),
				q(44493, {	-- Leyline Proficiency
					["description"] = "Must restore 5 Leyline feeds to get this quest.",
					["provider"] = { "n", 103155 },	-- Arcanist Valtrois
					["coord"] = { 36.9, 46.3, SURAMAR },
				}),
				q(44859, {	-- Liadrin's Command
					["sourceQuest"] = 45265,	-- Feeding the Rebellion
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.7, SURAMAR },
					["races"] = HORDE_ONLY,
				}),
				q(40796, {	-- Lingering on the Edge
					["sourceQuest"] = 42229,	-- Shal'Aran -- TODO: verify this
					["provider"] = { "n", 101848 },	-- Absolon
					["coord"] = { 30.3, 47.8, SURAMAR },
				}),
				q(42486, {	-- Little One Lost
					["sourceQuest"] = 42722,	-- Friends in Cages
					["provider"] = { "n", 108063 },	-- Korine
					["coord"] = { 44.2, 73.0, SURAMAR },
				}),
				q(43811, {	-- Lunastre Estate Teleporter Online!
					["provider"] = { "o", 252815 },	-- Unpowered Telemancy Beacon
					["coord"] = { 43.7, 79.3, SURAMAR },
				}),
				q(43318, {	-- Ly'leth's Champion
					["sourceQuest"] = 43317,	-- In the Bag
					["provider"] = { "n", 107632 },	-- Ly'leth Lunastre
					["coord"] = { 43.2, 62.2, SURAMAR },
				}),
				q(44489, {	-- Lyana Darksorrow
					["sourceQuest"] = 42230,	-- The Valewalker's Burden
					["provider"] = { "n", 98801 },	-- Lyana Darksorrow
					["coord"] = { 30.8, 59.1, SURAMAR },
					["classes"] = { DEMONHUNTER },
				}),
				q(40297, {	-- Lyana Darksorrow
					["sourceQuest"] = 42230,	-- The Valewalker's Burden
					["provider"] = { "n", 98801 },	-- Lyana Darksorrow
					["coord"] = { 30.8, 59.1, SURAMAR },
					["classes"] = exclude(DEMONHUNTER, ALL_CLASSES),
				}),
				q(42829, {	-- Make an Entrance
					["sourceQuest"] = 42828,	-- Moths to a Flame
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 36.8, 46.6, SURAMAR },
				}),
				q(41480, {	-- Managazer
					["sourceQuest"] = 41478,	-- The Final Blessing
					["provider"] = { "n", 103571 },	-- Solendra Featherdown
					["coord"] = { 30.3, 30.8, SURAMAR },
				}),
				q(41309, {	-- Mangelrath
					["sourceQuest"] = 41214,	-- Parts Unknown
					["provider"] = { "n", 103437 },	-- Angus Stormbrew
					["coord"] = { 35.8, 70.8, SURAMAR },
				}),
				q(42792, {	-- Make Your Mark
					["sourceQuests"] = {
						42841,	-- A Big Score
						43352,	-- Asset Security
					},
					["provider"] = { "n", 107253 },	-- Arluin
					["coord"] = { 48.9, 73.4, SURAMAR },
				}),
				q(42079, {	-- Masquerade
					["sourceQuest"] = 41989,	-- Blood of My Blood
					["provider"] = { "n", 105342 },	-- Ly'leth Lunastre
					["coord"] = { 43.3, 78.7, SURAMAR },
					["groups"] = { i(136970) },	-- Mask of Mirror Image (QI!)
				}),
				q(41463, {	-- Missing Along the Way
					["sourceQuest"] = 41452,	-- Feline Frantic
					["provider"] = { "n", 103568 },	-- Mayruna Moonwing
					["coord"] = { 25.6, 30.8, SURAMAR },
				}),
				q(44724, {	-- Missing Persons
					["sourceQuest"] = 44722,	-- Disillusioned Defector
					["provider"] = { "n", 114948 },	-- Silgryn
					["coord"] = { 52.1, 79.1, SURAMAR },
					["groups"] = { i(142066) },	-- Legion Communicator (QI!)
				}),
				q(43808, {	-- Moon Guard Teleporter Online!
					["provider"] = { "o", 252814 },	-- Unpowered Telemancy Beacon
					["coord"] = { 30.8, 11.0, SURAMAR },
				}),
				q(42226, {	-- Moonshade Holdout
					["sourceQuest"] = 42225,	-- Breaking the Seal
					["provider"] = { "o", 250383 },	-- Moonshade Relic
					["coord"] = { 17.3, 37.8, SURAMAR },
				}),
				q(41485, {	-- Moonwhisper Rescue
					["sourceQuest"] = 41478,	-- The Final Blessing
					["provider"] = { "n", 103571 },	-- Solendra Featherdown
					["coord"] = { 30.3, 30.8, SURAMAR },
					["groups"] = { i(136605) },	-- Solendra's Compassion (QI!)
				}),
				q(44723, {	-- More Like Me
					["sourceQuest"] = 44722,	-- Disillusioned Defector
					["provider"] = { "n", 114956 },	-- Victoire
					["coord"] = { 52.0, 79.1, SURAMAR },
					["groups"] = { i(142065) },	-- Dusk Lily Sigil (QI!)
				}),
				q(42828, {	-- Moths to a Flame
					["sourceQuest"] = 42488,	-- Thalyssra's Abode
					["provider"] = { "n", 107126 },	-- Valewalker Farodin
					["coord"] = { 36.8, 46.5, SURAMAR },
				}),
				q(44870, {	-- Mouths to Feed
					["sourceQuest"] = 45265,	-- Feeding the Rebellion
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.7, SURAMAR },
				}),
				q(42688, {	-- Mrgls of Endearment
					["sourceQuest"] = 42396,	-- Do The Thing!
					["provider"] = { "n", 107302 },	-- Pearlhunter Phin
					["coord"] = { 15.8, 54.8, SURAMAR },
				}),
				q(41143, {  -- Mglrgrs Of Our Grmlgrlr
					["sourceQuest"] = 42728,	-- A Mlrglrmg For Grlmrgl
					["provider"] = { "n", 108389 },	-- Mrgrlilgrl
					["coord"] = { 15.1, 51.7, SURAMAR },
					["groups"] = {
						i(141879),	-- Berglrgl Perrgl Girggrlf (TOY!)
					},
				}),
				q(41479, {	-- Natural Adversaries
					["sourceQuest"] = 41478,	-- The Final Blessing
					["provider"] = { "n", 103571 },	-- Solendra Featherdown
					["coord"] = { 30.3, 30.8, SURAMAR },
				}),
				q(40748, {	-- Network Security
					["sourceQuest"] = 40747,	-- The Delicate Art of Telemancy
					["provider"] = { "n", 101499 },	-- Chief Telemancer Oculeth
					["coord"] = { 49.3, 47.1, SURAMAR },
				}),
				q(38720, {	-- No Reason to Stay
					["sourceQuest"] = 38695,	-- Crackdown
					["provider"] = { "n", 114948 },	-- Silgryn
					["coord"] = { 47.8, 82.9, SURAMAR },
				}),
				q(45056, {	-- Noressa
					["sourceQuest"] = 40798,	-- Cling to Hope
					["provider"] = { "n", 101848 },	-- Absolon
					["coord"] = { 39.5, 51.1, SURAMAR },
				}),
				q(41464, {	-- Not Here, Not Now, Not Ever
					["sourceQuest"] = 41463,	-- Missing Along the Way
					["provider"] = { "n", 106696 },	-- Kalendros Irongrove
					["coord"] = { 19.5, 22.3, SURAMAR },
					["groups"] = { i(137189) },	-- Satyr Horn (QI!)
				}),
				q(40949, {	-- Not Their Last Stand
					["sourceQuest"] = 40883,	-- Fate of the Guard
					["provider"] = { "n", 106095 },	-- Ivanel Meadowsong
					["coord"] = { 29.6, 18.6, SURAMAR },
				}),
				q(44834, {	-- Nullified
					["sourceQuests"] = {
						40391,	-- Take Me To Your Leader (A)
						40632,	-- Take Me To Your Leader (H)
					},
					["provider"] = { "n", 115517 },	-- Magus Sendath
					["coord"] = { 46.4, 58.1, SURAMAR },
					["groups"] = {
						i(142245),	-- Charged Arcshaper Staff (QI!)
						i(142244),	-- Volatile Construct Core (QI!)
					},
				}),
				q(44873, {	-- Oculeth Ex Machina
					["sourceQuest"] = 44870,	-- Mouths to Feed
					["provider"] = { "n", 115371 },	-- Arcanist Valtrois
					["coord"] = { 37.0, 46.5, SURAMAR },
				}),
				q(40011, {	-- Oculeth's Workshop
					["sourceQuest"] = 42229,	-- Shal'Aran
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.9, SURAMAR },
					["groups"] = { i(132883) },	-- First Arcanist's Token (QI!)
				}),
				q(44753, {	-- On Public Display
					["sourceQuest"] = 44752,	-- Essence Triangulation
					["provider"] = { "n", 115248 },	-- First Arcanist Thalyssra
					["coord"] = { 52.0, 79.1, SURAMAR },
				}),
				q(45260, {	-- One Day at a Time
					["description"] = "You may need to leave Shal'aran before this quest appears.",
					["sourceQuests"] = {
						43568,	-- Arcan'dor, Gift of the Ancient Magi
						43569,	-- Arluin's Request
						45271,	-- Insurrection (legacy)
					},
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 46.7, SURAMAR },
					["groups"] = { i(143597) },	-- Fruit of the Arcan'dor (QI!)
				}),
				q(40746, {	-- One of the People
					["sourceQuest"] = 41877,	-- Lady Lunastre
					["provider"] = { "n", 107632 },	-- Ly'leth Lunastre
					["coord"] = { 47.0, 61.9, SURAMAR },
				}),
				q(40694, {	-- One Small Step for Magic
					["sourceQuests"] = {
						40683,	-- Discovery Requires Experimentation
						40657,	-- The Road to Fel
					},
					["provider"] = { "n", 101076 },	-- Kyrtos
					["coord"] = { 26.8, 70.8, SURAMAR },
				}),
				q(43311, {	-- Or Against Us
					["sourceQuest"] = 43309,	-- The Perfect Opportunity
					["provider"] = { "n", 107598 },	-- Vanthir
					["coord"] = { 47.8, 82.9, SURAMAR },
				}),
				q(40971, {	-- Overwhelming Distraction
					["sourceQuest"] = 40969,	-- Starweaver's Fate
					["provider"] = { "n", 101765 },	-- Syrana Starweaver
					["coord"] = { 32.2, 12.7, SURAMAR },
					["groups"] = {
						i(133999),	-- Inert Crystal (QI!)
					},
				}),
				q(41214, {	-- Parts Unknown
					["sourceQuest"] = 41222,	-- Into The Pit!
					["provider"] = { "n", 103437 },	-- Angus Stormbrew
					["coord"] = { 34.2, 74.0, SURAMAR },
				}),
				q(40578, {	-- Paying Respects
					["sourceQuest"] = 40300,	-- Tools of the Trade
					["provider"] = { "n", 99483 },	-- Thaedris Feathersong
					["coord"] = { 47.2, 33.4, SURAMAR },
				}),
				q(41028, {	-- Power Grid
					["sourceQuest"] = 40010,	-- Tapping the Leylines
					["provider"] = { "n", 102600 },	-- Arcanist Valtrois
					["coord"] = { 39.8, 29.6, 688 },
				}),
				q(40642, {	-- Power! Get The Power!
					["sourceQuest"] = 40694,	-- One Small Step for Magic
					["provider"] = { "n", 101076 },	-- Kyrtos
					["coord"] = { 26.7, 70.7, SURAMAR },
					["groups"] = { i(136592) },	-- Fel Essence (QI!)
				}),
				q(44844, {	-- Powering Down the Portal
					["sourceQuests"] = { -- TODO: verify these
						40391,	-- Take Me To Your Leader (A)
						40632,	-- Take Me To Your Leader (H)
					},
					["provider"] = { "n", 115521 },	-- Sentinel Moonshade
					["coord"] = { 40.6, 64.4, SURAMAR },
				}),
				q(40967, {	-- Precious Little Left
					["sourceQuest"] = 40964,	-- The Rift Between
					["provider"] = { "n", 101768 },	-- Lothrius Mooncaller
					["coord"] = { 36.4, 22.3, SURAMAR },
					["groups"] = {
						o(246704, {	-- Aftermath of the Well
							["coord"] = { 34.1, 17.9, SURAMAR },
							["groups"] = { i(133900) },	-- Aftermath of the Well (QI!)
						}),
						o(246702, {	-- Anthology of the Guard
							["coord"] = { 36.3, 16.8, SURAMAR },
							["groups"] = { i(133898) },	-- Anthology of the Guard (QI!)
						}),
						o(246703, {	-- Magical Manifest of the Moon
							["coord"] = { 34.8, 22.5, SURAMAR },
							["groups"] = { i(133899) },	-- Magical Manifest of the Moon (QI!)
						}),
					},
				}),
				q(41475, {	-- Prongs and Fangs
					["sourceQuest"] = 41473,	-- Redhoof the Ancient
					["provider"] = { "n", 103569 },	-- Mythandros Irongrove
					["coord"] = { 28.3, 29.7, SURAMAR },
				}),
				q(41320, {	-- Pry It From Their Cold, Feral Claws
					["sourceQuest"] = 41123,	-- An Artisan's Mark
					["provider"] = { "n", 103175 },	-- Lespin Silverleaf
					["coord"] = { 41.5, 71.2, SURAMAR },
					["groups"] = { i(134821) },	-- Harpy Necklace (QI!)
				}),
				q(40370, {	-- Purge the Unclean
					["sourceQuest"] = 40368,	-- Turtle Powered
					["provider"] = { "n", 99788 },	-- Morhun Rivertamer
					["coord"] = { 43.4, 41.7, SURAMAR },
					["groups"] = { i(131760) },	-- Cleansing Ritual Focus (QI!)
				}),
				q(40470, {	-- Quality of Life
					["sourceQuest"] = 40424,	-- A Desperate Journey
					["provider"] = { "n", 100331 },	-- Iadreth
					["coord"] = { 37.8, 61.5, SURAMAR },
				}),
				q(41108, {	-- Rain Death Upon Them
					["description"] = "Automatically granted when you mount a hippogryph.",
					["sourceQuests"] = {
						41109,	-- Waiting for Revenge (auto)
						41110,	-- Waiting for Revenge (hippogryph)
					},
				}),
				q(41111, {	-- Rain Death Upon Them
					["sourceQuests"] = {
						41109,	-- Waiting for Revenge (auto)
						41110,	-- Waiting for Revenge (hippogryph)
					},
					["provider"] = { "n", 111605 },	-- Moonfall Riding Hippogryph
					["coord"] = { 32.0, 13.3, SURAMAR },
				}),
				q(44739, {	-- Ready for Battle
					["sourceQuest"] = 45266,	-- A United Front
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 46.7, SURAMAR },
				}),
				q(40968, {	-- Recovering Stolen Power
					["sourceQuest"] = 40963,	-- Take Them in Claw
					["provider"] = { "n", 102425 },	-- Serena Windfeather
					["coord"] = { 31.4, 23.1, SURAMAR },
					["groups"] = { i(133956) },	-- Volatile Spell Focus (QI!)
				}),
				q(44563, {	-- Redemption for the Fallen
					["sourceQuest"] = 44562,	-- Growing Strong
					["provider"] = { "n", 107126 },	-- Valewalker Farodin
					["coord"] = { 36.7, 46.5, SURAMAR },
				}),
				q(41473, {	-- Redhoof the Ancient
					["sourceQuest"] = 41197,	-- You've Got to Be Kitten Me Right Meow
					["provider"] = { "n", 103568 },	-- Mayruna Moonwing
					["coord"] = { 25.6, 30.8, SURAMAR },
				}),
				q(40730, {	-- Redistribution
					["sourceQuest"] = 41878,	-- The Gondolier
					["provider"] = { "n", 107225 },	-- Deline
					["coord"] = { 51.1, 76.1, SURAMAR },
					["groups"] = {
						o_repeated({	-- Bottle of Arcwine
							["groups"] = {
								i(137295),	-- Bottle of Arcwine (QI!)
								o(250239),	-- Bottle of Arcwine
								o(250240),	-- Bottle of Arcwine
								o(254446),	-- Bottle of Arcwine
								o(254643),	-- Bottle of Arcwine
								o(254645),	-- Bottle of Arcwine
								o(254648),	-- Bottle of Arcwine
								o(254650),	-- Bottle of Arcwine
								o(254654),	-- Bottle of Arcwine
							},
						}),
					},
				}),
				q(38694, {	-- Regroup
					["sourceQuests"] = {
						38692,	-- Answering Aggression
						38720,	-- No Reason to Stay
					},
					["provider"] = { "n", 115018 },	-- Silgryn
					["coord"] = { 49.6, 85.3, SURAMAR },
				}),
				q(40907, {	-- Removing Obstacles
					["sourceQuest"] = 42230,	-- The Valewalker's Burden
					["provider"] = { "n", 102309 },	-- Toryl
					["coords"] = {
						{ 64.8, 51.1, SURAMAR },
						{ 66.0, 51.2, SURAMAR },
					},
				}),
				q(45062, {	-- Resisting Arrest
					["sourceQuest"] = 45063,	-- The Felsoul Experiments
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 45.8, SURAMAR },
					["groups"] = { i(142400) },	-- Advanced Targeting Orb (QI!)
				}),
				q(41469, {	-- Return to Irongrove Retreat
					["sourceQuests"] = {
						41480,	-- Managazer
						41485,	-- Moonwhisper Rescue
						41479,	-- Natural Adversaries
					},
					["provider"] = { "n", 103571 },	-- Solendra Featherdown
					["coord"] = { 30.3, 30.8, SURAMAR },
				}),
				q(42838, {	-- Reversal
					["sourceQuests"] = {
						42837,	-- Balance to Spare
						42836,	-- Silkwing Sabotage
					},
					["provider"] = { "n", 108870 },	-- Sylverin
					["coord"] = { 61.3, 55.1, SURAMAR },
				}),
				q(43313, {	-- Rumor Has It
					["sourceQuest"] = 43315,	-- Death Becomes Him
					["provider"] = { "n", 107253 },	-- Arluin
					["coord"] = { 57.1, 60.7, SURAMAR },
				}),
				q(43813, {	-- Sanctum of Order Teleporter Online!
					["provider"] = { "o", 252816 },	-- Unpowered Telemancy Beacon
					["coord"] = { 43.4, 60.6, SURAMAR },
				}),
				q(40326, {	-- Scattered Memories
					["sourceQuest"] = 40012,	-- An Old Ally
					["provider"] = { "o", 245328 },	-- Enchanted Scroll
					["coord"] = { 30.2, 39.6, SURAMAR },
				}),
				q(40325, {	-- Scenes from a Memory
					["sourceQuest"] = 40324,	-- Arcane Communion
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 37.0, 46.2, SURAMAR },
				}),
				q(44832, {	-- Scouting the Breach
					["sourceQuest"] = 45209,	-- Those Scrying Eyes
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 45.8, SURAMAR },
				}),
				q(42223, {	-- Scouting the Crimson Thicket
					["sourceQuest"] = 41494,	-- Eminent Grow-main
					["provider"] = { "n", 103571 },	-- Solendra Featherdown
					["coord"] = { 26.2, 31.2, SURAMAR },
				}),
				q(41140, {	-- Search and Rescue!
					["sourceQuest"] = 41139,	-- The Key Is Around Here Somewhere...
					["provider"] = { "n", 103204 },	-- Angus Stormbrew
					["coord"] = { 28.4, 82.7, SURAMAR },
					["groups"] = {
						o(247398, {	-- Felsoul Keyring
							["coord"] = { 27.5, 88.9, SURAMAR },
							["groups"] = { i(134080) },	-- Felsoul Cage Key (QI!)
						}),
					},
				}),
				q(44561, {	-- Seed of Hope
					["sourceQuest"] = 42230,	-- The Valewalker's Burden
					["provider"] = { "n", 107126 },	-- Valewalker Farodin
					["coord"] = { 36.8, 46.5, SURAMAR },
				}),
				q(42839, {	-- Seek the Unsavory
					["sourceQuest"] = 44084,	-- Vengeance for Margaux
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 36.8, 46.6, SURAMAR },
				}),
				q(42229, {	-- Shal'Aran
					["sourceQuest"] = 40009,	-- Arcane Thirst
					["provider"] = { "n", 98312 },	-- First Arcanist Thalyssra
					["coord"] = { 35.3, 47.3, SURAMAR },
				}),
				q(43582, {	-- Shalassic Park
					["sourceQuest"] = 41231,	-- Apex Predator
					["provider"] = { "n", 111019 },	-- Nighteyes
					["coord"] = { 47.9, 52.2, SURAMAR },
				}),
				q(41098, {	-- Shard of Kozak
					["sourceQuests"] = {
						40328,	-- A Fate Worse Than Dying
						40929,	-- Symbols of Power
					},
					["provider"] = { "n", 99890 },	-- Lyana Darksorrow
					["coord"] = { 30.0, 69.4, SURAMAR },
					["groups"] = { i(134028) },	-- Shard of Kozak (QI!)
				}),
				q(41097, {	-- Shard of Vorgos
					["sourceQuests"] = {
						40328,	-- A Fate Worse Than Dying
						40929,	-- Symbols of Power
					},
					["provider"] = { "n", 99890 },	-- Lyana Darksorrow
					["coord"] = { 30.0, 69.4, SURAMAR },
					["groups"] = { i(134027) },	-- Shard of Vorgos (QI!)
				}),
				q(41001, {	-- Shatter the Sashj'tar
					["sourceQuests"] = {
						41426,	-- Against Their Will
						41709,	-- Breaking Down the Big Guns
						41425,	-- Sunken Foes
					},
					["provider"] = { "n", 102845 },	-- Brandolf
					["coord"] = { 70.5, 49.1, SURAMAR },
				}),
				q(44842, {	-- Shield, Meet Spell
					["sourceQuest"] = 44834,	-- Nullified
					["provider"] = { "n", 115517 },	-- Magus Sendath
					["coord"] = { 46.4, 58.1, SURAMAR },
					["groups"] = {
						i(142260),	-- Arcane Nullifier (QI!)
					},
				}),
				q(40745, {	-- Shift Change
					["sourceQuest"] = 40947,	-- Special Delivery
					["provider"] = { "n", 107997 },	-- Silgryn
					["coord"] = { 48.2, 83.2, SURAMAR },
					["groups"] = { i(138147) },	-- Control Orb (QI!)
				}),
				q(41030, {	-- Sigil Reclamation
					["description"] = "Automated granted when approaching the first fallen Moon Guard member.",
					["sourceQuest"] = 40883,	-- Fate of the Guard
					["coord"] = { 27.4, 17.3, SURAMAR },
					["groups"] = { i(133675) },	-- Moon Guard Sigil (QI!)
				}),
				q(44756, {	-- Sign of the Dusk Lily
					["sourceQuest"] = 44754,	-- Waxing Crescent
					["provider"] = { "n", 115604 },	-- Vanthir
					["coord"] = { 48.8, 67.0, SURAMAR },
				}),
				q(38649, {	-- Silence in the City
					["sourceQuest"] = 45260,	-- One Day at a Time
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 46.7, SURAMAR },
				}),
				q(42836, {	-- Silkwing Sabotage
					["sourceQuest"] = 42835,	-- The Old Fashioned Way
					["provider"] = { "n", 112653 },	-- Sylverin
					["coord"] = { 61.3, 56.0, SURAMAR },
				}),
				q(44727, {	-- Smuggled!
					["sourceQuest"] = 44725,	-- Hostage Situation
					["provider"] = { "n", 115002 },	-- Maribeth
					["coord"] = { 25.7, 88.5, SURAMAR },
				}),
				q(40348, {	-- Something in the Water
					["sourceQuest"] = 40368,	-- Turtle Powered
					["provider"] = { "n", 99788 },	-- Morhun Rivertamer
					["coord"] = { 43.4, 41.7, SURAMAR },
				}),
				q(44928, {	-- Something's Not Quite Right...
					["sourceQuests"] = {
						44859,	-- Liadrin's Command
						44743,	-- Tyrande's Command
					},
					["provider"] = { "n", 114909 },	-- Archmage Khadgar
					["coords"] = {
						{ 40.5, 53.1, SURAMAR },
						{ 41.7, 51.5, SURAMAR },
					},
					["groups"] = { i(142375) },	-- Dispelling Crystal (QI!)
				}),
				q(40947, {	-- Special Delivery
					["sourceQuest"] = 41148,	-- Dispensing Compassion
					["provider"] = { "n", 108411 },	-- Silgryn
					["coord"] = { 48.2, 83.2, SURAMAR },
					["groups"] = {
						i(137299),	-- Nightborne Spellblade (QI!)
						i(137601),	-- Stack of Letters (QI!)
					},
				}),
				q(41499, {	-- Squid Out of Water
					["sourceQuests"] = {
						41426,	-- Against Their Will
						41709,	-- Breaking Down the Big Guns
						41425,	-- Sunken Foes
					},
					["provider"] = { "n", 102845 },	-- Brandolf
					["coord"] = { 70.5, 49.1, SURAMAR },
				}),
				q(45316, {	-- Stabilizing Suramar
					["sourceQuest"] = 44756,	-- Sign of the Dusk Lily
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 46.7, SURAMAR },
				}),
				q(44740, {	-- Staging Point
					["sourceQuest"] = 44738,	-- Full Might of the Elves
					["provider"] = { "n", 115039 },	-- Archmage Khadgar
					["coord"] = { 52.2, 68.7, SURAMAR },
				}),
				q(40969, {	-- Starweaver's Fate
					["sourceQuests"] = {
						40965,	-- Lay Waste, Lay Mines
						40967,	-- Precious Little Left
						41032,	-- Stop the Spell Seekers
					},
					["provider"] = { "n", 101768 },	-- Lothrius Mooncaller
					["coord"] = { 36.4, 22.4, SURAMAR },
				}),
				q(41032, {	-- Stop the Spell Seekers
					["sourceQuest"] = 40964,	-- The Rift Between
					["provider"] = { "n", 101768 },	-- Lothrius Mooncaller
					["coord"] = { 36.4, 22.3, SURAMAR },
				}),
				q(41704, {	-- Subject 16
					["sourceQuest"] = 41702,	-- Written in Stone
					["provider"] = { "n", 104618 },	-- Theryn
					["coord"] = { 20.6, 55.1, SURAMAR },
				}),
				q(41425, {	-- Sunken Foes
					["sourceQuest"] = 40927,	-- Jandvik's Last Hope
					["provider"] = { "n", 104630 },	-- Kell
					["coord"] = { 75.8, 52.5, SURAMAR },
				}),
				q(40956, {	-- Survey Says...
					["sourceQuest"] = 44691,	-- Hungry Work
					["provider"] = { "n", 98548 },	-- Chief Telemancer Oculeth
					["coord"] = { 36.5, 46.9, SURAMAR },
					["groups"] = { i(133897) },	-- Telemancy Beacon (QI!)
				}),
				q(45065, {	-- Survey the City
					["sourceQuest"] = 45067,	-- Telemantic Expanse
					["provider"] = { "n", 115710 },	-- Chief Telemancer Oculeth
					["coord"] = { 36.6, 45.0, SURAMAR },
					["groups"] = { i(142405) },	-- Advanced Telemancy Beacon (QI!)
				}),
				q(41216, {	-- Survival of the Fittest
					["sourceQuest"] = 41215,	-- They Become The Hunted
					["provider"] = { "n", 110987 },	-- Nighteyes
					["coord"] = { 50.6, 56.5, SURAMAR },
					-- TODO: verify this sourceQuest? You rescue nighteyes elsewhere in the zone, but is it separate from this quest?
				}),
				q(40929, {	-- Symbols of Power
					["sourceQuests"] = {
						40901,	-- Grimwing the Devourer (non-DH)
						44490,	-- Grimwing the Devourer (DH)
					},
					["provider"] = { "n", 99890 },	-- Lyana Darksorrow
					["coord"] = { 30.0, 69.4, SURAMAR },
					["groups"] = { i(133807) },	-- Legion Emblem (QI!)
				}),
				q(41762, {	-- Sympathizers Among the Shal'dorei
					["sourceQuest"] = 41760,	-- Kel'danath's Legacy
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 37.0, 46.2, SURAMAR },
				}),
				q(40391, {	-- Take Me To Your Leader (A)
					["sourceQuest"] = 45263,	-- Eating Before the Meeting
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.7, SURAMAR },
					["races"] = ALLIANCE_ONLY,
				}),
				q(40632, {	-- Take Me To Your Leader (H)
					["sourceQuest"] = 45263,	-- Eating Before the Meeting
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.7, SURAMAR },
					["races"] = HORDE_ONLY,
				}),
				q(40963, {	-- Take Them in Claw
					["sourceQuests"] = {
						40883,	-- Fate of the Guard
						40949,	-- Not Their Last Stand
						41030,	-- Sigil Reclamation
					},
					["provider"] = { "n", 101767 },	-- Lyrea Windfeather
					["coord"] = { 33.7, 18.0, SURAMAR },
					["groups"] = { i(139882) },	-- Vial of Hippogryph Pheromones (QI!)
				}),
				q(44831, {	-- Taking a Promenade (A)
					["sourceQuest"] = 40391,	-- Take Me To Your Leader
					["provider"] = { "n", 114963 },	-- Vereesa Windrunner
					["coord"] = { 41.6, 51.6, SURAMAR },
					["races"] = ALLIANCE_ONLY,
				}),
				q(41607, {	-- Taking a Promenade (H)
					["sourceQuest"] = 40632,	-- Take Me To Your Leader
					["provider"] = { "n", 114883 },	-- Grand Magister Rommath
					["coord"] = { 40.5, 53.1, SURAMAR },
					["races"] = HORDE_ONLY,
				}),
				q(40010, {	-- Tapping the Leylines
					["sourceQuest"] = 40956,	-- Survey Says...
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.9, SURAMAR },
				}),
				q(44742, {	-- Tavernkeeper's Fate
					["sourceQuest"] = 45262,	-- A Message From Ly'leth
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.7, SURAMAR },
				}),
				q(43809, {	-- Tel'anor'eporter Online!
					["provider"] = { "o", 252817 },	-- Unpowered Telemancy Beacon
					["coord"] = { 42.0, 35.2, SURAMAR },
				}),
				q(45067, {	-- Telemantic Expanse
					["sourceQuest"] = 44919,	-- A Challenge From Our Enemies
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 45.8, SURAMAR },
				}),
				q(44822, {	-- Temporal Investigations
					["sourceQuest"] = 44736,	-- Gates of the Nighthold
					["provider"] = { "n", 115039 },	-- Archmage Khadgar
					["coord"] = { 54.8, 72.8, SURAMAR },
				}),
				q(41034, {	-- Testing the Waters
					["sourceQuest"] = 40334,	-- Fisherman's Tonic
					["provider"] = { "n", 102381 },	-- Jandvik Warrior (Brandolf)
					["coord"] = { 72.2, 59.0, SURAMAR },
				}),
				q(42488, {	-- Thalyssra's Abode
					["sourceQuest"] = 42487,	-- Friends On the Outside
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 36.8, 46.6, SURAMAR },
					["groups"] = {
						i(138392),	-- Amplifier Fragment (QI!)
						i(138391),	-- Arcane Amplifier (QI!)
					},
				}),
				q(42489, {	-- Thalyssra's Drawers
					["sourceQuest"] = 42488,	-- Thalyssra's Abode
					["provider"] = { "o", 251032 },	-- Armoire
					["coord"] = { 65.6, 62.7, SURAMAR },
					["groups"] = {
						o(251046, {	-- Basket of Clothing
							["coord"] = { 66.5, 63.3, SURAMAR },
							["groups"] = { i(138195) },	-- Thalyssra's Favorite Robe (QI!)
						}),
						o(251034, {	-- Stack of Arcane Tomes
							["coord"] = { 65.9, 64.8, SURAMAR },
							["groups"] = { i(138193) },	-- Stack of Arcane Tomes (QI!)
						}),
						o(251035, {	-- Private Correspondence
							["coord"] = { 65.9, 64.8, SURAMAR },
							["groups"] = { i(138194) },	-- Private Correspondence (QI!)
						}),
					},
				}),
				q(45268, {	-- The Advisor and the Arcanist
					["sourceQuests"] = {
						45285,	-- Insurrection: As Strong As Our Will
						44833,	-- The Seal's Power
					},
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 45.8, SURAMAR },
					["groups"] = { i(143597) },	-- Fruit of the Arcan'dor (QI!)
				}),
				q(42491, {	-- The Arcway: Long Buried Knowledge
					["sourceQuest"] = 44053,	-- Friends With Benefits
					["provider"] = { "n", 103155 },	-- Arcanist Valtrois
					["coord"] = { 37.0, 46.2, SURAMAR },
					["groups"] = { i(138394) },	-- Suramar Leyline Map (QI!)
				}),
				q(42490, {	-- The Arcway: Opening the Arcway
					["sourceQuest"] = 44053,	-- Friends With Benefits
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.7, SURAMAR },
				}),
				q(44875, {	-- The Art of Flow
					["sourceQuest"] = 44874,	-- Unbeleyvable
					["provider"] = { "n", 115693 },	-- Arcanist Valtrois
					["coord"] = { 60.1, 13.9, AZSUNA },
				}),
				q(42366, {	-- The Bigger They Are, The Harder They Fel
					["sourceQuests"] = {
						40919,	-- Fel Bent for Leather
						40642,	-- Power! Get The Power!
						40713,	-- The Black Tome
					},
					["provider"] = { "n", 101076 },	-- Kyrtos
					["coord"] = { 26.7, 70.7, SURAMAR },
				}),
				q(40713, {	-- The Black Tome
					["sourceQuest"] = 40694,	-- One Small Step for Magic
					["provider"] = { "n", 101076 },	-- Kyrtos
					["coord"] = { 26.7, 70.7, SURAMAR },
					["groups"] = { i(132860 ) },	-- The Black Tome (QI!)
				}),
				q(44176, {	-- The Conveniences of Home
					["description"] = "Obtained through Withered Army Training.",
					["provider"] = { "i", 140778 },	-- Traveler's Banking Chest
				}),
				q(40747, {	-- The Delicate Art of Telemancy
					["sourceQuest"] = 40011,	-- Oculeth's Workshop
					["provider"] = { "n", 101499 },	-- Chief Telemancer Oculeth
					["coord"] = { 49.6, 48.1, SURAMAR },
					["groups"] = {
						o(246229, {	-- Cracked Warpsleeve
							["coord"] = { 53.2, 46.8, SURAMAR },
							["groups"] = { i(132894) },	-- Cracked Warpsleeve (QI!)
						}),
						o(246225, {	-- Weathered Telemancy Beacon
							["coord"] = { 51.9, 35.0, SURAMAR },
							["groups"] = { i(132893) },	-- Weathered Telemancy Beacon (QI!)
						}),
					},
				}),
				q(43362, {	-- The Emerald Nightmare: The Stuff of Dreams
					["sourceQuest"] = 44156,	-- Another Arcan'dor Closes...
					["provider"] = { "n", 107126 },	-- Valewalker Farodin
					["coord"] = { 36.5, 46.8, SURAMAR },
					["groups"] = { i(139342) },	-- Purified Life Essence (QI!)
				}),
				q(45063, {	-- The Felsoul Experiments
					["sourceQuest"] = 44919,	-- A Challenge From Our Enemies
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 45.8, SURAMAR },
					["groups"] = { i(142399) },	-- Experimental Targeting Orb (QI!)
				}),
				q(41478, {	-- The Final Blessing
					["sourceQuests"] = {
						41474,	-- Fertilizing the Future
						41475,	-- Prongs and Fangs
					},
					["provider"] = { "n", 103569 },	-- Mythandros Irongrove
					["coord"] = { 28.3, 29.7, SURAMAR },
				}),
				q(40319, {	-- The Final Ingredient
					["sourceQuest"] = 40315,	-- End of the Line
					["provider"] = { "n", 99575 },	-- Thaedris Feathersong
					["coord"] = { 45.0, 30.9, SURAMAR },
					["groups"] = { i(130255 ) },	-- Latara's Bow (QI!)
				}),
				q(42832, {	-- The Fruit of Our Efforts
					["sourceQuest"] = 42829,	-- Make an Entrance
					["provider"] = { "n", 108872 },	-- Margaux
					["coord"] = { 54.5, 52.2, SURAMAR },
				}),
				q(41878, {	-- The Gondolier
					["sourceQuest"] = 41148,	-- Dispensing Compassion
					["provider"] = { "n", 107598 },	-- Vanthir
					["coord"] = { 48.4, 83.2, SURAMAR },
				}),
				q(42228, {	-- The Hidden City
					["sourceQuest"] = 42227,	-- Into the Crevasse
					["provider"] = { "n", 107126 },	-- Valewalker Farodin
					["coord"] = { 48.9, 43.4, 685 },
				}),
				q(41139, {	-- The Key Is Around Here Somewhere...
					["provider"] = { "n", 103204 },	-- Angus Stormbrew
					["coord"] = { 28.4, 82.7, SURAMAR },
					["groups"] = {
						o(247063, {	-- Demonwaste Pile
							["coords"] = {
								{ 28.0, 81.2, SURAMAR },
								{ 28.3, 82.4, SURAMAR },
								{ 28.7, 80.2, SURAMAR },
								{ 28.9, 83.1, SURAMAR },
								{ 29.0, 82.1, SURAMAR },
								{ 29.4, 84.0, SURAMAR },
								{ 29.5, 83.2, SURAMAR },
								{ 29.6, 82.0, SURAMAR },
								{ 30.1, 79.7, SURAMAR },
								{ 30.6, 78.0, SURAMAR },
								{ 30.9, 80.6, SURAMAR },
							},
							["groups"] = { i(134055) },	-- Reinforced Cage Key (QI!)
						}),
					},
				}),
				q(40306, {	-- The Last Chapter
					["sourceQuest"] = 40300,	-- Tools of the Trade
					["provider"] = { "n", 99483 },	-- Thaedris Feathersong
					["coord"] = { 47.2, 33.4, SURAMAR },
					["groups"] = {
						o(245236, {	-- Encyclopedia Botanica
							["coord"] = { 44.0, 32.3, SURAMAR },
							["groups"] = { i(130208) },	-- Encyclopedia Botanica (QI!)
						}),
					},
				}),
				q(40266, {	-- The Lost Advisor
					-- ["sourceQuest"] = 42230,	-- The Valewalker's Burden [Not Required, Discord 2023-7-31]
					["provider"] = { "n", 99065 },	-- Thaedris Feathersong
					["coord"] = { 45.6, 40.8, SURAMAR },
					["groups"] = {
						o(245186, {	-- Clump of Cliffthorn Twigs
							["coords"] = {
								{ 44.1, 39.5, SURAMAR },
								{ 44.4, 40.5, SURAMAR },
								{ 45.1, 40.1, SURAMAR },
								{ 45.5, 39.8, SURAMAR },
								{ 46.3, 41.2, SURAMAR },
								{ 46.8, 39.0, SURAMAR },
								{ 47.1, 41.4, SURAMAR },
								{ 47.4, 38.4, SURAMAR },
								{ 47.4, 40.0, SURAMAR },
							},
							["groups"] = { i(130108) },	-- Cliffthorn (QI!)
						}),
					},
				}),
				q(41834, {	-- The Masks We Wear
					["sourceQuest"] = 41762,	-- Sympathizers Among the Shal'dorei
					["provider"] = { "n", 105071 },	-- Silgryn
					["coord"] = { 40.1, 70.7, SURAMAR },
					["groups"] = {
						o(249021, {	-- Enchanted Party Mask
							["coord"] = { 40.3, 72.5, SURAMAR },
							["groups"] = { i(136600) },	-- Enchanted Party Mask (QI!)
						}),
					},
				}),
				q(41915, {	-- The Master's Legacy
					["sourceQuest"] = 41146,	-- Elegant Design
					["provider"] = { "n", 104394 },	-- Lady Anastae
					["coord"] = { 41.6, 59.9, SURAMAR },
					["groups"] = {
						o(249345, {	-- Overlooked Crate
							["coord"] = { 35.3, 61.6, SURAMAR },
							["groups"] = { i(135507) },	-- Gemcutter's Tome (QI!)
						}),
					},
				}),
				q(40123, {	-- The Nightborne Pact
					["sourceQuest"] = 40008,	-- The Only Way Out is Through
					["provider"] = { "n", 98312 },	-- First Arcanist Thalyssra
					["coord"] = { 35.3, 47.3, SURAMAR },
				}),
				q(42835, {	-- The Old Fashioned Way
					["sourceQuest"] = 42834,	-- Intense Concentration
					["provider"] = { "n", 108870 },	-- Sylverin
					["coord"] = { 58.2, 53.0, SURAMAR },
				}),
				q(41467, {	-- The Only Choice We Can Make
					["sourceQuest"] = 41464,	-- Not here, Not Now, Not Ever
					["provider"] = { "n", 106696 },	-- Kalendros Irongrove
					["coord"] = { 19.5, 22.3, SURAMAR },
					["groups"] = {
						i(135534),	-- Heavy Torch (QI!)
					},
				}),
				q(40008, {	-- The Only Way Out is Through
					["sourceQuest"] = 39987,	-- Trail of Echos
					["provider"] = { "n", 98312 },	-- First Arcanist Thalyssra
					["coord"] = { 34.6, 53.3, SURAMAR },
				}),
				q(40970, {	-- The Orchestrator of Our Demise
					["sourceQuest"] = 40969,	-- Starweaver's Fate
					["provider"] = { "n", 101765 },	-- Syrana Starweaver
					["coord"] = { 32.2, 12.7, SURAMAR },
					["groups"] = {
						i(133924),	-- Astromancer's Keystone (QI!)
					},
				}),
				q(43309, {	-- The Perfect Opportunity
					["sourceQuest"] = 44052,	-- And They Will Tremble
					["provider"] = { "n", 97140 },	-- First Arcanist Thalyssra
					["coord"] = { 36.8, 46.6, SURAMAR },
				}),
				q(45486, {	-- The Reluctant Queen
					["sourceQuests"] = {
						45482,	-- Arcane: Fate of the Tideskorn
						47051,	-- Assassination: Fate of the Tideskorn
						47049,	-- Demonology: Fate of the Tideskorn
						47050,	-- Enhancement: Fate of the Tideskorn
						47052,	-- Retribution: Fate of the Tideskorn
					},
					["provider"] = { "n", 116568 },	-- Sigryn
					["coord"] = { 76.3, 50.1, SURAMAR },
					["classes"] = {
						MAGE,		-- Arcane
						PALADIN,	-- Retribution
						ROGUE,		-- Assassination
						SHAMAN,		-- Enhancement
						WARLOCK,	-- Demonology
					},
				}),
				q(40964, {	-- The Rift Between
					["sourceQuest"] = 40963,	-- Take Them in Claw
					["provider"] = { "n", 102425 },	-- Serena Windfeather
					["coord"] = { 31.4, 23.1, SURAMAR },
				}),
				q(40657, {	-- The Road to Fel
					["sourceQuest"] = 40625,	-- A Different Source
					["provider"] = { "n", 101076 },	-- Kyrtos
					["coord"] = { 26.7, 70.7, SURAMAR },
					["groups"] = {
						o_repeated({	-- Fel-Infused Plate
							["coords"] = {
								{ 25.6, 61.4, SURAMAR },
								{ 26.1, 59.0, SURAMAR },
								{ 27.1, 64.1, SURAMAR },
								{ 27.6, 66.8, SURAMAR },
								{ 27.8, 65.4, SURAMAR },
								{ 28.0, 61.7, SURAMAR },
								{ 28.0, 64.5, SURAMAR },
								{ 28.4, 60.3, SURAMAR },
								{ 29.0, 64.7, SURAMAR },
								{ 29.0, 65.0, SURAMAR },
								{ 29.2, 62.0, SURAMAR },
								{ 29.7, 60.4, SURAMAR },
								{ 30.0, 60.3, SURAMAR },
								{ 31.0, 59.4, SURAMAR },
								{ 31.8, 63.3, SURAMAR },
							},
							["groups"] = {
								i(132761),	-- Fel-Infused Plate (QI!)
								o(245940),	-- Fel-Infused Plate
								o(246525),	-- Fel-Infused Plate
								o(246527),	-- Fel-Infused Plate
							},
						}),
					},
				}),
				q(44833, {	-- The Seal's Power
					["sourceQuest"] = 44832,	-- Scouting the Breach
					["provider"] = { "n", 115524 },	-- Arcanist Valtrois
					["coord"] = { 44.0, 59.7, SURAMAR },
				}),
				q(41618, {	-- The Seawarden
					["sourceQuest"] = 41606,	-- Finding Brytag
					["provider"] = { "n", 104406 },	-- Brytag
					["coord"] = { 74.9, 63.3, SURAMAR },
				}),
				q(43360, {	-- The Shardmaidens
					["sourceQuest"] = 44152,	-- A Growing Crisis
					["qgs"] = {
						112967,	-- Valewalker Farodin
						110538,	-- Valewalker Farodin (mobileNPC)
					},
					["coord"] = { 42.3, 14.8, 684 },
				}),
				q(42230, {	-- The Valewalker's Burden
					["sourceQuest"] = 42228,	-- The Hidden City
					["provider"] = { "n", 108101 },	-- Ancient Seed
					["coord"] = { 35.1, 54.3, 684 },
				}),
				q(42889, {	-- The Way Back Home
					["sourceQuest"] = 38694,	-- Regroup
					["provider"] = { "o", 265532 },	-- Telemancy Beacon
					["coord"] = { 51.9, 78.7, SURAMAR },
				}),
				q(41215, {	-- They Become The Hunted
					["sourceQuest"] = 40617,	-- Turn Around, Nighteyes
					["provider"] = { "n", 106897 },	-- Nighteyes
					["coord"] = { 61.8, 49.1, SURAMAR },
				}),
				q(43312, {	-- Thinly Veiled Threats
					["sourceQuest"] = 43310,	-- Either With Us
					["provider"] = { "n", 110679 },	-- Aurore
					["coord"] = { 57.5, 57.5, SURAMAR },
				}),
				q(45209, {	-- Those Scrying Eyes
					["sourceQuest"] = 44822,	-- Temporal Investigations
					["provider"] = { "n", 115506 },	-- First Arcanist Thalyssra
					["coord"] = { 54.9, 72.7, SURAMAR },
				}),
				q(41409, {	-- Timing Is Everything
					["sourceQuest"] = 41410,	-- Dry Powder
					["provider"] = { "n", 104586 },	-- Fjolrik
					["coord"] = { 77.5, 59.7, SURAMAR },
				}),
				q(40300, {	-- Tools of the Trade
					["sourceQuest"] = 40227,	-- Bad Intentions
					["provider"] = { "n", 99093 },	-- Thaedris Feathersong
					["coord"] = { 49.1, 43.8, SURAMAR },
					["groups"] = {
						o(247339, {	-- Chest of Shrouds
							["coord"] = { 52.5, 31.5, SURAMAR },
							["groups"] = { i(134092) },	-- Chest of Shrouds (QI!)
						}),
						o(245682, {	-- Incense Bundle
							["coord"] = { 47.8, 34.5, SURAMAR },
							["groups"] = { i(132255) },	-- Bundle of Preserving Incense (QI!)
						}),
						o(245681, {	-- Sealed Jar
							["coord"] = { 50.0, 39.0, SURAMAR },
							["groups"] = { i(132253) },	-- Flask of Sacred Oil (QI!)
						}),
					},
				}),
				q(41230, {	-- Trapping Evolved
					["sourceQuest"] = 40617,	-- Turn Around, Nighteyes
					["provider"] = { "n", 100775 },	-- Lilryia Dawnwind
					["coord"] = { 61.8, 49.0, SURAMAR },
					["groups"] = {
						o(247412, {	-- Arcane Trap
							["coords"] = {
								{ 60.0, 42.4, SURAMAR },
								{ 60.0, 46.3, SURAMAR },
								{ 60.3, 44.7, SURAMAR },
								{ 60.6, 45.0, SURAMAR },
								{ 60.7, 46.1, SURAMAR },
								{ 60.8, 43.0, SURAMAR },
								{ 61.4, 43.8, SURAMAR },
								{ 61.5, 42.9, SURAMAR },
								{ 62.0, 42.1, SURAMAR },
							},
							["groups"] = { i(134128) },	-- Arcane Trap (QI!)
						}),
						i(141670),	-- Arcane Trap Power Core
					},
				}),
				q(44790, {	-- Trial by Demonfire
					["sourceQuests"] = {
						44827,	-- Citizens' Army
						44830,	-- Learning From the Dead
						44829,	-- We Need Weapons
					},
					["provider"] = { "n", 115499 },	-- Silgryn
					["coord"] = { 39.9, 50.9, SURAMAR },
				}),
				q(44858, {	-- Trolling Them (A)
					["sourceQuest"] = 44743,	-- Tyrande's Command
					["provider"] = { "n", 114838 },	-- Tyrande Whisperwind
					["coord"] = { 41.6, 51.5, SURAMAR },
					["races"] = ALLIANCE_ONLY,
				}),
				q(44860, {	-- Trolling Them (H)
					["sourceQuest"] = 44859,	-- Liadrin's Command
					["provider"] = { "n", 114841 },	-- Lady Liadrin
					["coord"] = { 40.4, 53.0, SURAMAR },
					["races"] = HORDE_ONLY,
				}),
				q(41462, {	-- Trouble Has Huge Feet
					["provider"] = { "i", 137179 },	-- Grotesque Ettin Leather
					["coord"] = { 21.7, 28.7, SURAMAR },
					["cr"] = 104220,	-- Starving Ettin
				}),
				q(40617, {	-- Turn Around, Nighteyes
					["sourceQuest"] = 42230,	-- The Valewalker's Burden
					["provider"] = { "n", 100775 },	-- Lilryia Dawnwind
					["coord"] = { 61.8, 49.0, SURAMAR },
					-- TODO: 42223 possibly a breadcrumb here?
					["groups"] = { i(134120 ) },	-- Collar of Domination (QI!)
				}),
				q(40336, {	-- Turning the Tidemistress
					["sourceQuests"] = {
						41426,	-- Against Their Will
						41709,	-- Breaking Down the Big Guns
						41425,	-- Sunken Foes
					},
					["provider"] = { "n", 102410 },	-- Toryl
					["coord"] = { 70.6, 48.7, SURAMAR },
				}),
				q(40368, {	-- Turtle Powered
					["provider"] = { "n", 99788 },	-- Morhun Rivertamer
					["coord"] = { 43.4, 41.7, SURAMAR },
					["groups"] = { i(130942) },	-- Shimmering Snapper Scale (QI!)
				}),
				q(44743, {	-- Tyrande's Command
					["sourceQuest"] = 45265,	-- Feeding the Rebellion
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.5, 46.7, SURAMAR },
					["races"] = ALLIANCE_ONLY,
				}),
				q(44874, {	-- Unbeleyvable
					["sourceQuest"] = 44873,	-- Oculeth Ex Machina
					["provider"] = { "n", 115693 },	-- Arcanist Valtrois
					["coord"] = { 59.8, 14.0, AZSUNA },
				}),
				q(44084, {	-- Vengeance for Margaux
					["sourceQuest"] = 42838,	-- Reversal
					["provider"] = { "n", 108870 },	-- Sylverin
					["coord"] = { 61.3, 55.1, SURAMAR },
				}),
				q(44955, {	-- Visitor in Shal'Aran
					["sourceQuest"] = 42889,	-- The Way Back Home
					["provider"] = { "n", 115736 },	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 46.7, SURAMAR },
				}),
				q(44040, {	-- Vote of Confidence
					["sourceQuest"] = 43312,	-- Thinly Veiled Threats
					["provider"] = { "n", 110679 },	-- Aurore
					["coord"] = { 57.5, 57.5, SURAMAR },
				}),
				q(41109, {	-- Waiting for Revenge
					["description"] = "Automatically granted after looting the |cFFFFD700Volatile Spell Focus|r.",
					["sourceQuest"] = 40968,	-- Recovering Stolen Power
					["groups"] = { i(133956) },	-- Volatile Spell Focus (QI!)
				}),
				q(41110, {	-- Waiting for Revenge
					["sourceQuest"] = 40968,	-- Recovering Stolen Power
					["provider"] = { "n", 111605 },	-- Moonfall Riding Hippogryph
					["coord"] = { 32.0, 13.3, SURAMAR },
				}),
				q(44814, {	-- Waning Refuge
					["sourceQuests"] = {
						44726,	-- In the Business of Souls
						44727,	-- Smuggled!
					},
					["provider"] = { "n", 115067 },	-- Silgryn
					["coord"] = { 24.8, 88.6, SURAMAR },
				}),
				q(44051, {	-- Wasted Potential
					["sourceQuest"] = 42486,	-- little One Lost
					["provider"] = { "n", 111900 },	-- Rosaine
					["coord"] = { 47.9, 81.5, SURAMAR },
				}),
				q(44754, {	-- Waxing Crescent
					["sourceQuest"] = 44753,	-- On Public Display
					["provider"] = { "n", 115557 },	-- First Arcanist Thalyssra
					["coord"] = { 52.2, 79.0, SURAMAR },
					["groups"] = {
						i(142261),	-- Fruit of the Arcan'dor (QI!)
						i(142281),	-- Thoramir's Control Orb (QI!)
					},
				}),
				q(44829, {	-- We Need Weapons
					["sourceQuests"] = {
						44861,	-- Arming the Rebels (A)
						44862,	-- Arming the Rebels (H)
					},
					["provider"] = { "n", 115342 },	-- Chief Telemancer Oculeth
					["coord"] = { 39.8, 51.3, SURAMAR },
				}),
				q(41702, {	-- Written in Stone
					["sourceQuest"] = 40326,	-- Scattered Memories
					["provider"] = { "o", 247694 },	-- Kel'danath's Knapsack
					["coord"] = { 20.9, 52.2, SURAMAR },
					["groups"] = { i(136271) },	-- Spellstone of Kel'danath (QI!)
				}),
				q(41197, {  -- You've Got to Be Kitten Me Right Meow
					["sourceQuest"] = 41453,	-- Homeward Bounding
					["provider"] = { "n", 103570 },	-- Mardranel Forestheart
					["coord"] = { 21.4, 30.6, SURAMAR },
					["groups"] = { i(139791) },	-- Lurking Owl Kitten (PET!)
				}),
				q(40762, {	-- Zealot's Dues
					["provider"] = { "i", 136851 },	-- Commander Domitille's Helm
					["coords"] = {
						{ 35.3, 13.1, SURAMAR },
						{ 35.9, 18.4, SURAMAR },
					},
					["cr"] = 106275,	-- Commander Domitille
					-- This quest item was confirmed to drop multiple times in 9.0.5, it has not been removed from game.
				}),
			}),
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	m(BROKEN_ISLES, {
		m(SURAMAR, {
			n(FACTIONS, {
				n(EMISSARY_QUESTS, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {
					q(46799),	-- Paragon of the Nightfallen
				})),
			}),
			n(QUESTS, {
				q(40975),	-- Arluin Bribe Tracking - give Arluin 800 ancient mana during "If Words Don't Work..." (questID 42840)
				q(42649),	-- Arluin Bribe Tracker 2 - give Arluin 1200 ancient mana during "Or Against Us" (questID 43311)
				q(42443),	-- Arluin Wants In (Tracking Quest) - Arluin shows up at Shal'Aran after you turn in "Giving It All We've Got" (questID 43562) and completing the follow-up quests
				q(41137),	-- Fall of the King - triggeres when killing Cora'kar
				q(43703),	-- Hub Mana Tree Tracking - Stage 01
				q(43704),	-- Hub Mana Tree Tracking - Stage 02
				q(43706),	-- Hub Mana Tree Tracking - Stage 03 - triggered after turning in "Make Your Mark" (questID 42792)
				q(43707),	-- Hub Mana Tree Tracking - Stage 04 - triggered after turning in "Make Your Mark" (questID 42792)
				q(43708),	-- Hub Mana Tree Tracking - Stage 05 - triggered after turning in "Make Your Mark" (questID 42792)
				q(43589),	-- Leyline 03
				q(40317),	-- Tree Destroyed
				q(41212),	-- Triggered when turning in "Scattered Memories". Maybe a quest from beta?
				q(44071),	-- Vignette: Maia the White Wolf - secondary trigger for Maia the White rare
				q(41117),	-- Seen Thalrenus Iceblock Shenanigans - saw Thalrenus Rivertree break out of iceblock at Moonfall Approach
				q(40765),	-- Syrana Tracker - triggers during "Starweaver's Fate" (questID 40969) when finding Syrana and she kills the Imperial Conjurers
				q(43566),	-- Withered Progress
				-- #if AFTER LEGION
				q(24661),	-- Theryn Fed Tracker - (reused ID from WotLK NYI quest)
				-- #endif
			}),
		}),
	}),
})));
