---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		header(HEADERS.Spell, 1214374, {	-- Phase Diving
			n(ACHIEVEMENTS, {
				ach(42730),	-- Jump, Jump, and Away!
				ach(61017, {	-- Phase-Lost-and-Found
				--[[
					Alex TODO: is there a better way?
					Exo write-up:
					This one will be tricky. You find orbs while Phase Diving and when you go through them, you get the item. Orb can't be targeted, no WoWhead data so far... We don't know if an Orb is an object or NPC.
					Reshii Wraps Level 2 upgrade "Secrets of the Depths" is required for this as IT is the one unlocking this feature. "You may now find phase orbs ... Phase orbs have a chance to recover a Phase-Lost appearance.
					So... When adventuring, you can find Orbs with Fixed coordinate and you can "go through" it multiple times on a same character. Example, { 50.1, 36.2, KARESH }, behind Hashim.
					You either get a junk item 250305, [Phase-Lost Detritus] OR a Phase-Lost cosmetic. (Level 3) Upgrade "Orbs of Power" messes with the concept of coordinates.
					"Enemies Killed while Phase Diving now have a chance to phase orb ... Phase orbs have a chance to recover a Phase-Lost appearance." + You can ride ground mount.
					Meaning, If we want an accurate coordinate pool, we will have to scour K'aresh and search for static orbs with fixed coordinates with Level 2 upgrade only.
					However, using in consideration the sheer size of K'aresh, the point that there are (most likely) MORE than 17 Orbs (one for each cosmetic) and the fact this is account bound feature:
					we can try to source (at least) 17 coordinates and ask a new tester (that didn't obtain a single of these) to go through gathered coordinates and see if the orb will award the cosmetic 100% on the first "going through".
					If awarding a cosmetic is based on a chance, the best course is to slap a description that there are "Le wild Orbs" scattered throughout the zones and send players to find them themselves.
					Peace!
					30.07.2025. 1 day after the writeup. You can get more than one cosmetic from 1 Orb. I got Rod and Bullwark from the same Orb only a day or two in between...
				]]--
					["description"] = "|cff00ccffRank 3|r |cffe6cc80Reshii Wraps|r required in order to collect the Orbs. Reward is based on a % chance. Large amount of Orbs have Fixed Coordinates.\n|cff00ccffRank 4|r |cffe6cc80Reshii Wraps|r unlock the ability for Orbs to appear after you kill an enemy.\nIt is possible to obtain more than 1 item from the same Orb, after it respawns.",
					["coords"] = {
						{ 44.2, 16.9, KARESH },
						{ 47.2, 15.8, KARESH },
						{ 50.1, 36.2, KARESH },
						{ 51.0, 69.1, KARESH },
						{ 51.2, 67.7, KARESH },
						{ 53.4, 20.6, KARESH },
						{ 54.9, 63.8, KARESH },
						{ 56.0, 21.5, KARESH },
						{ 56.5, 20.9, KARESH },
						{ 60.3, 28.4, KARESH },
						{ 60.5, 55.5, KARESH },
						{ 60.6, 42.0, KARESH },
						{ 61.1, 27.3, KARESH },
						{ 61.2, 39.2, KARESH },
						{ 64.9, 55.0, KARESH },
						{ 64.9, 52.2, KARESH },
						{ 69.7, 55.3, KARESH },
						{ 70.3, 32.0, KARESH },
						{ 74.0, 57.5, KARESH },
						{ 76.0, 32.6, KARESH },
						{ 77.3, 38.0, KARESH },
						{ 78.4, 48.9, KARESH },
						{ 34.9, 57.9, KARESH_TAZAVESH },
						{ 40.2, 68.2, KARESH_TAZAVESH },
						{ 42.8, 50.3, KARESH_TAZAVESH },
						{ 44.3, 34.6, KARESH_TAZAVESH },
						{ 45.2, 50.0, KARESH_TAZAVESH },
						{ 55.8, 33.6, KARESH_TAZAVESH },
						{ 56.5, 86.7, KARESH_TAZAVESH },
						{ 60.7, 55.3, KARESH_TAZAVESH },
					},
					["groups"] = {
						i(250240),	-- Phase-Lost Slateback (MOUNT!)
						--
						i(250282),	-- Phase-Lost Bardiche (COSMETIC!)
						i(250288),	-- Phase-Lost Baselard (COSMETIC!)
						i(250281),	-- Phase-Lost Battleaxe (COSMETIC!)
						i(250297),	-- Phase-Lost Beacon (COSMETIC!)
						i(250286),	-- Phase-Lost Blunderbuss (COSMETIC!)
						i(250298),	-- Phase-Lost Bulwark (COSMETIC!)		{ 51.2, 67.7, KARESH }
						i(250273),	-- Phase-Lost Carver (COSMETIC!)		{ 78.4, 48.9, KARESH }
						i(250280),	-- Phase-Lost Chopper (COSMETIC!)
						i(250295),	-- Phase-Lost Claw (COSMETIC!)			{ 54.4, 49.3, KARESH }
						i(250272),	-- Phase-Lost Cudgel (COSMETIC!)
						i(250289),	-- Phase-Lost Dirk (COSMETIC!)
						i(250278),	-- Phase-Lost Great Mace (COSMETIC!)
						i(250276),	-- Phase-Lost Greatsword (COSMETIC!)
						i(250271),	-- Phase-Lost Hammer (COSMETIC!)
						i(250274),	-- Phase-Lost Hatchet (COSMETIC!)
						i(250294),	-- Phase-Lost Katar (COSMETIC!)			{ 58.9, 57.5, KARESH }
						i(250287),	-- Phase-Lost Longbow (COSMETIC!)
						i(250269),	-- Phase-Lost Longsword (COSMETIC!)
						i(250277),	-- Phase-Lost Maul (COSMETIC!)
						i(250299),	-- Phase-Lost Pavise (COSMETIC!)
						i(250300),	-- Phase-Lost Rod (COSMETIC!)			{ 51.2, 67.7, KARESH }
						i(250270),	-- Phase-Lost Scimitar (COSMETIC!)
						i(250285),	-- Phase-Lost Shillelagh (COSMETIC!)	{ 54.3, 63.2, KARESH }
						i(250296),	-- Phase-Lost Sigil (COSMETIC!)
						i(250283),	-- Phase-Lost Spear (COSMETIC!)
						i(250284),	-- Phase-Lost Spire (COSMETIC!)
						i(250301),	-- Phase-Lost Wand (COSMETIC!)
						i(250275),	-- Phase-Lost Zweihander (COSMETIC!)
					},
				}),
			}),
			n(FLIGHT_PATHS, {
				header(HEADERS.Spell, 1244306, {	-- Phase Conduit
					fp(3161, {	-- Fracture of Laacuna
						["coord"] = { 56.2, 21.5, KARESH },
						["cr"] = 249778,	-- Phase Conduit
					}),
					fp(3164, {	-- Hosaas' Rest
						["coord"] = { 53.9, 63.6, KARESH },
						["cr"] = 249841,	-- Phase Conduit
					}),
					fp(3158, {	-- Lunnall River
						["coord"] = { 65.4, 48.0, KARESH },
						["cr"] = 249768,	-- Phase Conduit
					}),
					fp(3160, {	-- Naakroa
						["coord"] = { 58.9, 57.9, KARESH },
						["cr"] = 249775,	-- Phase Conduit
					}),
					fp(3159, {	-- North Sufaad
						["coord"] = { 77.2, 48.9, KARESH },
						["cr"] = 249771,	-- Phase Conduit
					}),
					fp(3163, {	-- Ruins of Yaathron
						["coord"] = { 51.4, 67.1, KARESH },
						["cr"] = 249811,	-- Phase Conduit
					}),
					fp(3156, {	-- Serrated Peaks
						["coord"] = { 51.2, 48.6, KARESH },
						["cr"] = 249764,	-- Phase Conduit
					}),
					fp(3155, {	-- Shadow Point
						["coord"] = { 45.2, 23.9, KARESH },
						["cr"] = 249761,	-- Phase Conduit
					}),
					fp(3147, {	-- Shan'dorah
						["coord"] = { 60.2, 29.0, KARESH },
						["cr"] = 249754,	-- Phase Conduit
					}),
					fp(3145, {	-- Tazavesh, the Veiled Market
						["coord"] = { 46.8, 56.9, KARESH_TAZAVESH },
						["cr"] = 249744,	-- Phase Conduit
					}),
					fp(3146, {	-- The Oasis
						["coord"] = { 75.9, 33.0, KARESH },
						["cr"] = 249747,	-- Phase Conduit
					}),
					fp(3157, {	-- Overlook Zo'Shuul
						["coord"] = { 50.4, 36.4, KARESH },
						["cr"] = 249765,	-- Phase Conduit
					}),
					fp(3162, {	-- Untethered Space
						["coord"] = { 53.9, 26.8, KARESH },
						["cr"] = 249781,	-- Phase Conduit
					}),
				}),
			}),
			n(RARES, sharedData({
				["isDaily"] = true,
			},{
				n(232128, {	-- Ixthar the Unblinking
					["coord"] = { 64.0, 43.6, KARESH },
					["questID"] = 90596,
					["groups"] = {
						i(240171),	-- Observer's Soul Fetters
						i(240213),	-- Veiling Mana Shroud
					},
				}),
				n(232077, {	-- Korgorath the Ravager
					["coord"] = { 64.7, 43.6, KARESH },
					["questID"] = 90586,
				}),
				n(231981, {	-- Maw of the Sands
					["isDaily"] = IGNORED_VALUE,
					["isWeekly"] = true,
					["coord"] = { 54.5, 54.5, KARESH },
					["questID"] = 90594,
					["groups"] = {
						i(240172),	-- Depleted K'areshi Battery
						i(240214),	-- Miniature Reshii Sandgarden
					},
				}),
				n(232108, {	-- Morgil the Netherspawn
					["coord"] = { 56.1, 52.7, KARESH },
					["questID"] = 90588,
					["groups"] = {
						i(244915),	-- Jimmy (PET!)
						i(239450),	-- Reshii Magi's Gloves
					},
				}),
				n(232127, {	-- Orith the Dreadful
					["isDaily"] = IGNORED_VALUE,
					["isWeekly"] = true,
					["coord"] = { 58.9, 20.8, KARESH },
					["questID"] = 90595,
					["groups"] = {
						i(240172),	-- Depleted K'areshi Battery
					},
				}),
				n(232182, {	-- Prototype Mk-V
					["coord"] = { 45.8, 24.2, KARESH },
					["questID"] = 90590,
					["groups"] = {
						i(239478),	-- Reshii Brute's Greatbelt
						i(239464),	-- Reshii Skirmisher's Brigandine
					},
				}),
				n(232189, {	-- Revenant of the Wasteland
					["coord"] = { 50.5, 64.6, KARESH },
					["questID"] = 90591,
				}),
				n(232129, {	-- Shadowhowl
					["coord"] = { 54.1, 49.1, KARESH },
					["questID"] = 90583,
					["groups"] = {
						i(239469),	-- Reshii Skirmisher's Pauldrons
					},
				}),
				n(232006, {	-- Sha'ryth the Cursed
					["coord"] = { 72.3, 55.8, KARESH },
					["questID"] = 90585,
					["groups"] = {
						i(239453),	-- Reshii Magi's Spines
					},
				}),
				n(232193, {	-- Stalker of the Wastes
					["coord"] = { 76.7, 42.0, KARESH },
					["questID"] = 90592,
					["groups"] = {
						--- Junk item worth 50g. Only source of it for now.
						i(246063),	-- Void-Polished Warpstalker Stone
					},
				}),
				n(234845, {	-- Sthaarbs <the Mindroiler>
					["coord"] = { 74.0, 32.4, KARESH },
					["questID"] = 91293,
					["isDaily"] = IGNORED_VALUE,
					["isWeekly"] = true,
					["groups"] = { i(246160), },	-- Sthaarbs's Last Lunch (MOUNT!)
				}),
				n(232111, {	-- The Nightreaver
					["coord"] = { 52.7, 56.5, KARESH },
					["questID"] = 90589,
					["groups"] = {
						i(245254),	-- Duskthief (PET!)
						i(239479),	-- Reshii Brute's Vambraces
						i(239467),	-- Reshii Skirmisher's Cowl
					},
				}),
				n(232195, {	-- Urmag <The Terror Below>
					["coord"] = { 70.2, 49.7, KARESH },
					["questID"] = 90593,
					["groups"] = {
						i(246067),	-- Pearlescent Krolusk (MOUNT!)
					},
				}),
				n(232199, {	-- Xarran the Binder
					["coord"] = { 65.1, 50.0, KARESH },
					["questID"] = 90584,
					["groups"] = {
						i(239451),	-- Reshii Magi's Crown
						i(239463),	-- Reshii Scout's Bracers
					},
				}),
			})),
			n(TREASURES, {
				o(548597, {	-- Bladed Rifle Of Unfettered Momentum
					["description"] = "Requires Rank 5 Reshii Wraps.\nIt is recommended to buy some Gliders if you can't glide/slow fall yourself.",
					["coord"] = { 69.9, 70.8, KARESH },
					["questID"] = 91058,
					["groups"] = { i(245673), },	-- Bladed Rifle of Unfettered Momentum (COSMETIC!)
				}),
				-- TODO: Replace quest with actual ObjectID upon discovery
				q(89378, {	-- Ethereal Voidforged Container
					--["questID"] = 89378,
					-- TODO: Either this was moved somewhere else or it has multiple spawn points...
					-- Achievement 'Jump, Jump, and Away!' states "Find and loot the Ethereal Voidforged Container in the Ruins of Yaathron in K'aresh." but it's nowhere to be found.
					-- Vignette used to be present a couple of builds ago but I had no Rank 5 Wraps to see it.
					["description"] = "Requires some serious jumping precision in order to get to it.",
					["coord"] = { 52.1, 68.3, KARESH },
				}),
				o(529669, {	-- Korgoraths Talon
					["description"] = "Requires Rank 5 Reshii Wraps.",
					["coord"] = { 64.4, 42.7, KARESH },
					["questID"] = 90532,
					["groups"] = { i(243153), },	-- Korgorath's Talon (COSMETIC!)
				}),
				o(529525, {	-- Light-Soaked Cleaver
					["description"] = "Requires Rank 5 Reshii Wraps.",
					["coord"] = { 52.5, 46.8, KARESH },
					["questID"] = 90511,
					["groups"] = { i(243002), },	-- Light-Soaked Cleaver (COSMETIC!)
				}),
				o(548001, {	-- P.O.S.T. Master's Prototype Parcel and Postage Presser
					["description"] = "Requires Rank 5 Reshii Wraps.",
					["coord"] = { 47.5, 70.0, KARESH_TAZAVESH },
					["questID"] = 91056,
					["groups"] = { i(245669), },	-- P.O.S.T. Master's Prototype Parcel and Postage Presser (COSMETIC!)
				}),
				o(529539, {	-- Petrified Branch Of Janaa
					["description"] = "Requires Rank 5 Reshii Wraps.\nIt is recommended to buy some Gliders if you can't glide/slow fall yourself.",
					["coord"] = { 78.3, 61.6, KARESH },
					["questID"] = 90515,
					["groups"] = { i(243006), },	-- Petrified Branch of Janaa (COSMETIC!)
				}),
				o(548010, {	-- Phaseblade Of The Void Marches
					["description"] = "Requires Rank 5 Reshii Wraps.",
					["coord"] = { 50.8, 35.3, KARESH },
					["questID"] = 91057,
					["groups"] = { i(245671), },	-- Phaseblade of the Void Marches (COSMETIC!)
				}),
				o(529664, {	-- Shadowguard Crusher
					["description"] = "Requires Rank 5 Reshii Wraps.",
					["coord"] = { 49.2, 18.0, KARESH },
					["questID"] = 90527,
					["groups"] = { i(243008), },	-- Shadowguard Crusher (COSMETIC!)
				}),
				o(529591, {	-- Sufaadi Skiff Lantern
					["description"] = "Requires Rank 5 Reshii Wraps.",
					["coord"] = { 80.7, 52.8, KARESH },
					["questID"] = 90521,
					["groups"] = { i(243009), },	-- Sufaadi Skiff Lantern (COSMETIC!)
				}),
				o(547995, {	-- Warglaive of the Audacious Hunter
					["description"] = "Requires Rank 5 Reshii Wraps.",
					["coords"] = {
						{ 56.8, 24.1, KARESH },	-- Voidscar Cavern Entrance
						{ 62.5, 52.2, 2477 },	-- Voidscar Cavern
					},
					["questID"] = 91055,
					["groups"] = { i(245667), },	-- Warglaive of the Audacious Hunter (COSMETIC!)
				}),
				o(529643, {	-- Tulwar Of The Golden Guard
					["description"] = "Requires Rank 5 Reshii Wraps.",
					["coord"] = { 51.0, 65.1, KARESH },
					["questID"] = 90522,
					["groups"] = { i(243005), },	-- Tulwar of the Golden Guard (COSMETIC!)
				}),
				header(HEADERS.Achievement, 60890, {	-- Secrets of the K'areshi
					o(558375, {	-- Checklist of Minor Pleasures
						["description"] = "You need to Phasedive in order to see the Lore Object.",
						["coord"] = { 38.2, 45.6, KARESH_TAZAVESH },
						["questID"] = 91687,
					}),
					o(558110, {	-- From Vengeance to Void
						["description"] = "You need to Phasedive in order to see the Lore Object.",
						["coord"] = { 42.3, 20.9, KARESH },
						["questID"] = 91646,
					}),
					o(558117, {	-- I Have Become Void!
						["description"] = "You need to Phasedive in order to see the Lore Object.",
						["coord"] = { 36.7, 58.1, KARESH_TAZAVESH },
						["questID"] = 91649,
					}),
					o(558108, {	-- Multiversal Energy Dynamics and the Murmurration Paradox
						["description"] = "You need to Phasedive in order to see the Lore Object.",
						["coord"] = { 49.6, 26.8, KARESH },
						["questID"] = 91643,
					}),
					o(558112, {	-- The Facets of K'aresh
						["description"] = "You need to Phasedive in order to see the Lore Object.",
						["coord"] = { 72.1, 29.4, KARESH },
						["questID"] = 91647,
					}),
				}),
				-- Phased
				o(516626, {	-- Phase-Lost Pocket-Storage
					["description"] = "You need to Phasedive in order to see the Treasure.\nRequires Rank 5 Reshii Wraps.\nCan be found at random locations through Untethered space.",
					["minReputation"] = { FACTION_THE_KARESH_TRUST, 4 },	-- The K'aresh Trust Renown 4
					["maps"] = { KARESH_TAZAVESH, KARESH },
					-- No quest attached to them.
					["sym"] = {	-- Zone Drop
						{"select","mapID",KHAZ_ALGAR},{"pop"},
						{"where","mapID",KARESH},{"pop"},
						{"where","headerID",ZONE_DROPS},{"pop"},
					},
					["groups"] = {	-- Has a chance to drop following
						i(243147),	-- Ethereal Defense Pylon
						i(243219),	-- Phased Ethereal Bow
						i(242371),	-- Untethered Xy'bucha
					},
				}),
			}),
			n(WORLD_QUESTS, {
				--["sourceQuests"] = {},
				["groups"] = bubbleDownFiltered({ ["isWorldQuest"] = true, },FILTERFUNC_questID,{
					q(86872, {	-- Phase Diving: Experimental Extermination
						["coord"] = { 52.8, 61.7, KARESH },
					}),
					q(85864, {	-- Phase Diving: Fractured Laacunite
						["coord"] = { 55.2, 26.5, KARESH },
						["groups"] = {
							i(232612),	-- Laacunite Shard (QI!)
						},
					}),
					q(88904, {	-- Phase Diving: It Could Be Anything
						["coord"] = { 68.6, 31.7, KARESH },
					}),
					q(89291, {	-- Phase Diving: Oath-Breaker Desamirah
						["coord"] = { 43.7, 25.9, KARESH },
					}),
					q(88902, {	-- Phase Diving: Restless Souls
						["coord"] = { 51.2, 66.4, KARESH },
					}),
					q(89288, {	-- Phase Diving: Riftbreaker Tza'akir
						["coord"] = { 47.9, 15.9, KARESH },
					}),
					q(86869, {	-- Phase Diving: Shan'dorah Saboteurs
						["coord"] = { 58.9, 28.7, KARESH },
					}),
					q(85863, {	-- Phase Diving: Strange Storms
						["coord"] = { 75.4, 49.0, KARESH },
					}),
					q(86429, {	-- Phase Diving: The Bound Unbound
						["coord"] = { 80.2, 49.8, KARESH },
					}),
					q(86821, {	-- Phase Diving: Unmoored and Unwell
						["coord"] = { 78.8, 32.4, KARESH },
					}),
					n(SPECIAL, {
					}),
				}),
			}),
			n(ZONE_DROPS, {
				i(246589, {	-- Half-Disgested Journal
					["coord"] = { 56.8, 24.1, KARESH },
					["cr"] = 246608,	-- Phase-Lost Creeper
				}),
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KHAZ_ALGAR, {
		m(KARESH, {
			n(QUESTS, {
			}),
			n(RARES, {
				q(90685, {	-- Weekly reputation: Ixthar the Unblinking
					["name"] = "Ixthar the Unblinking weekly reputation obtained.",
				}),
				q(90675, {	-- Weekly reputation: Korgorath the Ravager
					["name"] = "Korgorath the Ravager weekly reputation obtained.",
				}),
				q(90683, {	-- Weekly reputation: Maw of the Sands
					["name"] = "Maw of the Sands weekly reputation obtained.",
				}),
				q(90677, {	-- Weekly reputation: Morgil the Netherspawn
					["name"] = "Morgil the Netherspawn weekly reputation obtained.",
				}),
				q(90684, {	-- Weekly reputation: Orith the Dreadful
					["name"] = "Orith the Dreadful weekly reputation obtained.",
				}),
				q(90679, {	-- Weekly reputation: Prototype Mk-V
					["name"] = "Prototype Mk-V weekly reputation obtained.",
				}),
				q(90680, {	-- Weekly reputation: Revenant of the Wasteland
					["name"] = "Revenant of the Wasteland weekly reputation obtained.",
				}),
				q(90674, {	-- Weekly reputation: Shadowhowl
					["name"] = "Sha'ryth the Cursed weekly reputation obtained.",
				}),
				q(90673, {	-- Weekly reputation: Sha'ryth the Cursed
					["name"] = "Sha'ryth the Cursed weekly reputation obtained.",
				}),
				q(90681, {	-- Weekly reputation: Stalker of the Wastes
					["name"] = "Stalker of the Wastes weekly reputation obtained.",
				}),
				q(91431, {	-- Weekly reputation: Sthaarbs (TODO: swipe with rare questID if wrong)
					["name"] = "Sthaarbs weekly reputation obtained.",
				}),
				q(90678, {	-- Weekly reputation: The Nightreaver
					["name"] = "The Nightreaver weekly reputation obtained.",
				}),
				q(90682, {	-- Weekly reputation: Urmag
					["name"] = "Urmag weekly reputation obtained.",
				}),
				q(90672, {	-- Weekly reputation: Xarran the Binder
					["name"] = "Xarran the Binder weekly reputation obtained.",
				}),
			}),
		}),
	}),
})));
