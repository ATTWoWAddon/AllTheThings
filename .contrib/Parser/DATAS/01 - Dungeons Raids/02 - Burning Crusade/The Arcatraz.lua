-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(254, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {	-- The Arcatraz
		["lore"] = "The Arcatraz is a prison where the naaru jailed the most terrifying and dangerous creatures they encountered on their journeys. When Kael'thas and his followers took the Keep, he sent a warden and guards to the Arcatraz. Kael's blood elves, however, were corruptible and the prisoners have begun to break free...",
		-- #if BEFORE MOP
		["zone-text-areaID"] = 3846,	-- The Arcatraz
		-- #endif
		["coord"] = { 74.42, 57.72, NETHERSTORM },	-- The Arcatraz, Netherstorm
		["maps"] = {
			TEMPEST_KEEP_ARCATRAZ,	-- Stasis Block: Trion
			270,	-- Stasis Block: Maximus
			271,	-- Containment Core
		},
		-- #if BEFORE CATA
		["cost"] = { { "i", 31084, 1 } },	-- Key to the Arcatraz
		-- #endif
		["lvl"] = lvlsquish(65, 65, 25),
		["groups"] = {
			n(QUESTS, {
				q(10706, {	-- A Mysterious Portent
					["sourceQuest"] = 10705,	-- Seer Udalo
					["qg"] = 21962,	-- Udalo
					["lvl"] = lvlsquish(68, 68, 25),
				}),
				q(10882, {	-- Harbinger of Doom
					["sourceQuest"] = 10704,	-- How to Break Into the Arcatraz
					["qg"] = 18481,	-- A'dal
					["coord"] = { 54.0, 44.8, SHATTRATH_CITY },
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] =
						-- #if AFTER WRATH
						lvlsquish(67, 67, 25),
						-- #else
						lvlsquish(70, 70, 25),
						-- #endif
					["groups"] = {
						objective(1, {	-- Harbinger Skyriss slain
							["provider"] = { "n", 20912 },	-- Harbinger Skyriss
						}),
						i(31747),	-- Potent Sha'tari Pendant
						i(31749),	-- A'dal's Recovery Necklace
						i(31748),	-- Shattrath Choker of Power
					},
				}),
				q(29675, {	-- Hey There Dalliah
					["sourceQuest"] = 29674,	-- Unbound Darkness
					["qg"] = 18481,	-- A'dal
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(67, 67, 25),
					["groups"] = {
						objective(1, {	-- Wrath-Scryer Soccothrates slain
							["provider"] = { "n", 20886 },	-- Wrath-Scryer Soccothrates
						}),
						objective(2, {	-- Dalliah the Doomsayer slain
							["provider"] = { "n", 20885 },	-- Dalliah the Doomsayer
						}),
					},
				}),
				q(10704, {	-- How to Break Into the Arcatraz
					["sourceQuest"] = 10280,	-- Special Delivery to Shattrath City
					["qg"] = 18481,	-- A'dal
					["coord"] = { 53.7, 44.6, SHATTRATH_CITY },
					["maps"] = { TEMPEST_KEEP_BOTANICA, TEMPEST_KEEP_MECHANAR },
					["lvl"] =
						-- #if AFTER WRATH
						lvlsquish(67, 67, 25),
						-- #else
						lvlsquish(70, 70, 25),
						-- #endif
					["groups"] = {
						objective(1, {	-- 0/1 Top Shard of the Arcatraz Key
							["provider"] = { "i", 31085 },	-- Top Shard of the Arcatraz Key
						}),
						objective(2, {	-- 0/1 Bottom Shard of the Arcatraz Key
							["provider"] = { "i", 31086 },	-- Bottom Shard of the Arcatraz Key
						}),
						i(31084, {	-- Key to the Arcatraz
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(31461),	-- A'dal's Gift
						i(31464),	-- Naaru Belt of Precision
						i(31462),	-- Shattrath's Champion Belt
						i(31465),	-- Sha'tari Achorite's Cloak
						i(31460),	-- Sha'tari Vindicator's Waistguard
					},
				}),
				q(29681, {	-- Maximum Security Breakout
					["sourceQuest"] = 29675,	-- Hey There Dalliah
					["qg"] = 18481,	-- A'dal
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(67, 67, 25),
					["groups"] = {
						objective(1, {	-- Harbinger Skyriss slain
							["provider"] = { "n", 20912 },	-- Harbinger Skyriss
						}),
						i(31749),	-- A'dal's Recovery Necklace
						i(31747),	-- Potent Sha'tari Pendant
						i(31748),	-- Shattrath Choker of Power
					},
				}),
				q(10705, {	-- Seer Udalo
					["sourceQuest"] = 10628,	-- Akama
					["qg"] = 21700,	-- Akama
					["coord"] = { 58.1, 48.1, SHADOWMOON_VALLEY },
					["lvl"] = lvlsquish(68, 68, 25),
				}),
				q(10886, {	-- Trial of the Naaru: Tenacity
					["sourceQuest"] = 10883,	-- The Tempest Key
					["qg"] = 18481,	-- A'dal
					["coord"] = { 53.7, 44.6, SHATTRATH_CITY },
					["lvl"] = lvlsquish(70, 70, 25),
				}),
				q(29674, {	-- Unbound Darkness
					["qg"] = 18481,	-- A'dal
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(67, 67, 25),
					["groups"] = {
						objective(1, {	-- Zereketh the Unbound slain
							["provider"] = { "n", 20870 },	-- Zereketh the Unbound
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(32902),	-- Bottled Nethergon Energy
				i(32905),	-- Bottled Nethergon Vapor
				i(29460),	-- Ethereum Prison Key
				i(22556, {	-- Formula: Enchant 2H Weapon - Major Agility (RECIPE!)
					["cr"] = 20880,	-- Eredar Deathbringer
				}),
				i(21905, {	-- Pattern: Arcanoweave Bracers (RECIPE!)
					["cr"] = 20869,	-- Arcatraz Sentinel
				}),
				i(29672, {	-- Pattern: Flame Armor Kit (RECIPE!)
					["timeline"] = { REMOVED_5_0_4 },
					["cr"] = 20898,	-- Gargantuan Abyssal
				}),
				i(23606, {	-- Plans: Felsteel Leggings
					["cr"] = 20900,	-- Unchained Doombringer
				}),
				i(24488, {	-- Third Key Fragment
					["providers"] = {
						{ "o", 182198 },	-- Arcane Container
						{ "n",  22892 },	-- Third Fragment Guardian
					},
					["coord"] = { 59.0, 24.8, 270 },
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(548, {	-- Zereketh the Unbound
					["creatureID"] = 20870,
					["groups"] = {
						-- #if AFTER 7.3.5
						i(28415),	-- Hood of Oblivion (7.3.5 - Moved from Harbinger Skyriss)
						-- #endif
						i(28374),	-- Mana-Sphere Shoulderguards
						i(28373),	-- Cloak of Scintillating Auras
						-- #if AFTER 7.3.5
						i(28396),	-- Gloves of the Unbound (7.3.5 - Moved from Harbinger Skyriss)
						-- #endif
						i(28375),	-- Rubidium War-Girdle
						i(28384),	-- Outland Striders (7.3.5 - Also added to Dalliah, stayed on Zereketh as well.)
						-- #if BEFORE MOP
						i(28372, {	-- Idol of Feral Shadows
							["timeline"] = { REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				e(549, {	-- Dalliah the Doomsayer
					["creatureID"] = 20885,
					["groups"] = {
						-- #if AFTER 7.3.5
						i(28416),	-- Hungering Spineripper (7.3.5 - Moved from Harbinger Skyriss)
						-- #endif
						i(28387),	-- Lamp of Peaceful Repose
						i(28386),	-- Nether Core's Control Rod
						i(28392),	-- Reflex Blades
						-- #if AFTER 7.3.5
						i(28414),	-- Helm of Assassination (7.3.5 - Moved from Harbinger Skyriss)
						-- #endif
						i(28390),	-- Thatia's Self-Correcting Gauntlets
						-- #if BEFORE 7.3.5
						i(28391),	-- Worldfire Chestguard (7.3.5 - Moved to Wrath-Scryer Soccothrates)
						-- #endif
						-- #if AFTER 7.3.5
						i(28384),	-- Outland Striders (7.3.5 - Originally only dropped from Zereketh)
						-- #endif
						i(24308),	-- Pattern: Whitemend Pants (RECIPE!)
					},
				}),
				e(550, {	-- Wrath-Scryer Soccothrates
					["creatureID"] = 20886,
					["groups"] = {
						i(28397),	-- Emberhawk Crossbow
						i(28393),	-- Warmaul of Infused Light
						-- #if AFTER 7.3.5
						i(28413),	-- Hallowed Crown (7.3.5 - Moved from Harbinger Skyriss)
						-- #endif
						-- #if AFTER 7.3.5
						i(28403),	-- Doomplate Chestguard  (7.3.5 - Moved from Harbinger Skyriss)
						i(28391),	-- Worldfire Chestguard (7.3.5 - Moved to Wrath-Scryer Soccothrates)
						-- #endif
						-- #if BEFORE 7.3.5
						i(28396),	-- Gloves of the Unbound (7.3.5 - Moved to Zereketh)
						-- #endif
						i(28398),	-- The Sleeper's Cord
						i(28394),	-- Ryngo's Band of Ingenuity
					},
				}),
				e(551, {	-- Harbinger Skyriss
					["creatureID"] = 20912,
					["groups"] = {
						ach(660),	-- The Arcatraz
						-- #if BEFORE 7.3.5
						i(28416),	-- Hungering Spineripper (7.3.5 - Moved to Dalliah)
						-- #endif
						-- #if AFTER 7.3.5
						i(29360),	-- Vileblade of the Betrayer
						-- #endif
						i(28412),	-- Lamp of Peaceful Radiance
						-- #if BEFORE 7.3.5
						i(28413),	-- Hallowed Crown (7.3.5 - Moved to Wrath-Scryer Soccothrates)
						i(28414),	-- Helm of Assassination (7.3.5 - Moved to Dalliah)
						i(28415),	-- Hood of Oblivion (7.3.5 - Moved to Zereketh)
						-- #endif
						i(28419),	-- Choker of Fluid Thought
						i(28205),	-- Breastplate of the Bold
						-- #if BEFORE 7.3.5
						i(28403),	-- Doomplate Chestguard  (7.3.5 - Moved to Wrath-Scryer Soccothrates)
						-- #endif
						i(28231),	-- Tidefury Chestpiece
						-- #if AFTER 7.3.5
						i(29252),	-- Bracers of Dignity
						i(29241),	-- Belt of Depravity
						i(29248),	-- Shadowstep Striders
						-- #endif
						i(28406),	-- Sigil-Laced Boots
						i(28407),	-- Elementium Band of the Sentry
						i(28418),	-- Shiffar's Nexus-Horn
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				["description"] = "You need to have a key to the instance in order to access this mode.",
				["cost"] = { { "i", 30634, 1 } },	-- Warpforged Key
				-- #endif
				["lvl"] = lvlsquish(70, 70, 30),
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							20870,	-- Zereketh the Unbound
							20885,	-- Dalliah the Doomsayer
							20886,	-- Wrath-Scryer Soccothrates
							20912,	-- Harbinger Skyriss
						},
						["groups"] = {
							-- #if BEFORE CATA
							BADGE_OF_JUSTICE,
							-- #endif
							i(30582),	-- Deadly Fire Opal
							i(30581),	-- Durable Fire Opal
							i(30575),	-- Nimble Fire Opal
						},
					}),
					e(548, {	-- Zereketh the Unbound
						["creatureID"] = 20870,
						["groups"] = {
							-- #if AFTER 7.3.5
							i(28415),	-- Hood of Oblivion (7.3.5 - Moved from Harbinger Skyriss)
							-- #endif
							i(28374),	-- Mana-Sphere Shoulderguards
							i(28373),	-- Cloak of Scintillating Auras
							-- #if AFTER 7.3.5
							i(28396),	-- Gloves of the Unbound (7.3.5 - Moved from Harbinger Skyriss)
							-- #endif
							i(28375),	-- Rubidium War-Girdle
							i(28384),	-- Outland Striders (7.3.5 - Also added to Dalliah, stayed on Zereketh as well.)
							-- #if BEFORE MOP
							i(28372, {	-- Idol of Feral Shadows
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
						},
					}),
					e(549, {	-- Dalliah the Doomsayer
						["creatureID"] = 20885,
						["groups"] = {
							-- #if AFTER 7.3.5
							i(28416),	-- Hungering Spineripper (7.3.5 - Moved from Harbinger Skyriss)
							-- #endif
							i(28387),	-- Lamp of Peaceful Repose
							i(28386),	-- Nether Core's Control Rod
							i(28392),	-- Reflex Blades
							-- #if AFTER 7.3.5
							i(28414),	-- Helm of Assassination (7.3.5 - Moved from Harbinger Skyriss)
							-- #endif
							i(28390),	-- Thatia's Self-Correcting Gauntlets
							-- #if BEFORE 7.3.5
							i(28391),	-- Worldfire Chestguard (7.3.5 - Moved to Wrath-Scryer Soccothrates)
							-- #endif
							-- #if AFTER 7.3.5
							i(28384),	-- Outland Striders (7.3.5 - Originally only dropped from Zereketh)
							-- #endif
							i(24308),	-- Pattern: Whitemend Pants (RECIPE!)
						},
					}),
					e(550, {	-- Wrath-Scryer Soccothrates
						["creatureID"] = 20886,
						["groups"] = {
							i(28397),	-- Emberhawk Crossbow
							i(28393),	-- Warmaul of Infused Light
							-- #if AFTER 7.3.5
							i(28413),	-- Hallowed Crown (7.3.5 - Moved from Harbinger Skyriss)
							-- #endif
							-- #if AFTER 7.3.5
							i(28403),	-- Doomplate Chestguard  (7.3.5 - Moved from Harbinger Skyriss)
							i(28391),	-- Worldfire Chestguard (7.3.5 - Moved to Wrath-Scryer Soccothrates)
							-- #endif
							-- #if BEFORE 7.3.5
							i(28396),	-- Gloves of the Unbound (7.3.5 - Moved to Zereketh)
							-- #endif
							i(28398),	-- The Sleeper's Cord
							i(28394),	-- Ryngo's Band of Ingenuity
						},
					}),
					e(551, {	-- Harbinger Skyriss
						["creatureID"] = 20912,
						["groups"] = {
							ach(681),	-- Heroic: The Arcatraz
							ach(5081, {	-- Heroic: The Arcatraz Guild Run
								["timeline"] = { ADDED_4_0_3 },
							}),
							objective(1, {	-- Millhouse Manastorm Rescued
								["provider"] = { "n", 20977 },	-- Millhouse Manastorm
								["questID"] = 10886,	-- Trial of the Naaru: Tenacity
							}),
							-- #if BEFORE 7.3.5
							i(28416),	-- Hungering Spineripper (7.3.5 - Moved to Dalliah)
							-- #endif
							i(29360),	-- Vileblade of the Betrayer
							i(28412),	-- Lamp of Peaceful Radiance
							-- #if BEFORE 7.3.5
							i(28413),	-- Hallowed Crown (7.3.5 - Moved to Wrath-Scryer Soccothrates)
							i(28414),	-- Helm of Assassination (7.3.5 - Moved to Dalliah)
							i(28415),	-- Hood of Oblivion (7.3.5 - Moved to Zereketh)
							-- #endif
							i(28419),	-- Choker of Fluid Thought
							i(28205),	-- Breastplate of the Bold
							-- #if BEFORE 7.3.5
							i(28403),	-- Doomplate Chestguard  (7.3.5 - Moved to Wrath-Scryer Soccothrates)
							-- #endif
							i(28231),	-- Tidefury Chestpiece
							i(29252),	-- Bracers of Dignity
							i(29241),	-- Belt of Depravity
							i(29248),	-- Shadowstep Striders
							i(28406),	-- Sigil-Laced Boots
							i(28407),	-- Elementium Band of the Sentry
							i(28418),	-- Shiffar's Nexus-Horn
							applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
							i(33861),	-- The Scroll of Skyriss
						},
					}),
				},
			}),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(254, {
		q(35535),	-- The Arcatraz Reward Quest - Normal completion
		q(35538),	-- The Arcatraz Reward Quest - Heroic completion
	}),
})));
