---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ZULAMAN, {
		n(TREASURES, {
			header(HEADERS.Achievement, 62104, {	-- Midnight Lore Hunter
				o(620314, {	-- Tablet of Akil'zon
					["coord"] = { 53.1, 82.1, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 94627,
				}),
				o(620327, {	-- Tablet of Filo
					["coord"] = { 52.9, 32.1, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 94674,
				}),
				o(620321, {	-- Tablet of Halazzi
					["coord"] = { 32.1, 31.6, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 94628,
				}),
				o(620323, {	-- Tablet of Jan'alal
					["coord"] = { 55.1, 17.6, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 94631,
				}),
				o(620326, {	-- Tablet of Kulzi
					["coord"] = { 39.3, 44.7, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 94673,
				}),
				o(620324, {	-- Tablet of Nalorakk
					["coord"] = { 30.2, 84.6, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 94632,
				}),
				o(620325, {	-- Tablet of the Ruling Family	// https://warcraft.wiki.gg/wiki/Tablet_of_the_Ruling_Family
					["coord"] = { 37.5, 26.7, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 94633,
					-- Available at Early Access Launch, removed sometime between 26 February and 28 February 2026.
					-- Fixed/re-added in 12.0.5
					["timeline"] = { ADDED_12_0_1_LAUNCH, "removed 12.0.1.66192", ADDED_12_0_5 },
				}),
			}),
			header(HEADERS.Achievement, 62125, {	-- Treasures of Zul'Aman
				o(539053, {	-- Abandoned Nest
					["coord"] = { 42.6, 52.4, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 90799,
					["groups"] = {
						i(255680),	-- Forgotten Talon
						i(255008, {	-- Weathered Eagle Egg
							i(255151),	-- Scruffbeak (PET!)
						}),
					},
				}),
				o(539049, {	-- Bait and Tackle
					["coord"] = { 20.8, 66.5, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 90795,
					["groups"] = {
						i(241145),	-- Lucky Loa Lure
						i(255157),	-- Abyss Angler's Fish Log
					},
				}),
				o(539050, {	-- Burrow Bounty
					["coord"] = { 42.0, 47.8, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 90796,
					["groups"] = {
						i(254749),	-- Phial of Burrow Balm
					},
				}),
				o(539046, {	-- Honored Warrior's Cache
					["sourceQuests"] = { 93560 },	-- Start Honored Warrior
					["coord"] = { 46.8, 81.9, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 90793,
					["cost"] = {
						{ "i", 259219, 1 },	-- Bear Tooth
						{ "i", 259220, 1 },	-- Dragonhawk Feather
						{ "i", 259221, 1 },	-- Eagle Talon
						{ "i", 259223, 1 },	-- Lynx Claw
					},
					["groups"] = {
						i(257223),	-- Ancestral War Bear (MOUNT!)
					},
				}),
				o(613727, {	-- Honored Warrior's Cache
					["coord"] = { 46.8, 81.9, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 93560,
					["groups"] = {
						o(613758, {	-- Honored Warrior's Urn
							["coord"] = { 51.6, 84.9, MAP.MIDNIGHT.ZULAMAN },
							["groups"] = {
								n(255231),	-- Akil'zon's Chosen
								i(259221),	-- Eagle Talon
							},
						}),
						o(613760, {	-- Honored Warrior's Urn
							["coord"] = { 34.5, 33.5, MAP.MIDNIGHT.ZULAMAN },
							["groups"] = {
								n(255232),	-- Halazzi's Chosen
								i(259223),	-- Lynx Claw
							},
						}),
						o(613757, {	-- Honored Warrior's Urn
							["coord"] = { 54.8, 22.4, MAP.MIDNIGHT.ZULAMAN },
							["groups"] = {
								n(255233),	-- Jan'alai's Chosen
								i(259220),	-- Dragonhawk Feather
							},
						}),
						o(613701, {	-- Honored Warrior's Urn
							["coord"] = { 32.7, 83.5, MAP.MIDNIGHT.ZULAMAN },
							["groups"] = {
								n(255171),	-- Nalorakk's Chosen
								i(259219),	-- Bear Tooth
							},
						}),
					},
				}),
				o(539051, {	-- Mrruk's Mangy Trove
					["coord"] = { 52.3, 66.0, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 90797,
					["groups"] = {
						i(256164),	-- Broken Oar
						i(255428),	-- Tolbani's Medicine Satchel
					},
				}),
				o(617237, {	-- Sealed Twilight's Blade Bounty Cache
					["description"] = "Unlock 4 Sealing Orbs in nearby towers.",
					["provider"] = { "o", 617659 },	-- Sealed Twilight's Blade Bounty
					["coord"] = { 21.9, 77.4, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 93871,
					["sourceQuests"] = {
						93916,	-- Sealing Orb #1, Unlocked
						93917,	-- Sealing Orb #2, Unlocked
						93918,	-- Sealing Orb #3, Unlocked
						93919,	-- Sealing Orb #4, Unlocked
					},
					["groups"] = {
						q(93916, {	-- Sealing Orb #1, Unlocked
							["coord"] = { 26.1, 80.7, MAP.MIDNIGHT.ZULAMAN },
							["name"] = "Sealing Orb #1, Unlocked",
						}),
						q(93917, {	-- Sealing Orb #2, Unlocked
							["coord"] = { 24.0, 78.9, MAP.MIDNIGHT.ZULAMAN },
							["name"] = "Sealing Orb #2, Unlocked",
						}),
						q(93918, {	-- Sealing Orb #3, Unlocked
							["coord"] = { 24.0, 75.7, MAP.MIDNIGHT.ZULAMAN },
							["name"] = "Sealing Orb #3, Unlocked",
						}),
						q(93919, {	-- Sealing Orb #4, Unlocked
							["coord"] = { 26.1, 74.0, MAP.MIDNIGHT.ZULAMAN },
							["name"] = "Sealing Orb #4, Unlocked",
						}),
						--
						iensemble(265362),	-- Arsenal: Twilight Blade
					},
				}),
				o(539052, {	-- Secret Formula
					["coord"] = { 40.5, 36.0, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 90798,
					["groups"] = {
						i(256326),	-- Fetid Dartfrog Idol
						i(257149),	-- Old Tome
					},
				}),
			}),
			header(HEADERS.Achievement, 62289, {	-- Zul'Aman: The Highest Peaks
				o(619651, {	-- Vista Point Flag
					["coord"] = { 27.8, 70.0, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 94541,
				}),
				o(619652, {	-- Vista Point Flag
					["coord"] = { 53.0, 82.0, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 94542,
				}),
				o(619653, {	-- Vista Point Flag
					["coord"] = { 57.7, 21.2, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 94543,
				}),
				o(619654, {	-- Vista Point Flag
					["coords"] = {
						{ 63.6, 85.1, MAP.MIDNIGHT.EVERSONG_WOODS },	-- NOTE: Blizzard bug. While standing on the spot, the game displays you as if you are in Eversong Woods
						{ 24.6, 58.3, MAP.MIDNIGHT.ZULAMAN },	-- Correct Zul'Aman coordinate
					},
					["questID"] = 94544,
				}),
				o(619655, {	-- Vista Point Flag
					["coord"] = { 41.9, 41.6, MAP.MIDNIGHT.ZULAMAN },
					["questID"] = 94545,
				}),
			}),
			o(539047, {	-- Abandoned Ritual Skull
				["coord"] = { 44.7, 44.1, MAP.MIDNIGHT.ZULAMAN },
				["cost"] = { { "i", 259361, 1000 } },	-- 1000x Vile Essence
				["questID"] = 90794,
				["groups"] = {
					i(257444),	-- Hexed Vilefeather Eagle (MOUNT!)
				},
			}),
			-- Repeatable Treasures, contain currencies, grays, potions, etc.
			o(555462, {	-- Forgotten Amani Cache
				["description"] = "Spawns randomly around the coastal areas of the zone.",
			}),
			o(587912, {	-- Giant Grab Bag
				["coords"] = {
					{ 26.0, 35.9, MAP.MIDNIGHT.ZULAMAN },
					{ 26.4, 38.4, MAP.MIDNIGHT.ZULAMAN },
					{ 26.4, 38.5, MAP.MIDNIGHT.ZULAMAN },
					{ 27.6, 37.7, MAP.MIDNIGHT.ZULAMAN },
					{ 27.6, 39.1, MAP.MIDNIGHT.ZULAMAN },
					{ 29.6, 36.6, MAP.MIDNIGHT.ZULAMAN },
					{ 51.3, 76.7, MAP.MIDNIGHT.ZULAMAN },
					{ 51.5, 71.6, MAP.MIDNIGHT.ZULAMAN },
					{ 51.6, 75.1, MAP.MIDNIGHT.ZULAMAN },
					{ 52.3, 69.9, MAP.MIDNIGHT.ZULAMAN },
					{ 56.2, 74.9, MAP.MIDNIGHT.ZULAMAN },
				},
			}),
			o(583965, {	-- Maisara Vilevessel
				["coords"] = {
					{ 34.4, 38.3, MAP.MIDNIGHT.ZULAMAN },
					{ 41.9, 39.6, MAP.MIDNIGHT.ZULAMAN },
					{ 44.8, 39.0, MAP.MIDNIGHT.ZULAMAN },
					{ 44.9, 41.4, MAP.MIDNIGHT.ZULAMAN },
					{ 45.3, 38.1, MAP.MIDNIGHT.ZULAMAN },
					{ 46.6, 37.4, MAP.MIDNIGHT.ZULAMAN },
					{ 46.7, 40.1, MAP.MIDNIGHT.ZULAMAN },
					{ 47.8, 46.1, MAP.MIDNIGHT.ZULAMAN },
					{ 48.0, 48.6, MAP.MIDNIGHT.ZULAMAN },
					{ 48.0, 50.4, MAP.MIDNIGHT.ZULAMAN },
					{ 49.0, 46.5, MAP.MIDNIGHT.ZULAMAN },
				},
			}),
			o(587913, {	-- Shabby Stockpile
				["description"] = "Spawns randomly around the area of Atal'Abasi.",
			}),
			o(582157, {	-- Spiritpaw Satchel
				["description"] = "Spawns randomly around the area of Spiritpaw Backwoods.",
			}),
			o(583971, {	-- Stonewash Supplies
				["description"] = "Spawns randomly around the coastal areas of the zone.",
			}),
			o(582179, {	-- Twilight Ordinance
				["description"] = "Spawns randomly (mostly) around the area of Broken Throne.",
				["coords"] = {
					{ 20.9, 62.5, MAP.MIDNIGHT.ZULAMAN },
					{ 21.6, 69.1, MAP.MIDNIGHT.ZULAMAN },
					{ 21.6, 77.6, MAP.MIDNIGHT.ZULAMAN },
					{ 23.2, 61.6, MAP.MIDNIGHT.ZULAMAN },
					{ 23.4, 60.3, MAP.MIDNIGHT.ZULAMAN },
					{ 23.9, 71.5, MAP.MIDNIGHT.ZULAMAN },
					{ 24.1, 78.8, MAP.MIDNIGHT.ZULAMAN },
					{ 24.2, 83.0, MAP.MIDNIGHT.ZULAMAN },
					{ 24.7, 64.2, MAP.MIDNIGHT.ZULAMAN },
					{ 25.0, 63.3, MAP.MIDNIGHT.ZULAMAN },
					{ 25.5, 64.2, MAP.MIDNIGHT.ZULAMAN },
					{ 26.0, 74.1, MAP.MIDNIGHT.ZULAMAN },
					{ 26.0, 80.7, MAP.MIDNIGHT.ZULAMAN },
					{ 26.1, 61.6, MAP.MIDNIGHT.ZULAMAN },
					{ 26.3, 71.4, MAP.MIDNIGHT.ZULAMAN },
					{ 27.4, 26.8, MAP.MIDNIGHT.ZULAMAN },
					{ 28.1, 75.1, MAP.MIDNIGHT.ZULAMAN },
					{ 28.6, 76.6, MAP.MIDNIGHT.ZULAMAN },
				},
			}),
			-- Has a chance to drop from any treasure
			i(256739),	-- Formula: Enchant Ring - Eyes of the Eagle (RECIPE!)
			-- Housing Dyes can drop from any repeatable treasures. Should we even bother adding them in here?
			i(259112),	-- Dark Gold Dye
			i(259130),	-- Nightsong Lilac Dye
			--[[ Keeping these for a while in case they get introduced back. When we get too deep into expansion cycle and these do not get added back, I think it's safe to remove the section.
			o(539042, {	-- Ruz'avalt's Prized Tackle	-- TODO: Present but un-interactable on Early Acces, Removed at Full Launch.
				["coord"] = { 44.3, 56.2, MAP.MIDNIGHT.ZULAMAN },
				--["questID"] = ?????,
			}),
			o(555480, {	-- Inscribed Oar	-- TODO: Present on Beta/PTR, removed at some point during testing.
				["coord"] = { 45.7, 70.2, MAP.MIDNIGHT.ZULAMAN },
				["questID"] = 91395,
			}),
			--]]
		}),
	}),
}));

--root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
--	m(MAP.MIDNIGHT.QUELTHALAS, {
--		m(MAP.MIDNIGHT.ZULAMAN, {
--			n(TREASURES, {
--			}),
--		}),
--	}),
--}));
