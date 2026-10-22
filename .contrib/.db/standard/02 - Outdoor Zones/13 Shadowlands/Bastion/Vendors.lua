---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, {
	m(BASTION, {
		n(VENDORS, {
			n(160470, {	-- Adjutant Nikos <Ascended Quartermaster>
				["coord"] = { 52.2, 47.0, BASTION },
				["groups"] = bubbleDownClassicRep(FACTION_THE_ASCENDED, {
					{		-- Neutral
						i(284538, {	-- Anima-Powered Kyrian Oven (DECOR!)
							["cost"] = { { "c", ANIMA, 200 } },
							["timeline"] = { ADDED_12_1_5 },
						}),
						i(190644, {	-- Vessel of Profound Possibilities (CI!)
							["sourceAchievement"] = 14834,	-- Bound with Purpose
							["timeline"] = { ADDED_9_2_0 },
							["cost"] = { { "c", 2009, 10000 } },	-- 10,000 Cosmic Flux
							["sym"] = SYM.SHADOWLANDS.ALL_CONDUITS,
						}),
					}, {	-- Friendly
						i(183098),	-- Technique: Codex of the Still Mind (RECIPE!)
					}, {	-- Honored
						i(183094),	-- Plans: Shadowsteel Helm (RECIPE!)
						i(184756),	-- Smoothed Loop of Contemplation
						i(217587, {	-- Glyph of Divine Toll
							["timeline"] = { ADDED_10_2_6 },
							["classes"] = { PALADIN },
						}),
						i(217597, {	-- Glyph of Echoing Reprimand
							["timeline"] = { ADDED_10_2_6 },
							["classes"] = { ROGUE },
						}),
						i(217591, {	-- Glyph of Elysian Decree
							["timeline"] = { ADDED_10_2_6 },
							["classes"] = { DEMONHUNTER },
						}),
						i(217586, {	-- Glyph of Radiant Spark
							["timeline"] = { ADDED_10_2_6 },
							["classes"] = { MAGE },
						}),
						i(217584, {	-- Glyph of Spear of Bastion
							["timeline"] = { ADDED_10_2_6 },
							["classes"] = { WARRIOR },
						}),
						i(217595, {	-- Glyph of Weapons of Order
							["timeline"] = { ADDED_10_2_6 },
							["classes"] = { MONK },
						}),
					}, {	-- Revered
						i(184410),	-- Aspirant's Stretcher (TOY!)
						i(184734),	-- Bracers of Regret
						i(284548, {	-- Ceremonial Kyrian Standard (DECOR!)
							["cost"] = { { "c", ANIMA, 200 } },
							["timeline"] = { ADDED_12_1_5 },
						}),
						i(180857, {	-- Goldenpaw Kit (PET!)
							["cost"] = { { "i", POLISHED_PET_CHARM, 250 } },
						}),
						i(184732),	-- Manacles of Burden
						i(183243, {	-- Memory of the Arbiter's Judgment
							["modID"] = 14,
						}),
						i(284550, {	-- Ornate Kyrian Glass Platform (DECOR!)
							["cost"] = { { "c", ANIMA, 500 } },
							["timeline"] = { ADDED_12_1_5 },
						}),
						i(183103),	-- Technique: Contract: The Ascended (RECIPE!)
						i(184733),	-- Wristclamps of Remorse
						i(184735),	-- Wristclasps of Shame
					}, {	-- Exalted
						i(184728),	-- Casque of the Path
						i(184730),	-- Cowl of the Path
						i(183740),	-- Gilded Prowler (MOUNT!)
						i(184731),	-- Gorget of the Path
						i(184351),	-- Illusion: Devoted Spirit (ILLUSION!)
						i(184729),	-- Masque of the Path
						i(183097),	-- Schematic: PHA7-YNX (RECIPE!)
						i(178991),	-- Tabard of the Ascended
					},
				}),
			}),
			n(175574, {	-- Angler Danica <Fishing Supplies>
				["coord"] = { 49.6, 63.2, BASTION },
				["groups"] = { i(180136) },	-- The Brokers Angle'r
			}),
			n(274668, {	-- Curator Ilaros <Decor Specialist>
				["coord"] = { 52.4, 47.0, BASTION },
				["timeline"] = { ADDED_12_1_5 },
				["groups"] = {
					i(284548, {	-- Ceremonial Kyrian Standard (DECOR!)
						["cost"] = { { "c", ANIMA, 200 } },
					}),
					i(284524, {	-- Elysian Bulbflower (DECOR!)
						["cost"] = { { "c", ANIMA, 200 } },
					}),
					i(284510, {	-- Elysian Heart-Lotus (DECOR!)
						["cost"] = { { "c", ANIMA, 500 } },
					}),
					i(284536, {	-- Elysian Skyfrond (DECOR!)
						["cost"] = { { "c", ANIMA, 200 } },
					}),
					i(284520, {	-- Hanging Elysian Skyvy (DECOR!)
						["cost"] = { { "c", ANIMA, 200 } },
					}),
					i(284542, {	-- Kyrian Steward Effigy (DECOR!)
						["cost"] = { { "c", ANIMA, 300 } },
					}),
					i(284544, {	-- Kyrian Waymarker (DECOR!)
						["cost"] = { { "c", ANIMA, 200 } },
					}),
					i(284460, {	-- Kyrian Waymarker Plaque (DECOR!)
						["cost"] = { { "c", ANIMA, 200 } },
					}),
					i(284522, {	-- Lush Elysian Bellflower Bush (DECOR!)
						["cost"] = { { "c", ANIMA, 500 } },
					}),
					i(284526, {	-- Lush Elysian Lily (DECOR!)
						["cost"] = { { "c", ANIMA, 200 } },
					}),
					i(284508, {	-- Lush Elysian Lotus (DECOR!)
						["cost"] = { { "c", ANIMA, 500 } },
					}),
					i(284540, {	-- Narrow Kyrian Drapes (DECOR!)
						["cost"] = { { "c", ANIMA, 200 } },
					}),
					i(284532, {	-- Radiant Elysian Water Lily (DECOR!)
						["cost"] = { { "c", ANIMA, 200 } },
					}),
					i(284546, {	-- Runic Kyrian Reliquary (DECOR!)
						["cost"] = { { "c", ANIMA, 500 } },
					}),
					i(284514, {	-- Sparse Elysian Pondweed (DECOR!)
						["cost"] = { { "c", ANIMA, 200 } },
					}),
					i(284512, {	-- Verdant Elysian Crownblossom (DECOR!)
						["cost"] = { { "c", ANIMA, 500 } },
					}),
					i(284534, {	-- Windswept Elysian Grass (DECOR!)
						["cost"] = { { "c", ANIMA, 200 } },
					}),
					i(284518, {	-- Windswept Elysian Shrub (DECOR!)
						["cost"] = { { "c", ANIMA, 200 } },
					}),
					i(284516, {	-- Windswept Elysian Skyplume (DECOR!)
						["cost"] = { { "c", ANIMA, 200 } },
					}),
					i(284528, {	-- Windswept Elysian Willow (DECOR!)
						["cost"] = { { "c", ANIMA, 500 } },
					}),
					i(284530, {	-- Winged Elysian Spiralbloom (DECOR!)
						["cost"] = { { "c", ANIMA, 200 } },
					}),
				},
			}),
			n(171526, {	-- Kobri <Refreshments>
				["coord"] = { 52.6, 47.4, BASTION },
				["groups"] = { i(180788) },	-- Memorial Wine
			}),
			n(158625, {	-- Trader Ta'bix
				["coord"] = { 33.4, 36.4, BASTION },
				["groups"] = {
					i(180972, {	-- Pristine Vuline Pelt
						["description"] = "Take this to Ta'lan the Antiquary in Oribos (The Broker's Den) |cffffffff(51.3, 43.0)|r.",
					}),
					i(183786),	-- Happiness Bird
				},
			}),
		}),
	}),
}));
