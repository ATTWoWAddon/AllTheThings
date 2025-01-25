-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local VAULT_OF_THE_INCARNATES = 2390;
local SymRaidVault = function(ClassID, DiffID)
	return {{"sub","instance_tier",1200,DiffID,ClassID}};
end
local function bo(questID, isWeekly)
    return { ["questID"] = questID, ["isWeekly"] = isWeekly };
end

local ELEMENTAL_OVERFLOW = 2118;
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(PRIMAL_STORMS, {
		["maps"] = { VALDRAKKEN },
		["g"] = {
			-- Storm-type based Achievement headers
			n(ACHIEVEMENTS, {
				n(FIRESTORMS, {
					ach(16487, {	-- Firestorms in Thaldraszus
						["maps"] = { THALDRASZUS },
					}),
					ach(16482, {	-- Firestorms in The Azure Span
						["maps"] = { THE_AZURE_SPAN },
					}),
					ach(16478, {	-- Firestorms in The Ohn'ahran Plains
						["maps"] = { OHNAHRAN_PLAINS },
					}),
					ach(16466, {	-- Firestorms in The Waking Shores
						["maps"] = { THE_WAKING_SHORES },
					}),
				}),
				n(SANDSTORMS, {
					ach(16486, {	-- Sandstorms in Thaldraszus
						["maps"] = { THALDRASZUS },
					}),
					ach(16481, {	-- Sandstorms in The Azure Span
						["maps"] = { THE_AZURE_SPAN },
					}),
					ach(16477, {	-- Sandstorms in The Ohn'ahran Plains
						["maps"] = { OHNAHRAN_PLAINS },
					}),
					ach(16465, {	-- Sandstorms in The Waking Shores
						["maps"] = { THE_WAKING_SHORES },
					}),
				}),
				n(SNOWSTORMS, {
					ach(16488, {	-- Snowstorms in Thaldraszus
						["maps"] = { THALDRASZUS },
					}),
					ach(16483, {	-- Snowstorms in The Azure Span
						["maps"] = { THE_AZURE_SPAN },
					}),
					ach(16479, {	-- Snowstorms in The Ohn'ahran Plains
						["maps"] = { OHNAHRAN_PLAINS },
					}),
					ach(16467, {	-- Snowstorms in The Waking Shores
						["maps"] = { THE_WAKING_SHORES },
					}),
				}),
				n(THUNDERSTORMS, {
					ach(16485, {	-- Thunderstorms in Thaldraszus
						["maps"] = { THALDRASZUS },
					}),
					ach(16480, {	-- Thunderstorms in The Azure Span
						["maps"] = { THE_AZURE_SPAN },
					}),
					ach(16475, {	-- Thunderstorms in The Ohn'ahran Plains
						["maps"] = { OHNAHRAN_PLAINS },
					}),
					ach(16463, {	-- Thunderstorms in The Waking Shores
						["maps"] = { THE_WAKING_SHORES },
					}),
				}),
			}),
			n(ACHIEVEMENTS, {
				ach(16489, {	-- Chasing Storms in Thaldraszus
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						16487,	-- Firestorms in Thaldraszus
						16486,	-- Sandstorms in Thaldraszus
						16488,	-- Snowstorms in Thaldraszus
						16485,	-- Thunderstorms in Thaldraszus
					}},
					["maps"] = { THALDRASZUS },
				}),
				ach(16484, {	-- Chasing Storms in The Azure Span
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						16482,	-- Firestorms in The Azure Span
						16481,	-- Sandstorms in The Azure Span
						16483,	-- Snowstorms in The Azure Span
						16480,	-- Thunderstorms in The Azure Span
					}},
					["maps"] = { THE_AZURE_SPAN },
				}),
				ach(16476, {	-- Chasing Storms in The Ohn'ahran Plains
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						16478,	-- Firestorms in The Ohn'ahran Plains
						16477,	-- Sandstorms in The Ohn'ahran Plains
						16479,	-- Snowstorms in The Ohn'ahran Plains
						16475,	-- Thunderstorms in The Ohn'ahran Plains
					}},
					["maps"] = { OHNAHRAN_PLAINS },
				}),
				ach(16468, {	-- Chasing Storms in The Waking Shores
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						16466,	-- Firestorms in The Waking Shores
						16465,	-- Sandstorms in The Waking Shores
						16467,	-- Snowstorms in The Waking Shores
						16463,	-- Thunderstorms in The Waking Shores
					}},
					["maps"] = { THE_WAKING_SHORES },
				}),
				ach(16498, {	-- Elemental Overflow
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS },
				}),
				ach(16499, {	-- Elemental Overflowing
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS },
				}),
				ach(16500, {	-- Elemental Overload
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS },
				}),
				ach(16492, {	-- Into the Storm
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						16500,	-- Elemental Overload
						16490,	-- Storm Chaser
						16461,	-- Stormed Off
						16502,	-- Storming the Runway
					}},
					["g"] = {
						i(192774, {	-- Coralscale Salamanther (MOUNT!)
							["timeline"] = { ADDED_10_2_6 },
						}),
					},
				}),
				ach(16490, {	-- Storm Chaser
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						16489,	-- Chasing Storms in Thaldraszus
						16484,	-- Chasing Storms in The Azure Span
						16476,	-- Chasing Storms in Ohn'ahran Plains
						16468,	-- Chasing Storms in The Waking Shores
					}},
				}),
				ach(16461, {	-- Stormed Off
					["g"] = {
						crit(55461, {
							["_npcs"] = { 193648 },	-- Infernum
						}),
						crit(55462, {
							["_npcs"] = { 193645 },	-- Crystalus
						}),
						crit(55463, {
							["_npcs"] = { 193644 },	-- Bouldron
						}),
						crit(55464, {
							["_npcs"] = { 193647 },	-- Karantun
						}),
						crit(55465, {
							["_npcs"] = { 193686 },	-- Neela Firebane
						}),
						crit(55466, {
							["_npcs"] = { 193682 },	-- Rouen Icewind
						}),
						crit(55467, {
							["_npcs"] = { 193680 },	-- Zurgaz Corebreaker
						}),
						crit(55468, {
							["_npcs"] = { 193684 },	-- Pipspark Thundersnap
						}),
						crit(55469, {
							["_npcs"] = { 193652 },	-- Grizzlerock
						}),
						crit(55470, {
							["_npcs"] = { 193674 },	-- Voraazka
						}),
						crit(55471, {
							["_npcs"] = { 193675 },	-- Kain Firebrand
						}),
						crit(55472, {
							["_npcs"] = { 193677 },	-- Maeleera <First Iceblade>
						}),
						crit(55473, {
							["_npcs"] = { 193678 },	-- Fieraan <Second Iceblade>
						}),
						crit(55474, {
							["_npcs"] = { 193679 },	-- Leerain <Third Iceblade>
						}),
						crit(55475, {
							["_npcs"] = { 193653 },	-- Gaelzion <Progeny of Air>
						}),
						crit(55476, {
							["_npcs"] = { 193654 },	-- Gravlion <Progeny of Earth>
						}),
						crit(55477, {
							["_npcs"] = { 193650 },	-- Emblazion <Progeny of Fire>
						}),
						crit(55478, {
							["_npcs"] = { 193655 },	-- Frozion <Progeny of Water>
						}),
					},
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS },
				}),
				ach(16502),	-- Storming the Runway
			}),
			n(COMMON_BOSS_DROPS, {
				["description"] = "These drops appear to be available from any Rare (Primal or not) which spawns within an area affected by a Primal Storm.",
				["crs"] = {
					193644,	-- Bouldron
					193645,	-- Crystalus
					193650,	-- Emblazion <Progeny of Fire>
					193678,	-- Fieraan <Second Iceblade>
					193655,	-- Frozion <Progeny of Water>
					193653,	-- Gaelzion <Progeny of Air>
					193654,	-- Gravlion <Progeny of Earth>
					193652,	-- Grizzlerock
					193648,	-- Infernum
					193675,	-- Kain Firebrand
					193647,	-- Karantun
					193679,	-- Leerain <Third Iceblade>
					193677,	-- Maeleera <First Iceblade>
					193686,	-- Neela Firebane
					193682,	-- Rouen Icewind
					193684,	-- Pipspark Thundersnap
					193674,	-- Voraazka
					193680,	-- Zurgaz Corebreaker
				},
				["maps"] = {
					OHNAHRAN_PLAINS,
					THALDRASZUS,
					THE_AZURE_SPAN,
					THE_WAKING_SHORES,
				},
				["g"] = {
					i(194641),	-- Design: Elemental Lariat (RECIPE!)
					i(200199),	-- Elements' Burden
					i(200294),	-- Primal Chain Hauberk
					i(200198),	-- Primalist Prison (TOY!)
					-- Enchanting knowledge drops (one-time)
					i(199839),	-- Dimmed Primeval Water
					i(199836),	-- Dimmed Primeval Fire
					i(199837),	-- Dimmed Primeval Earth
					i(199838),	-- Dimmed Primeval Storm
				},
			}),
			n(HEIRLOOMS, {
				["maps"] = {
					OHNAHRAN_PLAINS,
					THALDRASZUS,
					THE_AZURE_SPAN,
					THE_WAKING_SHORES,
				},
				["g"] = {
					i(199686, {	-- Unstable Elemental Confluence
						["cost"] = {
							{ "i", 199837, 1 },	-- 1x Dimmed Primeval Earth
							{ "i", 199836, 1 },	-- 1x Dimmed Primeval Fire
							{ "i", 199838, 1 },	-- 1x Dimmed Primeval Storm
							{ "i", 199839, 1 },	-- 1x Dimmed Primeval Water
						},
					}),
				},
			}),
			petbattle(filter(BATTLE_PETS, {
				pet(3384, {	-- Storm-Touched Bluefeather (PET!)
					["maps"] = {
						THALDRASZUS,
						-- #IF BEFORE 10.2.6
						-- Blizzard removed from spawning inside the sub-zone
						-- ref: https://us.forums.blizzard.com/en/wow/t/disable-primalist-future-primal-storm-chance/1824419/4
						THE_PRIMALIST_FUTURE
						-- #ENDIF
					},
				}),
				pet(3354, {	-- Storm-Touched Ottuk (PET!)
					["maps"] = { THE_AZURE_SPAN },
				}),
				pet(3385, {	-- Storm-Touched Stomper (PET!)
					["maps"] = { THE_WAKING_SHORES },
				}),
				pet(3329, {	-- Storm-Touched Timbertooth (PET!)
					["maps"] = { OHNAHRAN_PLAINS },
				}),
			})),
			n(RARES, sharedData({
				["coords"] = {
					-- possible Primal Storm spawn locations
					{ 26.8, 75.4, THE_WAKING_SHORES },
					{ 29.6, 53.8, THE_WAKING_SHORES },
					{ 63.0, 26.2, THE_WAKING_SHORES },
					{ 36.1, 36.1, OHNAHRAN_PLAINS },
					{ 11.9, 37.0, THE_AZURE_SPAN },
					{ 48.6, 25.2, THE_AZURE_SPAN },
					{ 58.8, 68.4, THE_AZURE_SPAN },
					{ 60.7, 56.3, THALDRASZUS },
					-- #IF BEFORE 10.2.6
					-- Blizzard removed from spawning inside the sub-zone
					{ 53.4, 26.2, THE_PRIMALIST_FUTURE },
					-- #ENDIF
				},
			},{
				n(FIRESTORMS, sharedData({
					["isDaily"] = true,
				},{
					n(COMMON_BOSS_DROPS, sharedData({
						["crs"] = {
							193650,	-- Emblazion <Progeny of Fire>
							193648,	-- Infernum
							193675,	-- Kain Firebrand
							193686,	-- Neela Firebane
						},
					},{
						i(200913),	-- Formula: Illusion: Primal Fire (RECIPE!)
					})),
					n(193650, {	-- Emblazion <Progeny of Fire>
						["questID"] = 73991,
						["g"] = {
							bo(69955, true),
							i(200307),	-- Viciously Hooked Cleaver
						},
					}),
					n(193648, {	-- Infernum
						["questID"] = 74005,
						["g"] = {
							bo(69954, true),
							i(200150),	-- Infernum's Furnace
						},
					}),
					n(193675, {	-- Kain Firebrand
						["questID"] = 74006,
						["g"] = {
							bo(69970, true),
							i(200155),	-- Haphazardly Welded Protector
						},
					}),
					n(193686, {	-- Neela Firebane
						["questID"] = 74016,
						["g"] = {
							bo(69975, true),
							i(200181),	-- Blade of Blazing Torment
						},
					}),
				})),
				n(SANDSTORMS, sharedData({
					["isDaily"] = true,
				},{
					n(COMMON_BOSS_DROPS, sharedData({
						["crs"] = {
							193644,	-- Bouldron
							193654,	-- Gravlion <Progeny of Earth>
							193652,	-- Grizzlerock
							193680,	-- Zurgaz Corebreaker
						},
					},{
						i(200912),	-- Formula: Illusion: Primal Earth (RECIPE!)
					})),
					n(193644, {	-- Bouldron
						["questID"] = 73986,
						["g"] = {
							bo(69951, true),
							i(200231),	-- Flaming Stonescale Bulwark
						},
					}),
					n(193654, {	-- Gravlion <Progeny of Earth>
						["questID"] = 73998,
						["g"] = {
							bo(69960, true),
						},
					}),
					n(193652, {	-- Grizzlerock
						["questID"] = 73999,
						["g"] = {
							bo(69956, true),
							i(200145),	-- Hilted Monolith
						},
					}),
					n(193680, {	-- Zurgaz Corebreaker
						["questID"] = 74039,
						["g"] = {
							bo(69972, true),
						},
					}),
				})),
				n(SNOWSTORMS, sharedData({
					["isDaily"] = true,
				},{
					n(COMMON_BOSS_DROPS, sharedData({
						["crs"] = {
							193645,	-- Crystalus
							193655,	-- Frozion <Progeny of Water>
							193677,	-- Maeleera <First Iceblade>
							193682,	-- Rouen Icewind
						},
					},{
						i(200914),	-- Formula: Illusion: Primal Frost (RECIPE!)
					})),
					n(193645, {	-- Crystalus
						["questID"] = 73989,
						["g"] = {
							bo(69952, true),
							i(200301),	-- Reclaimed Tuskarr Harpoon
						},
					}),
					n(193655, {	-- Frozion <Progeny of Water>
						["questID"] = 73993,
						["g"] = {
							bo(69961, true),
							i(200311),	-- Bonespike Mallet
						},
					}),
					-- Iceblade Trio
					n(193677, {	-- Maeleera <First Iceblade>
						["crs"] = {
							193678, -- Fieraan <Second Iceblade>
							193679,	-- Leerain <Third Iceblade>
						},
						["questID"] = 74009,
						["g"] = {
							bo(69971, true),
							i(200250),	-- Frost Tipped Glaive
						},
					}),
					n(193678, {	-- Fieraan <Second Iceblade>
						-- questID shared with Maeleera/Leerain, don't duplicate
					}),
					n(193679, {	-- Leerain <Third Iceblade>
						-- questID shared with Maeleera/Fieraan, don't duplicate
					}),
					n(193682, {	-- Rouen Icewind
						["questID"] = 74027,
						["g"] = {
							bo(69973, true),
						},
					}),
				})),
				n(THUNDERSTORMS, sharedData({
					["isDaily"] = true,
				},{
					n(COMMON_BOSS_DROPS, sharedData({
						["crs"] = {
							193653,	-- Gaelzion <Progeny of Air>
							193647,	-- Karantun
							193684,	-- Pipspark Thundersnap
							193674,	-- Voraazka
						},
					},{
						i(199337),	-- Bag of Furious Winds (TOY!)
						i(200911),	-- Formula: Illusion: Primal Air (RECIPE!)
					})),
					n(193653, {	-- Gaelzion <Progeny of Air>
						["questID"] = 73995,
						["g"] = {
							bo(69959, true),
							i(200180),	-- Crystallized Lightning Staff
						},
					}),
					n(193647, {	-- Karantun
						["questID"] = 74007,
						["g"] = {
							bo(69953, true),
							i(200170),	-- Stormbringer Bow
						},
					}),
					n(193684, {	-- Pipspark Thundersnap
						["questID"] = 74022,
						["g"] = {
							bo(69974, true),
							i(200741),	-- Pipspark's Prestigious Pendant of Protection
						},
					}),
					n(193674, {	-- Voraazka
						["questID"] = 74038,
						["g"] = {
							bo(69969, true),
							i(200136),	-- Monsoonic Armguards
						},
					}),
				})),
			})),
			n(QUESTS, {
				q(72686, {	-- Storm Surge
					["provider"] = { "n", 196598 },	-- Rethelshi
					["coord"] = { 38.2, 37, VALDRAKKEN },
					["isWeekly"] = true,
					["groups"] = {
						currency(2122),	-- Storm Sigil
					},
				}),
				q(71242, {	-- Supporting the Storm Researchers
					["provider"] = {"i",200675},	-- Elemental Overflow Cluster
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS },
				}),
				q(70753, {	-- Dissipating the Air Primalists
					["sourceQuest"] = 71242,	-- Supporting the Storm Researchers
					["provider"] = {"i",199749},	-- Primal Air Core
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS },
					["isWeekly"] = true,
					["groups"] = {
						currency(2122),	-- Storm Sigil
					},
				}),
				q(70754, {	-- Extinguishing the Fire Primalists
					["sourceQuest"] = 71242,	-- Supporting the Storm Researchers
					["provider"] = {"i",199750},	-- Primal Fire Core
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS },
					["isWeekly"] = true,
					["groups"] = {
						currency(2122),	-- Storm Sigil
					},
				}),
				q(70723, {	-- Shattering the Earth Primalists
					["sourceQuest"] = 71242,	-- Supporting the Storm Researchers
					["provider"] = {"i",199691},	-- Primal Earth Core
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS },
					["isWeekly"] = true,
					["groups"] = {
						currency(2122),	-- Storm Sigil
					},
				}),
				q(70752, {	-- Vaporizing the Water Primalists
					["sourceQuest"] = 71242,	-- Supporting the Storm Researchers
					["provider"] = {"i",199748},	-- Primal Water Core
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS },
					["isWeekly"] = true,
					["groups"] = {
						currency(2122),	-- Storm Sigil
					},
				}),
			}),
			n(REWARDS, {
				["maps"] = {
					OHNAHRAN_PLAINS,
					THALDRASZUS,
					THE_AZURE_SPAN,
					THE_WAKING_SHORES,
				},
				-- #if after 10.0.7
				["sym"] = {
					{"select","mapID",THE_FORBIDDEN_REACH},{"pop"},
					{"where","headerID",ZONE_REWARDS},{"pop"},
					{"exclude","itemID",202196},	-- Zskera Vault Key
				},
				-- #endif
				["g"] = {
						i(200183),	-- Echo of the Cave (PET!)
						i(200260),	-- Echo of the Depths (PET!)
						i(200263),	-- Echo of the Heights (PET!)
						i(200255),	-- Echo of the Inferno (PET!)
						i(200675),	-- Elemental Overflow Cluster

						-- Enchanting knowledge drops (one-time)
						i(201356),	-- Glimmer of Fire
						i(201357),	-- Glimmer of Frost
						i(201358),	-- Glimmer of Air
						i(201359),	-- Glimmer of Earth

						i(199749),	-- Primal Air Core
						i(199691),	-- Primal Earth Core
						i(199750),	-- Primal Fire Core
						i(199748),	-- Primal Water Core
						currency(2118),	-- Elemental Overflow
				},
			}),
			-- #if AFTER TWW
			--[[ technically primal storm mobs can also drop primal gear which can be upgraded to s1 tier set, but can farm them on forbidden reach. Way more rares & not time based. Uncommented Catalyst ~Goldenshacal 1st Sep 2024
			o(382621, {	-- Revival Catalyst Console
				["description"] = "The Revival Catalyst is a system that allows you convert Primalist Items from Primal Storm Events or a Normal Mode Non-set items from the Vault of the Incarnates Raid into your class' Normal Transmog Set.\n\nIf you upgrade your Primal Storm Item to 3/3 Upgrades, you will instead unlock your classes' Heroic Vault of the Incarnes Transmog Set.\nThe catalyst is in Tyrhold in Thaldraszus, Dragon Isles.\n\nMake sure to equip your item first before converting it.",
				["coord"] = { 60.6, 53.8, THALDRASZUS },
				["modelScale"] = 4,
				["g"] = bubbleDown({ ["modID"] = 4 }, {
					d(DIFFICULTY.RAID.NORMAL, {
						["description"] = "",
						["g"] = bubbleDown({ ["modID"] = 3 }, {
							cl(DEATHKNIGHT, {
								["sym"] = SymRaidVault(DEATHKNIGHT, DIFFICULTY.RAID.NORMAL),
								["g"] = {
									i(200413),	-- Drape of the Haunted Frostbrood
									i(200411),	-- Girdle of the Haunted Frostbrood
									i(200406),	-- Sabatons of the Haunted Frostbrood
									i(200412),	-- Vambraces of the Haunted Frostbrood
								},
							}),
							cl(DEMONHUNTER, {
								["sym"] = SymRaidVault(DEMONHUNTER, DIFFICULTY.RAID.NORMAL),
								["g"] = {
									i(200343),	-- Skybound Avenger's Boots
									i(200350),	-- Skybound Avenger's Cape
									i(200348),	-- Skybound Avenger's Waistwrap
									i(200349),	-- Skybound Avenger's Wristbands
								},
							}),
							cl(DRUID, {
								["sym"] = SymRaidVault(DRUID, DIFFICULTY.RAID.NORMAL),
								["g"] = {
									i(200358),	-- Lost Landcaller's Bindings
									i(200359),	-- Lost Landcaller's Laena
									i(200352),	-- Lost Landcaller's Moccasins
									i(200357),	-- Lost Landcaller's Sash
								},
							}),
							cl(EVOKER, {
								["sym"] = SymRaidVault(EVOKER, DIFFICULTY.RAID.NORMAL),
								["g"] = {
									i(200385),	-- Bracers of the Awakened
									i(200384),	-- Chain of the Awakened
									i(200386),	-- Shroud of the Awakened
									i(200379),	-- Treads of the Awakened
								},
							}),
							cl(HUNTER, {
								["sym"] = SymRaidVault(HUNTER, DIFFICULTY.RAID.NORMAL),
								["g"] = {
									i(200393),	-- Stormwing Harrier's Belt
									i(200395),	-- Stormwing Harrier's Plumage
									i(200388),	-- Stormwing Harrier's Sabatons
									i(200394),	-- Stormwing Harrier's Wristguards
								},
							}),
							cl(MAGE, {
								["sym"] = SymRaidVault(MAGE, DIFFICULTY.RAID.NORMAL),
								["g"] = {
									i(200323),	-- Crystal Scholar's Cape
									i(200321),	-- Crystal Scholar's Cinch
									i(200322),	-- Crystal Scholar's Cuffs
									i(200316),	-- Crystal Scholar's Footwraps
								},
							}),
							cl(MONK, {
								["sym"] = SymRaidVault(MONK, DIFFICULTY.RAID.NORMAL),
								["g"] = {
									i(200367),	-- Cuffs of the Waking Fist
									i(200368),	-- Drape of the Waking Fist
									i(200361),	-- Gaiters of the Waking Fist
									i(200366),	-- Girdle of the Waking Fist
								},
							}),
							cl(PALADIN, {
								["sym"] = SymRaidVault(PALADIN, DIFFICULTY.RAID.NORMAL),
								["g"] = {
									i(200421),	-- Virtuous Silver Bracers
									i(200422),	-- Virtuous Silver Cloak
									i(200420),	-- Virtuous Silver Faulds
									i(200415),	-- Virtuous Silver Greatboots
								},
							}),
							cl(PRIEST, {
								["sym"] = SymRaidVault(PRIEST, DIFFICULTY.RAID.NORMAL),
								["g"] = {
									i(200332),	-- Draconic Hierophant's Drape
									i(200330),	-- Draconic Hierophant's Sash
									i(200325),	-- Draconic Hierophant's Slippers
									i(200331),	-- Draconic Hierophant's Wristbands
								},
							}),
							cl(ROGUE, {
								["sym"] = SymRaidVault(ROGUE, DIFFICULTY.RAID.NORMAL),
								["g"] = {
									i(200377),	-- Vault Delver's Camouflage
									i(200370),	-- Vault Delver's Shinguards
									i(200376),	-- Vault Delver's Sweatbands
									i(200375),	-- Vault Delver's Utility Belt
								},
							}),
							cl(SHAMAN, {
								["sym"] = SymRaidVault(SHAMAN, DIFFICULTY.RAID.NORMAL),
								["g"] = {
									i(200403),	-- Cuffs of Infused Earth
									i(200402),	-- Faulds of Infused Earth
									i(200404),	-- Greatcloak of Infused Earth
									i(200397),	-- Treads of Infused Earth
								},
							}),
							cl(WARLOCK, {
								["sym"] = SymRaidVault(WARLOCK, DIFFICULTY.RAID.NORMAL),
								["g"] = {
									i(200339),	-- Scalesworn Cultist's Girdle
									i(200341),	-- Scalesworn Cultist's Runedrape
									i(200334),	-- Scalesworn Cultist's Sandals
									i(200340),	-- Scalesworn Cultist's Wristwraps
								},
							}),
							cl(WARRIOR, {
								["sym"] = SymRaidVault(WARRIOR, DIFFICULTY.RAID.NORMAL),
								["g"] = {
									i(200424),	-- Boots of the Walking Mountain
									i(200430),	-- Bracers of the Walking Mountain
									i(200429),	-- Core of the Walking Mountain
									i(200431),	-- Drape of the Walking Mountain
								},
							}),
						}),
					}),
					d(DIFFICULTY.RAID.HEROIC, {
						["description"] = "",
						["g"] = bubbleDown({ ["bonusID"] = 1 }, {
							cl(DEATHKNIGHT, {
								["sym"] = SymRaidVault(DEATHKNIGHT, DIFFICULTY.RAID.HEROIC),
								["g"] = {
									i(200413),	-- Drape of the Haunted Frostbrood
									i(200411),	-- Girdle of the Haunted Frostbrood
									i(200406),	-- Sabatons of the Haunted Frostbrood
									i(200412),	-- Vambraces of the Haunted Frostbrood
								},
							}),
							cl(DEMONHUNTER, {
								["sym"] = SymRaidVault(DEMONHUNTER, DIFFICULTY.RAID.HEROIC),
								["g"] = {
									i(200343),	-- Skybound Avenger's Boots
									i(200350),	-- Skybound Avenger's Cape
									i(200348),	-- Skybound Avenger's Waistwrap
									i(200349),	-- Skybound Avenger's Wristbands
								},
							}),
							cl(DRUID, {
								["sym"] = SymRaidVault(DRUID, DIFFICULTY.RAID.HEROIC),
								["g"] = {
									i(200358),	-- Lost Landcaller's Bindings
									i(200359),	-- Lost Landcaller's Laena
									i(200352),	-- Lost Landcaller's Moccasins
									i(200357),	-- Lost Landcaller's Sash
								},
							}),
							cl(EVOKER, {
								["sym"] = SymRaidVault(EVOKER, DIFFICULTY.RAID.HEROIC),
								["g"] = {
									i(200385),	-- Bracers of the Awakened
									i(200384),	-- Chain of the Awakened
									i(200386),	-- Shroud of the Awakened
									i(200379),	-- Treads of the Awakened
								},
							}),
							cl(HUNTER, {
								["sym"] = SymRaidVault(HUNTER, DIFFICULTY.RAID.HEROIC),
								["g"] = {
									i(200393),	-- Stormwing Harrier's Belt
									i(200395),	-- Stormwing Harrier's Plumage
									i(200388),	-- Stormwing Harrier's Sabatons
									i(200394),	-- Stormwing Harrier's Wristguards
								},
							}),
							cl(MAGE, {
								["sym"] = SymRaidVault(MAGE, DIFFICULTY.RAID.HEROIC),
								["g"] = {
									i(200323),	-- Crystal Scholar's Cape
									i(200321),	-- Crystal Scholar's Cinch
									i(200322),	-- Crystal Scholar's Cuffs
									i(200316),	-- Crystal Scholar's Footwraps
								},
							}),
							cl(MONK, {
								["sym"] = SymRaidVault(MONK, DIFFICULTY.RAID.HEROIC),
								["g"] = {
									i(200367),	-- Cuffs of the Waking Fist
									i(200368),	-- Drape of the Waking Fist
									i(200361),	-- Gaiters of the Waking Fist
									i(200366),	-- Girdle of the Waking Fist
								},
							}),
							cl(PALADIN, {
								["sym"] = SymRaidVault(PALADIN, DIFFICULTY.RAID.HEROIC),
								["g"] = {
									i(200421),	-- Virtuous Silver Bracers
									i(200422),	-- Virtuous Silver Cloak
									i(200420),	-- Virtuous Silver Faulds
									i(200415),	-- Virtuous Silver Greatboots
								},
							}),
							cl(PRIEST, {
								["sym"] = SymRaidVault(PRIEST, DIFFICULTY.RAID.HEROIC),
								["g"] = {
									i(200332),	-- Draconic Hierophant's Drape
									i(200330),	-- Draconic Hierophant's Sash
									i(200325),	-- Draconic Hierophant's Slippers
									i(200331),	-- Draconic Hierophant's Wristbands
								},
							}),
							cl(ROGUE, {
								["sym"] = SymRaidVault(ROGUE, DIFFICULTY.RAID.HEROIC),
								["g"] = {
									i(200377),	-- Vault Delver's Camouflage
									i(200370),	-- Vault Delver's Shinguards
									i(200376),	-- Vault Delver's Sweatbands
									i(200375),	-- Vault Delver's Utility Belt
								},
							}),
							cl(SHAMAN, {
								["sym"] = SymRaidVault(SHAMAN, DIFFICULTY.RAID.HEROIC),
								["g"] = {
									i(200403),	-- Cuffs of Infused Earth
									i(200402),	-- Faulds of Infused Earth
									i(200404),	-- Greatcloak of Infused Earth
									i(200397),	-- Treads of Infused Earth
								},
							}),
							cl(WARLOCK, {
								["sym"] = SymRaidVault(WARLOCK, DIFFICULTY.RAID.HEROIC),
								["g"] = {
									i(200339),	-- Scalesworn Cultist's Girdle
									i(200341),	-- Scalesworn Cultist's Runedrape
									i(200334),	-- Scalesworn Cultist's Sandals
									i(200340),	-- Scalesworn Cultist's Wristwraps
								},
							}),
							cl(WARRIOR, {
								["sym"] = SymRaidVault(WARRIOR, DIFFICULTY.RAID.HEROIC),
								["g"] = {
									i(200424),	-- Boots of the Walking Mountain
									i(200430),	-- Bracers of the Walking Mountain
									i(200429),	-- Core of the Walking Mountain
									i(200431),	-- Drape of the Walking Mountain
								},
							}),
						}),
					}),
				}),
			}),
			--]]
			-- #endif
			n(UPGRADE, {	-- Upgrade
				["g"] = bubbleDownFiltered({
					["cost"] = { { "i", 204276, 1 } },	-- Untapped Forbidden Knowledge
					["modID"] = 14,
					["bonusID"] = 9344,
				},FILTERFUNC_itemID,{
					n(BACK, {
						i(199450),	-- Cape of Raging Tempests
						i(199451),	-- Cloak of Raging Tempests
						i(199452),	-- Shroud of Raging Tempests
						i(199449),	-- Wrap of Raging Tempests
					}),
					filter(CLOTH, {
						i(199418),	-- Boots of Raging Tempests
						i(199422),	-- Cord of Raging Tempests
						i(199423),	-- Cuffs of Raging Tempests
						i(199419),	-- Gloves of Raging Tempests
						i(199420),	-- Hood of Raging Tempests
						i(199421),	-- Leggings of Raging Tempests
						i(199424),	-- Shoulderpads of Raging Tempests
						i(199417),	-- Vestment of Raging Tempests
					}),
					filter(LEATHER, {
						i(199430),	-- Bindings of Raging Tempests
						i(199428),	-- Breeches of Raging Tempests
						i(199427),	-- Cowl of Raging Tempests
						i(199432),	-- Epaulets of Raging Tempests
						i(199426),	-- Handguards of Raging Tempests
						i(199429),	-- Sash of Raging Tempests
						i(199431),	-- Vest of Raging Tempests
						i(199425),	-- Waders of Raging Tempests
					}),
					filter(MAIL, {
						i(199448),	-- Bracers of Raging Tempests
						i(199441),	-- Chestguard of Raging Tempests
						i(199447),	-- Cinch of Raging Tempests
						i(199444),	-- Coif of Raging Tempests
						i(199445),	-- Greaves of Raging Tempests
						i(199443),	-- Grips of Raging Tempests
						i(199446),	-- Shoulderguards of Raging Tempests
						i(199442),	-- Striders of Raging Tempests
					}),
					filter(PLATE, {
						i(199440),	-- Armplates of Raging Tempests
						i(199434),	-- Breastplate of Raging Tempests
						i(199436),	-- Gauntlets of Raging Tempests
						i(199439),	-- Girdle of Raging Tempests
						i(199433),	-- Helm of Raging Tempests
						i(199437),	-- Legguards of Raging Tempests
						i(199438),	-- Mantle of Raging Tempests
						i(199435),	-- Sabatons of Raging Tempests
					}),
					n(WEAPONS, {
						i(199314),	-- Broadsword of Raging Tempests
						i(199319),	-- Bulwark of Raging Tempests
						i(199304),	-- Cleaver of Raging Tempests
						i(199324),	-- Crusher of Raging Tempests
						i(199318),	-- Cudgel of Raging Tempests
						i(199309),	-- Dagger of Raging Tempests
						i(199308),	-- Glaive of Raging Tempests
						i(199315),	-- Greatsword of Raging Tempests
						i(199306),	-- Hacker of Raging Tempests
						i(199305),	-- Hatchet of Raging Tempests
						i(199307),	-- Heartseeker of Raging Tempests
						i(199311),	-- Horn of Raging Tempests
						i(199320),	-- Impaler of Raging Tempests
						i(199321),	-- Javelin of Raging Tempests
						i(199325),	-- Mace of Raging Tempests
						i(199323),	-- Mallet of Raging Tempests
						i(199317),	-- Maul of Raging Tempests
						i(199313),	-- Pole of Raging Tempests
						i(199322),	-- Rod of Raging Tempests
						i(199316),	-- Scepter of Raging Tempests
						i(199310),	-- Shiv of Raging Tempests
						i(199312),	-- Staff of Raging Tempests
					}),
				}),
			}),
			n(VENDORS, {
				n(196516, {	-- Mythressa
					["coords"] = {
						{ 38.1, 37.7, VALDRAKKEN },
						{ 35.7, 59.8, THE_FORBIDDEN_REACH },
					},
					["g"] = {
						n(BACK, {
							iupgrade(199450, 14, 9344, {	-- Cape of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 200 },
								},
							}),
							iupgrade(199451, 14, 9344, {	-- Cloak of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 200 },
								},
							}),
							iupgrade(199452, 14, 9344, {	-- Shroud of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 200 },
								},
							}),
							iupgrade(199449, 14, 9344, {	-- Wrap of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 200 },
								},
							}),
						}),
						filter(CLOTH, {
							iupgrade(199418, 14, 9344, {	-- Boots of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 350 },
								},
							}),
							iupgrade(199422, 14, 9344, {	-- Cord of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 200 },
								},
							}),
							iupgrade(199423, 14, 9344, {	-- Cuffs of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 200 },
								},
							}),
							iupgrade(199419, 14, 9344, {	-- Gloves of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 350 },
								},
							}),
							iupgrade(199420, 14, 9344, {	-- Hood of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 500 },
								},
							}),
							iupgrade(199421, 14, 9344, {	-- Leggings of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 500 },
								},
							}),
							iupgrade(199424, 14, 9344, {	-- Shoulderpads of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 350 },
								},
							}),
							iupgrade(199417, 14, 9344, {	-- Vestment of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 500 },
								},
							}),
						}),
						filter(LEATHER, {
							iupgrade(199430, 14, 9344, {	-- Bindings of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 200 },
								},
							}),
							iupgrade(199428, 14, 9344, {	-- Breeches of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 500 },
								},
							}),
							iupgrade(199427, 14, 9344, {	-- Cowl of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 500 },
								},
							}),
							iupgrade(199432, 14, 9344, {	-- Epaulets of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 350 },
								},
							}),
							iupgrade(199426, 14, 9344, {	-- Handguards of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 350 },
								},
							}),
							iupgrade(199429, 14, 9344, {	-- Sash of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 200 },
								},
							}),
							iupgrade(199431, 14, 9344, {	-- Vest of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 500 },
								},
							}),
							iupgrade(199425, 14, 9344, {	-- Waders of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 350 },
								},
							}),
						}),
						filter(MAIL, {
							iupgrade(199448, 14, 9344, {	-- Bracers of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 200 },
								},
							}),
							iupgrade(199441, 14, 9344, {	-- Chestguard of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 500 },
								},
							}),
							iupgrade(199447, 14, 9344, {	-- Cinch of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 200 },
								},
							}),
							iupgrade(199444, 14, 9344, {	-- Coif of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 500 },
								},
							}),
							iupgrade(199445, 14, 9344, {	-- Greaves of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 500 },
								},
							}),
							iupgrade(199443, 14, 9344, {	-- Grips of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 350 },
								},
							}),
							iupgrade(199446, 14, 9344, {	-- Shoulderguards of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 350 },
								},
							}),
							iupgrade(199442, 14, 9344, {	-- Striders of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 350 },
								},
							}),
						}),
						filter(PLATE, {
							iupgrade(199440, 14, 9344, {	-- Armplates of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 200 },
								},
							}),
							iupgrade(199434, 14, 9344, {	-- Breastplate of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 500 },
								},
							}),
							iupgrade(199436, 14, 9344, {	-- Gauntlets of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 350 },
								},
							}),
							iupgrade(199439, 14, 9344, {	-- Girdle of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 200 },
								},
							}),
							iupgrade(199433, 14, 9344, {	-- Helm of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 500 },
								},
							}),
							iupgrade(199437, 14, 9344, {	-- Legguards of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 500 },
								},
							}),
							iupgrade(199438, 14, 9344, {	-- Mantle of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 350 },
								},
							}),
							iupgrade(199435, 14, 9344, {	-- Sabatons of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 350 },
								},
							}),
						}),
						n(WEAPONS, {
							iupgrade(199314, 14, 9344, {	-- Broadsword of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 800 },
								},
							}),
							iupgrade(199319, 14, 9344, {	-- Bulwark of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 300 },
								},
							}),
							iupgrade(199304, 14, 9344, {	-- Cleaver of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 400 },
								},
							}),
							iupgrade(199324, 14, 9344, {	-- Crusher of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 400 },
								},
							}),
							iupgrade(199318, 14, 9344, {	-- Cudgel of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 400 },
								},
							}),
							iupgrade(199309, 14, 9344, {	-- Dagger of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 500 },
								},
							}),
							iupgrade(199308, 14, 9344, {	-- Glaive of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 400 },
								},
							}),
							iupgrade(199315, 14, 9344, {	-- Greatsword of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 800 },
								},
							}),
							iupgrade(199306, 14, 9344, {	-- Hacker of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 400 },
								},
							}),
							iupgrade(199305, 14, 9344, {	-- Hatchet of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 500 },
								},
							}),
							iupgrade(199307, 14, 9344, {	-- Heartseeker of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 800 },
								},
							}),
							iupgrade(199311, 14, 9344, {	-- Horn of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 300 },
								},
							}),
							iupgrade(199320, 14, 9344, {	-- Impaler of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 800 },
								},
							}),
							iupgrade(199321, 14, 9344, {	-- Javelin of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 800 },
								},
							}),
							iupgrade(199325, 14, 9344, {	-- Mace of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 500 },
								},
							}),
							iupgrade(199323, 14, 9344, {	-- Mallet of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 400 },
								},
							}),
							iupgrade(199317, 14, 9344, {	-- Maul of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 400 },
								},
							}),
							iupgrade(199313, 14, 9344, {	-- Pole of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 800 },
								},
							}),
							iupgrade(199322, 14, 9344, {	-- Rod of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 500 },
								},
							}),
							iupgrade(199316, 14, 9344, {	-- Scepter of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 500 },
								},
							}),
							iupgrade(199310, 14, 9344, {	-- Shiv of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 400 },
								},
							}),
							iupgrade(199312, 14, 9344, {	-- Staff of Raging Tempests
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 800 },
								},
							}),
						}),
						filter(MOUNTS, {
							i(192775, {	-- Stormhide Salamanther (MOUNT!)
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 2000 },
								},
							}),
						}),
						filter(BATTLE_PETS, {
							i(200173, {	-- Ghostflame (PET!)
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 1000 },
								},
							}),
							i(200114, {	-- Stormie (PET!)
								["cost"] = {
									{ "c", ELEMENTAL_OVERFLOW, 1000 },
								},
							}),
						}),
					},
				}),
				-- #IF BEFORE 10.0.5
				n(196598, {	-- Rethelshi
					["coord"] = { 38.4, 36.8, VALDRAKKEN },
					["sym"] = {
						{"select", "npcID", 196516 },	-- Select Mythressa
						{"pop"},
						{"not", "itemID", 192775 },		-- Not Stormhide Salamanther (MOUNT!)
						{"not", "itemID", 200173 },		-- Not Ghostflame (PET!)
						{"not", "itemID", 200114 },		-- Not Stormie (PET!)
						{"modID", 14}
					},
				}),
				-- #ENDIF
			}),
		},
	}),
})));