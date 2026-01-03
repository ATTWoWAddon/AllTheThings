-----------------------------------------------------
--  D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
-- #if SEASON_OF_DISCOVERY
local TOKENS = {
	INCANDESCENT = {	-- Priest, Mage, Warlock
		HELM = 227532,	-- Incandescent Hood
		SHOULDERS = 227537,	-- Incandescent Shoulderpads
		CHEST = 227535,	-- Incandescent Robe
		BRACERS = 227531,	-- Incandescent Bindings
		GLOVES = 227533,	-- Incandescent Gloves
		BELT = 227530,	-- Incandescent Belt
		LEGS = 227534,	-- Incandescent Leggings
		BOOTS = 227536,	-- Incandescent Boots
	},
	MOLTEN_SCALED = {	-- Paladin, Hunter, Shaman
		HELM = 227755,	-- Molten Scaled Helm
		SHOULDERS = 227752,	-- Molten Scaled Shoulderpads
		CHEST = 227758,	-- Molten Scaled Chest
		BRACERS = 227750,	-- Molten Scaled Bindings
		GLOVES = 227756,	-- Molten Scaled Gloves
		BELT = 227751,	-- Molten Scaled Belt
		LEGS = 227754,	-- Molten Scaled Leggings
		BOOTS = 227757,	-- Molten Scaled Boots
	},
	SCORCHED_CORE = {	-- Warrior, Rogue, Druid
		HELM = 227764,	-- Scorched Core Helm
		SHOULDERS = 227762,	-- Scorched Core Shoulderpads
		CHEST = 227766,	-- Scorched Core Chest
		BRACERS = 227760,	-- Scorched Core Bindings
		GLOVES = 227759,	-- Scorched Core Gloves
		BELT = 227761,	-- Scorched Core Belt
		LEGS = 227763,	-- Scorched Core Leggings
		BOOTS = 227765,	-- Scorched Core Boots
	}
};
-- #endif
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(741, {	-- Molten Core
		["lore"] = "The Molten Core was created during the War of the Three Hammers more than 300 years ago. Near the end of the war, Thaurissan, the leader of the Dark Iron Dwarves, sought to summon a powerful fire elemental to defeat the combined forces of the Bronzebeard and Wildhammer clans. He was more successful than he could have imagined, as he released Ragnaros the Firelord from millennia of captivity under the Redridge Mountains.\n\nRagnaros destroyed the city of Thaurissan and created the volcano of Blackrock Mountain. He dwells there to this day with his elemental servants and the enslaved remnants of the Dark Iron dwarf clan. The burning lake where Ragnaros lies sleeping acts as a rift connecting to the plane of fire, allowing the malicious elementals to pass through.",
		-- #if BEFORE WRATH
		["zone-text-areaID"] = 2717,	-- Molten Core
		-- #endif
		-- #if BEFORE 5.4.0
		["sourceQuest"] = 7848,	-- Attunement to the Core
		-- #endif
		["mapID"] = MOLTEN_CORE,
		["coord"] = { 54.18, 83.25, BLACKROCK_MOUNTAIN },
		["sharedLockout"] = 1,
		["isRaid"] = true,
		["cr"] = 14387,	-- Lothos Riftwalker
		["lvl"] = lvlsquish(50, 50, 25),
		["groups"] = {
			header(HEADERS.Item, 17182, {	-- Sulfuras, Hand of Ragnaros
				["isRaid"] = true,
				["groups"] = {
					ach(429, {	-- Sulfuras, Hand of Ragnaros
						["provider"] = { "i",
							-- #if SEASON_OF_DISCOVERY
							227683,	-- Sulfuras, Hand of Ragnaros
							-- #else
							17182,	-- Sulfuras, Hand of Ragnaros (Original)
							-- #endif
						},
						["classes"] = { DEATHKNIGHT, DRUID, EVOKER, PALADIN, SHAMAN, WARRIOR },
					}),
					i(17182, {	-- Sulfuras, Hand of Ragnaros
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
						["cost"] = {
							{ "i", 17204, 1 },	-- Eye of Sulfuras
							{ "i", 17193, 1 },	-- Sulfuron Hammer
						},
						["classes"] = { DEATHKNIGHT, DRUID, EVOKER, PALADIN, SHAMAN, WARRIOR },
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FIVE, i(227683, {	-- Sulfuras, Hand of Ragnaros
						["timeline"] = { ADDED_1_15_4 },
						["cost"] = {
							{ "i", 227728, 1 },	-- Eye of Sulfuras
							{ "i", 227684, 1 },	-- Sulfuron Hammer
						},
						["classes"] = { DEATHKNIGHT, DRUID, EVOKER, PALADIN, SHAMAN, WARRIOR },
					})),
					-- #endif
				},
			}),
			-- #if NOT SEASON_OF_DISCOVERY
			header(HEADERS.Item, 19019, {	-- Thunderfury, Blessed Blade of the Windseeker
				["isRaid"] = true,
				["groups"] = {
					applyclassicphase(PHASE_THREE, q(7785, {	-- Examine the Vessel
						["description"] = "This quest becomes available once you have looted either of the two Bindings of the Windseeker.\n\nWARNING: You may want to immediately travel to Silithus when you do as the Essence of the Firelord only drops from Ragnaros if you are on this quest!",
						["qg"] = 14347,	-- Highlord Demitrian
						["provider"] = { "i", 19016 },	-- Vessel of Rebirth
						["coords"] = {
							-- #if AFTER LEGION
							{ 29.6, 10.6, SILITHUS },
							-- #else
							{ 21.7, 8.6, SILITHUS },
							-- #endif
						},
						["cost"] = {
							{ "i", 18563, 1 },	-- Bindings of the Windseeker [Left]
							{ "i", 18564, 1 },	-- Bindings of the Windseeker [Right]
						},
						-- #if ANYCLASSIC
						-- Completable by any class in Retail... confirm for Classic
						-- Crieve NOTE: Even if it were... Some of us aren't this crazy.
						["classes"] = SWORD_CLASSES,
						-- #endif
						["lvl"] = 60,
					})),
					applyclassicphase(PHASE_THREE, q(7786, {	-- Thunderaan the Windseeker
						["sourceQuest"] = 7785,	-- Examine the Vessel
						["altQuests"] = { 7521 },	-- Thunderaan the Windseeker [Original?]
						["qg"] = 14347,	-- Highlord Demitrian
						["coords"] = {
							-- #if AFTER LEGION
							{ 29.6, 10.6, SILITHUS },
							-- #else
							{ 21.7, 8.6, SILITHUS },
							-- #endif
						},
						-- #if NOT ANYCLASSIC
						["cost"] = {
							{ "i", 17771, 10 },	-- Elementium Bar x10
							{ "i", 18563, 1 },	-- Bindings of the Windseeker [Left]
							{ "i", 18564, 1 },	-- Bindings of the Windseeker [Right]
						},
						-- #endif
						-- #if ANYCLASSIC
						-- Completable by any class in Retail... confirm for Classic
						-- Crieve NOTE: Even if it were... Some of us aren't this crazy.
						["classes"] = SWORD_CLASSES,
						-- #endif
						["lvl"] = 60,
						["groups"] = {
							objective(1, {	-- 0/10 Elementium Bar
								["provider"] = { "i", 17771 },	-- Elementium Bar
								-- #if SEASON_OF_DISCOVERY
								-- #if BEFORE 1.15.4
								["description"] = "Neither the Elementium Ore nor the recipe for smelting these bars are in the game until BWL... In the meantime, gather the required materials while things are less in demand.",
								-- #endif
								-- #endif
								["cost"] = {
									{ "i", 18562,  10 },	-- Elementium Ore
									{ "i", 12360, 100 },	-- Arcanite Bar
									{ "i", 17010,  10 },	-- Fiery Core
									{ "i", 18567,  30 },	-- Elemental Flex
								},
							}),
							objective(2, {	-- 0/1 Essence of the Firelord
								["provider"] = { "i", 19017 },	-- Essence of the Firelord
							}),
							objective(3, {	-- 0/1 Bindings of the Windseeker [Left]
								["provider"] = { "i", 18563 },	-- Bindings of the Windseeker [Left]
							}),
							objective(4, {	-- 0/1 Bindings of the Windseeker [Right]
								["provider"] = { "i", 18564 },	-- Bindings of the Windseeker [Right]
							}),
							n(14435, {	-- Prince Thunderaan <The Wind Seeker>
								["description"] = "This is a 40-man raid boss.",
								-- #if ANYCLASSIC
								["modelScale"] = 20,
								-- #endif
								["groups"] = { i(19018) },	-- Dormant Wind Kissed Blade
							}),
						},
					})),
					applyclassicphase(PHASE_THREE, q(7787, {	-- Rise, Thunderfury!
						["sourceQuest"] = 7786,	-- Thunderaan the Windseeker
						["qg"] = 14347,	-- Highlord Demitrian
						["provider"] = { "i", 19018 },	-- Dormant Wind Kissed Blade
						["coord"] = { 21.7, 8.6, SILITHUS },
						-- #if ANYCLASSIC
						-- Completable by any class in Retail... confirm for Classic
						-- Crieve NOTE: Even if it were... Some of us aren't this crazy.
						["classes"] = SWORD_CLASSES,
						-- #endif
						["lvl"] = 60,
						["groups"] = {
							ach(428, {	-- Thunderfury, Blessed Blade of the Windseeker
								["provider"] = { "i", 19019 },	-- Thunderfury, Blessed Blade of the Windseeker
								["classes"] = { DEATHKNIGHT, DEMONHUNTER, HUNTER, MAGE, MONK, PALADIN, ROGUE, WARLOCK, WARRIOR },
							}),
							i(19019),	-- Thunderfury, Blessed Blade of the Windseeker
						},
					})),
				},
			}),
			-- #endif
			n(ACHIEVEMENTS, {
				achWithRep(955, FACTION_HYDRAXIAN_WATERLORDS, {	-- Hydraxian Waterlords
					["maps"] = {
						AZSHARA,
						-- #if SEASON_OF_DISCOVERY
						SEARING_GORGE,
						-- #endif
					},
				}),
				ach(11741, {["timeline"] = {ADDED_7_2_0}}),	-- So Hot Right Now (Molten Core)
			}),
			n(FACTIONS, {
				faction(FACTION_HYDRAXIAN_WATERLORDS, {	-- Hydraxian Waterlords
					["icon"] = 135861,
					["qg"] = 13278,	-- Duke Hydraxis
					["coord"] = { 79.2, 73.6, AZSHARA },
					-- #if SEASON_OF_DISCOVERY
					["maps"] = { SEARING_GORGE },
					-- #endif
				}),
			}),
			n(QUESTS, {
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, q(84545, bubbleDown({ ["timeline"] = { ADDED_1_15_3 } }, {	-- A Hero's Reward
					["sourceQuest"] = 6824,	-- Hands of the Enemy
					["providers"] = {
						{ "n",  13278 },	-- Duke Hydraxis
						{ "o", 179551 },	-- Hydraxis' Coffer
					},
					["coord"] = { 79.2, 73.6, AZSHARA },
					["lvl"] = 55,
					["groups"] = {
						i(227455),	-- Ocean's Breeze
						i(227454),	-- Tidal Loop
					},
				}))),
				-- #endif
				q(7486, bubbleDown({	-- A Hero's Reward
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						ADDED_1_0_1, REMOVED_3_0_8,
						-- #endif
					},
				}, {
					["providers"] = {
						{ "n",  13278 },	-- Duke Hydraxis
						{ "o", 179551 },	-- Hydraxis' Coffer
					},
					["sourceQuest"] = 6824,	-- Hands of the Enemy
					["coord"] = { 79.2, 73.6, AZSHARA },
					["lvl"] = 55,
					["groups"] = {
						i(18399),	-- Ocean's Breeze
						i(18398),	-- Tidal Loop
					},
				})),
				q(6823, bubbleDown({ ["timeline"] = { ADDED_1_0_1, REMOVED_3_0_8 } }, {	-- Agent of Hydraxis
					["sourceQuest"] = 6822,	-- The Molten Core
					["qg"] = 13278,	-- Duke Hydraxis
					["coord"] = { 79.2, 73.6, AZSHARA },
					["minReputation"] = { FACTION_HYDRAXIAN_WATERLORDS, HONORED },	-- Hydraxian Waterlords, Honored.
					["lvl"] = 55,
				})),
				q(7633, bubbleDown({ ["timeline"] = { ADDED_1_0_1, REMOVED_4_0_3 } }, {	-- An Introduction
					["sourceQuest"] = 7632,	-- The Ancient Leaf
					["qg"] = 14524,	-- Vartrus the Ancient
					["coord"] = { 47.0, 24.48, FELWOOD },
					["classes"] = { HUNTER },
					["lvl"] = 60,
				})),
				q(7487, {	-- Attunement to the Core [Old]
					["description"] = "Complete this quest to be able to quickly teleport to Molten Core by simply talking to Lothos.",
					["qg"] = 14387,	-- Lothos Riftwaker
					["coord"] = { 54.2, 83.3, BLACKROCK_MOUNTAIN },
					["timeline"] = { ADDED_1_1_0, REMOVED_1_3_0 },
					["maps"] = { BLACKROCK_DEPTHS },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Core Fragment
							["providers"] = {
								{ "o", 179553 },	-- Core Fragment
								{ "i",  18412 },	-- Core Fragment
							},
						}),
					},
				}),
				q(7848, {	-- Attunement to the Core
					["description"] =
						-- #if AFTER 5.4.0
						"This quest is no longer required to enter Molten Core - you can now speak to Lothos and have him transport you inside without doing the attunement.",
						-- #else
						"Complete this quest to be able to quickly teleport to Molten Core by simply talking to Lothos.",
						-- #endif
					["qg"] = 14387,	-- Lothos Riftwaker
					["coord"] = { 54.2, 83.3, BLACKROCK_MOUNTAIN_LEVEL3 },
					["timeline"] = { ADDED_1_3_0 },
					["maps"] = { BLACKROCK_DEPTHS },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Core Fragment
							["providers"] = {
								{ "o", 179553 },	-- Core Fragment
								{ "i",  18412 },	-- Core Fragment
							},
						}),
					},
				}),
				q(6821, bubbleDown({ ["timeline"] = { ADDED_1_0_1, REMOVED_3_0_8 } }, {	-- Eye of the Emberseer
					["sourceQuests"] = {
						6804,	-- Poisoned Water
						6805,	-- Stormers and Rumblers
					},
					["qg"] = 13278,	-- Duke Hydraxis
					["coord"] = { 79.2, 73.6, AZSHARA },
					["maps"] = {
						BLACKROCK_SPIRE,
						LBRS_TAZZALOR,
						LBRS_SKITTERWEB_TUNNELS,
						LBRS_HORDEMAR_CITY,
						LBRS_HALL_OF_BLACKHAND,
						LBRS_HALYCONS_LAIR,
						LBRS_CHAMBER_OF_BATTLE,
					},
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Eye of the Emberseer
							["provider"] = { "i", 17322 },	-- Eye of the Emberseer
						}),
					},
				})),
				q(6824, bubbleDown({ ["timeline"] = { ADDED_1_0_1, REMOVED_3_0_8 } }, {	-- Hands of the Enemy
					["sourceQuest"] = 6823,	-- Agent of Hydraxis
					["qg"] = 13278,	-- Duke Hydraxis
					["coord"] = { 79.2, 73.6, AZSHARA },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Hand of Shazzrah
							["provider"] = { "i", 17332 },	-- Hand of Shazzrah
						}),
						objective(2, {	-- 0/1 Hand of Lucifron
							["provider"] = { "i", 17329 },	-- Hand of Lucifron
						}),
						objective(3, {	-- 0/1 Hand of Gehennas
							["provider"] = { "i", 17331 },	-- Hand of Gehennas
						}),
						objective(4, {	-- 0/1 Hand of Sulfuron
							["provider"] = { "i", 17330 },	-- Hand of Sulfuron
						}),
						ach(2496),	-- The Fifth Element
					},
				})),
				q(6804, bubbleDown({ ["timeline"] = { ADDED_1_0_1, REMOVED_3_0_8 } }, {	-- Poisoned Water
					["qg"] = 13278,	-- Duke Hydraxis
					["coord"] = { 79.2, 73.6, AZSHARA },
					["maps"] = { EASTERN_PLAGUELANDS },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/12 Discordant Bracers
							["provider"] = { "i", 17309 },	-- Discordant Bracers
							["cost"] = { { "i", 17310, 1 } },	-- Aspect of Neptulon
							["crs"] = {
								8521,	-- Blighted Horror
								8519,	-- Blighted Surge
								8522,	-- Plague Monstrosity
								8520,	-- Plague Ravager
							},
						}),
					},
				})),
				q(6805, bubbleDown({ ["timeline"] = { ADDED_1_0_1, REMOVED_4_0_3 } }, {	-- Stormers and Rumblers
					["qg"] = 13278,	-- Duke Hydraxis
					["coord"] = { 79.2, 73.6, AZSHARA },
					["maps"] = { SILITHUS },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/15 Dust Stormer slain
							["provider"] = { "n", 11744 },	-- Dust Stormer
						}),
						objective(2, {	-- 0/15 Desert Rumbler slain
							["provider"] = { "n", 11746 },	-- Desert Rumbler
						}),
					},
				})),
				q(7632, bubbleDown({ ["timeline"] = { ADDED_1_0_1, REMOVED_4_0_3 } }, {	-- The Ancient Leaf
					["description"] = "To find Vartrus go to the Irontree Woods in Felwood, there is an island in the middle of the green sludge with a little hill on it, go up the hill and Vartrus will appear to you.",
					["qg"] = 14524,	-- Vartrus the Ancient
					["coord"] = { 47.0, 24.48, FELWOOD },
					["cost"] = { { "i", 18703, 1 } },	-- Ancient Petrified Leaf
					["classes"] = { HUNTER },
					["lvl"] = 60,
				})),
				q(6822, bubbleDown({ ["timeline"] = { ADDED_1_0_1, REMOVED_3_0_8 } }, {	-- The Molten Core
					["sourceQuest"] = 6821,	-- Eye of the Emberseer
					["qg"] = 13278,	-- Duke Hydraxis
					["coord"] = { 79.2, 73.6, AZSHARA },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Molten Giant slain
							["provider"] = { "n", 11658 },	-- Molten Giant
						}),
						objective(2, {	-- 0/1 Firelord slain
							["provider"] = { "n", 11668 },	-- Firelord
						}),
						objective(3, {	-- 0/1 Ancient Core Hound slain
							["provider"] = { "n", 11673 },	-- Ancient Core Hound
						}),
						objective(4, {	-- 0/1 Lava Surger slain
							["provider"] = { "n", 12101 },	-- Lava Surger
						}),
					},
				})),
			}),
			n(REWARDS, {
				i(17333, {	-- Aqual Quintessence
					["description"] = "Return to the Duke at Honored reputation after completing the Hands of the Enemy quest to receive this item from a dialog option.",
					["sourceQuest"] = 6824,	-- Hands of the Enemy
					["minReputation"] = { FACTION_HYDRAXIAN_WATERLORDS, HONORED },	-- Hydraxian Waterlords, Honored.
					["timeline"] = { ADDED_1_0_1, REMOVED_3_0_8 },
				}),
				applyclassicphase(PHASE_THREE, i(22754, {	-- Eternal Quintessence
					["description"] = "Return to the Duke at Revered reputation to be given a version of your Quintessence that can be used more than once.",
					["sourceQuest"] = 6824,	-- Hands of the Enemy
					["minReputation"] = { FACTION_HYDRAXIAN_WATERLORDS, REVERED },	-- Hydraxian Waterlords, Revered.
					["timeline"] = { ADDED_1_0_1, REMOVED_3_0_8 },
				})),
			}),
			n(ZONE_DROPS, {
				applyclassicphase(PHASE_FIVE, i(20951, {	-- Narain's Scrying Goggles
					-- #if BEFORE CATA
					["description"] = "For this to drop, you must be on the Scrying Goggles? No Problem! quest.",
					-- #endif
					["timeline"] = { ADDED_1_0_1, REMOVED_4_0_3 },
				})),
				i(17010),	-- Fiery Core
				i(17011),	-- Lava Core
			}),
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					12118,	-- Lucifron
					11982,	-- Magmadar
					12259,	-- Gehennas
					12057,	-- Garr
					12264,	-- Shazzrah
					12056,	-- Baron Geddon
					11988,	-- Golemagg the Incinerator
				},
				["groups"] = {
					i(18260),	-- Formula: Enchant Weapon - Healing Power (RECIPE!)
					i(18259),	-- Formula: Enchant Weapon - Spellpower (RECIPE!)
					i(18252),	-- Pattern: Core Armor Kit (RECIPE!)
					i(21371),	-- Pattern: Core Felcloth Bag (RECIPE!)
					i(18265),	-- Pattern: Flarecore Wraps (RECIPE!)
					i(18264),	-- Plans: Elemental Sharpening Stone (RECIPE!)
					i(18257),	-- Recipe: Major Rejuvenation Potion (RECIPE!)
					i(18290),	-- Schematic: Biznicks 247x128 Accurascope (RECIPE!)
					i(18292, {	-- Schematic: Core Marksman Rifle (RECIPE!)
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_FOUR, i(228304, {	-- Schematic: Schematic: Fiery Core Sharpshooter Rifle (RECIPE!)
						["timeline"] = { ADDED_1_15_3 },
					})),
					-- #endif
					i(18291),	-- Schematic: Force Reactive Disk (RECIPE!)
				},
			}),
			prof(MINING, {
				i(11382),	-- Blood of the Mountain
			}),
			-- #if SEASON_OF_DISCOVERY
			-- In Season of Discovery, this version of the instance has been deprecated and removed in favor of the raid.
			d(DIFFICULTY.LEGACY_RAID.PLAYER40, bubbleDownTimelineEventSelf(REMOVED_1_15_1, {
			-- #endif
			n(ZONE_DROPS, sharedData({
				["description"] =
					-- #if AFTER TWW
					"This armour was a 'Binds when equipped' prior to TWW.",
					-- #elseif AFTER DF
					"This item will likely become soulbound with The War Within, you might want an appropriate character to hold on to it.",
					-- #else
					nil,
					-- #endif
			}, {
				i(16802),	-- Arcanist Belt (Mage)
				i(16799),	-- Arcanist Bindings (Mage)
				i(16864),	-- Belt of Might (Warrior)
				i(16861),	-- Bracers of Might (Warrior)
				i(16828),	-- Cenarion Belt (Druid)
				i(16830),	-- Cenarion Bracers (Druid)
				i(16838),	-- Earthfury Belt (Shaman)
				i(16840),	-- Earthfury Bracers (Shaman)
				i(16806),	-- Felheart Belt (Warlock)
				i(16804),	-- Felheart Bracers (Warlock)
				i(16851),	-- Giantstalker's Belt (Hunter)
				i(16850),	-- Giantstalker's Bracers (Hunter)
				i(16817),	-- Girdle of Prophecy (Priest)
				i(16858),	-- Lawbringer Belt (Paladin)
				i(16857),	-- Lawbringer Bracers (Paladin)
				i(16827),	-- Nightslayer Belt (Rogue)
				i(16825),	-- Nightslayer Bracelets (Rogue)
				i(16819),	-- Vambraces of Prophecy (Priest)
			})),
			e(1519, {	-- Lucifron
				["creatureID"] = 12118,
				["groups"] = {
					-- #if NOT SEASON_OF_DISCOVERY
					i(17329),	-- Hand of Lucifron
					-- #endif
					i(18878),	-- Sorcerous Dagger
					i(17077),	-- Crimson Shocker
					i(18870),	-- Helm of the Lifegiver
					i(17109),	-- Choker of Enlightenment
					i(19145),	-- Robe of Volatle Power
					i(19146),	-- Wristguards of Stability
					i(16805),	-- Felheart Gloves (Warlock)
					i(16863),	-- Gauntlets of Might (Warrior)
					i(18861),	-- Flamewaker Legplates
					i(18872),	-- Manastorm Leggings
					i(18875),	-- Salamander Scale Pants
					i(16800),	-- Arcanist Boots (Mage)
					i(16829),	-- Cenarion Boots (Druid)
					i(16837),	-- Earthfury Boots (Shaman)
					i(16859),	-- Lawbringer Boots (Paladin)
					i(18879),	-- Heavy Dark Iron Ring
					i(19147),	-- Ring of Spell Power
					-- #if NOT SEASON_OF_DISCOVERY
					i(16665, {	-- Tome of Tranquilizing Shot
						["timeline"] = { ADDED_1_0_1, REMOVED_3_0_8 },
						["classes"] = { HUNTER },
						-- #if BEFORE WRATH
						["recipeID"] = 19801,	-- Tranquilizing Shot
						-- #endif
					}),
					-- #endif
				},
			}),
			e(1520, {	-- Magmadar
				["creatureID"] = 11982,
				["groups"] = {
					i(93034, {	-- Corefire Imp (PET!)
						["timeline"] = { ADDED_5_1_0 },
					}),
					i(17073),	-- Earthshaker
					i(18822),	-- Obsidian Edged Blade
					-- #if AFTER CATA
					i(18202),	-- Eskhandar's Left Claw
					-- #endif
					i(18203),	-- Eskhandar's Right Claw
					i(17069),	-- Striker's Mark
					i(19142),	-- Fire Runed Grimoire
					i(17065),	-- Medallion of Steadfast Might
					i(18829),	-- Deep Earth Spaulders
					i(18823),	-- Aged Core Leather Gloves
					i(19143),	-- Flameguard Gauntlets
					i(19136),	-- Mana Igniting Cord
					i(16796),	-- Arcanist's Leggings (Mage)
					i(16835),	-- Cenarion Leggings (Druid)
					i(16843),	-- Earthfury Leggings (Shaman)
					i(16810),	-- Felheart Pants (Warlock)
					i(18861),	-- Flamewaker Legplates
					i(16847),	-- Giantstalker's Leggings (Hunter)
					i(16855),	-- Lawbringer Legplates (Paladin)
					i(16867),	-- Legplates of Might (Warrior)
					i(16822),	-- Nightslayer Pants (Rogue)
					i(16814, {	-- Pants of Prophecy (Priest)
						-- #if AFTER 7.3.5
						["description"] = "For Blizzard to consider the Tier 1 Priest set as collected in the Transmog Preview, you need to loot these exact pants.",
						-- #endif
					}),
					i(18824),	-- Magma Tempered Boots
					i(19144),	-- Sabatons of the Flamewalker
					i(18821),	-- Quick Strike Ring
					i(18820),	-- Talisman of Ephemeral Power
				},
			}),
			e(1521, {	-- Gehennas
				["creatureID"] = 12259,
				["groups"] = {
					-- #if NOT SEASON_OF_DISCOVERY
					i(17331),	-- Hand of Gehennas
					-- #endif
					i(18878),	-- Sorcerous Dagger
					i(17077),	-- Crimson Shocker
					i(18870),	-- Helm of the Lifegiver
					i(19145),	-- Robe of Volatile Power
					i(19146),	-- Wristguards of Stability
					i(16839),	-- Earthfury Gauntlets (Shaman)
					i(16812),	-- Gloves of Prophecy (Priest)
					i(16860),	-- Lawbringer Gauntlets (Paladin)
					i(16826),	-- Nightslayer Gloves (Rogue)
					i(18861),	-- Flamewaker Legplates
					i(18872),	-- Manastorm Leggings
					i(18875),	-- Salamander Scale Pants
					i(16849),	-- Giantstalker's Boots (Hunter)
					i(16862),	-- Sabatons of Might (Warrior)
					i(18879),	-- Heavy Dark Iron Ring
					i(19147),	-- Ring of Spell Power
				},
			}),
			e(1522, {	-- Garr
				["creatureID"] = 12057,
				["groups"] = {
					-- #if NOT SEASON_OF_DISCOVERY
					i(18564, {	-- Bindings of the Windseeker (Right)
						["classes"] = ALL_CLASSES,
					}),
					-- #endif
					i(18822),	-- Obsidian Edged Blade
					i(17105),	-- Aurastone Hammer
					i(18832),	-- Brutality Blade
					i(17071),	-- Gutgore Ripper
					i(17066),	-- Drillborer Disk
					i(19142),	-- Fire Runed Grimoire
					i(16795),	-- Arcanist Crown (Mage)
					i(16834),	-- Cenarion Helm (Druid)
					i(16813),	-- Circlet of Prophecy (Priest)
					i(16842),	-- Earthfury Helmet (Shaman)
					i(16808),	-- Felheart Horns (Warlock)
					i(16846),	-- Giantstalker's Helmet (Hunter)
					i(16866),	-- Helm of Might (Warrior)
					i(16854),	-- Lawbringer Helm (Paladin)
					i(16821),	-- Nightslayer Cover (Rogue)
					i(18829),	-- Deep Earth Spaulders
					i(18823),	-- Aged Core Leather Gloves
					i(19143),	-- Flameguard Gauntlets
					i(19136),	-- Mana Igniting Cord
					i(18861),	-- Flamewaker Legplates
					i(18824),	-- Magma Tempered Boots
					i(19144),	-- Sabatons of the Flamewalker
					i(18821),	-- Quick Strike Ring
					i(18820),	-- Talisman of Ephemeral Power
				},
			}),
			e(1524, {	-- Baron Geddon
				["creatureID"] = 12056,
				["groups"] = {
					-- #if NOT SEASON_OF_DISCOVERY
					i(18563, {	-- Bindings of the Windseeker (Left)
						["classes"] = ALL_CLASSES,
					}),
					-- #endif
					i(18822),	-- Obsidian Edged Blade
					i(19142),	-- Fire Runed Grimoire
					i(16797),	-- Arcanist Mantle (Mage)
					i(16836),	-- Cenarion Spaulders (Druid)
					i(18829),	-- Deep Earth Spaulders
					i(16844),	-- Earthfury Epaulets (Shaman)
					i(16807),	-- Felheart Shoulder Pads (Warlock)
					i(16856),	-- Lawbringer Spaulders (Paladin)
					i(18823),	-- Aged Core Leather Gloves
					i(19143),	-- Flameguard Gauntlets
					i(19136),	-- Mana Igniting Cord
					i(18861),	-- Flamewaker Legplates
					i(18824),	-- Magma Tempered Boots
					i(19144),	-- Sabatons of the Flamewalker
					i(18821),	-- Quick Strike Ring
					i(17110),	-- Seal of the Archmagus
					i(18820),	-- Talisman of Ephemeral Power
					i(17782, {	-- Talisman of Binding Shard
						["lore"] = "According to Travis Day, this item was used by Blizzard in a test version of the Thunderfury quest line. The quest was removed and was not publicly released, but Blizzard initially forgot to remove the item from the loot table. It was only ever looted by Noktyn-Archimonde US of the guild Nurfed on March 23, 2005",
						["timeline"] = { ADDED_1_11_1, REMOVED_1_11_2 },
					}),
				},
			}),
			e(1523, {	-- Shazzrah
				["creatureID"] = 12264,
				["groups"] = {
					-- #if NOT SEASON_OF_DISCOVERY
					i(17332),	-- Hand of Shazzrah
					-- #endif
					i(18878),	-- Sorcerous Dagger
					i(17077),	-- Crimson Shocker
					i(18870),	-- Helm of the Lifegiver
					i(19145),	-- Robe of Volatile Power
					i(19146),	-- Wristguards of Stability
					i(16801),	-- Arcanist Gloves (Mage)
					i(16831),	-- Cenarion Gloves (Druid)
					i(16852),	-- Giantstalker's Gloves (Hunter)
					i(18861),	-- Flamewaker Legplates
					i(18872),	-- Manastorm Leggings
					i(18875),	-- Salamander Scale Pants
					i(16811),	-- Boots of Prophecy (Priest)
					i(16803),	-- Felheart Slippers (Warlock)
					i(16824),	-- Nightslayer Boots (Rogue)
					i(18879),	-- Heavy Dark Iron Ring
					i(19147),	-- Ring of Spell Power
				},
			}),
			e(1525, {	-- Sulfuron Harbinger
				["creatureID"] = 12098,
				["groups"] = {
					-- #if NOT SEASON_OF_DISCOVERY
					i(17330),	-- Hand of Sulfuron
					-- #endif
					i(93033, {	-- Harbinger of Flame (PET!)
						["timeline"] = { ADDED_5_1_0 },
					}),
					i(17074),	-- Shadowstrike
					i(17223, {	-- Thunderstrike
						["description"] = "Use Shadowstrike to create this item.",
						["provider"] = { "i", 17074 },	-- Shadowstrike
					}),
					i(18878),	-- Sorcerous Dagger
					i(17077),	-- Crimson Shocker
					i(18870),	-- Helm of the Lifegiver
					i(16848),	-- Giantstalker's Epaulets (Hunter)
					i(16816),	-- Mantle of Prophecy (Priest)
					i(16823),	-- Nightslayer Shoulder Pads (Rogue)
					i(16868),	-- Pauldrons of Might (Warrior)
					i(19145),	-- Robe of Volatile Power
					i(19146),	-- Wristguards of Stability
					i(18861),	-- Flamewaker Legplates
					i(18872),	-- Manastorm Leggings
					i(18875),	-- Salamander Scale Pants
					i(18879),	-- Heavy Dark Iron Ring
					i(19147),	-- Ring of Spell Power
				},
			}),
			e(1526, {	-- Golemagg the Incinerator
				["creatureID"] = 11988,
				["groups"] = {
					i(93035, {	-- Ashstone Core (PET!)
						["timeline"] = { ADDED_5_1_0 },
					}),
					-- #if NOT SEASON_OF_DISCOVERY
					i(17203),	-- Sulfuron Ingot
					-- #endif
					i(18822),	-- Obsidian Edged Blade
					i(18842),	-- Staff of Dominance
					i(17103),	-- Azuresong Mageblade
					i(17072),	-- Blastershot Launcher
					i(19142),	-- Fire Runed Grimoire
					i(18829),	-- Deep Earth Spaulders
					i(16798),	-- Arcanist Robes (Mage)
					i(16865),	-- Breastplate of Might (Warrior)
					i(16833),	-- Cenarion Vestments (Druid)
					i(16841),	-- Earthfury Vestments (Shaman)
					i(16809),	-- Felheart Robes (Warlock)
					i(16845),	-- Giantstalker's Breastplate (Hunter)
					i(16853),	-- Lawbringer Chestguard (Paladin)
					i(16820),	-- Nightslayer Chestpiece (Rogue)
					i(16815),	-- Robes of Prophecy (Priest)
					i(18823),	-- Aged Core Leather Gloves
					i(19143),	-- Flameguard Gauntlets
					i(19136),	-- Mana Igniting Cord
					i(18861),	-- Flamewaker Legplates
					i(18824),	-- Magma Tempered Boots
					i(19144),	-- Sabatons of the Flamewalker
					i(18821),	-- Quick Strike Ring
					i(18820),	-- Talisman of Ephemeral Power
				},
			}),
			e(1527, {	-- Majordomo Executus
				["creatureID"] = 12018,
				["provider"] = { "o", 179703 },	-- Cache of the Firelord
				["groups"] = {
					-- #if NOT SEASON_OF_DISCOVERY
					i(18703, {	-- Ancient Petrified Leaf
						["timeline"] = { ADDED_1_0_1, REMOVED_4_0_3 },
						["classes"] = { HUNTER },
						["lvl"] = 60,
					}),
					i(18646, {	-- The Eye of Divinity
						["description"] = "Reagent for the Splinter of Nordrassil. Used by Priests to create Benediction and Anathema.",
						["timeline"] = { ADDED_1_0_1, REMOVED_4_0_3 },
						["classes"] = { PRIEST },
					}),
					-- #endif
					i(18803),	-- Hyperthermically Insulated Lava Dredger / Finkle's Lava Dredger
					i(18805),	-- Core Hound Tooth
					i(19139),	-- Fireguard Shoulders
					i(18810),	-- Wild Growth Spaulders
					i(18811),	-- Fireproof Cloak
					i(18812),	-- Wristguards of True Flight
					i(18808),	-- Gloves of the Hypnotic Flame
					i(18809),	-- Sash of Whispered Secrets
					i(18806),	-- Core Forged Greaves
					i(19140),	-- Cauterizing Band
				},
			}),
			e(1528, {	-- Ragnaros
				["creatureID"] = 11502,
				["groups"] = {
					-- #if NOT SEASON_OF_DISCOVERY
					ach(686),	-- Molten Core
					ach(5056, {	-- Molten Core Guild Run
						["timeline"] = { ADDED_4_0_3 },
					}),
					ach(15330, {	-- Survivor of the Firelord (Season of Mastery)
						["timeline"] = { ADDED_1_14_1, REMOVED_1_15_0 },	-- Was only available in Season of Mastery
					}),
					-- #endif
					i(17204, {	-- Eye of Sulfuras
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_3 },
						-- #endif
					}),
					i(19017, {	-- Essence of the Firelord
						["description"] = "For this to drop, you must be on the 'Thunderaan the Windseeker' quest.",
						["classes"] = SWORD_CLASSES,
						["b"] = 1,
					}),
					i(138018, {	-- Clothes Chest Pattern: Molten Core (RECIPE!)
						["timeline"] = { ADDED_7_0_3 },
					}),
					i(138833, {	-- Illusion: Flametongue (ILLUSION!)
						["timeline"] = { ADDED_7_0_3 },
						["classes"] = { SHAMAN },
					}),
					i(17076),	-- Bonereaver's Edge
					i(17104),	-- Spinal Reaper
					i(18816),	-- Perdition's Blade
					i(17106),	-- Malistar's Defender
					i(18817),	-- Crown of Destruction
					i(18814),	-- Choker of the Fire Lord
					i(17102),	-- Cloak of the Shrouded Mists
					i(17107),	-- Dragon Blood's Cloak
					i(19137),	-- Onslaught Girdle
					i(16909),	-- Bloodfang Pants (Rogue)
					i(16938),	-- Dragonstalker's Legguards (Hunter)
					i(16954),	-- Judgment Legplates (Paladin)
					i(16922),	-- Leggings of Transcendence (Priest)
					i(16946),	-- Legplates of Ten Storms (Shaman)
					i(16962),	-- Legplates of Wrath (Warrior)
					i(16930),	-- Nemesis Leggings (Warlock)
					i(16915),	-- Netherwind Pants (Mage)
					i(16901),	-- Stormrage Legguards (Druid)
					i(17063),	-- Band of Accuria
					i(19138),	-- Band of Sulfuras
					i(18815),	-- Essence of the Pure Flame
					i(17082),	-- Shard of the Flame
					i(17982, {	-- Ragnaros Core
						["timeline"] = { ADDED_1_1_0, REMOVED_1_4_0 },
					}),
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			})),
			applyclassicphase(SOD_PHASE_FOUR, d(DIFFICULTY.SOD.PLAYER20, bubbleDownSelf({ ["timeline"] = { ADDED_1_15_3 }, }, {
				n(13278, {	-- Duke Hydraxis
					["coords"] = { 79.2, 73.6, AZSHARA },
					["groups"] = {
						i(227925),	-- Beacon of Hydraxis
						i(227915),	-- Duke's Domain
						i(228979),	-- Enchanted Sigil: Flowing Waters
						i(227926),	-- Hydraxian Coronation
						i(227927),	-- Oath of the Sea
						i(227923),	-- Water Treads
						applyclassicphase(SOD_PHASE_SIX, i(233213)),	-- Ancient Lodestone
						applyclassicphase(SOD_PHASE_SIX, i(233201)),	-- Shimmering Globe
					},
				}),
				n(227819, {	-- Duke Hydraxis
					["provider"] = { "n", 231178 },	-- Duke Hydraxis
					["description"] = "Speak to the Duke to Turn Up The Heat! (Or let your raid leader do that instead...)\n\nAlso sells 'Core Forged' versions of the Tier 2 gear.",
					["groups"] = {
						cl(DRUID, {
							-- DPS (Agility)
							tokencost(TOKENS.SCORCHED_CORE.HELM, i(226659)),	-- Cenarion Horns
							tokencost(TOKENS.SCORCHED_CORE.SHOULDERS, i(226665)),	-- Cenarion Shoulders
							tokencost(TOKENS.SCORCHED_CORE.CHEST, i(226661)),	-- Cenarion Tunic
							tokencost(TOKENS.SCORCHED_CORE.BRACERS, i(226662)),	-- Cenarion Bands
							tokencost(TOKENS.SCORCHED_CORE.GLOVES, i(226664)),	-- Cenarion Fists
							tokencost(TOKENS.SCORCHED_CORE.BELT, i(226660)),	-- Cenarion Girdle
							tokencost(TOKENS.SCORCHED_CORE.LEGS, i(226666)),	-- Cenarion Trousers
							tokencost(TOKENS.SCORCHED_CORE.BOOTS, i(226663)),	-- Cenarion Treads

							-- DPS (Intellect)
							tokencost(TOKENS.SCORCHED_CORE.HELM, i(226658)),	-- Cenarion Antlers
							tokencost(TOKENS.SCORCHED_CORE.SHOULDERS, i(226653)),	-- Cenarion Mantle
							tokencost(TOKENS.SCORCHED_CORE.CHEST, i(226656)),	-- Cenarion Embrace
							tokencost(TOKENS.SCORCHED_CORE.BRACERS, i(226655)),	-- Cenarion Wrists
							tokencost(TOKENS.SCORCHED_CORE.GLOVES, i(226654)),	-- Cenarion Gauntlets
							tokencost(TOKENS.SCORCHED_CORE.BELT, i(226657)),	-- Cenarion Cord
							tokencost(TOKENS.SCORCHED_CORE.LEGS, i(226651)),	-- Cenarion Pants
							tokencost(TOKENS.SCORCHED_CORE.BOOTS, i(226652)),	-- Cenarion Sandals

							-- Healer
							tokencost(TOKENS.SCORCHED_CORE.HELM, i(226647)),	-- Cenarion Helm
							tokencost(TOKENS.SCORCHED_CORE.SHOULDERS, i(226644)),	-- Cenarion Spaulders
							tokencost(TOKENS.SCORCHED_CORE.CHEST, i(221785)),	-- Cenarion Vestments
							tokencost(TOKENS.SCORCHED_CORE.BRACERS, i(226649)),	-- Cenarion Bracers
							tokencost(TOKENS.SCORCHED_CORE.GLOVES, i(226648)),	-- Cenarion Gloves
							tokencost(TOKENS.SCORCHED_CORE.BELT, i(226650)),	-- Cenarion Belt
							tokencost(TOKENS.SCORCHED_CORE.LEGS, i(226646)),	-- Cenarion Leggings
							tokencost(TOKENS.SCORCHED_CORE.BOOTS, i(226645)),	-- Cenarion Boots

							-- Tank
							tokencost(TOKENS.SCORCHED_CORE.HELM, i(226670)),	-- Cenarion Crown
							tokencost(TOKENS.SCORCHED_CORE.SHOULDERS, i(226674)),	-- Cenarion Pauldrons
							tokencost(TOKENS.SCORCHED_CORE.CHEST, i(226675)),	-- Cenarion Armor
							tokencost(TOKENS.SCORCHED_CORE.BRACERS, i(226668)),	-- Cenarion Wristguards
							tokencost(TOKENS.SCORCHED_CORE.GLOVES, i(226669)),	-- Cenarion Grips
							tokencost(TOKENS.SCORCHED_CORE.BELT, i(226667)),	-- Cenarion Waistguard
							tokencost(TOKENS.SCORCHED_CORE.LEGS, i(226671)),	-- Cenarion Legguards
							tokencost(TOKENS.SCORCHED_CORE.BOOTS, i(226673)),	-- Cenarion Walkers
						}),
						cl(HUNTER, {
							-- Melee
							tokencost(TOKENS.MOLTEN_SCALED.HELM, i(226536)),	-- Giantstalker's Guise
							tokencost(TOKENS.MOLTEN_SCALED.SHOULDERS, i(226543)),	-- Giantstalker's Spauldrons
							tokencost(TOKENS.MOLTEN_SCALED.CHEST, i(226535)),	-- Giantstalker's Chainmail
							tokencost(TOKENS.MOLTEN_SCALED.BRACERS, i(226541)),	-- Giantstalker's Wristguards
							tokencost(TOKENS.MOLTEN_SCALED.GLOVES, i(226540)),	-- Giantstalker's Handguards
							tokencost(TOKENS.MOLTEN_SCALED.BELT, i(226542)),	-- Giantstalker's Girdle
							tokencost(TOKENS.MOLTEN_SCALED.LEGS, i(226537)),	-- Giantstalker's Chain Leggings
							tokencost(TOKENS.MOLTEN_SCALED.BOOTS, i(226538)),	-- Giantstalker's Sabatons

							-- Ranged
							tokencost(TOKENS.MOLTEN_SCALED.HELM, i(226533)),	-- Giantstalker's Helmet
							tokencost(TOKENS.MOLTEN_SCALED.SHOULDERS, i(226527)),	-- Giantstalker's Epaulets
							tokencost(TOKENS.MOLTEN_SCALED.CHEST, i(226534)),	-- Giantstalker's Breastplate
							tokencost(TOKENS.MOLTEN_SCALED.BRACERS, i(226530)),	-- Giantstalker's Bracers
							tokencost(TOKENS.MOLTEN_SCALED.GLOVES, i(226528)),	-- Giantstalker's Gloves
							tokencost(TOKENS.MOLTEN_SCALED.BELT, i(226529)),	-- Giantstalker's Belt
							tokencost(TOKENS.MOLTEN_SCALED.LEGS, i(226532)),	-- Giantstalker's Leggings
							tokencost(TOKENS.MOLTEN_SCALED.BOOTS, i(226531)),	-- Giantstalker's Boots
						}),
						cl(MAGE, {
							-- DPS
							tokencost(TOKENS.INCANDESCENT.HELM, i(226562)),	-- Arcanist Crown
							tokencost(TOKENS.INCANDESCENT.SHOULDERS, i(226560)),	-- Arcanist Mantle
							tokencost(TOKENS.INCANDESCENT.CHEST, i(226559)),	-- Arcanist Robes
							tokencost(TOKENS.INCANDESCENT.BRACERS, i(226558)),	-- Arcanist Bindings
							tokencost(TOKENS.INCANDESCENT.GLOVES, i(226556)),	-- Arcanist Gloves
							tokencost(TOKENS.INCANDESCENT.BELT, i(226555)),	-- Arcanist Belt
							tokencost(TOKENS.INCANDESCENT.LEGS, i(226561)),	-- Arcanist Leggings
							tokencost(TOKENS.INCANDESCENT.BOOTS, i(226557)),	-- Arcanist Boots

							-- Healer
							tokencost(TOKENS.INCANDESCENT.HELM, i(226564)),	-- Arcanist Headdress
							tokencost(TOKENS.INCANDESCENT.SHOULDERS, i(226566)),	-- Arcanist Shoulders
							tokencost(TOKENS.INCANDESCENT.CHEST, i(226563)),	-- Arcanist Garments
							tokencost(TOKENS.INCANDESCENT.BRACERS, i(226567)),	-- Arcanist Wristwraps
							tokencost(TOKENS.INCANDESCENT.GLOVES, i(226569)),	-- Arcanist Handguards
							tokencost(TOKENS.INCANDESCENT.BELT, i(226570)),	-- Arcanist Cord
							tokencost(TOKENS.INCANDESCENT.LEGS, i(226565)),	-- Arcanist Pants
							tokencost(TOKENS.INCANDESCENT.BOOTS, i(226568)),	-- Arcanist Sandals
						}),
						cl(PALADIN, {
							-- DPS
							tokencost(TOKENS.MOLTEN_SCALED.HELM, i(226599)),	-- Lawbringer Crown
							tokencost(TOKENS.MOLTEN_SCALED.SHOULDERS, i(221783)),	-- Lawbringer Spaulders
							tokencost(TOKENS.MOLTEN_SCALED.CHEST, i(226602)),	-- Lawbringer Breastplate
							tokencost(TOKENS.MOLTEN_SCALED.BRACERS, i(226596)),	-- Lawbringer Warbands
							tokencost(TOKENS.MOLTEN_SCALED.GLOVES, i(226600)),	-- Lawbringer Grips
							tokencost(TOKENS.MOLTEN_SCALED.BELT, i(226597)),	-- Lawbringer Girdle
							tokencost(TOKENS.MOLTEN_SCALED.LEGS, i(226598)),	-- Lawbringer Leggings
							tokencost(TOKENS.MOLTEN_SCALED.BOOTS, i(226601)),	-- Lawbringer Battleboots

							-- Healer
							tokencost(TOKENS.MOLTEN_SCALED.HELM, i(226590)),	-- Lawbringer Helm
							tokencost(TOKENS.MOLTEN_SCALED.SHOULDERS, i(226588)),	-- Lawbringer Spaulders
							tokencost(TOKENS.MOLTEN_SCALED.CHEST, i(226610)),	-- Lawbringer Chestplate
							tokencost(TOKENS.MOLTEN_SCALED.BRACERS, i(226589)),	-- Lawbringer Bracers
							tokencost(TOKENS.MOLTEN_SCALED.GLOVES, i(226591)),	-- Lawbringer Gauntlets
							tokencost(TOKENS.MOLTEN_SCALED.BELT, i(226592)),	-- Lawbringer Belt
							tokencost(TOKENS.MOLTEN_SCALED.LEGS, i(226594)),	-- Lawbringer Legplates
							tokencost(TOKENS.MOLTEN_SCALED.BOOTS, i(226593)),	-- Lawbringer Boots

							-- Tank
							tokencost(TOKENS.MOLTEN_SCALED.HELM, i(226607)),	-- Lawbringer Headguard
							tokencost(TOKENS.MOLTEN_SCALED.SHOULDERS, i(226605)),	-- Lawbringer Pauldrons
							tokencost(TOKENS.MOLTEN_SCALED.CHEST, i(226595)),	-- Lawbringer Chestguard
							tokencost(TOKENS.MOLTEN_SCALED.BRACERS, i(226603)),	-- Lawbringer Vambraces
							tokencost(TOKENS.MOLTEN_SCALED.GLOVES, i(226608)),	-- Lawbringer Handguards
							tokencost(TOKENS.MOLTEN_SCALED.BELT, i(226604)),	-- Lawbringer Battlebelt
							tokencost(TOKENS.MOLTEN_SCALED.LEGS, i(226606)),	-- Lawbringer Legguards
							tokencost(TOKENS.MOLTEN_SCALED.BOOTS, i(226609)),	-- Lawbringer Sabatons
						}),
						cl(PRIEST, {
							-- DPS
							tokencost(TOKENS.INCANDESCENT.HELM, i(226584)),	-- Crown of Prophecy
							tokencost(TOKENS.INCANDESCENT.SHOULDERS, i(226581)),	-- Shoulderpads of Prophecy
							tokencost(TOKENS.INCANDESCENT.CHEST, i(226582)),	-- Garments of Prophecy
							tokencost(TOKENS.INCANDESCENT.BRACERS, i(226579)),	-- Wristwraps of Prophecy
							tokencost(TOKENS.INCANDESCENT.GLOVES, i(226585)),	-- Hands of Prophecy
							tokencost(TOKENS.INCANDESCENT.BELT, i(226580)),	-- Belt of Prophecy
							tokencost(TOKENS.INCANDESCENT.LEGS, i(226583)),	-- Leggings of Prophecy
							tokencost(TOKENS.INCANDESCENT.BOOTS, i(226586)),	-- Sandals of Prophecy

							-- Healer
							tokencost(TOKENS.INCANDESCENT.HELM, i(226573)),	-- Circlet of Prophecy
							tokencost(TOKENS.INCANDESCENT.SHOULDERS, i(226576)),	-- Mantle of Prophecy
							tokencost(TOKENS.INCANDESCENT.CHEST, i(226575)),	-- Robes of Prophecy
							tokencost(TOKENS.INCANDESCENT.BRACERS, i(226578)),	-- Vambraces of Prophecy
							tokencost(TOKENS.INCANDESCENT.GLOVES, i(226572)),	-- Gloves of Prophecy
							tokencost(TOKENS.INCANDESCENT.BELT, i(226577)),	-- Girdle of Prophecy
							tokencost(TOKENS.INCANDESCENT.LEGS, i(226574)),	-- Pants of Prophecy
							tokencost(TOKENS.INCANDESCENT.BOOTS, i(226571)),	-- Boots of Prophecy
						}),
						cl(ROGUE, {
							-- DPS
							tokencost(TOKENS.SCORCHED_CORE.HELM, i(226446)),	-- Nightslayer Cover
							tokencost(TOKENS.SCORCHED_CORE.SHOULDERS, i(226444)),	-- Nightslayer Shoulder Pads
							tokencost(TOKENS.SCORCHED_CORE.CHEST, i(226447)),	-- Nightslayer Chestpiece
							tokencost(TOKENS.SCORCHED_CORE.BRACERS, i(226442)),	-- Nightslayer Bracelets
							tokencost(TOKENS.SCORCHED_CORE.GLOVES, i(226441)),	-- Nightslayer Gloves
							tokencost(TOKENS.SCORCHED_CORE.BELT, i(226440)),	-- Nightslayer Belt
							tokencost(TOKENS.SCORCHED_CORE.LEGS, i(226445)),	-- Nightslayer Pants
							tokencost(TOKENS.SCORCHED_CORE.BOOTS, i(226443)),	-- Nightslayer Boots

							-- Tank
							tokencost(TOKENS.SCORCHED_CORE.HELM, i(226480)),	-- Nightslayer Hood
							tokencost(TOKENS.SCORCHED_CORE.SHOULDERS, i(226478)),	-- Nightslayer Pauldrons
							tokencost(TOKENS.SCORCHED_CORE.CHEST, i(226473)),	-- Nightslayer Cuirass
							tokencost(TOKENS.SCORCHED_CORE.BRACERS, i(226476)),	-- Nightslayer Bracers
							tokencost(TOKENS.SCORCHED_CORE.GLOVES, i(226475)),	-- Nightslayer Handguards
							tokencost(TOKENS.SCORCHED_CORE.BELT, i(226474)),	-- Nightslayer Waistguard
							tokencost(TOKENS.SCORCHED_CORE.LEGS, i(226479)),	-- Nightslayer Legguards
							tokencost(TOKENS.SCORCHED_CORE.BOOTS, i(226477)),	-- Nightslayer Tabi
						}),
						cl(SHAMAN, {
							-- DPS (Agility)
							tokencost(TOKENS.MOLTEN_SCALED.HELM, i(226638)),	-- Earthfury Headpiece
							tokencost(TOKENS.MOLTEN_SCALED.SHOULDERS, i(226640)),	-- Earthfury Spaulders
							tokencost(TOKENS.MOLTEN_SCALED.CHEST, i(226635)),	-- Earthfury Chainmail
							tokencost(TOKENS.MOLTEN_SCALED.BRACERS, i(226642)),	-- Earthfury Bindings
							tokencost(TOKENS.MOLTEN_SCALED.GLOVES, i(226637)),	-- Earthfury Grips
							tokencost(TOKENS.MOLTEN_SCALED.BELT, i(226641)),	-- Earthfury Girdle
							tokencost(TOKENS.MOLTEN_SCALED.LEGS, i(226639)),	-- Earthfury Chain Leggings
							tokencost(TOKENS.MOLTEN_SCALED.BOOTS, i(226636)),	-- Earthfury Battleboots

							-- DPS (Intellect)
							tokencost(TOKENS.MOLTEN_SCALED.HELM, i(226622)),	-- Earthfury Visor
							tokencost(TOKENS.MOLTEN_SCALED.SHOULDERS, i(226624)),	-- Earthfury Mantle
							tokencost(TOKENS.MOLTEN_SCALED.CHEST, i(226619)),	-- Earthfury Ringmail
							tokencost(TOKENS.MOLTEN_SCALED.BRACERS, i(226626)),	-- Earthfury Wristbands
							tokencost(TOKENS.MOLTEN_SCALED.GLOVES, i(226621)),	-- Earthfury Hands
							tokencost(TOKENS.MOLTEN_SCALED.BELT, i(226625)),	-- Earthfury Cord
							tokencost(TOKENS.MOLTEN_SCALED.LEGS, i(226623)),	-- Earthfury Leggings
							tokencost(TOKENS.MOLTEN_SCALED.BOOTS, i(226620)),	-- Earthfury Walkers

							-- Healer
							tokencost(TOKENS.MOLTEN_SCALED.HELM, i(226612)),	-- Earthfury Helmet
							tokencost(TOKENS.MOLTEN_SCALED.SHOULDERS, i(226611)),	-- Earthfury Epaulets
							tokencost(TOKENS.MOLTEN_SCALED.CHEST, i(226617)),	-- Earthfury Vestments
							tokencost(TOKENS.MOLTEN_SCALED.BRACERS, i(226618)),	-- Earthfury Bracers
							tokencost(TOKENS.MOLTEN_SCALED.GLOVES, i(226615)),	-- Earthfury Gauntlets
							tokencost(TOKENS.MOLTEN_SCALED.BELT, i(226616)),	-- Earthfury Belt
							tokencost(TOKENS.MOLTEN_SCALED.LEGS, i(226614)),	-- Earthfury Legguards
							tokencost(TOKENS.MOLTEN_SCALED.BOOTS, i(226613)),	-- Earthfury Boots

							-- Tank
							tokencost(TOKENS.MOLTEN_SCALED.HELM, i(226630)),	-- Earthfury Greathelm
							tokencost(TOKENS.MOLTEN_SCALED.SHOULDERS, i(226632)),	-- Earthfury Pauldrons
							tokencost(TOKENS.MOLTEN_SCALED.CHEST, i(226627)),	-- Earthfury Scalemail
							tokencost(TOKENS.MOLTEN_SCALED.BRACERS, i(226634)),	-- Earthfury Wristguards
							tokencost(TOKENS.MOLTEN_SCALED.GLOVES, i(226629)),	-- Earthfury Handguards
							tokencost(TOKENS.MOLTEN_SCALED.BELT, i(226633)),	-- Earthfury Waistguard
							tokencost(TOKENS.MOLTEN_SCALED.LEGS, i(226631)),	-- Earthfury Scaled Leggings
							tokencost(TOKENS.MOLTEN_SCALED.BOOTS, i(226628)),	-- Earthfury Sabatons
						}),
						cl(WARLOCK, {
							-- DPS
							tokencost(TOKENS.INCANDESCENT.HELM, i(226549)),	-- Felheart Horns
							tokencost(TOKENS.INCANDESCENT.SHOULDERS, i(226550)),	-- Felheart Shoulder Pads
							tokencost(TOKENS.INCANDESCENT.CHEST, i(226548)),	-- Felheart Robes
							tokencost(TOKENS.INCANDESCENT.BRACERS, i(226553)),	-- Felheart Bracers
							tokencost(TOKENS.INCANDESCENT.GLOVES, i(226552)),	-- Felheart Gloves
							tokencost(TOKENS.INCANDESCENT.BELT, i(226551)),	-- Felheart Belt
							tokencost(TOKENS.INCANDESCENT.LEGS, i(226547)),	-- Felheart Pants
							tokencost(TOKENS.INCANDESCENT.BOOTS, i(226554)),	-- Felheart Slippers

							-- Tank
							tokencost(TOKENS.INCANDESCENT.HELM, i(216922)),	-- Felheart Crown
							tokencost(TOKENS.INCANDESCENT.SHOULDERS, i(216925)),	-- Felheart Mantle
							tokencost(TOKENS.INCANDESCENT.CHEST, i(216924)),	-- Felheart Embrace
							tokencost(TOKENS.INCANDESCENT.BRACERS, i(216920)),	-- Felheart Bindings
							tokencost(TOKENS.INCANDESCENT.GLOVES, i(216921)),	-- Felheart Grips
							tokencost(TOKENS.INCANDESCENT.BELT, i(216919)),	-- Felheart Sash
							tokencost(TOKENS.INCANDESCENT.LEGS, i(216923)),	-- Felheart Leggings
							tokencost(TOKENS.INCANDESCENT.BOOTS, i(216918)),	-- Felheart Boots
						}),
						cl(WARRIOR, {
							-- DPS
							tokencost(TOKENS.SCORCHED_CORE.HELM, i(226495)),	-- Jaws of Might
							tokencost(TOKENS.SCORCHED_CORE.SHOULDERS, i(226492)),	-- Pauldrons of Might
							tokencost(TOKENS.SCORCHED_CORE.CHEST, i(226494)),	-- Hauberk of Might
							tokencost(TOKENS.SCORCHED_CORE.BRACERS, i(226499)),	-- Armguards of Might
							tokencost(TOKENS.SCORCHED_CORE.GLOVES, i(226497)),	-- Hands of Might
							tokencost(TOKENS.SCORCHED_CORE.BELT, i(226498)),	-- Sash of Might
							tokencost(TOKENS.SCORCHED_CORE.LEGS, i(226493)),	-- Leggings of Might
							tokencost(TOKENS.SCORCHED_CORE.BOOTS, i(226496)),	-- Treads of Might

							-- Tank
							tokencost(TOKENS.SCORCHED_CORE.HELM, i(226488)),	-- Helm of Might
							tokencost(TOKENS.SCORCHED_CORE.SHOULDERS, i(226491)),	-- Shoulderplates of Might
							tokencost(TOKENS.SCORCHED_CORE.CHEST, i(226489)),	-- Breastplate of Might
							tokencost(TOKENS.SCORCHED_CORE.BRACERS, i(226484)),	-- Bracers of Might
							tokencost(TOKENS.SCORCHED_CORE.GLOVES, i(226486)),	-- Gauntlets of Might
							tokencost(TOKENS.SCORCHED_CORE.BELT, i(226485)),	-- Belt of Might
							tokencost(TOKENS.SCORCHED_CORE.LEGS, i(226490)),	-- Legplates of Might
							tokencost(TOKENS.SCORCHED_CORE.BOOTS, i(226487)),	-- Sabatons of Might
						}),
					},
				}),
				-- Tier 2 "Core Forged", added with BWL.
				-- CRIEVE NOTE: Whatever hell the developer that created this at Blizzard came crawling out of should be sent back, please for the love of god, don't do this with Tier 3 as well.
				n(227819, applyclassicphase(SOD_PHASE_FIVE, bubbleDownSelf({ ["timeline"] = { ADDED_1_15_4 }, }, {	-- Duke Hydraxis
					cl(DRUID, {
						-- DPS (Agility)
						tokencost(231257, i(232099)),	-- Stormrage Cowl
						tokencost(231259, i(232097)),	-- Stormrage Shoulderpads
						tokencost(231254, i(232102)),	-- Stormrage Vest
						tokencost(231261, i(232095)),	-- Stormrage Wraps
						tokencost(231256, i(232100)),	-- Stormrage Grips
						tokencost(231260, i(232096)),	-- Stormrage Sash
						tokencost(231258, i(232098)),	-- Stormrage Trousers
						tokencost(231255, i(232101)),	-- Stormrage Stompers

						-- DPS (Intellect)
						tokencost(231249, i(232083)),	-- Stormrage Antlers
						tokencost(231251, i(232081)),	-- Stormrage Mantle
						tokencost(231246, i(232086)),	-- Stormrage Leathers
						tokencost(231253, i(232079)),	-- Stormrage Bindings
						tokencost(231248, i(232084)),	-- Stormrage Mitts
						tokencost(231252, i(232080)),	-- Stormrage Cord
						tokencost(231250, i(232082)),	-- Stormrage Kilt
						tokencost(231247, i(232085)),	-- Stormrage Sandals

						-- Healer
						tokencost(231233, i(232091)),	-- Stormrage Cover
						tokencost(231235, i(232089)),	-- Stormrage Pauldrons
						tokencost(231230, i(232094)),	-- Stormrage Chestguard
						tokencost(231237, i(232087)),	-- Stormrage Bracers
						tokencost(231232, i(232092)),	-- Stormrage Handguards
						tokencost(231236, i(232088)),	-- Stormrage Belt
						tokencost(231234, i(232090)),	-- Stormrage Legguards
						tokencost(231231, i(232093)),	-- Stormrage Boots

						-- Tank
						tokencost(231241, i(232107)),	-- Stormrage Headdress
						tokencost(231243, i(232105)),	-- Stormrage Spaulders
						tokencost(231238, i(232110)),	-- Stormrage Armor
						tokencost(231245, i(232103)),	-- Stormrage Wristguards
						tokencost(231240, i(232108)),	-- Stormrage Gauntlets
						tokencost(231244, i(232104)),	-- Stormrage Waistguard
						tokencost(231242, i(232106)),	-- Stormrage Leggings
						tokencost(231239, i(232109)),	-- Stormrage Treads
					}),
					cl(HUNTER, {
						-- Melee
						tokencost(231068, i(232115)),	-- Dragonstalker's Skullcap
						tokencost(231066, i(232113)),	-- Dragonstalker's Pauldrons
						tokencost(231071, i(232118)),	-- Dragonstalker's Armor
						tokencost(231063, i(232111)),	-- Dragonstalker's Vambraces
						tokencost(231069, i(232116)),	-- Dragonstalker's Grips
						tokencost(231065, i(232112)),	-- Dragonstalker's Girdle
						tokencost(231067, i(232114)),	-- Dragonstalker's Pants
						tokencost(231070, i(232117)),	-- Dragonstalker's Sabatons

						-- Ranged
						tokencost(231059, i(232123)),	-- Dragonstalker's Helm
						tokencost(231057, i(232121)),	-- Dragonstalker's Spaulders
						tokencost(231062, i(232126)),	-- Dragonstalker's Breastplate
						tokencost(231055, i(232119)),	-- Dragonstalker's Bracers
						tokencost(231060, i(232124)),	-- Dragonstalker's Gauntlets
						tokencost(231056, i(232120)),	-- Dragonstalker's Belt
						tokencost(231058, i(232122)),	-- Dragonstalker's Legguards
						tokencost(231061, i(232125)),	-- Dragonstalker's Greaves
					}),
					cl(MAGE, {
						-- DPS
						tokencost(231103, i(232131)),	-- Netherwind Crown
						tokencost(231106, i(232129)),	-- Netherwind Mantle
						tokencost(231105, i(232134)),	-- Netherwind Robes
						tokencost(231107, i(232127)),	-- Netherwind Bindings
						tokencost(231102, i(232132)),	-- Netherwind Gloves
						tokencost(231100, i(232128)),	-- Netherwind Belt
						tokencost(231104, i(232130)),	-- Netherwind Pants
						tokencost(231101, i(232133)),	-- Netherwind Boots

						-- Healer
						tokencost(231111, i(232139)),	-- Netherwind Mask
						tokencost(231114, i(232137)),	-- Netherwind Shoulders
						tokencost(231113, i(232142)),	-- Netherwind Vestments
						tokencost(231115, i(232135)),	-- Netherwind Wraps
						tokencost(231110, i(232140)),	-- Netherwind Mitts
						tokencost(231108, i(232136)),	-- Netherwind Sash
						tokencost(231112, i(232138)),	-- Netherwind Leggings
						tokencost(231109, i(232141)),	-- Netherwind Slippers
					}),
					cl(PALADIN, {
						-- DPS
						tokencost(231178, i(232147)),	-- Judgement Crown
						tokencost(231176, i(232145)),	-- Judgement Spaulders
						tokencost(231181, i(232150)),	-- Judgement Breastplate
						tokencost(231174, i(232143)),	-- Judgement Bindings
						tokencost(231179, i(232148)),	-- Judgement Gauntlets
						tokencost(231175, i(232144)),	-- Judgement Belt
						tokencost(231177, i(232146)),	-- Judgement Legplates
						tokencost(231180, i(232149)),	-- Judgement Sabatons

						-- Healer
						tokencost(231194, i(232155)),	-- Judgement Helm
						tokencost(231192, i(232153)),	-- Judgement Mantle
						tokencost(231197, i(232158)),	-- Judgement Cuirass
						tokencost(231190, i(232151)),	-- Judgement Bracers
						tokencost(231195, i(232156)),	-- Judgement Gloves
						tokencost(231191, i(232152)),	-- Judgement Girdle
						tokencost(231193, i(232154)),	-- Judgement Plate Skirt
						tokencost(231196, i(232157)),	-- Judgement Treads

						-- Tank
						tokencost(231186, i(232163)),	-- Judgement Great Helm
						tokencost(231184, i(232161)),	-- Judgement Pauldrons
						tokencost(231187, i(232166)),	-- Judgement Chestguard
						tokencost(231182, i(232159)),	-- Judgement Vambraces
						tokencost(231188, i(232164)),	-- Judgement Handguards
						tokencost(231183, i(232160)),	-- Judgement Waistguard
						tokencost(231185, i(232162)),	-- Judgement Legguards
						tokencost(231189, i(232165)),	-- Judgement Greaves
					}),
					cl(PRIEST, {
						-- DPS
						tokencost(231167, i(232171)),	-- Crown of Transcendence
						tokencost(231170, i(232169)),	-- Mantle of Transcendence
						tokencost(231169, i(232174)),	-- Garb of Transcendence
						tokencost(231172, i(232167)),	-- Bracers of Transcendence
						tokencost(231166, i(232172)),	-- Gloves of Transcendence
						tokencost(231171, i(232168)),	-- Cord of Transcendence
						tokencost(231168, i(232170)),	-- Pants of Transcendence
						tokencost(231165, i(232173)),	-- Treads of Transcendence

						-- Healer
						tokencost(231157, i(232179)),	-- Halo of Transcendence
						tokencost(231160, i(232177)),	-- Pauldrons of Transcendence
						tokencost(231159, i(232182)),	-- Robes of Transcendence
						tokencost(231162, i(232175)),	-- Bindings of Transcendence
						tokencost(231156, i(232180)),	-- Handguards of Transcendence
						tokencost(231161, i(232176)),	-- Belt of Transcendence
						tokencost(231158, i(232178)),	-- Leggings of Transcendence
						tokencost(231155, i(232181)),	-- Boots of Transcendence
					}),
					cl(ROGUE, {
						-- DPS
						tokencost(231043, i(232187)),	-- Bloodfang Hood
						tokencost(231039, i(232185)),	-- Bloodfang Spaulders
						tokencost(231040, i(232190)),	-- Bloodfang Chestpiece
						tokencost(231046, i(232183)),	-- Bloodfang Bracers
						tokencost(231042, i(232188)),	-- Bloodfang Gloves
						tokencost(231045, i(232184)),	-- Bloodfang Belt
						tokencost(231044, i(232186)),	-- Bloodfang Pants
						tokencost(231041, i(232189)),	-- Bloodfang Boots

						-- Tank
						tokencost(231051, i(232195)),	-- Bloodfang Cowl
						tokencost(231047, i(232193)),	-- Bloodfang Shoulderpads
						tokencost(231048, i(232198)),	-- Bloodfang Chestguard
						tokencost(231054, i(232191)),	-- Bloodfang Wristguards
						tokencost(231050, i(232196)),	-- Bloodfang Handguards
						tokencost(231053, i(232192)),	-- Bloodfang Waistguard
						tokencost(231052, i(232194)),	-- Bloodfang Legguards
						tokencost(231049, i(232197)),	-- Bloodfang Footpads
					}),
					cl(SHAMAN, {
						-- DPS (Agility)
						tokencost(231227, i(232219)),	-- Crown of Ten Storms
						tokencost(231225, i(232217)),	-- Spaulders of Ten Storms
						tokencost(231229, i(232222)),	-- Armor of Ten Storms
						tokencost(231223, i(232215)),	-- Vambraces of Ten Storms
						tokencost(231222, i(232220)),	-- Grips of Ten Storms
						tokencost(231224, i(232216)),	-- Girdle of Ten Storms
						tokencost(231226, i(232218)),	-- Leggings of Ten Storms
						tokencost(231228, i(232221)),	-- Treads of Ten Storms

						-- DPS (Intellect)
						tokencost(231219, i(232203)),	-- Headdress of Ten Storms
						tokencost(231217, i(232201)),	-- Mantle of Ten Storms
						tokencost(231221, i(232206)),	-- Embrace of Ten Storms
						tokencost(231215, i(232199)),	-- Bindings of Ten Storms
						tokencost(231214, i(232204)),	-- Gloves of Ten Storms
						tokencost(231216, i(232200)),	-- Cord of Ten Storms
						tokencost(231218, i(232202)),	-- Kilt of Ten Storms
						tokencost(231220, i(232205)),	-- Boots of Ten Storms

						-- Healer
						tokencost(231203, i(232211)),	-- Helmet of Ten Storms
						tokencost(231201, i(232209)),	-- Epaulets of Ten Storms
						tokencost(231205, i(232214)),	-- Breastplate of Ten Storms
						tokencost(231199, i(232207)),	-- Bracers of Ten Storms
						tokencost(231198, i(232212)),	-- Gauntlets of Ten Storms
						tokencost(231200, i(232208)),	-- Belt of Ten Storms
						tokencost(231202, i(232210)),	-- Legplates of Ten Storms
						tokencost(231204, i(232213)),	-- Greaves of Ten Storms

						-- Tank
						tokencost(231211, i(232227)),	-- Faceguard of Ten Storms
						tokencost(231209, i(232225)),	-- Pauldrons of Ten Storms
						tokencost(231213, i(232230)),	-- Chestguard of Ten Storms
						tokencost(231207, i(232223)),	-- Wristguards of Ten Storms
						tokencost(231206, i(232228)),	-- Handguards of Ten Storms
						tokencost(231208, i(232224)),	-- Waistguard of Ten Storms
						tokencost(231210, i(232226)),	-- Legguards of Ten Storms
						tokencost(231212, i(232229)),	-- Sabatons of Ten Storms
					}),
					cl(WARLOCK, {
						-- DPS
						tokencost(231074, i(232235)),	-- Nemesis Skullcap
						tokencost(231077, i(232233)),	-- Nemesis Spaulders
						tokencost(231076, i(232238)),	-- Nemesis Robes
						tokencost(231079, i(232231)),	-- Nemesis Bracers
						tokencost(231073, i(232236)),	-- Nemesis Gloves
						tokencost(231078, i(232232)),	-- Nemesis Belt
						tokencost(231075, i(232234)),	-- Nemesis Leggings
						tokencost(231072, i(232237)),	-- Nemesis Boots

						-- Tank
						tokencost(231092, i(232243)),	-- Nemesis Cowl
						tokencost(231096, i(232241)),	-- Nemesis Shoulderpads
						tokencost(231095, i(232246)),	-- Nemesis Garb
						tokencost(231098, i(232239)),	-- Nemesis Wraps
						tokencost(231091, i(232244)),	-- Nemesis Handguards
						tokencost(231097, i(232240)),	-- Nemesis Cord
						tokencost(231093, i(232242)),	-- Nemesis Pants
						tokencost(231090, i(232245)),	-- Nemesis Treads
					}),
					cl(WARRIOR, {
						-- DPS
						tokencost(231035, i(232251)),	-- Helm of Wrath
						tokencost(231033, i(232249)),	-- Shoulders of Wrath
						tokencost(231038, i(232254)),	-- Breastplate of Wrath
						tokencost(231031, i(232247)),	-- Bracers of Wrath
						tokencost(231036, i(232252)),	-- Gauntlets of Wrath
						tokencost(231032, i(232248)),	-- Belt of Wrath
						tokencost(231034, i(232250)),	-- Legplates of Wrath
						tokencost(231037, i(232253)),	-- Greaves of Wrath

						-- Tank
						tokencost(231027, i(232259)),	-- Faceguard of Wrath
						tokencost(231025, i(232257)),	-- Pauldrons of Wrath
						tokencost(231030, i(232262)),	-- Chestguard of Wrath
						tokencost(231023, i(232255)),	-- Wristguards of Wrath
						tokencost(231028, i(232260)),	-- Handguards of Wrath
						tokencost(231024, i(232256)),	-- Waistguard of Wrath
						tokencost(231026, i(232258)),	-- Legguards of Wrath
						tokencost(231029, i(232261)),	-- Sabatons of Wrath
					}),
				}))),
				n(228429, {	-- Lucifron
					i(17329),	-- Hand of Lucifron
					i(227533),	-- Incandescent Gloves
					i(227756),	-- Molten Scaled Gloves
					i(227759),	-- Scorched Core Gloves
					i(228263),	-- Sorcerous Dagger
					i(228262),	-- Crimson Shocker
					i(228285),	-- Helm of the Lifegiver
					i(228247),	-- Choker of Enlightenment
					i(228239),	-- Robe of Volatile Power
					i(228127),	-- Wristguards of Instability
					i(228246),	-- Wristguards of Stability
					i(228240),	-- Flamewaker Legplates
					i(228244),	-- Manastorm Leggings
					i(228245),	-- Salamander Scale Pants
					i(228242),	-- Heavy Dark Iron Ring
					i(228243),	-- Ring of Spell Power
					i(16665, {	-- Tome of Tranquilizing Shot
						["timeline"] = { ADDED_1_0_1, REMOVED_3_0_8 },
						["classes"] = { HUNTER },
						-- #if BEFORE WRATH
						["recipeID"] = 19801,	-- Tranquilizing Shot
						-- #endif
					}),
				}),
				n(228430, {	-- Magmadar
					i(227534),	-- Incandescent Leggings
					i(227754),	-- Molten Scaled Leggings
					i(227763),	-- Scorched Core Leggings
					i(228248),	-- Earthshaker
					i(228146),	-- Magmadar's Left Claw
					i(228229),	-- Obsidian Edged Blade
					i(228252),	-- Striker's Mark
					i(228259),	-- Fire Runed Grimoire
					i(228249),	-- Medallion of Steadfast Might
					i(228258),	-- Deep Earth Spaulders
					i(228101),	-- Hide of the Behemoth
					i(228257),	-- Aged Core Leather Gloves
					i(228260),	-- Flameguard Gauntlets
					i(228256),	-- Mana Igniting Cord
					i(228254),	-- Magma Tempered Boots
					i(228253),	-- Sabatons of the Flamewalker
					i(228261),	-- Quick Strike Ring
					i(228255),	-- Talisman of Ephemeral Power
				}),
				n(228431, {	-- Gehennas
					i(17331),	-- Hand of Gehennas
					i(227536),	-- Incandescent Boots
					i(227757),	-- Molten Scaled Boots
					i(227765),	-- Scorched Core Boots
					i(228350),	-- Eskhandar's Right Claw
					i(228263),	-- Sorcerous Dagger
					i(228262),	-- Crimson Shocker
					i(228285),	-- Helm of the Lifegiver
					i(228239),	-- Robe of Volatile Power
					i(228127),	-- Wristguards of Instability
					i(228246),	-- Wristguards of Stability
					i(228240),	-- Flamewaker Legplates
					i(228244),	-- Manastorm Leggings
					i(228245),	-- Salamander Scale Pants
					i(228242),	-- Heavy Dark Iron Ring
					i(228243),	-- Ring of Spell Power
				}),
				n(228432, {	-- Garr
					-- #if NOT SEASON_OF_DISCOVERY
					i(18564, {	-- Bindings of the Windseeker (Right)
						["classes"] = ALL_CLASSES,
					}),
					-- #endif
					i(227532),	-- Incandescent Hood
					i(227755),	-- Molten Scaled Helm
					i(227764),	-- Scorched Core Helm
					i(228264),	-- Aurastone Hammer
					i(228265),	-- Brutality Blade
					i(228160),	-- Faithbringer
					i(228139),	-- Fist of the Firesworn
					i(228267),	-- Gutgore Ripper
					i(228229),	-- Obsidian Edged Blade
					i(228266),	-- Drillborer Disk
					i(228142),	-- Earth and Fire
					i(228259),	-- Fire Runed Grimoire
					i(228258),	-- Deep Earth Spaulders
					i(228257),	-- Aged Core Leather Gloves
					i(228260),	-- Flameguard Gauntlets
					i(228256),	-- Mana Igniting Cord
					i(228240),	-- Flamewaker Legplates
					i(228254),	-- Magma Tempered Boots
					i(228261),	-- Quick Strike Ring
					i(228255),	-- Talisman of Ephemeral Power
				}),
				n(228433, {	-- Baron Geddon
					-- #if NOT SEASON_OF_DISCOVERY
					i(18563, {	-- Bindings of the Windseeker (Left)
						["classes"] = ALL_CLASSES,
					}),
					-- #endif
					i(227530),	-- Incandescent Belt
					i(227751),	-- Molten Scaled Belt
					i(227761),	-- Scorched Core Belt
					i(228160),	-- Faithbringer
					i(228139),	-- Fist of the Firesworn
					i(228229),	-- Obsidian Edged Blade
					i(228142),	-- Earth and Fire
					i(228259),	-- Fire Runed Grimoire
					i(228258),	-- Deep Earth Spaulders
					i(228257),	-- Aged Core Leather Gloves
					i(228260),	-- Flameguard Gauntlets
					i(228256),	-- Mana Igniting Cord
					i(228240),	-- Flamewaker Legplates
					i(228254),	-- Magma Tempered Boots
					i(228261),	-- Quick Strike Ring
					i(228268),	-- Seal of the Archmagus
					i(228255),	-- Talisman of Ephemeral Power
				}),
				n(228434, {	-- Shazzrah
					i(17332),	-- Hand of Shazzrah
					i(227531),	-- Incandescent Bindings
					i(227750),	-- Molten Scaled Bindings
					i(227760),	-- Scorched Core Bindings
					i(228263),	-- Sorcerous Dagger
					i(228262),	-- Crimson Shocker
					i(228285),	-- Helm of the Lifegiver
					i(228239),	-- Robe of Volatile Power
					i(228127),	-- Wristguards of Instability
					i(228246),	-- Wristguards of Stability
					i(228240),	-- Flamewaker Legplates
					i(228244),	-- Manastorm Leggings
					i(228245),	-- Salamander Scale Pants
					i(228253),	-- Sabatons of the Flamewalker
					i(228242),	-- Heavy Dark Iron Ring
					i(228243),	-- Ring of Spell Power
				}),
				n(228436, {	-- Sulfuron Harbinger
					i(17330),	-- Hand of Sulfuron
					i(17203),	-- Sulfuron Ingot
					i(227532),	-- Incandescent Hood
					i(227755),	-- Molten Scaled Helm
					i(227764),	-- Scorched Core Helm
					i(227537),	-- Incandescent Shoulderpads
					i(227752),	-- Molten Scaled Shoulderpads
					i(227762),	-- Scorched Core Shoulderpads
					i(227535),	-- Incandescent Robe
					i(227758),	-- Molten Scaled Chest
					i(227766),	-- Scorched Core Chest
					i(227531),	-- Incandescent Bindings
					i(227750),	-- Molten Scaled Bindings
					i(227760),	-- Scorched Core Bindings
					i(227533),	-- Incandescent Gloves
					i(227756),	-- Molten Scaled Gloves
					i(227759),	-- Scorched Core Gloves
					i(227530),	-- Incandescent Belt
					i(227751),	-- Molten Scaled Belt
					i(227761),	-- Scorched Core Belt
					i(227534),	-- Incandescent Leggings
					i(227754),	-- Molten Scaled Leggings
					i(227763),	-- Scorched Core Leggings
					i(227536),	-- Incandescent Boots
					i(227757),	-- Molten Scaled Boots
					i(227765),	-- Scorched Core Boots
					i(228128),	-- Hammer of The Black Anvil
					i(228272),	-- Shadowstrike
					i(228273, {	-- Thunderstrike
						["description"] = "Use Shadowstrike to create this item.",
						["provider"] = { "i", 228272 },	-- Shadowstrike
					}),
					i(228263),	-- Sorcerous Dagger
					i(228262),	-- Crimson Shocker
					i(228285),	-- Helm of the Lifegiver
					i(228239),	-- Robe of Volatile Power
					i(228127),	-- Wristguards of Instability
					i(228246),	-- Wristguards of Stability
					i(228260),	-- Flameguard Gauntlets
					i(228244),	-- Manastorm Leggings
					i(228245),	-- Salamander Scale Pants
					i(228242),	-- Heavy Dark Iron Ring
					i(228243),	-- Ring of Spell Power
				}),
				n(228435, {	-- Golemagg the Incinerator
					i(17203),	-- Sulfuron Ingot
					i(227532),	-- Incandescent Hood
					i(227755),	-- Molten Scaled Helm
					i(227764),	-- Scorched Core Helm
					i(227537),	-- Incandescent Shoulderpads
					i(227752),	-- Molten Scaled Shoulderpads
					i(227762),	-- Scorched Core Shoulderpads
					i(227535),	-- Incandescent Robe
					i(227758),	-- Molten Scaled Chest
					i(227766),	-- Scorched Core Chest
					i(227531),	-- Incandescent Bindings
					i(227750),	-- Molten Scaled Bindings
					i(227760),	-- Scorched Core Bindings
					i(227533),	-- Incandescent Gloves
					i(227756),	-- Molten Scaled Gloves
					i(227759),	-- Scorched Core Gloves
					i(227530),	-- Incandescent Belt
					i(227751),	-- Molten Scaled Belt
					i(227761),	-- Scorched Core Belt
					i(227534),	-- Incandescent Leggings
					i(227754),	-- Molten Scaled Leggings
					i(227763),	-- Scorched Core Leggings
					i(227536),	-- Incandescent Boots
					i(227757),	-- Molten Scaled Boots
					i(227765),	-- Scorched Core Boots
					i(228269),	-- Azuresong Mageblade
					i(228270),	-- Blastershot Launcher
					i(228229),	-- Obsidian Edged Blade
					i(228271),	-- Staff of Dominance
					i(228294),	-- Malistar's Defender
					i(228259),	-- Fire Runed Grimoire
					i(228137),	-- Heart of Golemagg
					i(228147),	-- Magmadar's Horn
					i(228258),	-- Deep Earth Spaulders
					i(228257),	-- Aged Core Leather Gloves
					i(228260),	-- Flameguard Gauntlets
					i(228256),	-- Mana Igniting Cord
					i(228240),	-- Flamewaker Legplates
					i(228254),	-- Magma Tempered Boots
					i(228261),	-- Quick Strike Ring
					i(228255),	-- Talisman of Ephemeral Power
				}),
				n(228437, {	-- Majordomo Executus
					["provider"] = { "o", 179703 },	-- Cache of the Firelord
					["groups"] = {
						i(18703, {	-- Ancient Petrified Leaf
							["timeline"] = { ADDED_1_0_1, REMOVED_4_0_3 },
							["classes"] = { HUNTER },
							["lvl"] = 60,
						}),
						i(18646, {	-- The Eye of Divinity
							["description"] = "Reagent for the Splinter of Nordrassil. Used by Priests to create Benediction and Anathema.",
							["timeline"] = { ADDED_1_0_1, REMOVED_4_0_3 },
							["classes"] = { PRIEST },
						}),
						i(17203),	-- Sulfuron Ingot
						i(227532),	-- Incandescent Hood
						i(227755),	-- Molten Scaled Helm
						i(227764),	-- Scorched Core Helm
						i(227537),	-- Incandescent Shoulderpads [NOTE: This might not drop from here, according to WoWHead]
						i(227752),	-- Molten Scaled Shoulderpads [NOTE: This might not drop from here, according to WoWHead]
						i(227762),	-- Scorched Core Shoulderpads [NOTE: This might not drop from here, according to WoWHead]
						i(227535),	-- Incandescent Robe
						i(227758),	-- Molten Scaled Chest
						i(227766),	-- Scorched Core Chest
						i(227531),	-- Incandescent Bindings
						i(227750),	-- Molten Scaled Bindings
						i(227760),	-- Scorched Core Bindings
						i(227533),	-- Incandescent Gloves
						i(227756),	-- Molten Scaled Gloves
						i(227759),	-- Scorched Core Gloves
						i(227530),	-- Incandescent Belt
						i(227751),	-- Molten Scaled Belt
						i(227761),	-- Scorched Core Belt
						i(227534),	-- Incandescent Leggings
						i(227754),	-- Molten Scaled Leggings
						i(227763),	-- Scorched Core Leggings
						i(227536),	-- Incandescent Boots
						i(227757),	-- Molten Scaled Boots
						i(227765),	-- Scorched Core Boots
						i(228277),	-- Core Hound Tooth
						i(228278),	-- Hyperthermically Insulated Lava Dredger
						i(228280),	-- Fireproof Cloak
						i(228102),	-- Majordomo's Drape
						i(228279),	-- Fireguard Shoulders
						i(228283),	-- Wild Growth Spaulders
						i(228284),	-- Wristguards of True Flight
						i(228281),	-- Gloves of the Hypnotic Flame
						i(228282),	-- Sash of Whispered Secrets
						i(228275),	-- Core Forged Greaves
						i(228274),	-- Cauterizing Band
					},
				}),
				n(228438, {	-- Ragnaros
					ach(686),	-- Molten Core
					i(227728),	-- Eye of Sulfuras
					i(17203),	-- Sulfuron Ingot
					i(227532),	-- Incandescent Hood
					i(227755),	-- Molten Scaled Helm
					i(227764),	-- Scorched Core Helm
					i(227537),	-- Incandescent Shoulderpads
					i(227752),	-- Molten Scaled Shoulderpads
					i(227762),	-- Scorched Core Shoulderpads
					i(227535),	-- Incandescent Robe
					i(227758),	-- Molten Scaled Chest
					i(227766),	-- Scorched Core Chest
					i(227531),	-- Incandescent Bindings
					i(227750),	-- Molten Scaled Bindings
					i(227760),	-- Scorched Core Bindings
					i(227533),	-- Incandescent Gloves
					i(227756),	-- Molten Scaled Gloves
					i(227759),	-- Scorched Core Gloves
					i(227530),	-- Incandescent Belt
					i(227751),	-- Molten Scaled Belt
					i(227761),	-- Scorched Core Belt
					i(227534),	-- Incandescent Leggings
					i(227754),	-- Molten Scaled Leggings
					i(227763),	-- Scorched Core Leggings
					i(227536),	-- Incandescent Boots
					i(227757),	-- Molten Scaled Boots
					i(227765),	-- Scorched Core Boots
					i(228288),	-- Bonereaver's Edge
					i(228145),	-- Magmadar's Right Claw
					i(228296),	-- Perdition's Blade
					i(228299),	-- Spinal Reaper
					-- i(228294),	-- Malistar's Defender
					i(228291),	-- Crown of Destruction
					i(228289),	-- Choker of the Firelord
					i(228290),	-- Cloak of the Shrouded Mists
					i(228292),	-- Dragon's Blood Cape
					i(228100),	-- Drape of the Fire Lord
					i(228295),	-- Onslaught Girdle
					i(228286),	-- Band of Accuria
					i(228287),	-- Band of Sulfuras
					i(228293),	-- Essence of the Pure Flame
					i(228297),	-- Shard of the Flame
				}),
				n(227939, {	-- The Molten Core
					["description"] = "Only available on Molten Heat difficulty.\n\nCan drop loot from any other Molten Core boss. It has no unique drops of its own.",
				}),
				spell(458843, {	-- Molten Heat [Heat Level 3]
					["description"] = "You can opt into Heat Level 3 by speaking to Duke Hydraxis. Doing so will drop 'Molten' varients of the weapons that have a neat molten appearance despite providing no difference in quality. (Cosmetic only!)",
					["groups"] = {
						i(228462, {	-- Aurastone Hammer [Molten]
							["cr"] = 228432,	-- Garr
						}),
						i(228517, {	-- Azuresong Mageblade [Molten]
							["cr"] = 228435,	-- Golemagg the Incinerator
						}),
						i(228461, {	-- Bonereaver's Edge [Molten]
							["providers"] = {
								{ "n", 228437 },	-- Majordomo Executus
								{ "o", 179703 },	-- Cache of the Firelord
								{ "n", 228438 },	-- Ragnaros
							},
						}),
						i(228506, {	-- Brutality Blade [Molten]
							["cr"] = 228432,	-- Garr
						}),
						i(228701, {	-- Core Hound Tooth [Molten]
							["providers"] = {
								{ "n", 228437 },	-- Majordomo Executus
								{ "o", 179703 },	-- Cache of the Firelord
							},
						}),
						i(228702, {	-- Drillborer Disk [Molten]
							["cr"] = 228432,	-- Garr
						}),
						i(228463, {	-- Earthshaker [Molten]
							["cr"] = 228430,	-- Magmadar
						}),
						i(229379, {	-- Eskhandar's Right Claw [Molten]
							["cr"] = 228431,	-- Gehennas
						}),
						i(229373, {	-- Faithbringer [Molten]
							["crs"] = {
								228432,	-- Garr
								228433,	-- Baron Geddon
							},
						}),
						i(229374, {	-- Fist of the Firesworn [Molten]
							["crs"] = {
								228432,	-- Garr
								228433,	-- Baron Geddon
							},
						}),
						i(229372, {	-- Gutgore Ripper [Molten]
							["cr"] = 228432,	-- Garr
						}),
						i(228508, {	-- Hammer of The Black Anvil [Molten]
							["cr"] = 228436,	-- Sulfuron Harbinger
						}),
						i(229377, {	-- Magmadar's Left Claw [Molten]
							["cr"] = 228430,	-- Magmadar
						}),
						i(228459, {	-- Obsidian Edged Blade [Molten]
							["crs"] = {
								228430,	-- Magmadar
								228432,	-- Garr
								228433,	-- Baron Geddon
								228435,	-- Golemagg the Incinerator
							},
						}),
						i(228511, {	-- Perdition's Blade [Molten]
							["cr"] = 228438,	-- Ragnaros
						}),
						i(229380, {	-- Shadowstrike [Molten]
							["cr"] = 228436,	-- Sulfuron Harbinger
						}),
						i(229376, {	-- Sorcerous Dagger [Molten]
							["crs"] = {
								228429,	-- Lucifron
								228434,	-- Shazzrah
								228431,	-- Gehennas
								228436,	-- Sulfuron Harbinger
							},
						}),
						i(228460, {	-- Spinal Reaper [Molten]
							["cr"] = 228438,	-- Ragnaros
						}),
						i(228922, {	-- Staff of Dominance [Molten]
							["cr"] = 228435,	-- Golemagg the Incinerator
						}),
						i(228519, {	-- Striker's Mark [Molten]
							["cr"] = 228430,	-- Magmadar
						}),
						i(229381, {	-- Thunderstrike [Molten]
							["description"] = "Use Shadowstrike to create this item.",
							["provider"] = { "i", 229380 },	-- Shadowstrike [Molten]
						}),
					},
				}),
			}))),
			-- #endif
		},
	}),
}));
