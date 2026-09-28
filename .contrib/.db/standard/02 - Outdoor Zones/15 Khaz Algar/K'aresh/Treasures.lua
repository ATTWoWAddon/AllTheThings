---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(KARESH, {
		n(TREASURES, {
			header(HEADERS.Achievement, 42741, {	-- Treasures of K'aresh
				o(499082, {	-- Abandoned Lockbox
					["coords"] = {	-- Multiple possible spawn points
						{ 54.0, 55.0, KARESH },
						{ 54.0, 59.2, KARESH },
						{ 59.8, 53.7, KARESH },
						{ 60.1, 60.9, KARESH },
					},
					["questID"] = 92348,
					["groups"] = { i(246299) },	-- Blade of Lost Hope (COSMETIC!)
				}),
				-- Groupping these together since they are all part of the same treasure
				o(503363, {	-- Battered Book
					["coord"] = { 66.6, 44.8, KARESH },
					["questID"] = 86415,
					["groups"] = { i(233794) },	-- Battered Book
				}),
				o(503370, {	-- Submerged Bottle
					["coord"] = { 76.2, 31.2, KARESH },
					["groups"] = { i(233799) },	-- Submerged Bottle
				}),
				o(503375, {	-- Ancient Coffer
					["description"] = "Find 'Battered Book' and 'Submerged Bottle' in order to reveal the Coffer and obtain it's Treasure.",
					["coord"] = { 60.9, 38.4, KARESH },
					["questID"] = 86416,
					["cost"] = {
						{ "i", 233794, 1 },	-- Battered Book
						{ "i", 233799, 1 },	-- Submerged Bottle
					},
					["groups"] = { i(245269) },	-- Mr. Long-Legs (PET!)
				}),
				--
				o(502603, {	-- Crudely Stitched Sack
					["coord"] = { 58.6, 34.3, KARESH },
					["questID"] = 86323,
					["groups"] = { i(246295) },	-- Tazavesh Lookout's Mace (COSMETIC!)
				}),
				o(499093, {	-- Forlorn Wind Chime
					["coord"] = { 69.7, 52.3, KARESH },
					["questID"] = 85837,
				}),
				o(500046, {	-- Gift of the Brothers
					["description"] = "Talk to 3 NPCs after clicking on the treasure.\n\nEnable Quest tracking for detailed infos.",
					["coords"] = {
						{ 76.1, 45.3, KARESH },	-- Treasure
						{ 75.5, 39.8, KARESH },	-- Sahra
						{ 68.3, 45.3, KARESH },	-- Naji
						{ 69.9, 60.5, KARESH },	-- M'alim
					},
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
							["coord"] = { 69.9, 60.5, KARESH },
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
					["groups"] = { i(243144) },	-- Reshi Crystal Fragments
				}),
				o(499086, {	-- Lightly-Dented Luggage
					["coords"] = {	-- Two (maybe more?) possible spawn points
						{ 53.7, 64.1, KARESH },
						{ 54.9, 62.5, KARESH },
					},
					["questID"] = 91352,
				}),
				o(503823, {	-- Mailroom Distribution
					["description"] = "Grab the Mail Overflow from the Mailbox in front of the Mailroom.",
					["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
					["provider"] = { "o", 503837 },	-- Mailroom Distribution [Vignette]
					["coord"] = { 48.1, 64.1, KARESH_TAZAVESH },
					["questID"] = 86467,
					["groups"] = { i(245970) },	-- P.O.S.T. Master's Express Hearthstone (TOY!)
				}),
				o(502471, {	-- Rashaal's Vase
					["coords"] = {
						{ 68.8, 47.9, KARESH },	-- Cave Entrance
						{ 70.2, 47.7, KARESH },	-- Treasure
					},
					["questID"] = 86306,
				}),
				o(499097, {	-- Sand-Worn Coffer
					["coord"] = { 54.5, 24.5, KARESH },
					["questID"] = 85840,
					["groups"] = { i(246297) },	-- Desperate Defender's Bladed Staff (COSMETIC!)
				}),
				o(502485, {	-- Shattered Crystals
					["coord"] = { 75.1, 55.3, KARESH },
					["questID"] = 86308,
					["groups"] = { i(243144) },	-- Reshi Crystal Fragments
				}),
				o(502547, {	-- Skeletal Tail Bones
					["coord"] = { 77.8, 27.9, KARESH },
					["questID"] = 86322,
					["groups"] = { i(243158) },	-- Ixthal the Observling (PET!)
				}),
				o(502452, {	-- Tumbled Package
					["coord"] = { 65.3, 63.6, KARESH },
					["questID"] = 86304,
				}),
				o(502437, {	-- Wastelander Stash
					["coord"] = { 60.5, 42.1, KARESH },
					["questID"] = 86301,
				}),
			}),
			header(HEADERS.Achievement, 60890, {	-- Secrets of the K'areshi
				o(558090, {	-- A Dog-Eared Book
					["coord"] = { 37.3, 25.7, KARESH_TAZAVESH },
					["questID"] = 91640,
				}),
				o(558109, {	-- Ba'key's Aromatic Broker Cookies Recipes
					["coord"] = { 46.3, 18.6, KARESH_TAZAVESH },
					["questID"] = 91645,
				}),
				o(558115, {	-- Coins: An Oath We Exchange
					["coord"] = { 41.7, 39.7, KARESH_TAZAVESH },
					["questID"] = 91648,
				}),
				o(558372, {	-- Geologist Field Journal
					["coord"] = { 48.9, 57.2, KARESH },
					["questID"] = 91686,
				}),
				o(558105, {	-- Mysterious Notebook
					["coord"] = { 58.5, 91.5, KARESH_TAZAVESH },
					["questID"] = 91642,
				}),
			}),
			-- Repeatable
			-- None phase
			o(516571, {	-- Broker Exchequer
				["description"] = "Can be found at random locations throughout K'aresh.",
				["minReputation"] = { FACTION_THE_KARESH_TRUST, 11 },	-- The K'aresh Trust Renown 11
				["maps"] = { KARESH_TAZAVESH, KARESH },
				-- No quest attached to them.
				["sym"] = {	-- Zone Drop (This may need to change as the R11 Trait states "Find bigger treasures". Dunno if that means better rewards or some other reward pool.)
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
			o(516444, {	-- Ethereal Pocket-Storage
				["description"] = "Can be found at random locations throughout K'aresh.",
				["minReputation"] = { FACTION_THE_KARESH_TRUST, 4 },	-- The K'aresh Trust Renown 4
				["lockCriteria"] = { 1, "renownID", FACTION_THE_KARESH_TRUST + 0.11 },	-- The K'aresh Trust Renown 11
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
		}),
	}),
}));
