---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.VOIDSTORM, {
		n(TREASURES, {
			-- From Voidstorm Treasures
			i(259373),	-- Formula: Ren'dorei Postage Repository (RECIPE!)
			i(247498),	-- Recipe: Entropic Illuminant (RECIPE)
			header(HEADERS.Achievement, 62126, {	-- Treasures of Voidstorm
				o(612891, {	-- Bloody Sack
					["provider"] = { "n", 254756 },	-- Forgotten Oubliette
					["coord"] = { 64.4, 75.5, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 93431,
					["groups"] = { i(267139) },	-- Hungry Black Hole (TOY!)
				}),
				o(613351, {	-- Discarded Energy Pike
					["coord"] = { 35.8, 41.4, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 93496,
					["groups"] = { i(266100) },	-- Barbed Riftwalker Dirk (COSMETIC!)
				}),
				o(612270, {	-- Embedded Spear
					["coord"] = { 55.4, 75.4, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 93553,
					["groups"] = { i(266075) },	-- Harpoon of Extirpation (COSMETIC!)
				}),
				o(613358, {	-- Exaliburn
					["coord"] = { 28.3, 72.9, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 93498,
					["groups"] = { i(266099) },	-- Extinguished Exaliburn (COSMETIC!)
				}),
				o(613327, {	-- Faindel's Quiver
					["coord"] = { 43.0, 81.9, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 93493,
					["groups"] = { i(266098) },	-- Faindel's Longbow (COSMETIC!)
				}),
				o(605169, {	-- Final Cluth of Predaxas
					["coord"] = { 49.9, 79.3, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 93237,
					["groups"] = { i(257446) },	-- Reins of the Insatiable Shredclaw (MOUNT!)
				}),
				o(555250, {	-- Forgotten Researcher's Cache
					["coord"] = { 23.7, 83.1, 2527 },	-- Lair of Predaxas
					["questID"] = 94454,
					["groups"] = { i(250319) },	-- Researcher's Shadowgraft (TOY!)
				}),
				o(613317, {	-- Half-Digested Viscera
					["coord"] = { 37.7, 69.7, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 93467,
					["groups"] = { i(264303) },	-- Willie (PET!)
				}),
				o(617163, {	-- Malignant Chest
					["coord"] = { 53.4, 42.7, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 93840,
					["groups"] = {
						o(616878, {	-- Malignant Node
							["coord"] = { 53.5, 43.3, MAP.MIDNIGHT.VOIDSTORM },
							["questID"] = 93812,
						}),
						o(616890, {	-- Malignant Node
							["coord"] = { 53.0, 43.3, MAP.MIDNIGHT.VOIDSTORM },
							["questID"] = 93813,
						}),
						o(616891, {	-- Malignant Node
							["coord"] = { 53.5, 43.9, MAP.MIDNIGHT.VOIDSTORM },
							["questID"] = 93814,
						}),
						o(616892, {
							["coord"] = { 53.2, 42.7, MAP.MIDNIGHT.VOIDSTORM },
							["questID"] = 93815,
						}),
						--
						i(264482),	-- Void Elf Torch (DECOR!)
					},
				}),
				o(613368, {	-- Quivering Egg
					["coord"] = { 31.5, 44.5, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 93500,
					["groups"] = { i(266076) },	-- Nether Siphoner (PET!)
				}),
				o(618536, {	-- Scout's Pack
					["coord"] = { 49.1, 20.1, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
					["questID"] = 94387,
					["groups"] = { i(266101) },	-- Unused Initiate's Bulwark (COSMETIC!)
				}),
				o(618016, {	-- Stellar Stash
					["description"] = "Enter through the Portcullis on the left side.",
					["provider"] = { "n", 257141 },	-- Stellar Stash
					["coords"] = {
						{ 52.2, 31.2, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },	-- Portcullis
						{ 53.3, 32.2, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },	-- Stellar Stash
					},
					["questID"] = 93996,
					["groups"] = { i(262467) },	-- Void Elf Round Table (DECOR!)
				}),
				o(572819, {	-- Void-Shielded Tomb
					["description"] = "Drink the Potion of Dissociation from the nearby table in order to be able to see the Key.",
					["coord"] = { 25.7, 67.5, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 92414,
					["cost"] = { { "i", 251519, 1 } },	-- 1x Key of Fused Darkness
					["groups"] = {
						o(572906, {	-- Key of Fused Darkness
							["coord"] = { 26.0, 68.7, MAP.MIDNIGHT.VOIDSTORM },
							['groups'] = { i(251519) },	-- Key of Fused Darkness
						}),
					},
				}),
			}),
			header(HEADERS.Achievement, 62104, {	-- Midnight Lore Hunter
				o(618558, {	-- Abandoned Telescope
					["coord"] = { 40.5, 58.6, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 94395,
				}),
				o(618554, {	-- Ancient Tablet
					["coord"] = { 50.3, 87.7, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 94394,
				}),
				o(618571, {	-- Shadowgraft Harness
					["coord"] = { 27.8, 54.0, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 94398,
				}),
				o(618569, {	-- Tattered Page
					["coord"] = { 60.4, 45.5, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 94397,
				}),
				o(618542, {	-- Void Armor
					["coord"] = { 63.4, 78.2, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 94389,
				}),
			}),
			header(HEADERS.Achievement, 62291, {	-- Voidstorm: The Highest Peaks
				o(619662, {	-- Vista Point
					["coord"] = { 36.5, 44.3, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 94552,
				}),
				o(619663, {	-- Vista Point
					["coord"] = { 55.5, 67.2, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 94553,
				}),
				o(619664, {	-- Vista Point
					["coord"] = { 41.8, 70.2, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 94554,
				}),
				o(619665, {	-- Vista Point
					["coord"] = { 37.8, 55.0, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 94555,
				}),
				o(619661, {	-- Vista Point
					["coord"] = { 39.7, 61.2, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 94551,
				}),
			}),
			o(554678, {	-- Lost Shadowstep Supplies
				["coord"] = { 39.3, 63.8, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 91308,
				["groups"] = { i(208856) },	-- Pocket Lint
			}),
			o(560300, {	-- Unpublished Manuscript
				["coord"] = { 53.4, 68.0, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 91699,
				["groups"] = {
					i(246268),	-- A Steamy Romance Novel: Voidlust
				},
			}),
			o(620460, {	-- Voidhoarder's Corpse (TODO: Blizzard bug - vignette name as "stormalion cache")
				["coord"] = { 24.8, 70.0, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 94742,
			}),
			--Repeatable
			o(587195, {	-- Mysterious Domanaar Vessel
				["description"] = "Spawns randomly throughout the zone.",
				["maps"] = { MAP.MIDNIGHT.VOIDSTORM },
			}),
			o(587240, {	-- Mysterious Domanaar Vessel
				["description"] = "Spawns randomly throughout the zone.",
				["maps"] = { MAP.MIDNIGHT.VOIDSTORM },
			}),
			o(587194, {	-- Stashed Singularity Supplies
				["description"] = "Spawns randomly throughout the zone.",
				["maps"] = { MAP.MIDNIGHT.VOIDSTORM },
				["groups"] = {
					i(259126),	-- Housing Dye: Void Violet (DECOR!)
				},
			}),
			o(587238, {	-- Stashed Singularity Supplies
				["description"] = "Spawns randomly throughout the zone.",
				["maps"] = { MAP.MIDNIGHT.VOIDSTORM },
			}),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.VOIDSTORM, {
			n(TREASURES, {
				q(94005),	-- Stellar Stash, treasure wrapper
				q(93569),	-- Exaliburn, same as above (some kind of wrapper)
			}),
		}),
	}),
}));
