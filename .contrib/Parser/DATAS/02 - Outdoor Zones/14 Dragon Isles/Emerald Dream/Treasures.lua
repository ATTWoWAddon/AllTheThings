---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	m(EMERALD_DREAM, {
		n(TREASURES, {
			o(409849, {	-- Ashwood Research Binder
				["questID"] = 78911,
				["coord"] = { 60.8, 44.9, EMERALD_DREAM },
				["isDaily"] = true,
				["g"] = {
					i(210737),	-- Ashwood Research Binder
				},
			}),
			o(413780, {	-- On the Nature of the Dream
				["questID"] = 78833,
				["coord"] = { 54.4, 24.6, EMERALD_DREAM },
				["isDaily"] = true,
				["g"] = {
					i(208649),	-- On the Nature of the Dream
				},
			}),
			o(413774, {	-- The Legend of Elun'Ahir
				["questID"] = 78831,
				["coord"] = { 49.8, 61.7, EMERALD_DREAM },
				["isDaily"] = true,
				["g"] = {
					i(210049),	-- The Legend of Elun'Ahir
				},
			}),
			o(413787, {	-- The Tragedy of Erinethria
				["questID"] = 78835,
				["coord"] = { 53.7, 23.9, EMERALD_DREAM },
				["isDaily"] = true,
				["g"] = {
					i(208619),	-- The Tragedy of Erinethria
				},
			}),
			--
			o(408107, {	-- Crystalline Glowblossom
				["questID"] = 77950,
				["coord"] = { 39.1, 65.5, EMERALD_DREAM },
			}),
			o(407862, {	-- Hidden Moonkin Stash
				["questID"] = 77858,
				["coord"] = { 47.5, 34.9, EMERALD_DREAM },
				["g"] = {
					i(210725),	-- Owl Post (TOY!)
				},
			}),
			n(210544, {	-- Laughing Sprigling
				["providers"] = {
					{ "n", 210538 },	-- Laughing Podling (vignette)
				},
				["questID"] = 78033,	-- trigger 'accepted' part and completed when he drop chest (pseudo-quest?), have (w) in-game
				["isWeekly"] = true,
				["description"] = "Interact with this npc 3 times to spawn chest, after each interaction - he will run away. Just follow him.",
				["coords"] = {
					{ 64.3, 61.3, EMERALD_DREAM },
					{ 62.9, 60.4, EMERALD_DREAM },
					{ 61.6, 59.5, EMERALD_DREAM },
				},
				["g"] = {
					o(408706, {	-- Magical Bloom
						["coord"] = { 61.6, 59.5, EMERALD_DREAM },
						["questID"] = 78005,
					}),
				},
			}),
			o(408707, {	-- Odd Burl
				["questID"] = 78006,
				["coord"] = { 55.3, 57.3, EMERALD_DREAM },
			}),
			o(409440, {	-- Pineshrew Cache
				["questID"] = 78120,
				["coord"] = { 37.3, 30.7, EMERALD_DREAM },
				["g"] = {
					i(210411),	-- Fast Growing Seed (TOY!)
				},
			}),
			o(411778, {	-- Pollenfused Bristlebruin Fur Sample
				["classes"] = { DRUID },
				["coord"] = { 63.7, 39.2, EMERALD_DREAM },
				["sourceQuest"] = 78046,	-- Overseer Oversight
				["g"] = {
					i(210727),	-- Pollenfused Bristlebruin Fur Sample (CI!)
				},
			}),
			o(413784, {	-- Self-Baking Herb Based Cookies
				["questID"] = 78834,
				["coord"] = { 59.6, 19, EMERALD_DREAM },
				["isDaily"] = true,
				["groups"] = {
					i(210346),	-- Self-Baking Herb Based Cookies
				},
			}),
			n(212009, {	-- Statue of the Ashen Panther
				["questID"] = 78365,
				["description"] = "Find a Mark of Ashamane and return to the statute with the buff still active. Druids can activate in cat form.",
				["coord"] = { 63.4, 72.9, EMERALD_DREAM },
				["g"] = {
					o(411065, {	-- Reliquary of Ashamane
						["questID"] = 78359,
						["g"] = {
							i(210631),	-- Branch of Ashamane (COSMETIC!)
						},
					}),
				},
			}),
			n(210732, {	-- Statue of the Bear Lord
				["questID"] = 78095,
				["description"] = "Find a Mark of Ursol and return to the statute with the buff still active. Druids can activate in bear form.",
				["coord"] = { 47.0, 53.1, EMERALD_DREAM },
				["g"] = {
					o(409222, {	-- Reliquary of Ursol
						["questID"] = 78107,
						["g"] = {
							i(210434),	-- Visage of Ursoc (COSMETIC!)
						},
					}),
				},
			}),
			n(212012, {	-- Statue of the Great Wolf
				["questID"] = 78368,
				["description"] = "Find a Mark of Goldrinn and return to the statute with the buff still active.",	-- possibly for shamans?
				["coord"] = { 32.9, 83.1, EMERALD_DREAM },
				["g"] = {
					o(411067, {	-- Reliquary of Goldrinn
						["questID"] = 78361,
						["g"] = {
							i(210660),	-- Claw of Lo'Gosh (COSMETIC!)
						},
					}),
				},
			}),
			n(212011, {	-- Statue of the Sky Mistress
				["questID"] = 78367,
				["description"] = "Find a Mark of Avianna and return to the statute with the buff still active. Druids can activate in travel (fly) form.",
				["coord"] = { 64.2, 19.3, EMERALD_DREAM },
				["g"] = {
					o(411066, {	-- Reliquary of Aviana
						["coord"] = { 64.1, 19.2, EMERALD_DREAM },
						["questID"] = 78360,
						["g"] = {
							i(210659),	-- Branch of Aviana (COSMETIC!)
						},
					}),
				},
			}),
			o(407739, {	-- Triflesnatcher's Roving Trove
				["description"] = "You need to interact with owl 3 times in order to spawn chest.",
				["questID"] = 77872,
				["coord"] = { 34.1, 56.4, EMERALD_DREAM },
				["g"] = {
					n(210060, {	-- Triflesnatcher
						["description"] = "1st owl",
						["questID"] = 77855,
						["coord"] = { 39.7, 52.1, EMERALD_DREAM },
					}),
					n(210081, {	-- Triflesnatcher
						["description"] = "2nd owl",
						["questID"] = 77857,
						["coord"] = { 42.2, 56.2, EMERALD_DREAM },
					}),
					n(210084, {	-- Triflesnatcher
						["description"] = "3rd owl",
						["questID"] = 77860,
						["coord"] = { 41.7, 62.5, EMERALD_DREAM },
					}),
				},
			}),
			o(411447, {	-- Unwaking Echo
				["questID"] = 78547,
				["description"] = "Use /sleep to loot the chest.",
				["coord"] = { 55.7, 22.6, EMERALD_DREAM },
				["g"] = {
					i(210675),	-- Gardener's Lightstaff (COSMETIC!)
				},
			}),
			o(411463, {	-- Unwaking Echo
				["questID"] = 78550,
				["description"] = "Use /sleep to loot the chest.",
				["coord"] = { 69.6, 52.8, EMERALD_DREAM },
				["g"] = {
					i(210686),	-- Grovekeeper's Barrier (COSMETIC!)
				},
			}),
			o(411465, {	-- Unwaking Echo
				["questID"] = 78551,
				["description"] = "Use /sleep to loot the chest.",
				["coord"] = { 55.3, 45.4, EMERALD_DREAM },
				["g"] = {
					i(210678),	-- Verdant Gleaner's Scythe (COSMETIC!)
				},
			}),
			o(411466, {	-- Unwaking Echo
				["questID"] = 78552,
				["description"] = "Use /sleep to loot the chest.",
				["coord"] = { 46.3, 86.2, EMERALD_DREAM },
				["g"] = {
					i(210682),	-- Camper's Knife (COSMETIC!)
				},
			}),
			n(212351, {	-- Wolf Cowl
				["questID"] = 78477,
				["coord"] = { 32.9, 83.1, EMERALD_DREAM },
				["races"] = { ORC, MAGHAR },
				["g"] = {
					i(210552),	-- Cowl of the Wolf Ancient (COSMETIC!)
				},
			}),
			o(408719, {	-- Small Somnut
				i(210171),	-- Formula: Enchanted Aspect's Dreaming Crest (RECIPE!)
				i(210173),	-- Formula: Enchanted Whelpling's Dreaming Crest (RECIPE!)
				i(210172),	-- Formula: Enchanted Wyrm's Dreaming Crest (RECIPE!)
				i(203315),	-- Winding Slitherdrake: Small Spiked Crest (MM!)
				i(203332),	-- Winding Slitherdrake: Spiked Horns (MM!)
				i(203357),	-- Winding Slitherdrake: Spiked Tail (MM!)
			}),
			o(408720, {	-- Laden Somnut
				["sym"] = {
					--add zone drop into loot table
					{"select","mapID",EMERALD_DREAM},{"pop"},{"where","headerID",ZONE_DROPS},
					--replace small somnut at renown 11
					{"select","objectID",408719},{"pop"},
				},
			}),
		}),
	}),
})));