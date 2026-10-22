---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(REVENDRETH, {
		n(VENDORS, {
			n(158986, {	-- Absolooshun <Innkeeper>
				["coord"] = { 72.2, 39.8, REVENDRETH },
				["groups"] = {
					i(180685, {	-- Soul Sliver
						["cost"] = { { "c", 1820, 20 } },
					}),
				},
			}),
			n(156218, {	-- Deadfoot <General Goods, Repairs, & Boots>
				["coord"] = { 48.6, 68.6, REVENDRETH },
				["groups"] = {
					i(182746, {	-- All-In-One Belt Repair Kit
						["cost"] = { { "c", 1820, 5 } },
					}),
					i(181298, {	-- Banewood Survival Kit
						["cost"] = { { "c", 1820, 20 } },
					}),
					i(183419, {	-- Hopebreaker's Left Boot
						["cost"] = { { "c", 1820, 10 } },
					}),
					i(180704, {	-- Infused Pet Biscuit
						["cost"] = { { "c", 1820, 20 } },
					}),
					i(183416, {	-- Mail Courier's Left Runner
						["cost"] = { { "c", 1820, 10 } },
					}),
					i(183427, {	-- Researcher's Left Slipper
						["cost"] = { { "c", 1820, 10 } },
					}),
					i(183422, {	-- Stone Legion Left Sabaton
						["cost"] = { { "c", 1820, 10 } },
					}),
				},
			}),
			n(165859, {	-- Dimwiddle
				["coord"] = { 60.8, 62.5, REVENDRETH },
				["groups"] = {
					i(180687, {	-- Anima Residue
						["cost"] = { { "c", 1820, 10 } },	-- Infused Ruby
					}),
					i(179938, {	-- Crumbling Pride Extractors
						["cost"] = { { "c", 1820, 10 } },	-- Infused Ruby
					}),
					i(184719, {	-- Enchanted Map of Infused Ruby Network
						["cost"] = { { "c", 1820, 100 } },	-- Infused Ruby
					}),
					i(180714, {	-- Endmire Salve
						["cost"] = { { "c", 1820, 10 } },	-- Infused Ruby
					}),
					i(180683, {	-- Guardian Stonewing
						["cost"] = { { "c", 1820, 10 } },	-- Infused Ruby
					}),
					i(184716, {	-- Sentry Neutralizer
						["cost"] = { { "c", 1820, 3 } },	-- Infused Ruby
					}),
					i(179937, {	-- Sliver of Burgeoning Ambition
						["cost"] = { { "c", 1820, 10 } },	-- Infused Ruby
					}),
					i(184718, {	-- Stolen Map of Infused Ruby Network
						["cost"] = { { "c", 1820, 5 } },	-- Infused Ruby
					}),
					i(181337, {	-- Stonefiend's Wings
						["cost"] = { { "c", 1820, 20 } },	-- Infused Ruby
					}),
				},
			}),
			n(165419, {	-- Grand Marshal Mudrag
				["coord"] = { 40.6, 46.9, REVENDRETH },
				["groups"] = {
					i(183989, {	-- Dredger Barrow Racer (TOY!)
						["cost"] = { { "c", 1820, 50 } },	-- 50x Infused Ruby
					}),
				},
			}),
			n(166076, {	-- Mats
				["coord"] = { 32.6, 49.3, REVENDRETH },
				["groups"] = {
					i(180676, {	-- Discarded Commendation
						["cost"] = { { "c", 1820, 10 } },	-- Infused Ruby
					}),
					i(180404, {	-- Embertone Lotion
						["cost"] = { { "c", 1820, 20 } },	-- Infused Ruby
					}),
					i(184719, {	-- Enchanted Map of Infused Ruby Network
						["cost"] = { { "c", 1820, 100 } },	-- Infused Ruby
					}),
					i(181318, {	-- Enchanted Mirror Dust
						["cost"] = { { "c", 1820, 20 } },	-- Infused Ruby
					}),
					i(180678, {	-- Peck Acorn
						["cost"] = { { "c", 1820, 10 } },	-- Infused Ruby
					}),
					i(180689, {	-- Pocket Embers
						["cost"] = { { "c", 1820, 10 } },	-- Infused Ruby
					}),
					i(184716, {	-- Sentry Neutralizer
						["cost"] = { { "c", 1820, 3 } },	-- Infused Ruby
					}),
					i(184718, {	-- Stolen Map of Infused Ruby Network
						["cost"] = { { "c", 1820, 5 } },	-- Infused Ruby
					}),
					i(180658, {	-- Witherlight Crystal
						["cost"] = { { "c", 1820, 10 } },	-- Infused Ruby
					}),
				},
			}),
			n(167815, {	-- Mims <Innkeeper>
				["coord"] = { 32.6, 49.3, REVENDRETH },
				["groups"] = { i(179271) },	-- Dredhollow Apple
			}),
			n(156822, {	-- Mistress Mihaela <Court of Harvesters Quartermaster>
				["coord"] = { 61.4, 63.8, REVENDRETH },
				["minReputation"] = { FACTION_COURT_OF_HARVESTERS, FRIENDLY },	-- Court of Harvesters, Friendly
				["groups"] = bubbleDownClassicRep(FACTION_COURT_OF_HARVESTERS, {
					{		-- Neutral
						i(190644, {	-- Vessel of Profound Possibilities (CI!)
							["sourceAchievement"] = 14834,	-- Bound with Purpose
							["timeline"] = { ADDED_9_2_0 },
							["cost"] = { { "c", 2009, 10000 } },	-- 10,000 Cosmic Flux
							["sym"] = SYM.SHADOWLANDS.ALL_CONDUITS,
						}),
					}, {	-- Friendly
						i(177665),	-- Spectral Hankerchief
					}, {	-- Honored
						i(184723),	-- Bedazzled Belt
						i(183099, {	-- Design: Revitalizing Jewel Doublet (RECIPE!)
							["cost"] = 13500000,	-- 1,350g
						}),
						i(184721),	-- Flourished Cummerbund
						i(217598, {	-- Glyph of Flagellation
							["classes"] = { ROGUE },
							["timeline"] = { ADDED_10_2_6 },
						}),
						i(217589, {	-- Glyph of Mindgames
							["classes"] = { PRIEST },
							["timeline"] = { ADDED_10_2_6 },
						}),
						i(284562, {	-- Nathrian Window (DECOR!)
							["cost"] = { { "c", ANIMA, 300 } },
							["timeline"] = { ADDED_12_1_5 },
						}),
						i(184722),	-- Ostentatious Buckle
						i(184720),	-- Reflective Waistguard
						i(183900, {	-- Sinvyr Tea Set (TOY!)
							["cost"] = 13500000,	-- 1,350g
						}),
						i(284570, {	-- Small Darkhaven Window (DECOR!)
							["cost"] = { { "c", ANIMA, 300 } },
							["timeline"] = { ADDED_12_1_5 },
						}),
					}, {	-- Revered
						i(180593, { ["cost"] = { { "i", POLISHED_PET_CHARM, 250 } } }),	-- Court Messenger Scroll (PET!)
						i(184726),	-- Courtier's Mantle
						i(184724),	-- Courtier's Pauldron
						i(184727),	-- Courtier's Shoulderguard
						i(184725),	-- Courtier's Shoulderplate
						i(183708, {	-- Glittering Gold Sinstone Chain
							["cost"] = { { "c", ANIMA, 3500 } },
							["customCollect"] = "SL_COV_VEN",
						}),
						i(183245, {	-- Memory of Norgannon
							["cost"] = 11000000,	-- 1,100g
						}),
						i(183839, {	-- Pattern: Heavy Desolate Hide
							["cost"] = 17650000,	-- 1,765g
						}),
						i(182668, {	-- Recipe: Feast of Gluttonous Hedonism (RECIPE!)
							["cost"] = 17650000,	-- 1,765g
						}),
						i(284560, {	-- Revendreth Sinner's Prison (DECOR!)
							["cost"] = { { "c", ANIMA, 500 } },
							["timeline"] = { ADDED_12_1_5 },
						}),
						i(284558, {	-- Sinner's Gibbet (DECOR!)
							["cost"] = { { "c", ANIMA, 500 } },
							["timeline"] = { ADDED_12_1_5 },
						}),
						i(183102, {	-- Technique: Contract: Court of Harvesters (RECIPE!)
							["cost"] = 17650000,	-- 1,765g
						}),
					}, {	-- Exalted
						i(179282, {	-- Court of Harvesters Tabard
							["cost"] = 2500000,	-- 250g
						}),
						i(183518, {	-- Court Sinrunner (MOUNT!)
							["cost"] = 300000000,	-- 30,000g
						}),
						i(182207),	-- Illusion: Sinsedge (ILLUSION!)
						i(184755),	-- Reinforced High Collar
					},
				}),
			}),
			n(274062, {	-- Mumples <Botanist & Decor Specialist>
				["coord"] = { 73.0, 52.6, REVENDRETH },
				["timeline"] = { ADDED_12_1_5 },
				["groups"] = {
					i(282681, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Brightburned Nathrian Clawbush (DECOR!)
					i(282683, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Brightburned Nathrian Root (DECOR!)
					i(282689, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Endmire Anima Blossom (DECOR!)
					i(282687, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Endmire Sinsticker Bush (DECOR!)
					i(282695, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Large Nathrian Bladebush (DECOR!)
					i(282665, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Large Nathrian Briar Root (DECOR!)
					i(282673, { ["cost"] = { { "c", ANIMA, 500 } } }),	-- Lonely Banewood Pine (DECOR!)
					i(282663, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Nathrian Forked Briar (DECOR!)
					i(282691, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Nathrian Fungal Rotcap (DECOR!)
					i(282669, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Nathrian Leafy Briar (DECOR!)
					i(282661, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Nathrian Reaching Briar (DECOR!)
					i(282697, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Nathrian Rubyroot Growth (DECOR!)
					i(282679, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Nathrian Sinstain Bush (DECOR!)
					i(282685, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Nathrian Sinstain Ivy Cluster (DECOR!)
					i(282677, { ["cost"] = { { "c", ANIMA, 500 } } }),	-- Nathrian Sinstain Oak (DECOR!)
					i(282671, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Nathrian Thicket Hedgew (DECOR!)
					i(282693, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Pale Nathrian Rose (DECOR!)
					i(282667, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Small Nathrian Briar Root (DECOR!)
					i(282675, { ["cost"] = { { "c", ANIMA, 500 } } }),	-- Spherical Nathrian Topiary (DECOR!)
				},
			}),
			n(173570, {	-- Snickersnee <Stable Dredger>
				["coord"] = { 40.8, 46.6, REVENDRETH },	-- Mims <Innkeeper>
				["groups"] = { i(182585) },	-- Grooming Brush
			}),
			n(160084, {	-- Ta'rmoro <Purveyor of Arms>
				["coord"] = { 50.4, 81.4, REVENDRETH },
				["groups"] = {
					i(183982, { ["cost"] = { { "c", ANIMA, 3000 } } }),	-- Devourer Mite Sticker
					i(183977, {	-- House Renathal Ceremonial Dagger
						["cost"] = { { "c", ANIMA, 1750 } },
						["customCollect"] = "SL_COV_VEN"
					}),
					i(183980, { ["cost"] = { { "c", ANIMA, 3000 } } }),	-- Kyrian Gladius
					i(183981, { ["cost"] = { { "c", ANIMA, 3000 } } }),	-- Kyrian Greatblade
					i(183985, { ["cost"] = { { "c", ANIMA, 3000 } } }),	-- Maldraxxian Bonesaw
					i(183984, { ["cost"] = { { "c", ANIMA, 3000 } } }),	-- Maldraxxian Shortblade
					i(183983, { ["cost"] = { { "c", ANIMA, 3000 } } }),	-- Rogue Ritualist's Spellblade
					i(183979, { ["cost"] = { { "c", ANIMA, 3000 } } }),	-- Standard Fenser's Rapier
					i(183968, { ["cost"] = { { "c", ANIMA, 3500 } } }),	-- Venthyr Ritualist's Kris
				},
			}),
			n(160091, {	-- Ta'ruca
				["coord"] = { 51.1, 78.5, REVENDRETH },
				["groups"] = { i(180774) },	-- Preserved Berries
			}),
			n(171808, {	-- Ta'tru
				["coord"] = { 51.1, 78.8, REVENDRETH },
				["groups"] = {
					i(182597, {	-- Comfortable Saddle Blanket
						["cost"] = {
							{ "i", 179314, 30 },	-- 30x Creeping Crawler Meat
							{ "i", 168589, 10 },	-- 10x Marrowroot
							{ "i", 179315, 30 },	-- 30x Shadowy Shank
						},
					}),
					i(180973, {	-- Necklace of Dredbat Fangs
						["description"] = "Take this to Ta'lan the Antiquary in Oribos (downstairs in The Broker's Den) |cffffffff(51.4, 42.9)|r.",
					}),
					i(181799),	-- Extra Large Hat
					i(182298),	-- Kaja'Extreme
					i(182702),	-- Phial of Black Muck Dye
					i(182163),	-- Strength of Blood
					i(187886, {	-- Technique: Mark of the Gloomstalker Dredbat (RECIPE!)
						["description"] = "Sold for 20-30 of a trade good which changes every day. And sometimes it's not even on the vendor!",
						["timeline"] = { ADDED_9_1_5 },
					}),
				},
			}),
			n(274686, {	-- Verayn <Decor Specialist>
				["coord"] = { 61.8, 63.6, REVENDRETH },
				["timeline"] = { ADDED_12_1_5 },
				["groups"] = {
					i(284554, {	-- Confessor's Anima Jar (DECOR!)
						["cost"] = { { "c", ANIMA, 200 } },
					}),
					i(284556, {	-- Sinfall Arched Bookcase (DECOR!)
						["cost"] = { { "c", ANIMA, 500 } },
					}),
					i(284568, {	-- Sinfall Dining Table (DECOR!)
						["cost"] = { { "c", ANIMA, 300 } },
					}),
					i(284564, {	-- Venthyr Fence (DECOR!)
						["cost"] = { { "c", ANIMA, 300 } },
					}),
					i(284566, {	-- Venthyr Fencepost (DECOR!)
						["cost"] = { { "c", ANIMA, 300 } },
					}),
				},
			}),
		}),
	}),
})));
