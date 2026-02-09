---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local THALASSIAN_TOKEN_OF_MERIT_S1 = 258556;

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.SILVERMOON_CITY, {
		n(VENDORS, {
			n(259722, {	-- Andra <Thalassian Finery>
				["coord"] = { 41.7, 66.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = bubbleDownFiltered({
					["cost"] = { { "i", FINERY_FUNDS, 1 } },
				},FILTERFUNC_itemID,{
					iensemble(265024),	-- Ensemble: Augur's Azure Garments
					iensemble(265022),	-- Ensemble: Augur's Crimson Garments
					iensemble(265026),	-- Ensemble: Augur's Lucent Garments
					iensemble(265025),	-- Ensemble: Augur's Umbral Garments
					iensemble(265023),	-- Ensemble: Augur's Viridian Garments
					iensemble(265019),	-- Ensemble: Courtier's Azure Vestments
					iensemble(264883),	-- Ensemble: Courtier's Crimson Vestments
					iensemble(265018),	-- Ensemble: Courtier's Viridian Vestments
					iensemble(265020),	-- Ensemble: Courtier's Umbral Vestments
					iensemble(265021),	-- Ensemble: Courtier's Lucent Vestments
				}),
			}),
			n(252915, {	-- Corlen Hordralin <Master Painter>
				["coord"] = { 44.2, 62.8, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = sharedData({
					["cost"] = { { "g", 50000000 } },	-- 5,000g
					-- Requires completion of 12.0 patch meta achievement [PH]. TODO: Which achievement?
				}, {
					i(253604),	-- "A Bridge Over Calm Waters" Painting (DECOR!)
					i(253615),	-- "Autumnal Eversong" Painting (DECOR!)
					i(253614),	-- "Brunch and a Book" Painting (DECOR!)
					i(253607),	-- "Eversong in Bloom" Painting (DECOR!)
					i(253605),	-- "Family Portrait" Painting (DECOR!)
					i(253616),	-- "Isolation" Painting (DECOR!)
					i(253608),	-- "Nature's Strength" Painting (DECOR!)
					i(253617),	-- "Reclamation" Painting (DECOR!)
					i(253620),	-- "River's Protectors" Painting (DECOR!)
					i(253602),	-- "Silvermoon in Summer" Painting (DECOR!)
					i(253619),	-- "The Fallen Protectors" Painting (DECOR!)
					i(253603),	-- "The Last Day of the Semester" Painting (DECOR!)
					i(253618),	-- "The Light Blooms" Painting (DECOR!)
				}),
			}),
			n(252915, {	-- Corlen Hordralin <Master Painter>
				["description"] = "This Vendor sells Decor only to players that have purchased 'Midnight Epic Edition' upgrade.",
				["coord"] = { 50.8, 56.6, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					i(252668, {	-- "The Harbinger" Painting (DECOR!)
						["cost"] = { { "g", 100000000 } },	-- 10,000g
					}),
					i(252666, {	-- "The High Exarch" Painting (DECOR!)
						["cost"] = { { "g", 100000000 } },	-- 10,000g
					}),
					i(252667, {	-- "The Ranger of the Void" Painting (DECOR!)
						["cost"] = { { "g", 100000000 } },	-- 10,000g
					}),
					i(252669, {	-- "The Redeemer" Painting (DECOR!)
						["cost"] = { { "g", 100000000 } },	-- 10,000g
					}),
					i(244668, {	-- Light-Infused Fountain (DECOR!)
						["cost"] = { { "g", 250000000 } },	-- 25,000g
					}),
					i(246414, {	-- Light-Infused Rotunda (DECOR!)
						["cost"] = { { "g", 250000000 } },	-- 25,000g
					}),
					i(245939, {	-- Void-Corrupted Fountain (DECOR!)
						["cost"] = { { "g", 250000000 } },	-- 25,000g
					}),
					i(248809, {	-- Void-Corrupted Rotunda (DECOR!)
						["cost"] = { { "g", 250000000 } },	-- 25,000g
					}),
				},
			}),
			n(257939, {	-- Enchanter Erodin <Heirloom Vendor>
				["coord"] = { 41.8, 66.9, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = bubbleDownFiltered({
					["timeline"] = { ADDED_12_0_X_LAUNCH },
				},FILTERFUNC_itemID,{
					filter(CLOTH, {
						-- Base
						i(42985, {	-- Tattered Dreadmist Mantle
							["cost"] = { { "g", 8000000 } },	-- 800g
						}),
						i(48691, {	-- Tattered Dreadmist Robe
							["cost"] = { { "g", 15000000 } },	-- 1,500g
						}),
						-- "Upgrade"
						i(93859, {	-- Bloodstained Dreadmist Mantle
							["cost"] = { { "i", 42985, 1 } },	-- Tattered Dreadmist Mantle
						}),
						i(93860, {	-- Bloodstained Dreadmist Robe
							["cost"] = { { "i", 48691, 1 } },	-- Tattered Dreadmist Robe
						}),
					}),
					filter(LEATHER, {
						-- Base
						i(48687, {	-- Preened Ironfeather Breastplate
							["cost"] = { { "g", 10000000 } },	-- 1,000g
						}),
						i(42984, {	-- Preened Ironfeather Shoulders
							["cost"] = { { "g", 8000000 } },	-- 800g
						}),
						i(42952, {	-- Stained Shadowcraft Spaulders
							["cost"] = { { "g", 8000000 } },	-- 800g
						}),
						i(48689, {	-- Stained Shadowcraft Tunic
							["cost"] = { { "g", 10000000 } },	-- 1,000g
						}),
						-- "Upgrade"
						i(93865, {	-- Majestic Ironfeather Breastplate
							["cost"] = { { "i", 48687, 1 } },	-- Preened Ironfeather Breastplate
						}),
						i(93864, {	-- Majestic Ironfeather Shoulders
							["cost"] = { { "i", 42984, 1 } },	-- Preened Ironfeather Shoulders
						}),
						i(93862, {	-- Supple Shadowcraft Spaulders
							["cost"] = { { "i", 42952, 1 } },	-- Stained Shadowcraft Spaulders
						}),
						i(93863, {	-- Supple Shadowcraft Tunic
							["cost"] = { { "i", 48689, 1 } },	-- Stained Shadowcraft Tunic
						}),
					}),
					filter(MAIL, {
						-- Base
						i(42950, {	-- Champion Herod's Shoulder
							["cost"] = { { "g", 8000000 } },	-- 800g
						}),
						i(48677, {	-- Champion's Deathdealer Breastplate
							["cost"] = { { "g", 10000000 } },	-- 1,000g
						}),
						i(42951, {	-- Mystical Pauldrons of Elements
							["cost"] = { { "g", 8000000 } },	-- 800g
						}),
						i(48683, {	-- Mystical Vest of Elements
							["cost"] = { { "g", 10000000 } },	-- 1,000g
						}),
						-- "Upgrade"
						i(93888, {	-- Furious Deathdealer Breastplate
							["cost"] = { { "i", 48677, 1 } },	-- Champion's Deathdealer Breastplate
						}),
						i(93887, {	-- Grand Champion Herod's Shoulder
							["cost"] = { { "i", 42950, 1 } },	-- Champion Herod's Shoulder
						}),
						i(93876, {	-- Awakened Pauldrons of Elements
							["cost"] = { { "i", 42951, 1 } },	-- Mystical Pauldrons of Elements
						}),
						i(93885, {	-- Awakened Vest of Elements
							["cost"] = { { "i", 48683, 1 } },	-- Mystical Vest of Elements
						}),
					}),
					filter(PLATE, {
						-- Base
						i(69889, {	-- Burnished Breastplate of Might
							["cost"] = { { "g", 10000000 } },	-- 1,000g
						}),
						i(69890, {	-- Burnished Pauldrons of Might
							["cost"] = { { "g", 8000000 } },	-- 800g
						}),
						i(48685, {	-- Polished Breastplate of Valor
							["cost"] = { { "g", 10000000 } },	-- 1,000g
						}),
						i(42949, {	-- Polished Spaulders of Valor
							["cost"] = { { "g", 8000000 } },	-- 800g
						}),
						-- "Upgrade"
						i(93892, {	-- Brushed Breastplate of Might
							["cost"] = { { "i", 69889, 1 } },	-- Burnished Breastplate of Might
						}),
						i(93893, {	-- Brushed Pauldrons of Might
							["cost"] = { { "i", 69890, 1 } },	-- Burnished Pauldrons of Might
						}),
						i(93891, {	-- Gleaming Breastplate of Valor
							["cost"] = { { "i", 48685, 1 } },	-- Polished Breastplate of Valor
						}),
						i(93890, {	-- Gleaming Spaulders of Valor
							["cost"] = { { "i", 42949, 1 } },	-- Polished Spaulders of Valor
						}),
					}),
					filter(TRINKET_F, {
						-- Base
						i(42992, {	-- Discerning Eye of the Beast
							["cost"] = { { "g", 7500000 } },	-- 750g
						}),
						i(42991, {	-- Swift Hand of Justice
							["cost"] = { { "g", 7500000 } },	-- 750g
						}),
						-- "Upgrade"
						i(93896, {	-- Forceful Hand of Justice
							["cost"] = { { "i", 42991, 1 } },	-- Swift Hand of Justice
						}),
						i(93897, {	-- Piercing Eye of the Beast
							["cost"] = { { "i", 42992, 1 } },	-- Discerning Eye of the Beast
						}),
					}),
					n(WEAPONS, {
						-- Base
						i(42944, {	-- Balanced Heartseeker
							["cost"] = { { "g", 10000000 } },	-- 1,000g
						}),
						i(42943, {	-- Bloodied Arcanite Reaper
							["cost"] = { { "g", 15000000 } },	-- 1,500g
						}),
						i(69893, {	-- Bloodsoaked Skullforge Reaver
							["cost"] = { { "g", 10000000 } },	-- 1,000g
						}),
						i(79131, {	-- Burnished Warden Staff
							["cost"] = { { "g", 15000000 } },	-- 1,500g
						}),
						i(42946, {	-- Charmed Ancient Bone Bow
							["cost"] = { { "g", 15000000 } },	-- 1,500g
						}),
						i(42948, {	-- Devout Aurastone Hammer
							["cost"] = { { "g", 10000000 } },	-- 1,000g
						}),
						i(42947, {	-- Dignified Headmaster's Charge
							["cost"] = { { "g", 15000000 } },	-- 1,500g
						}),
						i(93902, {	-- Flamescarred Draconian Deflector
							["cost"] = { { "g", 5000000 } },	-- 500g
						}),
						i(93904, {	-- Musty Tome of the Lost
							["cost"] = { { "g", 12500000 } },	-- 1,250g
						}),
						i(48718, {	-- Repurposed Lava Dredger
							["cost"] = { { "g", 15000000 } },	-- 1,500g
						}),
						i(42945, {	-- Venerable Dal'Rend's Sacred Charge
							["cost"] = { { "g", 10000000 } },	-- 1,000g
						}),
						i(48716, {	-- Venerable Mass of McGowan
							["cost"] = { { "g", 10000000 } },	-- 1,000g
						}),
						i(93903, {	-- Weathered Observer's Shield
							["cost"] = { { "g", 5000000 } },	-- 500g
						}),
						-- "Upgrade"
						i(93847, {	-- Crushing Mass of McGowan
							["cost"] = { { "i", 48716, 1 } },	-- Venerable Mass of McGowan
						}),
						i(93845, {	-- Gore-Steeped Skullforge Reaver
							["cost"] = { { "i", 69893, 1 } },	-- Bloodsoaked Skullforge Reaver
						}),
						i(93843, {	-- Hardened Arcanite Reaper
							["cost"] = { { "i", 42943, 1 } },	-- Bloodied Arcanite Reaper
						}),
						i(93856, {	-- Noble Dal'Rend's Sacred Charge
							["cost"] = { { "i", 42945, 1 } },	-- Venerable Dal'Rend's Sacred Charge
						}),
						i(93853, {	-- Pious Aurastone Hammer
							["cost"] = { { "i", 42948, 1 } },	-- Devout Aurastone Hammer
						}),
						i(93846, {	-- Re-Engineered Lava Dredger
							["cost"] = { { "i", 48718, 1 } },	-- Repurposed Lava Dredger
						}),
						i(93844, {	-- Refinished Warden Staff
							["cost"] = { { "i", 79131, 1 } },	-- Burnished Warden Staff
						}),
						i(93854, {	-- Scholarly Headmaster's Charge
							["cost"] = { { "i", 42947, 1 } },	-- Dignified Headmaster's Charge
						}),
						i(93857, {	-- Vengeful Heartseeker
							["cost"] = { { "i", 42944, 1 } },	-- Balanced Heartseeker
						}),
						i(93855, {	-- War-Torn Ancient Bone Bow
							["cost"] = { { "i", 42946, 1 } },	-- Charmed Ancient Bone Bow
						}),
					}),
				}),
			}),
			n(258550, {	-- Farstrider Aerieminder
				["coord"] = { 24.8, 69.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					i(265674, {	-- Tasty Meat
						["description"] = "If you feed a nearby Mischevious Chick, you'll get a reward.",
					}),
				},
			}),
			n(252916, {	-- Hesta Forlath <Apprentice>
				["coord"] = { 44.1, 62.8, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					n(DECOR, {
						i(253612),	-- "Autumnal Eversong" Unframed Painting (DECOR!)
						i(253606),	-- "Brunch and a Book" Unframed Painting (DECOR!)
						i(253610),	-- "Isolation" Unframed Painting (DECOR!)
						i(253613),	-- "Reclamation" Unframed Painting (DECOR!)
						i(253609),	-- "River's Protectors" Unframed Painting (DECOR!)
						i(253611),	-- "The Fallen Protectors" Unframed Painting (DECOR!)
						i(253705),	-- "The Light Blooms" Unframed Painting (DECOR!)
						i(253704),	-- Fresh Canvas (DECOR!)
						i(244656),	-- Silvermoon Painter's Cushion (DECOR!)
					}),
				},
			}),
			n(243286, {	-- Lyrendal <Artisan's Consortium Quartermaster>
				["coord"] = { 45.0, 55.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					filter(RECIPES, {
						i(256701, {	-- Design: Attuned Thalassian Rune-Prism (RECIPE!)
							["cost"] = {{ "c", 3262, 150 }},	-- x150 Artisan Jewelcrafter's Moxie
						}),
						i(256705, {	-- Design: Flawless Text Scrutinizers (RECIPE!)
							["cost"] = {{ "c", 3262, 150 }},	-- x150 Artisan Jewelcrafter's Moxie
						}),
						i(256713, {	-- Design: Improved Right-Handed Magnifying Glass (RECIPE!)
							["cost"] = {{ "c", 3262, 150 }},	-- x150 Artisan Jewelcrafter's Moxie
						}),
						i(256707, {	-- Design: Mage-Eye Precision Loupes (RECIPE!)
							["cost"] = {{ "c", 3262, 150 }},	-- x150 Artisan Jewelcrafter's Moxie
						}),
						i(256699, {	-- Design: Sin'dorei Enchanter's Crystal (RECIPE!)
							["cost"] = {{ "c", 3262, 150 }},	-- x150 Artisan Jewelcrafter's Moxie
						}),
						i(256709, {	-- Design: Sin'dorei Jeweler's Loupes (RECIPE!)
							["cost"] = {{ "c", 3262, 150 }},	-- x150 Artisan Jewelcrafter's Moxie
						}),
						i(256703, {	-- Design: Sin'dorei Scribe's Spectacles (RECIPE!)
							["cost"] = {{ "c", 3262, 150 }},	-- x150 Artisan Jewelcrafter's Moxie
						}),
						i(256711, {	-- Design: Thalassian Scribe's Crystalline Lens (RECIPE!)
							["cost"] = {{ "c", 3262, 150 }},	-- x150 Artisan Jewelcrafter's Moxie
						}),
						i(256742, {	-- Formula: Runed Dazzling Thorium Rod (RECIPE!)
							["cost"] = {{ "c", 3258, 150 }},	-- x150 Artisan Enchanter's Moxie
						}),
						i(258133, {	-- Pattern: Chic Silvermoon Pillow (RECIPE!)
							["cost"] = {{ "c", 3266, 150 }},	-- x150 Artisan Tailor's Moxie
						}),
						i(258035, {	-- Pattern: Elegant Artisan's Alchemy Coveralls (RECIPE!)
							["cost"] = {{ "c", 3266, 150 }},	-- x150 Artisan Tailor's Moxie
						}),
						i(258036, {	-- Pattern: Elegant Artisan's Cooking Hat (RECIPE!)
							["cost"] = {{ "c", 3266, 150 }},	-- x150 Artisan Tailor's Moxie
						}),
						i(258037, {	-- Pattern: Elegant Artisan's Enchanting Hat (RECIPE!)
							["cost"] = {{ "c", 3266, 150 }},	-- x150 Artisan Tailor's Moxie
						}),
						i(258038, {	-- Pattern: Elegant Artisan's Fishing Hat (RECIPE!)
							["cost"] = {{ "c", 3266, 150 }},	-- x150 Artisan Tailor's Moxie
						}),
						i(258039, {	-- Pattern: Elegant Artisan's Herbalism Hat (RECIPE!)
							["cost"] = {{ "c", 3266, 150 }},	-- x150 Artisan Tailor's Moxie
						}),
						i(258040, {	-- Pattern: Elegant Artisan's Tailoring Robe (RECIPE!)
							["cost"] = {{ "c", 3266, 150 }},	-- x150 Artisan Tailor's Moxie
						}),
						i(256669, {	-- Pattern: Eversong Hunter's Headcover (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(258132, {	-- Pattern: Plush Silvermoon Bed (RECIPE!)
							["cost"] = {{ "c", 3266, 150 }},	-- x150 Artisan Tailor's Moxie
						}),
						i(256655, {	-- Pattern: Sin'dorei Alchemist's Hat (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(256660, {	-- Pattern: Sin'dorei Engineer's Gloves (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(256659, {	-- Pattern: Sin'dorei Forgemaster's Cover (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(256662, {	-- Pattern: Sin'dorei Herbalist's Backpack (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(256670, {	-- Pattern: Sin'dorei Jeweler's Cover (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(256665, {	-- Pattern: Sin'dorei Leathershaper's Smock (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(256666, {	-- Pattern: Sin'dorei Hunter's Pack (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(259371, {	-- Pattern: Stitched Haranir Rug (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(259368, {	-- Pattern: Sturdy Haranir Chair (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(256658, {	-- Pattern: Thalassian Alchemist's Mixcap (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(267053, {	-- Pattern: Thalassian Alchemy Coveralls (RECIPE!)
							["cost"] = {{ "c", 3266, 150 }},	-- x150 Artisan Tailor's Moxie
						}),
						i(267055, {	-- Pattern: Thalassian Chef's Chapeau (RECIPE!)
							["cost"] = {{ "c", 3266, 150 }},	-- x150 Artisan Tailor's Moxie
						}),
						i(267057, {	-- Pattern: Thalassian Enchanter's Bonnet (RECIPE!)
							["cost"] = {{ "c", 3266, 150 }},	-- x150 Artisan Tailor's Moxie
						}),
						i(256667, {	-- Pattern: Thalassian Gemshaper's Grand Cover (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(267061, {	-- Pattern: Thalassian Herbalist's Cowl (RECIPE!)
							["cost"] = {{ "c", 3266, 150 }},	-- x150 Artisan Tailor's Moxie
						}),
						i(256663, {	-- Pattern: Thalassian Herbtender's Cradle (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(256668, {	-- Pattern: Thalassian Hideshaper's Regalia (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(256657, {	-- Pattern: Thalassian Ironbender's Regalia (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(256661, {	-- Pattern: Thalassian Scrapmaster's Gauntlets (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(267063, {	-- Pattern: Thalassian Tailor's Threads (RECIPE!)
							["cost"] = {{ "c", 3266, 150 }},	-- x150 Artisan Tailor's Moxie
						}),
						i(256664, {	-- Pattern: Thalassian Wildseeker's Stridercap (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(256671, {	-- Pattern: Thalassian Wildseeker's Workbag (RECIPE!)
							["cost"] = {{ "c", 3263, 150 }},	-- x150 Artisan Leatherworker's Moxie
						}),
						i(267281, {	-- Plans: Blood Knight's Mercy (RECIPE!)
							["cost"] = {{ "c", 3257, 150 }},	-- x150 Artisan Blacksmith's Moxie
						}),
						i(267282, {	-- Plans: Blood Knight's Warblade (RECIPE!)
							["cost"] = {{ "c", 3257, 150 }},	-- x150 Artisan Blacksmith's Moxie
						}),
						i(267284, {	-- Plans: Bloomforged Claw (RECIPE!)
							["cost"] = {{ "c", 3257, 150 }},	-- x150 Artisan Blacksmith's Moxie
						}),
						i(267285, {	-- Plans: Magister's Cleaver (RECIPE!)
							["cost"] = {{ "c", 3257, 150 }},	-- x150 Artisan Blacksmith's Moxie
						}),
						i(267286, {	-- Plans: Magister's Mana Sword (RECIPE!)
							["cost"] = {{ "c", 3257, 150 }},	-- x150 Artisan Blacksmith's Moxie
						}),
						i(267287, {	-- Plans: Magister's Ritual Knife (RECIPE!)
							["cost"] = {{ "c", 3257, 150 }},	-- x150 Artisan Blacksmith's Moxie
						}),
						i(258519, {	-- Plans: Magister's Valediction (RECIPE!)
							["cost"] = {{ "c", 3257, 150 }},	-- x150 Artisan Blacksmith's Moxie
						}),
						i(265536, {	-- Plans: Masterwork Crafting Hammer (RECIPE!)
							["cost"] = {{ "c", 3257, 150 }},	-- x150 Artisan Blacksmith's Moxie
						}),
						i(259237, {	-- Plans: Sunforged Blacksmith's Hammer (RECIPE!)
							["cost"] = {{ "c", 3257, 150 }},	-- x150 Artisan Blacksmith's Moxie
						}),
						i(259231, {	-- Plans: Sunforged Blacksmith's Toolbox (RECIPE!)
							["cost"] = {{ "c", 3257, 150 }},	-- x150 Artisan Blacksmith's Moxie
						}),
						i(259318, {	-- Plans: Sunforged Leatherworker's Knife (RECIPE!)
							["cost"] = {{ "c", 3257, 150 }},	-- x150 Artisan Blacksmith's Moxie
						}),
						i(259233, {	-- Plans: Sunforged Leatherworker's Toolset (RECIPE!)
							["cost"] = {{ "c", 3257, 150 }},	-- x150 Artisan Blacksmith's Moxie
						}),
						i(259235, {	-- Plans: Sunforged Needle Set (RECIPE!)
							["cost"] = {{ "c", 3257, 150 }},	-- x150 Artisan Blacksmith's Moxie
						}),
						i(259319, {	-- Plans: Sunforged Pickaxe (RECIPE!)
							["cost"] = {{ "c", 3257, 150 }},	-- x150 Artisan Blacksmith's Moxie
						}),
						i(259317, {	-- Plans: Sunforged Sickle (RECIPE!)
							["cost"] = {{ "c", 3257, 150 }},	-- x150 Artisan Blacksmith's Moxie
						}),
						i(259322, {	-- Plans: Sunforged Skinning Knife (RECIPE!)
							["cost"] = {{ "c", 3257, 150 }},	-- x150 Artisan Blacksmith's Moxie
						}),
						i(260246, {	-- Plans: Thalassian Skeleton Key (RECIPE!)
							["cost"] = {{ "c", 3257, 150 }},	-- x150 Artisan Blacksmith's Moxie
						}),
						i(247499, {	-- Recipe: Haranir Preserving Agents (RECIPE!)
							["cost"] = {{ "c", 3256, 150 }},	-- x150 Artisan Alchemist's Moxie
						}),
						i(246671, {	-- Recipe: Sunsmoke Censer (RECIPE!)
							["cost"] = {{ "c", 3256, 150 }},	-- x150 Artisan Alchemist's Moxie
						}),
						i(259182, {	-- Schematic: Giga-Gem Grippers (RECIPE!)
							["cost"] = {{ "c", 3259, 150 }},	-- x150 Artisan Engineer's Moxie
						}),
						i(259172, {	-- Schematic: Head-Mounted Beam Bummer (RECIPE!)
							["cost"] = {{ "c", 3259, 150 }},	-- x150 Artisan Engineer's Moxie
						}),
						i(259176, {	-- Schematic: Heavy-Duty Rock Assister (RECIPE!)
							["cost"] = {{ "c", 3259, 150 }},	-- x150 Artisan Engineer's Moxie
						}),
						i(259174, {	-- Schematic: Rock Bonkin' Hardhat (RECIPE!)
							["cost"] = {{ "c", 3259, 150 }},	-- x150 Artisan Engineer's Moxie
						}),
						i(259178, {	-- Schematic: Self-Sharpening Sin'dorei Snippers (RECIPE!)
							["cost"] = {{ "c", 3259, 150 }},	-- x150 Artisan Engineer's Moxie
						}),
						i(259180, {	-- Schematic: Sin'dorei Reeler's Rod (RECIPE!)
							["cost"] = {{ "c", 3259, 150 }},	-- x150 Artisan Engineer's Moxie
						}),
						i(259184, {	-- Schematic: Turbo-Junker's Multitool v9 (RECIPE!)
							["cost"] = {{ "c", 3259, 150 }},	-- x150 Artisan Engineer's Moxie
						}),
						i(259206, {	-- Technique: Gilded Alchemist's Mixing Rod (RECIPE!)
							["cost"] = {{ "c", 3261, 150 }},	-- x150 Artisan Scribe's Moxie
						}),
						i(258504, {	-- Technique: Gilded Eversong Book (RECIPE!)
							["cost"] = {{ "c", 3261, 150 }},	-- x150 Artisan Scribe's Moxie
						}),
						i(259210, {	-- Technique: Gilded Sin'dorei Quill (RECIPE!)
							["cost"] = {{ "c", 3261, 150 }},	-- x150 Artisan Scribe's Moxie
						}),
						i(259208, {	-- Technique: Gilded Sin'dorei Rolling Pin (RECIPE!)
							["cost"] = {{ "c", 3261, 150 }},	-- x150 Artisan Scribe's Moxie
						}),
						i(267394, {	-- Technique: Homely Sin'dorei Shelf (RECIPE!)
							["cost"] = {{ "c", 3261, 150 }},	-- x150 Artisan Scribe's Moxie
						}),
						i(258502, {	-- Technique: Lively Songwriter's Quill (RECIPE!)
							["cost"] = {{ "c", 3261, 150 }},	-- x150 Artisan Scribe's Moxie
						}),
						i(258503, {	-- Technique: Sin'dorei Opened Scroll (RECIPE!)
							["cost"] = {{ "c", 3261, 150 }},	-- x150 Artisan Scribe's Moxie
						}),
						i(258493, {	-- Technique: Thalassian Missive of Crafting Speed (RECIPE!)
							["cost"] = {{ "c", 3261, 150 }},	-- x150 Artisan Scribe's Moxie
						}),
						i(258489, {	-- Technique: Thalassian Missive of Deftness (RECIPE!)
							["cost"] = {{ "c", 3261, 150 }},	-- x150 Artisan Scribe's Moxie
						}),
						i(258492, {	-- Technique: Thalassian Missive of Finesse (RECIPE!)
							["cost"] = {{ "c", 3261, 150 }},	-- x150 Artisan Scribe's Moxie
						}),
						i(258496, {	-- Technique: Thalassian Missive of Ingenuity (RECIPE!)
							["cost"] = {{ "c", 3261, 150 }},	-- x150 Artisan Scribe's Moxie
						}),
						i(258494, {	-- Technique: Thalassian Missive of Multicraft (RECIPE!)
							["cost"] = {{ "c", 3261, 150 }},	-- x150 Artisan Scribe's Moxie
						}),
						i(258491, {	-- Technique: Thalassian Missive of Perception (RECIPE!)
							["cost"] = {{ "c", 3261, 150 }},	-- x150 Artisan Scribe's Moxie
						}),
						i(258495, {	-- Technique: Thalassian Missive of Resourcefulness (RECIPE!)
							["cost"] = {{ "c", 3261, 150 }},	-- x150 Artisan Scribe's Moxie
						}),
					}),
					--rng bags
					i(260534, {	-- Master Alchemist's Surplus Reagents
						["cost"] = {{ "c", 3256, 600 }},	-- x600 Artisan Alchemist's Moxie
					}),
					i(260536, {	-- Master Blacksmith's Surplus Reagents
						["cost"] = {{ "c", 3257, 600 }},	-- x600 Artisan Blacksmith's Moxie
					}),
					i(260537, {	-- Master Enchanter's Surplus Reagents
						["cost"] = {{ "c", 3258, 600 }},	-- x600 Artisan Enchanter's Moxie
					}),
					i(260538, {	-- Master Engineer's Surplus Reagents
						["cost"] = {{ "c", 3259, 600 }},	-- x600 Artisan Engineer's Moxie
					}),
					i(260539, {	-- Master Herbalist's Surplus Reagents
						["cost"] = {{ "c", 3260, 600 }},	-- x600 Artisan Herbalist's Moxie
					}),
					i(260542, {	-- Master Leatherworker's Surplus Reagents
						["cost"] = {{ "c", 3263, 600 }},	-- x600 Artisan Leatherworker's Moxie
					}),
					i(260543, {	-- Master Miner's Surplus Reagents
						["cost"] = {{ "c", 3264, 600 }},	-- x600 Artisan Miner's Moxie
					}),
					i(260540, {	-- Master Scribe's Surplus Reagents
						["cost"] = {{ "c", 3261, 600 }},	-- x600 Artisan Scribe's Moxie
					}),
					i(260544, {	-- Master Skinner's Surplus Reagents
						["cost"] = {{ "c", 3265, 600 }},	-- x600 Artisan Skinner's Moxie
					}),
					i(260541, {	-- Master Jewelcrafter's Surplus Reagents
						["cost"] = {{ "c", 3262, 600 }},	-- x600 Artisan Jewelcrafter's Moxie
					}),
					i(260545, {	-- Master Tailor's Surplus Reagents
						["cost"] = {{ "c", 3266, 600 }},	-- x600 Artisan Tailor's Moxie
					}),
				},
			}),
			n(239676, {	-- Vaskarn
				["coord"] = { 48.6, 62.0, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					-- Season 1
					--- Trade DOWN
					i(263976, {	-- Bundle of Adventurer Dawncrests
						["description"] = "\n|cffff0000 -- DOWNGRADE --|r\n\nCost: LFR Crest\nReceive: Adventurer Crest",
						["cost"] = {{"c", VETERAN_DAWNCREST, 10}},
						["timeline"] = { ADDED_12_0_X_LAUNCH, REMOVED_12_1_0 },
					}),
					i(246754, {	-- Pouch of Veteran Dawncrests
						["description"] = "\n|cffff0000 -- DOWNGRADE --|r\n\nCost: Normal Crest\nReceive: LFR Crest",
						["cost"] = {{"c", CHAMPION_DAWNCREST, 10}},
						["timeline"] = { ADDED_12_0_X_LAUNCH, REMOVED_12_1_0 },
					}),
					i(246755, {	-- Satchel of Champion Dawncrests
						["description"] = "\n|cffff0000 -- DOWNGRADE --|r\n\nCost: Heroic Crest\nReceive: Normal Crest",
						["cost"] = {{"c", HERO_DAWNCREST, 10}},
						["timeline"] = { ADDED_12_0_X_LAUNCH, REMOVED_12_1_0 },
					}),
					i(246756, {	-- Pack of Hero Dawncrests
						["description"] = "\n|cffff0000 -- DOWNGRADE --|r\n\nCost: Mythic Crest\nReceive: Heroic Crest",
						["cost"] = {{"c", MYTH_DAWNCREST, 10}},
						["timeline"] = { ADDED_12_0_X_LAUNCH, REMOVED_12_1_0 },
					}),
					--- Trade UP
					--i(XXXX, {	-- ???
					--	["description"] = "\n|cff4caf50 -- UPGRADE --|r\n\nCost: LFR Crest\nReceive: Normal Crest",
					--	["cost"] = {{"c", XXXX, YYY}},
					--	["timeline"] = { ADDED_12_0_X_LAUNCH, REMOVED_12_1_0 },
					--}),
				},
			}),
			n(239670, {	-- Vaultkeeper Elysa <Token of Merit Exchange>
				["coord"] = { 50.4, 64.9, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					-- All seasons
					i(263934, {	-- Chest of Gold
						["cost"] = { { "i", THALASSIAN_TOKEN_OF_MERIT_S1, 2 } },
					}),
					-- Season 1
					i(246752, {	-- Celebratory Pack of Hero Dawncrests
						["cost"] = { { "i", THALASSIAN_TOKEN_OF_MERIT_S1, 2 } },
					}),
					i(263897, {	-- Radiant Jewelbinder
						["cost"] = { { "i", THALASSIAN_TOKEN_OF_MERIT_S1, 6 } },
					}),
					i(232875, {	-- Spark of Radiance
						["cost"] = { { "i", THALASSIAN_TOKEN_OF_MERIT_S1, 6 } },
					}),
					i(246751, {	-- Triumphant Satchel of Champion Dawncrests
						["cost"] = { { "i", THALASSIAN_TOKEN_OF_MERIT_S1, 1 } },
					}),
					-- Season 2
					-- Season 3
				},
			}),
		}),
	}),
}));
