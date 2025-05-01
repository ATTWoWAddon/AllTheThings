---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
TIME_RIFTS = createHeader({
	readable = "Time Rift",
	icon = 2026009,
	text = {
		en = WOWAPI_GetSpellName(408633),
	},
});
local DILATED_TIME_CAPSULE
-- #if AFTER 10.2.6.54358
DILATED_TIME_CAPSULE = 224298;
-- #elseif BEFORE 10.2.0
DILATED_TIME_CAPSULE = 207030;
-- #else
DILATED_TIME_CAPSULE = 209856;
-- #endif
local AZQROTH = 2201;
local AZEWRATH = 2202;
local AZMOURNE = 2203;
local AZMERLOTH = 2204;
local ULDEROTH = 2205;
local AZEROTH = 2206;
local THE_WARLANDS = 2207;
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THALDRASZUS, {
		n(TIME_RIFTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
			["maps"] = {
				2199,	-- Tyrhold Reservoir (Scenario Map)
			},
			["g"] = {
				n(ACHIEVEMENTS, {
					ach(18637, {	-- Chronograde Connoisseur
						crit(61885, {	-- Azmerloth
							["_npcs"] = { 204808 },	-- Fractured Causality / Gil'dan
						}),
						crit(61884, {	-- Ulderoth
							["_npcs"] = { 205304 },	-- Fractured Causality / Freya
						}),
						crit(61886, {	-- Azmourne
							["_npcs"] = { 205305 },	-- Fractured Causality / The Lich King
						}),
						crit(61887, {	-- Azewrath
							["_npcs"] = { 205306 },	-- Fractured Causality / Illidan
						}),
						crit(61888, {	-- Azq'roth
							["_npcs"] = { 205307 },	-- Fractured Causality / Fury of N'zoth
						}),
						crit(61889, {	-- The Warlands
							["_npcs"] = { 205308 },	-- Fractured Causality / Varian Wrynn
						}),
						crit(61890, {	-- A.Z.E.R.O.T.H
							["_npcs"] = { 205309 },	-- Fractured Causality / Overload Mechagon
						}),
					}),
					ach(19485, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6 } }, {	-- Closing Time
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							18637,	-- Chronograde Connoisseur
							18639,	-- Collapsed Reality
							18703,	-- Dawn of the Infinite: Galakrond's Fall
							18704,	-- Dawn of the Infinite: Murozond's Rise
							18636,	-- Just Following Chronological Orders
							18640,	-- Lock and Load
							18638,	-- Minute Menagerie
							17342,	-- The Future We Make
							18641,	-- To All The Squirrels I've BEEN Before
							18635,	-- Verified Rifter
						}},
						["g"] = {
							i(192765),	-- Bestowed Sandskimmer (MOUNT!)
						},
					})),
					ach(18639),	-- Collapsed Reality
					ach(18636),	-- Just Following Chronological Orders
					ach(18640, {	-- Lock and Load
						crit(60726),	-- Bomb Lobber
						crit(60727),	-- Shrapnel Spreader
						crit(60728),	-- Flamethrower
						crit(60729),	-- Railgun
						crit(60730),	-- Thunderbolt
						crit(60731),	-- Crankshot
					}),
					ach(18638, {	-- Minute Menagerie
						crit(60718, {	-- Gill'dan
							["provider"] = { "i", 208009 },	-- Gill'dan
						}),
						crit(60719, {	-- Briarhorn Hatchling
							["provider"] = { "i", 208012 },	-- Briarhorn Hatchling
						}),
						crit(60751, {	-- N'Ruby
							["provider"] = { "i", 208138 },	-- N'Ruby
						}),
						crit(60720, {	-- Doomrubble
							["provider"] = { "i", 208008 },	-- Doomrubble
						}),
						crit(60721, {	-- Jeepers
							["provider"] = { "i", 208010 },	-- Jeepers
						}),
						crit(60722, {	-- Obsidian Warwhelp
							["provider"] = { "i", 208011 },	-- Obsidian Warwhelp
						}),
						crit(60723, {	-- Killbot 9000
							["provider"] = { "i", 208013 },	-- Killbot 9000
						}),
					}),
					ach(18554, {	-- Temporal Acquisitions Specialist
						["sym"] = {{ "achievement_criteria" }},
						["groups"] = {
							i(208186),	-- Boffins (TOY!)
						},
					}),
					ach(18641),	-- To All The Squirrels I've BEEN Before
					ach(18635),	-- Verified Rifter
				}),
				n(BOSSES, bubbleDownFiltered({
					["sharedDescription"] = "Can drop any Time Rift Vendor Item.",
				}, FILTERFUNC_npcID,{
					-- testing out organizing with raw NPCs for bosses and nesting under the respective maps where they spawn
					-- this will allow the achievement criteria to move under the proper bosses instead of being listed separately in lists
					-- there's 7 boss zones and 14
					-- ok literally anything can drop from any boss... symlinking is just bloated AF at that point
					m(AZQROTH, {
						n(205307, {	-- Fractured Causality / Fury of N'zoth
							-- ["sym"] = {{"select","npcID",
							-- 	208347,	-- Provisioner Qorra <Azq'roth Vendor>
							-- 	208548,	-- Shi Everbreeze
							-- },{"pop"}},
							["g"] = {
							},
						}),
						o(404314,{	-- Chipped Stone Tablet
							["coord"] = { 45.7, 23.9, AZQROTH },
							["g"] = {
								i(206859),	-- Chipped Stone Tablet (QI!)
							},
						}),
					}),
					m(AZEWRATH, {
						n(205306, {	-- Fractured Causality / Illidan
							-- ["sym"] = {{"select","npcID",
							-- 	208341,	-- Falara Nightsong <Azwrath Vendor>
							-- 	208548,	-- Shi Everbreeze
							-- },{"pop"}},
							["g"] = {
							},
						}),
						o(403786,{	-- Antlered Skull
							["coord"] = { 75.1, 41.9, AZEWRATH },
							["g"] = {
								i(206578),	-- An Antlered Skull (QI!)
							},
						}),
					}),
					m(AZMOURNE, {
						n(205305, {	-- Fractured Causality / The Lich King
							-- ["sym"] = {{"select","npcID",
							-- 	208338,	-- Baron Silver <Azmourne Vendor>
							-- 	208548,	-- Shi Everbreeze
							-- },{"pop"}},
							["g"] = {
							},
						}),
						o(404492,{	-- Gilded Vase
							["coord"] = { 40.1, 39.7, AZMOURNE },
							["g"] = {
								i(207003),	-- Gilded Vase (QI!)
							},
						}),
					}),
					m(AZMERLOTH, {
						n(204808, {	-- Fractured Causality / Gil'dan
							-- ["sym"] = {{"select","npcID",
							-- 	208345,	-- Sir Finely Mrrgglton <Azmerloth Vendor>
							-- 	208548,	-- Shi Everbreeze
							-- },{"pop"}},
							["g"] = {
							},
						}),
						-- o(OBJECT, {
						-- }),
					}),
					m(ULDEROTH, {
						n(205304, {	-- Fractured Causality / Freya
							-- ["sym"] = {{"select","npcID",
							-- 	208343,	-- Sorotis <Ulderoth Vendor>
							-- 	208548,	-- Shi Everbreeze
							-- },{"pop"}},
							["g"] = {
							},
						}),
						-- o(OBJECT, {
						-- }),
					}),
					m(AZEROTH, {
						n(205309, {	-- Fractured Causality / Overload Mechagon
							-- ["sym"] = {{"select","npcID",
							-- 	208342,	-- Gill the Drill <A.Z.E.R.O.T.H Vendor>
							-- 	208548,	-- Shi Everbreeze
							-- },{"pop"}},
							["g"] = {
							},
						}),
						-- o(OBJECT, {
						-- }),
					}),
					m(THE_WARLANDS, {
						n(205308, {	-- Fractured Causality / Varian Wrynn
							-- ["sym"] = {{"select","npcID",
							-- 	208346,	-- Warden Krizzik <Warlands Vendor>
							-- 	208548,	-- Shi Everbreeze
							-- },{"pop"}},
							["g"] = {
							},
						}),
						o(404242,{	-- Oil Soaked Book
							["coord"] = { 12.0, 30.9, THE_WARLANDS },
							["g"] = {
								i(206749),	-- Oil-Soaked Log Book (QI!)
							},
						}),
					}),
				})),
				n(COMMON_BOSS_DROPS, {
					["crs"] = {
						205307,	-- Fractured Causality / Fury of N'zoth
						205306,	-- Fractured Causality / Illidan
						205305,	-- Fractured Causality / The Lich King
						204808,	-- Fractured Causality / Gil'dan
						205304,	-- Fractured Causality / Freya
						205309,	-- Fractured Causality / Overload Mechagon
						205308,	-- Fractured Causality / Varian Wrynn
					},
					["groups"] = {
						i(207030, {	-- Dilated Time Capsule (10.1.5)
							["timeline"] = { ADDED_10_1_5, REMOVED_10_2_0 },
						}),
						i(209856, {	-- Dilated Time Capsule (10.2)
							["timeline"] = { ADDED_10_2_0, REMOVED_10_2_7 },
						}),
						i(224298, {	-- Dilated Eon Canister (DF:S4)
							["timeline"] = { ADDED_10_2_6_SEASON_FOUR },
						}),
						-- Both drops from any boss
						i(207113),	-- Grimoire of the Trickster Fel Imp (CI!)
						i(208052),	-- Grimoire of the Voracious Felmaw (CI!)
					},
				}),
				n(FACTIONS, {
					faction(FACTION_SORIDORMI, {
						["cost"] = {{ "c", SORIDORMIS_RECOGNITION, 42000 }},
						["g"] = {
							ach(18615,	-- Legend of the Multiverse
							bubbleDownSelf({ ["minReputation"] = { FACTION_SORIDORMI, 5 } }, {
								title(513),	-- <Name> Unparalleled
							})),
							q(77241, {	-- A Foreseeable Friendship
								["provider"] = { "n", 204450 },	-- Soridormi
								["coord"] = { 51.0, 57.0, THALDRASZUS },
								["minReputation"] = { FACTION_SORIDORMI, 2 },
								["g"] = {
									i(208058),	-- Minute Glass (TOY!)
								},
							}),
							q(77248, {	-- A Recognition of Skill
								["provider"] = { "n", 204450 },	-- Soridormi
								["coord"] = { 51.0, 57.0, THALDRASZUS },
								["minReputation"] = { FACTION_SORIDORMI, 3 },
								["g"] = {
									iensemble(207020),	-- Ensemble: Rift-Mender's Vestments
								},
							}),
							q(77249, {	-- One of Us
								["provider"] = { "n", 204450 },	-- Soridormi
								["coord"] = { 51.0, 57.0, THALDRASZUS },
								["minReputation"] = { FACTION_SORIDORMI, 4 },
								["g"] = {
									i(207027),	-- Greater Encapsulated Destiny
								},
							}),
							q(77250, {	-- Realized Potentional
								["provider"] = { "n", 204450 },	-- Soridormi
								["coord"] = { 51.0, 57.0, THALDRASZUS },
								["minReputation"] = { FACTION_SORIDORMI, 5 },
								["g"] = {
									i(208006),	-- Greater Paracausal Chest / it also could contain vendor stuff, was Ensemble: Hauberk of Discipline - Alex
									spell(417360),	-- Unparalleled (TITLE!)
								},
							}),
						},
					}),
				}),
				n(QUESTS, {
					q(77679, {	-- To Soridormi's Aid
						["provider"] = { "n", 197574 },	-- Mairadormi
						["coord"] = { 72.5, 47.4, VALDRAKKEN },
						["isBreadcrumb"] = true,
						["lockCriteria"] = { 1, "questID", 77680 },	-- my main is not able to accept this, not even in party-sync, but alt can (have not done any rift with alt yet).
						["DisablePartySync"] = true,	-- TODO: confirm with character who has 77680 incomplete
						["timeline"] = { ADDED_10_1_5 },
					}),
					-- ideally want the Object with coords with provider Item inside...
					q(76548, {	-- A Fishy Gift
						["provider"] = { "n", 207756 },	-- Murloc You
						["coord"] = { 57.1, 63.2, 2199 },	-- Tyrhold Reservoir (Scenario Map) / follow player
						["g"] = {
							i(207008),	-- A Fish (QI!)
						},
					}),
					q(76379, {	-- A Murloc and a Dragon Walk into a Time Rift...
						["provider"] = { "n", 206822 },	-- Alulgultasza de Urgl-Blalul <Queen of the... Murloc... Dragons>
						["coord"] = { 49.4, 73.7, AZMERLOTH },
						["g"] = {
							i(206599),	-- Azmerlothian Hourglass (QI!)
						},
					}),
					q(76453, {	-- A Stony Reception
						["provider"] = { "i", 206859 },	-- Chipped Stone Tabled (QI!)
						["coord"] = { 45.7, 23.9, AZQROTH },
					}),
					q(76547, {	-- All That Glitters..
						["provider"] = { "i", 207003 },	-- Gilded Vase (QI!)
						["coord"] = { 40.1, 39.7, AZMOURNE },
					}),
					q(76362, {	-- An Antlered Skull
						["provider"] = { "i", 206578 },	-- An Antlered Skull (QI!)
						["coord"] = { 75.1, 41.9, AZEWRATH },
					}),
					q(76521, {	-- Buzzing Boffins
						["provider"] = { "n", 207509 },	-- Boffins
						["coord"] = { 77.5, 64.1, 2199 },	-- Tyrhold Reservoir (Scenario Map)
						["g"] = {
							i(206957),	-- Boffins (QI!)
						},
					}),
					q(76404, {	-- Cogs in a Machine
						["provider"] = { "i", 206602 },	-- Mechanical Cog (QI!)
						["coord"] = { 57.7, 64.2, 2199 },	-- Tyrhold Reservoir (Scenario Map)
					}),
					q(76533, {	-- Dangerous Documentation
						["provider"] = { "n", 207525 },	-- Watcher's Log
						["coord"] = { 58.2, 39.0, ULDEROTH },
						["g"] = {
							i(206962),	-- Watcher's Log (QI!)
						},
					}),
					q(76546, {	-- Mantid Methodology
						["provider"] = { "i", 206998 },	-- Amber Sword (QI!)
						["coord"] = { 63.5, 65.4, 2199 },	-- Tyrhold Reservoir (Scenario Map)
					}),
					q(76449, {	-- The Endless Conflict
						["provider"] = { "i", 206749 },	-- Oil-Soaked Log Book (QI!)
						["coord"] = { 12.0, 30.9, THE_WARLANDS },
					}),
					q(76459, {	-- The Resistance
						["provider"] = { "n", 207297 },	-- Ellemayne
						["coord"] = { 67.4, 63.4, 2199 },	-- Tyrhold Reservoir (Scenario Map)
						["g"] = {
							i(206775),	-- Map to Suramar (QI!)
						},
					}),
					q(76406, {	-- The Sins of the Ashbringer
						["provider"] = { "n", 208328 },	-- Azmourne's Corrupted Ashbringer
						["coords"] = {
							{ 39.4, 58.4, AZMOURNE },
							{ 39.7, 58.0, 2199 },	-- Tyrhold Reservoir (Scenario Map)
						},
						["g"] = {
							i(206638),	-- Azmourne's Corrupted Ashbringer (QI!)
						},
					}),
					q(76351, {	-- Titanic Beasts
						["provider"] = { "i", 206564 },	-- Time-Displaced Titanic Disc (QI!)
						["coords"] = {
							{ 55, 57.5, ULDEROTH },
							{ 45.8, 72.1, 2199 },	-- Tyrhold Reservoir (Scenario Map)
						},
					}),
					q(76544, {	-- Wasteland Warriors
						["provider"] = { "i", 206984 },	-- Blood-Soaked Book (QI!)
						["coord"] = { 71.2, 70.2, 2199 },	-- Tyrhold Reservoir (Scenario Map)
					}),
					q(77236, {	-- When Time Needs Mending
						["provider"] = { "n", 204450 },	-- Soridormi
						["coord"] = { 51.1, 57.1, THALDRASZUS },
						["maxReputation"] = { FACTION_SORIDORMI, 5 },
						["description"] = "Can be completed once per Account per week.\n\nNote: Having this quest active will block picking up 'To Soridormi's Aid' (77679) on any character which logs in while this quest is active.",
						["isWeekly"] = true,
						["sourceQuest"] = 77679,	-- To Soridormi's Aid
						["g"] = {
							i(208090, {	-- Contained Paracausality
								i(207030, {	-- Dilated Time Capsule (10.1.5)
									["timeline"] = { ADDED_10_1_5, REMOVED_10_2_0 },
								}),
								i(209856, {	-- Dilated Time Capsule (10.2)
									["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
								}),
								i(224298, {	-- Dilated Eon Canister (DF:S4)
									["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
								}),
								i(207002),	-- Encapsulated Destiny
								i(207027),	-- Greater Encapsulated Destiny
								i(208951, {	-- Paracausal Cluster
									currency(PARACAUSAL_FLAKES),
								}),
								i(208952),	-- Soridormi's Letter of Commendation
								i(215363, {	-- Cache of Embers
									["timeline"] = { ADDED_10_2_6_SEASON_FOUR },
									-- probably need symlink
								}),
							}),
						},
					}),
				}),
				n(EVENT_COMPLETION, {
					i(207582),	-- Box of Tampered Reality
					i(207584, {	-- Box of Volatile Reality
						["g"] = {
							i(207002),	-- Encapsulated Destiny
						},
					}),
					i(207583, {	-- Box of Collapsed Reality
						-- Anything from vendors can drop here, but the chance is so small, it's not worth to mention this as a source.
					}),
					i(207083),	-- Gift of the Ravenous Black Gryphon (MOUNT!)
					i(207057),	-- Gift of the White War Wolf (MOUNT!)
					currency(PARACAUSAL_FLAKES),	-- rewarded from literally everything, don't need to list everywhere
				}),
				n(TREASURES, {
					o(404432,{	-- Bload Soaked Book
						["coord"] = { 71.2, 70.2, 2199 },	-- Tyrhold Reservoir (Scenario Map)
						["g"] = {
							i(206984),	-- Blood-Soaked Book (QI!)
						},
					}),
					o(403919,{	-- Mechanical Cog
						["coords"] = {
							{ 57.7, 64.2, 2199 },	-- Tyrhold Reservoir (Scenario Map)
							{ 58.1, 63.9, 2199 },	-- Tyrhold Reservoir (Scenario Map)
							{ 38.1, 52.3, 2199 },	-- Tyrhold Reservoir (Scenario Map)
						},
						["g"] = {
							i(206602),	-- Mechanized Cog (QI!)
						},
					}),
					o(404480,{	-- Ragged Mantid Sword
						["coord"] = { 63.5, 65.4, 2199 },	-- Tyrhold Reservoir (Scenario Map)
						["g"] = {
							i(206998),	-- Amber Sword (QI!)
						},
					}),
					n(206587, {
						-- ["coord"] = { 63.5, 65.4, 2199 },	-- Tyrhold Reservoir (Scenario Map)
						["g"] = {
							i(206564),	-- Time-Displaced Titanic Disc (QI!)
						},
					}),
				}),
				n(VENDORS, bubbleDownFiltered({
					["timeline"] = { ADDED_10_1_5 },
				},FILTERFUNC_itemID,{
					n(208338, {	-- Baron Silver <Azmourne Vendor>
						["coord"] = { 51.0, 56.7, THALDRASZUS },
						["g"] = {
							i(206680, {	-- Reins of the Scourgebound Vanquisher (MOUNT!)
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 3000 }},
							}),
							i(208138, {	-- N'Ruby (PET!)
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 2750 }},
							}),
							i(206786, {	-- Scourge Victorious Tabard
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1500 }},
							}),
							i(206784, {	-- Blighted Greatbow
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
							}),
							i(206783, {	-- Bonegale Greataxe
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
							}),
							i(206803, {	-- Cursed Blade of the Scourge
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
							}),
							i(206797, {	-- Frostspire
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
							}),
							i(206778, {	-- Northern Ballista
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
							}),
							i(206802, {	-- Plague-Touched Stave
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
							}),
							i(206793, {	-- Upraised Headstone
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
							}),
							i(206983, {	-- Paracausal Fragment of Frostmourne
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1750 }},
							}),
							i(208617, {	-- Ebon Blade Commendation Badge [BOP]
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 2600 }},
							}),
						},
					}),
					n(208341, {	-- Falara Nightsong <Azwrath Vendor>
						["coord"] = { 51.0, 56.7, THALDRASZUS },
						["g"] = {
							i(206676, {	-- Felstorm Dragon (MOUNT!)
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 3000 }},
							}),
							i(208008, {	-- Doomrubble (PET!)
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 2750 }},
							}),
							i(206766, {	-- Jagged Treason
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
							}),
							i(206790, {	-- Fel-Ridden Divider
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
							}),
							i(206781, {	-- Demonic Bone-Crusher
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
							}),
							i(206791, {	-- Branded Greatmaul
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
							}),
							i(206764, {	-- Fel-Infused Polearm
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
							}),
							i(206801, {	-- Inferna Rod
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
							}),
							i(206789, {	-- Heart-Slicer
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
							}),
							i(206972, {	-- Paracausal Fragment of Azzinoth
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1750 }},
							}),
							i(146949, {	-- Legionfall Insignia [BOP]
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 2500 }},
							}),
						},
					}),
					n(208342, {	-- Gill the Drill <A.Z.E.R.O.T.H Vendor>
						["coord"] = { 51.0, 56.6, THALDRASZUS },
						["g"] = {
							i(206679, {	-- Perfected Juggernaut (MOUNT!)
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 3000 }},
							}),
							i(208013, {	-- Killbot 9000 (PET!)
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 2750 }},
							}),
							i(206804, {	-- Clockwork Mallet
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
							}),
							i(206785, {	-- Defect Retirement Tool
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
							}),
							i(206796, {	-- Energetic Power Knife
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
							}),
							i(206777, {	-- Energy Projection Regulator
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
							}),
							i(206807, {	-- Order-Powered Mechblade
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
							}),
							i(206780, {	-- Overclocked Hand Cannon
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
							}),
							i(206779, {	-- Steel-Lined Locking System
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
							}),
							i(206958, {	-- Paracausal Fragment of Val'anyr
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1750 }},
							}),
							i(208134, {	-- Rustbolt Resistance Insignia [BOP]
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 2500 }},
							}),
						},
					}),
					n(208347, {	-- Provisioner Qorra <Azq'roth Vendor>
						["coord"] = { 51.1, 56.6, THALDRASZUS },
						["g"] = {
							i(206678, {	-- Sulfur Hound's Leash (MOUNT!)
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 3000 }},
							}),
							i(208010, {	-- Jeepers (PET!)
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 2750 }},
							}),
							i(206770, {	-- Consuming Claws
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
							}),
							i(206776, {	-- Heretical Gavel
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
							}),
							i(206765, {	-- Its Focused Gaze
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
							}),
							i(206799, {	-- Pauldrons of the Fire Lord
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1100 }},
							}),
							i(206768, {	-- Serrated Parasite
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
							}),
							i(206792, {	-- Subjugator's Shield
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
							}),
							i(206769, {	-- Unknown Horror's Arm
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
							}),
							i(206956, {	-- Paracausal Fragment of Sulfuras
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1750 }},
							}),
							i(173375, {	-- Rajani Insignia [BOP]
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 2500 }},
							}),
						},
					}),
					n(208345, {	-- Sir Finely Mrrgglton <Azmerloth Vendor>
						["coord"] = { 51.0, 56.6, THALDRASZUS },
						["g"] = {
							i(208009, {	-- Gill'dan (PET!)
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 2750 }},
							}),
							i(207005, {	-- Paracausal Fragment of Thunderfin, Humid Blade of the Tideseeker
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1750 }},
							}),
						},
					}),
					n(208548, {	-- Shi Everbreeze
						["coord"] = { 51.0, 56.7, THALDRASZUS },
						["g"] = bubbleDownFiltered({
							["cost"] = {{ "i", DILATED_TIME_CAPSULE, 1 }},
						},FILTERFUNC_itemID,{
							filter(CLOTH, {
								i(207602),	-- Anachronistic Bindings
								i(207599),	-- Anachronistic Breeches
								i(207598),	-- Anachronistic Hood
								i(207600),	-- Anachronistic Mantle
								i(207597),	-- Anachronistic Mitts
								i(207595),	-- Anachronistic Robes
								i(207601),	-- Anachronistic Sash
								i(207596),	-- Anachronistic Slippers
								i(207627),	-- Anachronistic Wrap
							}),
							filter(LEATHER, {
								i(207609),	-- Cincture of Discontinuity
								i(207630),	-- Cloak of Discontinuity
								i(207608),	-- Epaulets of Discontinuity
								i(207605),	-- Gloves of Discontinuity
								i(207607),	-- Leggings of Discontinuity
								i(207606),	-- Mask of Discontinuity
								i(207603),	-- Raiment of Discontinuity
								i(207604),	-- Treads of Discontinuity
								i(207610),	-- Wristbands of Discontinuity
							}),
							filter(MAIL, {
								i(207618),	-- Paradoxical Bracers
								i(207611),	-- Paradoxical Chainmail
								i(207617),	-- Paradoxical Cinch
								i(207614),	-- Paradoxical Cowl
								i(207629),	-- Paradoxical Drape
								i(207613),	-- Paradoxical Gauntlets
								i(207616),	-- Paradoxical Spaulders
								i(208518),	-- Paradoxical Striders
								i(207615),	-- Paradoxical Tassets
							}),
							filter(PLATE, {
								i(207628),	-- Anomalous Cape
								i(207619),	-- Anomalous Chestplate
								i(207621),	-- Anomalous Crushers
								i(207625),	-- Anomalous Girdle
								i(207622),	-- Anomalous Greathelm
								i(207623),	-- Anomalous Greaves
								i(207624),	-- Anomalous Pauldrons
								i(207620),	-- Anomalous Stompers
								i(207626),	-- Anomalous Vambraces
							}),
							n(WEAPONS, {
								i(208043),	-- Bronzegift Mallet
								i(207976),	-- Chroniton Wand
								i(207989),	-- Chronospire
								i(208042),	-- Edge of Tomorrow
								i(207985),	-- Ever-Repeating Rifle
								i(207998),	-- Hoursteel Mace
								i(207980),	-- Inevitable Claymore
								i(207977),	-- Rift Render
								i(207993),	-- Spacetime Cleaver
								i(207990),	-- Temporal Battle Staff
								i(207988),	-- Time Keeper's Polearm
								i(207981),	-- Time Splitter
								i(207982),	-- Timeless Bulwark
								i(207979),	-- Timespan Scepter
							}),
							i(208945, {	-- Paracausal Crate
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 500 }},
								["g"] = {
									currency(PARACAUSAL_FLAKES),
								},
							}),
						}),
					}),
					n(208343, {	-- Sorotis <Ulderoth Vendor>
						["coord"] = { 51.1, 56.7, THALDRASZUS },
						["g"] = {
							i(206675, {	-- Gold-Toed Albatross (MOUNT!)
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 3000 }},
							}),
							i(208012, {	-- Briarhorn Hatchling (PET!)
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 2750 }},
							}),
							iensemble(207049, {	-- Ensemble: Decorous Garments
								["classes"] = CLOTH_CLASSES,
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 2500 }},
							}),
							iensemble(207048, {	-- Ensemble: Lifegiver's Garms
								["classes"] = LEATHER_CLASSES,
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 2500 }},
							}),
							iensemble(207047, {	-- Ensemble: Hauberk of Discipline
								["classes"] = MAIL_CLASSES,
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 2500 }},
							}),
							iensemble(207046, {	-- Ensemble: Valhalas Ceremonial Armor
								["classes"] = PLATE_CLASSES,
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 2500 }},
							}),
							i(206794, {	-- Hand of Order
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
							}),
							i(206795, {	-- Titan Watcher's Shortblade
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
							}),
							i(206782, {	-- Titanic Hourglass
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
							}),
							i(206788, {	-- Utopian Tabard
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1500 }},
							}),
							i(206798, {	-- Valhalas Heartstriker
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
							}),
							i(206767, {	-- Valhalas Peacekeeper
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
							}),
							i(206475, {	-- Paracausal Fragment of Seschenal
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 1750 }},
							}),
						},
					}),
					n(208346, {	-- Warden Krizzik <Warlands Vendor>
						["coord"] = { 51.1, 56.6, THALDRASZUS },
						["g"] = {
							i(208011, {	-- Obsidian Warwhelp (PET!)
								["cost"] = {{ "c", PARACAUSAL_FLAKES, 2750 }},
							}),
							n(FACTION_HEADER_ALLIANCE, sharedData({ ["races"] = ALLIANCE_ONLY }, {
								i(206674, {	-- Reins of the Ravenous Black Gryphon (MOUNT!)
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 3000 }},
								}),
								------ Helm ------
								i(206826, {	-- Jingoist's Hood
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								i(206834, {	-- Jingoist's Headcover
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								i(206865, {	-- Jingoist's Casque
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								i(206873, {	-- Jingoist's Greathelm
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								------ Chest ------
								i(206821, {	-- Jingoist's Robe
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								i(206839, {	-- Jingoist's Cuirass
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								i(207093, {	-- Jingoist's Mail Suit Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206860),	-- Jingoist's Chainmail
										i(206869),	-- Jingoist's Vestment
									},
								}),
								i(206878, {	-- Jingoist's Breastplate
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								------ Legs ------
								i(206825, {	-- Jingoist's Leggings
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								i(206835, {	-- Jingoist's Pantaloons
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								i(206864, {	-- Jingoist's Legguards
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								i(206874, {	-- Jingoist's Legplates
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								------ Cloak/Shoulders ------
								i(207082, {	-- Jingoist's Cloth Armor Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206824),	-- Jingoist's Epaulets
										i(206829),	-- Jingoist's Shroud
									},
								}),
								i(207080, {	-- Jingoist's Leather Armor Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206831),	-- Jingoist's Cloak
										i(206836),	-- Jingoist's Spaulders
									},
								}),
								i(207078, {	-- Jingoist's Mail Armor Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206868),	-- Jingoist's Drape
										i(206863),	-- Jingoist's Mantle
									},
								}),
								i(207075, {	-- Jingoist's Plate Armor Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206870),	-- Jingoist's Cape
										i(206875),	-- Jingoist's Pauldrons
									},
								}),
								------ Feets/Waist ------
								i(207071, {	-- Jingoist's Cloth Gear Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206823),	-- Jingoist's Cord
										i(206828),	-- Jingoist's Treads
									},
								}),
								i(207067, {	-- Jingoist's Leather Gear Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206837),	-- Jingoist's Belt
										i(206832),	-- Jingoist's Boots
									},
								}),
								i(207064, {	-- Jingoist's Mail Gear Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206862),	-- Jingoist's Clasp
										i(206867),	-- Jingoist's Footpads
									},
								}),
								i(207053, {	-- Jingoist's Plate Gear Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206876),	-- Jingoist's Girdle
										i(206871),	-- Jingoist's Warboots
									},
								}),
								------ Hands/Wrists ------
								i(207072, {	-- Jingoist's Cloth Equipment Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206827),	-- Jingoist's Mitts
										i(206822),	-- Jingoist's Wristwraps
									},
								}),
								i(207068, {	-- Jingoist's Leather Equipment Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206838),	-- Jingoist's Bracers
										i(206833),	-- Jingoist's Gloves
									},
								}),
								i(207063, {	-- Jingoist's Mail Equipment Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206861),	-- Jingoist's Bonds
										i(206866),	-- Jingoist's Grips
									},
								}),
								i(207052, {	-- Jingoist's Plate Equipment Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
										["g"] = {
										i(206872),	-- Jingoist's Gauntlets
										i(206877),	-- Jingoist's Vambraces
									},
								}),
								------ Weapons ------
								i(207014, {	-- Jingoist's Slicer
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
								}),
								------ Trinket ------
								i(207024, {	-- Paracausal Fragment of Shalamayne
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1750 }},
								}),
								------ Reputation ------
								i(208132, {	-- Stormwind Insignia [BOP]
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 2500 }},
								}),
							})),
							n(FACTION_HEADER_HORDE, sharedData({ ["races"] = HORDE_ONLY }, {
								i(206673, {	-- Horn of the White War Wolf (MOUNT!)
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 3000 }},
								}),
								------ Helm ------
								i(206816, {	-- Warmonger's Skullcap
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								i(206846, {	-- Warmonger's Headcover
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								i(206853, {	-- Warmonger's Casque
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								i(206884, {	-- Warmonger's Greathelm
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								------ Chest ------
								i(206808, {	-- Warmonger's Robe
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								i(207094, {	-- Warmonger's Leather Suit Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206840),	-- Warmonger's Cuirass
										i(206844),	-- Warmonger's Vestment
									},
								}),
								i(206858, {	-- Warmonger's Chainmail
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								i(206879, {	-- Warmonger's Breastplate
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								------ Legs ------
								i(206814, {	-- Warmonger's Leggings
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								i(206845, {	-- Warmonger's Pantaloons
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								i(206854, {	-- Warmonger's Legguards
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								i(206883, {	-- Warmonger's Legplates
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1050 }},
								}),
								------ Cloak/Shoulders ------
								i(207081, {	-- Warmonger's Cloth Armor Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206812),	-- Warmonger's Epaulets
										i(206819),	-- Warmonger's Shroud
									},
								}),
								i(207079, {	-- Warmonger's Leather Armor Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206849),	-- Warmonger's Cloak
										i(206843),	-- Warmonger's Spaulders
									},
								}),
								i(207077, {	-- Warmonger's Mail Armor Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206850),	-- Warmonger's Drape
										i(206855),	-- Warmonger's Mantle
									},
								}),
								i(207076, {	-- Warmonger's Plate Armor Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206887),	-- Warmonger's Cape
										i(206882),	-- Warmonger's Pauldrons
									},
								}),
								------ Feets/Waist ------
								i(207073, {	-- Warmonger's Cloth Equipment Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206810),	-- Warmonger's Cord
										i(206818),	-- Warmonger's Treads
									},
								}),
								i(207069, {	-- Warmonger's Leather Equipment Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206842),	-- Warmonger's Belt
										i(206848),	-- Warmonger's Boots
									},
								}),
								i(207066, {	-- Warmonger's Mail Equipment Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206856),	-- Warmonger's Clasp
										i(206851),	-- Warmonger's Footpads
									},
								}),
								i(207051, {	-- Warmonger's Plate Equipment Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206881),	-- Warmonger's Girdle
										i(206886),	-- Warmonger's Warboots
									},
								}),
								------ Hands/Wrists ------
								i(207074, {	-- Warmonger's Cloth Gear Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206817),	-- Warmonger's Mitts
										i(206809),	-- Warmonger's Wristwraps
									},
								}),
								i(207070, {	-- Warmonger's Leather Gear Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206841),	-- Warmonger's Bracers
										i(206847),	-- Warmonger's Gloves
									},
								}),
								i(207065, {	-- Warmonger's Mail Gear Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206857),	-- Warmonger's Bonds
										i(206852),	-- Warmonger's Grips
									},
								}),
								i(207050, {	-- Warmonger's Plate Gear Bag
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1150 }},
									["g"] = {
										i(206885),	-- Warmonger's Gauntlets
										i(206880),	-- Warmonger's Vambraces
									},
								}),
								------ Weapons ------
								i(207015, {	-- Warmonger's Ripper
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1000 }},
								}),
								------ Trinket ------
								i(206964, {	-- Paracausal Fragment of Doomhammer
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 1750 }},
								}),
								------ Reputation ------
								i(208133, {	-- Orgrimmar Insignia [BOP]
									["cost"] = {{ "c", PARACAUSAL_FLAKES, 2500 }},
								}),
							})),
						},
					}),
				})),
			},
		})),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5} }, {
	m(DRAGON_ISLES, {
		m(THALDRASZUS, {
			n(TIME_RIFTS, {
				-- Alternates between these two questIDs when completing tasks
				-- Sequence experienced on live: 85 > 83 > 84 > 86
				q(76983,{["repeatable"]=true}),
				q(76984,{["repeatable"]=true}),
				q(76985,{["repeatable"]=true}),

				q(77680),	-- picked up 'When Time Needs Mending' (questID 77236); after questID 77679?

				q(77836),	-- 1st weekly rift (itemID 207030 as reward)
				q(76986),	-- some kind of unlock for time rift on alts (start popup on login after participate in time rift event at least once on account)

				-- q(76695),	-- after buying/loot 'Blighted Greatbow' (itemID 206784) (spellID 418958)
				-- q(76691),	-- after buying/loot 'Bonegale Greataxe' (itemID 206783) (spellID 418957)
				-- q(76616),	-- after buying/loot 'Branded Greatmaul' (itemID 206791) (spellID 418956)
				q(76711),	-- after buying/loot 'Briarhorn Hatchling' (itemID 208012) (spellID 418955)
				-- q(76679),	-- after buying/loot 'Clockwork Mallet' (itemID 206804) (spellID 418448)
				-- q(76607),	-- after buying/loot 'Consuming Claws' (itemID 206770) (spellID 418954)
				-- q(76690),	-- after buying/loot 'Cursed Blade of the Scourge' (itemID 206803) (spellID 418953)
				q(76683),	-- after buying/loot 'Defect Retirement Tool' (itemID 206785) (spellID 418952)
				-- q(76615),	-- after buying/loot 'Demonic Bone-Crusher' (itemID 206781) (spellID 418951)
				q(76713),	-- after buying/loot 'Doomrubble' (itemID 208008) (spellID 418950)
				-- q(76678),	-- after buying/loot 'Energetic Power Knife' (itemID 206796) (spellID 418949)
				q(76681),	-- after buying/loot 'Energy Projection Regulator' (itemID 206777) (spellID 418948)
				-- q(76617),	-- after buying/loot 'Fel-Infused Polearm' (itemID 206764) (spellID 418943)
				-- q(76614),	-- after buying/loot 'Fel-Ridden Divider' (itemID 206790) (spellID 418942)
				-- q(76621),	-- after buying/loot 'Felstorm Dragon' (itemID 206676) (spellID 418941)
				q(76693),	-- after buying/loot 'Frostspire' (itemID 206797) (spellID 418940)
				q(76714),	-- after buying/loot 'Gill'dan' (itemID 208009) (spellID 418939)
				-- q(76703),	-- after buying/loot 'Gold-Toed Albatross' (itemID 206675) (spellID 418938)
				-- q(76699),	-- after buying/loot 'Hand of Order' (itemID 206794) (spellID 418937)
				-- q(76619),	-- after buying/loot 'Heart-Slicer' (itemID 206789) (spellID 418936)
				-- q(76608),	-- after buying/loot 'Heretical Gavel' (itemID 206776) (spellID 418935)
				q(76676),	-- after buying/loot 'Horn of the White War Wolf' (itemID 206673) (spellID 418934)
				q(76618),	-- after buying/loot 'Inferna Rod' (itemID 206801) (spellID 418933)
				q(76610),	-- after buying/loot 'Its Focused Gaze' (itemID 206765) (spellID 418932)
				-- q(76613),	-- after buying/loot 'Jagged Treason' (itemID 206766) (spellID 418454)
				q(76709),	-- after buying/loot 'Jeepers' (itemID 208010) (spellID 418931)
				-- q(76655),	-- after buying/loot 'Jingoist's Breastplate' (itemID 206878) (spellID 418930)
				-- q(76651),	-- after buying/loot 'Jingoist's Casque' (itemID 206865) (spellID 418929)
				q(76623),	-- after buying/loot 'Jingoist's Cloth Armor Bag' (itemID 207082) (spellID 418928)
				q(76622),	-- after buying/loot 'Jingoist's Cloth Equipment Bag' (itemID 207072) (spellID 418927)
				q(76624),	-- after buying/loot 'Jingoist's Cloth Gear Bag' (itemID 207071) (spellID 418926)
				-- q(76645),	-- after buying/loot 'Jingoist's Cuirass' (itemID 206839) (spellID 418925)
				-- q(76657),	-- after buying/loot 'Jingoist's Greathelm' (itemID 206873) (spellID 418924)
				-- q(76646),	-- after buying/loot 'Jingoist's Headcover' (itemID 206834) (spellID 418923)
				-- q(76639),	-- after buying/loot 'Jingoist's Hood' (itemID 206826) (spellID 418922)
				q(76626),	-- after buying/loot 'Jingoist's Leather Armor Bag' (itemID 207080) (spellID 418921)
				q(76625),	-- after buying/loot 'Jingoist's Leather Equipment Bag' (itemID 207068) (spellID 418920)
				q(76627),	-- after buying/loot 'Jingoist's Leather Gear Bag' (itemID 207067) (spellID 418919)
				-- q(76641),	-- after buying/loot 'Jingoist's Leggings' (itemID 206825) (spellID 418918)
				-- q(76653),	-- after buying/loot 'Jingoist's Legguards' (itemID 206864) (spellID 418917)
				-- q(76659),	-- after buying/loot 'Jingoist's Legplates' (itemID 206874) (spellID 418916)
				q(76630),	-- after buying/loot 'Jingoist's Mail Armor Bag' (itemID 207078) (spellID 418915)
				q(76629),	-- after buying/loot 'Jingoist's Mail Equipment Bag' (itemID 207063) (spellID 418914)
				q(76631),	-- after buying/loot 'Jingoist's Mail Gear Bag' (itemID 207064) (spellID 418913)
				q(76628),	-- after buying/loot 'Jingoist's Mail Suit Bag' (itemID 207093) (spellID 418912)
				q(76648),	-- after buying/loot 'Jingoist's Pantaloons' (itemID ) (spellID 418911)
				q(76633),	-- after buying/loot 'Jingoist's Plate Armor Bag' (itemID 207075) (spellID 418910)
				q(76632),	-- after buying/loot 'Jingoist's Plate Equipment Bag' (itemID 207052) (spellID 418909)
				q(76634),	-- after buying/loot 'Jingoist's Plate Gear Bag' (itemID 207053) (spellID 418908)
				-- q(76643),	-- after buying/loot 'Jingoist's Robe' (itemID 206821) (spellID 418907)
				-- q(76635),	-- after buying/loot 'Jingoist's Slicer' (itemID 207014) (spellID 418905)
				q(76712),	-- after buying/loot 'Killbot 9000' (itemID 208013) (spellID 418905)
				q(76715),	-- after buying/loot 'N'Ruby' (itemID 208138) (spellID 418904)
				-- q(76692),	-- after buying/loot 'Northern Ballista' (itemID 206778) (spellID 418903)
				q(76710),	-- after buying/loot 'Obsidian Warwhelp' (itemID 208011) (spellID 418902)
				q(76680),	-- after buying/loot 'Order-Powered Mechblade' (itemID 206807) (spellID 418901)
				-- q(76682),	-- after buying/loot 'Overclocked Hand Cannon' (itemID 206780) (spellID 418900)
				-- q(76620),	-- after buying/loot 'Paracausal Fragment of Azzinoth' (itemID 206972) (spellID 418899)
				-- q(76677),	-- after buying/loot 'Paracausal Fragment of Doomhammer' (itemID 206964) (spellID 418898)
				-- q(76696),	-- after buying/loot 'Paracausal Fragment of Frostmourne' (itemID 206983) (spellID 418897)
				-- q(76704),	-- after buying/loot 'Paracausal Fragment of Seschenal' (itemID 206475) (spellID 418896)
				-- q(76638),	-- after buying/loot 'Paracausal Fragment of Shalamayne' (itemID 207024) (spellID 418895)
				-- q(76612),	-- after buying/loot 'Paracausal Fragment of Sulfuras' (itemID 206956) (spellID 418894)
				-- q(76603),	-- after buying/loot 'Paracausal Fragment of Thunderfin, Humid Blade of the Tideseeker' (itemID 207005) (spellID 418893)
				-- q(76686),	-- after buying/loot 'Paracausal Fragment of Val'anyr' (itemID 206958) (spellID 418892)
				-- q(76605),	-- after buying/loot 'Pauldrons of the Fire Lord' (itemID 206799) (spellID 418891)
				-- q(76685),	-- after buying/loot 'Perfected Juggernaut' (itemID 206679) (spellID 418890)
				q(76694),	-- after buying/loot 'Plague-Touched Stave' (itemID 206802) (spellID 418889)
				q(76637),	-- after buying/loot 'Reins of the Ravenous Black Gryphon' (itemID 206674) (spellID 418888)
				-- q(76687),	-- after buying/loot 'Reins of the Scourgebound Vanquisher' (itemID 206680) (spellID 418887)
				-- q(76606),	-- after buying/loot 'Serrated Parasite' (itemID 206768) (spellID 418886)
				-- q(76684),	-- after buying/loot 'Steel-Lined Locking System' (itemID 206779) (spellID 418885)
				-- q(76611),	-- after buying/loot 'Subjugator's Shield' (itemID 206792) (spellID 418884)
				-- q(76604),	-- after buying/loot 'Sulfur Hound's Leash' (itemID 206678) (spellID 418883)
				-- q(76700),	-- after buying/loot 'Titan Watcher's Shortblade' (itemID 206795) (spellID 418882)
				-- q(76702),	-- after buying/loot 'Titanic Hourglass' (itemID 206782) (spellID 418881)
				-- q(76609),	-- after buying/loot 'Unknown Horror's Arm' (itemID 206769) (spellID 418880)
				-- q(76689),	-- after buying/loot 'Upraised Headstone' (itemID 206793) (spellID 418879)
				-- q(76697),	-- after buying/loot 'Utopian Tabard' (itemID 206788) (spellID 418878)
				-- q(76701),	-- after buying/loot 'Valhalas Heartstriker' (itemID 206798) (spellID 418877)
				-- q(76698),	-- after buying/loot 'Valhalas Peacekeeper' (itemID 206767) (spellID 418876)
				q(76688),	-- after buying/loot 'Scourge Victorious Tabard' (itemID 206786) (spellID 418875)
				-- q(76656),	-- after buying/loot 'Warmonger's Breastplate' (itemID 206879) (spellID 418874)
				-- q(76652),	-- after buying/loot 'Warmonger's Casque' (itemID 206853) (spellID 418872)
				-- q(76650),	-- after buying/loot 'Warmonger's Chainmail' (itemID 206858) (spellID 418871)
				q(76662),	-- after buying/loot 'Warmonger's Cloth Armor Bag' (itemID 207081) (spellID 418870)
				q(76663),	-- after buying/loot 'Warmonger's Cloth Equipment Bag' (itemID 207073) (spellID 418869)
				q(76661),	-- after buying/loot 'Warmonger's Cloth Gear Bag' (itemID 207074) (spellID 418868)
				-- q(76658),	-- after buying/loot 'Warmonger's Greathelm' (itemID 206884) (spellID 418867)
				-- q(76647),	-- after buying/loot 'Warmonger's Headcover' (itemID 206846) (spellID 418866)
				q(76666),	-- after buying/loot 'Warmonger's Leather Armor Bag' (itemID 207079) (spellID 418865)
				q(76667),	-- after buying/loot 'Warmonger's Leather Equipment Bag' (itemID 207069) (spellID 418864)
				q(76664),	-- after buying/loot 'Warmonger's Leather Gear Bag' (itemID 207070) (spellID 418863)
				q(76665),	-- after buying/loot 'Warmonger's Leather Suit Bag' (itemID 207094) (spellID 418862)
				-- q(76642),	-- after buying/loot 'Warmonger's Leggings' (itemID 206814) (spellID 418861)
				-- q(76654),	-- after buying/loot 'Warmonger's Legguards' (itemID 206854) (spellID 418860)
				-- q(76660),	-- after buying/loot 'Warmonger's Legplates' (itemID 206883) (spellID 418859)
				q(76669),	-- after buying/loot 'Warmonger's Mail Armor Bag' (itemID 207077) (spellID 418858)
				q(76670),	-- after buying/loot 'Warmonger's Mail Equipment Bag' (itemID 207066) (spellID 418856)
				q(76668),	-- after buying/loot 'Warmonger's Mail Gear Bag' (itemID 207065) (spellID 418855)
				q(76649),	-- after buying/loot 'Warmonger's Pantaloons' (itemID 206845) (spellID 418854)
				q(76672),	-- after buying/loot 'Warmonger's Plate Armor Bag' (itemID 207076) (spellID 418853)
				q(76673),	-- after buying/loot 'Warmonger's Plate Equipment Bag' (itemID 207051) (spellID 418852)
				q(76671),	-- after buying/loot 'Warmonger's Plate Gear Bag' (itemID 207050) (spellID 418851)
				-- q(76674),	-- after buying/loot 'Warmonger's Ripper' (itemID 207015) (spellID 418850)
				-- q(76644),	-- after buying/loot 'Warmonger's Robe' (itemID 206808) (spellID 418849)
				-- q(76640),	-- after buying/loot 'Warmonger's Skullcap' (itemID 206816) (spellID 418848)
				-- q(77179),	-- Unlock the title Unparalleled on your account (spellID 417360) (after questID 77250)
			}),
		}),
	}),
})));