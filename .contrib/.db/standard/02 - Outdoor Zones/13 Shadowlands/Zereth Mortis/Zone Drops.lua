---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_2_0 } }, {
	m(ZERETH_MORTIS, {
		n(ZONE_DROPS, {
			i(189704, {	-- Dominance Key
				["cr"] = 181403,	-- Mawsworn Inquisitor
			}),
			i(187707),	-- Progenitor Essentia
			i(187704),	-- Protoflesh
			i(192444, {	-- Resonating Disc
				["timeline"] = { ADDED_9_2_5 },
			}),
			i(190198),	-- Sandworn Chest Key Fragment
			i(190197, {	-- Sandworn Chest Key
				["cost"] = { { "i", 190198, 5 } },	-- Sandworn Chest Key Fragment
			}),
			i(187703),	-- Silken Protofiber
			i(190579),	-- Unformed Essence
			filter(COSMETIC, {
				i(190951, {	-- Distinguished Blade of Cartel Al
					["cr"] = 181407,	-- Mawsworn Striker
				}),
				i(190950, {	-- Gavel of Lost Purpose
					["cr"] = 181407,	-- Mawsworn Striker
				}),
				i(190948, {	-- Staff of the Dormant Oracle
					["cr"] = 181407,	-- Mawsworn Striker
				}),
				i(190735, {	-- Varruth's Guillotine
					["cr"] = 181407,	-- Mawsworn Striker
				}),
			}),
			filter(CLOAKS, {
				i(188054),	-- Antecedent Drape
			}),
			filter(CLOTH, {
				i(188037),	-- Choral Amice
				i(188008),	-- Choral Handwraps
				i(188009),	-- Choral Hood
				i(188010),	-- Choral Leggings
				i(188011),	-- Choral Sash
				i(188007),	-- Choral Slippers
				i(188006),	-- Choral Vestments
				i(188012),	-- Choral Wraps
			}),
			filter(MAIL, {
				i(188026),	-- Anthemic Bracers
				i(188022),	-- Anthemic Coif
				i(188019),	-- Anthemic Cuirass
				i(188021),	-- Anthemic Gauntlets
				i(188020),	-- Anthemic Greaves
				i(188023),	-- Anthemic Legguards
				i(188025),	-- Anthemic Links
				i(188024),	-- Anthemic Shoulders
			}),
			filter(LEATHER, {
				i(188017),	-- Staccato Belt
				i(188013),	-- Staccato Boots
				i(188018),	-- Staccato Cuffs
				i(188014),	-- Staccato Grips
				i(188015),	-- Staccato Helm
				i(188016),	-- Staccato Leggings
				i(188036),	-- Staccato Mantle
				i(188035),	-- Staccato Vest
			}),
			filter(PLATE, {
				i(188028),	-- Harmonium Breastplate
				i(188030),	-- Harmonium Gauntlets
				i(188033),	-- Harmonium Girdle
				i(188027),	-- Harmonium Helm
				i(188031),	-- Harmonium Legplates
				i(188029),	-- Harmonium Percussive Stompers
				i(188032),	-- Harmonium Spaulders
				i(188034),	-- Harmonium Vambrace
			}),
			n(WEAPONS, {
				i(188041),	-- Ageless Spellblade
				i(188056),	-- Ancient Protector's Pulverizer
				i(188040),	-- Burnished Arbalest
				i(188042),	-- Enlightened Dagger
				i(188043),	-- Eradicator of the Eternal Guard
				i(188051),	-- Gatewarden's Warglaive
				i(188039),	-- Harmonic Actuator
				i(188047),	-- Haven Guard's Cudgel
				i(188046),	-- Haven Guard's Mace
				i(188038),	-- Haven Guard's Shield
				i(188050),	-- Ineffable Spire
				i(188049),	-- Transcendant Gavel
				i(188048),	-- Truthseeker's Staff
			}),
			filter(RECIPES, {
				i(189468, {	-- Schematic: Goldplate Bufonid
					["cr"] = 178803,	-- Accelerated Bufonid
					["coords"] = {
						{ 49.8, 72.6, ZERETH_MORTIS },
						{ 51.8, 75.8, ZERETH_MORTIS },
						{ 76.8, 45.2, ZERETH_MORTIS },
						{ 74.4, 60.6, ZERETH_MORTIS },
						{ 77.2, 52.8, ZERETH_MORTIS },
						{ 80.6, 46.8, ZERETH_MORTIS },
						{ 80.2, 59.4, ZERETH_MORTIS },
					},
				}),
				i(190585, {	-- Schematic: Heartbond Lupine
					["cr"] = 179939,	-- Maw-Frenzied Lupine
				}),
				i(189459, {	-- Schematic: Mawdapted Raptora
					["cr"] = 181412,	-- Mawsworn Hulk
				}),
			}),
			filter(REAGENTS, {
				i(188957),	-- Genesis Mote
				i(187636, {	-- Aurelid Lattice
					["crs"] = {
						182688,	-- Aurelid
						180978,	-- Hirukon <Aurelid Prime>
					},
				}),
				i(187633, {	-- Bufonid Lattice
					["crs"] = {
						178803,	-- Accelerated Bufonid
						184603,	-- Ancient Bufonid
						178963,	-- Gorkek <Bufonid Prime>
						185488,	-- Languid Bufonid
						182362,	-- Overgrown Bufonid
						184395,	-- Toadious
					},
				}),
				i(187635, {	-- Cervid Lattice
					["crs"] = {
						182269,	-- Carnivorous Cervid
						180049,	-- Cervid Grazer
						178098,	-- Cervid Grazer
						180050,	-- Cervid Protector
						178099,	-- Cervid Protector
						181349,	-- Cipherclad
						181383,	-- Mawtouched Grazer
						181260,	-- Native Cervid
						182272,	-- Ravenous Cervid
					},
				}),
				i(189146, {	-- Geomental Lattice
					["crs"] = {
						180930,	-- Forgotten Geomental
						181968,	-- Generated Automental
						178560,	-- Hulking Geomental
						183227,	-- Lost Rubble
						179007,	-- Overgrown Geomental
						181249,	-- Tethos
						178558,	-- Unstable Geomental
					},
				}),
				i(189145, {	-- Helicid Lattice
					["crs"] = {
						178831,	-- Accelerated Helicid
						179043,	-- Orixal <Gastropod Prime>
						185487,	-- Overgrown Helicid
						185510,	-- Pureshell Helicid
					},
				}),
				i(189147, {	-- Leporid Lattice
					["crs"] = {
						185270,	-- Agitated Leponid
						185267,	-- Clutch Guardian
					},
				}),
				i(190388, {	-- Lupine Lattice
					["crs"] = {
						180051,	-- Lupine Animate
						181484,	-- Mawtouched Animate
						181360,	-- Vexis <Lupine Prime>
					},
				}),
				i(189149, {	-- Proto Avian Lattice
					["crs"] = {
						184623,	-- Ancient Avian
						182096,	-- Enhanced Avian
						183674,	-- Enhanced Avian
						181330,	-- Mawtouched Avian
					},
				}),
				i(189150, {	-- Raptora Lattice
					["crs"] = {
						179004,	-- Basal Raptora
						181352,	-- Bitterbeak
						183274,	-- Desert Nester
						183273,	-- Desert Raptora
						178238,	-- Desert Raptora
						180924,	-- Garudeon <Raptora Prime>
						180052,	-- Grasslands Raptora
						182373,	-- Scavenging Raptora
						184472,	-- Soaring Raptora
						183925,	-- Tahkwitz
					},
				}),
				i(189151, {	-- Scarabid Lattice
					["crs"] = {
						178563,	-- Hadeon the Stonebreaker <Scarabid Prime>
						183927,	-- Sand Matriarch Ileus
						178155,	-- Scarabid Burrower
						181197,	-- Scarabid Crawler
					},
				}),
				i(189152, {	-- Tarachnid Lattice
					["crs"] = {
						178508,	-- Mother Phestis <Tarachnid Prime>
						181685,	-- Tarachnid
						181687,	-- Tarachnid Hatchling
					},
				}),
				i(189153, {	-- Unformed Lattice
					["crs"] = {
						184660,	-- Adrift Core
						180917,	-- Destabilized Core
					},
				}),
				i(189154, {	-- Vespoid Lattice
					["crs"] = {
						178229,	-- Feasting
						185486,	-- Furious Vespoid
						178159,	-- Vespoid Drone
						178158,	-- Vespoid Worker
						183258,	-- Vespoid Worker
						183764,	-- Zatojin <Vespoid Prime>
					},
				}),
				i(189155, {	-- Viperid Lattice
					["crs"] = {
						181086,	-- Desert Viperid
					},
				}),
				i(189156, {	-- Vombata Lattice
					["crs"] = {
						181963,	-- Generated Dire Vombata
						178913,	-- Grasslands Vombata
						181359,	-- Mawtouched Bull
						183722,	-- Sorranos <Vombata Prime>
						178935,	-- Vombata Matron
					},
				}),
				-- Pet Protoform
				i(189157),	-- Glimmer of Animation
				i(189159),	-- Glimmer of Discovery
				i(189160),	-- Glimmer of Focus
				i(189161),	-- Glimmer of Malice
				i(189162),	-- Glimmer of Metamorphosis
				i(189163),	-- Glimmer of Motion
				i(189164, {	-- Glimmer of Multiplicity
					["crs"] = {
						185486,	-- Furious Vespoid
						182319,	-- Skittering Nibbler
						178158,	-- Vespoid Worker
						182323,	-- Sentient Overgrowth
						181110,	-- Scavenging Mite
						182213,	-- Sentient Overgrowth
					},
				}),
				i(189165, {	-- Glimmer of Predation
					["crs"] = {
						181116,	-- Dematerializing Worldeater
					},
					["coords"] = {
						{ 40.4, 24.8, ZERETH_MORTIS },
						{ 43.8, 23.6, ZERETH_MORTIS },
						{ 47.8, 25.8, ZERETH_MORTIS },
					},
				}),
				i(189166, {	-- Glimmer of Renewal
					["crs"] = {
						182322,	-- Carnivorous Overgrowth
						182217,	-- Carnivorous Overgrowth
					},
					["coords"] = {
						{ 45.0, 73.8, ZERETH_MORTIS },
						{ 48.6, 76.2, ZERETH_MORTIS },
						{ 45.2, 87.8, ZERETH_MORTIS },
						{ 47.4, 90.6, ZERETH_MORTIS },
						{ 53.6, 90.0, ZERETH_MORTIS },
						{ 49.2, 83.0, ZERETH_MORTIS },
					},
				}),
				i(189169, {	-- Glimmer of Survival
					["crs"] = {
						183884,	-- Climbing Brambles
						182326,	-- Creeping Brambles
						182215,	-- Creeping Brambles
					},
					["coords"] = {
						{ 44.0, 80.6, ZERETH_MORTIS },
						{ 49.2, 83.0, ZERETH_MORTIS },
						{ 49.2, 77.0, ZERETH_MORTIS },
						{ 51.0, 84.8, ZERETH_MORTIS },
						{ 49.5, 91.5, ZERETH_MORTIS },
					},
				}),
				i(189170, {	-- Glimmer of Vigilance
					-- ["description"] = "Drops from Vine-Choked Protectors & Overgrown Drifter",	-- No description due translations?
					["crs"] = {
						182350,	-- Vine-Choked Protector
						182364,	-- Overgrown Drifter
					},
					["coords"] = {
						{ 45.4, 85.6, ZERETH_MORTIS },
						{ 44.0, 88.6, ZERETH_MORTIS },
						{ 50.8, 86.2, ZERETH_MORTIS },
						{ 49.8, 90.6, ZERETH_MORTIS },
						{ 50.8, 94.0, ZERETH_MORTIS },
					},
				}),
				-- Mount Protoform
				i(189173, {	-- Eternal Ragepearl
					["description"] = "Most mobs in the desert drop those, top right of Zereth Mortis.",
					["crs"] = {
						183225,	-- Cliff Reclaimer
						184268,	-- Discordant Sentry
						183253,	-- Dominated Runeshaper
						183249,	-- Dominated Worldbreaker
						184408,	-- Euv'ouk
						182430,	-- Fettered Gunner
						182392,	-- Fettered Warden
						183227,	-- Lost Rubble
					},
				}),
				i(189176, {	-- Protoform Sentience Crown
					["description"] = "Drops from Automas, best farmed during the Dangerous State Daily.",
				}),
				i(189180, {	-- Wind's Infinite Call
					["crs"] = {
						182096,	-- Enhanced Avian
						183674,	-- Enhanced Avian
					},
					["coords"] = {
						{ 77.2, 46.6, ZERETH_MORTIS },
						{ 77.6, 59.0, ZERETH_MORTIS },
						{ 51.2, 62.8, ZERETH_MORTIS },
						{ 45.6, 64.0, ZERETH_MORTIS },
					},
				}),
			}),
		}),
	}),
})));
