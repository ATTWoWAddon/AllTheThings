---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(BASTION, {
		n(VENDORS, {
			n(160470, {	-- Adjutant Nikos <Ascended Quartermaster>
				["coord"] = { 52.2, 47.0, BASTION },
				["g"] = bubbleDownClassicRep(FACTION_THE_ASCENDED, {
					{		-- Neutral
						i(190644, {	-- Vessel of Profound Possibilities (CI!)
							["cost"] = {{"c",2009,10000}},	-- 10,000 Cosmic Flux
							["timeline"] = { ADDED_9_2_0 },
							["sym"] = {
								{"select","expansionID",EXPANSION.SL},	-- Select Shadowlands
								{"find","headerID",CONDUITS},{"pop"},	-- grab the main Conduits category (to keep the class grouping)
							},
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
						i(180857, {	-- Goldenpaw Kit (PET!)
							["cost"] = {{ "i", POLISHED_PET_CHARM, 250 }},
						}),
						i(184732),	-- Manacles of Burden
						i(183243, {	-- Memory of the Arbiter's Judgment
							["modID"] = 14,
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
			n(175574, {	-- Angler Danica
				i(180136),	-- The Brokers Angle'r
			}),
			n(171526, {	-- Kobri <Refreshments>
				["coord"] = { 52.6, 47.4, BASTION },
				["g"] = {
					i(180788),	-- Memorial Wine
				},
			}),
			n(158625, {	-- Trader Ta'bix
				["coord"] = { 33.4, 36.4, BASTION },
				["g"] = {
					i(180972, {	-- Pristine Vuline Pelt
						["description"] = "Take this to Ta'lan the Antiquary in Oribos (The Broker's Den) |cffffffff(51.3, 43.0)|r.",
					}),
					i(183786),	-- Happiness Bird
				},
			}),
		}),
	}),
})));