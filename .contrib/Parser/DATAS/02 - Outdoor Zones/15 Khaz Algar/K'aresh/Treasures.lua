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
				}),
				q(86416, {	-- Ancient Coffer
					-- TODO: Bugged. Invisible. Can't be looted 22.06.2025. -Exo
					["coord"] = { 60.9, 38.4, KARESH },
					--["questID"] = 86416,	-- Wowhead data
				}),
				q(91058, {	-- Bladed Rifle Of Unfettered Momentum
				}),
				o(502603, {	-- Crudely Stitched Sack
					-- TODO: Bugged. Invisible. Can't be looted 22.06.2025. -Exo
					["coord"] = { 58.6, 34.3, KARESH },
					["questID"] = 86323,
				}),
				q(90514, {	-- Efrats Forgotten Bulwark
				}),
				q(89378, {	-- Ethereal Voidforged Container
				}),
				o(499093, {	-- Forlorn Wind Chime
					["coord"] = { 69.7, 52.3, KARESH },
					["questID"] = 85837,
					["g"] = {
						i(243144),	-- Reshi Crystal Fragments
					},
				}),
				o(500046, {	-- Gift of the Brothers
					["coord"] = { 76.1, 45.3, KARESH },
					["questID"] = 85959,
					["g"] = {
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
						q(85958, {	-- Finding M'alim
							["name"] = "Ihya's Gratitude",
							["provider"] = { "n", 233881 },	-- Ihya
							["coord"] = { 76.1, 45.3, KARESH },
						}),
						o(499334),	-- Flickering Lantern
						i(248199),	-- The Brothers' Final Gift (COSMETIC!)
					},
				}),
				o(504172, {	-- Ixthar's Favorite Crystal
					["coord"] = { 64.1, 44.0, KARESH },
					["questID"] = 86492,
					["g"] = {
						i(243144),	-- Reshi Crystal Fragments
					},
				}),
				q(90532, {	-- Korgoraths Talon
				}),
				q(90511, {	-- Light Soaked Cleaver
				}),
				o(499086, {	-- Lightly-Dented Luggage
					["coord"] = { 53.7, 64.1, KARESH },
					["questID"] = 91352,
					["g"] = {
						i(242529),	-- Shadowtrade Imports
					},
				}),
				o(503823, {	-- Mailroom Distribution
					["description"] = "Grab the Mail Overflow from the Mailbox in front of the Mailroom.",
					["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
					["coord"] = { 48.1, 64.1, TAZAVESH },
					["questID"] = 86467,
					["g"] = {
						i(245970),	-- P.O.S.T. Master's Express Hearthstone (TOY!)
					},
				}),
				q(91056, {	-- P.O.S.T. Master's Prototype Parcel and Postage Presser
				}),
				q(90515, {	-- Petrified Branch Of Janaa
				}),
				q(91057, {	-- Phaseblade Of The Void Marches
				}),
				o(502471, {	-- Rashaal's Vase
					["questID"] = 86306,
				}),
				o(499097, {	-- Sand-Worn Coffer
					["coord"] = { 54.5, 24.5, KARESH },
					["questID"] = 85840,
					["g"] = {
						i(246297),	-- Desperate Defender's Bladed Staff (COSMETIC!)
					},
				}),
				q(90527, {	-- Shadowguard Crusher
				}),
				o(502485, {	-- Shattered Crystals
					-- TODO: Bugged. Can't be looted. 22.06.2025. -Exo
					["coord"] = { 75.1, 55.3, KARESH },
					--["questID"] = ,
				}),
				o(502547, {	-- Skeletal Tail Bones
					-- TODO: Bugged. Can't be looted. 22.06.2025. -Exo
					["coord"] = { 77.8, 27.9, KARESH },
					["questID"] = 86322,
				}),
				q(90512, {	-- Spear Of Fallen Memories
				}),
				q(90521, {	-- Sufaadi Skiff Lantern
				}),
				q(90522, {	-- Tulwar Of The Golden Guard
				}),
				o(502452, {	-- Tumbled Package
					-- TODO: Bugged. Can't be looted. 22.06.2025. -Exo
					["coords"] = {
						{ 68.8, 47.9, KARESH },	-- Cave Entrance
						{ 70.2, 47.7, KARESH },	-- Treasure
						{ 65.3, 63.6, KARESH },	-- Another one near Tazavesh?
					},
					["questID"] = 86304,
				}),
				q(91055, {	-- Warglaive Of The Audacious Hunter
				}),
				o(502437, {	-- Wastelander Stash
					["coord"] = { 60.5, 42.1, KARESH },
					["questID"] = 86301,
					["g"] = {
						-- Junk item worth 10g. Only source of it for now.
						i(243145),	-- Well-Preserved Wrappings
					},
				}),
			}),
			header(HEADERS.Achievement, 60890, {	-- Secrets of the K'areshi
				q(91640),	-- A Dog-Eared Book
				o(558109, {	-- Ba'key's Aromatic Broker Cookies Recipes
					-- TODO: Bugged. does not trigger a HQT. 22.06.2025. -Exo
					["coord"] = { 46.3, 18.6, TAZAVESH },
					["questID"] = 91645,
				}),
				q(91687),	-- Checklist of Minor Pleasures
				o(558115, {	-- Coins: An Oath We Exchange
					["coord"] = { 41.7, 39.7, TAZAVESH },
					["questID"] = 91648,
				}),
				q(91646),	-- From Vengeance to Void
				o(558372, {	-- Geologist Field Journal
					["coord"] = { 48.9, 57.2, KARESH },
					["questID"] = 91686,
				}),
				q(91649),	-- I Have Become Void!
				q(91643),	-- Multiversal Energy Dynamics and the Murmurration Paradox
				o(558105, {	-- Mysterious Notebook
					["coord"] = { 58.5, 91.5, TAZAVESH },
					["questID"] = 91642,
				}),
				q(91647),	-- The Facts of K'aresh
			}),
			o(516444, {	-- Ethereal Pocket-Storage
				["description"] = "Spawns at random locations throughout Tazavesh.",
				["maps"] = { TAZAVESH },
				-- No quest attached to them.
				["g"] = {	-- Has a chance to drop following
					-- 'World Drop' gray equipment and other junk
					-- Currency, like Gold, Valorstones, Resonance Crystals
					-- But... Then again... Has a chance to drop something like this:
					i(244489),	-- Worn Shadowguard Blade's Breeches
					i(244506),	-- Worn Shadowguard Captain's Epaulettes
				},
			}),
		}),
	}),
})));
