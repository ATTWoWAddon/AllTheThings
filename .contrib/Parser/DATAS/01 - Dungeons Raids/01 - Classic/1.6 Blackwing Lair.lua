-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local SOD_REMOVED_1_15_4 = {
	-- #if SEASON_OF_DISCOVERY
	["timeline"] = { REMOVED_1_15_4 },
	-- #endif
};
-- #if SEASON_OF_DISCOVERY
local TOKENS = {
	ANCIENT = {	-- Paladin, Hunter, Shaman
		HELM = 231728,	-- Ancient Helm
		SHOULDERS = 231726,	-- Ancient Shoulderpads
		CHEST = 231731,	-- Ancient Chest
		BRACERS = 231724,	-- Ancient Bindings
		GLOVES = 231729,	-- Ancient Gloves
		BELT = 231725,	-- Ancient Belt
		LEGS = 231727,	-- Ancient Leggings
		BOOTS = 231730,	-- Ancient Boots
	},
	DRACONIAN = {	-- Priest, Mage, Warlock
		HELM = 231711,	-- Draconian Hood
		SHOULDERS = 231709,	-- Draconian Shoulderpads
		CHEST = 231714,	-- Draconian Robe
		BRACERS = 231707,	-- Draconian Bindings
		GLOVES = 231712,	-- Draconian Gloves
		BELT = 231708,	-- Draconian Belt
		LEGS = 231710,	-- Draconian Leggings
		BOOTS = 231713,	-- Draconian Boots
	},
	PRIMEVAL = {	-- Warrior, Rogue, Druid
		HELM = 231719,	-- Primeval Helm
		SHOULDERS = 231717,	-- Primeval Shoulderpads
		CHEST = 231723,	-- Primeval Chest
		BRACERS = 231715,	-- Primeval Bindings
		GLOVES = 231720,	-- Primeval Gloves
		BELT = 231716,	-- Primeval Belt
		LEGS = 231718,	-- Primeval Leggings
		BOOTS = 231721,	-- Primeval Boots
	}
};
-- #endif
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, applyclassicphase(PHASE_THREE, {
	inst(742, {	-- Blackwing Lair
		["lore"] = "In the dark recesses of the mountain's peak, Nefarian, the eldest son of Deathwing, conducts some of his most awful experimentation, controlling mighty beings like puppets and combining the eggs of different dragonflights with horrific results. Should he prove successful, even darker pursuits rest on the horizon.\n\nAnd, yet, the Lord of Blackrock is not a mere scientist - he is a great dragon cornered in his lair. Can he truly be defeated by mortal hands?",
		["provider"] = { "o", 179879 },	-- Orb of Command
		-- #if BEFORE WRATH
		["zone-text-areaID"] = 2677,	-- Blackwing Lair
		-- #endif
		["coord"] = { 64.2, 71.0, BLACKROCK_MOUNTAIN },
		["mapID"] = BLACKWING_LAIR,
		["maps"] = { BLACKWING_LAIR_LEVEL2, BLACKWING_LAIR_LEVEL3, BLACKWING_LAIR_LEVEL4 },
		-- #if BEFORE WOD
		["sourceQuest"] = 7761,	-- Blackhand's Command
		-- #endif
		["sharedLockout"] = 1,
		["isRaid"] = true,
		["lvl"] = lvlsquish(50, 50, 25),
		["groups"] = {
			-- #if AFTER 7.2.0
			n(ACHIEVEMENTS, {
				ach(11742, {["timeline"] = {ADDED_7_2_0}}),	-- Dress in Lairs (Blackwing Lair)
			}),
			-- #endif
			-- #if SEASON_OF_DISCOVERY
			n(QUESTS, applyclassicphase(SOD_PHASE_FIVE, bubbleDown({ ["timeline"] = { ADDED_1_15_4 }, }, {
				cl(DRUID, {

				}),
				cl(HUNTER, {

				}),
				cl(MAGE, {

				}),
				cl(PALADIN, {

				}),
				cl(PRIEST, {

				}),
				cl(ROGUE, {

				}),
				cl(SHAMAN, {

				}),
				cl(WARLOCK, {
					q(85505, {	-- Soul of Devouring
						["qg"] = 232802,	-- Doan Karhan
						["sourceQuest"] = 85486,	-- Soul of Enthralling
						["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
						["groups"] = {
							objective(1, {	-- Find Felhunter Area
								["provider"] = { "i", 231837 },	-- Shadow Carving
								["coord"] = { 53.8, 51.6, EASTERN_PLAGUELANDS },
								["cr"] = 232903,	-- Shadowmage <Cult of the Damned>
							}),
							i(231796, {	-- Depleted Scythe of Chaos (Devouring)
								["description"] = "Use Drail Soul on the Ravenous Felhound once you've summoned it using the Shadow Carving.",
								["cost"] = {
									{ "i", 231799, 1 },	-- Soul of Devouring
									{ "i", 231795, 1 },	-- Depleted Scythe of Chaos (Enthralling)
								},
								["coord"] = { 53.8, 51.6, EASTERN_PLAGUELANDS },
								["cr"] = 232896,	-- Ravenous Felhound
							}),
						},
					}),
					q(85486, {	-- Soul of Enthralling
						["qg"] = 232802,	-- Doan Karhan
						["sourceQuest"] = 85485,	-- Soul of the Void
						["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
						["groups"] = {
							objective(1, {	--	Use Glowing Scroll of Spatial Mending on Fel Portal
								["provider"] = { "i", 231836 },	-- Glowing Scroll of Spatial Mending
								["coord"] = { 32.6, 30.9, EASTERN_PLAGUELANDS },
								["cr"] = 232900,	-- Cursed Mage
							}),
							i(231795, {	-- Depleted Scythe of Chaos (Enthralling)
								["description"] = "Use Drail Soul on the Fel Interloper once you've summoned it using the scroll of spatial mending.",
								["cost"] = {
									{ "i", 231798, 1 },	-- Soul of Enthralling
									{ "i", 231794, 1 },	-- Depleted Scythe of Chaos (Void)
								},
								["coord"] = { 32.6, 30.9, EASTERN_PLAGUELANDS },
								["cr"] = 230146,	-- Fel Interloper
							}),
						},
					}),
					q(85468, {	-- Soul of Mischief
						["qg"] = 6247,	-- Doan Karhan
						["sourceQuest"] = 85112,	-- The Depleted Scythe
						["coord"] = { 49.2, 57.2, THE_BARRENS },
						["maps"] = { EASTERN_PLAGUELANDS },
						["groups"] = {
							objective(1, {	-- 0/5 Suspicious Supplies placed
								["provider"] = { "i", 231732 },	-- Suspicious Supplies
							}),
							i(231793, {	-- Depleted Scythe of Chaos (Mischief)
								["description"] = "Use Drail Soul on Xirath once you've completed his task to receive this.",
								["cost"] = {
									{ "i", 231792, 1 },	-- Soul of Mischief
									{ "i", 231722, 1 },	-- Depleted Scythe of Chaos
								},
								["coord"] = { 69.6, 32.0, EASTERN_PLAGUELANDS },
								["cr"] = 232731,	-- Xirath <Manathirst Imp>
							}),
						},
					}),
					q(85485, {	-- Soul of the Void
						["qg"] = 232802,	-- Doan Karhan
						["sourceQuest"] = 85468,	-- Soul of Mischief
						["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
						["groups"] = {
							i(231794, {	-- Depleted Scythe of Chaos (Void)
								["description"] = "Use Drail Soul on the Voidwalker once you've used a Major Spellstone, Shadow Ward, and then Sacrifice to summon it.",
								["cost"] = {
									{ "i", 231797, 1 },	-- Soul of the Void
									{ "i", 231793, 1 },	-- Depleted Scythe of Chaos (Mischief)
								},
								["coord"] = { 59.0, 67.0, EASTERN_PLAGUELANDS },
								["cr"] = 232875,	-- Abandoned Voidwalker
							}),
						},
					}),
					q(85112, {	-- The Depleted Scythe
						["providers"] = {
							{ "i", 231722 },	-- Depleted Scythe of Chaos
							{ "n",   6247 },	-- Doan Karhan
						},
						["coord"] = { 49.2, 57.2, THE_BARRENS },
					}),
					q(85506, {	-- The Final Test
						["qg"] = 232802,	-- Doan Karhan
						["sourceQuest"] = 85505,	-- Soul of Devouring
						["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
						["maps"] = { ASHENVALE },
						["groups"] = {
							objective(1, {	-- Speak to Doan Karhan
								["provider"] = { "n", 232924 },	-- Doan Karhan
								["coord"] = { 84.8, 70.6, ASHENVALE },
							}),
							n(232886, {	-- Des'Altek
								["description"] = "Summon and defeat Des'Altek within Demon Fall Canyon to receive the soul.",
								["cost"] = {
									{ "i", 231800, 1 },	-- Soul of Des'Altek
									{ "i", 231796, 1 },	-- Depleted Scythe of Chaos (Devouring)
								},
								["groups"] = {
									i(229910),	-- Scythe of Chaos
								},
							}),
						},
					}),
				}),
				cl(WARRIOR, {

				}),
			}))),
			-- #endif
			n(QUESTS, {
				q(7781, {	-- The Lord of Blackrock [A] (1/2)
					["provider"] = { "i", 19003 },	-- Head of Nefarian
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
				}),
				q(7782, bubbleDownSelf(SOD_REMOVED_1_15_4, {	-- The Lord of Blackrock [A] (2/2)
					["qgs"] = {
						-- #if AFTER LEGION
						107574,	-- Anduin Wrynn
						1750,	-- Grand Admiral Jes-Tereth
						-- #elseif AFTER WRATH
						29611,	-- King Varian Wrynn <King of Stormwind>
						-- #else
						1748,	-- Highlord Bolvar Fordragon
						-- #endif
					},
					["coords"] = {
						-- #if AFTER LEGION
						{ 85.6, 31.8, STORMWIND_CITY },	-- Anduin Wrynn <King of Stormwind>
						{ 85.8, 32.4, STORMWIND_CITY },	-- Grand Admiral Jes-Tereth
						-- #elseif AFTER WRATH
						{ 85.6, 31.8, STORMWIND_CITY },	-- King Varian Wrynn <King of Stormwind>
						-- #else
						{ 78.0, 18.0, STORMWIND_CITY },	-- Highlord Bolvar Fordragon
						-- #endif
					},
					["sourceQuest"] = 7781,	-- The Lord of Blackrock [A]
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(19366),	-- Master Dragonslayer's Orb
						i(19383),	-- Master Dragonslayer's Medallion
						i(19384),	-- Master Dragonslayer's Ring
					},
				})),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FIVE, q(85643, bubbleDownSelf({ ["timeline"] = { ADDED_1_15_4 }, }, {	-- The Lord of Blackrock [A] (2/2)
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["coord"] = { 78.0, 18.0, STORMWIND_CITY },
					["sourceQuest"] = 7781,	-- The Lord of Blackrock [A]
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(230840),	-- Master Dragonslayer's Medallion
						i(230841),	-- Master Dragonslayer's Orb
						i(230839),	-- Master Dragonslayer's Ring
					},
				}))),
				-- #endif
				q(7783, {	-- The Lord of Blackrock [H] (1/2)
					["provider"] = { "i", 19002 },	-- Head of Nefarian
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
				}),
				q(7784, bubbleDownSelf(SOD_REMOVED_1_15_4, {	-- The Lord of Blackrock [H] (2/2)
					["qgs"] = {
						-- #if AFTER BFA
						3144,	-- Eitrigg
						-- #elseif AFTER LEGION
						14720,	-- High Overlord Saurfang
						-- #elseif AFTER WOD
						86832,	-- Vol'jin <Warchief>
						-- #elseif AFTER CATA
						39605,	-- Garrosh Hellscream <Warchief>
						-- #else
						4949,	-- Thrall <Warchief>
						-- #endif
					},
					["coords"] = {
						-- #if AFTER BFA
						{ 49.0, 72.8, ORGRIMMAR },	-- Eitrigg
						-- #elseif AFTER CATA
						{ 48.6, 71.0, ORGRIMMAR },	-- Saurfang, Vol'jin, Garrosh
						-- #else
						{ 32, 37.8, ORGRIMMAR },	-- Thrall <Warchief>
						-- #endif
					},
					["sourceQuest"] = 7783,	-- The Lord of Blackrock [H]
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(19383),	-- Master Dragonslayer's Medallion
						i(19366),	-- Master Dragonslayer's Orb
						i(19384),	-- Master Dragonslayer's Ring
					},
				})),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FIVE, q(85644, bubbleDownSelf({ ["timeline"] = { ADDED_1_15_4 }, }, {	-- The Lord of Blackrock [H] (2/2)
					["qg"] = 4949,	-- Thrall <Warchief>
					["coord"] = { 32, 37.8, ORGRIMMAR },
					["sourceQuest"] = 7783,	-- The Lord of Blackrock [H]
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(230840),	-- Master Dragonslayer's Medallion
						i(230841),	-- Master Dragonslayer's Orb
						i(230839),	-- Master Dragonslayer's Ring
					},
				}))),
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			-- In Season of Discovery, this version of the instance has been deprecated and removed in favor of the raid.
			d(DIFFICULTY.LEGACY_RAID.PLAYER40, bubbleDownTimelineEventSelf(REMOVED_1_15_4, {
			-- #endif
			n(ZONE_DROPS, {
				i(18562, {	-- Elementium Ingot
					["crs"] = {
						13996,	-- Blackwing Technician
						14401,	-- Master Elemental Shaper Krixix
					},
				}),
				i(19434, {	-- Band of Dark Dominion
					["crs"] = {
						12457,	-- Blackwing Spellbinder
						12459,	-- Blackwing Warlock
						12461,	-- Death Talon Overseer
					},
				}),
				i(19437, {	-- Boots of Pure Thought
					["crs"] = {
						12467,	-- Death Talon Captain
						12463,	-- Death Talon Flamescale
						12464,	-- Death Talon Seether
						12465,	-- Death Talon Wyrmkin
					},
				}),
				i(19436, {	-- Cloak of Draconic Might
					["crs"] = {
						12467,	-- Death Talon Captain
						12463,	-- Death Talon Flamescale
						12464,	-- Death Talon Seether
						12465,	-- Death Talon Wyrmkin
					},
				}),
				i(19362, {	-- Doom's Edge
					["crs"] = {
						12457,	-- Blackwing Spellbinder
						12459,	-- Blackwing Warlock
						12461,	-- Death Talon Overseer
					},
				}),
				i(19354, {	-- Draconic Avenger
					["crs"] = {
						12460,	-- Death Talon Wyrmguard
					},
				}),
				i(19358, {	-- Draconic Maul
					["crs"] = {
						12467,	-- Death Talon Captain
						12463,	-- Death Talon Flamescale
						12464,	-- Death Talon Seether
						12465,	-- Death Talon Wyrmkin
					},
				}),
				i(19435, {	-- Essence Gatherer
					["crs"] = {
						12457,	-- Blackwing Spellbinder
						12459,	-- Blackwing Warlock
						12461,	-- Death Talon Overseer
					},
				}),
				i(19439, {	-- Interlaced Shadow Jerkin
					["crs"] = {
						12460,	-- Death Talon Wyrmguard
					},
				}),
				i(19438, {	-- Ringo's Blizzard Boots
					["crs"] = {
						12460,	-- Death Talon Wyrmguard
					},
				}),
				i(19183),	-- Hourglass Sand
			}),
			e(1529, {	-- Razorgore the Untamed
				["creatureID"] = 12435,
				["groups"] = {
					i(93036, {	-- Untamed Hatchling (PET!)
						["timeline"] = { ADDED_5_1_0 },
					}),
					i(19334),	-- The Untamed Blade
					i(19335),	-- Spineshatter
					i(19370),	-- Mantle of the Blackwing Cabal
					i(16926),	-- Bindings of Transcendence
					i(16911),	-- Bloodfang Bracers
					i(16959),	-- Bracelets of Wrath
					i(16943),	-- Bracers of Ten Storms
					i(16935),	-- Dragonstalker's Bracers
					i(16951),	-- Judgment Bindings
					i(16934),	-- Nemesis Bracers
					i(16918),	-- Netherwind Bindings
					i(16904),	-- Stormrage Bracers
					i(19369),	-- Gloves of Rapid Evolution
					i(19336),	-- Arcane-Infused Gem
					i(19337),	-- The Black Book
				},
			}),
			e(1530, {	-- Vaelastrasz the Corrupt
				["creatureID"] = 13020,
				["groups"] = {
					i(19346),	-- Dragonfang Blade
					i(19348),	-- Red Dragonscale Protector
					i(19372),	-- Helm of Endless Rage
					i(19371),	-- Pendant of the Fallen Dragon
					i(16944),	-- Belt of Ten Storms
					i(16925),	-- Belt of Transcendence
					i(16910),	-- Bloodfang Belt
					i(16936),	-- Dragonstalker's Belt
					i(16952),	-- Judgment Belt
					i(16933),	-- Nemesis Belt
					i(16818),	-- Netherwind Belt
					i(16903),	-- Stormrage Belt
					i(16960),	-- Waistband of Wrath
					i(19339),	-- Mind Quickening Gem
					i(19340),	-- Rune of Metamorphosis
				},
			}),
			e(1531, {	-- Broodlord Lashlayer
				["creatureID"] = 12017,
				["groups"] = {
					i(93037, {	-- Death Talon Whelpguard (PET!)
						["timeline"] = { ADDED_5_1_0 },
					}),
					i(19351),	-- Maladath, Runed Blade of the Black Flight
					i(19350),	-- Heartstriker
					i(19373),	-- Black Brood Pauldrons
					i(19374),	-- Bracers of Arcane Accuracy
					i(16906),	-- Bloodfang Boots
					i(16919),	-- Boots of Transcendence
					i(16941),	-- Dragonstalker's Greaves
					i(16949),	-- Greaves of Ten Storms
					i(16957),	-- Judgment Sabatons
					i(16927),	-- Nemesis Boots
					i(16912),	-- Netherwind Boots
					i(16965),	-- Sabatons of Wrath
					i(16898),	-- Stormrage Boots
					i(19341),	-- Lifegiving Gem
					i(19342),	-- Venomous Totem
				},
			}),
			e(1532, {	-- Firemaw
				["creatureID"] = 11983,
				["groups"] = {
					i(19353),	-- Drake Talon Cleaver
					i(19355),	-- Shadow Wing Focus Staff
					i(19365),	-- Claw of the Black Drake
					i(19394),	-- Drake Talon Pauldrons
					i(19398),	-- Cloak of Firemaw
					i(19399),	-- Black Ash Robe
					i(16907),	-- Bloodfang Gloves
					i(16940),	-- Dragonstalker's Gauntlets
					i(16928),	-- Nemesis Gloves
					i(16948),	-- Gauntlets of Ten Storms
					i(16964),	-- Gauntlets of Wrath
					i(16920),	-- Handguards of Transcendence
					i(16956),	-- Judgment Gauntlets
					i(16913),	-- Netherwind Gloves
					i(16899),	-- Stormrage Handguards
					i(19400),	-- Firemaw's Clutch
					i(19396),	-- Taut Dragonhide Belt
					i(19402),	-- Legguards of the Fallen Crusader
					i(19401),	-- Primalist's Linked Legguards
					i(19397),	-- Ring of Blackrock
					i(19344),	-- Natural Alignment Crystal
					i(19395),	-- Rejuvenating Gem
					i(19343),	-- Scrolls of Blinding Light
				},
			}),
			n(14401, {	-- Master Elemental Shaper Krixix
				-- #if BEFORE WRATH
				["description"] = "When Krixix is mind controlled, one of the abilities available to the priest will be to teach a friendly target to Smelt Elementium.",
				["groups"] = {
					r(22967),	-- Smelt Elementium
				},
				-- #else
				i(44956),	-- Goblin's Guide to Elementium (RECIPE!)
				-- #endif
			}),
			e(1533, {	-- Ebonroc
				["creatureID"] = 14601,
				["groups"] = {
					i(19353),	-- Drake Talon Cleaver
					i(19355),	-- Shadow Wing Focus Staff
					i(19368),	-- Dragonbreath Hand Cannon
					i(19394),	-- Drake Talon Pauldrons
					i(19405),	-- Malfurion's Blessed Bulwark
					i(16907),	-- Bloodfang Gloves
					i(16940),	-- Dragonstalker's Gauntlets
					i(19407),	-- Ebony Flame Gloves
					i(16948),	-- Gauntlets of Ten Storms
					i(16964),	-- Gauntlets of Wrath
					i(16920),	-- Handguards of Transcendence
					i(16956),	-- Judgment Gauntlets
					i(16928),	-- Nemesis Gloves
					i(16913),	-- Netherwind Gloves
					i(16899),	-- Stormrage Handguards
					i(19396),	-- Taut Dragonhide Belt
					i(19403),	-- Band of Forced Concentration
					i(19397),	-- Ring of Blackrock
					i(19345),	-- Aegis of Preservation
					i(19406),	-- Drake Fang Talisman
					i(19395),	-- Rejuvenating Gem
				},
			}),
			e(1534, {	-- Flamegor
				["creatureID"] = 11981,
				["groups"] = {
					i(19353),	-- Drake Talon Cleaver
					i(19357),	-- Herald of Woe
					i(19355),	-- Shadow Wing Focus Staff
					i(19367),	-- Dragon's Touch
					i(19394),	-- Drake Talon Pauldrons
					i(19430),	-- Shroud of Pure Thought
					i(16907),	-- Bloodfang Gloves
					i(16940),	-- Dragonstalker's Gauntlets
					i(16948),	-- Gauntlets of Ten Storms
					i(16964),	-- Gauntlets of Wrath
					i(16920),	-- Handguards of Transcendence
					i(16956),	-- Judgment Gauntlets
					i(16928),	-- Nemesis Gloves
					i(16913),	-- Netherwind Gloves
					i(16899),	-- Stormrage Handguards
					i(19396),	-- Taut Dragonhide Belt
					i(19433),	-- Emberweave Leggings
					i(19432),	-- Circle of Applied Force
					i(19397),	-- Ring of Blackrock
					i(19395),	-- Rejuvenating Gem
					i(19431),	-- Styleen's Impeding Scarab
				},
			}),
			e(1535, {	-- Chromaggus
				["creatureID"] = 14020,
				["groups"] = {
					i(93038, {	-- Chrominius (PET!)
						["timeline"] = { ADDED_5_1_0 },
					}),
					i(19352),	-- Chromatically Tempered Sword
					i(19347),	-- Claw of Chromaggus
					i(19361),	-- Ashjre'thul, Crossbow of Smiting
					i(19349),	-- Elementium Reinforced Bulwark
					i(16832),	-- Bloodfang Spaulders
					i(16937),	-- Dragonstalker's Spaulders
					i(16945),	-- Epaulets of Ten Storms
					i(16953),	-- Judgment Spaulders
					i(16932),	-- Nemesis Spaulders
					i(16917),	-- Netherwind Mantle
					i(16924),	-- Pauldrons of Transcendence
					i(16961),	-- Pauldrons of Wrath
					i(16902),	-- Stormrage Pauldrons
					i(19389),	-- Taut Dragonhide Shoulderpads
					i(19386),	-- Elementium Threaded Cloak
					i(19390),	-- Taut Dragonhide Gloves
					i(19388),	-- Angelista's Grasp
					i(19392),	-- Girdle of the Fallen Crusader
					i(19393),	-- Primalist's Linked Waistguard
					i(19385),	-- Empowered Leggings
					i(19387),	-- Chromatic Boots
					i(19391),	-- Shimmering Geta
				},
			}),
			e(1536, {	-- Nefarian
				["crs"] = {
					11583,	-- Nefarian
					10162,	-- Lord Victor Nefarius
				},
				["groups"] = {
					ach(685, {	-- Blackwing Lair
						-- #if BEFORE WRATH
						["sourceQuests"] = {
							7781,	-- The Lord of Blackrock
							7783,	-- The Lord of Blackrock
							8730,	-- Nefarius's Corruption
						},
						-- #endif
					}),
					ach(5057, {	-- Blackwing Lair Guild Run
						["timeline"] = { ADDED_4_0_3 },
					}),
					i(19003, {	-- Head of Nefarian (A)
						["races"] = ALLIANCE_ONLY,
					}),
					i(19002, {	-- Head of Nefarian (H)
						["races"] = HORDE_ONLY,
					}),
					i(170511, {	-- Head of Nefarian (Paladin, for Artifact appearance)
						["timeline"] = { ADDED_8_2_0 },
						["classes"] = { PALADIN },
					}),
					i(19364),	-- Ashkandi, Greatsword of the Brotherhood
					i(19356),	-- Staff of the Shadow Flame
					i(19363),	-- Crul'shorukh, Edge of Chaos
					i(19360),	-- Lok'amir il Romathis
					i(19375),	-- Mish'undare, Circlet of the Mind Flayer
					-- #if AFTER WRATH
					i(16908),	-- Bloodfang Hood
					i(16939),	-- Dragonstalker's Helm
					i(16921),	-- Halo of Transcendence
					i(16963),	-- Helm of Wrath
					i(16947),	-- Helmet of Ten Storms
					i(16955),	-- Judgment Crown
					i(16929),	-- Nemesis Skullcap
					i(16914),	-- Netherwind Crown
					i(16900),	-- Stormrage Cover
					-- #endif
					i(19377),	-- Prestor's Talisman of Connivery
					i(19378),	-- Cloak of the Brood Lord
					i(16905),	-- Bloodfang Chestpiece
					i(16950),	-- Breastplate of Ten Storms
					i(16966),	-- Breastplate of Wrath
					i(16942),	-- Dragonstalker's Breastplate
					i(16958),	-- Judgment Breastplate
					i(16931),	-- Nemesis Robes
					i(16916),	-- Netherwind Robes
					i(16923),	-- Robes of Transcendence
					i(16897),	-- Stormrage Chestguard
					i(19380),	-- Therazane's Link
					i(19381),	-- Boots of the Shadow Flame
					i(19376),	-- Archimtiros' Ring of Reckoning
					i(19382),	-- Pure Elementium Band
					i(19379),	-- Neltharion's Tear
					i(17964),	-- Gray Sack of Gems
					i(17963),	-- Green Sack of Gems
					i(17969),	-- Red Sack of Gems
					i(17965),	-- Yellow Sack of Gems
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			})),
			applyclassicphase(SOD_PHASE_FIVE, d(DIFFICULTY.SOD.PLAYER20, bubbleDownSelf({ ["timeline"] = { ADDED_1_15_4 }, }, {
				n(ZONE_DROPS, {
					i(18562, {	-- Elementium Ingot
						["crs"] = {
							13996,	-- Blackwing Technician
							14401,	-- Master Elemental Shaper Krixix
						},
					}),
					i(19183),	-- Hourglass Sand
				}),
				n(231711, {	-- Victor Nefriendius
					["description"] = "Located inside BWL. You can speak to him at the start of the raid to activate a number of trials. Each trial up to 3 will award additional loot. You'll want to activate the weekly trial in addition to 2 others for the best loot opportunity after your raid defeats Nefarian.",
					["groups"] = {
						cl(DRUID, {
							-- DPS (Agility)
							tokencost(TOKENS.PRIMEVAL.HELM, i(231257)),	-- Stormrage Cowl
							tokencost(TOKENS.PRIMEVAL.SHOULDERS, i(231259)),	-- Stormrage Shoulderpads
							tokencost(TOKENS.PRIMEVAL.CHEST, i(231254)),	-- Stormrage Vest
							tokencost(TOKENS.PRIMEVAL.BRACERS, i(231261)),	-- Stormrage Wraps
							tokencost(TOKENS.PRIMEVAL.GLOVES, i(231256)),	-- Stormrage Grips
							tokencost(TOKENS.PRIMEVAL.BELT, i(231260)),	-- Stormrage Sash
							tokencost(TOKENS.PRIMEVAL.LEGS, i(231258)),	-- Stormrage Trousers
							tokencost(TOKENS.PRIMEVAL.BOOTS, i(231255)),	-- Stormrage Stompers

							-- DPS (Intellect)
							tokencost(TOKENS.PRIMEVAL.HELM, i(231249)),	-- Stormrage Antlers
							tokencost(TOKENS.PRIMEVAL.SHOULDERS, i(231251)),	-- Stormrage Mantle
							tokencost(TOKENS.PRIMEVAL.CHEST, i(231246)),	-- Stormrage Leathers
							tokencost(TOKENS.PRIMEVAL.BRACERS, i(231253)),	-- Stormrage Bindings
							tokencost(TOKENS.PRIMEVAL.GLOVES, i(231248)),	-- Stormrage Mitts
							tokencost(TOKENS.PRIMEVAL.BELT, i(231252)),	-- Stormrage Cord
							tokencost(TOKENS.PRIMEVAL.LEGS, i(231250)),	-- Stormrage Kilt
							tokencost(TOKENS.PRIMEVAL.BOOTS, i(231247)),	-- Stormrage Sandals

							-- Healer
							tokencost(TOKENS.PRIMEVAL.HELM, i(231233)),	-- Stormrage Cover
							tokencost(TOKENS.PRIMEVAL.SHOULDERS, i(231235)),	-- Stormrage Pauldrons
							tokencost(TOKENS.PRIMEVAL.CHEST, i(231230)),	-- Stormrage Chestguard
							tokencost(TOKENS.PRIMEVAL.BRACERS, i(231237)),	-- Stormrage Bracers
							tokencost(TOKENS.PRIMEVAL.GLOVES, i(231232)),	-- Stormrage Handguards
							tokencost(TOKENS.PRIMEVAL.BELT, i(231236)),	-- Stormrage Belt
							tokencost(TOKENS.PRIMEVAL.LEGS, i(231234)),	-- Stormrage Legguards
							tokencost(TOKENS.PRIMEVAL.BOOTS, i(231231)),	-- Stormrage Boots

							-- Tank
							tokencost(TOKENS.PRIMEVAL.HELM, i(231241)),	-- Stormrage Headdress
							tokencost(TOKENS.PRIMEVAL.SHOULDERS, i(231243)),	-- Stormrage Spaulders
							tokencost(TOKENS.PRIMEVAL.CHEST, i(231238)),	-- Stormrage Armor
							tokencost(TOKENS.PRIMEVAL.BRACERS, i(231245)),	-- Stormrage Wristguards
							tokencost(TOKENS.PRIMEVAL.GLOVES, i(231240)),	-- Stormrage Gauntlets
							tokencost(TOKENS.PRIMEVAL.BELT, i(231244)),	-- Stormrage Waistguard
							tokencost(TOKENS.PRIMEVAL.LEGS, i(231242)),	-- Stormrage Leggings
							tokencost(TOKENS.PRIMEVAL.BOOTS, i(231239)),	-- Stormrage Treads
						}),
						cl(HUNTER, {
							-- Melee
							tokencost(TOKENS.ANCIENT.HELM, i(231068)),	-- Dragonstalker's Skullcap
							tokencost(TOKENS.ANCIENT.SHOULDERS, i(231066)),	-- Dragonstalker's Pauldrons
							tokencost(TOKENS.ANCIENT.CHEST, i(231071)),	-- Dragonstalker's Armor
							tokencost(TOKENS.ANCIENT.BRACERS, i(231063)),	-- Dragonstalker's Vambraces
							tokencost(TOKENS.ANCIENT.GLOVES, i(231069)),	-- Dragonstalker's Grips
							tokencost(TOKENS.ANCIENT.BELT, i(231065)),	-- Dragonstalker's Girdle
							tokencost(TOKENS.ANCIENT.LEGS, i(231067)),	-- Dragonstalker's Pants
							tokencost(TOKENS.ANCIENT.BOOTS, i(231070)),	-- Dragonstalker's Sabatons

							-- Ranged
							tokencost(TOKENS.ANCIENT.HELM, i(231059)),	-- Dragonstalker's Helm
							tokencost(TOKENS.ANCIENT.SHOULDERS, i(231057)),	-- Dragonstalker's Spaulders
							tokencost(TOKENS.ANCIENT.CHEST, i(231062)),	-- Dragonstalker's Breastplate
							tokencost(TOKENS.ANCIENT.BRACERS, i(231055)),	-- Dragonstalker's Bracers
							tokencost(TOKENS.ANCIENT.GLOVES, i(231060)),	-- Dragonstalker's Gauntlets
							tokencost(TOKENS.ANCIENT.BELT, i(231056)),	-- Dragonstalker's Belt
							tokencost(TOKENS.ANCIENT.LEGS, i(231058)),	-- Dragonstalker's Legguards
							tokencost(TOKENS.ANCIENT.BOOTS, i(231061)),	-- Dragonstalker's Greaves
						}),
						cl(MAGE, {
							-- DPS
							tokencost(TOKENS.DRACONIAN.HELM, i(231103)),	-- Netherwind Crown
							tokencost(TOKENS.DRACONIAN.SHOULDERS, i(231106)),	-- Netherwind Mantle
							tokencost(TOKENS.DRACONIAN.CHEST, i(231105)),	-- Netherwind Robes
							tokencost(TOKENS.DRACONIAN.BRACERS, i(231107)),	-- Netherwind Bindings
							tokencost(TOKENS.DRACONIAN.GLOVES, i(231102)),	-- Netherwind Gloves
							tokencost(TOKENS.DRACONIAN.BELT, i(231100)),	-- Netherwind Belt
							tokencost(TOKENS.DRACONIAN.LEGS, i(231104)),	-- Netherwind Pants
							tokencost(TOKENS.DRACONIAN.BOOTS, i(231101)),	-- Netherwind Boots

							-- Healer
							tokencost(TOKENS.DRACONIAN.HELM, i(231111)),	-- Netherwind Mask
							tokencost(TOKENS.DRACONIAN.SHOULDERS, i(231114)),	-- Netherwind Shoulders
							tokencost(TOKENS.DRACONIAN.CHEST, i(231113)),	-- Netherwind Vestments
							tokencost(TOKENS.DRACONIAN.BRACERS, i(231115)),	-- Netherwind Wraps
							tokencost(TOKENS.DRACONIAN.GLOVES, i(231110)),	-- Netherwind Mitts
							tokencost(TOKENS.DRACONIAN.BELT, i(231108)),	-- Netherwind Sash
							tokencost(TOKENS.DRACONIAN.LEGS, i(231112)),	-- Netherwind Leggings
							tokencost(TOKENS.DRACONIAN.BOOTS, i(231109)),	-- Netherwind Slippers
						}),
						cl(PALADIN, {
							-- DPS
							tokencost(TOKENS.ANCIENT.HELM, i(231178)),	-- Judgement Crown
							tokencost(TOKENS.ANCIENT.SHOULDERS, i(231176)),	-- Judgement Spaulders
							tokencost(TOKENS.ANCIENT.CHEST, i(231181)),	-- Judgement Breastplate
							tokencost(TOKENS.ANCIENT.BRACERS, i(231174)),	-- Judgement Bindings
							tokencost(TOKENS.ANCIENT.GLOVES, i(231179)),	-- Judgement Gauntlets
							tokencost(TOKENS.ANCIENT.BELT, i(231175)),	-- Judgement Belt
							tokencost(TOKENS.ANCIENT.LEGS, i(231177)),	-- Judgement Legplates
							tokencost(TOKENS.ANCIENT.BOOTS, i(231180)),	-- Judgement Sabatons

							-- Healer
							tokencost(TOKENS.ANCIENT.HELM, i(231194)),	-- Judgement Helm
							tokencost(TOKENS.ANCIENT.SHOULDERS, i(231192)),	-- Judgement Mantle
							tokencost(TOKENS.ANCIENT.CHEST, i(231197)),	-- Judgement Cuirass
							tokencost(TOKENS.ANCIENT.BRACERS, i(231190)),	-- Judgement Bracers
							tokencost(TOKENS.ANCIENT.GLOVES, i(231195)),	-- Judgement Gloves
							tokencost(TOKENS.ANCIENT.BELT, i(231191)),	-- Judgement Girdle
							tokencost(TOKENS.ANCIENT.LEGS, i(231193)),	-- Judgement Plate Skirt
							tokencost(TOKENS.ANCIENT.BOOTS, i(231196)),	-- Judgement Treads

							-- Tank
							tokencost(TOKENS.ANCIENT.HELM, i(231186)),	-- Judgement Great Helm
							tokencost(TOKENS.ANCIENT.SHOULDERS, i(231184)),	-- Judgement Pauldrons
							tokencost(TOKENS.ANCIENT.CHEST, i(231187)),	-- Judgement Chestguard
							tokencost(TOKENS.ANCIENT.BRACERS, i(231182)),	-- Judgement Vambraces
							tokencost(TOKENS.ANCIENT.GLOVES, i(231188)),	-- Judgement Handguards
							tokencost(TOKENS.ANCIENT.BELT, i(231183)),	-- Judgement Waistguard
							tokencost(TOKENS.ANCIENT.LEGS, i(231185)),	-- Judgement Legguards
							tokencost(TOKENS.ANCIENT.BOOTS, i(231189)),	-- Judgement Greaves
						}),
						cl(PRIEST, {
							-- DPS
							tokencost(TOKENS.DRACONIAN.HELM, i(231167)),	-- Crown of Transcendence
							tokencost(TOKENS.DRACONIAN.SHOULDERS, i(231170)),	-- Mantle of Transcendence
							tokencost(TOKENS.DRACONIAN.CHEST, i(231169)),	-- Garb of Transcendence
							tokencost(TOKENS.DRACONIAN.BRACERS, i(231172)),	-- Bracers of Transcendence
							tokencost(TOKENS.DRACONIAN.GLOVES, i(231166)),	-- Gloves of Transcendence
							tokencost(TOKENS.DRACONIAN.BELT, i(231171)),	-- Cord of Transcendence
							tokencost(TOKENS.DRACONIAN.LEGS, i(231168)),	-- Pants of Transcendence
							tokencost(TOKENS.DRACONIAN.BOOTS, i(231165)),	-- Treads of Transcendence

							-- Healer
							tokencost(TOKENS.DRACONIAN.HELM, i(231157)),	-- Halo of Transcendence
							tokencost(TOKENS.DRACONIAN.SHOULDERS, i(231160)),	-- Pauldrons of Transcendence
							tokencost(TOKENS.DRACONIAN.CHEST, i(231159)),	-- Robes of Transcendence
							tokencost(TOKENS.DRACONIAN.BRACERS, i(231162)),	-- Bindings of Transcendence
							tokencost(TOKENS.DRACONIAN.GLOVES, i(231156)),	-- Handguards of Transcendence
							tokencost(TOKENS.DRACONIAN.BELT, i(231161)),	-- Belt of Transcendence
							tokencost(TOKENS.DRACONIAN.LEGS, i(231158)),	-- Leggings of Transcendence
							tokencost(TOKENS.DRACONIAN.BOOTS, i(231155)),	-- Boots of Transcendence
						}),
						cl(ROGUE, {
							-- DPS
							tokencost(TOKENS.PRIMEVAL.HELM, i(231043)),	-- Bloodfang Hood
							tokencost(TOKENS.PRIMEVAL.SHOULDERS, i(231039)),	-- Bloodfang Spaulders
							tokencost(TOKENS.PRIMEVAL.CHEST, i(231040)),	-- Bloodfang Chestpiece
							tokencost(TOKENS.PRIMEVAL.BRACERS, i(231046)),	-- Bloodfang Bracers
							tokencost(TOKENS.PRIMEVAL.GLOVES, i(231042)),	-- Bloodfang Gloves
							tokencost(TOKENS.PRIMEVAL.BELT, i(231045)),	-- Bloodfang Belt
							tokencost(TOKENS.PRIMEVAL.LEGS, i(231044)),	-- Bloodfang Pants
							tokencost(TOKENS.PRIMEVAL.BOOTS, i(231041)),	-- Bloodfang Boots

							-- Tank
							tokencost(TOKENS.PRIMEVAL.HELM, i(231051)),	-- Bloodfang Cowl
							tokencost(TOKENS.PRIMEVAL.SHOULDERS, i(231047)),	-- Bloodfang Shoulderpads
							tokencost(TOKENS.PRIMEVAL.CHEST, i(231048)),	-- Bloodfang Chestguard
							tokencost(TOKENS.PRIMEVAL.BRACERS, i(231054)),	-- Bloodfang Wristguards
							tokencost(TOKENS.PRIMEVAL.GLOVES, i(231050)),	-- Bloodfang Handguards
							tokencost(TOKENS.PRIMEVAL.BELT, i(231053)),	-- Bloodfang Waistguard
							tokencost(TOKENS.PRIMEVAL.LEGS, i(231052)),	-- Bloodfang Legguards
							tokencost(TOKENS.PRIMEVAL.BOOTS, i(231049)),	-- Bloodfang Footpads
						}),
						cl(SHAMAN, {
							-- DPS (Agility)
							tokencost(TOKENS.ANCIENT.HELM, i(231227)),	-- Crown of Ten Storms
							tokencost(TOKENS.ANCIENT.SHOULDERS, i(231225)),	-- Spaulders of Ten Storms
							tokencost(TOKENS.ANCIENT.CHEST, i(231229)),	-- Armor of Ten Storms
							tokencost(TOKENS.ANCIENT.BRACERS, i(231223)),	-- Vambraces of Ten Storms
							tokencost(TOKENS.ANCIENT.GLOVES, i(231222)),	-- Grips of Ten Storms
							tokencost(TOKENS.ANCIENT.BELT, i(231224)),	-- Girdle of Ten Storms
							tokencost(TOKENS.ANCIENT.LEGS, i(231226)),	-- Leggings of Ten Storms
							tokencost(TOKENS.ANCIENT.BOOTS, i(231228)),	-- Treads of Ten Storms

							-- DPS (Intellect)
							tokencost(TOKENS.ANCIENT.HELM, i(231219)),	-- Headdress of Ten Storms
							tokencost(TOKENS.ANCIENT.SHOULDERS, i(231217)),	-- Mantle of Ten Storms
							tokencost(TOKENS.ANCIENT.CHEST, i(231221)),	-- Embrace of Ten Storms
							tokencost(TOKENS.ANCIENT.BRACERS, i(231215)),	-- Bindings of Ten Storms
							tokencost(TOKENS.ANCIENT.GLOVES, i(231214)),	-- Gloves of Ten Storms
							tokencost(TOKENS.ANCIENT.BELT, i(231216)),	-- Cord of Ten Storms
							tokencost(TOKENS.ANCIENT.LEGS, i(231218)),	-- Kilt of Ten Storms
							tokencost(TOKENS.ANCIENT.BOOTS, i(231220)),	-- Boots of Ten Storms

							-- Healer
							tokencost(TOKENS.ANCIENT.HELM, i(231203)),	-- Helmet of Ten Storms
							tokencost(TOKENS.ANCIENT.SHOULDERS, i(231201)),	-- Epaulets of Ten Storms
							tokencost(TOKENS.ANCIENT.CHEST, i(231205)),	-- Breastplate of Ten Storms
							tokencost(TOKENS.ANCIENT.BRACERS, i(231199)),	-- Bracers of Ten Storms
							tokencost(TOKENS.ANCIENT.GLOVES, i(231198)),	-- Gauntlets of Ten Storms
							tokencost(TOKENS.ANCIENT.BELT, i(231200)),	-- Belt of Ten Storms
							tokencost(TOKENS.ANCIENT.LEGS, i(231202)),	-- Legplates of Ten Storms
							tokencost(TOKENS.ANCIENT.BOOTS, i(231204)),	-- Greaves of Ten Storms

							-- Tank
							tokencost(TOKENS.ANCIENT.HELM, i(231211)),	-- Faceguard of Ten Storms
							tokencost(TOKENS.ANCIENT.SHOULDERS, i(231209)),	-- Pauldrons of Ten Storms
							tokencost(TOKENS.ANCIENT.CHEST, i(231213)),	-- Chestguard of Ten Storms
							tokencost(TOKENS.ANCIENT.BRACERS, i(231207)),	-- Wristguards of Ten Storms
							tokencost(TOKENS.ANCIENT.GLOVES, i(231206)),	-- Handguards of Ten Storms
							tokencost(TOKENS.ANCIENT.BELT, i(231208)),	-- Waistguard of Ten Storms
							tokencost(TOKENS.ANCIENT.LEGS, i(231210)),	-- Legguards of Ten Storms
							tokencost(TOKENS.ANCIENT.BOOTS, i(231212)),	-- Sabatons of Ten Storms
						}),
						cl(WARLOCK, {
							-- DPS
							tokencost(TOKENS.DRACONIAN.HELM, i(231074)),	-- Nemesis Skullcap
							tokencost(TOKENS.DRACONIAN.SHOULDERS, i(231077)),	-- Nemesis Spaulders
							tokencost(TOKENS.DRACONIAN.CHEST, i(231076)),	-- Nemesis Robes
							tokencost(TOKENS.DRACONIAN.BRACERS, i(231079)),	-- Nemesis Bracers
							tokencost(TOKENS.DRACONIAN.GLOVES, i(231073)),	-- Nemesis Gloves
							tokencost(TOKENS.DRACONIAN.BELT, i(231078)),	-- Nemesis Belt
							tokencost(TOKENS.DRACONIAN.LEGS, i(231075)),	-- Nemesis Leggings
							tokencost(TOKENS.DRACONIAN.BOOTS, i(231072)),	-- Nemesis Boots

							-- Tank
							tokencost(TOKENS.DRACONIAN.HELM, i(231092)),	-- Nemesis Cowl
							tokencost(TOKENS.DRACONIAN.SHOULDERS, i(231096)),	-- Nemesis Shoulderpads
							tokencost(TOKENS.DRACONIAN.CHEST, i(231095)),	-- Nemesis Garb
							tokencost(TOKENS.DRACONIAN.BRACERS, i(231098)),	-- Nemesis Wraps
							tokencost(TOKENS.DRACONIAN.GLOVES, i(231091)),	-- Nemesis Handguards
							tokencost(TOKENS.DRACONIAN.BELT, i(231097)),	-- Nemesis Cord
							tokencost(TOKENS.DRACONIAN.LEGS, i(231093)),	-- Nemesis Pants
							tokencost(TOKENS.DRACONIAN.BOOTS, i(231090)),	-- Nemesis Treads
						}),
						cl(WARRIOR, {
							-- DPS
							tokencost(TOKENS.PRIMEVAL.HELM, i(231035)),	-- Helm of Wrath
							tokencost(TOKENS.PRIMEVAL.SHOULDERS, i(231033)),	-- Shoulders of Wrath
							tokencost(TOKENS.PRIMEVAL.CHEST, i(231038)),	-- Breastplate of Wrath
							tokencost(TOKENS.PRIMEVAL.BRACERS, i(231031)),	-- Bracers of Wrath
							tokencost(TOKENS.PRIMEVAL.GLOVES, i(231036)),	-- Gauntlets of Wrath
							tokencost(TOKENS.PRIMEVAL.BELT, i(231032)),	-- Belt of Wrath
							tokencost(TOKENS.PRIMEVAL.LEGS, i(231034)),	-- Legplates of Wrath
							tokencost(TOKENS.PRIMEVAL.BOOTS, i(231037)),	-- Greaves of Wrath

							-- Tank
							tokencost(TOKENS.PRIMEVAL.HELM, i(231027)),	-- Faceguard of Wrath
							tokencost(TOKENS.PRIMEVAL.SHOULDERS, i(231025)),	-- Pauldrons of Wrath
							tokencost(TOKENS.PRIMEVAL.CHEST, i(231030)),	-- Chestguard of Wrath
							tokencost(TOKENS.PRIMEVAL.BRACERS, i(231023)),	-- Wristguards of Wrath
							tokencost(TOKENS.PRIMEVAL.GLOVES, i(231028)),	-- Handguards of Wrath
							tokencost(TOKENS.PRIMEVAL.BELT, i(231024)),	-- Waistguard of Wrath
							tokencost(TOKENS.PRIMEVAL.LEGS, i(231026)),	-- Legguards of Wrath
							tokencost(TOKENS.PRIMEVAL.BOOTS, i(231029)),	-- Sabatons of Wrath
						}),
					},
				}),
				e(1529, {	-- Razorgore the Untamed
					["creatureID"] = 12435,
					["groups"] = {
						i(231722),	-- Depleted Scythe of Chaos
						i(229352),	-- Intelligence Findings
						i(231729),	-- Ancient Gloves
						i(231712),	-- Draconian Gloves
						i(231720),	-- Primeval Gloves
						i(230241),	-- Spineshatter
						i(230242),	-- The Untamed Blade
						i(230240),	-- Mantle of the Blackwing Cabal
						i(230239),	-- Gloves of Rapid Evolution
						i(230237),	-- Arcane Infused Gem
						i(230238),	-- The Black Book
					},
				}),
				e(1530, {	-- Vaelastrasz the Corrupt
					["creatureID"] = 13020,
					["groups"] = {
						i(230904),	-- Scroll: SEENECS FO RIEF
						i(231378),	-- Shimmering Golden Disk
						i(231727),	-- Ancient Leggings
						i(231710),	-- Draconian Leggings
						i(231718),	-- Primeval Leggings
						i(230845),	-- Doom's Edge
						i(232357),	-- Draconic Avenger
						i(230247),	-- Dragonfang Blade
						i(230248),	-- Red Dragonscale Protector
						i(230246),	-- Helm of Endless Rage
						i(230245),	-- Pendant of the Fallen Dragon
						i(230848),	-- Interlaced Shadow Jerkin
						i(230843),	-- Boots of Pure Thought
						i(230849),	-- Ringo's Blizzard Boots
						i(230846),	-- Band of Dark Dominion
						i(230243),	-- Mind Quickening Gem
						i(230244),	-- Shapeshifter's Sigil
					},
				}),
				e(1531, {	-- Broodlord Lashlayer
					["creatureID"] = 12017,
					["groups"] = {
						i(20383),	-- Head of the Broodlord Lashlayer
						i(231452),	-- Blood of the Lightbringer
						i(231995),	-- Hardened Elementium Slag
						i(231882),	-- Suppression Device Receipt
						i(231730),	-- Ancient Boots
						i(231713),	-- Draconian Boots
						i(231721),	-- Primeval Boots
						i(230253),	-- Heartstriker
						i(230254),	-- Maladath, Runed Blade of the Black Flight
						i(230251),	-- Black Brood Pauldrons
						i(230252),	-- Bracers of Arcane Accuracy
						i(230249),	-- Lifegiving Gem
						i(230250),	-- Venomous Totem
					},
				}),
				e(1532, {	-- Firemaw
					["creatureID"] = 11983,
					["groups"] = {
						i(231727),	-- Ancient Leggings
						i(231710),	-- Draconian Leggings
						i(231718),	-- Primeval Leggings
						i(230276),	-- Claw of the Black Drake
						i(230844),	-- Draconic Maul
						i(230847),	-- Essence Gatherer
						i(230270),	-- Shadow Wing Focus Staff
						i(230842),	-- Cloak of Draconic Might
						i(230277),	-- Cloak of Firemaw
						i(230256),	-- Drake Talon Pauldrons
						i(230274),	-- Black Ash Robe
						i(230275),	-- Firemaw's Clutch
						i(230278),	-- Legguards of the Fallen Crusader
						i(230279),	-- Primalist's Linked Legguards
						i(230257),	-- Ring of Blackrock
						i(230282),	-- Drake Fang Talisman
						i(230273),	-- Natural Alignment Crystal
						i(230269),	-- Rejuvenating Gem
						i(230272),	-- Scrolls of Blinding Light
						i(230736),	-- Styleen's Impeding Scarab
					},
				}),
				n(14401, {	-- Master Elemental Shaper Krixix
					["description"] = "When Krixix is mind controlled, one of the abilities available to the priest will be to teach a friendly target to Smelt Elementium.",
					["groups"] = {
						r(22967),	-- Smelt Elementium
					},
				}),
				e(1533, {	-- Ebonroc
					["creatureID"] = 14601,
					["groups"] = {
						i(231728),	-- Ancient Helm
						i(231711),	-- Draconian Hood
						i(231719),	-- Primeval Helm
						i(230726),	-- Dragonbreath Hand Cannon
						i(230271),	-- Drake Talon Cleaver
						i(230723),	-- Ebony Flame Gloves
						i(230725),	-- Malfurion's Blessed Bulwark
						i(230281),	-- Band of Forced Concentration
						i(230280),	-- Aegis of Preservation
					},
				}),
				e(1534, {	-- Flamegor
					["creatureID"] = 11981,
					["groups"] = {
						i(230844),	-- Draconic Maul
						i(230737),	-- Dragon's Touch
						i(230847),	-- Essence Gatherer
						i(230738),	-- Herald of Woe
						i(230270),	-- Shadow Wing Focus Staff
						i(230842),	-- Cloak of Draconic Might
						i(230733),	-- Shroud of Pure Thought
						i(230256),	-- Drake Talon Pauldrons
						i(230255),	-- Taut Dragonhide Belt
						i(230735),	-- Emberweave Leggings
						i(230734),	-- Circle of Applied Force
						i(230257),	-- Ring of Blackrock
						i(230282),	-- Drake Fang Talisman
						i(230269),	-- Rejuvenating Gem
						i(230736),	-- Styleen's Impeding Scarab
					},
				}),
				e(1535, {	-- Chromaggus
					["creatureID"] = 14020,
					["groups"] = {
						i(231814),	-- Chromatic Heart
						i(229906),	-- Tarnished Bronze Scale
						i(231726),	-- Ancient Shoulderpads
						i(231709),	-- Draconian Shoulderpads
						i(231717),	-- Primeval Shoulderpads
						i(230801),	-- Ashjre'thul, Crossbow of Smiting
						i(230747),	-- Chromatically Tempered Sword
						i(230794),	-- Claw of Chromaggus
						i(230802),	-- Elementium Reinforced Bulwark
						i(230744),	-- Elementium Threaded Cloak
						i(230740),	-- Taut Dragonhide Shoulderpads
						i(230742),	-- Taut Dragonhide Gloves
						i(230739),	-- Angelista's Grasp
						i(230745),	-- Girdle of the Fallen Crusader
						i(230800),	-- Primalist's Linked Waistguard
						i(230746),	-- Empowered Leggings
						i(230741),	-- Chromatic Boots
						i(230743),	-- Shimmering Geta
					},
				}),
				e(1536, {	-- Nefarian
					["crs"] = {
						11583,	-- Nefarian
						10162,	-- Lord Victor Nefarius
					},
					["groups"] = {
						i(21138),	-- Red Scepter Shard
						i(19003),	-- Head of Nefarian (A)
						i(19002),	-- Head of Nefarian (H)

						i(231728),	-- Ancient Helm
						i(231726),	-- Ancient Shoulderpads
						i(231724),	-- Ancient Bindings
						i(231729),	-- Ancient Gloves
						i(231731),	-- Ancient Chest
						i(231727),	-- Ancient Leggings
						i(231730),	-- Ancient Boots
						i(231711),	-- Draconian Hood
						i(231709),	-- Draconian Shoulderpads
						i(231707),	-- Draconian Bindings
						i(231712),	-- Draconian Gloves
						i(231714),	-- Draconian Robe
						i(231710),	-- Draconian Leggings
						i(231713),	-- Draconian Boots
						i(231719),	-- Primeval Helm
						i(231717),	-- Primeval Shoulderpads
						i(231715),	-- Primeval Bindings
						i(231720),	-- Primeval Gloves
						i(231723),	-- Primeval Chest
						i(231718),	-- Primeval Leggings
						i(231721),	-- Primeval Boots

						i(230818),	-- Ashkandi, Greatsword of the Brotherhood
						i(230837),	-- Crul'shorukh, Edge of Chaos
						i(230838),	-- Lok'amir il Romathis
						i(230813),	-- Staff of the Shadow Flame
						i(230812),	-- Mish'undare, Circlet of the Mind Flayer
						i(231803),	-- Prestor's Talisman of Connivery
						i(230804),	-- Cloak of the Brood Lord
						i(230806),	-- Therazane's Link
						i(230805),	-- Boots of the Shadow Flame
						i(230808),	-- Archimtiros' Ring of Reckoning
						i(230811),	-- Pure Elementium Band
						i(230810),	-- Neltharion's Tear
					},
				}),
				o(495577, {	-- Chromatic Stash
					["description"] = "Appears after defeating Nefarian with one trial active.\n\nContains one of the class trinkets plus two additional pieces of loot from bosses in Blackwing Lair.",
				}),
				o(495578, {	-- Chromatic Supplies
					["description"] = "Appears after defeating Nefarian with two trials active. It replaces the Chromatic Stash.\n\nContains one of the class trinkets plus four additional pieces of loot from bosses in Blackwing Lair.",
				}),
				o(495503, {	-- Chromatic Hoard
					["description"] = "Appears after defeating Nefarian with three trials active. It replaces the Chromatic Supplies.\n\nContains one of the class trinkets plus five additional pieces of loot from bosses in Blackwing Lair.\n\nWeapons found in this chest will have a unique \"Shadowflame\" visual effect.",
					["sym"] = {{ "select", "objectID", 495500 }, {"pop"}},
				}),
				o(495505, {	-- Favored Riches
					["description"] = "Appears in Blackwing Lair after defeating Nefarian with the weekly trial active.\n\nContains two pieces of loot from bosses in Blackwing Lair.",
				}),
				o(495500, {	-- Shadowflame Cache
					["description"] = "Appears after defeating Nefarian with three trials active, including the weekly trial alongside the two chests.\n\nContains 3-5 Elementium Ore and four other items. Weapons found in this chest will have a unique \"Shadowflame\" visual effect.",
					["groups"] = {
						i(232550),	-- Ashkandi, Greatsword of the Brotherhood [Shadowflame]
						i(232606),	-- Ashjre'thul, Crossbow of Smiting [Shadowflame]
						i(232558),	-- Chromatically Tempered Sword [Shadowflame]
						i(232557),	-- Claw of Chromaggus [Shadowflame]
						i(232561),	-- Claw of the Black Drake [Shadowflame]
						i(232555),	-- Crul'shorukh, Edge of Chaos [Shadowflame]
						i(232577),	-- Doom's Edge [Shadowflame]
						i(232576),	-- Draconic Avenger [Shadowflame]
						i(232551),	-- Draconic Maul [Shadowflame]
						i(232608),	-- Dragonbreath Hand Cannon [Shadowflame]
						i(232565),	-- Dragonfang Blade [Shadowflame]
						i(232562),	-- Drake Talon Cleaver [Shadowflame]
						i(232607),	-- Heartstriker [Shadowflame]
						i(232559),	-- Herald of Woe [Shadowflame]
						i(232552),	-- Lok'amir il Romathis [Shadowflame]
						i(232564),	-- Maladath, Runed Blade of the Black Flight [Shadowflame]
						i(232563),	-- Shadow Wing Focus Staff [Shadowflame]
						i(232567),	-- Spineshatter [Shadowflame]
						i(232556),	-- Staff of the Shadow Flame [Shadowflame]
						i(232566),	-- The Untamed Blade [Shadowflame]
					},
				}),
			}))),
			-- #endif
		},
	}),
})));