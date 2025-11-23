---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local PRIESTESS_OF_THE_MOON_RACES = ALLIANCE_ONLY;
-- #if BEFORE 7.2.5
PRIESTESS_OF_THE_MOON_RACES = { NIGHTELF };
-- #endif

root(ROOTS.Zones, m(KALIMDOR, {
	m(TELDRASSIL, {
		["lore"] =
			-- #if AFTER CATA
			"Teldrassil is the starter zone for the night elves. Players learn how times have changed since Malfurion Stormrage has returned to Darnassus and how Fandrel Staghelm was corrupted. It is a lush spiritual zone, set high on an island that is also a great tree. It is home to the elven capital of Darnassus.",
			-- #else
			"In the past few years, the night elves have moved their capital to an island off northwest Kalimdor. Here, the Circle of the Ancients and the wise druids pooled their power to create a great tree akin to the World Tree, but on a smaller scale.\n\nThey called this tree Teldrassil, meaning “Crown of the Earth,” and built their city of Darnassus atop it. The island takes the name of the tree as well, and a twilite forest now covers it.",
			-- #endif
		["icon"] = 236740,
		["maps"] = {
			59,	-- Fel Rock
			60,	-- Ban'ethil Barrow Den
			61,	-- Ban'ethil Barrow Den
		},
		["groups"] = {
			m(SHADOWGLEN, {
				["lore"] = "Shadowglen is the starting area for night elves in the northeast part of Teldrassil, just north of Starbreeze Village. A small twilight field, bathed in a quiet dusk, the area is dominated by the great tree Aldrassil, which lies at the clearing's center. It has class trainers for all night elf classes. Another notable location is Shadowthread Cave, which lies in the region's extreme northwest. The area is ringed by mountains; the only gap is to the south, where the path headed to Dolanaar parts the mountain range.",
				["icon"] = 236449,
				-- #if BEFORE 6.0.0
				-- CRIEVE NOTE: I actually have no idea when they added the proper mapID for this subzone.
				["zone-text-areas"] = {
					188,	-- Shadowglen
					256,	-- Aldrassil
					257,	-- Shadowthread Cave
				},
				-- #endif
				["maps"] = { 58 },	-- Shadowthread Cave
				["groups"] = {
					battlepets({
						["sym"] = {{"select","speciesID",
							447,	-- Fawn (PET!)
						}},
						["groups"] = {
							pet(507),	-- Crested Owl (PET!)
						},
					}),
					n(QUESTS, {
						q(28734, {	-- A Favor for Melithar
							["sourceQuest"] = 28714,	-- Fel Moss Corruption
							["qg"] = 2079,	-- Ilthalaine
							["coords"] = {
								-- #if AFTER MOP
								-- Every once in a while he changes the location, stays in place for an undisclosed amount of time and changes back.
								{ 45.6, 74.5, SHADOWGLEN },
								{ 46.3, 73.5, SHADOWGLEN },
								-- #else
								{ 58.0, 39.2, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(3519, {	-- A Friend in Need
							["sourceQuest"] = 4495,	-- A Good Friend
							["qg"] = 8584,	-- Iverron
							["coord"] = { 54.6, 33.0, TELDRASSIL },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 2,
						}),
						q(4495, {	-- A Good Friend
							["qg"] = 8583,	-- Dirania Silvershine
							["coord"] = { 60.8, 42, TELDRASSIL },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 2,
						}),
						q(26946, {	-- A Rogue's Advantage (Night Elf)
							["sourceQuest"] = 3118,	-- Encrypted Sigil
							["qg"] = 3594,	-- Frahun Shadewhisper <Rogue Trainer>
							["coords"] = {
								-- #if AFTER MOP
								{ 49.2, 53.2, SHADOWGLEN },
								-- #else
								{ 58.9, 33.9, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { NIGHTELF },
							["classes"] = { ROGUE },
							["groups"] = {
								-- #if BEFORE MOP
								-- #else
								objective(2, {	-- 0/3 Practice using Eviscerate
									["provider"] = { "n", 44614 },	-- Training Dummy
								}),
								-- #endif
							},
						}),
						q(26947, {	-- A Woodman's Training (Night Elf)
							["sourceQuest"] = 3117,	-- Etched Sigil
							["qg"] = 3596,	-- Ayanna Everstride <Hunter Trainer>
							["coords"] = {
								-- #if AFTER MOP
								{ 49.2, 60.5, SHADOWGLEN },
								-- #else
								{ 58.9, 35.7, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { NIGHTELF },
							["classes"] = { HUNTER },
							["groups"] = {
								-- #if BEFORE MOP
								-- #else
								objective(2, {	-- 0/5 Practice Steady Shot
									["provider"] = { "n", 44614 },	-- Training Dummy
								}),
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, q(77568, {	-- A Hunter's Strength
							["qg"] = 3596,	-- Ayanna Everstride <Hunter Trainer>
							["coord"] = { 58.6, 40.6, TELDRASSIL },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { HUNTER },
							["races"] = { NIGHTELF },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Chimera Shot
									["provider"] = { "i", 206168 },	-- Rune of the Chimera
									["coord"] = { 56.8, 26.6, TELDRASSIL },
									["cr"] = 1994,	-- Githyiss the Vile
								}),
								recipe(410121),	-- Engrave Gloves - Chimera Shot
								i(2125),	-- Cracked Leather Gloves
							},
						})),
						applyclassicphase(SOD_PHASE_ONE, q(77575, {	-- Amidst the Shadowed Webs
							["qg"] = 3593,	-- Alyissia <Warrior Trainer>
							["coord"] = { 59.6, 38.4, TELDRASSIL },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { WARRIOR },
							["races"] = { NIGHTELF },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Victory Rush
									["provider"] = { "i", 204806 },	-- Rune of Victory Rush
									["coord"] = { 56.8, 31.6, TELDRASSIL },
									["cr"] = 1986,	-- Webwood Spider
								}),
								recipe(403470),	-- Engrave Gloves - Victory Rush
								i(2385),	-- Tarnished Chain Gloves
							},
						})),
						-- #endif
						q(26940, {	-- Arcane Missiles [Cata] / Frost Nova [MoP+] (Night Elf)
							["sourceQuest"] = 26841,	-- Forbidden Sigil
							["qg"] = 43006,	-- Rhyanda <Mage Trainer>
							["coords"] = {
								-- #if AFTER MOP
								{ 47.4, 59.7, SHADOWGLEN },
								-- #else
								{ 58.4, 35.5, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { NIGHTELF },
							["classes"] = { MAGE },
							["groups"] = {
								-- #if BEFORE MOP
								-- #else
								objective(2, {	-- 0/2 Practice using Frost Nova [MoP+]
									["provider"] = { "n", 44614 },	-- Training Dummy
								}),
								-- #endif
							},
						}),
						q(31168, {	-- Calligraphed Sigil
							["sourceQuest"] = 28714,	-- Fel Moss Corruption
							["providers"] = {
								{ "n", 2077 },	-- Melithar Staghelm
								{ "i", 85205 },	-- Calligraphed Sigil
							},
							["coord"] = { 45.8, 73.0, SHADOWGLEN },
							["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
							["races"] = { NIGHTELF, WORGEN },
							["classes"] = { MONK },
						}),
						q(921, {	-- Crown of the Earth (1/6)
							["sourceQuest"] = 920,	-- Tenaron's Summons
							["qg"] = 3514,	-- Tenaron Stormgrip
							["coord"] = { 59, 39.4, TELDRASSIL },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/1 Filled Crystal Phial
									["providers"] = {
										{ "i", 5184 },	-- Filled Crystal Phial
										{ "i", 5185 },	-- Crystal Phial
									},
									["coord"] = { 59.94, 33.07, TELDRASSIL },
								}),
							},
						}),
						q(928, {	-- Crown of the Earth (2/6)
							["sourceQuest"] = 921,	-- Crown of the Earth (1/6)
							["providers"] = {
								{ "n", 3514 },	-- Tenaron Stormgrip
								{ "i", 5186 },	-- Partially Filled Vessel
							},
							["coord"] = { 59, 39.4, TELDRASSIL },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
						}),
						q(28715, {	-- Demonic Thieves
							["sourceQuests"] = {
								28734,	-- A Favor for Melithar
								28713,	-- The Balance of Nature
							},
							["qg"] = 2077,	-- Melithar Staghelm
							["coords"] = {
								-- #if AFTER MOP
								{ 45.9, 72.9, SHADOWGLEN },
								-- #else
								{ 58.0, 38.8, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/5 Melithar's Stolen Bags
									["providers"] = {
										{ "i",  46700 },	-- Melithar's Stolen Bags
										{ "o", 195074 },	-- Melithar's Stolen Bags
									},
									["coords"] = {
										-- #if AFTER MOP
										{ 33.3, 77.4, SHADOWGLEN },
										-- #else
										{ 54.4, 39.5, TELDRASSIL },
										-- #endif
									},
								}),
								i(46753, {	-- Melithar's Supply Bag
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(2159, {	-- Dolanaar Delivery
							["providers"] = {
								{ "n", 6780 },	-- Porthannius
								{ "i", 7627 },	-- Dolanaar Delivery
							},
							["coords"] = {
								-- #if AFTER MOP
								{ 54.6, 84.7, SHADOWGLEN },
								-- #elseif AFTER CATA
								{ 60.2, 41.6, TELDRASSIL },
								-- #else
								{ 61.2, 47.6, TELDRASSIL },
								-- #endif
							},
							["races"] = ALLIANCE_ONLY,
						}),
						q(3118, {	-- Encrypted Sigil
							["sourceQuests"] = {
								-- #if AFTER CATA
								28714,	-- Fel Moss Corruption
								-- #else
								457,	-- The Balance of Nature (2/2)
								-- #endif
							},
							["providers"] = {
								-- #if AFTER CATA
								{ "n", 2077 },	-- Melithar Staghelm
								-- #endif
								{ "n", 2079 },	-- Conservator Ilthalaine
								{ "i", 9551 },	-- Encrypted Sigil
							},
							["coords"] = {
								-- #if AFTER MOP
								{ 45.8, 73, SHADOWGLEN },
								-- #elseif AFTER CATA
								{ 58, 38.8, TELDRASSIL },
								-- #else
								{ 58.6, 44.2, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { NIGHTELF },
							["classes"] = { ROGUE },
						}),
						q(3117, {	-- Etched Sigil
							["sourceQuests"] = {
								-- #if AFTER CATA
								28714,	-- Fel Moss Corruption
								-- #else
								457,	-- The Balance of Nature (2/2)
								-- #endif
							},
							["providers"] = {
								-- #if AFTER CATA
								{ "n", 2077 },	-- Melithar Staghelm
								-- #endif
								{ "n", 2079 },	-- Conservator Ilthalaine
								{ "i", 9567 },	-- Etched Sigil
							},
							["coords"] = {
								-- #if AFTER MOP
								{ 45.8, 73, SHADOWGLEN },
								-- #elseif AFTER CATA
								{ 58, 38.8, TELDRASSIL },
								-- #else
								{ 58.6, 44.2, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { NIGHTELF },
							["classes"] = { HUNTER },
						}),
						q(28714, {	-- Fel Moss Corruption
							["sourceQuest"] = 28713,	-- The Balance of Nature
							["qg"] = 2079,	-- Ilthalaine
							["coords"] = {
								-- #if AFTER MOP
								-- Every once in a while he changes the location, stays in place for an undisclosed amount of time and changes back.
								{ 45.6, 74.5, SHADOWGLEN },
								{ 46.3, 73.5, SHADOWGLEN },
								-- #else
								{ 58.0, 39.2, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Fel Moss
									["provider"] = { "i", 3297 },	-- Fel Moss
									["crs"] = {
										1988,	-- Grell
										1989,	-- Grellkin
									},
								}),
								i(5398),	-- Canopy Leggings
								i(5399),	-- Tracking Boots
								i(11190),	-- Viny Gloves
								i(131816, {	-- Moss-Encrusted Chain Pants
									["timeline"] = { ADDED_7_0_3 },
								}),
							},
						}),
						q(26841, {	-- Forbidden Sigil
							["providers"] = {
								{ "n", 2077 },	-- Melithar Staghelm
								{ "n", 2079 },	-- Conservator Ilthalaine
								{ "i", 60400 },	-- Forbidden Sigil
							},
							["coords"] = {
								-- #if AFTER MOP
								{ 45.9, 72.9, SHADOWGLEN },
								-- #else
								{ 58.0, 38.8, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { NIGHTELF },
							["classes"] = { MAGE },
						}),
						q(3119, {	-- Hallowed Sigil
							["sourceQuests"] = {
								-- #if AFTER CATA
								28714,	-- Fel Moss Corruption
								-- #else
								457,	-- The Balance of Nature (2/2)
								-- #endif
							},
							["providers"] = {
								-- #if AFTER CATA
								{ "n", 2077 },	-- Melithar Staghelm
								-- #endif
								{ "n", 2079 },	-- Conservator Ilthalaine
								{ "i", 9557 },	-- Hallowed Sigil
							},
							["coords"] = {
								-- #if AFTER MOP
								{ 45.8, 73, SHADOWGLEN },
								-- #elseif AFTER CATA
								{ 58, 38.8, TELDRASSIL },
								-- #else
								{ 58.6, 44.2, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { NIGHTELF },
							["classes"] = { PRIEST },
						}),
						q(5622, {	-- In Favor of Elune
							["qg"] = 3595,	-- Shanda <Priest Trainer>
							["coord"] = { 59.2, 40.4, TELDRASSIL },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = { NIGHTELF },
							["classes"] = { PRIEST },
							["isBreadcrumb"] = true,
							["lvl"] = 5,
						}),
						q(28724, {	-- Iverron's Antidote
							["sourceQuest"] = 28723,	-- Priestess of the Moon
							["qg"] = 49479,	-- Dentaria Silverglade
							["coords"] = {
								-- #if AFTER MOP
								{ 42.5, 50.5, SHADOWGLEN },
								-- #else
								{ 57.2, 33.2, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = PRIESTESS_OF_THE_MOON_RACES,
							["groups"] = {
								objective(1, {	-- 0/4 Moonpetal Lily
									["providers"] = {
										{ "i", 10641 },	-- Moonpetal Lily
										{ "o", 152095 },	-- Moonpetal Lily
									},
								}),
								i(10655),	-- Sedgeweed Britches
								i(10656),	-- Barkmail Vest
							},
						}),
						q(3521, {	-- Iverron's Antidote (1/2)
							["sourceQuest"] = 3519,	-- A Friend in Need
							["qg"] = 8583,	-- Dirania Silvershine
							["coord"] = { 60.8, 42, TELDRASSIL },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/7 Hyacinth Mushroom
									["providers"] = {
										{ "i",  10639 },	-- Hyacinth Mushroom
										{ "o", 152094 },	-- Hyacinth Mushroom
									},
									["crs"] = {
										1988,	-- Grell
										1989,	-- Grellkin
									},
								}),
								objective(2, {	-- 0/4 Moonpetal Lily
									["providers"] = {
										{ "i", 10641 },	-- Moonpetal Lily
										{ "o", 152095 },	-- Moonpetal Lily
									},
								}),
								objective(3, {	-- 0/1 Webwood Ichor
									["provider"] = { "i", 10640 },	-- Webwood Ichor
									["cr"] = 1986,	-- Webwood Spider
								}),
							},
						}),
						q(3522, {	-- Iverron's Antidote (2/2)
							["sourceQuest"] = 3522,	-- Iverron's Antidote (1/2)
							["providers"] = {
								{ "n", 8583 },	-- Dirania Silvershine
								{ "i", 10642 },	-- Iverron's Antidote
							},
							["coord"] = { 60.8, 42, TELDRASSIL },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 2,
							["groups"] = {
								i(10655),	-- Sedgeweed Britches
								i(10656),	-- Barkmail Vest
							},
						}),
						q(26945, {	-- Learning New Techniques (Night Elf)
							["sourceQuest"] = 3116,	-- Simple Sigil
							["qg"] = 3593,	-- Alyissia <Warrior Trainer>
							["coords"] = {
								-- #if AFTER MOP
								{ 49.2, 52.4, SHADOWGLEN },
								-- #else
								{ 58.8, 33.7, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { NIGHTELF },
							["classes"] = { WARRIOR },
							["groups"] = {
								-- #if BEFORE MOP
								-- #else
								objective(2, {	-- 0/1 Practice Charge
									["provider"] = { "n", 44614 },	-- Training Dummy
								}),
								-- #endif
							},
						}),
						q(26949, {	-- Healing for the Wounded [Cata] / Learning the Word [MoP+] (Night Elf)
							["sourceQuest"] = 3119,	-- Hallowed Sigil
							["qg"] = 3595,	-- Shanda <Priest Trainer>
							["coords"] = {
								-- #if AFTER MOP
								{ 47.6, 59.4, SHADOWGLEN },
								-- #else
								{ 58.4, 35.5, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { NIGHTELF },
							["classes"] = { PRIEST },
							["groups"] = {
								-- #if BEFORE MOP
								-- #else
								objective(2, {	-- 0/5 Practice Shadow Word: Pain [MoP+]
									["provider"] = { "n", 44614 },	-- Training Dummy
								}),
								-- #endif
							},
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, q(77574, {	-- Meditation on Elune
							["qg"] = 3595,	-- Shanda <Priest Trainer>
							["coord"] = { 59.2, 40.4, TELDRASSIL },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { PRIEST },
							["races"] = { NIGHTELF },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Penance
									["provider"] = { "i", 205951 },	-- Memory of a Troubled Acolyte
									-- ["coord"] = { , TELDRASSIL },	-- TODO: Find the coordinate for the closest moonwell.
									["description"] = "Kneel (/kneel) in the Moonwell to gain a Meditation buff, then use the Rune to complete the quest.",
								}),
								recipe(402862),	-- Engrave Gloves - Penance
								i(711),	-- Tattered Cloth Gloves
							},
						})),
						-- #endif
						q(28730, {	-- Precious Waters
							["sourceQuest"] = 28729,	-- Teldrassil: Crown of Azeroth
							["providers"] = {
								{ "n", 49479 },	-- Dentaria Silverglade
								{ "i", 5184 },	-- Filled Crystal Phial
							},
							["coords"] = {
								-- #if AFTER MOP
								{ 42.5, 50.5, SHADOWGLEN },
								-- #else
								{ 57.2, 33.2, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = PRIESTESS_OF_THE_MOON_RACES,
							["groups"] = {
								i(5395),	-- Woodland Shield
								i(4907),	-- Woodland Tunic
								i(11189),	-- Woodland Robes
								i(131705, {	-- Woodland Chainmail
									["timeline"] = { ADDED_7_0_3 },
								}),
							},
						}),
						q(28723, {	-- Priestess of the Moon
							["sourceQuests"] = {
								28714,	-- Fel Moss Corruption
								28715,	-- Demonic Thieves
							},
							["qg"] = 2079,	-- Ilthalaine
							["coords"] = {
								-- #if AFTER MOP
								-- Every once in a while he changes the location, stays in place for an undisclosed amount of time and changes back.
								{ 45.6, 74.5, SHADOWGLEN },
								{ 46.3, 73.5, SHADOWGLEN },
								-- #else
								{ 58.6, 44.2, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = PRIESTESS_OF_THE_MOON_RACES,
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, q(77571, {	-- Relics of the Kaldorei
							["qg"] = 3597,	-- Mardant Strongoak <Druid Trainer>
							["coord"] = { 58.6, 40.4, TELDRASSIL },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { DRUID },
							["races"] = { NIGHTELF },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Chest - Fury of Stormrage
									["provider"] = { "i", 208414 },	-- Lunar Idol
									["cr"] = 1989,	-- Grellkin
								}),
								recipe(410061),	-- Engrave Chest - Fury of Stormrage
								i(2127),	-- Cracked Leather Vest
							},
						})),
						-- #endif
						q(26948, {	-- Rejuvenating Touch [Cata] / Moonfire [MoP+] (Night Elf)
							["sourceQuest"] = 3120,	-- Verdant Sigil
							["qg"] = 3597,	-- Mardant Strongoak <Druid Trainer>
							["coords"] = {
								-- #if AFTER MOP
								{ 46.6, 56.6, SHADOWGLEN },
								-- #else
								{ 58.2, 34.8, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
							["races"] = { NIGHTELF },
							["classes"] = { DRUID },
							["groups"] = {
								-- #if BEFORE MOP
								-- #else
								objective(2, {	-- 0/1 Practice Moonfire [MoP+]
									["provider"] = { "n", 44614 },	-- Training Dummy
								}),
								-- #endif
							},
						}),
						-- #if NOT ANYCLASSIC
						q(5629, {	-- Returning Home [Teldrassil]
							["altQuests"] = {
								5627,	-- Returning Home [Darnassus]
								5628,	-- Returning Home [Elwynn Forest]
								5630,	-- Returning Home [Dun Morogh]
								5631,	-- Returning Home [Stormwind City]
								5632,	-- Returning Home [Stormwind City]
								5633,	-- Returning Home [Ironforge]
							},
							["qg"] = 3600,	-- Laurna Morninglight <Priest Trainer>
							["coord"] = { 55.6, 56.8, TELDRASSIL },
							["timeline"] = { REMOVED_3_0_2 },
							["classes"] = { PRIEST },
							["races"] = { NIGHTELF },
							["lvl"] = 10,
							-- #if BEFORE 3.0.2
							["groups"] = {
								{
									["recipeID"] = 10797,	-- Starshards (Rank 1)
									["rank"] = 1,
								},
							},
							-- #endif
						}),
						-- #endif
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, q(77573, {	-- Second-Story Work
							["qg"] = 3594,	-- Frahun Shadewhisper <Rogue Trainer>
							["coord"] = { 59.6, 38.6, TELDRASSIL },
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { ROGUE },
							["races"] = { NIGHTELF },
							["lvl"] = 2,
							["groups"] = {
								objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Shadowstrike
									["providers"] = {
										{ "o", 406006 },	-- Idol
										{ "i", 204795 },	-- Rune of Shadowstrike
									},
									["coord"] = { 59.7, 42.6, TELDRASSIL },
								}),
								recipe(400105),	-- Engrave Gloves - Shadowstrike
								i(2125),	-- Cracked Leather Gloves
							},
						})),
						-- #endif
						q(28728, {	-- Signs of Things to Come
							["sourceQuest"] = 28727,	-- Vile Touch
							["qg"] = 49480,	-- Tarindrella (mobileNPC)
							["coords"] = {
								-- #if AFTER MOP
								{ 38.8, 10.4, SHADOWGLEN },
								{ 45.2, 29.0, 58 },	-- Shadowthread Cave
								-- #else
								{ 58.6, 44.2, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = PRIESTESS_OF_THE_MOON_RACES,
						}),
						q(3116, {	-- Simple Sigil
							["sourceQuests"] = {
								-- #if AFTER CATA
								28714,	-- Fel Moss Corruption
								-- #else
								457,	-- The Balance of Nature (2/2)
								-- #endif
							},
							["providers"] = {
								-- #if AFTER CATA
								{ "n", 2077 },	-- Melithar Staghelm
								-- #endif
								{ "n", 2079 },	-- Conservator Ilthalaine
								{ "i", 9545 },	-- Simple Sigil
							},
							["coords"] = {
								-- #if AFTER MOP
								{ 45.8, 73, SHADOWGLEN },
								-- #elseif AFTER CATA
								{ 58, 38.8, TELDRASSIL },
								-- #else
								{ 58.6, 44.2, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { NIGHTELF, WORGEN },
							["classes"] = { WARRIOR },
						}),
						q(28729, {	-- Teldrassil: Crown of Azeroth
							["sourceQuest"] = 28728,	-- Signs of Things to Come
							["qg"] = 49479,	-- Dentaria Silverglade
							["coords"] = {
								-- #if AFTER MOP
								{ 42.5, 50.5, SHADOWGLEN },
								-- #else
								{ 57.2, 33.2, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = PRIESTESS_OF_THE_MOON_RACES,
							["groups"] = {
								objective(1, {	-- 0/1 Filled Crystal Phial
									["providers"] = {
										{ "i", 5184 },	-- Filled Crystal Phial
										{ "i", 5185 },	-- Crystal Phial
									},
									["coords"] = {
										-- #if AFTER MOP
										{ 50, 28, SHADOWGLEN },
										-- #else
										{ 59, 28, TELDRASSIL },
										-- #endif
									},
								}),
							},
						}),
						q(28731, {	-- Teldrassil: Passing Awareness
							["description"] = "The quest completion marker is placed wrong, go to the crossroad just outside of Darnassus.",
							["sourceQuest"] = 28730,	-- Precious Waters
							["providers"] = {
								{ "n", 3514 },	-- Tenaron Stormgrip
								{ "i", 5186 },	-- Partially Filled Vessel
							},
							["coords"] = {
								-- #if AFTER MOP
								{ 47.2, 55.9, SHADOWGLEN },
								-- #else
								{ 58.4, 34.4, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = PRIESTESS_OF_THE_MOON_RACES,
						}),
						q(920, {	-- Tenaron's Summons
							["sourceQuest"] = 917,	-- Webwood Egg
							["qg"] = 2082,	-- Gilshalan Windwalker
							["coord"] = { 57.8, 41.6, TELDRASSIL },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
						}),
						q(31169, {	-- The Art of the Monk
							["qg"] = 63331,	-- Laoxi
							["coord"] = { 48.6, 52.8, SHADOWGLEN },
							["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
							["races"] = { NIGHTELF, WORGEN },
							["classes"] = { MONK },
						}),
						q(28713, {	-- The Balance of Nature
							["qg"] = 2079,	-- Ilthalaine
							["coords"] = {
								-- #if AFTER MOP
								-- Every once in a while he changes the location, stays in place for an undisclosed amount of time and changes back.
								{ 45.6, 74.5, SHADOWGLEN },
								{ 46.3, 73.5, SHADOWGLEN },
								-- #else
								{ 58.0, 39.2, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/7 Young Nightsaber
									["provider"] = { "n", 2031 },	-- Young Nightsaber
								}),
								i(5394),	-- Archery Training Gloves
								i(131815, {	-- Glen Culler's Grips
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(11187),	-- Stemleaf Bracers
							},
						}),
						q(456, {	-- The Balance of Nature (1/2)
							["qg"] = 2079,	-- Conservator Ilthalaine
							["coord"] = { 58.6, 44.2, TELDRASSIL },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/7 Young Nightsaber
									["provider"] = { "n", 2031 },	-- Young Nightsaber
								}),
								objective(2, {	-- 0/4 Young Thistle Boar
									["provider"] = { "n", 1984 },	-- Young Thistle Boar
								}),
								i(5394),	-- Archery Training Gloves
								i(11187),	-- Stemleaf Bracers
							},
						}),
						q(457, {	-- The Balance of Nature (2/2)
							["sourceQuest"] = 456,	-- The Balance of Nature (1/2)
							["qg"] = 2079,	-- Conservator Ilthalaine
							["coord"] = { 58.6, 44.2, TELDRASSIL },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/7 Mangy Nightsaber
									["provider"] = { "n", 2032 },	-- Mangy Nightsaber
								}),
								objective(2, {	-- 0/7 Thistle Boar
									["provider"] = { "n", 1985 },	-- Thistle Boar
								}),
								i(5405),	-- Draped Cloak
								i(6058),	-- Blackened Leather Belt
							},
						}),
						q(28725, {	-- The Woodland Protector
							["sourceQuest"] = 28724,	-- Iverron's Antidote
							["qg"] = 49479,	-- Dentaria Silverglade
							["coords"] = {
								-- #if AFTER MOP
								{ 42.5, 50.5, SHADOWGLEN },
								-- #else
								{ 57.2, 33.2, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = PRIESTESS_OF_THE_MOON_RACES,
						}),
						q(458, {	-- The Woodland Protector (1/2)
							["qg"] = 2077,	-- Melithar Staghelm
							["coord"] = { 59.8, 42.4, TELDRASSIL },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
						}),
						q(459, {	-- The Woodland Protector (2/2)
							["sourceQuest"] = 458,	-- The Woodland Protector (1/2)
							["qg"] = 1992,	-- Tarindrella
							["coord"] = { 57.8, 45, TELDRASSIL },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Fel Moss
									["provider"] = { "i", 3297 },	-- Fel Moss
									["crs"] = {
										1988,	-- Grell
										1989,	-- Grellkin
									},
								}),
								i(5398),	-- Canopy Leggings
								i(5399),	-- Tracking Boots
								i(11190),	-- Viny Gloves
							},
						}),
						q(3120, {	-- Verdant Sigil
							["sourceQuests"] = {
								-- #if AFTER CATA
								28714,	-- Fel Moss Corruption
								-- #else
								457,	-- The Balance of Nature (2/2)
								-- #endif
							},
							["providers"] = {
								-- #if AFTER CATA
								{ "n", 2077 },	-- Melithar Staghelm
								-- #endif
								{ "n", 2079 },	-- Conservator Ilthalaine
								{ "i", 9580 },	-- Verdant Sigil
							},
							["coords"] = {
								-- #if AFTER MOP
								{ 45.8, 73, SHADOWGLEN },
								-- #elseif AFTER CATA
								{ 58, 38.8, TELDRASSIL },
								-- #else
								{ 58.6, 44.2, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { REMOVED_7_0_3 },
							["races"] = { NIGHTELF },
							["classes"] = { DRUID },
						}),
						q(28727, {	-- Vile Touch
							["sourceQuest"] = 28726,	-- Webwood Corruption
							["qg"] = 49480,	-- Tarindrella (mobileNPC)
							["coords"] = {
								-- #if AFTER MOP
								-- Approximate center location of the cave. Real location on the quest being offered to you depends on where you killed the last creature of previous quest.
								{ 39.7, 15.1, SHADOWGLEN },
								{ 46.8, 44.4, 58 },	-- Shadowthread Cave
								-- #else
								{ 57.6, 29.0, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = PRIESTESS_OF_THE_MOON_RACES,
							["groups"] = {
								objective(1, {	-- 0/12 Webwood Spider slain
									["provider"] = { "n", 1994 },	-- Githyiss the Vile
									["coords"] = {
										-- #if AFTER MOP
										{ 45.8, 91.0, SHADOWGLEN },
										-- #else
										{ 56.8, 26.6, TELDRASSIL },
										-- #endif
									},
								}),
								i(5405),	-- Draped Cloak
								i(6058),	-- Blackened Leather Belt
								i(131704, {	-- Web Covered Mail Belt
									["timeline"] = { ADDED_7_0_3 },
								}),
							},
						}),
						q(28726, {	-- Webwood Corruption
							["sourceQuest"] = 28725,	-- The Woodland Protector
							["qg"] = 49480,	-- Tarindrella (mobileNPC)
							["coords"] = {
								-- #if AFTER MOP
								-- Although Shadowglen is technically correct, Tarindrella appears only after you enter the Cave at which point she becomes a companion and starts following you around. If you walk out of it, she disappears.
								{ 38.9, 30.4, SHADOWGLEN },
								{ 44.5, 92.0, 58 },	-- Shadowthread Cave
								-- #else
								{ 57.6, 29.0, TELDRASSIL },
								-- #endif
							},
							["timeline"] = { ADDED_4_0_3 },
							["races"] = PRIESTESS_OF_THE_MOON_RACES,
							["groups"] = {
								objective(1, {	-- 0/12 Webwood Spider slain
									["provider"] = { "n", 1986 },	-- Webwood Spider
									["coords"] = {
										-- #if AFTER MOP
										{ 45.8, 91.0, SHADOWGLEN },
										-- #else
										{ 57.6, 29.0, TELDRASSIL },
										-- #endif
									},
								}),
								i(10544),	-- Thistlewood Maul
								i(5392),	-- Thistlewood Dagger
								i(5393),	-- Thistlewood Staff
								i(5586),	-- Thistlewood Blade
							},
						}),
						q(917, {	-- Webwood Egg
							["sourceQuest"] = 916,	-- Webwood Venom
							["qg"] = 2082,	-- Gilshalan Windwalker
							["coord"] = { 57.8, 41.6, TELDRASSIL },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/1 Webwood Egg
									["providers"] = {
										{ "i", 5167 },	-- Webwood Egg
										{ "o", 4406 },	-- Webwood Eggs
									},
									["coord"] = { 56.6, 26.5, TELDRASSIL },
								}),
								i(5395),	-- Woodland Shield
								i(4907),	-- Woodland Tunic
								i(11189),	-- Woodland Robes
							},
						}),
						q(916, {	-- Webwood Venom
							["qg"] = 2082,	-- Gilshalan Windwalker
							["coord"] = { 57.8, 41.6, TELDRASSIL },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 3,
							["groups"] = {
								objective(1, {	-- 0/10 Webwood Venom Sac
									["provider"] = { "i", 5166 },	-- Webwood Venom Sac
									["cr"] = 1986,	-- Webwood Spider
								}),
								i(10544),	-- Thistlewood Maul
								i(5392),	-- Thistlewood Dagger
								i(5393),	-- Thistlewood Staff
								i(5586),	-- Thistlewood Blade
								i(12447, {	-- Thistlewood Bow
									["timeline"] = { REMOVED_1_7_0 },
								}),
							},
						}),
					}),
				},
			}),
			n(ACHIEVEMENTS, {
				ach(842),	-- Explore Teldrassil
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					507,	-- Crested Owl (PET!)
					479,	-- Elfin Rabbit (PET!)
					447,	-- Fawn (PET!)
					478,	-- Forest Moth (PET!)
					452,	-- Red-Tailed Chipmunk (PET!)
					419,	-- Small Frog (PET!)
				}},
			}),
			explorationHeader({
				exploration(736),	-- Ban'ethil Hollow
				exploration(1657),	-- Darnassus
				exploration(186),	-- Dolanaar
				exploration(261),	-- Gnarlpine Hold
				exploration(259),	-- Lake Al'Ameth
				exploration(478),	-- Pools of Arlithrien
				exploration(702),	-- Rut'theran Village
				exploration(188),	-- Shadowglen
				-- #if AFTER CATA
				exploration(257),	-- Shadowthread Cave
				-- #endif
				exploration(260),	-- Starbreeze Village
				-- #if AFTER CATA
				exploration(263),	-- The Cleft
				-- #endif
				exploration(264),	-- The Oracle Glade
				exploration(266),	-- Wellspring Lake
				exploration(265),	-- Wellspring River
			}),
			n(FLIGHT_PATHS, {
				fp(456, {	-- Dolanaar, Teldrassil
					["cr"] = 40553,	-- Fidelio <Hippogryph Master>
					["coord"] = { 55.4, 50.4, TELDRASSIL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(27, {	-- Rut'theran Village, Teldrassil
					["cr"] = 3838,	-- Vesprystus <Hippogryph Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 55.4, 88.4, TELDRASSIL },
						-- #else
						{ 58.4, 94.0, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			petbattles({
				q(31555, {	-- Got one! (Valeena)
					["sourceQuest"] = 31826,	-- Level Up!
					["qg"] = 63070,	-- Valeena
					["coord"] = { 55.2, 51.2, TELDRASSIL },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(31552, {	-- Learning the Ropes (Valeena)
					["qg"] = 63070,	-- Valeena
					["coord"] = { 55.2, 51.2, TELDRASSIL },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(31826, {	-- Level Up! (Valeena)
					["sourceQuest"] = 31553,	-- On The Mend
					["qg"] = 63070,	-- Valeena
					["coord"] = { 55.2, 51.2, TELDRASSIL },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(31553, {	-- On The Mend (Valeena)
					["sourceQuest"] = 31552,	-- Learning the Ropes
					["qg"] = 63070,	-- Valeena
					["coord"] = { 55.2, 51.2, TELDRASSIL },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Battle Pets Healed
							["provider"] = { "n", 10051 },	-- Seriadne <Stable Master>
							["coord"] = { 56.2, 52.0, TELDRASSIL },
						}),
					},
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			header(HEADERS.Spell, 921, {	-- Pickpocketing
				["classes"] = { ROGUE },
				["groups"] = {
					applyclassicphase(SOD_PHASE_ONE, i(208749, {	-- Gnarlpine Stash Key
						["coord"] = { 41.6, 77.6, TELDRASSIL },
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["crs"] = {
							2011,	-- Gnarlpine Augur
							2013,	-- Gnarlpine Avenger
							2012,	-- Gnarlpine Pathfinder
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, i(208605, {	-- Teldrassil Treasure Map
						["timeline"] = { REMOVED_2_0_1 },
						["cost"] = {
							{ "i", 208604, 1 },	-- Bottom-Left Map Piece
							{ "i", 208603, 1 },	-- Bottom-Right Map Piece
							{ "i", 208602, 1 },	-- Top-Left Map Piece
							{ "i", 208601, 1 },	-- Top-Right Map Piece
						},
						["classes"] = { ROGUE },
					})),
					applyclassicphase(SOD_PHASE_ONE, i(208604, {	-- Bottom-Left Map Piece
						["coord"] = { 52.6, 49.6, TELDRASSIL },
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["crs"] = {
							2005,	-- Vicious Grell
							2002,	-- Rascal Sprite
							2004,	-- Dark Sprite
							2003,	-- Shadow Sprite
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, i(208603, {	-- Bottom-Right Map Piece
						["coord"] = { 36.8, 37.6, TELDRASSIL },
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["crs"] = {
							2019,	-- Bloodfeather Fury
							2021,	-- Bloodfeather Matriarch
							2015,	-- Bloodfeather Harpy
							2020,	-- Bloodfeather Wind Witch
							2018,	-- Bloodfeather Sorceress
							2017,	-- Bloodfeather Rogue
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, i(208602, {	-- Top-Left Map Piece
						["coord"] = { 46.6, 52.4, TELDRASSIL },
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["crs"] = {
							2010,	-- Gnarlpine Defender
							2152,	-- Gnarlpine Ambusher
							2009,	-- Gnarlpine Shaman
							2011,	-- Gnarlpine Augur
							2013,	-- Gnarlpine Avenger
							2012,	-- Gnarlpine Pathfinder
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, i(208601, {	-- Top-Right Map Piece
						["coord"] = { 60.0, 64.4, TELDRASSIL },
						["timeline"] = { REMOVED_2_0_1 },
						["classes"] = { ROGUE },
						["crs"] = {
							2022,	-- Timberling
							2027,	-- Timberling Trampler
							2029,	-- Timberling Mire Beast
							2030,	-- Elder Timberling
							2025,	-- Timberling Bark Ripper
						},
					})),
				},
			}),
			-- #endif
			n(QUESTS, {
				q(475, {	-- A Troubling Breeze
					["qg"] = 2078,	-- Athridas Bearmantle
					["coords"] = {
						-- #if AFTER CATA
						{ 55.7, 52.0, TELDRASSIL },
						-- #else
						{ 56.0, 57.4, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(BURLY_BRAWL, {
					["questID"] = 75300,	-- Burly Brawl HQT	-- TODO: Confirm if this is the same HQT.
					["qgs"] = {
						6736,	-- Innkeeper Keldamyr <Innkeeper>
						209872,	-- Syllart
					},
					["coord"] = { 55.6, 59.8, TELDRASSIL },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { PALADIN, WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(204716, {	-- Rune of Frenzied Assault
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(425447),	-- Engrave Pants - Frenzied Assault
							},
						}),
						i(205683, {	-- Rune of Rebuke
							["classes"] = { PALADIN },
							["groups"] = {
								recipe(425621),	-- Engrave Pants - Rebuke
							},
						}),
					},
				})),
				-- #endif
				-- #if BEFORE CATA
				q(929, {	-- Crown of the Earth (3/6) / Teldrassil: The Refusal of the Aspects
					["sourceQuest"] = 928,	-- Crown of the Earth (2/6)
					["qg"] = 3515,	-- Corithras Moonrage
					["coord"] = { 56.2, 61.7, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Jade Phial
							["providers"] = {
								{ "i", 5639 },	-- Filled Jade Phial
								{ "i", 5619 },	-- Jade Phial
							},
							["coord"] = { 63, 58, TELDRASSIL },
						}),
					},
				}),
				q(933, {	-- Crown of the Earth (4/6) / Teldrassil: The Coming Dawn [CATA+]
					["sourceQuest"] = 929,	-- Crown of the Earth (3/6) / Teldrassil: The Refusal of the Aspects
					["qg"] = 3515,	-- Corithras Moonrage
					["coord"] = { 56.2, 61.7, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Tourmaline Phial
							["providers"] = {
								{ "i", 5645 },	-- Filled Tourmaline Phial
								{ "i", 5621 },	-- Tourmaline Phial
							},
							["coord"] = { 42, 67, TELDRASSIL },
						}),
					},
				}),
				q(7383, {	-- Crown of the Earth (5/6) / Teldrassil: The Burden of the Kaldorei [CATA+]
					["sourceQuest"] = 933,	-- Crown of the Earth (4/6) / Teldrassil: The Coming Dawn [CATA+]
					["altQuests"] = { 934 },	-- Crown of the Earth (?/?) did the entire chain and never got this one yet it is marked as completed at the end
					["qg"] = 3515,	-- Corithras Moonrage
					["coord"] = { 56.2, 61.7, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Amethyst Phial
							["providers"] = {
								{ "i", 18151 },	-- Filled Amethyst Phial
								{ "i", 18152 },	-- Amethyst Phial
							},
							["coord"] = { 38, 34, TELDRASSIL },
						}),
					},
				}),
				q(935, {	-- Crown of the Earth (6/6) / The Waters of Teldrassil [CATA+]
					["sourceQuest"] = 7383,	-- Crown of the Earth (5/6) / Teldrassil: The Burden of the Kaldorei [CATA+]
					["providers"] = {
						{ "n", 3515 },	-- Corithras Moonrage
						{ "i", 5188 },	-- Filled Vessel
					},
					["coord"] = { 56.2, 61.7, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5596),	-- Ashwood Bow
						i(5595),	-- Thicket Hammer
					},
				}),
				-- #endif
				q(997, {	-- Denalan's Earth
					-- #if AFTER CATA
					["sourceQuest"] = 486,	-- Ursal the Mauler
					-- #endif
					["providers"] = {
						{ "n", 2083 },	-- Syral Bladeleaf
						{ "i", 5391 },	-- Rare Earth
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 55.8, 50.4, TELDRASSIL },
						-- #else
						{ 56.0, 57.8, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				-- #if NOT ANYCLASSIC
				q(5636, {	-- Desperate Prayer
					["altQuests"] = {
						5634,	-- Desperate Prayer [Stormwind City #1]
						5635,	-- Desperate Prayer [Elwynn Forest]
						5637,	-- Desperate Prayer [Dun Morogh]
						5638,	-- Desperate Prayer [Stormwind City #2]
						5639,	-- Desperate Prayer [Ironforge]
						5640,	-- Desperate Prayer [Darnassus]
					},
					["qg"] = 3600,	-- Laurna Morninglight <Priest Trainer>
					["coord"] = { 55.6, 56.8, TELDRASSIL },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = { HUMAN, DWARF },
					["classes"] = { PRIEST },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 13908,	-- Desperate Prayer (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(2561, {	-- Druid of the Claw
					["sourceQuest"] = 2541,	-- The Sleeping Druid
					["qg"] = 7317,	-- Oben Rageclaw
					["coords"] = {
						-- #if AFTER CATA
						{ 41.2, 83.8, TELDRASSIL_BANETHIL_BARROW_DEN },
						-- #else
						{ 45.0, 61.4, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(3, 3, 1),
					["groups"] = {
						objective(1, {	-- Release Oben Rageclaw's spirit
							["providers"] = {
								{ "n", 7318 },	-- Rageclaw
								{ "i", 8149 },	-- Voodoo Charm
							},
							["coord"] = { 45.6, 59.6, TELDRASSIL },
						}),
						i(9598),	-- Sleeping Robes
						i(18957),	-- Brushwood Blade
						i(9602, {	-- Brushwood Blade
							["timeline"] = { REMOVED_1_11_1 },
							["collectible"] = false,	-- CRIEVE NOTE: This item doesn't have a sourceID, it is 100% invalid.
							-- If anything, it should match the sourceID of the other item by that name. (7540)
							-- However, since Classic deals with itemID based tracking, it would not track correctly anyways.
						}),
					},
				}),
				q(1684, {	-- Elanaria
					["altQuests"] = {
						1638,	-- A Warrior's Training
						1679,	-- Muren Stormpike
						1678,	-- Vejrek
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
					},
					["qgs"] = {
						3657,	-- Sentinel Elissa Starbreeze [Darkshore]
						3598,	-- Kyra Windblade <Warrior Trainer> [Teldrassil]
						2151,	-- Moon Priestess Amara [Teldrassil]
					},
					["coords"] = {
						{ 39.0, 43.4, DARKSHORE },
						{ 56.2, 59.2, TELDRASSIL },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(1581, {	-- Elixirs for the Bladeleafs
					["description"] =
						-- #if BEFORE 8.0.1
						"This quest becomes available at Alchemy skill level 20 when the character level requirement is met.",
						-- #else
						"This quest becomes available at Classic Alchemy skill level 20 when the character level requirement is met.",
						-- #endif
					["qg"] = 2083,	-- Syral Bladeleaf
					["coords"] = {
						-- #if AFTER CATA
						{ 55.8, 50.4, TELDRASSIL },
						-- #else
						{ 56.0, 57.8, TELDRASSIL },
						-- #endif
					},
					["cost"] = {
						{ "i", 2454, 6 },	-- Elixir of Lion's Strength
						{ "i", 5997, 2 },	-- Elixir of Minor Defense
					},
					["requireSkill"] = ALCHEMY,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				q(2259, {	-- Erion Shadewhisper
					["sourceQuest"] = 2241,	-- The Apple Falls
					["qg"] = 3599,	-- Jannok Breezesong
					["coord"] = { 56.4, 60.1, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(3661, {	-- Favored of Elune?
					["qg"] = 7916,	-- Erelas Ambersky
					["coord"] = { 55.5, 92.1, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						objective(1, {	-- 0/15 Wildkin Feather
							["providers"] = {
								{ "i",  10819 },	-- Wildkin Feather
								{ "o", 153239 },	-- Wildkin Feather
							},
							["description"] = "Scattered on the ground around the Hinterlands.",
						}),
					},
				}),
				q(2940, {	-- Feralas: A History
					["sourceQuest"] = 2939,	-- In Search of Knowledge
					["provider"] = { "o", 142958 },	-- Feralas: A History
					["coord"] = { 55.2, 91.4, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
				}),
				q(2459, {	-- Ferocitas the Dream Eater
					["sourceQuest"] = 2438,	-- The Emerald Dreamcatcher
					["qg"] = 3567,	-- Tallonkai Swiftroot
					["coords"] = {
						-- #if AFTER CATA
						{ 55.6, 50.0, TELDRASSIL },
						-- #else
						{ 55.4, 56.8, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Gnarlpine Mystic slain
							["provider"] = { "n", 7235 },	-- Gnarlpine Mystic
						}),
						objective(2, {	-- 0/1 Tallonkai's Jewel
							["providers"] = {
								{ "i", 8050 },	-- Tallonkai's Jewel
								{ "n", 7234 },	-- Ferocitas the Dream Eater
								{ "i", 8049 },	-- Gnarlpine Necklace
							},
							["coords"] = {
								-- #if AFTER CATA
								{ 67.3, 46.9, TELDRASSIL },
								-- #else
								{ 69.2, 53.4, TELDRASSIL },
								-- #endif
							},
						}),
					},
				}),
				-- #if BEFORE CATA
				q(6342, {	-- Flight to Auberdine / An Unexpected Gift [CATA+]
					["sourceQuest"] = 6341,	-- The Bounty of Teldrassil / To Darnassus [CATA+]
					["providers"] = {
						{ "n", 3838 },	-- Vesprystus
						{ "i", 16262 },	-- Nessa's Collection
					},
					["coord"] = { 58.4, 94, TELDRASSIL },
					["races"] = { NIGHTELF },
					["lvl"] = 10,
				}),
				-- #endif
				q(5621, {	-- Garments of the Moon
					["sourceQuest"] = 5622,	-- In Favor of Elune
					["qg"] = 3600,	-- Laurna Morninglight <Priest Trainer>
					["coord"] = { 55.6, 56.8, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { NIGHTELF },
					["classes"] = { PRIEST },
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- Heal and fortify Sentinel Shaya
							["provider"] = { "n", 12429 },	-- Sentinel Shaya
							["coord"] = { 57.4, 63.6, TELDRASSIL },
						}),
						i(16604, {	-- Moon Robes of Elune
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(476, {	-- Gnarlpine Corruption
					["sourceQuest"] = 475,	-- A Troubling Breeze
					["qg"] = 2107,	-- Gaerolas Talvethren
					["coords"] = {
						-- #if AFTER CATA
						{ 64.6, 51.1, TELDRASSIL },
						-- #else
						{ 66.2, 58.6, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				q(14039, {	-- Home of the Kaldorei
					["sourceQuest"] = 935,	-- The Waters of Teldrassil / Crown of the Earth (6/6)
					["qg"] = 3515,	-- Corithras Moonrage
					["coord"] = { 41.0, 45.6, TELDRASSIL },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(938, {	-- Mist
					["qg"] = 3568,	-- Mist
					["coords"] = {
						-- #if AFTER CATA
						{ 34.5, 27.8, TELDRASSIL },
						-- #else
						{ 31.4, 31.6, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(7, 7, 1),
					["groups"] = {
						i(5590),	-- Cord Bracers
						i(54871, {	-- Cloudsbreak Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(5593),	-- Crag Buckler
						i(131230, {	-- Cloudsbreak Grips
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(5618, {	-- Scout's Cloak
							-- #if ANYCLASSIC
							["description"] = "This gets completely removed. To be safe, keep this in your bank on an alt forever.",
							-- #endif
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if AFTER CATA
				q(923, {	-- Mossy Tumors [CATA+] / Tumors
					["sourceQuest"] = 922,	-- Rellian Greenspyre
					["qg"] = 3517,	-- Rellian Greenspyre
					["coord"] = { 44.0, 44.2, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Mossy Tumor
							["provider"] = { "i", 5170 },	-- Mossy Tumor
							["crs"] = {
								2030,	-- Elder Timberling
								2029,	-- Timberling Mire Beast
								2027,	-- Timberling Trampler
							},
						}),
						i(5605),	-- Pruning Knife
						i(157016, {	-- Gnarled Gavel
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				-- #endif
				q(13946, {	-- Nature's Reprisal
					["sourceQuest"] = 489,	-- Seek Redemption!
					["qg"] = 2083,	-- Syral Bladeleaf
					["coord"] = { 55.8, 50.4, TELDRASSIL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2499, {	-- Oakenscowl
					["sourceQuests"] = {
						-- #if AFTER CATA
						923,	-- Mossy Tumors
						-- #else
						2498,	-- Return to Denalan
						-- #endif
					},
					["qg"] = 2080,	-- Denalan
					["coords"] = {
						-- #if AFTER CATA
						{ 43.9, 44.2, TELDRASSIL },
						-- #else
						{ 60.8, 68.4, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Gargantuan Tumor
							["provider"] = { "i", 8136 },	-- Gargantuan Tumor
							["coords"] = {
								-- #if AFTER CATA
								{ 47.5, 35.5, TELDRASSIL },
								-- #else
								{ 53.6, 75.0, TELDRASSIL },
								-- #endif
							},
							["cr"] = 2166,	-- Oakenscowl
						}),
						i(5458),	-- Dirtwood Belt
						i(5589),	-- Moss-covered Gauntlets
					},
				}),
				q(941, {	-- Planting the Heart
					["sourceQuest"] = 927,	-- The Moss-twined Heart
					["qg"] = 2080,	-- Denalan
					["providers"] = {
						{ "n", 2080 },	-- Denalan
						{ "i", 5217 },	-- Tainted Heart
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 59.9, 59.8, TELDRASSIL },
						-- #else
						{ 60.8, 68.4, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(9, 9, 1),
					["groups"] = {
						i(5218),	-- Cleansed Timberling Heart
					},
				}),
				q(4161, {	-- Recipe of the Kaldorei
					["qg"] = 6286,	-- Zarrin
					["coord"] = { 57, 61.2, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 5465, 7 } },	-- Small Spider Leg
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5482, {	-- Recipe: Kaldorei Spider Kabob (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(922, {	-- Rellian Greenspyre
					["sourceQuest"] = 918,	-- Timberling Seeds
					["providers"] = {
						{ "n", 2080 },	-- Denalan
						{ "i", 5168 },	-- Timberling Seed
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 59.9, 59.8, TELDRASSIL },
						-- #else
						{ 60.8, 68.4, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				-- #if AFTER CATA
				q(6344, {	-- Reminders of Home [CATA+] / Nessa Shadowsong
					["qg"] = 4265,	-- Nyoma
					["coord"] = { 56.7, 53.5, TELDRASSIL },
					["races"] = { NIGHTELF },
					["isBreadcrumb"] = true,
				}),
				-- #endif
				q(13945, {	-- Resident Danger
					["sourceQuest"] = 476,	-- Gnarlpine Corruption
					["qg"] = 2081,	-- Sentinel Kyra Starsong
					["coord"] = { 55.7, 52.0, TELDRASSIL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2498, {	-- Return to Denalan
					["sourceQuest"] = 923,	-- Tumors / Mossy Tumors [CATA+]
					["qg"] = 3517,	-- Rellian Greenspyre
					["coord"] = { 38.4, 21.6, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
				}),
				q(2943, {	-- Return to Troyas
					["sourceQuest"] = 2944,	-- The Super Snapper FX
					["providers"] = {
						{ "n", 7907 },	-- Daryn Lightwind
						{ "i", 9331 },	-- Feralas: A History
					},
					["coord"] = { 55.4, 92.2, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
				}),
				q(489, {	-- Seek Redemption!
					["sourceQuest"] = 488,	-- Zenn's Bidding
					["qg"] = 2083,	-- Syral Bladeleaf
					["coords"] = {
						-- #if AFTER CATA
						{ 55.8, 50.4, TELDRASSIL },
						-- #else
						{ 56.0, 59.4, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- 0/3 Fel Cone
							["providers"] = {
								{ "i", 3418 },	-- Fel Cone
								{ "o", 1673 },	-- Fel Cone
							},
						}),
					},
				}),
				q(6063, {	-- Taming the Beast (1/3)
					["sourceQuests"] = {
						6071,	-- The Hunter's Path [Darnassus]
						6072,	-- The Hunter's Path [Teldrassil]
						6073,	-- The Hunter's Path [Darnassus]
						6721,	-- The Hunter's Path [Ironforge]
						6722,	-- The Hunter's Path [Dun Morogh]
					},
					["qg"] = 3601,	-- Dazalar <Hunter Trainer>
					["coord"] = { 56.6, 59.6, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Tame a Webwood Lurker
							["providers"] = {
								{ "n", 1998 },	-- Webwood Lurker
								{ "i", 15921 },	-- Taming Rod
							},
						}),
					},
				}),
				q(6101, {	-- Taming the Beast (2/3)
					["sourceQuest"] = 6063,	-- Taming the Beast (1/3)
					["qg"] = 3601,	-- Dazalar <Hunter Trainer>
					["coord"] = { 56.6, 59.6, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Tame a Nightsaber Stalker
							["providers"] = {
								{ "n", 2043 },	-- Nightsaber Stalker
								{ "i", 15922 },	-- Taming Rod
							},
						}),
					},
				}),
				q(6102, {	-- Taming the Beast (3/3)
					["sourceQuest"] = 6101,	-- Taming the Beast (2/3)
					["qg"] = 3601,	-- Dazalar <Hunter Trainer>
					["coord"] = { 56.6, 59.6, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Tame a Strigid Screecher
							["providers"] = {
								{ "n", 1996 },	-- Strigid Screecher
								{ "i", 15923 },	-- Taming Rod
							},
						}),
						-- #if BEFORE CATA
						recipe(883),	-- Call Pet
						recipe(2641),	-- Dismiss Pet
						recipe(1515),	-- Tame Beast
						-- #endif
					},
				}),
				-- #if AFTER CATA
				q(2518, {	-- Tears of the Moon
					["qg"] = 7313,	-- Priestess A'moora
					["coord"] = { 39.1, 29.9, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Silvery Spinnerets
							["provider"] = { "i", 8344 },	-- Silvery Spinnerets
							["cr"] = 7319,	-- Lady Sathrah
							["coords"] = {
								{ 38.8, 26.0, TELDRASSIL },
								{ 42.0, 25.6, TELDRASSIL },
								{ 48.0, 25.6, TELDRASSIL },
							},
						}),
					},
				}),
				-- #endif
				q(940, {	-- Teldrassil
					["sourceQuest"] = 937,	-- The Enchanted Glade
					["providers"] = {
						{ "n", 3519 },	-- Sentinel Arynia Cloudsbreak
						{ "i", 5219 },	-- Inscribed Bark
					},
					["coord"] = { 38.2, 34.4, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 6,
				}),
				-- #if AFTER CATA
				q(7383, {	-- Teldrassil: The Burden of the Kaldorei [CATA+] / Crown of the Earth (5/6)
					["sourceQuest"] = 918,	-- Timberling Seeds
					["qg"] = 3515,	-- Corithras Moonrage
					["coord"] = { 55.8, 53.9, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Amethyst Phial
							["providers"] = {
								{ "i", 18151 },	-- Filled Amethyst Phial
								{ "i", 18152 },	-- Amethyst Phial
							},
							["coord"] = { 40, 29, TELDRASSIL },
						}),
					},
				}),
				q(933, {	-- Teldrassil: The Coming Dawn [CATA+] / Crown of the Earth (4/6)
					["sourceQuest"] = 7383,	-- Teldrassil: The Burden of the Kaldorei [CATA+] / Crown of the Earth (5/6)
					["qg"] = 3515,	-- Corithras Moonrage
					["coord"] = { 41.0, 45.6, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Tourmaline Phial
							["providers"] = {
								{ "i", 5645 },	-- Filled Tourmaline Phial
								{ "i", 5621 },	-- Tourmaline Phial
							},
							["coord"] = { 43.9, 58.54, TELDRASSIL },
						}),
					},
				}),
				q(929, {	-- Teldrassil: The Refusal of the Aspects [CATA+] / Crown of the Earth (3/6)
					["description"] = "The quest completion marker and position of the quest giver depends on the quests you have accepted.\n\nIf you DO NOT have |cff4a54e8Teldrassil: The Burden of the Kaldorei|r in your Quest Log, Corithras Moonrage will be at Dolanaar.\nIf you DO HAVE it accepted, along with this quest, he will be at the Crossroads in front of the entrance to Darnassus.",
					["sourceQuest"] = 28731,	-- Teldrassil: Passing Awareness
					["qg"] = 3515,	-- Corithras Moonrage
					["coords"] = {
						{ 55.8, 53.9, TELDRASSIL },	-- Dolanaar
						{ 41.0, 45.6, TELDRASSIL },	-- Darnassus Crossroads
					},
					["races"] = PRIESTESS_OF_THE_MOON_RACES,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Jade Phial
							["providers"] = {
								{ "i", 5639 },	-- Filled Jade Phial
								{ "i", 5619 },	-- Jade Phial
							},
							["coord"] = { 60, 50, TELDRASSIL },
						}),
					},
				}),
				-- #endif
				q(2241, {	-- The Apple Falls
					["altQuests"] = {
						2218,	-- Road to Salvation
						2205,	-- Seek out SI: 7
					},
					["providers"] = {
						{ "n", 3599 },	-- Jannok Breezesong
						{ "i", 7735 },	-- Jannok's Rose
					},
					["coord"] = { 56.4, 60.1, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(2941, {	-- The Borrower
					["sourceQuest"] = 2940,	-- Feralas: A History
					["providers"] = {
						{ "n", 7907 },	-- Daryn Lightwind
						{ "i", 9329 },	-- A Short Note
					},
					["coord"] = { 55.4, 92.2, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
				}),
				-- #if BEFORE CATA
				q(6341, {	-- The Bounty of Teldrassil / To Darnassus [CATA+]
					["sourceQuest"] = 6344,	-- Nessa Shadowsong
					["providers"] = {
						{ "n", 10118 },	-- Nessa Shadowsong
						{ "i", 16262 },	-- Nessa's Collection
					},
					["coord"] = { 56.2, 92.4, TELDRASSIL },
					["races"] = { NIGHTELF },
					["lvl"] = 10,
				}),
				-- #endif
				q(2438, {	-- The Emerald Dreamcatcher
					-- #if AFTER CATA
					-- #if BEFORE LEGION
					["description"] = "This quest is incorrectly marked as a weekly by Blizzard up until Legion. Complete it on a Night Elf character to prevent it from reappearing in ATT.",
					-- #endif
					-- #endif
					["qg"] = 3567,	-- Tallonkai Swiftroot
					["coords"] = {
						-- #if AFTER CATA
						{ 55.6, 50.0, TELDRASSIL },
						-- #else
						{ 55.4, 56.8, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Emerald Dreamcatcher
							["providers"] = {
								{ "i", 8048 },	-- Emerald Dreamcatcher
								{ "o", 126158 },	-- Tallonkai's Dresser
							},
							["coords"] = {
								-- #if AFTER CATA
								{ 66.1, 52.1, TELDRASSIL },
								-- #else
								{ 68.0, 59.6, TELDRASSIL },
								-- #endif
							},
						}),
					},
				}),
				q(937, {	-- The Enchanted Glade
					["qg"] = 3519,	-- Sentinel Arynia Cloudsbreak
					["coords"] = {
						-- #if AFTER CATA
						{ 39.5, 29.9, TELDRASSIL },
						-- #else
						{ 38.2, 34.4, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(6, 6, 1),
					["groups"] = {
						objective(1, {	-- 0/6 Bloodfeather Belt
							["provider"] = { "i", 5204 },	-- Bloodfeather Belt
							["crs"] = {
								2019,	-- Bloodfeather Fury
								2015,	-- Bloodfeather Harpy
								2021,	-- Bloodfeather Matriarch
								2017,	-- Bloodfeather Rogue
								2018,	-- Bloodfeather Sorceress
								2020,	-- Bloodfeather Wind Witch
								14431,	-- Fury Shelda
							},
						}),
						i(5591),	-- Rain-spotted Cape
						i(54872, {	-- Shackled Girdle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(5592, {	-- Shackled Girdle
							-- #if ANYCLASSIC
							["description"] = "This gets completely removed. To be safe, keep this in your bank forever on a mail user.",
							-- #endif
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(131229, {	-- Shackled Cuffs
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(930, {	-- The Glowing Fruit
					["providers"] = {
						{ "o", 6751 },	-- Strange Fruited Plant
						{ "i", 5189 },	-- Glowing Fruit
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 57.6, 63.0, TELDRASSIL },
						-- #else
						{ 42.6, 76.1, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				q(28517, {	-- The Howling Oak
					["qg"] = 42968,	-- Krennan Aranas
					["coord"] = { 55.2, 89.2, TELDRASSIL },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { DARNASSUS },
					["races"] = { WORGEN },
				}),
				q(6071, {	-- The Hunter's Path [Darnassus]
					["qg"] = 4146,	-- Jocaste <Hunter Trainer>
					["coord"] = { 40.2, 8.8, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6072, {	-- The Hunter's Path [Teldrassil]
					["qg"] = 3596,	-- Ayanna Everstride <Hunter Trainer>
					["coord"] = { 58.66, 40.45, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6073, {	-- The Hunter's Path [Darnassus]
					["qg"] = 4205,	-- Dorion <Hunter Trainer>
					["coord"] = { 42.2, 7.6, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6721, {	-- The Hunter's Path [Ironforge]
					["qg"] = 5117,	-- Regnus Thundergranite <Hunter Trainer>
					["coord"] = { 69.8, 83.6, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6722, {	-- The Hunter's Path [Dun Morogh]
					["qg"] = 1231,	-- Grif Wildheart <Hunter Trainer>
					["coord"] = { 45.8, 53, DUN_MOROGH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(927, {	-- The Moss-twined Heart
					["provider"] = { "i", 5179 },	-- Moss-twined Heart
					["coord"] = { 52.0, 63.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 3535,	-- Blackmoss the Fetid
					["lvl"] = lvlsquish(5, 5, 1),
				}),
				q(483, {	-- The Relics of Wakening
					["sourceQuest"] = 476,	-- Gnarlpine Corruption
					["qg"] = 2078,	-- Athridas Bearmantle
					["coords"] = {
						-- #if AFTER CATA
						{ 55.7, 52.0, TELDRASSIL },
						-- #else
						{ 56.0, 57.4, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Raven Claw Talisman
							["providers"] = {
								{ "i", 3405 },	-- Raven Claw Talisman
								{ "o", 2740 },	-- Chest of the Raven Claw
							},
							["coords"] = {
								-- #if AFTER CATA
								{ 64.5, 19.6, TELDRASSIL_BANETHIL_BARROW_DEN },
								-- #else
								{ 45.7, 57.5, TELDRASSIL },
								-- #endif
							},
						}),
						objective(2, {	-- 0/1 Black Feather Quill
							["providers"] = {
								{ "i", 3406 },	-- Black Feather Quill
								{ "o", 2739 },	-- Chest of the Black Feather
							},
							["coords"] = {
								-- #if AFTER CATA
								{ 51.9, 86.5, TELDRASSIL_BANETHIL_BARROW_DEN },
								-- #else
								{ 43.8, 61.2, TELDRASSIL },
								-- #endif
							},
						}),
						objective(3, {	-- 0/1 Sapphire of Sky
							["providers"] = {
								{ "i", 3407 },	-- Sapphire of Sky
								{ "o", 2741 },	-- Chest of the Sky
							},
							["coords"] = {
								-- #if AFTER CATA
								{ 49.9, 36.6, TELDRASSIL_BANETHIL_BARROW_DEN },
								-- #else
								{ 44.6, 62.5, TELDRASSIL },
								-- #endif
							},
						}),
						objective(4, {	-- 0/1 Rune of Nesting
							["providers"] = {
								{ "i", 3408 },	-- Rune of Nesting
								{ "o", 2742 },	-- Chest of Nesting
							},
							["coords"] = {
								-- #if AFTER CATA
								{ 54.9, 75.4, TELDRASSIL_BANETHIL_BARROW_DEN },
								-- #else
								{ 44.5, 60.6, TELDRASSIL },
								-- #endif
							},
						}),
						i(54868, {	-- Gritroot Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131210, {	-- Gritroot Cinch
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(9599),	-- Barkmail Leggings
						i(9603, {	-- Gritroot Staff
							-- #if ANYCLASSIC
							["description"] = "This gets completely removed. To be safe, keep this in your bank on an alt forever.",
							-- #endif
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(60240, {	-- Dream Carrier
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(487, {	-- The Road to Darnassus
					["qg"] = 2151,	-- Moon Priestess Amara
					["coords"] = {
						-- #if AFTER CATA
						{ 49.4, 44.7, TELDRASSIL },
						-- #else
						{ 55.6, 58.4, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(5, 5, 1),
					["groups"] = {
						objective(1, {	-- 0/6 Gnarlpine Ambusher slain
							["provider"] = { "n", 2152 },	-- Gnarlpine Ambusher
						}),
					},
				}),
				q(931, {	-- The Shimmering Frond
					-- #if AFTER CATA
					["description"] = "Give the Shimmering Frond to Denalan at the east end of Lake Al'Ameth (59.9, 59.8) to ensure you get the next quest.",
					-- #endif
					["providers"] = {
						{ "o", 6752 },	-- Strange Fronded Plant
						{ "i", 5190 },	-- Shimmering Frond
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 37.3, 25.5, TELDRASSIL },
						-- #else
						{ 34.7, 28.8, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				q(2541, {	-- The Sleeping Druid
					-- #if AFTER CATA
					["sourceQuest"] = 476,	-- Gnarlpine Corruption [Crieve NOTE: This doesn't appear to be the source quest, if there is one. TODO: Confirm.]
					-- #endif
					["qg"] = 7317,	-- Oben Rageclaw
					["coords"] = {
						-- #if AFTER CATA
						{ 41.2, 83.8, TELDRASSIL_BANETHIL_BARROW_DEN },
						-- #else
						{ 45.0, 61.4, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(3, 3, 1),
					["groups"] = {
						objective(1, {	-- Shaman Voodoo Charm
							["provider"] = { "i", 8363 },	-- Shaman Voodoo Charm
							["cr"] = 2009,	-- Gnarlpine Shaman
						}),
					},
				}),
				q(2399, {	-- The Sprouted Fronds
					-- #if AFTER CATA
					["description"] = "A bug prevents the spawn of Sprouted Frond if completed at a wrong NPC.\nAfter picking up the quest, |cff4a54e8The Shimmering Frond|r, DO NOT turn in the quest to Denalan at the Wellspring Hovel, but to the Denalan at the east end of Lake Al'Ameth (59.9, 59.8). Denalan at the Wellsping Hovel will not spawn the Sprouted Frond after completing the quest and you will be unable to get the next quest.\nThe Denalan at the east end of Lake Al'Ameth WILL spawn the Sprouted Frond and you can pick up the next quest |cff4a54e8The Shimmering Frond|r.\n\nIf, like me, you turned it in to Denalan at the Wellspring Hovel, just travel to the one at the lake and log out. Go onto another character who has not done the quest yet, turn it in there and log out. The plants should spawn and give you enough time to re-log back to your previous character and do the quest.\n\n- Crieve",
					-- #endif
					["sourceQuest"] = 931,	-- The Shimmering Frond
					["provider"] = { "o", 7510 },	-- Sprouted Frond
					["coords"] = {
						-- #if AFTER CATA
						{ 59.8, 59.9, TELDRASSIL },
						{ 43.9, 44.0, TELDRASSIL },
						-- #else
						{ 60.8, 68.5, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
				}),
				q(14005, {	-- The Vengeance of Elune
					["sourceQuest"] = 933,	-- Teldrassil: The Coming Dawn [CATA+] / Crown of the Earth (4/6)
					["qg"] = 1992,	-- Tarindrella
					["coord"] = { 42.5, 58.2, TELDRASSIL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Bough of Corruption slain
							["provider"] = { "n", 34521 },	-- Bough of Corruption <Remnant of Xavius>
							["coord"] = { 40.8, 69.8, TELDRASSIL },
						}),
						i(131821, {	-- Uncorrupted Gloves
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(49546, {	-- Revitalizing Wristguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(49449, {	-- Britches of Turning Fortune
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(49448, {	-- Uncorrupted Hands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(49562, {	-- Durable Drape
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131822, {	-- Trousers of Turning Fortune
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				-- #if AFTER CATA
				q(935, {	-- The Waters of Teldrassil [CATA+] / Crown of the Earth (6/6)
					["sourceQuest"] = 14005,	-- The Vengeance of Elune
					["providers"] = {
						{ "n", 1992 },	-- Tarindrella
						{ "i", 5188 },	-- Filled Vessel
					},
					["coord"] = { 42.5, 58.2, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(54873, {	-- Verdigris Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(54874, {	-- Grassy Bindings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131861, {	-- Graccy Bracers
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(5595),	-- Thicket Hammer
						i(5596),	-- Ashwood Bow
						i(156992, {	-- Carved Ashwood Stick
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				-- #endif
				q(918, {	-- Timberling Seeds
					["sourceQuest"] = 997,	-- Denalan's Earth
					["qg"] = 2080,	-- Denalan
					["coords"] = {
						-- #if AFTER CATA
						{ 59.9, 59.8, TELDRASSIL },
						-- #else
						{ 60.8, 68.4, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Timberling Seed
							["provider"] = { "i", 5168 },	-- Timberling Seed
							["crs"] = {
								2030,	-- Elder Timberling
								2166,	-- Oakenscowl
								2022,	-- Timberling
								2025,	-- Timberling Bark Ripper
								2027,	-- Timberling Trampler
							},
						}),
					},
				}),
				q(919, {	-- Timberling Sprouts
					["sourceQuest"] = 997,	-- Denalan's Earth
					["qg"] = 2080,	-- Denalan
					["coords"] = {
						-- #if AFTER CATA
						{ 59.9, 59.8, TELDRASSIL },
						-- #else
						{ 60.8, 68.4, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- 0/12 Timberling Seed
							["providers"] = {
								{ "i", 5169 },	-- Timberling Sprout
								{ "o", 4608 },	-- Timberling Sprout
							},
						}),
						i(5606),	-- Gardening Gloves
						i(6061),	-- Graystone Bracers
					},
				}),
				-- #if AFTER CATA
				q(6341, {	-- To Darnassus [CATA+] / The Bounty of Teldrassil
					["sourceQuest"] = 6344,	-- Reminders of Home
					["providers"] = {
						{ "n", 40553 },	-- Fidelio
						{ "i", 16262 },	-- Dolanaar Recipe Book
					},
					["coord"] = { 55.4, 50.4, TELDRASSIL },
					["races"] = { NIGHTELF },
				}),
				-- #endif
				q(6103, {	-- Training the Beast
					["sourceQuest"] = 6102,	-- Taming the Beast (3/3)
					["qg"] = 3601,	-- Dazalar <Hunter Trainer>
					["coord"] = { 56.6, 59.6, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					-- #if BEFORE CATA
					["groups"] = {
						recipe(6991),		-- Feed Pet
						recipe(982),		-- Revive Pet
					},
					-- #endif
				}),
				-- #if BEFORE CATA
				q(923, {	-- Tumors / Mossy Tumors [CATA+]
					["sourceQuest"] = 922,	-- Rellian Greenspyre
					["qg"] = 3517,	-- Rellian Greenspyre
					["coord"] = { 38.2, 21.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
					["groups"] = {
						objective(1, {	-- 0/5 Mossy Tumor
							["provider"] = { "i", 5170 },	-- Mossy Tumor
							["crs"] = {
								2030,	-- Elder Timberling
								2029,	-- Timberling Mire Beast
								2027,	-- Timberling Trampler
							},
						}),
						i(5605),	-- Pruning Knife
					},
				}),
				-- #endif
				q(932, {	-- Twisted Hatred
					-- #if AFTER CATA
					["sourceQuest"] = 489,	-- Seek Redemption!
					-- #endif
					["qg"] = 3567,	-- Tallonkai Swiftroot
					["coords"] = {
						-- #if AFTER CATA
						{ 55.6, 50.0, TELDRASSIL },
						-- #else
						{ 55.4, 56.8, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {
							["provider"] = { "i", 5221 },	-- Melenas' Head
							["coord"] = { 51.6, 51.6, TELDRASSIL },
							["cr"] = 2038,	-- Lord Melenas
						}),
						i(5419),	-- Feral Bracers
						i(131228, {	-- Feral Wristguards
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(2571),	-- Viny Wrappings
						i(54867, {	-- Swiftroot Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(486, {	-- Ursal the Mauler
					["sourceQuest"] = 483,	-- The Relics of Wakening
					["qg"] = 2078,	-- Athridas Bearmantle
					["coords"] = {
						-- #if AFTER CATA
						{ 55.7, 52.0, TELDRASSIL },
						-- #else
						{ 56.0, 57.4, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- Ursal the Mauler slain
							["provider"] = { "n", 2039 },	-- Ursal the Mauler
							["coords"] = {
								-- #if AFTER CATA
								{ 51.7, 39.9, TELDRASSIL },
								-- #else
								{ 39.8, 80.6, TELDRASSIL },
								-- #endif
							},
						}),
						i(54869, {	-- Thornroot Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131211, {	-- Thornroot Hauberk
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(54870, {	-- Thornroot Cord
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(5459, {	-- Defender Axe
							-- #if ANYCLASSIC
							["description"] = "This gets completely removed. To be safe, keep this in your bank on an alt forever.",
							-- #endif
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5587, {	-- Thornroot Club
							-- #if ANYCLASSIC
							["description"] = "This gets completely removed. To be safe, keep this in your bank on an alt forever.",
							-- #endif
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4902, {	-- Wildkin of Elune
					["sourceQuest"] = 4901,	-- Guardians of the Altar
					["qg"] = 7916,	-- Erelas Ambersky
					["coord"] = { 55.5, 92.1, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 52,
					["groups"] = {
						i(16622, {	-- Thornflinger
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(16623, {	-- Opaline Medallion
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(488, {	-- Zenn's Bidding
					["qg"] = 2150,	-- Zenn Foulhoof
					["coords"] = {
						-- #if AFTER CATA
						{ 59.5, 49.2, TELDRASSIL },
						-- #else
						{ 60.4, 56.2, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(4, 4, 1),
					["groups"] = {
						objective(1, {	-- 0/3 Nightsaber Fang
							["provider"] = { "i", 3409 },	-- Nightsaber Fang
							["crs"] = {
								14430,	-- Duskstalker
								2042,	-- Nightsaber
								2043,	-- Nightsaber Stalker
							},
						}),
						objective(2, {	-- 0/3 Strigid Owl Feather
							["provider"] = { "i", 3411 },	-- Strigid Owl Feather
							["crs"] = {
								1995,	-- Strigid Owl
								1996,	-- Strigid Screecher
							},
						}),
						objective(3, {	-- 0/3 Webwood Spider Silk
							["provider"] = { "i", 3412 },	-- Webwood Spider Silk
							["crs"] = {
								1998,	-- Webwood Lurker
								2000,	-- Webwood Silkspinner
								1999,	-- Webwood Venomfang
							},
						}),
						i(5457),	-- Severed Voodoo Claw
						i(60239, {	-- Foul Bag
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
			}),
			n(RARES, {
				-- #if AFTER CATA
				n(2162, {	-- Agal
					-- NOTE: Agal was not classified as a Rare creature until Cataclysm.
					["coord"] = { 47.2, 44.8, TELDRASSIL },
				}),
				-- #endif
				n(3535, {	-- Blackmoss the Fetid
					["coords"] = {
						-- #if AFTER CATA
						{ 52.0, 63.6, TELDRASSIL },
						-- #else
						{ 42.8, 25.8, TELDRASSIL },
						{ 44.6, 27.6, TELDRASSIL },
						{ 43.0, 31.0, TELDRASSIL },
						{ 43.8, 33.2, TELDRASSIL },
						{ 46.0, 30.4, TELDRASSIL },
						{ 40.8, 39.6, TELDRASSIL },
						{ 43.6, 36.6, TELDRASSIL },
						{ 42.8, 38.6, TELDRASSIL },
						{ 44.0, 39.6, TELDRASSIL },
						-- #endif
					},
					["groups"] = {
						i(5179, {	-- Moss-twined Heart
							["description"] = "This is one of the only drops from a rare spawn in the game that start a quest. Good luck!",
							["races"] = ALLIANCE_ONLY,
						}),
					},
				}),
				n(14430, {	-- Duskstalker
					["coords"] = {
						-- #if AFTER CATA
						{ 52.2, 67.6, TELDRASSIL },
						{ 54.0, 66.6, TELDRASSIL },
						{ 57.6, 66.6, TELDRASSIL },
						{ 59.6, 65.6, TELDRASSIL },
						-- #else
						{ 51.2, 77.8, TELDRASSIL },
						{ 53.4, 77.2, TELDRASSIL },
						{ 54.6, 75.8, TELDRASSIL },
						{ 54.8, 77.4, TELDRASSIL },
						{ 58.0, 75.8, TELDRASSIL },
						{ 58.8, 76.6, TELDRASSIL },
						{ 60.6, 76.2, TELDRASSIL },
						{ 61.0, 74.4, TELDRASSIL },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(209812, {	-- Fallenroot Poacher
					["provider"] = { "n", 209811 },	-- Rustling Bush
					["description"] = "Cast Hunter's Mark on the bush to spawn the Rare Creature.",
					["coord"] = { 46.6, 46.4, TELDRASSIL },
					["classes"] = { HUNTER },
					["groups"] = {
						i(206155, {	-- Rune of Marksmanship
							["classes"] = { HUNTER },
							["groups"] = {
								recipe(410113),	-- Engrave Chest - Master Marksman
							},
						}),
					},
				})),
				-- #endif
				n(14431, {	-- Fury Shelda
					["coords"] = {
						-- #if AFTER CATA
						{ 37.2, 30.6, TELDRASSIL },
						{ 38.2, 33.4, TELDRASSIL },
						{ 39.4, 35.2, TELDRASSIL },
						{ 39.4, 36.4, TELDRASSIL },
						{ 39.6, 37.4, TELDRASSIL },
						-- #else
						{ 34.8, 34.4, TELDRASSIL },
						{ 38.2, 34.8, TELDRASSIL },
						{ 36.0, 37.8, TELDRASSIL },
						{ 38.0, 39.0, TELDRASSIL },
						{ 36.4, 42.4, TELDRASSIL },
						{ 39.0, 41.4, TELDRASSIL },
						{ 38.0, 44.0, TELDRASSIL },
						-- #endif
					},
					["groups"] = {
						i(18612, {	-- Bloody Chain Boots
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(14429, {	-- Grimmaw
					["coords"] = {
						-- #if AFTER CATA
						{ 51.6, 38.6, TELDRASSIL },
						-- #else
						{ 41.6, 78.6, TELDRASSIL },
						{ 40.2, 80.6, TELDRASSIL },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(209928, {	-- Mowgh
					["description"] = "You can tame him and you still get the rune!",
					["coord"] = { 48.3, 31.4, TELDRASSIL },
					["cost"] = {{ "i", 208608, 1 }},	-- Teldrassil Bird Meat
					["groups"] = {
						i(205979, {	-- Rune of Flanking
							["classes"] = { HUNTER },
							["groups"] = {
								recipe(425762),	-- Engrave Pants - Flanking Strike
							},
						}),
					},
				})),
				-- #endif
				n(14432, {	-- Threggil
					["coords"] = {
						-- #if AFTER CATA
						{ 53.0, 44.6, TELDRASSIL },
						-- #else
						{ 51.2, 50.8, TELDRASSIL },
						{ 52.0, 50.6, TELDRASSIL },
						{ 52.6, 52.4, TELDRASSIL },
						-- #endif
					},
					["groups"] = {
						i(18610, {	-- Keen Machete
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(206245, {	-- Unleashed Nature Spirit
					["providers"] = {
						{ "n", 206248 },	-- Wooden Effigy
						{ "i", 208760 },	-- Glade Crown
					},
					["coord"] = { 66.8, 58.0, TELDRASSIL },
					["cost"] = { { "i", 208609, 3 }},	-- Glade Flower
					["groups"] = {
						i(206963, {	-- Rune of Natural Potential
							["classes"] = { DRUID },
							["groups"] = {
								recipe(416050),	-- Engrave Chest - Living Seed
							},
						}),
					},
				})),
				-- #endif
				n(14428, {	-- Uruson
					["coords"] = {
						-- #if AFTER CATA
						{ 65.6, 51.8, TELDRASSIL },
						-- #else
						{ 63.8, 57.2, TELDRASSIL },
						{ 65.4, 57.8, TELDRASSIL },
						{ 67.6, 56.4, TELDRASSIL },
						{ 66.2, 60.6, TELDRASSIL },
						{ 67.8, 61.0, TELDRASSIL },
						{ 69.6, 62.0, TELDRASSIL },
						-- #endif
					},
					["groups"] = {
						i(18611, {	-- Gnarlpine Leggings
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(203079, {	-- Wandering Swordsman
					["provider"] = { "o", 392029 },	-- Swordsman's Reward
					["coords"] = {
						{ 39.6, 37.6, TELDRASSIL },
						{ 39.8, 69.6, TELDRASSIL },
						{ 34.8, 76.8, TELDRASSIL },
						{ 54.6, 66.0, TELDRASSIL },
						{ 62.6, 71.8, TELDRASSIL },
					},
					["groups"] = {
						i(204441, {	-- Rune of Blood Frenzy
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(403474),	-- Engrave Chest - Blood Frenzy
							},
						}),
					},
				})),
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_ONE, n(204937, {	-- Adventurer's Spirit
					["provider"] = { "n", 204827 },	-- Adventurer's Remains
					["coord"] = { 33.6, 35.6, TELDRASSIL },
					["timeline"] = { REMOVED_2_0_1 },
					["groups"] = {
						i(210589, {	-- Echo of the Ancestors
							["classes"] = { SHAMAN },
							["groups"] = {
								recipe(410099),	-- Engrave Pants - Ancestral Guidance
							},
						}),
						i(205944, {	-- Reciprocal Epiphany
							["classes"] = { PRIEST },
							["groups"] = {
								recipe(402848),	-- Engrave Pants - Prayer of Mending
							},
						}),
						i(206264, {	-- Rune of Inspiration
							["classes"] = { PALADIN },
							["groups"] = {
								recipe(410011),	-- Engrave Pants - Inspiration Exemplar
							},
						}),
						i(206970, {	-- Rune of Life
							["classes"] = { DRUID },
							["groups"] = {
								recipe(410033),	-- Engrave Pants - Lifebloom
							},
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, o(407734, {	-- Gnarlpine Cache
					["coord"] = { 45.0, 61.4, TELDRASSIL },
					["timeline"] = { REMOVED_2_0_1 },
					["groups"] = {
						i(205940, {	-- Memory of a Dark Purpose
							["classes"] = { PRIEST },
							["groups"] = {
								recipe(425216),	-- Engrave Chest - Void Plague
							},
						}),
						i(204809, {	-- Rune of Furious Thunder
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(403476),	-- Engrave Pants - Furious Thunder
							},
						}),
						i(203993, {	-- Rune of Slaughter
							["classes"] = { ROGUE },
							["groups"] = {
								recipe(424992),	-- Engrave Chest - Slaughter from the Shadows
							},
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(204174, {	-- Rune of Precision
					["provider"] = { "o", 407352 },	-- Gnarlpine Stash
					["coord"] = { 37.9, 82.5, TELDRASSIL },
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = {{ "i", 208749, 1 }},	-- Gnarlpine Stash Key
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(400081),	-- Engrave Pants - Between the Eyes
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(203991, {	-- Rune of Quick Draw
					["provider"] = { "o", 386675 },	-- Buried Treasure
					["coord"] = { 55.3, 90.8, TELDRASSIL },
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = {{ "i", 208605, 1 }},	-- Teldrassil Treasure Map
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(400095),	-- Engrave Chest - Quick Draw
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(206989, {	-- Rune of the Sun
					["description"] = "Cast Moonfire on each of the Lunar Stones to spawn the Lunar Chest nearby.",
					["providers"] = {
						{ "n", 207577 },	-- Lunar Stone
						{ "o", 404433 },	-- Lunar Chest
					},
					["coord"] = { 52.8, 78.8, TELDRASSIL },
					["classes"] = { DRUID },
					["groups"] = {
						recipe(416044),	-- Engrave Gloves - Sunfire
					},
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(44030, {	-- Draelan <Enchanting Supplies>
					["coord"] = { 39.0, 30.0, TELDRASSIL },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{ "select","itemID",
							20753,	-- Formula: Lesser Wizard Oil (RECIPE!)
							20752,	-- Formula: Minor Mana Oil (RECIPE!)
							20758,	-- Formula: Minor Wizard Oil (RECIPE!)
							22307,	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
						},
					},
				}),
				n(10118, {	-- Nessa Shadowsong <Fishing Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 54.0, 90.0, TELDRASSIL },
						-- #else
						{ 56.2, 92.4, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
						i(6326),	-- Recipe: Slitherskin Mackerel (RECIPE!)
					},
				}),
				n(4265, {	-- Nyoma <Cooking Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 56.7, 53.5, TELDRASSIL },
						-- #else
						{ 57.2, 61.2, TELDRASSIL },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
						i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(7095, {	-- Bog Boots
					["coords"] = {
						{ 43.6, 29.8, TELDRASSIL },
						{ 43.4, 35.4, TELDRASSIL },
						{ 52.6, 52.4, TELDRASSIL },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						2029,	-- Timberling Mire Beast
						2005,	-- Vicious Grell
					},
				}),
				i(5206, {	-- Bogling Root
					["cr"] = 3569,	-- Bogling
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(208607, {	-- Deer Musk
					["coords"] = {
						{ 45.8, 58.2, TELDRASSIL },
						{ 39.8, 80.4, TELDRASSIL },
						{ 42.4, 79.2, TELDRASSIL },
						{ 47.2, 52.8, TELDRASSIL },
						{ 38.4, 80.8, TELDRASSIL },
					},
					["classes"] = { HUNTER },
					["crs"] = {
						2011,	-- Gnarlpine Augur
						2012,	-- Gnarlpine Pathfinder
						2152,	-- Gnarlpine Ambusher
						2014,	-- Gnarlpine Totemic
						2013,	-- Gnarlpine Avenger
						2010,	-- Gnarlpine Defender
						2009,	-- Gnarlpine Shaman
					},
				})),
				-- #endif
				i(7094, {	-- Driftwood Branch
					["coord"] = { 45.4, 24.6, TELDRASSIL },
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 2030,	-- Elder Timberling
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(208609, {	-- Glade Flower
					["description"] = "These are scattered throughout the zone.",
					["provider"] = { "o", 407247 },	-- Glade Flower
				})),
				applyclassicphase(SOD_PHASE_ONE, i(206954, {	-- Idol of Ursine Rage
					["coord"] = { 45.6, 59.6, TELDRASSIL },
					["classes"] = { DRUID },
					["cr"] = 7318,	-- Rageclaw
					["groups"] = {
						recipe(410025),	-- Engrave Gloves - Mangle
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(205945, {	-- Memory of an Imprisoned Savior
					["coord"] = { 51.6, 51.6, TELDRASSIL },
					["classes"] = { PRIEST },
					["cr"] = 2038,	-- Lord Melenas
					["groups"] = {
						recipe(402854),	-- Engrave Pants - Shared Pain
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(205947, {	-- Prophecy of a Desecrated Citadel
					["coord"] = { 52.6, 49.6, TELDRASSIL },
					["classes"] = { PRIEST },
					["crs"] = {
						2005,	-- Vicious Grell
						2002,	-- Rascal Sprite
						2004,	-- Dark Sprite
						2003,	-- Shadow Sprite
					},
					["groups"] = {
						recipe(402852),	-- Engrave Pants - Homunculi
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(206169, {	-- Rune of Explosive Shot
					["coord"] = { 45.6, 59.6, TELDRASSIL },
					["classes"] = { HUNTER },
					["cr"] = 7318,	-- Rageclaw
					["groups"] = {
						recipe(410123),	-- Engrave Gloves - Explosive Shot
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(203990, {	-- Rune of Mutilation
					["coord"] = { 51.6, 51.6, TELDRASSIL },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["cr"] = 2038,	-- Lord Melenas
					["groups"] = {
						recipe(400094),	-- Engrave Gloves - Mutilate
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208610, {	-- Severed Owl Head
					["coord"] = { 40.6, 53.6, TELDRASSIL },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["crs"] = {
						1996,	-- Strigid Screecher
						1995,	-- Strigid Owl
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208612, {	-- Severed Spider Head
					["coord"] = { 59.8, 59.0, TELDRASSIL },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["crs"] = {
						1998,	-- Webwood Lurker
						1999,	-- Webwood Venomfang
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208611, {	-- Severed Tiger Head
					["coord"] = { 40.4, 60.0, TELDRASSIL },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["crs"] = {
						2042,	-- Nightsaber
						2043,	-- Nightsaber Stalker
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208608, {	-- Teldrassil Bird Meat
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { HUNTER },
					["crs"] = {
						1995,	-- Strigid Owl
						1997,	-- Strigid Hunter
						1996,	-- Strigid Screecher
					},
				})),
				-- #endif
			}),
		},
	}),
}));
