---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		n(TREASURES, {
			header(HEADERS.Achievement, 42741, {	-- Treasures of K'aresh
				-- Quests listed instead of objects are obtained from WoWhead and are there simply as a placeholder for easier editing and to show which Treasures belong under the header (as per current in-game criteria 22.06.2025.).
				-- TODO: Replace quests with actual ObjectID upon discovery
				o(499082, {	-- Abandoned Lockbox
					["coord"] = { 54.0, 55.0, KARESH },
					-- Found at { 60.1, 60.9, KARESH }, 16.07.2025. Changed coordinates? Verification required for old coord
					--^ Alex: this coords also up for me, yet treasure 'there is no loot'
					-- Found at { 59.7, 53.7, KARESH }, 27.07.2025. Wat? New alt required to check if it is present on the older coords and if this is a final position...
					["questID"] = 92348,
					["groups"] = {
						i(246299),	-- Blade of Lost Hope (COSMETIC!)
						i(246301),	-- Pitted Blade of Lost Hope
					},
				}),
				q(86416, {	-- Ancient Coffer
					-- TODO: Bugged. Invisible. Can't be looted 25.06.2025. -Exo
					-- Vignette not visible while Phase Diving so, it's an "open world" treasure. It may has some prerequisite? Something must be done in order to see the treasure?
					["coord"] = { 60.9, 38.4, KARESH },
					--["questID"] = 86416,	-- Wowhead data
				}),
				o(548597, {	-- Bladed Rifle Of Unfettered Momentum
					["coord"] = { 70.0, 70.8, KARESH },	-- could be KARESH_TAZAVESH
					["questID"] = 91058,
					["groups"] = {
						i(245673),	-- Bladed Rifle of Unfettered Momentum (COSMETIC!)
					},
				}),
				o(502603, {	-- Crudely Stitched Sack
					["coord"] = { 58.6, 34.3, KARESH },
					["questID"] = 86323,
					["groups"] = {
						-- Junk item worth 10g. Only source of it for now.
						i(246296),	-- Off-Balance Mace of the Tazavesh Lookout
					},
				}),
				o(529537, {	-- Efrat's Forgotten Bulwark
					["coord"] = { 78.0, 49.0, KARESH },
					["questID"] = 90514,
					["groups"] = {
						i(243004),	-- Efrat's Forgotten Bulwark (COSMETIC!)
					},
				}),
				q(89378, {	-- Ethereal Voidforged Container
					-- TODO: I think this one is bugged as well. No matter how I get to the top of the pillar, there is no container. 25.06.2025. -Exo
					["description"] = "You need to Phasedive in order to see the Treasure.\nRequires some serious jumping precision in order to get to it.",
					["coord"] = { 52.1, 68.3, KARESH },
				}),
				o(499093, {	-- Forlorn Wind Chime
					["coord"] = { 69.7, 52.3, KARESH },
					["questID"] = 85837,
					["groups"] = { i(246295), },	-- Tazavesh Lookout's Mace (COSMETIC!)
				}),
				o(500046, {	-- Gift of the Brothers
					["coord"] = { 76.1, 45.3, KARESH },
					["questID"] = 85959,
					["groups"] = {
						q(86065, {	-- Finding Sahra
							["name"] = "Sahra reunited with Ihya",
							["provider"] = { "n", 234075 },	-- Sahra
							["coord"] = { 75.5, 39.8, KARESH },
						}),
						q(86066, {	-- Finding Naji
							["name"] = "Naji reunited with Ihya",
							["provider"] = { "n", 234112 },	-- Naji
							["coord"] = { 68.3, 45.3, KARESH },
						}),
						q(86067, {	-- Finding M'alim
							["name"] = "M'alim reunited with Ihya",
							["provider"] = { "n", 234113 },	-- M'alim
							["coord"] = { 68.3, 45.3, KARESH },
						}),
						q(85958, {	-- Ihya's Gratitude
							["name"] = "Ihya's Gratitude",
							["provider"] = { "n", 233881 },	-- Ihya
							["coord"] = { 76.1, 45.3, KARESH },
						}),
						o(499334),	-- Flickering Lantern
						--
						i(248199),	-- The Brothers' Final Gift (COSMETIC!)
					},
				}),
				o(504172, {	-- Ixthar's Favorite Crystal
					["coord"] = { 64.1, 44.0, KARESH },
					["questID"] = 86492,
					["groups"] = { i(243144), },	-- Reshi Crystal Fragments
				}),
				o(529669, {	-- Korgoraths Talon
					["description"] = "You need to Phasedive in order to see the Treasure.",
					["coord"] = { 64.4, 42.7, KARESH },
					["questID"] = 90532,
					["groups"] = { i(243153), },	-- Korgorath's Talon (COSMETIC!)
				}),
				o(529525, {	-- Light Soaked Cleaver
					["coord"] = { 52.5, 46.8, KARESH },
					["questID"] = 90511,
					["groups"] = {
						i(243002),	-- Light-Soaked Cleaver (COSMETIC!)
					},
				}),
				o(499086, {	-- Lightly-Dented Luggage
					["coord"] = { 54.9, 62.5, KARESH },
					["questID"] = 91352,
				}),
				o(503823, {	-- Mailroom Distribution
					["description"] = "Grab the Mail Overflow from the Mailbox in front of the Mailroom.",
					["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
					["coord"] = { 48.1, 64.1, KARESH_TAZAVESH },
					["questID"] = 86467,
					["groups"] = { i(245970), },	-- P.O.S.T. Master's Express Hearthstone (TOY!)
				}),
				o(548001, {	-- P.O.S.T. Master's Prototype Parcel and Postage Presser
					["coord"] = { 47.5, 70.0, KARESH_TAZAVESH },
					["questID"] = 91056,
					["groups"] = {
						i(245669),	-- P.O.S.T. Master's Prototype Parcel and Postage Presser (COSMETIC!)
					},
				}),
				o(529539, {	-- Petrified Branch Of Janaa
					["coord"] = { 78.3, 61.6, KARESH },
					["questID"] = 90515,
					["groups"] = {
						i(243006),	-- Petrified Branch of Janaa (COSMETIC!)
					},
				}),
				o(548010, {	-- Phaseblade Of The Void Marches
					["coord"] = { 50.8, 35.3, KARESH },
					["questID"] = 91057,
					["groups"] = {
						i(245671),	-- Phaseblade of the Void Marches (COSMETIC!)
					},
				}),
				o(502471, {	-- Rashaal's Vase
					["coords"] = {
						{ 68.8, 47.9, KARESH },	-- Cave Entrance
						{ 70.2, 47.7, KARESH },	-- Treasure
					},
					["questID"] = 86306,
					["groups"] = {
						-- Junk item worth 10g. Only source of it for now.
						i(243161),	-- Long-Pressed Flowers
					},
				}),
				o(499097, {	-- Sand-Worn Coffer
					["coord"] = { 54.5, 24.5, KARESH },
					["questID"] = 85840,
					["groups"] = {
						i(246297),	-- Desperate Defender's Bladed Staff (COSMETIC!)
						i(246298),	-- Cracked Staff of the Desperate Defender
					},
				}),
				o(529664, {	-- Shadowguard Crusher
					["description"] = "You need to Phasedive in order to see the Treasure Object.",
					["coord"] = { 49.2, 18.0, KARESH },
					["questID"] = 90527,
					["groups"] = {
						i(243008),	-- Shadowguard Crusher (COSMETIC!)
					},
				}),
				o(502485, {	-- Shattered Crystals
					["coord"] = { 75.1, 55.3, KARESH },
					["questID"] = 86308,
					["groups"] = { i(243144), },	-- Reshi Crystal Fragments
				}),
				o(502547, {	-- Skeletal Tail Bones
					["coord"] = { 77.8, 27.9, KARESH },
					["questID"] = 86322,
					["groups"] = { i(243158), },	-- Ixthal the Observling (PET!)
				}),
				o(529533, {	-- Spear Of Fallen Memories
					["coord"] = { 23.7, 46.8, KARESH_TAZAVESH },
					["questID"] = 90512,
					["groups"] = {
						i(243003),	-- Spear of Fallen Memories (COSMETIC!)
					},
				}),
				o(529591, {	-- Sufaadi Skiff Lantern
					["coord"] = { 80.7, 52.7, KARESH },
					["questID"] = 90521,
					["groups"] = {
						i(243009),	-- Sufaadi Skiff Lantern (COSMETIC!)
					},
				}),
				o(529643, {	-- Tulwar Of The Golden Guard
					["coord"] = { 51.0, 65.1, KARESH },
					["questID"] = 90522,
					["groups"] = {
						i(243005),	-- Tulwar of the Golden Guard (COSMETIC!)
					},
				}),
				o(502452, {	-- Tumbled Package
					["coord"] = { 65.3, 63.6, KARESH },
					["questID"] = 86304,
					["groups"] = {
						-- Junk item worth 10g. Only source of it for now.
						i(243160),	-- Tazavesh Shipping Manifest
					},
				}),
				o(547995, {	-- Warglaive of the Audacious Hunter
					["description"] = "You need to Phasedive in order to see the Treasure Object.",
					["coord"] = { 72.1, 29.4, KARESH },
					["questID"] = 91055,
					["groups"] = {
						i(245667),	-- Warglaive of the Audacious Hunter (COSMETIC!)
					},
				}),
				o(502437, {	-- Wastelander Stash
					["coord"] = { 60.5, 42.1, KARESH },
					["questID"] = 86301,
					["groups"] = {
						-- Junk item worth 10g. Only source of it for now.
						i(243145),	-- Well-Preserved Wrappings
					},
				}),
			}),
			header(HEADERS.Achievement, 60890, {	-- Secrets of the K'areshi
				q(91640),	-- A Dog-Eared Book
				o(558109, {	-- Ba'key's Aromatic Broker Cookies Recipes
					["coord"] = { 46.3, 18.6, KARESH_TAZAVESH },
					["questID"] = 91645,
				}),
				o(558375, {	-- Checklist of Minor Pleasures
					["description"] = "You need to Phasedive in order to see the Lore Object.",
					["coord"] = { 38.2, 45.6, KARESH_TAZAVESH },
					["questID"] = 91687,
				}),
				o(558115, {	-- Coins: An Oath We Exchange
					["coord"] = { 41.7, 39.7, KARESH_TAZAVESH },
					["questID"] = 91648,
				}),
				o(558110, {	-- From Vengeance to Void
					["description"] = "You need to Phasedive in order to see the Lore Object.",
					["coord"] = { 42.3, 20.9, KARESH },
					["questID"] = 91646,
				}),
				o(558372, {	-- Geologist Field Journal
					["coord"] = { 48.9, 57.2, KARESH },
					["questID"] = 91686,
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
				o(558105, {	-- Mysterious Notebook
					["coord"] = { 58.5, 91.5, KARESH_TAZAVESH },
					["questID"] = 91642,
				}),
				o(558112, {	-- The Facets of K'aresh
					["description"] = "You need to Phasedive in order to see the Lore Object.",
					["coord"] = { 72.1, 29.4, KARESH },
					["questID"] = 91647,
				}),
			}),
			-- Repeatable
			-- None phase
			o(516444, {	-- Ethereal Pocket-Storage
				["description"] = "Spawns at random locations throughout K'aresh.",
				["minReputation"] = { FACTION_THE_KARESH_TRUST, 4 },	-- The K'aresh Trust Renown 4
				["maps"] = { KARESH_TAZAVESH, KARESH },
				-- No quest attached to them.
				["sym"] = {	-- Zone Drop
					{"select","mapID",KHAZ_ALGAR},{"pop"},
					{"where","mapID",KARESH},{"pop"},
					{"where","headerID",ZONE_DROPS},{"pop"},
				},
				["groups"] = {	-- Has a chance to drop following
					-- 'World Drop' gray equipment and other junk
					-- Currency, like Gold, Valorstones, Resonance Crystals
					-- But... Then again... Has a chance to drop something like this:
					-- Alex: symed zone drop, added additional source of shared (?) stuff
					i(243147),	-- Ethereal Defense Pylon
					i(243219),	-- Phased Ethereal Bow
					i(242371),	-- Untethered Xy'bucha
				},
			}),
			-- Phased
			o(516626, {	-- Phase-Lost Pocket-Storage
				["description"] = "Spawns at random locations throughout K'aresh while Phasedive.",
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
	}),
})));