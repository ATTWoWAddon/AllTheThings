---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	m(EMERALD_DREAM, {
		n(ACHIEVEMENTS, {
			ach(19316, {	-- Adventurer of the Emerald Dream
				crit(62945, {	-- Bloodstripe Great Ray
					["_npcs"] = { 210050 },	-- Bloodstripe Great Ray
				}),
				crit(62937, {	-- Crabtankerous
					["_npcs"] = { 209909 },	-- Crabtankerous
				}),
				crit(62933, {	-- Envoy of Winter
					["_npcs"] = { 209929 },	-- Envoy of Winter
				}),
				crit(62930, {	-- Firebrand Fystia
					["_npcs"] = { 209893 },	-- Firebrand Fystia
				}),
				crit(62938, {	-- Fruitface
					["_npcs"] = { 209913 },	-- Fruitface
				}),
				crit(62932, {	-- Greedy Gessie
					["_npcs"] = { 209936 },	-- Greedy Gessie
				}),
				crit(62950, {	-- Henri Snufftail
					["_npcs"] = { 210075 },	-- Henri Snufftail
				}),
				crit(62936, {	-- Ignit the Firebranded
					["_npcs"] = { 209620 },	-- Ignit the Firebranded
				}),
				crit(62940, {	-- Isaqa
					["_npcs"] = { 209919 },	-- Isaqa
				}),
				crit(62943, {	-- Keen-eyed Cian
					["_npcs"] = { 210046 },	-- Keen-eyed Cian
				}),
				crit(62946, {	-- Matriarch Keevah
					["_npcs"] = { 210051 },	-- Matriarch Keevah
				}),
				crit(62948, {	-- Molten Leadspike
					["_npcs"] = { 210064 },	-- Molten Leadspike
				}),
				crit(62947, {	-- Moltenbinder's Disciple
					["_npcs"] = { 208658 },	-- Moltenbinder's Disciple
				}),
				crit(62942, {	-- Moragh the Slothful
					["_npcs"] = { 210045 },	-- Moragh the Slothful
				}),
				crit(62949, {	-- Mosa Umbramane
					["_npcs"] = { 210070 },	-- Mosa Umbramane
				}),
				crit(62929, {	-- Nouberon
					["_npcs"] = { 209113 },	-- Nouberon
				}),
				crit(62931, {	-- Reefbreaker Moruud
					["_npcs"] = { 209898 },	-- Reefbreaker Moruud
				}),
				crit(62951, {	-- Ristar, the Rabid
					["_npcs"] = { 210161 },	-- Ristar, the Rabid
				}),
				crit(62944, {	-- Somnambulant Ori
					["_npcs"] = { 210047 },	-- Somnambulant Ori
				}),
				crit(62935, {	-- Splinterlimb
					["_npcs"] = { 209358 },	-- Splinterlimb
				}),
				crit(62941, {	-- Surging Lasher
					["_npcs"] = { 210111 },	-- Surging Lasher
				}),
				crit(62934, {	-- Talthonel Ashwhisper
					["_npcs"] = { 209902 },	-- Talthonel Ashwhisper
				}),
				crit(62939, {	-- The Apostle
					["_npcs"] = { 209911 },	-- The Apostle
				}),
			}),
			ach(19026, {	-- Defenders of the Dream
				crit(62054, {	-- Enter The Dream
					["sourceQuests"] = { 77283 },	-- A Multi-Front Battle
				}),
				crit(62055, {	-- Druids of the Flame
					["sourceQuests"] = { 76443 },	-- The Looming Cinder
				}),
				crit(62056, {	-- Ice and Fire
					["sourceQuests"] = { 77178 },	-- Tactical Withdrawal
				}),
				crit(62057, {	-- Eye of Ysera
					["sourceQuests"] = { 76337 },	-- The Ember Still Smolders
				}),
				crit(62058, {	-- A Dream of Fields and Fire
					["sourceQuests"] = { 76401 },	-- Echo of the Firelands
				}),
				crit(62059, {	-- New Beginnings
					["sourceQuests"] = { 76283 },	-- Andu-falah-dor
				}),
			}),
			ach(19301, {	-- Dragon Glyphs: Amirdrassil
				["coord"] = { 49.9, 64.3, EMERALD_DREAM },
			}),
			ach(19299, {	-- Dragon Glyphs: Cinder Summit
				["coord"] = { 29.9, 21.2, EMERALD_DREAM },
			}),
			ach(19300, {	-- Dragon Glyphs: Dreamsurge Basin
				["coord"] = { 45.5, 45.8, EMERALD_DREAM },
			}),
			ach(19296, {	-- Dragon Glyphs: Eye of Ysera
				["coord"] = { 60.3, 30.1, EMERALD_DREAM },
			}),
			ach(19297, {	-- Dragon Glyphs: Furnace Coil
				["coord"] = { 21.2, 26.7, EMERALD_DREAM },
			}),
			ach(19298, {	-- Dragon Glyphs: Smoldering Copse
				["coord"] = { 33.7, 45.6, EMERALD_DREAM },
			}),
			ach(19303, {	-- Dragon Glyphs: Wakeful Vista
				["coord"] = { 61.6, 75.4, EMERALD_DREAM },
			}),
			ach(19302, {	-- Dragon Glyphs: Whorlwing basin
				["coord"] = { 31.7, 80.7, EMERALD_DREAM },
			}),
			ach(19318, {	-- Dream On
				["sym"] = {{"meta_achievement",
					19026,	-- Defenders of the Dream
					19316,	-- Adventurer of the Emerald Dream
					19317,	-- Treasures of the Emerald Dream
					19013,	-- I Dream of Seeds
					19309,	-- Explore the Emerald Dream
					19312,	-- Super Duper Bloom
				}},
				["groups"] = {
					title(55),	-- <Name> of the Emerald Dream
				},
			}),
			ach(19306, {	-- Emerald Dream Glyph Hunter
				["sym"] = {{"meta_achievement",
					19301,	-- Dragon Glyphs: Amirdrassil
					19299,	-- Dragon Glyphs: Cinder Summit
					19300,	-- Dragon Glyphs: Dreamsurge Basin
					19296,	-- Dragon Glyphs: Eye of Ysera
					19297,	-- Dragon Glyphs: Furnace Coil
					19298,	-- Dragon Glyphs: Smoldering Copse
					19303,	-- Dragon Glyphs: Wakeful Vista
					19302,	-- Dragon Glyphs: Whorlwing basin
				}},
			}),
			petbattle(ach(19401, {	-- Emerald Dream Safari
				crit(63271, {	-- Dream Badger
					["crs"] = { 212557 },
				}),
				crit(63272, {	-- Flooftalon
					["crs"] = { 211110 },
				}),
				crit(63273, {	-- Fol'ya Pup
					["crs"] = { 211177 },
				}),
				crit(63274, {	-- Leyhart
					["crs"] = { 211288 },
				}),
				crit(63275, {	-- Pale Slumbertooth
					["crs"] = { 212437 },
				}),
				crit(63276, {	-- Pewling
					["crs"] = { 211302 },
				}),
				crit(63277, {	-- Sapnibbler
					["crs"] = { 211182 },
				}),
				crit(63278, {	-- Slumbertooth
					["crs"] = { 211295 },
				}),
				crit(63279, {	-- Snaggletoof
					["crs"] = { 212459 },
				}),
			})),
			ach(19309),	-- Explore the Emerald Dream
			pvp(ach(19294)),	-- Tour of Duty: Emerald Dream
			ach(19317, {	-- Treasures of the Emerald Dream
				i(210414),	-- Forest Lord's Antlers (COSMETIC!)
				crit(62954, {	-- Crystalline Glowblossom
					["_quests"] = { 77950 },
				}),
				crit(62953, {	-- Hidden Moonkin Stash
					["_quests"] = { 77858 },
				}),
				crit(62960, {	-- Magical Bloom
					["_quests"] = { 78005 },
				}),
				crit(62961, {	-- Odd Burl
					["_quests"] = { 78006 },
				}),
				crit(62956, {	-- Pineshrew Cache
					["_quests"] = { 78120 },
				}),
				crit(62958, {	-- Reliquary of Ashamane
					["_quests"] = { 78359 },
				}),
				crit(62957, {	-- Reliquary of Aviana
					["_quests"] = { 78360 },
				}),
				crit(62959, {	-- Reliquary of Goldrinn
					["_quests"] = { 78361 },
				}),
				crit(62955, {	-- Reliquary of Ursol
					["_quests"] = { 78107 },
				}),
				crit(62952, {	-- Triflesnatch's Roving Trove
					["_quests"] = { 77872 },
				}),
			}),
		}),
	}),
})));
