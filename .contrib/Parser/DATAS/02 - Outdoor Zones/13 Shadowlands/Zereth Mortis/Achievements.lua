---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_2_0 } }, {
	m(ZERETH_MORTIS, {
		n(ACHIEVEMENTS, {
			ach(15518, {	-- A Means to an End
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(15391, {	-- Adventurer of Zereth Mortis
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(15512, {	-- Adventures in Zereth Mortis
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(15211, bubbleDownFiltered({	-- Completing the Code
				["cost"] = {
					{ "i", 187909, 1 },	-- Unstable Containment Trap (temporary vendor item)
					{ "i", 187684, 1 },	-- Containment Trap (quest item)
				},
			},FILTERFUNC_criteriaID,{
				["groups"] = {
					i(187793),	-- Personal Containment Trap (TOY!)
					crit(52552, {
						["crs"] = { 181221 },	-- Bygone Geomental
						["coord"] = { 61.9, 68.0, ZERETH_MORTIS },
					}),
					crit(52553, {
						["description"] = "Only Available during the Daily Quest: Overgrown Story (64785).",
						["crs"] = { 181223 },	-- Gaiagantic
						["coord"] = { 60.9, 64.4, ZERETH_MORTIS },
					}),
					crit(52554, {
						["crs"] = { 181219 },	-- Moss-Choked Guardian
						["coord"] = { 43.7, 90.2, ZERETH_MORTIS },
					}),
					crit(52565, {
						["crs"] = { 179007 },	-- Overgrown Geomental
						["coord"] = { 61.6, 68.6, ZERETH_MORTIS },
					}),
					crit(52566, {
						["crs"] = { 181287 },	-- Gorged Runefeaster
						["coord"] = { 36.1, 38.5, ZERETH_MORTIS },
					}),
					crit(52567, {
						["crs"] = { 181208 },	-- Enchained Servitor
						["coord"] = { 62.5, 24.6, ZERETH_MORTIS },
					}),
					crit(52568, {
						["description"] = "Can spawn in place of a Dominated Laborer.",
						["crs"] = { 184819 },	-- Dominated Irregular
						["coords"] = {
							{ 45.9, 8.2, ZERETH_MORTIS },
							{ 46.0, 7.6, ZERETH_MORTIS },
							{ 46.2, 12.2, ZERETH_MORTIS },
							{ 47.1, 10.8, ZERETH_MORTIS },
							{ 47.5, 4.0, ZERETH_MORTIS },
							{ 48.5, 11.8, ZERETH_MORTIS },
							{ 48.9, 13.5, ZERETH_MORTIS },
							{ 50.9, 10.1, ZERETH_MORTIS },
							{ 51.7, 7.0, ZERETH_MORTIS },
						},
					}),
					crit(52570, {
						["description"] = "Has a long pathway, Start: 61.1, 47.7 Finish: 58.1, 44.3.",
						["crs"] = { 181292 },	-- Misaligned Enforcer
						["coords"] = {
							{ 56.2, 46.8, ZERETH_MORTIS },
							{ 61.1, 47.7, ZERETH_MORTIS },
							{ 58.1, 44.3, ZERETH_MORTIS },
						},
					}),
					crit(52571, {
						["description"] = "Friendly NPC. Short path out of the hub, then despawns.",
						["crs"] = { 181293 },	-- Suspicious Nesmin
						["coords"] = {
							{ 35.0, 64.1, ZERETH_MORTIS },
							{ 34.6, 63.2, ZERETH_MORTIS },
						},
					}),
					crit(52572, {
						["crs"] = { 181294 },	-- Runegorged Bufonid
						["coord"] = { 50.2, 60.2, ZERETH_MORTIS },
					}),
					crit(52573, {
						["crs"] = { 178835 },	-- Sharpeye Collector
						["coord"] = { 53.5, 75.1, ZERETH_MORTIS },
					}),
					crit(52574, {
						["description"] = "This NPC is in stealth.",
						["crs"] = { 181295 },	-- Runethief Xy'lora
						["coords"] = {
							{ 60.0, 51.6, ZERETH_MORTIS },
							{ 61.8, 51.6, ZERETH_MORTIS },
							{ 61.8, 52.6, ZERETH_MORTIS },
							{ 62.2, 49.2, ZERETH_MORTIS },
							{ 64.0, 49.6, ZERETH_MORTIS },
							{ 64.0, 52.0, ZERETH_MORTIS },
						},
					}),
					crit(52575, {
						["crs"] = { 181344 },	-- Runefur
						["coord"] = { 39.8, 52.0, ZERETH_MORTIS },
					}),
					crit(52576, {
						["crs"] = { 181349 },	-- Cipherclad
						["coord"] = { 39.0, 58.5, ZERETH_MORTIS },
					}),
					crit(52577, {
						["crs"] = { 181352 },	-- Bitterbeak
						["coord"] = { 41.7, 62.3, ZERETH_MORTIS },
					}),
					crit(52606, {
						["crs"] = { 181222 },	-- Over-charged Vespoid
						["coord"] = { 62.3, 60.1, ZERETH_MORTIS },
					}),
					crit(52569, {
						["description"] = "Has a big patrol path.",
						["crs"] = { 181290 },	-- Corrupted Runehoarder
						["coord"] = { 46.7, 59.4, ZERETH_MORTIS },
					}),
					crit(52686, {
						["crs"] = { 182798 },	-- Twisted Warpcrafter
						["coord"] = { 45.1, 21.8, ZERETH_MORTIS },
					}),
				},
			})),
			ach(15513, {	-- Curious Collections
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(15404),	-- Cosmic Empowerment
			ach(15392, {	-- Dune Dominance
				i(190111),	-- Escutcheon of Beautiful Death
				i(190110),	-- Flail of Balletic Carnage
				i(190112),	-- Glimmering War Beacon
				i(190462),	-- Impaler's Graceful Lance
				crit(52992, {
					["_npcs"] = { 182114 },	-- Iska, Outrider of Ruin
				}),
				crit(52993, {
					["_npcs"] = { 182155 },	-- High Reaver Damaris
				}),
				crit(52994, {
					["_npcs"] = { 182158 },	-- Reanimatrox Marzan
				}),
			}),
			ach(15224),	-- Explore Zereth Mortis
			ach(15336, {	-- From A to Zereth
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					15259,	-- Secrets of the First Ones
					15331,	-- Treasures of Zereth Mortis
					15392,	-- Dune Dominance
					15391,	-- Adventurer of Zereth Mortis
					15402,	-- Cyphers of the First Ones
					15407,	-- Synthe-fived!
					15220,	-- The Enlightened
				}},
				["groups"] = {
					i(187673),	-- Cryptic Aurelid (MOUNT!)
				},
			}),
			ach(15515, {	-- Path to Enlightenment
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(15502, {	-- Sand, Sand Everywhere!
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(15259, {	-- Secrets of the First Ones
				["sym"] = {{ "achievement_criteria" }},
			}),
			achWithRep(15220, FACTION_THE_ENLIGHTENED),	-- The Enlightened
			ach(15229, {	-- Traversing the Spheres
				["_noautomation"] = true,
				["groups"] = {
					i(187860),	-- Mortis Mover (TOY!)
					crit(52610, {	-- Pollinated Extraction
						["provider"] = { "i", 187879 },	-- Pollinated Extraction
						["coord"] = { 60.4, 76.2, ZERETH_MORTIS },
					}),
					crit(52611, {	-- Honeycombed Lattice
						["provider"] = { "i", 187885 },	-- Honeycombed Lattice
						["coord"] = { 64.1, 59.4, ZERETH_MORTIS },
					}),
					crit(52612, {	-- Anima-charged Yolk
						["provider"] = { "i", 187890 },	-- Anima-charged Yolk
					}),
					crit(52613, {	-- Unstable Agitant
						["provider"] = { "i", 187889 },	-- Unstable Agitant
						["coord"] = { 25.5, 56.7, ZERETH_MORTIS },
					}),
					crit(52614, {	-- Empyrean Essence
						["provider"] = { "i", 187891 },	-- Empyrean Essence
						["coord"] = { 46.1, 71.0, ZERETH_MORTIS },
					}),
					crit(52615, {	-- Incorporeal Sand
						["provider"] = { "i", 187892 },	-- Incorporeal Sand
						["coord"] = { 43.2, 29.0, ZERETH_MORTIS },
					}),
					crit(52616, {	-- Volatile Precursor
						["provider"] = { "i", 187893 },	-- Volatile Precursor
						["coord"] = { 43.5, 57.9, ZERETH_MORTIS },
					}),
					crit(52617, {	-- Energized Firmament
						["provider"] = { "i", 187894 },	-- Energized Firmament
						["coord"] = { 53.3, 30.8, ZERETH_MORTIS },
					}),
					crit(53057, {	-- Wayward Essence
						["provider"] = { "i", 190128 },	-- Wayward Essence
						["coord"] = { 32.7, 40.7, ZERETH_MORTIS },
					}),
					crit(53058, {	-- Serene Pigment
						["provider"] = { "i", 190129 },	-- Serene Pigment
						["coord"] = { 34.5, 46.6, ZERETH_MORTIS },
					}),
				},
			}),
			ach(15331, {	-- Treasures of Zereth Mortis
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(15514, {	-- Unlocking the Secrets
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					15224,	-- Explore Zereth Mortis
					15509,	-- Tales of the Exile
					15513,	-- Curious Collections
					15512,	-- Adventures in Zereth Mortis
					15515,	-- Path to Enlightenment
					15518,	-- A Means to an End
				}},
				["groups"] = {
					spell(366736),	-- Zereth Mortis Flying
				},
			}),
		}),
	}),
})));
