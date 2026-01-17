-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_1_0 } }, {
	inst(860, {	-- Return to Karazhan
		["coord"] = { 46.7, 70.1, DEADWIND_PASS },
		["maps"] = {
			815, 816, 817, 818, 819, 820, 821, 822,	-- Upper
			809, 810, 811, 812, 813, 814,	-- Lower
		},
		["lvl"] = 110,
		["groups"] = {
			n(QUESTS, {
				q(44684, {	-- Corruption Runs Deep
					["qg"] = 114631,	-- Archmage Karlain
					["coord"] = { 46.9, 75.3, DEADWIND_PASS },
					["groups"] = { i(141878) },	-- Arcane-Infused Vial (PQI!)
				}),
				q(44764, {	-- Demon in Disguise
					["sourceQuest"] = 44686,	-- Thought Collection
					["qg"] = 114631,	-- Archmage Karlain <Kirin Tor>
					["coord"] = { 46.9, 75.3, DEADWIND_PASS },
					["lvl"] = 110,
				}),
				q(44557, {	-- Finite Numbers
					["qg"] = 114310,	-- Archmage Khadgar
					["coord"] = { 47.0, 75.2, DEADWIND_PASS },
					["lvl"] = 110,
				}),
				q(44734, {	-- Fragments of the Past
					["sourceQuest"] = 44733,	-- The Power of Corruption
					["qg"] = 114310,	-- Archmage Khadgar
					["coord"] = { 47.0, 75.2, DEADWIND_PASS },
					["lvl"] = 110,
					["groups"] = { i(142460) },	-- Violet Seal of the Archmage
				}),
				q(44683, {	-- Holding the Lines
					["qg"] = 114310,	-- Archmage Khadgar
					["coord"] = { 47.0, 75.2, DEADWIND_PASS },
					["lvl"] = 110,
				}),
				q(45296, {	-- No Bones About It
					["description"] = "You must complete the full quest chain before the quest item will drop from the boss.",
					["sourceQuest"] = 45295,	-- Return to Karazhan: Clearing Out the Cobwebs
					["provider"] = { "i", 143556 },	-- Charred Bone Fragments
					["groups"] = { i(142469) },	-- Violet Seal of the Grand Magus
				}),
				q(44685, {	-- Reclaiming the Ramparts
					["sourceQuests"] = {
						44684,	-- Corruption Runs Deep
						44557,	-- Finite Numbers
						44683,	-- Holding the Lines
					},
					["qg"] = 114310,	-- Archmage Khadgar
					["coord"] = { 47.0, 75.2, DEADWIND_PASS },
					["lvl"] = 110,
					["groups"] = { i(142213) },	-- Empowered Arcane Ward (QI!)
				}),
				q(44556, {	-- Return to Karazhan
					["qg"] = 90417,	-- Archmage Khadgar
					["coord"] = { 28.8, 48.6, LEGION_DALARAN },
					["timeline"] = { ADDED_7_1_0, REMOVED_7_3_0 },
					["lvl"] = 110,
				}),
				q(45291, {	-- Return to Karazhan: Book Wyrms
					["sourceQuests"] = {
						44734,	-- Fragments of the Past
						44735,	-- Return to Karazhan: In the Eye of the Beholder
					},
					["qg"] = 18255,	-- Mage Darius
					["coord"] = { 47.3, 75.0, DEADWIND_PASS },
					["lvl"] = 110,
				}),
				q(45295, {	-- Return to Karazhan: Clearing Out the Cobwebs
					["sourceQuest"] = 45294,	-- Return to Karazhan: High Stress Hiatus
					["qg"] = 18255,	-- Mage Darius
					["coord"] = { 47.3, 75.0, DEADWIND_PASS },
					["lvl"] = 110,
				}),
				q(45294, {	-- Return to Karazhan: High Stress Hiatus
					["sourceQuest"] = 45293,	-- Return to Karazhan: New Shoes
					["qg"] = 18255,	-- Mage Darius
					["coord"] = { 47.3, 75.0, DEADWIND_PASS },
					["lvl"] = 110,
					["groups"] = { i(142468) },	-- Violet Seal of the Archmage
				}),
				q(44735, {	-- Return to Karazhan: In the Eye of the Beholder
					["sourceQuest"] = 44733,	-- The Power of Corruption
					["qg"] = 114310,	-- Archmage Khadgar
					["coord"] = { 47.3, 75.0, DEADWIND_PASS },
					["lvl"] = 110,
				}),
				q(44803, {	-- Return to Karazhan: Master of the House
					["provider"] = { "i", 142246 },	-- Broken Pocket Watch
				}),
				q(45293, {	-- Return to Karazhan: New Shoes
					["sourceQuest"] = 45292,	-- Return to Karazhan: Rebooting the Cleaner
					["qg"] = 18255,	-- Mage Darius
					["lvl"] = 110,
				}),
				q(45292, {	-- Return to Karazhan: Rebooting the Cleaner
					["sourceQuest"] = 45291,	-- Return to Karazhan: Book Wyrms
					["qg"] = 18255,	-- Mage Darius
					["coord"] = { 47.3, 75.0, DEADWIND_PASS },
					["lvl"] = 110,
					["groups"] = { i(142461) },	-- Violet Seal of the Archmage
				}),
				q(44733, {	-- The Power of Corruption
					["sourceQuest"] = 44764,	-- Demon in Disguise
					["qg"] = 114310,	-- Archmage Khadgar
					["coord"] = { 46.9, 75.2, DEADWIND_PASS },
					["lvl"] = 110,
					["groups"] = { i(142208) },	-- Essence of Wyrmtongue (QI!)
				}),
				q(44686, {	-- Thought Collection
					["sourceQuests"] = {
						44684,	-- Corruption Runs Deep
						44557,	-- Finite Numbers
						44683,	-- Holding the Lines
					},
					["qg"] = 114631,	-- Archmage Karlain <Kirin Tor>
					["coord"] = { 46.9, 75.3, DEADWIND_PASS },
					["lvl"] = 110,
				}),
			}),
			n(COMMON_BOSS_DROPS, {
				["groups"] = {
					i(143615),	-- Technique: Glyph of Crackling Ox Lightning (RECIPE!)
					i(143616),	-- Technique: Glyph of the Trusted Steed (RECIPE!)
				},
				["crs"] = {
					114284,	-- Opera Hall: Wikket
					114261,	-- Opera Hall: Westfall Story
					114330,	-- Opera Hall: Beautiful Beast — Babblet
					114328,	-- Opera Hall: Beautiful Beast — Coggleston
					114329,	-- Opera Hall: Beautiful Beast — Luminore
					114522,	-- Opera Hall: Beautiful Beast — Mrs. Cauldrons
					113971,	-- Maiden of Virtue
					114262,	-- Attumen the Huntsman
					114312,	-- Moroes
					114247,	-- The Curator
					114350,	-- Shade of Medivh
					114252,	-- Mana Devourer
					114790,	-- Viz'aduum the Watcher
				},
			}),
			n(TREASURES, {
				i(208048, {	-- Ritual of the Voidmaw Felhunter (CI!)
					["description"] = "Located by a bookshelf on the second floor of the library in Legion Karazhan, after killing Mana Devourer.",
					["provider"] = { "o", 405286 },	-- Torn Page
					["timeline"] = { ADDED_10_1_5 },
				}),
			}),
			n(VENDORS, {
				n(114815, {	-- Koren
					["description"] = "This vendor is located in the Livery Stables.",
					["groups"] = {
						i(31395),	-- Plans: Iceguard Helm (RECIPE!)
						i(31393),	-- Plans: Iceguard Breastplate (RECIPE!)
						i(31394),	-- Plans: Iceguard Leggings (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, sharedData({ ["crs"] = {
				115401,	-- Bishop
				115402,	-- Bishop
				115388,	-- King
				115406,	-- Knight
				115407,	-- Rook
				115395,	-- Queen
			}},{
				i(143665),	-- Broken Girdle of Treachery
				i(143674),	-- Creaking Legplates of the Innocent
				i(143672),	-- Dented Triptych Shield
				i(143673),	-- Heart-Snuffed Leggings
				i(143669),	-- Overgrown Forestlord Striders
				i(143675),	-- Potentate's Threadbare Headdress
				i(143671),	-- Sagging Shoulderpads of the Merciless
				i(143666),	-- Shattered King's Defender
				i(143668),	-- Tarnished Mithril Chain of Heroism
				i(143670),	-- Thin-Soled Fiend Slayer Boots
				i(143667),	-- Worn Battlescar Boots
			})),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(1837, {	-- Moroes
					["creatureID"] = 114312,	-- Moroes
					["groups"] = {
						i(138797),	-- Illusion: Mongoose (ILLUSION!)
						i(142246, {	-- Broken Pocket Watch
							["description"] = "This is a rare drop that eventually leads to adding Moroes as a follower.",
						}),
					},
				}),
				e(1817, {	-- Shade of Medivh
					["creatureID"] = 114350,	-- Shade of Medivh
					["groups"] = { i(138798) },	-- Illusion: Sunfire (ILLUSION!)
				}),
				e(1838, {	-- Viz'aduum the Watcher
					["creatureID"] = 114790,	-- Viz'aduum the Watcher
					["groups"] = {
						ach(11929),	-- Heroic: Return to Karazhan
						i(213017, {	-- Grimoire of the Riftsmolder Darkglare (CI!)
							["timeline"] = { ADDED_10_2_5 },
						}),
						i(246865, {	-- Tome of Reliquary Insights (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				e(1820, {	-- Opera Hall: Wikket
					["crs"] = {
						114339,	-- Barnes <The Stage Manager>
						114284,	-- Elfyra
						114251,	-- Galindre
					},
					["groups"] = {
						i(142298),	-- Astonishingly Scarlet Slippers
						i(142204),	-- Boots of False Promise
						i(142300),	-- Greaves of Miraculous Magnificence
						i(142299),	-- Horkin' Stuff-Lobbers
						i(142198),	-- Inordinately Wondrous Wristguards
						i(142205),	-- Jabber Grookin' Gauntlets
						i(142137),	-- Short Jibbet Waistguard
						i(142296),	-- Wikket Witch's Hat
						i(142175),	-- Arcanum of Weightlessness
						i(142194),	-- Gloomy Vortex
						i(142179),	-- Memory of Betrayal
					},
				}),
				e(1826, {	-- Opera Hall: Westfall Story
					["crs"] = {
						114339,	-- Barnes <The Stage Manager>
						114260,	-- Mrrgria
						114261,	-- Toe Knee
					},
					["groups"] = {
						i(142302),	-- Armguards of Burning Passion
						i(142146),	-- Blackfin Wristband
						i(142154),	-- Bracelets of the Sorrowful Bridge
						i(142201),	-- Mantle of Conflicted Loyalties
						i(142160),	-- Mrrgria's Favor
						i(142164),	-- Toe Knee's Promise
						i(142190),	-- Love's Intermission
						i(142186),	-- Mrrmgmrl Grmmlmflrg
						i(142178),	-- Ruffian's Poisoned Blade
					},
				}),
				e(1827, {	-- Opera Hall: Beautiful Beast
					["crs"] = {
						114339,	-- Barnes <The Stage Manager>
						114328,	-- Coggleston
						114330,	-- Babblet
						114329,	-- Luminore
						114522,	-- Mrs. Cauldrons
					},
					["groups"] = {
						i(142196),	-- Cinch of Improbable Desire
						i(142206),	-- Cloak of Sweltering Flame
						i(142197),	-- Legguards of Imprisonment
						i(142168),	-- Majordomo's Dinner Bell
						i(142202),	-- Trousers of Royal Vanity
						i(142304),	-- Visage of Brutish Iron
						i(142184),	-- Candle of Flickering Lumens
						i(142192),	-- Ghastly Curse
						i(142188),	-- Spellbound Rose Petal
					},
				}),
				e(1825, {	-- Maiden of Virtue
					["creatureID"] = 113971,	-- Maiden of Virtue
					["groups"] = {
						i(142138),	-- Confiscated Manacle
						i(142153),	-- Cord of the Penitent
						i(142170),	-- Drape of Shame
						i(142158),	-- Faith's Crucible
						i(142124),	-- Treads of the Depraved
						i(142139),	-- Vest of Wanton Deeds
						i(142193),	-- Begrudging Confessions
						i(142187),	-- Virtuous Directive
					},
				}),
				e(1835, {	-- Attumen the Huntsman
					["crs"] = {
						114262,	-- Attumen the Huntsman
						114264,	-- Midnight
					},
					["groups"] = {
						i(142140),	-- Calliard's Galoshes
						i(142174),	-- Choker of Barbed Reins
						i(142126),	-- Helm of Phantasmal Scars
						i(142161),	-- Inescapable Dread
						i(142136),	-- Mantle of Hideous Trophies
						i(142148),	-- Wilderness Stalker's Softsoles
						i(142191),	-- Dirge of the Hunted
						i(142185),	-- Fear of Predation
						i(142183),	-- Lava-Quenched Hoofplate
					},
				}),
				e(1837, {	-- Moroes
					["creatureID"] = 114312,	-- Moroes
					["groups"] = {
						i(142159),	-- Bloodstained Handkerchief
						i(142123),	-- Breastplate of Obligation
						i(142134),	-- Castellan's Blinders
						i(142147),	-- Robes of Wicket Modesty
						i(142171),	-- Seal of Darkshire Nobility
						i(142143),	-- Willbreaker Legguards
						i(142177),	-- Jagged Emerald
						i(142189),	-- Perfectly Preserved Apple
					},
				}),
				e(1836, {	-- The Curator
					["creatureID"] = 114247,	-- The Curator
					["groups"] = {
						i(142130),	-- Bite-Marked Wristplates
						i(142141),	-- Custodian's Soothing Touch
						i(142165),	-- Deteriorated Construct Core
						i(142133),	-- Gauntlets of Confinement
						i(142149),	-- Gloves of Arcane Confluence
						i(142125),	-- Repurposed Golem Grips
						i(142172),	-- Terestian's Signet Ring
						i(142176),	-- Arcing Static Charge
						i(142309),	-- Fauna Analysis Widget
						i(142181),	-- Seeping Corruption
					},
				}),
				e(1817, {	-- Shade of Medivh
					["creatureID"] = 114350,	-- Shade of Medivh
					["groups"] = {
						i(142207),	-- Amulet of the Last Guardian
						i(142157),	-- Aran's Relaxing Ruby
						i(142131),	-- Frozen-Link Chestguard
						i(142145),	-- Girdle of Ghostly Exclusion
						i(142169),	-- Raven Eidolon
						i(142152),	-- Shoulderpads of Chaotic Thought
						i(142129),	-- Spellwarding Waistguard
						i(142308),	-- Ageless Winter
						i(142310),	-- Anthology of Horrors
					},
				}),
				e(1818, {	-- Mana Devourer
					["creatureID"] = 114252,	-- Mana Devourer
					["groups"] = {
						i(142162),	-- Fluctuating Energy
						i(142150),	-- Hood of Uncanny Perspectives
						i(142135),	-- Legguards of Countless Hours
						i(142128),	-- Pauldrons of Encroaching Limits
						i(142144),	-- Unending Horizon Spaulders
						i(142215),	-- Wine-Stained Mantle
						i(142180),	-- Grisly Schism
						i(142307),	-- Miniature Bonfire
						i(142305),	-- Suffused Manapearl
					},
				}),
				e(1838, {	-- Viz'aduum the Watcher
					["creatureID"] = 114790,	-- Viz'aduum the Watcher
					["groups"] = {
						i(142167),	-- Eye of Command
						i(142132),	-- Doomstride Footguards
						i(142151),	-- Leggings of Countless Worlds
						i(142173),	-- Ring of Collapsing Futures
						i(142127),	-- Tassets of Perpetual Despair
						i(142142),	-- Unbound Reality Mask
						i(142306),	-- Rift Stabilization Shard
						i(142182),	-- Viz'aduum's Mindstone
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				n(ACHIEVEMENTS, {
					ach(11433, {	-- Burn After Reading
						["providers"] = {
							{ "o", 265597 },	-- Sealed Tome
							{ "o", 265599 },	-- Sealed Tome
							{ "o", 265600 },	-- Sealed Tome
							{ "o", 265602 },	-- Sealed Tome
						},
						["groups"] = {
							crit(34852, {	-- Legacy of the Mountain King
								["provider"] = { "i", 142049 },	-- Legacy of the Mountain King
							}),
							crit(34853, {	-- Redemption of the Fallen
								["provider"] = { "i", 142052 },	-- Redemption of the Fallen
							}),
							crit(34854, {	-- Torment of the Worgen
								["provider"] = { "i", 142051 },	-- Torment of the Worgen
							}),
							crit(34855, {	-- Wrath of the Titans
								["provider"] = { "i", 142073 },	-- Wrath of the Titans
							}),
						},
					}),
					ach(11430, {	-- One Night in Karazhan
						["description"] = "1. Go to Opera and complete the encounter. Click the fragment in the audience.\n\n2. Head towards Maiden. Click the fragment in the room just before the boss.\n\n3. Go to Moroes and complete the encounter. Click the fragment behind the table. Pick up the key that appears on the ground after Moroes dies.\n\n4. Go to the spider room (the far top-right corner of Servant's Quarters) and click the fragment.\n\n5. Go to Curator, complete the encounter, and click the fragment.\n\nRun down to where Nightbane was summoned in the Burning Crusade days. Medivh will be there.\n\nTalk to Medivh.\n",
						["crs"] = {
							115038,	-- Image of Medivh
							115013,	-- Soul Fragment
						},
					}),
					ach(11335, {	-- Season Tickets
						crit(34615, {	-- Beautiful Beast
							["_encounter"] = { 1827, DIFFICULTY.DUNGEON.MYTHIC },
						}),
						crit(34614, {	-- Westfall Story
							["_encounter"] = { 1826, DIFFICULTY.DUNGEON.MYTHIC },
						}),
						crit(34613, {	-- Wikket
							["_encounter"] = { 1820, DIFFICULTY.DUNGEON.MYTHIC },
						}),
					}),
				}),
				e(1827, {	-- Opera Hall: Beautiful Beast
					["crs"] = {
						114339,	-- Barnes <The Stage Manager>
						114328,	-- Coggleston
						114330,	-- Babblet
						114329,	-- Luminore
						114522,	-- Mrs. Cauldrons
					},
					["groups"] = {
						i(142196),	-- Cinch of Improbable Desire
						i(142206),	-- Cloak of Sweltering Flame
						i(142197),	-- Legguards of Imprisonment
						i(142168),	-- Majordomo's Dinner Bell
						i(142202),	-- Trousers of Royal Vanity
						i(142304),	-- Visage of Brutish Iron
						i(142184),	-- Candle of Flickering Lumens
						i(142192),	-- Ghastly Curse
						i(142188),	-- Spellbound Rose Petal
					},
				}),
				e(1826, {	-- Opera Hall: Westfall Story
					["crs"] = {
						114339,	-- Barnes <The Stage Manager>
						114260,	-- Mrrgria
						114261,	-- Toe Knee
					},
					["groups"] = {
						i(142302),	-- Armguards of Burning Passion
						i(142146),	-- Blackfin Wristband
						i(142154),	-- Bracelets of the Sorrowful Bridge
						i(142201),	-- Mantle of Conflicted Loyalties
						i(142160),	-- Mrrgria's Favor
						i(142164),	-- Toe Knee's Promise
						i(142190),	-- Love's Intermission
						i(142186),	-- Mrrmgmrl Grmmlmflrg
						i(142178),	-- Ruffian's Poisoned Blade
					},
				}),
				e(1820, {	-- Opera Hall: Wikket
					["crs"] = {
						114339,	-- Barnes <The Stage Manager>
						114284,	-- Elfyra
						114251,	-- Galindre
					},
					["groups"] = {
						i(142298),	-- Astonishingly Scarlet Slippers
						i(142204),	-- Boots of False Promise
						i(142300),	-- Greaves of Miraculous Magnificence
						i(142299),	-- Horkin' Stuff-Lobbers
						i(142198),	-- Inordinately Wondrous Wristguards
						i(142205),	-- Jabber Grookin' Gauntlets
						i(142137),	-- Short Jibbet Waistguard
						i(142296),	-- Wikket Witch's Hat
						i(142175),	-- Arcanum of Weightlessness
						i(142194),	-- Gloomy Vortex
						i(142179),	-- Memory of Betrayal
					},
				}),
				e(1825, {	-- Maiden of Virtue
					["creatureID"] = 113971,	-- Maiden of Virtue
					["groups"] = {
						i(142138),	-- Confiscated Manacle
						i(142153),	-- Cord of the Penitent
						i(142170),	-- Drape of Shame
						i(142158),	-- Faith's Crucible
						i(142124),	-- Treads of the Depraved
						i(142139),	-- Vest of Wanton Deeds
						i(142193),	-- Begrudging Confessions
						i(142187),	-- Virtuous Directive
					},
				}),
				e(1835, {	-- Attumen the Huntsman
					["crs"] = {
						114262,	-- Attumen the Huntsman
						114264,	-- Midnight
					},
					["groups"] = {
						i(142236),	-- Midnight (MOUNT!)
						i(142140),	-- Calliard's Galoshes
						i(142174),	-- Choker of Barbed Reins
						i(142126),	-- Helm of Phantasmal Scars
						i(142161),	-- Inescapable Dread
						i(142136),	-- Mantle of Hideous Trophies
						i(142148),	-- Wilderness Stalker's Softsoles
						i(142191),	-- Dirge of the Hunted
						i(142185),	-- Fear of Predation
						i(142183),	-- Lava-Quenched Hoofplate
					},
				}),
				e(1837, {	-- Moroes
					["creatureID"] = 114312,	-- Moroes
					["groups"] = {
						ach(11338),	-- Dine and Bash
						i(142159),	-- Bloodstained Handkerchief
						i(142123),	-- Breastplate of Obligation
						i(142134),	-- Castellan's Blinders
						i(142147),	-- Robes of Wicket Modesty
						i(142171),	-- Seal of Darkshire Nobility
						i(142143),	-- Willbreaker Legguards
						i(142177),	-- Jagged Emerald
						i(142189),	-- Perfectly Preserved Apple
					},
				}),
				n(114895, {	-- Nightbane
					["description"] = "In order to summon Nightbane, you must find Soul Fragments scattered throughout Karazhan.\n\n1. Go to Opera and complete the encounter. Click the fragment in the audience.\n\n2. Head towards Maiden. Click the fragment in the room just before the boss.\n\n3. Go to Moroes and complete the encounter. Click the fragment behind the table. Pick up the key that appears on the ground after Moroes dies.\n\n4. Go to the spider room (the far top-right corner of Servant's Quarters) and click the fragment.\n\n5. Go to Curator, complete the encounter, and click the fragment.\n\nRun down to where Nightbane was summoned in the Burning Crusade days. Medivh will be there.\n\nTalk to Medivh.\n",
					["cr"] = 115038,	-- Image of Medivh
					["groups"] = {
						i(142552),	-- Smoldering Ember Wyrm (MOUNT!)
						i(143556, {	-- Charred Bone Fragments
							["description"] = "You must complete the full quest chain before this will drop from the boss.",
						}),
						i(142303),	-- Chestplate of Impenetrable Darkness
						i(142203),	-- Harness of Smoldering Betrayal
						i(142301),	-- Hauberk of Warped Intuition
						i(142297),	-- Robes of the Ancient Chronicle
						i(142166),	-- Ethereal Urn
						i(143524),	-- Bones of the Restless
						i(143532),	-- Echoing Madness
						i(143528),	-- Glimpse of the Afterlife
						i(143525),	-- Necrotic Dominion
						i(143531),	-- Nightmares of the Dead
						i(143530),	-- Ritual of Animation
						i(143527),	-- Scale of Arcanagos
						i(143526),	-- Searing Cinder
						i(143529),	-- Star of Hollow Spite
						i(143523),	-- Talisman of the Violet Eye
					},
				}),
				e(1836, {	-- The Curator
					["creatureID"] = 114247,	-- The Curator
					["groups"] = {
						i(142130),	-- Bite-Marked Wristplates
						i(142141),	-- Custodian's Soothing Touch
						i(142165),	-- Deteriorated Construct Core
						i(142133),	-- Gauntlets of Confinement
						i(142149),	-- Gloves of Arcane Confluence
						i(142125),	-- Repurposed Golem Grips
						i(142172),	-- Terestian's Signet Ring
						i(142176),	-- Arcing Static Charge
						i(142309),	-- Fauna Analysis Widget
						i(142181),	-- Seeping Corruption
					},
				}),
				e(1817, {	-- Shade of Medivh
					["creatureID"] = 114350,	-- Shade of Medivh
					["groups"] = {
						ach(11432),	-- Scared Straight
						i(142207),	-- Amulet of the Last Guardian
						i(142157),	-- Aran's Relaxing Ruby
						i(142131),	-- Frozen-Link Chestguard
						i(142145),	-- Girdle of Ghostly Exclusion
						i(142169),	-- Raven Eidolon
						i(142152),	-- Shoulderpads of Chaotic Thought
						i(142129),	-- Spellwarding Waistguard
						i(142308),	-- Ageless Winter
						i(142310),	-- Anthology of Horrors
					},
				}),
				e(1818, {	-- Mana Devourer
					["creatureID"] = 114252,	-- Mana Devourer
					["groups"] = {
						ach(11431, {	-- The Rat Pack
							["crs"] = { 116802 },	-- Rodent of Usual Size
						}),
						i(142162),	-- Fluctuating Energy
						i(142150),	-- Hood of Uncanny Perspectives
						i(142135),	-- Legguards of Countless Hours
						i(142128),	-- Pauldrons of Encroaching Limits
						i(142144),	-- Unending Horizon Spaulders
						i(142215),	-- Wine-Stained Mantle
						i(142180),	-- Grisly Schism
						i(142307),	-- Miniature Bonfire
						i(142305),	-- Suffused Manapearl
					},
				}),
				e(1838, {	-- Viz'aduum the Watcher
					["creatureID"] = 114790,	-- Viz'aduum the Watcher
					["groups"] = {
						ach(11429),	-- Mythic: Return to Karazhan
						ach(11428),	-- Return to Karazhan Guild Run
						i(142167),	-- Eye of Command
						i(142132),	-- Doomstride Footguards
						i(142151),	-- Leggings of Countless Worlds
						i(142173),	-- Ring of Collapsing Futures
						i(142127),	-- Tassets of Perpetual Despair
						i(142142),	-- Unbound Reality Mask
						i(142306),	-- Rift Stabilization Shard
						i(142182),	-- Viz'aduum's Mindstone
					},
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_0 } }, {
	inst(860, {
		q(45393),	-- Moroes cutscene
		q(45394),	-- Maiden of Virtue Kill
		q(45395),	-- Shade of Medivh Kill
		q(45396),	-- Mana Devourer Kill
	}),
})));
