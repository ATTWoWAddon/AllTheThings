--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
-- #if BEFORE 6.2.3.20601
if true then return end
-- #endif
-- Helper function to build a CRS list for the Timereaver Mount.
-- Since this data is all in the same file, we no longer have to do this as part of a post-processor.
local TIMEWALKING_DUNGEON_CREATURE_IDS = {};
local function inst_tw(id, t)
	t = inst(id, t);
	t.difficultyID = DIFFICULTY.DUNGEON.TIMEWALKING;
	t.ItemAppearanceModifierID = 0;

	-- Look for the CreatureID's
	local groups = t.groups or t.g;
	if groups then
		for _,data in ipairs(groups) do
			if data.encounterID then
				if data.creatureID and data.creatureID > 0 then
					table.insert(TIMEWALKING_DUNGEON_CREATURE_IDS, data.creatureID);
				end
				if data.crs then
					for _,creatureID in ipairs(data.crs) do
						table.insert(TIMEWALKING_DUNGEON_CREATURE_IDS, creatureID);
					end
				end
			end
		end
	end
	return t;
end
-- Provide a table of the instanceID's which should have corresponding Timewalking headers built
-- Additionally the instanceID can be a table itself containing the {Source instanceID, sub-mapID, [timewalking instanceID]}
local function AddInstancesToRotation(expansionTier, argument1, ...)
	local instances = {};
	for i,instanceInfo in ipairs(type(argument1) == "table" and argument1 or { argument1, ... }) do
		if instanceInfo then
			-- instanceInfo can also designate a sub-mapID within the instance group (Classic dungeons which were split)
			if type(instanceInfo) == "table" then
				table.insert(instances, inst(instanceInfo[1], {	m(instanceInfo[2], {
					d(DIFFICULTY.DUNGEON.TIMEWALKING, { ["sym"] = {{"sub", "tw_instance", instanceInfo[3] or instanceInfo[1] }}, }),
				})}));
			else
				table.insert(instances, inst(instanceInfo, {
					d(DIFFICULTY.DUNGEON.TIMEWALKING, { ["sym"] = {{"sub", "tw_instance", instanceInfo }}, }),
				}));
			end
		end
	end
	root(ROOTS.Instances, expansion(expansionTier, instances));
end

root(ROOTS.Holidays, applyevent(EVENTS.TIMEWALKING, n(TIMEWALKING_HEADER, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_2 } }, {
	["modID"] = 22,	-- Timewalking
	["difficultyID"] = DIFFICULTY.DUNGEON.TIMEWALKING;
	["groups"] = {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7, REMOVED_10_2_0 } }, {
			ach(19079, {	-- Master of the Turbulent Timeways (automated!)
				["description"] = "Each week finish 4 dungeons with Distilled Knowledge of Timeways buff active, upon reaching 4 stacks the buff changes into Mastery of Timeways, completing that week's criteria.",
				["groups"] = {
					i(205208),	-- Sandy Shalewing (MOUNT!)
				},
			}),
			ach(41056, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_7, REMOVED_11_1_0 } }, {	-- Master of the Turbulent Timeways II (automated!)
				["description"] = "Each week finish 4 dungeons with Distilled Knowledge of Timeways buff active, upon reaching 4 stacks the buff changes into Mastery of Timeways, completing that week's criteria.",
				["groups"] = {
					i(232624),	-- Timely Buzzbee (MOUNT!)
				},
			})),
		})),
		n(COMMON_BOSS_DROPS, {
			i(133543, {	-- Infinite Timereaver (MOUNT!)
				["crs"] = TIMEWALKING_DUNGEON_CREATURE_IDS,
			}),
		}),
		n(COMMON_VENDOR_ITEMS, {
			["crs"] = {
				-- #if AFTER 6.2.2.20395
				98685,	-- Cupri <Timewalking Vendor>
				98690,	-- Auzin <Timewalking Vendor>
				-- #endif
				-- #if AFTER 6.2.3.20601
				101759,	-- Kiatke <Timewalking Vendor>
				-- #endif
				-- #if AFTER 7.1.5.23109
				118828,	-- Mistweaver Xia <Timewalking Vendor>
				-- #endif
				-- #if AFTER 8.1.5.29701
				151987,	-- Kronnus <Timewalking Vendor> [Horde Side]
				151955,	-- Tempra <Timewalking Vendor> [Alliance Side]
				-- #endif
				-- #if AFTER 9.1.5.40871
				180899,	-- Aridormi <Timewalking Vendor>
				-- #endif
			},
			["maps"] = {
				-- #if AFTER 6.2.2.20395
				SHATTRATH_CITY,
				NORTHREND_DALARAN,
				-- #endif
				-- #if AFTER 6.2.3.20601
				STORMWIND_CITY,
				ORGRIMMAR,
				-- #endif
				-- #if AFTER 7.1.5.23109
				TIMELESS_ISLE,
				-- #endif
				-- #if AFTER 8.1.5.29701
				WARSPEAR,
				STORMSHIELD,
				-- #endif
				-- #if AFTER 9.1.5.40871
				LEGION_DALARAN,
				-- #endif
			},
			["groups"] = {
				i(122338, {	-- Ancient Heirloom Armor Casing
					["cost"] = {{ "c", TIMEWARPED_BADGE, 750 }},
					["sym"] = {{ "fill" }},
				}),
				i(122339, {	-- Ancient Heirloom Scabbard
					["cost"] = {{ "c", TIMEWARPED_BADGE, 900 }},
					["sym"] = {{ "fill" }},
				}),
				i(204336, {	-- Awakened Heirloom Armor Casing
					["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
					["timeline"] = { ADDED_10_0_7 },
					["sym"] = {{ "fill" }},
				}),
				i(204337, {	-- Awakened Heirloom Scabbard
					["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
					["timeline"] = { ADDED_10_0_7 },
					["sym"] = {{ "fill" }},
				}),
				i(167731, {	-- Battle-Hardened Heirloom Armor Casing
					["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
					["timeline"] = { ADDED_8_1_5 },
					["sym"] = {{ "fill" }},
				}),
				i(167732, {	-- Battle-Hardened Heirloom Scabbard
					["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
					["timeline"] = { ADDED_8_1_5 },
					["sym"] = {{ "fill" }},
				}),
				i(187997, {	-- Eternal Heirloom Armor Casing
					["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
					["timeline"] = { ADDED_9_1_5 },
					["sym"] = {{ "fill" }},
				}),
				i(187998, {	-- Eternal Heirloom Scabbard
					["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
					["timeline"] = { ADDED_9_1_5 },
					["sym"] = {{ "fill" }},
				}),
				i(205208, {	-- Sandy Shalewing (MOUNT!)
					["cost"] = {{ "c", TIMEWARPED_BADGE, 5000 }},
					["timeline"] = { ADDED_11_0_7 },
				}),
				i(122340, {	-- Timeworn Heirloom Armor Casing
					["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
					["sym"] = {{ "fill" }},
				}),
				i(122341, {	-- Timeworn Heirloom Scabbard
					["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
					["sym"] = {{ "fill" }},
				}),
				i(151614, {	-- Weathered Heirloom Armor Casing
					["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
					["timeline"] = { ADDED_7_2_5 },
					["sym"] = {{ "fill" }},
				}),
				i(151615, {	-- Weathered Heirloom Scabbard
					["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
					["timeline"] = { ADDED_7_2_5 },
					["sym"] = {{ "fill" }},
				}),
			},
		}),
	},
}))));

-- Classic Timewalking
root(ROOTS.Holidays, n(TIMEWALKING_HEADER, applyevent(EVENTS.TIMEWALKING_CLASSIC_DUNGEON_EVENT, {
	expansion(EXPANSION.CLASSIC, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
		n(ACHIEVEMENTS, {
			achWithRep(957, FACTION_ZANDALAR_TRIBE),	-- Hero of the Zandalar Tribe
		}),
		n(GROUP_FINDER, {
			i(225348, {	-- Ancient Timewarped Scroll
				["description"] = "Drops from the last boss of any 'Classic Timewalking' dungeon.",
			}),
		}),
		n(QUESTS, {
			-- TW Classic Quest under level 80
			q(85947, {	-- An Original Journey Through Time
				["provider"] = { "n", 234555 },	-- Bobadormu
				["coords"] = {
					{ 56.0, 19.0, STORMWIND_CITY },
					{ 52.8, 83.0, ORGRIMMAR },
				},
				["isWeekly"] = true,
				["timeline"] = { ADDED_11_0_5 },
				["lockCriteria"] = { 1, "lvl", 80 },
				["g"] = {
					i(232877, {	-- Timely Goodie Bag
						["sym"] = {
							{ "select", "itemID", 229355},	-- Chromie's Premium Goodie Bag
							{ "pop" },
						},
					}),
				},
			}),
			q(83274, {	-- An Original Path Through Time
				["provider"] = { "n", 234555 },	-- Bobadormu
				["coords"] = {
					{ 56.0, 19.0, STORMWIND_CITY },
					{ 52.8, 83.0, ORGRIMMAR },
				},
				["isWeekly"] = true,
				["timeline"] = { ADDED_11_0_5 },
				["lvl"] = 80,
				["sym"] = { { "select", "itemID", 232877 } },	-- Timely Goodie Bag
			}),
			q(83285, {	-- The Ancient Scroll
				["provider"] = { "i", 225348 },	-- Ancient Timewarped Scroll
				["isWeekly"] = true,
				["groups"] = {
					currency(TIMEWARPED_BADGE),
				},
			}),
		}),
		n(VENDORS, {
			n(234555, {	--  Bobadormu
				["coords"] = {
					{ 56.0, 19.0, STORMWIND_CITY },
					{ 52.8, 83.0, ORGRIMMAR },
				},
				["timeline"] = { ADDED_11_0_7 },
				["g"] = {
					n(ARMOR, bubbleDownFiltered({
						["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
						["modID"] = 0,
					},FILTERFUNC_itemID,{
						filter(BACK_F, {
							i(225187),	-- Blackmetal Cape
						}),
						filter(CLOTH, {
							i(225182),	-- Aristocratic Cuffs
							i(224858),	-- Coldstone Slippers
							i(224854),	-- Holy Shroud
						}),
						filter(FINGER_F, {
							i(225186),	-- Freezing Band
						}),
						filter(LEATHER, {
							i(224853),	-- Adventurer's Pith Helmet
							i(224857),	-- Feet of the Lynx
							i(225181),	-- Unearthed Bands
						}),
						filter(MAIL, {
							i(224859),	-- Caverndeep Trudgers
							i(224855),	-- Helm of Narv
							i(225183),	-- Slimescale Bracers
						}),
						filter(PLATE, {
							i(224860),	-- Boots of Avoidance
							i(224856),	-- Mugthol's Helm
							i(234862, {	-- Ogre Captains Armor
								["modID"] = 22,
								["cost"] = {{ "c", TIMEWARPED_BADGE, 100 }},
							}),
							i(225184),	-- Runed Golem Shackles
						}),
					})),
					filter(BATTLE_PETS, {
						i(224410, {	-- Craggles (PET!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 2200}}
						}),
						i(224406, {	-- Misty (PET!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 2200}}
						}),
					}),
					filter(COSMETIC, bubbleDown({["modID"] = 0 }, {
						i(227718, {	-- Bearded Branch of Lore
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}}
						}),
						i(227704, {	-- Claymore of the Knight's Pledge
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}}
						}),
						i(227706, {	-- Doomreaper's Scythe
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}}
						}),
						i(227707, {	-- Doomwail Reaper
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}}
						}),
						i(227712, {	-- Emberswirl Bulwark
							["cost"] = {{"c", TIMEWARPED_BADGE, 2000}}
						}),
						i(227703, {	-- Farstrider's Huntsblade
							["cost"] = {{"c", TIMEWARPED_BADGE, 1500}}
						}),
						i(227714, {	-- Gilded Drakecrest Shield
							["cost"] = {{"c", TIMEWARPED_BADGE, 2000}}
						}),
						i(227709, {	-- Kirin Tor Adept's Stave
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}}
						}),
						i(227705, {	-- Runed-Ice Dirk
							["cost"] = {{"c", TIMEWARPED_BADGE, 1500}}
						}),
						i(227717, {	-- Sermons of the Naaru
							["cost"] = {{"c", TIMEWARPED_BADGE, 1500}}
						}),
						i(227711, {	-- Tusked Branch of War
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}}
						}),
					})),
					filter(MISC, sharedData({
						["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
					}, {
						i(224567),	-- Commendation of the Argent Dawn
						i(224558),	-- Commendation of the Brood of Nozdormu
						i(224561),	-- Commendation of the Hydraxian Waterlords
						i(224571),	-- Commendation of the Thorium Brotherhood
						i(224566),	-- Commendation of the Timbermaw Hold
						i(224565, {	-- Commendation of the Wintersaber Trainers
							["races"] = ALLIANCE_ONLY,
						}),
						i(224570),	-- Commendation of the Zandalar Tribe
					})),
					filter(MISC, {	-- Might be unecessary..
						i(122338, {	-- Ancient Heirloom Armor Casing
							["cost"] = {{ "c", TIMEWARPED_BADGE, 750 }},
							["sym"] = {{ "fill" }},
						}),
						i(122339, {	-- Ancient Heirloom Scabbard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 900 }},
							["sym"] = {{ "fill" }},
						}),
						i(204336, {	-- Awakened Heirloom Armor Casing
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
							["timeline"] = { ADDED_10_0_7 },
							["sym"] = {{ "fill" }},
						}),
						i(204337, {	-- Awakened Heirloom Scabbard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
							["timeline"] = { ADDED_10_0_7 },
							["sym"] = {{ "fill" }},
						}),
						i(167731, {	-- Battle-Hardened Heirloom Armor Casing
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
							["timeline"] = { ADDED_8_1_5 },
							["sym"] = {{ "fill" }},
						}),
						i(167732, {	-- Battle-Hardened Heirloom Scabbard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
							["timeline"] = { ADDED_8_1_5 },
							["sym"] = {{ "fill" }},
						}),
						i(187997, {	-- Eternal Heirloom Armor Casing
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
							["timeline"] = { ADDED_9_1_5 },
							["sym"] = {{ "fill" }},
						}),
						i(187998, {	-- Eternal Heirloom Scabbard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
							["timeline"] = { ADDED_9_1_5 },
							["sym"] = {{ "fill" }},
						}),
						i(122340, {	-- Timeworn Heirloom Armor Casing
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
							["sym"] = {{ "fill" }},
						}),
						i(122341, {	-- Timeworn Heirloom Scabbard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
							["sym"] = {{ "fill" }},
						}),
						i(151614, {	-- Weathered Heirloom Armor Casing
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
							["timeline"] = { ADDED_7_2_5 },
							["sym"] = {{ "fill" }},
						}),
						i(151615, {	-- Weathered Heirloom Scabbard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
							["timeline"] = { ADDED_7_2_5 },
							["sym"] = {{ "fill" }},
						}),
					}),
					filter(MISC, {
						i(224190, {	-- Kreeg's Hardy Draught
							["cost"] = {{"c", TIMEWARPED_BADGE, 25}}
						}),
						i(225378, {	-- Mohawk Grenade
							["cost"] = {{"c", TIMEWARPED_BADGE, 200}}
						}),
					}),
					filter(MOUNTS, {
						i(224398, {	-- Frayfeather Hippogryph (MOUNT!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 5000}}
						}),
						i(205208, {	-- Sandy Shalewing (MOUNT!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 5000}}
						}),
					}),
					filter(TOYS, {
						i(224192, {	-- Practice Ravager (TOY!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 200}}
						}),
					}),
					n(WEAPONS, bubbleDown({["modID"] = 0 }, {
						i(225200, {	-- Alcor's Sunrazor
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}}
						}),
						i(225195, {	-- Axe of the Deep Woods
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}}
						}),
						i(225192, {	-- Bow of Searing Arrows
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}}
						}),
						i(225197, {	-- Crimson Shocker
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}}
						}),
						i(225193, {	-- Elemental Mage Staff
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}}
						}),
						i(225199, {	-- Flurry Axe
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}}
						}),
						i(225196, {	-- Grimlok's Charge
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}}
						}),
						i(225191, {	-- Gut Ripper
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}}
						}),
						i(225188, {	-- Lefty's Brass Knuckle
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}}
						}),
						i(225189, {	-- Lightforged Blade
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}}
						}),
						i(234624, {	-- Longsword of the Knight's Pledge
							["cost"] = {{"c", TIMEWARPED_BADGE, 1500}},
						}),
						i(225190, {	-- Pendulum of Doom
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}}
						}),
						i(225201, {	-- Precisely Calibrated Rifle
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}}
						}),
						i(225194, {	-- Redbeard Crest
							["cost"] = {{"c", TIMEWARPED_BADGE, 35}}
						}),
						i(225198, {	-- Warden Staff
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}}
						}),
					})),
				},
			}),
		}),
		inst_tw(63, {	-- Deadmines
			e(2613, {	-- Rhahk'Zor
				["crs"] = { 644 },
				["g"] = {
					i(224735),	-- Blackened Bone Necklace
					i(224731),	-- Ogre-Sized Belt
					i(224732),	-- Foreman's Handwraps
					i(224733),	-- Watchman's Boots
					i(224734),	-- Defias Spiked Pauldrons
					i(872),	-- Rockslicer
				},
			}),
			e(2626, {	-- Sneed
				["crs"] = { 643 },
				["g"] = {
					i(224736),	-- Shredder Teeth
					i(224737),	-- Goblin Treekickers
					i(224738),	-- Logger's Wristguards
					i(224739),	-- Lumbermaster's Mantle
					i(5194),	-- Taskmaster Axe
					i(1937),	-- Buzz Saw
					i(2169),	-- Buzzer Blade
					i(5195),	-- Gold-flecked Gloves
				},
			}),
			e(2628, {	-- Gilned
				["crs"] = { 1763 },
				["g"] = {
					i(224740),	-- Forgemasters's Faceshield
					i(224741),	-- Defias Scimitar
					i(5199),	-- Smelting Pants
					i(1156),	-- Lavishly Jeweled Ring
				},
			}),
			e(2629, {	-- Mr. Smite
				["crs"] = { 646 },
				["g"] = {
					i(224742),	-- Smite's Pistol
					i(224744),	-- Defias Cuirass
					i(224745),	-- Blackguard Slippers
					i(224746),	-- Thief's Gloves
					i(224747),	-- Buccaneer's Bludgeon
					i(7230),	-- Smite's Mighty Hammer
					i(5196),	-- Smite's Reaver
					i(5192),	-- Thief's Blade
				},
			}),
			e(2630, {	-- Captain Greenskin
				["crs"] = { 647 },
				["g"] = {
					i(224748),	-- Captain's Tricorne
					i(224749),	-- Goblin Griptreads
					i(224753),	-- Pirate Captain's Girdle
					i(5201),	-- Emberstone Staff
					i(5200),	-- Impaling Harpoon
					i(10403),	-- Blackened Defias Belt
				},
			}),
			e(2631, {	-- Edwin VanCleef
				["crs"] = { 639 },
				["g"] = {
					i(224754),	-- Guildmaster's Leggings
					i(224755),	-- Defias Knifeguards
					i(5191),	-- Cruel Barb
					i(5193),	-- Cape of the Brotherhood
					i(5202),	-- Corsair's Overshirt
					i(10399),	-- Blackened Defias Armor
				},
			}),
			e(2632, {	-- Cookie
				["crs"] = { 645 },
				["g"] = {
					i(5198),	-- Cookie's Stirring Rod
					i(5197),	-- Cookie's Tenderizer
					i(224756),	-- Cookie's Special Flavors
					i(224757),	-- Master Chef's Gloves
					i(224758),	-- Stolen Stormwind Helmet
					i(224759),	-- Pirate's Bracers
				},
			}),
		}),
		inst_tw(230, {	-- Dire Maul - Capital Gardens
			e(406, {	-- Tendris Warpwood
				["crs"] = { 11489 },	-- Tendris Warpwood
				["g"] = {
					i(18353),	-- Stoneflower Staff
					i(18352),	-- Petrified Bark Shield
					i(18393),	-- Warpwood Bindings
					i(18390),	-- Tanglemoss Leggings
				},
			}),
			e(407, {	-- Illyanna Ravenoak
				["crs"] = { 11488 },	-- Illyaana Ravenoak
				["g"] = {
					i(18347),	-- Well Balanced Axe
					i(18383),	-- Force Imbued Gauntlets
					i(18349),	-- Gauntlets of Accuracy
					i(18377),	-- Quickdraw Gloves
					i(18386),	-- Padre's Trousers
				},
			}),
			e(408, {	-- Magister Kalendris
				["crs"] = { 11487 },	-- Magister Kalendris
				["g"] = {
					i(18397),	-- Elder Magus Pendant
					i(18374),	-- Flamescarred Shoulders
					i(18350),	-- Amplifying Cloak
					i(18351),	-- Magically Sealed Bracers
					i(18371),	-- Mindtap Talisman
				},
			}),
			e(409, {	-- Immol'thar
				["crs"] = { 11496 },	-- Immol'thar
				["g"] = {
					i(18372),	-- Blade of the New Moon
					i(18381),	-- Evil Eye Pendant
					i(18384),	-- Bile-Etched Spaulders
					i(18389),	-- Cloak of the Cosmos
					i(18385),	-- Robe of Everlasting Night
					i(18394),	-- Demon Howl Wristguards
					i(18391),	-- Eyestalk Cord
					i(18379),	-- Odious Greaves
					i(18370),	-- Vigilance Charm
				},
			}),
			e(410, {	-- Prince Tortheldrin
				["crs"] = { 11486 },	-- Prince Tortheldrin
				["g"] = {
					i(18392),	-- Distracting Dagger
					i(18396),	-- Mind Carver
					i(18376),	-- Timeworn Mace
					i(18388),	-- Stoneshatter
					i(18382),	-- Fluctuating Cloak
					i(18373),	-- Chestplate of Tranquility
					i(18375),	-- Bracers of the Eclipse
					i(18380),	-- Eldritch Reinforced Legplates
					i(18378),	-- Silvermoon Leggings
					i(18395),	-- Emerald Flame Ring
				},
			}),
		}),
		inst_tw(1276, {	-- Dire Maul - Warpwood Quarter
			e(404, {	-- Lethtendris
				["crs"] = { 14327 },	-- Lethtendris
				["g"] = {
					i(18302),	-- Band of Vigor
					i(18325),	-- Felhide Cap
					i(18301),	-- Lethtendris' Wand
					i(18311),	-- Quel'dorei Channeling Rod
				},
			}),
			e(403, {	-- Hydrospawn
				["crs"] = { 13280 },	-- Hydrospawn
				["g"] = {
					i(18305),	-- Breakwater Legguards
					i(18307),	-- Riptide Shoes
					i(18317),	-- Tempest Talisman
					i(18322),	-- Waterspout Boots
					i(18324),	-- Waveslicer
				},
			}),
			e(402, {	-- Zevrim Thornhoof
				["crs"] = { 11490 },	-- Zevrim Thornhoof
				["g"] = {
					i(18308),	-- Clever Hat
					i(18319),	-- Fervent Helm
					i(18306),	-- Gloves of Shadowy Mist
					i(18313),	-- Helm of Awareness
					i(18315),	-- Ring of Demonic Potency
					i(18323),	-- Satyr's Bow
				},
			}),
			e(405, {	-- Alzzin the Wildshaper
				["crs"] = { 11492 },	-- Alzzin the Wildshaper
				["g"] = {
					i(18321),	-- Energetic Rod
					i(18312),	-- Energized Chestplate
					i(18310),	-- Fiendish Machete
					i(18309),	-- Gloves of Restoration
					i(18318),	-- Merciful Greaves
					i(18326),	-- Razor Gauntlets
					i(18314),	-- Ring of Demonic Guile
					i(18328),	-- Shadewood Cloak
					i(18327),	-- Whipvine Cord
				},
			}),
		}),
		inst_tw(236, {	-- Stratholme - Main Gate
			e(443, {	-- Hearthsinger Forresten
				["crs"] = { 10558 },	-- Hearthsinger Forresten
				["g"] = {
					i(13384),	-- Rainbow Girdle
					i(13378),	-- Songbird Blouse
					i(12103),	-- Star of Mystaria
					i(13383),	-- Woollies of the Prancing Minstrel
				},
			}),
			e(450, {	-- The Unforgiven
				["crs"] = { 10516 },	-- The Unforgiven
				["g"] = {
					i(151404),	-- Gauntlets of Purged Sanity
					i(13404),	-- Mask of the Unforgiven
					i(22406),	-- Redemption
					i(13408),	-- Soul Breaker
					i(13409),	-- Tearfall Bracers
					i(13405),	-- Wailing Nightbane Pauldrons
				},
			}),
			e(2633, {	-- Postmaster Malown
				["crs"] = { 11143 },	-- Postmaster Malown
				["g"] = {
					i(232905),	-- Malown's Slam
					i(13390),	-- The Postmaster's Band
					i(13392),	-- The Postmaster's Seal
					i(13391),	-- The Postmaster's Treads
					i(13389),	-- The Postmaster's Trousers
					i(13388),	-- The Postmaster's Tunic
				},
			}),
			e(445, {	-- Timmy the Cruel
				["crs"] = { 10808 },	-- Timmy the Cruel
				["g"] = {
					i(151403),	-- Fetid Stranglers
					i(13403),	-- Grimgore Noose
					i(13401),	-- The Cruel Hand of Timmy
					i(13402),	-- Timmy's Galoshes
					i(13400),	-- Vambraces of the Sadist
				},
			}),
			e(749, {	-- Commander Malor
				["crs"] = { 11032 },	-- Commander Malor
				["g"] = {
					i(22403),	-- Nacreous Shell Necklace
				},
			}),
			e(446, {	-- Willey Hopebreaker
				["crs"] = { 10997 },	-- Willey Hopebreaker
				["g"] = {
					i(18721),	-- Barrage Girdle
					i(13382),	-- Cannonball Runner
					i(22407),	-- Helm of the New Moon
					i(22405),	-- Mantle of the Scarlet Crusade
					i(13381),	-- Master Cannoneer Boots
					i(22404),	-- Willey's Back Scratcher
					i(13380),	-- Willey's Portable Howitzer
				},
			}),
			e(448, {	-- Instructor Galford
				["crs"] = { 10811 },	-- Instructor Galford
				["g"] = {
					i(13386),	-- Archivist Cape
					i(18716),	-- Ash Covered Boots
					i(13387),	-- Foresight Girdle
					i(13385),	-- Tome of Knowledge
				},
			}),
			e(449, {	-- Balnazzar
				["crs"] = {
					10813,	-- Balnazzar
					10812,	-- Grand Crusader Dathrohan
				},
				["g"] = {
					i(13353),	-- Book of the Dead
					i(13359),	-- Crown of Tyranny
					i(13348),	-- Demonshear
					i(13369),	-- Fire Striders
					i(13360),	-- Gift of the Elven Magi
					i(18718),	-- Grand Crusader's Helm
					i(18717),	-- Hammer of the Grand Crusader
					i(18720),	-- Shroud of the Nathrezim
					i(13358),	-- Wyrmtongue Shoulders
				},
			}),
		}),
		inst_tw(1292, {	-- Stratholme - Service Entrance
			e(451, {	-- Baroness Anastari
				["crs"] = { 10436 },	-- Baroness Anastari
				["g"] = {
					i(18728),	-- Anastari Heirloom
					i(13534),	-- Banshee Finger
					i(13539),	-- Banshee's Touch
					i(13537),	-- Chillhide Bracers
					i(13535),	-- Coldtouch Phantom Wraps
					i(18729),	-- Screeching Bow
					i(18730),	-- Shadowy Laced Handwraps
					i(13538),	-- Windshrieker Pauldrons
				},
			}),
			e(452, {	-- Nerub'enkan
				["crs"] = { 10437 },	-- Nerub'enkan
				["g"] = {
					i(13533),	-- Acid-Etched Pauldrons
					i(18738),	-- Carapace Spine Crossbow
					i(18739),	-- Chitinous Plate Legguards
					i(13531),	-- Crypt Stalker Leggings
					i(13532),	-- Darkspinner Claws
					i(13530),	-- Fangdrip Runners
					i(13529),	-- Husk of Nerub'enkan
					i(18740),	-- Thuzadin Sash
				},
			}),
			e(453, {	-- Maleki the Pallid
				["crs"] = { 10438 },	-- Maleki the Pallid
				["g"] = {
					i(18737),	-- Bone Slicing Hatchet
					i(13525),	-- Darkbind Fingers
					i(13526),	-- Flamescarred Girdle
					i(13527),	-- Lavawalker Greaves
					i(18735),	-- Maleki's Footwraps
					i(18734),	-- Pale Moon Cloak
					i(13524),	-- Skull of Burning Shadows
					i(13528),	-- Twilight Void Bracers
				},
			}),
			e(454, {	-- Magistrate Barthilas
				["crs"] = { 10435 },	-- Magistrate Barthilas
				["g"] = {
					i(18727),	-- Crimson Felt Hat
					i(18722),	-- Death Grips
					i(18726),	-- Magistrate's Cuffs
					i(18725),	-- Peacemaker
					i(13376),	-- Royal Tribunal Cloak
				},
			}),
			e(455, {	-- Ramstein the Gorger
				["crs"] = { 10439 },	-- Ramstein the Gorger
				["g"] = {
					i(18723),	-- Animated Chain Necklace
					i(13373),	-- Band of Flesh
					i(13375),	-- Crest of Retribution
					i(13515),	-- Ramstein's Lightning Bolts
					i(13372),	-- Slavedriver's Cane
					i(13374),	-- Soulstealer Mantle
				},
			}),
			e(456, {	-- Lord Aurius Rivendare
				["crs"] = { 45412 },	-- Lord Aurius Rivendare
				["g"] = {
					i(13335),	-- Rivendare's Deathcharger (MOUNT!)
					i(13368),	-- Bonescraper
					i(13340),	-- Cape of the Black Baron
					i(13344),	-- Dracorian Gauntlets
					i(22410),	-- Gauntlets of Deftness
					i(22411),	-- Helm of the Executioner
					i(22408),	-- Ritssyn's Wand of Bad Mojo
					i(13346),	-- Robes of the Exalted
					i(13505),	-- Runeblade of Baron Rivendare
					i(13349),	-- Scepter of the Unholy
					i(13345),	-- Seal of Rivendare
					i(13361),	-- Skullforge Reaver
					i(22412),	-- Thuzadin Mantle
					i(22409),	-- Tunic of the Crescent Moon
				},
			}),
		}),
		inst_tw(241, {	-- Zul'Farrak
			e(485, {	-- Theka the Martyr
				["crs"] = { 7272 },	-- Theka the Martyr
				["g"] = {
					i(151456),	-- Theka's Seal of Vigilance
				},
			}),
			e(482, {	-- Hydromancer Velratha
				["crs"] = { 7795 },	-- Hydromancer Velratha
				["g"] = {
					i(9243),	-- Shriveled Troll Heart
				},
			}),
			e(484, {	-- Antu'sul
				["crs"] = { 8127 },	-- Antu'sul
				["g"] = {
					i(9641),	-- Lifeblood Amulet
					i(9379),	-- Sang'thraze the Deflector
					i(9639),	-- The Hand of Antu'sul
					i(9640),	-- Vice Grips
				},
			}),
			e(486, {	-- Witch Doctor Zum'rah
				["crs"] = { 7271 },
				["g"] = {
					i(18083),	-- Jumanza Grips
					i(151457),	-- Witch Doctor's Ritual Collar
					i(18082),	-- Zum'rah's Vexing Cane
				},
			}),
			e(483, {	-- Gahz'rilla
				["crs"] = { 7273 },	-- Gahz'rilla
				["g"] = {
					i(9467),	-- Gahz'rilla Fang
					i(9469),	-- Gahz'rilla Scale Armor
					i(151455),	-- Gahz'rilla Scale Cloak
				},
			}),
			e(487, {	-- Nekrum & Sezzi'ziz
				["crs"] = {
					7796,	-- Nekrum Gutchewer
					7275,	-- Shadowpriest Sezz'ziz
				},
				["g"] = {
					i(9470),	-- Bad Mojo Mask
					i(9475),	-- Diabolic Skiver
					i(9474),	-- Jinxed Hoodoo Kilt
					i(9473),	-- Jinxed Hoodoo Skin
					i(151459),	-- Nekrum's Witherguard
					i(151458),	-- Sezz'ziz's Captive Kickers
				},
			}),
			e(489, {	-- Chief Ukorz Sandscalp
				["crs"] = {
					7267,	-- Chief Ukorz Sandscalp
					7797,	-- Ruuzlu
				},
				["g"] = {
					i(9476),	-- Big Bad Pauldrons
					i(9479),	-- Embrace of the Lycan
					i(151460),	-- Farraki Ceremonial Robes
					i(232903),	-- Jang'thraze the Protector
					i(9478),	-- Ripsaw
					i(232904),	-- Sul'thraze the Lashe
					i(9477),	-- The Chief's Enforcer
					i(151461),	-- Ukorz's Chain Leggings
				},
			}),
		}),
	})),
})));

-- Only instances still in rotation should be in this list.
-- This will prevent instances that don't have Timewalking currently from showing in the mini list.
AddInstancesToRotation(EXPANSION.CLASSIC, {
	-- Dungeons
	63,		-- Deadmines
	{230,236},	-- Dire Maul - Capital Gardens
	{230,239,1276},	-- Dire Maul - Warpwood Quarter
	{236,STRATHOLME},	-- Stratholme - Main Gate
	{236,318,1292},	-- Stratholme - Service Entrance
	241,	-- Zul'Farrak
});

-- The Burning Crusade Timewalking
root(ROOTS.Holidays, n(TIMEWALKING_HEADER, applyevent(EVENTS.TIMEWALKING_OUTLAND_DUNGEON_EVENT, {
	expansion(EXPANSION.TBC, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_2 } }, {
		n(GROUP_FINDER, {
			i(187902, {	-- Sporebat Soul (SS!)
				["timeline"] = { ADDED_9_1_5 },
				["description"] = "Can drop from the last boss of any 'The Burning Crusade Timewalking' dungeon if you are aligned with the 'Night Fae Covenant'.",
			}),
			i(129747, {	-- Swirling Timewarped Vial
				["description"] = "Drops from the last boss of any 'The Burning Crusade Timewalking' dungeon.",
			}),
		}),
		n(QUESTS, {
			-- TW TBC Quest under level 80
			q(85948, {	-- A Burning Journey Through Time
				["provider"] = { "n", 98685 },	-- Cupri
				["coord"] = { 54.4, 38.8,  SHATTRATH_CITY },
				["timeline"] = { ADDED_11_0_5 },
				["isWeekly"] = true,
				["lockCriteria"] = { 1, "lvl", 80 },
				["g"] = {
					i(232877, {	-- Timely Goodie Bag
						["sym"] = {
							{ "select", "itemID", 229355},	-- Chromie's Premium Goodie Bag
							{ "pop" },
						},
					}),
				},
			}),
			q(47523, {	-- Disturbance Detected: Black Temple
				["coord"] = { 54.6, 39,  SHATTRATH_CITY },
				["provider"] = { "n", 123252 },	-- Vormu
				["isWeekly"] = true,
				["timeline"] = { ADDED_7_2_5 },
				["g"] = {
					i(208091, sharedDataSelf({ ["timeline"] = { ADDED_10_1_5 } }, {	-- Cache of Timewarped Treasures (BC)
						["description"] = "This bag contains an item from Black Temple or an item from the WoW's 15th Birthday Event Bosses Archimonde, Kael'Thas or Lady Vashj.\nThe droprate for the mounts seems rather high (5-10%).",
						["sym"] = {{"select","itemID",
							97554,	-- Dripping Strider Egg
							122112,	-- Hyjal Whisp
							122110,	-- Sultry Grimoire
							97555,	-- Tiny Fel Engine Key
						}},
						["groups"] = {
							i(150774),	-- Timewarped Illidari Battleplans (QI!)
						-- Can also contain any item from BT
							i(32458),	-- Ashes of Al'ar (MOUNT!)
							i(133543),	-- Infinite Timereaver (MOUNT!)
							-- Archimonde
							i(171942),	-- Cowl of Absolution
							i(171941),	-- Cowl o the Tempest
							i(171943),	-- Hood of Absolution
							i(171940),	-- Hood of the Malefic
							i(171929),	-- Lightbringer Faceguard
							i(171930),	-- Lightbringer Greathelm
							i(171931),	-- Lightbringer War-Helm
							i(171932),	-- Gronnstalker's Helmet
							i(171927),	-- Onslaught Battle-Helm
							i(171928),	-- Onslaught Greathelm
							i(171935),	-- Skyshatter Cover
							i(171934),	-- Skyshatter Headguard
							i(171933),	-- Skyshatter Helmet
							i(171936),	-- Slayer's Helm
							i(171938),	-- Thunderheart Cover
							i(171939),	-- Thunderheart Headguard
							i(171937),	-- Thunderheart Helmet
							i(171502),	-- Apostle of Argus
							i(171496),	-- Cataclysm's Edge
							i(171504),	-- Tempest of Chaos
							i(171500),	-- Bristleblitz Striker
							i(171503),	-- Antonidas' Aegis of Rapt Concentration
							i(171505),	-- Scepter of Purification
							i(171501),	-- Mail of Fevered Pursuit
							i(171499),	-- Midnight Chestguard
							i(171507),	-- Robes of Rhonin
							i(171498),	-- Savior's Grasp
							i(171506),	-- Leggings of Eternity
							i(171497),	-- Legguards of Endless Rage
							-- Kael Thas
							i(171902),	-- Cataclysm Chestguard
							i(171903),	-- Cataclysm Chestpiece
							i(171904),	-- Cataclysm Chestplate
							i(171896),	-- Crystalforge Breastplate
							i(171895),	-- Crystalforge Chestguard
							i(171897),	-- Crystalforge Chestpiece
							i(171889),	-- Deathmantle Chestguard
							i(171894),	-- Destroyer Breastplate
							i(171893),	-- Destroyer Chestguard
							i(171899),	-- Deathmantle Chestguard
							i(171907),	-- Nordrassil Chestguard
							i(171909),	-- Nordrassil Chestpiece
							i(171908),	-- Nordrassil Chestplate
							i(171901),	-- Shroud of the Avatar
							i(171900),	-- Vestments of the Avatar
							i(171898),	-- Rift Stalker Hauberk
							i(171906),	-- Robe of the Corruptor
							i(171905),	-- Robes of Tirisfal
							i(171494),	-- Band of the Ranger-General
							i(171487),	-- Crown of the Sun
							i(171484),	-- Gauntlets of the Sun King
							i(171492),	-- Leggings of Murderous Intent
							i(171493),	-- Rod of the Sun King
							i(171489),	-- Royal Cloak of the Sunstriders
							i(171495),	-- Royal Gauntlets of Silvermoon
							i(171488),	-- Sunhawk Leggings
							i(171486),	-- Sunshower Light Cloak
							i(171491),	-- Thalassian Wildercloak
							i(171485),	-- The Nexus Key
							i(171490),	-- Twinblade of the Phoenix
							-- Lady Vashj
							i(171912),	-- Crystalforge Faceguard
							i(171914),	-- Crystalforge Greathelm
							i(171913),	-- Crystalforge War-Helm
							i(171916),	-- Deathmantle Helm
							i(171919),	-- Cataclysm Headguard
							i(171920),	-- Cataclysm Headpiece
							i(171921),	-- Cataclysm Helm
							i(171925),	-- Nordrassil Headdress
							i(171924),	-- Nordrassil Headguard
							i(171926),	-- Nordrassil Headpiece
							i(171917),	-- Cowl of the Avatar
							i(171918),	-- Hood of the Avatar
							i(171910),	-- Destroyer Battle-Helm
							i(171911),	-- Destroyer Greathelm
							i(171915),	-- Rift Stalker Helm
							i(171922),	-- Cowl of Tirisfall
							i(171923),	-- Hood of the Corruptor
							i(171481),	-- Glorious Gauntlets of Crestfall
							i(171471),	-- Krakken-Heart Breastplate
							i(171472),	-- Fang of Vashj
							i(171474),	-- Serpent Spine Longbow
							i(171477),	-- Lightfathom Scepter
							i(171480),	-- Runetotem's Mantle
							i(171476),	-- Vestments of the Sea-Witch
							i(171475),	-- Belt of One-Hundred Deaths
							i(171473),	-- Cobta-Lash Boots
							i(171479),	-- Coral Band of the Revived
							i(171478),	-- Ring of Endless Coils
							i(171482),	-- Prism of Inner Calm
						},
					})),
				},
			}),
			q(40168, {	-- The Swirling Vial
				["provider"] = { "i", 129747 },	-- Swirling Timewarped Vial
				["isWeekly"] = true,
				["groups"] = {
					currency(TIMEWARPED_BADGE),
				},
			}),
		}),
		n(VENDORS, {
			n(98685, {	-- Cupri <Timewalking Vendor>
				["coord"] = { 54.4, 38.8,  SHATTRATH_CITY },
				["g"] = {
					n(ARMOR, {
						filter(BACK_F, {
							i(129834, {	-- Bishop's Cloak
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129832, {	-- Blood Knight War Cloak
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129831, {	-- Dory's Embrace
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129830, {	-- Farstrider Defender's Cloak
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129833, {	-- Shawl of Shifting Possibilities
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
						}),
						filter(CLOTH, {
							i(129843, {	-- Corrupted Soulcloth Pantaloons
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129837, {	-- Cowl of Naaru Blessings
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129855, {	-- Voodo-Woven Belt
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
						}),
						filter(LEATHER, {
							i(129852, {	-- Belt of the Silent Path
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129836, {	-- Mask of the Deceiver
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129841, {	-- Trousers of the Scryer's Retainer
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
						}),
						filter(MAIL, {
							i(129853, {	-- Aftershock Waistguard
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129840, {	-- Rushing Storm Kilt
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129838, {	-- Storm Master's Helmet
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
						}),
						filter(PLATE, {
							i(129835, {	-- Faceguard of Determination
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129854, {	-- Girdle of Seething Rage
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129842, {	-- Legplates of Unending Fury
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
						}),
						filter(TRINKET_F, {
							i(129848, {	-- Bloodlust Brooch
								["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
							}),
							i(129937, {	-- Emblem of Fury
								["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
							}),
							i(129851, {	-- Essence of the Martyr
								["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
							}),
							i(129849, {	-- Gnomeregan Auto-Blocker 601
								["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
							}),
							i(129850, {	-- Icon of the Silver Crescent
								["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
							}),
						}),
					}),
					filter(BATTLE_PETS, sharedDataSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
						i(231365, {	-- Karazhan Syphoner (PET!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 2200}},
							["timeline"] = { ADDED_11_0_5 },
						}),
					})),
					filter(COSMETIC, sharedDataSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
						i(232002, {	-- Amani Tracker's Blunderbuss
							["cost"] = {{"c", TIMEWARPED_BADGE, 1800}},
						}),
						i(232067, {	-- Amani'shi Voodoo Bow
							["cost"] = {{"c", TIMEWARPED_BADGE, 1800}},
						}),
						i(232478, {	-- Area 52 Tabard
							["cost"] = {{"c", TIMEWARPED_BADGE, 500}},
						}),
						i(232051, {	-- Ashtongue Channeler's Staff
							["cost"] = {{"c", TIMEWARPED_BADGE, 1800}},
						}),
						i(232050, {	-- Ashtongue Guardian's Spire
							["cost"] = {{"c", TIMEWARPED_BADGE, 1800}},
						}),
						i(232029, {	-- Auchenai Vindicator's Crystal Cleaver
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232001, {	-- Blazing Skyhawk Repeater
							["cost"] = {{"c", TIMEWARPED_BADGE, 1800}},
						}),
						i(232061, {	-- Cenarion Gaurdian's Stave
							["cost"] = {{"c", TIMEWARPED_BADGE, 1800}},
						}),
						i(232023, {	-- Chilled Obsidian Dragon's Tooth
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232040, {	-- Corrupted Sunblade
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232065, {	-- Crimson Draenethyst Crusher
							["cost"] = {{"c", TIMEWARPED_BADGE, 1500}},
						}),
						i(232039, {	-- Crystal-Hooked Shortsword
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232057, {	-- Drake's Breath Heater Shield
							["cost"] = {{"c", TIMEWARPED_BADGE, 1500}},
						}),
						iensemble(232319, {	-- Ensemble: Auchenai Priest's Raiment
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}},
						}),
						iensemble(232321, {	-- Ensemble: Boulderfist Mystic's Battlegear
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}},
						}),
						iensemble(232322, {	-- Ensemble: Cenarion Mender's Battlegear
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}},
						}),
						iensemble(232318, {	-- Ensemble: Shadowmoon Warlock's Vestments
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}},
						}),
						iensemble(232320, {	-- Ensemble: Telhamat Anchorite's Raiment
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}},
						}),
						i(232048, {	-- Felguard Sentinel's Polearm
							["cost"] = {{"c", TIMEWARPED_BADGE, 1800}},
						}),
						i(232044, {	-- Hammer of the Forest Loas
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232066, {	-- Icefrost Focuser
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232022, {	-- Point of the Nether Vortex
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232062, {	-- Shadowsword Vanquisher's Blade
							["cost"] = {{"c", TIMEWARPED_BADGE, 1500}},
						}),
						i(232021, {	-- Sunburst Sticker
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232024, {	-- Sunfury Stalker's Fists
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(23388, {	-- Tranquillien Tabard
							["races"] = HORDE_ONLY,
							["minReputation"] = { FACTION_TRANQUILLIEN, EXALTED },
							["cost"] = {{"c", TIMEWARPED_BADGE, 500}},
						}),
						i(232345, {	-- Xu'rakas, Glaive of Command
							["cost"] = {{"c", TIMEWARPED_BADGE, 3000}},
						}),
					})),
					filter(MISC, {
						i(35348, {	-- Bag of Fishing Treasures
							["cost"] = {{"c", TIMEWARPED_BADGE, 150}},
							["sym"] = {{"fill"}},
						}),
						i(33844, {	-- Barrel of Fish
							["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							["g"] = {
								i(33869),	-- Recipe: Broiled Bloodfin (RECIPE!)
								i(34834),	-- Recipe: Captain Rumsey's Lager (RECIPE!)
								i(33875),	-- Recipe: Kibler's Bits (RECIPE!)
								i(33870),	-- Recipe: Skullfish Soup (RECIPE!)
								i(33925),	-- Recipe: Delicious Chocolate Cake (RECIPE!)
								i(33871),	-- Recipe: Stormchops (RECIPE!)
							},
						}),
						i(129948, {	-- Commendation of Honor Hold
							["races"] = ALLIANCE_ONLY,
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(129951, {	-- Commendation of Lower City
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(129949, {	-- Commendation of the Cenarion Expedition
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(129945, {	-- Commendation of The Consortium
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(129950, {	-- Commendation of the Keepers of Time
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(129946, {	-- Commendation of The Sha'tar
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(129947, {	-- Commendation of Thrallmar
							["races"] = HORDE_ONLY,
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(33857, {	-- Crate of Meat
							["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							["g"] = {
								i(34834),	-- Recipe: Captain Rumsey's Lager (RECIPE!)
								i(33925),	-- Recipe: Delicious Chocolate Cake (RECIPE!)
								i(33875),	-- Recipe: Kibler's Bits (RECIPE!)
								i(33873),	-- Recipe: Spicy Hot Talbuk (RECIPE!)
								i(33871),	-- Recipe: Stormchops (RECIPE!)
								i(33855),	-- Tarnished Silver Ring
							},
						}),
						i(207112, {	-- Grimoire of the Void-Touched Fel Imp (CI!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 1000}},
							["timeline"] = { ADDED_10_1_5 },
						}),
					}),
					filter(MOUNTS, {
						i(224399, {	-- Amani Hunting Bear (MOUNT!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 5000}},
							["timeline"] = { ADDED_11_0_5 },
						}),
						i(129923, {	-- Eclipse Dragonhawk (MOUNT!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 5000}},
						}),
					}),
					filter(TOYS, {
						i(129929, {	-- Ever-Shifting Mirror (TOY!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 500}},
						}),
						i(151016, {	-- Fractured Necrolyte Skull (TOY!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 750}},
							["timeline"] = { ADDED_7_2_5 },
						}),
						i(129926, {	-- Mark of the Ashtongue (TOY!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 1250}},
						}),
						i(151184, {	-- Verdant Throwing Sphere (TOY!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 500}},
							["timeline"] = { ADDED_7_2_5 },
						}),
					}),
					n(WEAPONS, {
						i(129847, {	-- Azure-Shield of Coldarra
							["cost"] = {{"c", TIMEWARPED_BADGE, 35}},
						}),
						i(129845, {	-- Crossbow of Relentless Strikes
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						}),
						i(129858, {	-- Gavel of Naaru Blessings
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(129846, {	-- Mazthoril Honor Shield
							["cost"] = {{"c", TIMEWARPED_BADGE, 35}},
						}),
						i(129857, {	-- Scryer's Blade of Focus
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(129829, {	-- Staff of the Forest Lord
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						}),
						i(129828, {	-- Staff of the Soul-Eater
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						}),
						i(129861, {	-- Sword of Unyielding Force
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(129839, {	-- Talisman of Kalecgos
							["cost"] = {{"c", TIMEWARPED_BADGE, 35}},
						}),
						i(129827, {	-- The Blade of Harbingers
							["cost"] = {{"c", TIMEWARPED_BADGE, 100}},
						}),
						i(129931, {	-- The Mutilator
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(129856, {	-- Vanir's Fist of Brutality
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
					}),
				},
			}),
		}),
		inst_tw(751, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5 }},{	-- The Black Temple
			["isRaid"] = true,
			["g"] = {
				cr(22887, e(1582, {	-- High Warlord Naj'entus
					i(122104),	-- Leviathan Hatchling (PET!)
					i(150447),	-- Halberd of Desolation
					i(150437),	-- Rising Tide
					i(150438),	-- The Maelstrom's Fury
					i(150481),	-- Cowl of Benevolence
					i(150441),	-- Guise of the Tidal Lurker
					i(150520),	-- Mantle of Darkness
					i(150434),	-- Eternium Shell Bracers
					i(150435),	-- Fists of Mukoa
					i(150443),	-- Boots of Oceanic Fury
					i(150444),	-- Pearl Inlaid Boots
					i(150440),	-- Slippers of the Seacaller
					i(150445),	-- Tide-Stomper's Greaves
					i(150439),	-- Ring of Calming Waves
					i(150446),	-- Ring of Captured Storms
				})),
				cr(22898, e(1583, {	-- Supremus
					i(122106),	-- Abyssius (PET!)
					i(150460),	-- Syphon of the Nathrezim
					i(150451),	-- Legionkiller
					i(150453),	-- Felstone Bulwark
					i(150532),	-- Veil of Turning Leaves
					i(150456),	-- Naturalist's Preserving Cinch
					i(150454),	-- Waistwrap of Infinity
					i(150512),	-- Leggings of Devastation
					i(150459),	-- Band of the Abyssal Lord
				})),
				cr(22841, e(1584, {	-- Shade of Akama
					i(150452),	-- The Brutalizer
					i(150507),	-- Blind-Seers Icon
					i(150469),	-- Amice of Brilliant Light
					i(150535),	-- Shroud of the Highborne
					i(150473),	-- The Seeker's Wristguards
					i(150470),	-- Spiritwalker Gauntlets
					i(150463),	-- Shadow-Walker's Cord
					i(150464),	-- Ring of Deceitful Intent
				})),
				cr(22871, e(1585, {	-- Teron Gorefiend
					i(150500),	-- Soul Cleaver
					i(150477),	-- Rifle of the Stoic Guardian
					i(150475),	-- Shadowmoon Destroyer's Drape
					i(150479),	-- Robe of the Shadow Council
					i(150476),	-- Insidious Bands
					i(150480),	-- Botanist's Gloves of Growth
					i(150474),	-- Gauntlets of Enforcement
					i(150533),	-- Belt of Divine Guidance
					i(150529),	-- Girdle of Lordaeron's Fallen
					i(150528),	-- Softstep Boots of Tracking
				})),
				cr(22948, e(1586, {	-- Gurtogg Bloodboil
					i(150496),	-- Staff of Immaculate Recovery
					i(150466),	-- Messenger of Fate
					i(150495),	-- Wand of Prismatic Focus
					i(150462),	-- Shoudlers of the Hidden Predator
					i(150486),	-- Vest of Mounting Assault
					i(150530),	-- Wristbands of Divine Influence
					i(150491),	-- Belt of Primal Majesty
					i(150471),	-- Flashfire Girdle
					i(150494),	-- Girdle of Mighty Resolve
					i(150493),	-- Leggings of Divine Retribution
					i(150511),	-- Shadowmaster's Boots
					i(150526),	-- Shadowmoon Insignia
					i(150487),	-- Unstoppable Aggressor's Ring
				})),
				cr(23418, e(1587, {	-- Reliquary of Souls
					i(122107),	-- Fragment of Anger (PET!)
					i(122109),	-- Fragment of Desire (PET!)
					i(122108),	-- Fragment of Suffering (PET!)
					i(150484),	-- Torch of the Damned
					i(150509),	-- Naaru-Blessed Life Rod
					i(150506),	-- Crown of Empowered Fate
					i(150490),	-- Blood-Cursed Shoulderpads
					i(150531),	-- The Wavemender's Mantle
					i(150503),	-- Elunite Empowered Bracers
					i(150505),	-- Gloves of Unfailing Faith
					i(150499),	-- Grips of Damnation
					i(150498),	-- Boneweave Girdle
					i(150485),	-- Girdle of Stability
					i(150497),	-- Dreadboots of the Legion
					i(150504),	-- Naturewarden's Treads
				})),
				cr(22947, e(1588, {	-- Mother Shahraz
					i(122110),	-- Sister of Temptation (PET!)
					i(150514),	-- Blade of Savagery
					i(150519),	-- Forest Prowler's Helm
					i(150442),	-- Helm of Soothing Currents
					i(150516),	-- Helm of the Illidari Shatterer
					i(150571),	-- Gronnstalker's Spaulders
					h(i(150935)),	-- Illidari Shoulderpads (Horde DH only)
					a(i(150771)),	-- Illidari Shoulderpads (Alliance DH only)
					i(150556),	-- Lightbringer Shoulderguards
					i(150558),	-- Mantle of the Malefic
					i(150568),	-- Mantle of the Tempest
					i(150555),	-- Onslaught Shoulderguards
					i(150768),	-- Shoulderguards of the Broken Sage
					i(150565),	-- Shoulderpads of Absolution
					i(150560),	-- Skyshatter Mantle
					i(150563),	-- Slayer's Shoulderpads
					i(150573),	-- Thunderheart Spaulders
					i(150765),	-- Undying Vigil Shoulderguards
					i(150492),	-- Garments of Temperance
					i(150510),	-- Heartshatter Breastplate
					i(150467),	-- Focused Mana Bindings
					i(150468),	-- Kilt of Immortal Nature
				})),
				cr(23426, e(1589, {	-- The Illidari Council
					i(150536),	-- Cowl of the Illidari High Lord
					i(150483),	-- Cloak of the Illidari Council
					i(150572),	-- Gronnstalker's Leggings
					h(i(150933)),	-- Illidari Leggings (Horde DH only)
					a(i(150773)),	-- Illidari Leggings (Alliance DH only)
					i(150567),	-- Leggings of Absolution
					i(150580),	-- Leggings of the Malefic
					i(150570),	-- Leggings of the Tempest
					i(150769),	-- Leggings of the Broken Sage
					i(150557),	-- Lightbringer Legguards
					i(150554),	-- Onslaught Legguards
					i(150562),	-- Skyshatter Legguards
					i(150564),	-- Slayer's Legguards
					i(150575),	-- Thunderheart Legguards
					i(150766),	-- Undying Vigil Legplates
					i(150527),	-- Madness of the Betrayer
				})),
				cr(22917, e(1590, {	-- Illidan Stormrage
					ach(11869, {	-- I'll Hold These For You Until You Get Out
						["classes"] = { DEMONHUNTER },
						["groups"] = {
							i(150372, {	-- Arsenal: The Warglaives of Azzinoth
								i(151137),	-- Warglaive of Azzinoth
							}),
						},
					}),
					i(122196),	-- Music Roll: The Burning Legion
					i(150517),	-- Zhar'doom, Greatstaff of the Devourer
					i(150525),	-- Crystal Spire of Karabor
					i(150521),	-- Shard of Azzinoth
					i(150488),	-- Black Bow of the Betrayer
					i(150518),	-- Bulwark of Azzinoth
					i(150436),	-- Cursed Vision of Sargeras
					i(150534),	-- Faceplate of the Impenetrable
					i(150553),	-- Gronnstalker's Chestguard
					h(i(150934)),	-- Illidari Robe (Horde DH only)
					a(i(150772)),	-- Illidari Robe (Alliance DH only)
					i(150770),	-- Jerkin of the Broken Sage
					i(150552),	-- Lightbringer Chestguard
					i(150551),	-- Onslaught Chestguard
					i(150559),	-- Robe of the Malefic
					i(150569),	-- Robes of the Tempest
					i(150566),	-- Shroud of Absolution
					i(150561),	-- Skyshatter Breastplate
					i(150550),	-- Slayer's Chestguard
					i(150574),	-- Thunderheart Tunic
					i(150767),	-- Undying Vigil Battleplate
					i(150524),	-- Stormrage Signet Ring
					i(150523),	-- Memento of Tyrande
					i(150522),	-- The Skull of Gul'dan
				})),
			},
		})),
		inst_tw(249, {	-- Magisters' Terrace
			n(COMMON_BOSS_DROPS, {
				i(35275, {	-- Orb of Sin'dorei (TOY!)
					["crs"] = {
						24723,	-- Selin Fireheart
						24744,	-- Vexallus
						24560,	-- Priestess Delrissa
						24664,	-- Kael'thas Sunstrider
					},
				}),
			}),
			e(530, {	-- Selin Fireheart
				["creatureID"] = 24723,
				["groups"] = {
					i(133467),	-- Jaded Crystal Dagger
					i(133433),	-- Sun-Forged Cleaver
					i(133465),	-- Shoulderplates of Everlasting Pain
					i(133436),	-- Cloak of Swift Mending
					i(133431),	-- Bindings of Raging Fire
					i(133432),	-- Bracers of the Forest Stalker
					i(133466),	-- Eversong Cuffs
					i(133434),	-- Gauntlets of Divine Blessings
					i(133457),	-- Gloves of Arcane Acuity
					i(133435),	-- Leggings of the Betrayed
					i(133454),	-- Band of Celerity
				},
			}),
			e(531, {	-- Vexallus
				["creatureID"] = 24744,
				["groups"] = {
					i(133471),	-- Rod of the Blazing Light
					i(133469),	-- Edge of Oppression
					i(133437),	-- Latro's Dancing Blade
					i(133470),	-- Fel-Tinged Mantle
					i(133442),	-- Cloak of the Coming Night
					i(133468),	-- Breastplate of Fierce Survival
					i(133478),	-- Netherforce Chestplate
					i(133439),	-- Bracers of Divine Infusion
					i(133441),	-- Boots of Resuscitation
					i(133438),	-- Band of Arcane Alacrity
					i(133440),	-- Band of Determination
					i(133430),	-- Kharmaa's Ring of Fate
				},
			}),
			e(532, {	-- Priestess Delrissa
				["creatureID"] = 24560,
				["groups"] = {
					i(133446),	-- Battle-Mace of the High Priestess
					i(133444),	-- Duskhallow Mantle
					i(133448),	-- Cloak of the Betrayed
					i(133445),	-- Bracers of Slaughter
					i(133447),	-- Gauntlets of the Tranquil Waves
					i(133458),	-- Sunrage Treads
					i(133456),	-- Sunstrider Warboots
					i(133464),	-- Commendation of Kael'thas
					i(133463),	-- Shard of Contempt
					i(133461),	-- Timbal's Focusing Crystal
					i(133462),	-- Vial of the Sunwell
				},
			}),
			e(533, {	-- Kael'thas Sunstrider
				["creatureID"] = 24664,
				["groups"] = {
					i(35504),	-- Phoenix Hatchling (PET!)
					i(35513),	-- Swift White Hawkstrider (MOUNT!)
					i(133450),	-- Axe of Shattered Dreams
					i(133453),	-- Sun-Infused Focus Staff
					i(133479),	-- Breeching Comet
					i(133474),	-- Cudgel of Consecration
					i(133472),	-- Quickening Blade of the Prince
					i(133451),	-- Helm of Sanctification
					i(133476),	-- Shoulderpads of the Silvermoon Retainer
					i(133459),	-- Cloak of Blade Turning
					i(133455),	-- Hauberk of the War Bringer
					i(133452),	-- Robes of Summer Flame
					i(133473),	-- Scarlet Sin'dorei Robes
					i(133477),	-- Tunic of the Ranger Lord
					i(133449),	-- Cord of Reconstitution
					i(133475),	-- Greaves of the Penitent Knight
				},
			}),
		}),
		inst_tw(250, {	-- Mana Tombs
			n(COMMON_BOSS_DROPS, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
				i(225678),	-- Spare Key to Shaffar's Stasis Chamber
			})),
			e(534, {	-- Pandemonius
				["creatureID"] = 18341,
				["groups"] = {
					i(127219),	-- Creepjacker
					i(127234),	-- Twinblade of Mastery
					i(127236),	-- Starbolt Longbow
					i(127216),	-- Voidfire Wand
					i(127254),	-- Shield of the Void
					i(127235),	-- Mindrage Pauldrons
					i(127237),	-- Starry Robes of the Crescent
					i(127218),	-- Faith Bearer's Gauntlets
					i(127249),	-- Wastewalker Leggings
					i(127233),	-- Boots of the Colossus
					i(127217),	-- Boots of the Outlander
				},
			}),
			e(535, {	-- Tavarok
				["creatureID"] = 18343,
				["groups"] = {
					i(127220),	-- Shaarde the Greater
					i(127224),	-- Staff of Polarities
					i(127225),	-- Scimitar of the Nexus-Stalkers
					i(127223),	-- Lightning-Rod Pauldrons
					i(127243),	-- Mantle of the Sea Wolf
					i(127221),	-- Cloak of Revival
					i(127241),	-- Robe of the Great Dark Beyond
					i(127240),	-- Shard Encrusted Breastplate
					i(127232),	-- Gauntlets of Vindication
					i(127242),	-- Predatory Gloves
					i(127238),	-- Extravagant Boots of Malice
					i(127222),	-- Nethershade Boots
					i(127239),	-- Crystal Band of Valor
				},
			}),
			e(536, {	-- Yor
				-- #if BEFORE 11.0.5
				["description"] = "Requires one of two keys unlocked via a quest chain in Blades Edge to open.\n\nOnly one member of your group needs the key.",
				-- #else
				["description"] = "Requires one of two keys unlocked via a quest chain in Blades Edge or a conjured one rarely dropped from Mana Tombs bosses to open.",
				-- #endif
				["provider"] = { "i", 32092 },	-- The Eye of Haramad
				["cost"] = {
					{ "i", 32079, 1 },	-- Shaffar's Stasis Chamber Key
					-- #if AFTER 11.0.5
					{ "i", 225678, 1 },	-- Spare Key to Shaffar's Stasis Chamber
					-- #endif
				},
				["creatureID"] = 22930,
				["groups"] = {
					i(127422),	-- Mistshroud Tunic
					i(127421),	-- Skystalker's Tunic
					i(127423),	-- Slatesteel Breastplate
					i(127420),	-- Windchanneller's Tunic
					i(127428),	-- Band of the Crystalline Void
					i(127231),	-- Longstrider's Loop
					i(127424),	-- Nexus-Prince's Ring of Balance
					i(127427),	-- Ring of Conflict Survival
					i(127425),	-- Shaffar's Band of Brutality
					i(127426),	-- Yor's Collapsing Band
					i(127429),	-- Yor's Revenge
				},
			}),
			e(537, {	-- Nexus-Prince Shaffar
				["creatureID"] = 18344,
				["groups"] = {
					i(127246),	-- Axe of the Nexus-Kings
					i(127251),	-- Grand Scepter of the Nexus-Kings
					i(127250),	-- Scepter of Sha'tar
					i(127255),	-- Warp-Storm Warblade
					i(127226),	-- Ethereal Warp-Bow
					i(127259),	-- The Fel Barrier
					i(127228),	-- Mask of the Howling Storm
					i(127227),	-- Sigil of Shaffar
					i(127247),	-- Mantle of the Unforgiven
					i(127253),	-- Pauldrons of Swift Retribution
					i(127256),	-- Bands of Negation
					i(127244),	-- Lucid Dream Bracers
					i(127229),	-- Nexus-Bracers of Vigor
					i(127252),	-- Glyph-Lined Sash
					i(127248),	-- Stillwater Girdle
					i(127258),	-- Forestwalker Kilt
					i(127230),	-- Ethereal Boots of the Skystrider
					i(127257),	-- Cobalt Band of Tyrigosa
					i(127245),	-- Warp-Scarab Brooch
				},
			}),
		}),
		inst_tw(254, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_2, REMOVED_9_1_5 }},{	-- The Arcatraz
			e(548, {	-- Zereketh the Unbound
				["creatureID"] = 20870,
				["groups"] = {
					i(127151),	-- Cloak of Scintillating Auras
					i(127162),	-- Gloves of the Unbound
					i(127171),	-- Hood of Oblivion
					i(127152),	-- Mana-Sphere Shoulderguards
					i(127154),	-- Outland Striders
					i(127153),	-- Rubidium War-Girdle
				},
			}),
			e(549, {	-- Dalliah the Doomsayer
				["creatureID"] = 20885,
				["groups"] = {
					i(127170),	-- Helm of Assassination
					i(127172),	-- Hungering Spineripper
					i(127156),	-- Lamp of Peaceful Repose
					i(127155),	-- Nether Core's Control Rod
					i(127154),	-- Outland Striders
					i(127159),	-- Reflex Blades
					i(127157),	-- Thatia's Self-Correcting Gauntlets
				},
			}),
			e(550, {	-- Wrath-Scryer Soccothrates
				["creatureID"] = 20886,
				["groups"] = {
					i(127165),	-- Doomplate Chestguard
					i(127163),	-- Emberhawk Crossbow
					i(127169),	-- Hallowed Crown
					i(127161),	-- Ryngo's Band of Ingenuity
					i(127164),	-- The Sleeper's Cord
					i(127160),	-- Warmaul of Infused Light
					i(127158),	-- Worldfire Chestguard
				},
			}),
			e(551, {	-- Harbinger Skyriss
				["creatureID"] = 20912,
				["groups"] = {
					i(127175),	-- Belt of Depravity
					i(127177),	-- Bracers of Dignity
					i(127149),	-- Breastplate of the Bold
					i(127174),	-- Choker of Fluid Thought
					i(127167),	-- Elementium Band of the Sentry
					i(127168),	-- Lamp of Peaceful Radiance
					i(127176),	-- Shadowstep Striders
					i(127173),	-- Shiffar's Nexus-Horn
					i(127166),	-- Sigil-Laced Boots
					i(127150),	-- Tidefury Chestpiece
					i(127178),	-- Vileblade of the Betrayer
				},
			}),
		})),
		inst_tw(255, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_2, REMOVED_9_1_5 }},{	-- The Black Morass
			e(552, {	-- Chrono Lord Deja
				["creatureID"] = 17879,
				["groups"] = {
					i(127434),	-- Melmorta's Twilight Longbow
					-- #if BEFORE 7.3.5
					i(127456),	-- Quantum Blade (7.3.5 - Moved from Chrono Lord Deja)
					-- #endif
					i(127436),	-- Mask of Inner Fire
					i(127437),	-- Mantle of Three Terrors
					i(127438),	-- Sun-Gilded Shouldercaps
					i(127435),	-- Burnoose of Shifting Ages
					-- #if BEFORE 7.3.5
					i(127430),	-- Handgrips of Assassination (7.3.5 - Moved to Temporus)
					-- #endif
					-- #if AFTER 7.3.5
					i(127433),	-- Legplates of the Bold (7.3.5 - Moved from Aeonus)
					i(127432),	-- Moonglade Pants (7.3.5 -- Moved from Aeonus)
					-- #endif
					i(127439),	-- Ring of Spiritual Precision
				},
			}),
			e(553, {	-- Temporus
				["creatureID"] = 17880,
				["groups"] = {
					i(127440),	-- Epoch-Mender
					-- #if AFTER 7.3.5
					i(127456),	-- Quantum Blade (7.3.5 - Moved from Chrono Lord Deja)
					-- #endif
					i(127442),	-- Millennium Blade
					i(127445),	-- Star-Heart Lamp
					i(127444),	-- Laughing Skull Battle-Harness
					-- #if AFTER 7.3.5
					i(127430),	-- Handgrips of Assassination (7.3.5 - Moved from Chrono Lord Deja)
					-- #endif
					i(127443),	-- Khadgar's Kilt of Abjuration
					i(127441),	-- Hourglass of the Unraveller
				},
			}),
			e(554, {	-- Aeonus
				["creatureID"] = 17881,
				["groups"] = {
					i(127446),	-- Bloodfire Greatstaff
					i(127447),	-- Latro's Shifting Sword
					i(127452),	-- Cowl of the Guiltless
					i(127449),	-- Helm of Desolation
					i(127450),	-- Mana-Etched Crown
					i(127453),	-- Pauldrons of the Crimson Flight
					i(127451),	-- Primal Surge Bracers
					i(127454),	-- Girdle of the Deathdealer
					i(127455),	-- Girdle of Valorous Deeds
					i(127457),	-- Breeches of the Occultist
					-- #if BEFORE 7.3.5
					i(127433),	-- Legplates of the Bold (7.3.5 - Moved to Chrono Lord Deja)
					-- #endif
					i(127431),	-- Legplates of the Righteous
					-- #if BEFORE 7.3.5
					i(127432),	-- Moonglade Pants (7.3.5 -- Moved to Chrono Lord Deja)
					-- #endif
					i(127448),	-- Scarab of the Infinite Cycle
				},
			}),
		})),
		inst_tw(256, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 }},{	-- The Blood Furnace
			e(555, {	-- The Maker
				["creatureID"] = 17381,
				["groups"] = {
					i(188293),	-- Bloodlord Legplates
					i(188277),	-- Diamond-Core Sledgemace
					i(188292),	-- Embroidered Cape of Mysteries
					i(188280),	-- Girdle of the Gale Storm
					i(188279),	-- Ironblade Gauntlets
					i(188294),	-- Mage-Collar of the Firestorm
					i(188291),	-- Moon-Touched Bands
					i(188278),	-- Pendant of Battle-Lust
				},
			}),
			e(556, {	-- Broggok
				["creatureID"] = 17380,
				["groups"] = {
					i(188284),	-- Arcing Bracers
					i(188282),	-- Auslese's Light Channeler
					i(188285),	-- Bloody Surgeon's Mitts
					i(188308),	-- Embroidered Spellpyre Boots
					i(188299),	-- Emerald Eye Bracer
					i(188296),	-- Firebrand Battleaxe
					i(188283),	-- Kilt of the Night Strider
					i(188281),	-- Legion Blunderbuss
					i(188298),	-- Moonchild Leggings
					i(188297),	-- Signet of Repose
					i(188295),	-- Virtue Bearer's Vambraces
				},
			}),
			e(557, {	-- Keli'dan the Breaker
				["creatureID"] = 17377,
				["groups"] = {
					i(188304),	-- Adamantine Repeater
					i(188307),	-- Bloodsworn Warboots
					i(188301),	-- Doomplate Gauntlets
					i(188311),	-- Eaglecrest Warboots
					i(188309),	-- Icon of Unyielding Courage
					i(188306),	-- Leggings of the Unrepentant
					i(188314),	-- Mantle of Shadowy Embrace
					i(188290),	-- Mantle of the Dusk-Dweller
					i(188287),	-- Mindfire Waistband
					i(188289),	-- Raiments of Divine Authority
					i(188303),	-- Robe of Effervescent Light
					i(188302),	-- Ruby Helm of the Just
					i(188300),	-- Soldier's Dog Tags
					i(188313),	-- Talisman of the Breaker
					i(188305),	-- The Willbreaker
					i(188288),	-- Vest of Vengeance
					i(188286),	-- Warsong Howling Axe
					i(188310),	-- Wastewalker Tunic
					i(188312),	-- Wave-Crest Striders
				},
			}),
		})),
		inst_tw(257, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 }},{	-- The Botanica
			e(558, {	-- Commander Sarannis
				["creatureID"] = 17976,
				["groups"] = {
					i(188370),	-- Prismatic Mittens of Mending
					i(188372),	-- Revenger
					i(188369),	-- Sarannis' Mystic Sheen
					i(188371),	-- Towering Mantle of the Hunt
					i(188394),	-- Warhelm of the Bold
					i(188391),	-- Warpscale Leggings
				},
			}),
			e(559, {	-- High Botanist Freywinn
				["creatureID"] = 17975,
				["groups"] = {
					i(188374),	-- Aegis of the Sunbird
					i(188367),	-- Beast Lord Cuirass
					i(188377),	-- Enchanted Thorium Torque
					i(188375),	-- Energis Armwraps
					i(188392),	-- Moonglade Cowl
					i(188376),	-- Obsidian Clodstompers
					i(188373),	-- Stormreaver Warblades
				},
			}),
			e(560, {	-- Thorngrin the Tender
				["creatureID"] = 17978,
				["groups"] = {
					i(188382),	-- Arcane Netherband
					i(188381),	-- Dreamer's Dragonstaff
					i(188380),	-- Gauntlets of Cruel Intention
					i(188379),	-- Ring of Umbral Doom
					i(188378),	-- Runed Dagger of Solace
				},
			}),
			e(561, {	-- Laj
				["creatureID"] = 17980,
				["groups"] = {
					i(188385),	-- Boots of the Shifting Sands
					i(188384),	-- Devil-Stitched Leggings
					i(188386),	-- Mantle of Autumn
					i(188383),	-- Mithril-Bark Cloak
					i(188366),	-- Spaulders of the Righteous
					i(188393),	-- Tidefury Helm
				},
			}),
			e(562, {	-- Warp Splinter
				["creatureID"] = 17977,
				["groups"] = {
					i(188396),	-- Bangle of Endless Blessings
					i(188398),	-- Boots of Ethereal Manipulation
					i(188399),	-- Boots of the Endless Hunt
					i(188400),	-- Feral Staff of Lashing
					i(188401),	-- Gauntlets of Dissention
					i(188395),	-- Greatsword of Forlorn Visions
					i(188368),	-- Incanter's Robe
					i(188389),	-- Jagged Bark Pendant
					i(188397),	-- Netherfury Cape
					i(188388),	-- Warp-Infused Drape
					i(188390),	-- Warp Splinter's Thorn
					i(188387),	-- Warpstaff of Arcanum
				},
			}),
		})),
		inst_tw(259, {	-- The Shattered Halls
			e(566, {	-- Grand Warlock Nethekurse
				["creatureID"] = 16807,
				["groups"] = {
					i(123995),	-- Hortus' Seal of Brilliance
					i(123984),	-- Greathelm of the Unbreakable
					i(123983),	-- Cloak of Malice
					i(123981),	-- Bands of Nethekurse
					i(123985),	-- Telaari Hunting Girdle
					i(123992),	-- Figurine of the Colossus
				},
			}),
			e(728, {	-- Blood Guard Porung
				["creatureID"] = 20923,
				["groups"] = {
					i(124015),	-- Blood Guard's Necklace of Ferocity
					i(124000),	-- Justice Bearer's Pauldrons
					i(124011),	-- Spaulders of Slaughter
					i(123997),	-- Hallowed Handwraps
					i(124013),	-- Belt of Flowing Thought
					i(124014),	-- Pantaloons of Flaming Wrath
					i(124012),	-- Nimble-Foot Treads
				},
			}),
			e(568, {	-- Warbringer O'mrogg
				["creatureID"] = 16809,
				["groups"] = {
					i(123987),	-- Firemaul of Destruction
					i(124002),	-- Runesong Dagger
					i(123989),	-- Skyfire Hawk-Bow
					i(124029),	-- Forestheart Bracers
					i(123986),	-- World's End Bracers
					i(124027),	-- Boots of the Righteous Path
					i(123988),	-- Jeweled Boots of Sanctification
				},
			}),
			e(569, {	-- Warchief Kargath Bladefist
				["creatureID"] = 16808,
				["groups"] = {
					i(123994),	-- Demonblood Eviscerator
					i(123999),	-- Lightsworn Hammer
					i(124030),	-- The Bladefist
					i(124001),	-- Nexus Torch
					i(124028),	-- Bands of Rarefied Magic
					i(123991),	-- Gauntlets of Desolation
					i(123996),	-- Gauntlets of the Righteous
					i(123998),	-- Gloves of Oblivion
					i(123993),	-- Wastewalker Gloves
					i(123990),	-- Greaves of the Shatterer
				},
			}),
		}),
		inst_tw(260, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_2, REMOVED_9_1_5 }},{	-- The Slave Pens
			e(570, {	-- Mennu the Betrayer
				["creatureID"] = 17941,
				["groups"] = {
					i(127183),	-- Spellfire Longsword
					i(127191),	-- Starlight Dagger
					i(127179),	-- Wastewalker Shiv
					i(127213),	-- Adamantine Chain of the Unbroken
					i(127193),	-- Traitor's Noose
					i(127180),	-- Vest of Living Lightning
					i(127189),	-- Archery Belt of the Broken
					i(127190),	-- Cord of Belief
					i(127182),	-- Tracker's Belt
					i(127195),	-- Girdle of Many Blessings
					i(127192),	-- Mennu's Scaled Leggings
					i(127181),	-- Princely Reign Leggings
				},
			}),
			e(571, {	-- Rokmar the Crackler
				["creatureID"] = 17991,
				["groups"] = {
					i(127185),	-- Coilfang Hammer of Renewal
					i(127187),	-- Calming Spore Reed
					i(127188),	-- Coilfang Needler
					i(127204),	-- Swamplight Lantern
					i(127198),	-- Skeletal Necklace of Battlerage
					i(127186),	-- Bogstrok Scale Cloak
					i(127197),	-- Ironscale War Cloak
					i(127194),	-- Coldwhisper Cord
					i(127210),	-- Liar's Cord
					i(127209),	-- Earthsoul Britches
					i(127196),	-- Wavefury Boots
					i(127184),	-- Runed Fungalcap
				},
			}),
			e(572, {	-- Quagmirran
				["creatureID"] = 17942,
				["groups"] = {
					i(127206),	-- Bleeding Hollow Warhammer
					i(127200),	-- Phosphorescent Blade
					i(127208),	-- Mana-Etched Spaulders
					i(127203),	-- Pauldrons of Desolation
					i(127215),	-- Pauldrons of Wild Magic
					i(127211),	-- Breastplate of Righteous Fury
					i(127202),	-- Shackles of Quagmirran
					i(127199),	-- Girdle of the Immovable
					i(127207),	-- Mage-Fury Girdle
					i(127214),	-- Midnight Legguards
					i(127212),	-- Boots of Blasphemy
					i(127205),	-- Band of Ursol
					i(127201),	-- Quagmirran's Eye
				},
			}),
		})),
		inst_tw(262, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 }},{	-- The Underbog
			e(576, {	-- Hungarfen
				["creatureID"] = 17770,
				["groups"] = {
					i(188335),	-- Arcanium Signet Bands
					i(188336),	-- Boggspine Knuckles
					i(188337),	-- Cassock of the Loyal
					i(188333),	-- Girdle of Living Flame
					i(188334),	-- Hungarhide Gauntlets
					i(188316),	-- Lykul Bloodbands
					i(188315),	-- Manaspark Gloves
					i(188317),	-- Starlight Gauntlets
				},
			}),
			e(577, {	-- Ghaz'an
				["creatureID"] = 18105,
				["groups"] = {
					i(188324),	-- Cloak of Healing Rays
					i(188342),	-- Dunewind Sash
					i(188338),	-- Girdle of Gallantry
					i(188339),	-- Greatstaff of the Leviathan
					i(188326),	-- Hatebringer
					i(188341),	-- Headdress of the Tides
					i(188340),	-- Hydra-Fang Necklace
					i(188327),	-- Luminous Pearls of Insight
					i(188343),	-- Ring of the Shadow Deeps
					i(188323),	-- Studded Girdle of Virtue
					i(188325),	-- Talisman of Tenacity
				},
			}),
			e(578, {	-- Swamplord Musel'ek
				["creatureID"] = 17826,
				["groups"] = {
					i(188347),	-- Armwraps of Disdain
					i(188349),	-- Bogreaver
					i(188319),	-- Cloak of Enduring Swiftness
					i(188345),	-- Crown of the Forest Lord
					i(188321),	-- Greaves of the Iron Guardian
					i(188346),	-- Hands of the Sun
					i(188348),	-- Swampstone Necklace
					i(188322),	-- Truth Bearer Shoulderguards
					i(188320),	-- Tunic of the Nightwatcher
					i(188344),	-- Weathered Band of the Swamplord
					i(188318),	-- Zangartooth Shortblade
				},
			}),
			e(579, {	-- The Black Stalker
				["creatureID"] = 17882,
				["groups"] = {
					i(188359),	-- Alembic of Infernal Power
					i(188352),	-- Argussian Compass
					i(188355),	-- Barbaric Legstraps
					i(188362),	-- Barkchip Boots
					i(188356),	-- Bone Chain Necklace
					i(188358),	-- Demonfang Ritual Helm
					i(188353),	-- Doomplate Shoulderguards
					i(188351),	-- Endbringer
					i(188365),	-- Eye of the Stalker
					i(188360),	-- Mana-Etched Pantaloons
					i(188350),	-- Oracle Belt of Timeless Mystery
					i(188328),	-- Pauldrons of Brute Force
					i(188357),	-- Ring of Fabled Hope
					i(188332),	-- Robes of the Augurer
					i(188361),	-- Savage Mask of the Lynx Lord
					i(188330),	-- Shamblehide Chestguard
					i(188331),	-- Skulldugger's Leggings
					i(188354),	-- Stormshield of Renewal
					i(188364),	-- Stormsong Kilt
					i(188363),	-- The Black Stalk
					i(188329),	-- The Stalker's Fangs
				},
			}),
		})),
	})),
})));

-- Only instances still in rotation should be in this list.
-- This will prevent instances that don't have Timewalking currently from showing in the mini list.
AddInstancesToRotation(EXPANSION.TBC, {
	-- #if AFTER 7.2.5.23910
	751,	-- Black Temple, not originally included with the rotation
	-- #endif

	-- Dungeons
	249,	-- Magisters' Terrace
	250,	-- Mana Tombs
	259,	-- The Shattered Halls

	-- #if AFTER 9.1.5
	256,	-- The Blood Furnace
	257,	-- The Botanica
	262,	-- The Underbog
	-- #else
	254,	-- The Arcatraz
	255,	-- The Black Morass
	260,	-- The Slave Pens
	-- #endif
});


-- Wrath of the Lich King Timewalking
root(ROOTS.Holidays, n(TIMEWALKING_HEADER, applyevent(EVENTS.TIMEWALKING_NORTHREND_DUNGEON_EVENT, {
	expansion(EXPANSION.WRATH, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_2 } }, {
		n(GROUP_FINDER, {
			i(129928, {	-- Frigid Timewarped Prism
				["description"] = "Drops from the last boss of any 'Wrath of the Lich King Timewalking' dungeon.",
			}),
			i(187903, {	-- Jormungar Soul (SS!)
				["timeline"] = { ADDED_9_1_5 },
				["description"] = "Can drop from the last boss of any 'Wrath of the Lich King Timewalking' dungeon if you are aligned with the 'Night Fae Covenant'.",
			}),
		}),
		n(QUESTS, {
			-- TW WotLK Quest under level 80
			q(85949, {	-- A Frozen Journey Through Time
				["provider"] = { "n", 98690 },	-- Auzin
				["coord"] = { 50.6, 46.4, NORTHREND_DALARAN },
				["timeline"] = { ADDED_11_0_5 },
				["isWeekly"] = true,
				["lockCriteria"] = { 1, "lvl", 80 },
				["g"] = {
					i(232877, {	-- Timely Goodie Bag
						["sym"] = {
							{ "select", "itemID", 229355},	-- Chromie's Premium Goodie Bag
							{ "pop" },
						},
					}),
				},
			}),
			q(50316, {	-- Disturbance Detected: Ulduar
				["provider"] = { "n", 130654 },	-- Vormu
				["coord"] = { 49.5, 45.7, NORTHREND_DALARAN },
				["isWeekly"] = true,
				["timeline"] = { ADDED_7_3_5 },
				["g"] = {
					i(157030),	-- Titan Prison Fragment (QI!)
					i(208094, sharedDataSelf({ ["timeline"] = { ADDED_10_1_5 } }, {	-- Cache of Timewarped Treasures (WOTLK)
						["description"] = "This bag contains an item from Ulduar or an item from the WoW's 15th Birthday Event Bosses Anub, Lich King or Heigan.\nThe droprate for the mounts seems rather high (5-10%).", -- Might have been removed in 10.2.7 as a pouch dropped instead for me
						["sym"] = {{"select","itemID",
							-- Seems to be always 1 of those 3 pets -- Gold 15.09.2023
							142098,	-- Drudge Ghoul (PET!)
							142086,	-- Magma Rageling (PET!)
							142085,	-- Nerubian Swarmer (PET!)
						}},
						["groups"] = {
						-- Can also contain any item from Ulduar
							i(133543),	-- Infinite Timereaver (MOUNT!)
							i(50818),	-- Invincible (MOUNT!)
							i(45693),	-- Mimiron's Head (MOUNT!)
							i(224547, {	-- Timewarped Pouch
								["timeline"] = { ADDED_10_2_7 },	-- Dropping in place of a pet
							}),

							-- Anub'Arak
							i(171615, {	-- Aegis of the Coliseum
								["races"] = HORDE_ONLY,
							}),
							i(171616, {	-- Anguish
								["races"] = HORDE_ONLY,
							}),
							i(171560, {	-- Archon Glaive
								["races"] = ALLIANCE_ONLY,
							}),
							i(171604, {	-- Ardent Guard
								["races"] = HORDE_ONLY,
							}),
							i(171583, {	-- Argent Resolve
								["races"] = ALLIANCE_ONLY,
							}),
							i(171525, {	-- Armbands of Dark Determination
								["races"] = HORDE_ONLY,
							}),
							i(171557, {	-- Armbands of the Ashen Saint
								["races"] = ALLIANCE_ONLY,
							}),
							i(171581, {	-- Baelgun's Heavy Crossbow
								["races"] = ALLIANCE_ONLY,
							}),
							i(171527, {	-- Band of the Traitor King
								["races"] = HORDE_ONLY,
							}),
							i(171543, {	-- Band of Deplorable violence
								["races"] = ALLIANCE_ONLY,
							}),
							i(171548, {	-- Belt of Deathly Dominion
								["races"] = ALLIANCE_ONLY,
							}),
							i(171614, {	-- Belt of the Eternal
								["races"] = HORDE_ONLY,
							}),
							i(171556, {	-- Belt of the Forgotten Martyr
								["races"] = ALLIANCE_ONLY,
							}),
							i(171536, {	-- Bindings of the Ashen Saint
								["races"] = HORDE_ONLY,
							}),
							i(171610, {	-- Blackhorn Bludgeon
								["races"] = HORDE_ONLY,
							}),
							i(171533, {	-- Boots of the Icy Floe
								["races"] = HORDE_ONLY,
							}),
							i(171547, {	-- Bracers of Dark Determination
								["races"] = ALLIANCE_ONLY,
							}),
							i(171529, {	-- Breeches of the Deepening Void
								["races"] = HORDE_ONLY,
							}),
							i(171595, {	-- Bulwark of the Royal Guard
								["races"] = ALLIANCE_ONLY,
							}),
							i(171558, {	-- Chestguard of Flowing Elements
								["races"] = ALLIANCE_ONLY,
							}),
							i(171585, {	-- Chestguard of the Warden
								["races"] = ALLIANCE_ONLY,
							}),
							i(171597, {	-- Cinch of the Undying
								["races"] = ALLIANCE_ONLY,
							}),
							i(171589, {	-- Cold Convergence
								["races"] = ALLIANCE_ONLY,
							}),
							i(171584, {	-- Crusader's Glory
								["races"] = ALLIANCE_ONLY,
							}),
							i(171537, {	-- Cuirass of Flowing Elements
								["races"] = HORDE_ONLY,
							}),
							i(171612, {	-- Darkmaw Crossbow
								["races"] = HORDE_ONLY,
							}),
							i(171555, {	-- Footpads of the Icy Floe
								["races"] = HORDE_ONLY,
							}),
							i(171594, {	-- Fordragon Blades
								["races"] = ALLIANCE_ONLY,
							}),
							i(171608, {	-- Forsaken Bonecarver
								["races"] = HORDE_ONLY,
							}),
							i(171603, {	-- Frostblade Hatchet
								["races"] = HORDE_ONLY,
							}),
							i(171542, {	-- Gauntlets of Bitter Reprisal
								["races"] = HORDE_ONLY,
							}),
							i(171535, {	-- Girdle of the Forgotten Martyr
								["races"] = HORDE_ONLY,
							}),
							i(171561, {	-- Gloves of Bitter Reprisal
								["races"] = ALLIANCE_ONLY,
							}),
							i(171562, {	-- Gloves of the Lifeless Touch
								["races"] = ALLIANCE_ONLY,
							}),
							i(171546, {	-- Greaves of the 7th Legion
								["races"] = ALLIANCE_ONLY,
							}),
							i(171524, {	-- Greaves of the Saronite Citadel
								["races"] = HORDE_ONLY,
							}),
							i(171538, {	-- Handwraps of the Lifeless Touch
								["races"] = HORDE_ONLY,
							}),
							i(171541, {	-- Hellion Glaive
								["races"] = HORDE_ONLY,
							}),
							i(171526, {	-- Hellscream Slicer
								["races"] = HORDE_ONLY,
							}),
							i(171587, {	-- Helmet of the Crypt Lord
								["races"] = ALLIANCE_ONLY,
							}),
							i(171602, {	-- Helm of the Crypt Lord
								["races"] = HORDE_ONLY,
							}),
							i(171530, {	-- Leggings of the Awakening
								["races"] = HORDE_ONLY,
							}),
							i(171553, {	-- Leggings of the Deepening Void
								["races"] = ALLIANCE_ONLY,
							}),
							i(171531, {	-- Leggings of the Lurking Threat
								["races"] = HORDE_ONLY,
							}),
							i(171551, {	-- Legguards of the Lurking Threat
								["races"] = ALLIANCE_ONLY,
							}),
							i(171607, {	--  Legplates of Redeemed Blood
								["races"] = HORDE_ONLY,
							}),
							i(171596, {	-- Legplates of the Immortal Spider
								["races"] = ALLIANCE_ONLY,
							}),
							i(171592, {	-- Legplates of the Silver Hand
								["races"] = ALLIANCE_ONLY,
							}),
							i(171552, {	-- Legwraps of the Awakening
								["races"] = HORDE_ONLY,
							}),
							i(171539, {	-- Lurid Manifestation
								["races"] = HORDE_ONLY,
							}),
							i(171599, {	-- Mace of the Earthborn Chieftain
								["races"] = HORDE_ONLY,
							}),
							i(171540, {	-- Maiden's Adoration
								["races"] = HORDE_ONLY,
							}),
							i(171559, {	-- Maiden's Favor
								["races"] = ALLIANCE_ONLY,
							}),
							i(171532, {	-- Might of the Nerub
								["races"] = HORDE_ONLY,
							}),
							i(171554, {	-- Misery's End
								["races"] = ALLIANCE_ONLY,
							}),
							i(171606, {	-- Pauldrons of the Shadow Hunter
								["races"] = HORDE_ONLY,
							}),
							i(171591, {	-- Pauldrons of the Timeless Hunter
								["races"] = ALLIANCE_ONLY,
							}),
							i(171605, {	-- Perdition
								["races"] = HORDE_ONLY,
							}),
							i(171600, {	-- Pride of the Kor'kron
								["races"] = HORDE_ONLY,
							}),
							i(171528, {	-- Reign of the Dead
								["races"] = HORDE_ONLY,
							}),
							i(171549, {	-- Reign of the Unliving
								["races"] = ALLIANCE_ONLY,
							}),
							i(171611, {	-- Robes of the Sleepless
								["races"] = HORDE_ONLY,
							}),
							i(171545, {	-- Signet of the Traitor King
								["races"] = ALLIANCE_ONLY,
							}),
							i(171609, {	-- Shoulderpads of the Snow Bandit
								["races"] = HORDE_ONLY,
							}),
							i(171593, {	-- Spaulders of the Snow Bandit
								["races"] = ALLIANCE_ONLY,
							}),
							i(171601, {	-- Stoneskin Chestplate
								["races"] = HORDE_ONLY,
							}),
							i(171544, {	-- Stormpike Cleaver
								["races"] = ALLIANCE_ONLY,
							}),
							i(171550, {	-- Strength of the Nerub
								["races"] = ALLIANCE_ONLY,
							}),
							i(171534, {	-- Suffering's End
								["races"] = HORDE_ONLY,
							}),
							i(171613, {	-- Sunwalker Legguards
								["races"] = HORDE_ONLY,
							}),
							i(171590, {	-- The Grinder
								["races"] = ALLIANCE_ONLY,
							}),
							i(171582, {	-- The Lion's Maw
								["races"] = ALLIANCE_ONLY,
							}),
							i(171598, {	-- Vestments of the Sleepless
								["races"] = ALLIANCE_ONLY,
							}),
							i(171586, {	-- Vigilant Ward
								["races"] = ALLIANCE_ONLY,
							}),
							i(171523, {	-- Waistguard of Deathly Dominion
								["races"] = HORDE_ONLY,
							}),
							i(171588, {	-- Westfall Saber
								["races"] = ALLIANCE_ONLY,
							}),
							-- Heigan
							i(171618),	-- Amulet of Autopsy			*14.01.2024
							i(171515),	-- Bindings of the Decrepit
							i(171509),	-- Breastplate of Tormented Rage
							i(171516),	-- Chestguard of Bitter Charms
							i(171514),	-- Cryptfiend's Bite
							i(171619),	-- Cuffs of Dark Shadows
							i(171617),	-- Demise
							i(171521),	-- Eruption-Scarred Boots
							i(171522),	-- Gloves of the Dancing Bear
							i(171518),	-- Heigan's Putrid Vestments
							i(171519),	-- Helm of Pilgrimage
							i(171512),	-- Iron-Spring Jumpers
							i(171508),	-- Leggings of Colossal Strides
							i(171510),	-- Legguards of the Apostle
							i(171623),	-- Necrogenic Belt
							i(171624),	-- Preceptor's Bindings
							i(171622),	-- Ring of Holy Cleansing		*14.01.2024
							i(171625),	-- Saltarello Shoes
							i(171520),	-- Serene Echoes
							i(171621),	-- Shoulderplates of Bloodshed
							i(171626),	-- Staff of the Plague Beast
							i(171511),	-- Stalk-Skin Belt
							i(171517),	-- The Undeath Carrier
							i(171620),	-- Tunic of the Lost Pack
							-- Lich King
							i(171571),	-- Archus, Greatstaff of Antonidas
							i(171569),	-- Bloodsurge, Kel'Thuzad's Blade of Agony
							i(171563),	-- Fal'inrush, Defender of Quel'thalas
							i(171566),	-- Glorenzelg, High-Blade of the Silver Hand
							i(171576),	-- Halion, Staff of Forgotten Love
							i(171565),	-- Havoc's Call, Blade of Lordaeron Kings
							i(171568),	-- Heaven's Fall, Kryss of a Thousand Lies
							i(171564),	-- Mithrios, Bronzebeard's Legacy
							i(171567),	-- Oathbinder, Charge of the Ranger-General
							i(171578),	-- Pugius, Fist of Defiance
							i(171570),	-- Royal Scepter of Terenas II
							i(171577),	-- Stormfury, Dark Blade of the Betrayer
							i(171574),	-- Tainted Twig of Nordrassil
							i(171580),	-- Tel'thas, Dagger of the Blood King
							i(171572),	-- Troggbane, Axe of the Frostborne King
							i(171575),	-- Valius, Gavel of the Lightbringer
							i(171573),	-- Warmace of Menethil
							i(171579),	-- Windrunner's Heartseeker
							-- Possible Ulduar Zonedrop TW Items (from killing Yogg Quest)
							-- Confirmed
							i(156466),	-- Bracers of Righteous Reformation	*14.01.2024
							i(156468),	-- Cloak of the Dormant Blaze		*14.01.2024
							i(156251),	-- Shroud of Alteration				*14.01.2024
							i(156253),	-- Shoulders of Misfortune			*14.01.2024
							-- Very Likely
							i(156461),	-- Adamant Handguards
							i(156255),	-- Belt of the Sleeper
							i(156470),	-- Bloodcrush Cudgel
							i(156467),	-- Boots of Unsettled Prey
							i(156257),	-- Daschal's Bite
							i(156462),	-- Drape of the Spellweaver
							i(156463),	-- Golemheart Longbow
							i(156252),	-- Greaves of the Stonewarder
							i(156256),	-- Grips of Chaos
							i(156465),	-- Iceshear Mantle
							i(156254),	-- Leggings of the Tortured Earth
							i(156460),	-- Mimiron's Repeater
							i(156469),	-- Pillar of Fortitude
						},
					})),
				},
			}),
			q(40173, {	-- The Unstable Prism
				["provider"] = { "i", 129928 },	-- Frigid Timewarped Prism
				["isWeekly"] = true,
				["groups"] = {
					currency(TIMEWARPED_BADGE),
				},
			}),
		}),
		n(VENDORS, {
			n(98690, {	-- Auzin <Timewalking Vendor>
				["maps"] = { NORTHREND_DALARAN },
				["g"] = {
					n(ARMOR, {
						filter(CLOTH, {
							i(171999, {	-- Coldstep Sandals
								["races"] = ALLIANCE_ONLY,
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
								["timeline"] = { ADDED_8_2_5 },
							}),
							i(171995, {	-- Coldstep Slippers
								["races"] = HORDE_ONLY,
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
								["timeline"] = { ADDED_8_2_5 },
							}),
							i(129879, {	-- Gloves of False Gestures
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129892, {	-- Meteor Chaser's Raiment
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129869, {	-- Xintor's Expeditioary Boots
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
						}),
						filter(FINGER_F, {
							i(129872, {	-- Band of Channeled Magic
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129876, {	-- Bloodshed Band
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129873, {	-- Renewal of Life
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129874, {	-- Ring of Invincibility
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129875, {	-- Signet of the Impregnable Fortress
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
						}),
						filter(LEATHER, {
							i(129871, {	-- Boots of Captain Ellis
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129881, {	-- Cat Burglar's Gripes
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129891, {	-- Shadow Seeker's Tunic
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
						}),
						filter(MAIL, {
							i(129877, {	-- Logsplitters
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129890, {	-- Longstrider's Vest
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129870, {	-- Pack-Ice Striders
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
						}),
						filter(NECK_F, {
							i(129884, {	-- Brooch of the Wailing Night
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129882, {	-- Evoker's Charm
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129885, {	-- Frozen Tear of Elune
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
						}),
						filter(PLATE, {
							i(129889, {	-- Castle Breaker's Battleplate
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129880, {	-- Gauntlets of the Kraken
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129868, {	-- Kyzoc's Ground Stompers
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129886, {	-- Shard of the Crystal Forest
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
							i(129883, {	-- Spiked Battleguard Choker
								["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							}),
						}),
						filter(TRINKET_F, {
							i(129898, {	-- Mark of Supremacy
								["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
							}),
							i(129896, {	-- Mirror of Truth
								["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
							}),
							i(129893, {	-- Sundial of the Exiled
								["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
							}),
							i(129897, {	-- The Egg of Mortal Essence
								["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
							}),
							i(129895, {	-- Valor Medal of the First War
								["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
							}),
						}),
					}),
					filter(BATTLE_PETS, sharedDataSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
						i(231356, {	-- Specter (PET!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 2200}},
							["timeline"] = { ADDED_11_0_5 },
						}),
					})),
					filter(COSMETIC, sharedDataSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
						i(232042, {	-- Azure Magus' Blade
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232291, {	-- Battered Bulwark of the Argent Crusade
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}},
						}),
						i(232058, {	-- Ceremonial Stratholme Shield
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232060, {	-- Coldarra Spellbinder's Stave
							["cost"] = {{"c", TIMEWARPED_BADGE, 1800}},
						}),
						i(232043, {	-- Crystal-Maw Basher
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232019, {	-- Dark Ritualists Spellblade
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(231999, {	-- Dragonflayer's Heartpiercer
							["cost"] = {{"c", TIMEWARPED_BADGE, 1800}},
						}),
						i(232027, {	-- Dragonflayer's Iron Cleaver
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232052, {	-- Dragonflayer's Wing Splitter
							["cost"] = {{"c", TIMEWARPED_BADGE, 1800}},
						}),
						i(232063, {	-- Drakkari Head Splitter
							["cost"] = {{"c", TIMEWARPED_BADGE, 1800}},
						}),
						i(232026, {	-- Drakkari Voodoo Stick
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						iensemble(232316, {	-- Ensemble: Brunnhildar Scout's Kit
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}},
						}),
						iensemble(232313, {	-- Ensemble: Coldarra Spellbinder's Regalia
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}},
						}),
						iensemble(232317, {	-- Ensemble: Drakkari Stalker's Trappings
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}},
						}),
						iensemble(232314, {	-- Ensemble: Jotunheim Berserker's Battleplate
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}},
						}),
						iensemble(232315, {	-- Ensemble: Ymirjar Deathbringer's Battleplate
							["cost"] = {{"c", TIMEWARPED_BADGE, 2500}},
						}),
						i(232476, {	-- Explorer's League Tabard
							["cost"] = {{"c", TIMEWARPED_BADGE, 500}},
							["races"] = ALLIANCE_ONLY,
						}),
						i(232025, {	-- Frost Giant's Claws
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232000, {	-- Frosted Ymirheim Battle Bow
							["cost"] = {{"c", TIMEWARPED_BADGE, 1500}},
						}),
						i(232078, {	-- Ghostly Titan Astrolabe
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232055, {	-- Griffon's Teeth Ripper
							["cost"] = {{"c", TIMEWARPED_BADGE, 1800}},
						}),
						i(232477, {	-- Hand of Vengeance Tabard
							["cost"] = {{"c", TIMEWARPED_BADGE, 500}},
							["races"] = HORDE_ONLY,
						}),
						i(232004, {	-- Ironforge Hammerhead Rifle
							["cost"] = {{"c", TIMEWARPED_BADGE, 1800}},
						}),
						i(232064, {	-- Leviathan Mk II Crowd Control Blade
							["cost"] = {{"c", TIMEWARPED_BADGE, 1800}},
						}),
						i(232008, {	-- Magehunter's Ornate Dagger
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232020, {	-- Stormforged Short Blade
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232059, {	-- Tainted Keeper's Visage
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232041, {	-- Titan-Spark Longblade
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232010, {	-- Vrykul Gutripper
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232028, {	-- Warsong Coldweather Cleaver
							["cost"] = {{"c", TIMEWARPED_BADGE, 1200}},
						}),
						i(232003, {	-- Wolf-Eyed Sharpshooter
							["cost"] = {{"c", TIMEWARPED_BADGE, 1800}},
						}),
						i(232056, {	-- Ymirjar Battle Harpoon
							["cost"] = {{"c", TIMEWARPED_BADGE, 1800}},
						}),
					})),
					filter(MISC, {
						i(46007, {  -- Bag of Fishing Treasure
							["cost"] = {{"c", TIMEWARPED_BADGE, 150}},
							["sym"] = {{"fill" }},
						}),
						i(129955, {	-- Commendation of the Alliance Vanguard
							["races"] = ALLIANCE_ONLY,
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(129942, {	-- Commendation of the Argent Crusade
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(129941, {	-- Commendation of the Ebon Blade
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(129954, {	-- Commendation of the Horde Expedition
							["races"] = HORDE_ONLY,
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(129940, {	-- Commendation of the Kirin Tor
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(129943, {	-- Commendation of the Sons of Hodir
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(129944, {	-- Commendation of the Wyrmrest Accord
							["cost"] = {{"c", TIMEWARPED_BADGE, 50}},
						}),
						i(44113, {	-- Small Spice Bag
							["cost"] = {{"c", TIMEWARPED_BADGE, 25}},
							["g"] = {
								i(34834),	-- Recipe: Captain Rumsey's Lager (RECIPE!)
								i(33925),	-- Recipe: Delicious Chocolate Cake (RECIPE!)
								i(33871),	-- Recipe: Stormchops (RECIPE!)
							},
						}),
					}),
					filter(MOUNTS, {
						i(231374, {	-- Enchanted Spellweave Carpet (MOUNT!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 5000}},
							["timeline"] = { ADDED_11_0_5 },
						}),
						i(129922, {	-- Ironbound Wraithcharger (MOUNT!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 5000}},
						}),
					}),
					filter(TOYS, {
						i(129965, {	-- Grizzlesnout's Fang (TOY!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 750}},
						}),
						i(129952, {	-- Hourglass of Eternity (TOY!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 2000}},
						}),
						i(129938, {	-- Will of Northrend (TOY!)
							["cost"] = {{"c", TIMEWARPED_BADGE, 1500}},
						}),
					}),
				},
			}),
		}),
		inst_tw(759, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 }},{	-- Ulduar
			["isRaid"] = true,
			["g"] = {
				n(ZONE_DROPS, {
					--[[ Possibly
					-- When confirmed, also remove them from the file at the very bottom
					i(156461),	-- Adamant Handguards
					i(156470),	-- Bloodcrush Cudgel
					i(156467),	-- Boots of Unsettled Prey
					i(156466),	-- Bracers of Righteous Reformation
					i(156468),	-- Cloak of the Dormant Blaze
					i(156252),	-- Greaves of the Stonewarder
					i(156256),	-- Grips of Chaos
					i(156465),	-- Iceshear Mantle
					i(156254),	-- Leggings of the Tortured Earth
					i(156460),	-- Mimiron's Repeater
					i(156469),	-- Pillar of Fortitude
					i(156253),	-- Shoulders of Misfortune
					i(156251),	-- Shroud of Alteration--]]
					-- Confirmed
					i(156462),	-- Drape of the Spellweaver
					i(156463),	-- Golemheart Longbow
					i(156255),	-- Belt of the Sleeper
					i(156257),	-- Daschal's Bite
					-- Unknown
					-- i(),	-- Relic Hunter's Cord	(no equivalent in TW, no possible item)
				}),
				cr(33113, e(1637, {	-- Flame Leviathan
					i(156012),	-- Ironsoul
					i(156017),	-- Firesoul
					i(155933),	-- Golden Saronite Dragon
					i(156014),	-- Kinetic Ripper
					i(155924),	-- Titanguard
					i(155928),	-- Leviathan Fueling Manual
					i(155921),	-- Iron Riveted War Helm
					i(156019),	-- Lifespark Visage
					i(155931),	-- Steamworker's Goggles
					i(156028),	-- Mantle of Fiery Vengeance
					i(155937),	-- Shoulderpads of Dormant Energies
					i(156018),	-- Firestrider Chestguard
					i(156020),	-- Combustion Bracers
					i(156013),	-- Flamewatch Armguards
					i(155922),	-- Mechanist's Bindings
					i(155925),	-- Mimiron's Inferno Couplings
					i(155930),	-- Constructor's Handwraps
					i(155923),	-- Gloves of the Fiery Behemoth
					i(156022),	-- Handguards of Potent Cures
					i(155932),	-- Embrace of the Leviathan
					i(156024),	-- Gilded Steel Legplates
					i(155935),	-- Plated Leggings of Ruination
					i(155936),	-- Boots of Fiery Resolution
					i(156021),	-- Energy Siphon
					i(156016),	-- Pyrite Infuser
				})),
				cr(33118, e(1638, {	-- Ignis the Furnace Master
					i(142086),	-- Magma Rageling (PET!)
					i(155961),	-- Intensity
					i(156039),	-- Relentless Edge
					i(155956),	-- Worldcarver
					i(156037),	-- Rifle of the Platinum Guard
					i(155960),	-- Scepter of Creation
					i(156042),	-- Igniter Rod
					i(155955),	-- Helm of the Furnace Master
					i(156049),	-- Pauldrons of Tempered Will
					i(155963),	-- Soot-Covered Mantle
					i(156046),	-- Drape of Fuming Anger
					i(156045),	-- Shawl of the Caretaker
					i(155958),	-- Lifeforge Breastplate
					i(156044),	-- Armbraces of the Vibrant Flame
					i(155964),	-- Wristguards of the Firetender
					i(156038),	-- Gauntlets of the Iron Furnace
					i(156040),	-- Gloves of Smoldering Touch
					i(155962),	-- Flamewrought Cinch
					i(155953),	-- Girdle of Embers
					i(155957),	-- Charred Saronite Greaves
					i(155954),	-- Flamestalker Boots
					i(156041),	-- Furnace Stone
					i(155952),	-- Heart of Iron
				})),
				cr(33186, e(1639, {	-- Razorscale
					i(142087),	-- Ironbound Proto-Whelp (PET!)
					i(155946),	-- Guiding Star
					i(156026),	-- Razorscale Talon
					i(155943),	-- Remorse
					i(155938),	-- Veranus' Bane
					i(155949),	-- Collar of the Wyrmhunter
					i(156027),	-- Dragonsteel Faceplate
					i(155941),	-- Razorscale Shoulderguards
					i(155939),	-- Drape of the Drakerider
					i(156033),	-- Breastplate of the Afterlife
					i(155948),	-- Bracers of the Broodmother
					i(156029),	-- Bracers of the Smothering Inferno
					i(155945),	-- Shackles of the Odalisque
					i(155950),	-- Belt of the Fallen Wyrm
					i(156034),	-- Binding of the Dragon Matriarch
					i(155940),	-- Dragonslayer's Brace
					i(156032),	-- Stormtempered Girdle
					i(156035),	-- Ironscale Leggings
					i(155942),	-- Proto-Hide Leggings
					i(155944),	-- Saronite Mesh Legguards
					i(156030),	-- Treads of the Invader
					i(156036),	-- Eye of the Broodmother
					i(155947),	-- Living Flame
				})),
				cr(33293, e(1640, {	-- XT-002 Deconstructor
					i(156290),	-- Aesir's Edge
					i(155993),	-- Twisted Visage
					i(155985),	-- Golem-Shard Sticker
					i(156265),	-- Plasma Foil
					i(156164),	-- Sorthalis, Hammer of the Watchers
					i(156292),	-- Magnetized Projectile Emitter
					i(155994),	-- Quartz Crystal Wand
					i(156264),	-- Pulsing Spellshield
					i(156267),	-- Helm of Veiled Energies
					i(155992),	-- Mantle of Wavering Calm
					i(155990),	-- Shoulderplates of the Deconstructor
					i(156261),	-- Treacherous Shoulderpads
					i(156167),	-- Breastplate of the Devoted
					i(156289),	-- Breastplate of the Stoneshaper
					i(156260),	-- Chestplate of Vicious Potency
					i(155996),	-- Quartz-Studded Harness
					i(156266),	-- Vest of the Glowing Crescent
					i(156263),	-- Armbands of the Construct
					i(156291),	-- Fluxing Energy Coils
					i(156168),	-- Grasps of Reason
					i(155991),	-- Horologist's Wristguards
					i(156262),	-- Gloves of Taut Grip
					i(156166),	-- Gloves of the Steady Hand
					i(156268),	-- Conductive Cord
					i(155987),	-- Clockwork Legplates
					i(155997),	-- Boots of Hasty Revival
					i(155988),	-- Brass-Lined Boots
					i(155995),	-- Sandals of Rash Temperament
				})),
				cr(32867, e(1641, {	-- The Assembly of Iron
					i(142088),	-- Runeforged Servitor (PET!)
					i(155973),	-- Rapture
					i(155972),	-- Stormrune Edge
					i(156611),	-- Fang of Oblivion
					i(156170),	-- Perilous Bite
					i(156057),	-- Rune-Etched Nightblade
					i(156058),	-- Stormtip
					i(156171),	-- The Masticator
					i(155968),	-- Ancient Iron Heaume
					i(156055),	-- Circlet of True Sight
					i(155969),	-- Iron-Studded Mantle
					i(155984),	-- Shoulderpads of the Intruder
					i(156050),	-- Cloak of the Iron Council
					i(155981),	-- Drape of Mortal Downfall
					i(155966),	-- Drape of the Lithe
					i(155976),	-- Phaelia's Vestments of the Sprouting Seed
					i(155979),	-- Raiments of the Iron Council
					i(155967),	-- Steelbreaker's Embrace
					i(156146),	-- Runetouch Wristwraps
					i(155970),	-- Handguards of the Enclave
					i(155978),	-- Runeshaper's Gloves
					i(155980),	-- Belt of Colossal Rage
					i(156177),	-- Belt of the Crystal Tree
					i(156059),	-- Belt of the Iron Servant
					i(156051),	-- Leggings of Swift Reflexes
					i(155977),	-- Overload Legwraps
					i(156102),	-- Boots of the Petrified Forest
					i(156056),	-- Greaves of Iron Intensity
					i(155983),	-- Greaves of Swift Vengeance
					i(155971),	-- Runed Ironhide Boots
				})),
				cr(32930, e(1642, {	-- Kologarn
					i(156269),	-- Spire of Withering Dreams
					i(156003),	-- Malice
					i(156274),	-- Stoneguard
					i(155998),	-- Giant's Bane
					i(156007),	-- Ironmender
					i(156271),	-- Shoulderguards of the Solemn Watch
					i(156002),	-- Shoulderpads of the Monolith
					i(156278),	-- Shawl of the Shattered Giant
					i(156008),	-- Robes of the Umbral Brute
					i(156011),	-- Bracers of Unleashed Magic
					i(156001),	-- Decimator's Armguards
					i(156006),	-- Unfaltering Armguards
					i(156005),	-- Gloves of the Pythonic Guardian
					i(156009),	-- Handwraps of Plentiful Recovery
					i(156010),	-- Leggings of the Stoneweaver
					i(156004),	-- Saronite Plated Legguards
					i(156275),	-- Greaves of the Earthbinder
					i(156272),	-- Sabatons of the Iron Watcher
					i(156277),	-- Spark of Hope
					i(156000),	-- Wrathstone
				})),
				cr(33515, e(1643, {	-- Auriaya
					i(142089),	-- Sanctum Cub (PET!)
					i(156159),	-- Runescribed Blade
					i(156043),	-- Stonerender
					i(156284),	-- Nurturing Touch
					i(156054),	-- Siren's Cry
					i(156279),	-- Shieldwall of the Breaker
					i(156286),	-- Cover of the Keepers
					i(156158),	-- Cowl of the Absolute
					i(156161),	-- Unwavering Stare
					i(156162),	-- Amice of the Stoic Watch
					i(156282),	-- Ironaya's Discarded Mantle
					i(156285),	-- Mantle of the Preserver
					i(156048),	-- Shoulderplates of the Eternal
					i(156047),	-- Cloak of the Makers
					i(156283),	-- Chestplate of Titanic Fury
					i(156287),	-- Raiments of the Corrupted
					i(156060),	-- Unbreakable Chestguard
					i(156052),	-- Gloves of the Stonereaper
					i(156281),	-- Nimble Climber's Belt
					i(156280),	-- Archaedas' Lost Legplates
					i(156157),	-- Greaves of the Rockmender
					i(156163),	-- Sandals of the Ancient Keeper
					i(156288),	-- Elemental Focus Stone
				})),
				cr(32845, e(1644, {	-- Hodir
					i(138800),	-- Illusion: Blade Ward (ILLUSION!)
					i(142090),	-- Winter Rageling (PET!)
					i(156299),	-- Icecore Staff
					i(156179),	-- Staff of Endless Winter
					i(156180),	-- Stormedge
					i(156612),	-- Constellus
					i(156297),	-- Shiver
					i(156294),	-- Avalanche
					i(156300),	-- Ice Layered Barrier
					i(156172),	-- Northern Barrier
					i(156298),	-- The Boreal Guard
					i(156186),	-- Cowl of Icy Breaths
					i(156183),	-- Drape of Icy Intent
					i(156295),	-- Winter's Frigid Embrace
					i(156418),	-- Conqueror's Aegis Breastplate
					i(156367),	-- Conqueror's Darkruned Chestguard
					i(156385),	-- Conqueror's Deathbringer Robe
					i(156488),	-- Conqueror's Glaivedancer Breastplate
					i(156378),	-- Conqueror's Kirin Tor Tunic
					i(156439),	-- Conqueror's Nightsong Vestments
					i(156414),	-- Conqueror's Raiments of Sanctification
					i(156388),	-- Conqueror's Scourgestalker Tunic
					i(156408),	-- Conqueror's Siegebreaker Breastplate
					i(156498),	-- Conqueror's Steelfist Breastplate
					i(156372),	-- Conqueror's Terrorblade Breastplate
					i(156451),	-- Conqueror's Worldbreaker Hauberk
					i(156175),	-- Winter's Icy Embrace
					i(156182),	-- Bindings of Winter Gale
					i(156301),	-- Bitter Cold Armguards
					i(156176),	-- Frost-Bound Chain Bracers
					i(156184),	-- Gloves of the Frozen Glade
					i(156174),	-- Frostplate Greaves
					i(156108),	-- Valorous Aegis Legguards
					i(156064),	-- Valorous Darkruned Legplates
					i(156143),	-- Valorous Deathbringer Leggings
					i(156496),	-- Valorous Glaivedancer Legplates
					i(156091),	-- Valorous Kirin Tor Leggings
					i(156118),	-- Valorous Leggings of Sanctification
					i(156078),	-- Valorous Nightsong Trousers
					i(156087),	-- Valorous Scourgestalker Legguards
					i(156150),	-- Valorous Siegebreaker Legguards
					i(156506),	-- Valorous Steelfist Legplates
					i(156123),	-- Valorous Terrorblade Legplates
					i(156132),	-- Valorous Worldbreaker Kilt
				})),
				cr(32865, e(1645, {	-- Thorim
					i(138800),	-- Illusion: Blade Ward (ILLUSION!)
					i(156309),	-- Combatant's Bootblade
					i(156302),	-- Legacy of Thunder
					i(156185),	-- Vulmir, the Northern Tempest
					i(156610),	-- Skyforge Crossbow
					i(156191),	-- Wisdom's Hold
					i(156420),	-- Conqueror's Aegis Faceguard
					i(156417),	-- Conqueror's Circlet of Sanctification
					i(156369),	-- Conqueror's Darkruned Faceguard
					i(156387),	-- Conqueror's Deathbringer Hood
					i(156490),	-- Conqueror's Glaivedancer Helmet
					i(156377),	-- Conqueror's Kirin Tor Hood
					i(156436),	-- Conqueror's Nightsong Cover
					i(156390),	-- Conqueror's Scourgestalker Headpiece
					i(156412),	-- Conqueror's Siegebreaker Greathelm
					i(156500),	-- Conqueror's Steelfist Helmet
					i(156374),	-- Conqueror's Terrorblade Helmet
					i(156454),	-- Conqueror's Worldbreaker Helm
					i(156303),	-- Guise of the Midgard Serpent
					i(156193),	-- Warhelm of the Champion
					i(156195),	-- Pauldrons of the Combatant
					i(156109),	-- Valorous Aegis Shoulderguards
					i(156065),	-- Valorous Darkruned Shoulderplates
					i(156145),	-- Valorous Deathbringer Shoulderpads
					i(156497),	-- Valorous Glaivedancer Pauldrons
					i(156093),	-- Valorous Kirin Tor Shoulderpads
					i(156077),	-- Valorous Nightsong Mantle
					i(156088),	-- Valorous Scourgestalker Spaulders
					i(156117),	-- Valorous Shoulderpads of Sanctification
					i(156151),	-- Valorous Siegebreaker Pauldrons
					i(156507),	-- Valorous Steelfist Pauldrons
					i(156124),	-- Valorous Terrorblade Pauldrons
					i(156133),	-- Valorous Worldbreaker Shoulderpads
					i(156194),	-- Embrace of the Gladiator
					i(156307),	-- Gauntlets of the Thunder God
					i(156306),	-- Handwraps of Resonance
					i(156188),	-- Belt of the Betrayed
					i(156305),	-- Belt of the Blood Pit
					i(156189),	-- Leggings of Lost Love
					i(156304),	-- Leggings of Unstable Discharge
					i(156310),	-- Mjolnir Runestone
					i(156187),	-- Scale of Fates
					i(156308),	-- Sif's Remembrance
				})),
				cr(32906, e(1646, {	-- Freya
					i(142091),	-- Snaplasher (PET!)
					i(138800),	-- Illusion: Blade Ward (ILLUSION!)
					i(156613),	-- Dreambinder
					i(156196),	-- The Lifebinder
					i(156312),	-- Unraveling Reach
					i(156201),	-- Bladetwister
					i(156320),	-- Serilas, Blood Blade of Invar One-Arm
					i(156023),	-- Petrified Ivy Sprig
					i(156313),	-- Ironbark Faceguard
					i(156203),	-- Drape of the Sullen Goddess
					i(156316),	-- Chestguard of the Lasher
					i(156315),	-- Tunic of the Limber Stalker
					i(156198),	-- Gauntlets of Ruthless Reprisal
					i(156317),	-- Gloves of Whispering Winds
					i(156204),	-- Handguards of Revitalization
					i(156107),	-- Valorous Aegis Handguards
					i(156063),	-- Valorous Darkruned Gauntlets
					i(156142),	-- Valorous Deathbringer Gloves
					i(156494),	-- Valorous Glaivedancer Gauntlets
					i(156116),	-- Valorous Gloves of Sanctification
					i(156379),	-- Valorous Kirin Tor Gauntlets
					i(156076),	-- Valorous Nightsong Gloves
					i(156085),	-- Valorous Scourgestalker Handguards
					i(156149),	-- Valorous Siegebreaker Handguards
					i(156504),	-- Valorous Steelfist Gauntlets
					i(156121),	-- Valorous Terrorblade Gauntlets
					i(156130),	-- Valorous Worldbreaker Gloves
					i(156421),	-- Conqueror's Aegis Legguards
					i(156370),	-- Conqueror's Darkruned Legguards
					i(156386),	-- Conqueror's Deathbringer Leggings
					i(156491),	-- Conqueror's Glaivedancer Legplates
					i(156381),	-- Conqueror's Kirin Tor Leggings
					i(156437),	-- Conqueror's Nightsong Trousers
					i(156416),	-- Conqueror's Pants of Sanctification
					i(156391),	-- Conqueror's Scourgestalker Legguards
					i(156415),	-- Conqueror's Siegebreaker Legguards
					i(156501),	-- Conqueror's Steelfist Legplates
					i(156375),	-- Conqueror's Terrorblade Legplates
					i(156455),	-- Conqueror's Worldbreaker Kilt
					i(156205),	-- Leggings of the Enslaved Idol
					i(156199),	-- Leggings of the Lifetender
					i(156314),	-- Legplates of Flourishing Resolve
					i(156200),	-- Boots of the Servant
				})),
				cr(33350, e(1647, {	-- Mimiron
					["crs"] = {
						33432,	-- Leviathan Mk II
						33651,	-- VX-001
						33670,	-- Aerial Command Unit
					},
					["g"] = {
						i(138800),	-- Illusion: Blade Ward (ILLUSION!)
						i(142092),	-- G0-R41-0N Ultratonk (PET!)
						i(156211),	-- Delirium's Touch
						i(156329),	-- Fusion Blade
						i(156206),	-- Insanity's Grip
						i(156321),	-- Pulse Baton
						i(156614),	-- Starshard Edge
						i(156214),	-- Crown of Luminescence
						i(156330),	-- Mimiron's Flight Goggles
						i(156106),	-- Valorous Aegis Faceguard
						i(156115),	-- Valorous Cowl of Sanctification
						i(156062),	-- Valorous Darkruned Helmet
						i(156140),	-- Valorous Deathbringer Hood
						i(156495),	-- Valorous Glaivedancer Helmet
						i(156090),	-- Valorous Kirin Tor Hood
						i(156459),	-- Valorous Nightsong Cover
						i(156086),	-- Valorous Scourgestalker Headpiece
						i(156148),	-- Valorous Siegebreaker Greathelm
						i(156505),	-- Valorous Steelfist Helmet
						i(156122),	-- Valorous Terrorblade Helmet
						i(156131),	-- Valorous Worldbreaker Helm
						i(156209),	-- Malleable Steelweave Mantle
						i(156323),	-- Shoulderguards of Assimilation
						i(156210),	-- Asimov's Drape
						i(156322),	-- Stylish Power Cape
						i(156213),	-- Titanskin Cloak
						i(156258),	-- Armbands of Bedlam
						i(156419),	-- Conqueror's Aegis Handguards
						i(156368),	-- Conqueror's Darkruned Handguards
						i(156383),	-- Conqueror's Deathbringer Gloves
						i(156489),	-- Conqueror's Glaivedancer Gauntlets
						i(156409),	-- Conqueror's Handwraps of Sanctification
						i(156380),	-- Conqueror's Kirin Tor Gauntlets
						i(156434),	-- Conqueror's Nightsong Gloves
						i(156389),	-- Conqueror's Scourgestalker Handguards
						i(156410),	-- Conqueror's Siegebreaker Handguards
						i(156499),	-- Conqueror's Steelfist Gauntlets
						i(156373),	-- Conqueror's Terrorblade Gauntlets
						i(156452),	-- Conqueror's Worldbreaker Gloves
						i(156325),	-- Static Charge Handwraps
						i(156324),	-- Cable of the Metrognome
						i(156208),	-- Waistguard of the Creator
						i(156326),	-- Fused Alloy Legplates
						i(156327),	-- Greaves of the Iron Army
						i(156328),	-- Tempered Mercury Greaves
						i(156207),	-- Pandora's Plea
					},
				})),
				cr(33271, e(1648, {	-- General Vezax
					i(156331),	-- Hoperender
					i(156215),	-- Lotrafen, Spear of the Damned
					i(156353),	-- Tortured Earth
					i(156228),	-- Voldrethar, Dark Blade of Oblivion
					i(156355),	-- Aesuga, Hand of the Ardent Champion
					i(156336),	-- Shadowbite
					i(156356),	-- Void Sabre
					i(156223),	-- Scepter of Lost Souls
					i(156217),	-- Helm of the Faceless
					i(156226),	-- Mantle of the Unknowing
					i(156338),	-- Underworld Mantle
					i(156352),	-- Drape of the Faceless General
					i(156339),	-- Saronite Animus Cloak
					i(156231),	-- Vestments of the Blind Denizen
					i(156337),	-- Vestments of the Piercing Light
					i(156334),	-- Bindings of the Depths
					i(156332),	-- Gauntlets of the Wretched
					i(156224),	-- Grips of the Unbroken
					i(156232),	-- Handwraps of the Vigilant
					i(156220),	-- Belt of Clinging Hope
					i(156222),	-- Belt of the Darkspeaker
					i(156219),	-- Darkcore Leggings
					i(156354),	-- Leggings of Profound Darkness
					i(156225),	-- Boots of the Forgotten Depths
					i(156216),	-- Boots of the Underdweller
					i(156230),	-- Flare of the Heavens
					i(156221),	-- The General's Heart
				})),
				cr(33288, e(1649, {	-- Yogg-Saron
					ach(12388, {	-- Alone in the Darkness
						i(45693)	-- Mimiron's Head (MOUNT!)
					}),
					i(138801),	-- Illusion: Blood Draining (ILLUSION!)
					i(142093),	-- Creeping Tentacle (PET!)
					i(156341),	-- Abaddon
					i(156243),	-- Dark Edge of Depravity
					i(156348),	-- Devotion
					i(156233),	-- Earthshaper
					i(156357),	-- Hammer of Crushing Whispers
					i(156361),	-- Caress of Insanity
					i(156347),	-- Kingsbane
					i(156238),	-- Soulscribe
					i(156351),	-- Touch of Madness
					i(156343),	-- Deliverance
					i(156242),	-- Cowl of Dark Whispers
					i(156349),	-- Faceguard of the Eyeless Horror
					i(156235),	-- Garona's Guise
					i(156358),	-- Amice of Inconceivable Horror
					i(156422),	-- Conqueror's Aegis Shoulderguards
					i(156371),	-- Conqueror's Darkruned Pauldrons
					i(156384),	-- Conqueror's Deathbringer Shoulderpads
					i(156492),	-- Conqueror's Glaivedancer Pauldrons
					i(156382),	-- Conqueror's Kirin Tor Shoulderpads
					i(156411),	-- Conqueror's Mantle of Sanctification
					i(156441),	-- Conqueror's Nightsong Mantle
					i(156392),	-- Conqueror's Scourgestalker Spaulders
					i(156413),	-- Conqueror's Siegebreaker Pauldrons
					i(156502),	-- Conqueror's Steelfist Pauldrons
					i(156376),	-- Conqueror's Terrorblade Pauldrons
					i(156456),	-- Conqueror's Worldbreaker Shoulderpads
					i(156239),	-- Shawl of Haunted Memories
					i(156236),	-- Chestguard of Insidious Intent
					i(156241),	-- Chestguard of the Fallen God
					i(156105),	-- Valorous Aegis Breastplate
					i(156061),	-- Valorous Darkruned Battleplate
					i(156144),	-- Valorous Deathbringer Robe
					i(156493),	-- Valorous Glaivedancer Breastplate
					i(156092),	-- Valorous Kirin Tor Tunic
					i(156079),	-- Valorous Nightsong Vestments
					i(156119),	-- Valorous Robe of Sanctification
					i(156089),	-- Valorous Scourgestalker Tunic
					i(156147),	-- Valorous Siegebreaker Breastplate
					i(156503),	-- Valorous Steelfist Breastplate
					i(156120),	-- Valorous Terrorblade Breastplate
					i(156134),	-- Valorous Worldbreaker Hauberk
					i(156359),	-- Soul-Devouring Cinch
					i(156344),	-- Leggings of the Insatiable
					i(156246),	-- Legguards of Cunning Deception
					i(156350),	-- Treads of the Dragon Council
					i(156247),	-- Treads of the False Oracle
					i(156234),	-- Blood of the Old God
					i(156345),	-- Royal Seal of King Llane
					i(156245),	-- Show of Faith
					i(156458),	-- Vanquished Clutches of Yogg-Saron
				})),
			},
		})),
		inst_tw(271, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_2, REMOVED_9_1_5 }},{	-- Ahn'kahet: The Old Kingdom
			cr(29309, e(580, {	-- Elder Nadox
				i(127607),	-- Blade of Nadox
				i(127619),	-- Brood Plague Helmet
				i(127621),	-- Elder Headpiece
				i(127616),	-- Glowworm Cavern Bindings
				i(127608),	-- Ahn'kahar Handwraps
				i(127609),	-- Crawler-Emblem
				i(127618),	-- Nerubian Shield Ring
			})),
			cr(29308, e(581, {	-- Prince Taldaram
				i(127622),	-- Necklace of Taldaram
				i(127611),	-- Slasher's Amulet
				i(127620),	-- Sprinting Shoulderpads
				i(127642),	-- Subterranean Waterfall Shroud
				i(127623),	-- Bonegrinder Breastplate
				i(127624),	-- Flame Sphere Bindings
				i(127625),	-- Gauntlets of the Plundering Geist
				i(127612),	-- Gloves of the Blood Prince
			})),
			cr(30258, e(583, {	-- Amanitar
				i(127643),	-- Amanitar Skullbow
				i(127644),	-- Amulet of the Spell Flinger
				i(127613),	-- Mantle of Echoing Bats
				i(127617),	-- Spored Tendrils Spaulders
				i(127646),	-- Silken Bridge Handwraps
				i(127635),	-- Web Winder Gloves
				i(127614),	-- Pyramid Embossed Belt
				i(127645),	-- Legguards of Swarming Attacks
				i(127615),	-- Volazj's Sabatons
			})),
			cr(29310, e(582, {	-- Jedoga Shadowseeker
				i(127640),	-- Edge of Oblivion
				i(127647),	-- Ice-Rimed Chopper
				i(127610),	-- Talisman of Scourge Command
				i(127639),	-- Faceguard of the Hammer Clan
				i(127641),	-- Shadowseeker's Pendant
				i(127637),	-- Cloak of the Darkcaster
				i(127638),	-- Battlechest of the Twilight Cult
				i(127636),	-- Jedoga's Greatring
				i(127634),	-- Stained-Glass Shard Ring
			})),
			cr(29311, e(584, {	-- Herald Volazj
				i(127628),	-- Staff of Sinister Claws
				i(127626),	-- Titanium Compound Bow
				i(127630),	-- Wand of Ahn'kahet
				i(127631),	-- Bracers of the Herald
				i(127633),	-- Fiery Obelisk Handguards
				i(127627),	-- Kilt of the Forgotten One
				i(127632),	-- Skirt of the Old Kingdom
				i(127629),	-- Greaves of Ancient Evil
			})),
		})),
		inst_tw(272, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 }},{	-- Azjol-Nerub
			cr(28684, e(585, {	-- Krik'thir the Gatewatcher
				i(188403),	-- Aura Focused Gauntlets
				i(188402),	-- Cobweb Machete
				i(188414),	-- Custodian's Chestpiece
				i(188404),	-- Exquisite Spider-Silk Footwraps
				i(188411),	-- Facade Shield of Glyphs
				i(188412),	-- Golden Limb Bands
				i(188428),	-- Nerubian Mantle
				i(188413),	-- Stone-Worn Footwraps
			})),
			cr(28921, e(586, {	-- Hadronox
				i(188417),	-- Egg Sac Robes
				i(188415),	-- Essence of Gossamer
				i(188418),	-- Grotto Mist Gloves
				i(188416),	-- Hollowed Mandibles Legplates
				i(188405),	-- Life-Staff of the Web Lair
				i(188427),	-- Skittering Gauntlets
				i(188407),	-- Spinneret Epaulets
				i(188406),	-- Treads of Aspiring Heights
			})),
			cr(29120, e(587, {	-- Anub'arak
				i(188425),	-- Ancient Aligned Girdle
				i(188410),	-- Charmed Silken Cord
				i(188422),	-- Chitin Shell Greathelm
				i(188420),	-- Crypt Lord's Deft Blade
				i(188424),	-- Flamebeard's Bracers
				i(188421),	-- Insect Vestments
				i(188419),	-- Ring of the Traitor King
				i(188423),	-- Rod of the Fallen Monarch
				i(188426),	-- Sash of the Servant
				i(188408),	-- Signet of Arachnathid Command
				i(188409),	-- Wing Cover Girdle
			})),
		})),
		inst_tw(274, {	-- Gundrak
			cr(29304, e(592, {	-- Slad'ran
				i(127527),	-- Witch Doctor's Wildstaff
				i(127538),	-- Wand of Sseratus
				i(127548),	-- Helm of Cheated Fate
				i(127539),	-- Snake Den Spaulders
				i(127528),	-- Embroidered Gown of Zul'drak
				i(127540),	-- Slad'ran Coiled Cord
				i(127529),	-- Cannibal's Legguards
				i(127541),	-- Slithering Slippers
			})),
			cr(29307, e(593, {	-- Drakkari Colossus
				i(127533),	-- Drakkari Hunting Bow
				i(127547),	-- Pauldrons of the Colossus
				i(127534),	-- Shoulderguards of the Ice Troll
				i(127535),	-- Hauberk of Totemic Mastery
				i(127546),	-- Bracers of the Divine Elemental
				i(127549),	-- Living Mojo Belt
				i(127537),	-- Snowmelt Silken Cinch
			})),
			cr(29305, e(594, {	-- Moorabi
				i(127543),	-- Fist of the Deity
				i(127530),	-- Frozen Scepter of Necromancy
				i(127545),	-- Ground Tremor Helm
				i(127558),	-- Burning Skull Pendant
				i(127542),	-- Shroud of Moorabi
				i(127531),	-- Forlorn Breastplate of War
				i(127560),	-- Belt of Tasseled Lanterns
				i(127544),	-- Mojo Frenzy Greaves
				i(127532),	-- Arcane Focal Signet
				i(127554),	-- Hemorrhaging Circle
			})),
			cr(29932, e(595, {	-- Eck the Ferocious
				i(127565),	-- Helmet of the Shrine
				i(127564),	-- Engraved Chestplate of Eck
				i(127567),	-- Leggings of the Ruins Dweller
				i(127566),	-- Gorloc Muddy Footwraps
			})),
			cr(29306, e(596, {	-- Gal'darah
				i(127563),	-- Amulet of the Stampede
				i(127559),	-- Cloak of Bloodied Waters
				i(127561),	-- Shroud of Akali
				i(127553),	-- Arcane Flame Altar-Garb
				i(127536),	-- Steel Bear Trap Bracers
				i(127551),	-- Grips of the Beast God
				i(127557),	-- Horn-Tipped Gauntlets
				i(127555),	-- Sash of Blood Removal
				i(127556),	-- Gored Hide Legguards
				i(127552),	-- Boots of Transformation
				i(127562),	-- Gal'darah's Signet
				i(127550),	-- Offering of Sacrifice
			})),
		}),
		inst_tw(275, {	-- Halls of Lightning
			cr(28586, e(597, {	-- General Bjarngrim
				i(127504),	-- Iron Dwarf Smith Pauldrons
				i(127506),	-- Traditionally Dyed Handguards
				i(127507),	-- The General's Steel Girdle
				i(127505),	-- Patroller's War-Kilt
				i(127526),	-- Awakened Handguards (Dropped on 9th December for me during TW - Gold)
			})),
			cr(28587, e(598, {	-- Volkhan
				i(127525),	-- Helm of the Lightning Halls
				i(127508),	-- Shroud of Reverberation
				i(127511),	-- Giant-Hair Woven Gloves
				i(127510),	-- Belt of Vivacity
				i(127507),	-- The General's Steel Girdle
				i(127509),	-- Slag Footguards
			})),
			cr(28546, e(599, {	-- Ionar
				i(127519),	-- Ornate Woolen Stola
				i(127514),	-- Charged-Bolt Grips
				i(127513),	-- Cord of Swirling Winds
				i(127515),	-- Skywall Striders
				i(127512),	-- Winged Talisman
			})),
			cr(28923, e(600, {	-- Loken
				i(127520),	-- Colossal Skull-Clad Cleaver
				i(127516),	-- Lightning Giant Staff
				i(127524),	-- Librarian's Paper Cutter
				i(127517),	-- Planetary Helm
				i(127521),	-- Advanced Tooled-Leather Bands
				i(127518),	-- Flowing Sash of Order
				i(127523),	-- Mail Girdle of the Audient Earth
				i(127522),	-- Woven Bracae Leggings
			})),
		}),
		inst_tw(278, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_2, REMOVED_9_1_5 }},{	-- Pit of Saron
			cr(36494, e(608, {	-- Forgemaster Garfrost
				i(133486),	-- Garfrost's Two-Ton Hammer
				i(133485),	-- Unspeakable Secret
				i(133488),	-- Polished Mirror Helm
				i(133501),	-- Skeleton Lord's Cranium
				i(133508),	-- Shroud of Rime
				i(133490),	-- Flayer's Black Belt
				i(133489),	-- Ice-Steeped Sandals
				i(133487),	-- Ring of Carnelian and Bone
			})),
			cr(36476, e(609, {	-- Ick and Krick
				i(133491),	-- Krick's Beetle Stabber
				i(133517),	-- Saronite-Studded Shoulderguards
				i(133493),	-- Wristguards of Subterranean Moss
				i(133492),	-- Bent Gold Belt
				i(133494),	-- Scabrous Zombie Leather Belt
				i(133495),	-- Black Dragonskin Breeches
				i(133504),	-- Rimewoven Silks
				i(133496),	-- Purloined Wedding Ring
			})),
			cr(36658, e(610, {	-- Scourgelord Tyrannus
				i(133497),	-- Rimebane Rifle
				i(133503),	-- Protector of Frigid Souls
				i(133506),	-- Horns of the Spurned Val'kyr
				i(133500),	-- Painfully Sharp Choker
				i(133505),	-- Cloak of the Fallen Cardinal
				i(133507),	-- Palebone Robes
				i(133498),	-- Scourgelord's Frigid Chestplate
				i(133502),	-- Gondria's Spectral Bracer
				i(133499),	-- Shaggy Wyrmleather Leggings
			}))
		})),
		inst_tw(280, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 }},{	-- The Forge of Souls
			cr(36497, e(615, {	-- Brojahm
				i(50316),	-- Papa's Brand New Bag
				i(50317),	-- Papa's New Bag
				i(188457),	-- Bewildering Shoulderpads
				i(188460),	-- Cold Sweat Grips
				i(188477),	-- Eyes of Bewilderment
				i(188476),	-- Love's Prisoner
				i(188455),	-- Lucky Old Sun
				i(188456),	-- Minister's Number One Legplates
				i(188473),	-- Nighttime
				i(188458),	-- Robes of the Cheating Heart
				i(188459),	-- Seven Stormy Mornings
				i(188474),	-- Very Fashionable Shoulders
				i(188475),	-- Weeping Gauntlets
			})),
			cr(36502, e(616, {	-- Devourer of Souls
				i(188464),	-- Accursed Crawling Cape
				i(188485),	-- Arcane Loops of Anger
				i(188481),	-- Black Spire Sabatons
				i(188462),	-- Blood Boil Lancet
				i(188479),	-- Blood Weeper
				i(188469),	-- Brace Guards of the Starless Night
				i(188471),	-- Coil of Missing Gems
				i(188468),	-- Essence of Anger
				i(188486),	-- Essence of Desire
				i(188483),	-- Essence of Suffering
				i(188480),	-- Frayed Scoundrel's Cap
				i(188461),	-- Heartshiver
				i(188488),	-- Helm of the Spirit Shock
				i(188466),	-- Legplates of Frozen Granite
				i(188463),	-- Lost Reliquary Chestguard
				i(188487),	-- Mord'rethar Robes
				i(188478),	-- Needle-Encrusted Scorpion
				i(188482),	-- Pauldrons of the Souleater
				i(188489),	-- Recovered Reliquary Boots
				i(188484),	-- Seethe
				i(188467),	-- Sollerets of Suffering
				i(188470),	-- Soul Screaming Boots
				i(188472),	-- Spiteful Signet
				i(188465),	-- Tower of the Mouldering Corpse
			})),
		})),
		inst_tw(281, {	-- The Nexus
			a(cr(26798, e(833, {	-- Commander Stoutbeard
				i(127568),	-- Glacier Sharpened Vileblade [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
				i(127603),	-- Cloak of the Enemy [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
				i(127600),	-- Rippling Azure Cloak [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
				i(127604),	-- Grips of Sculptured Icicles [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
				i(127606),	-- Opposed Stasis Leggings [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
				i(127569),	-- Attuned Crystalline Boots [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
				i(127605),	-- Cleric's Linen Boots [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
				i(127570),	-- Band of Glittering Permafrost [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
				i(127594),	-- Sphere of Red Dragon's Blood [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
			}))),
			h(cr(26796, e(617, {	-- Commander Kolurg
				i(127568),	-- Glacier Sharpened Vileblade [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
				i(127603),	-- Cloak of the Enemy [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
				i(127600),	-- Rippling Azure Cloak [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
				i(127604),	-- Grips of Sculptured Icicles [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
				i(127606),	-- Opposed Stasis Leggings [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
				i(127569),	-- Attuned Crystalline Boots [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
				i(127605),	-- Cleric's Linen Boots [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
				i(127570),	-- Band of Glittering Permafrost [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
				i(127594),	-- Sphere of Red Dragon's Blood [DJ Shows Ormorok, but it's actually Commanders; WoWHead 2019-07-24]
			}))),
			cr(26731, e(618, {	-- Grand Magus Telestra
				i(127579),	-- Wand of Shimmering Scales
				i(127580),	-- Telestra's Journal
				i(127581),	-- Arcane-Shielded Helm
				i(127583),	-- Spaulders of the Careless Thief
				i(127577),	-- Insulating Bindings
				i(127582),	-- Bands of Channeled Energy
				i(127578),	-- Belt of Draconic Runes
			})),
			cr(26763, e(619, {	-- Anomalus
				i(127571),	-- Tome of the Lore Keepers (TW Only)
				i(127586),	-- Helm of Anomalus [DJ doesn't list it. Confirmed 2019-03-18]
				i(127584),	-- Amulet of Dazzling Light [DJ doesn't list it. Confirmed 2018-07-24]
				i(127601),	-- Glassy Silver Bracers (TW Only)
				i(127572),	-- Gauntlets of Serpent Scales [DJ doesn't list it. Confirmed 2018-05-29]
				i(127585),	-- Hauberk of the Arcane Wraith
				i(127573),	-- Cleated Ice Boots
				i(127587),	-- Rift Striders
			})),
			cr(26794, e(620, {	-- Ormorok the Tree-Shaper
				i(127574),	-- Drakonid Arm Blade [DJ Shows Anomalus, but it's actually Ormorok; #errors confirmed 5-29-18]
				i(127575),	-- Chiseled Stalagmite Pauldrons [DJ Shows Anomalus, but it's actually Ormorok; WoWHead 2019-07-24]
				i(127590),	-- Gloves of the Crystal Gardener [DJ Shows Anomalus, but it's actually Ormorok; WoWHead 2019-07-24]
				i(127589),	-- Girdle of Ice [DJ Shows Anomalus, but it's actually Ormorok; WoWHead 2019-07-24]
				i(127591),	-- Frozen Forest Kilt [DJ Shows Anomalus, but it's actually Ormorok; WoWHead 2019-07-24]
				i(127602),	-- Cavern Leather Treads [DJ Shows Anomalus, but it's actually Ormorok; WoWHead 2019-07-24]
				i(127576),	-- Greaves of the Blue Flight [DJ Shows Anomalus, but it's actually Ormorok; WoWHead 2019-07-24]
				i(127588),	-- Band of Frosted Thorns [DJ Shows Anomalus, but it's actually Ormorok; WoWHead 2019-07-24]
			})),
			cr(26723, e(621, {	-- Keristrasza
				i(127596),	-- War Mace of Unrequited Love
				i(127592),	-- Bulwark of the Noble Protector
				i(127593),	-- Crystal-Infused Tunic
				i(127597),	-- Interwoven Scale Bracers
				i(127599),	-- Gloves of Glistening Runes
				i(127598),	-- Flame-Bathed Steel Girdle
				i(127595),	-- Dragon Slayer's Sabatons
			})),
		}),
		inst_tw(285, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 }},{	-- Utgarde Keep
			cr(23953, e(638, {	-- Prince Keleseth <The San'layn>
				i(188441),	-- Battlemap Hide Helm
				i(188430),	-- Dragon Stabler's Gauntlets
				i(188440),	-- Infantry Assault Blade
				i(188429),	-- Keleseth's Blade of Evocation
				i(188431),	-- Reinforced Velvet Helm
				i(188439),	-- Strategist's Belt
				i(188438),	-- Wand of the San'layn
			})),
			cr(24200, e(639, {	-- Skarvald the Constructor and Dalronn the Controller
				["crs"] = {
					24201,	-- Dalronn the Controller
				},
				["g"] = {
					i(188432),	-- Arm Blade of Augelmir
					i(188444),	-- Bindings of the Tunneler
					i(188433),	-- Chestplate of the Northern Lights
					i(188454),	-- Constructor's Worklight
					i(188442),	-- Dagger of Betrayal
					i(188445),	-- Dalronn's Jerkin
					i(188443),	-- Helmet of the Constructor
					i(188434),	-- Skarvald's Dragonskin Habergeon
				},
			})),
			cr(23954, e(640, {	-- Ingvar the Plunderer
				i(188451),	-- Annhylde's Ring
				i(188448),	-- Breeches of the Caller
				i(188450),	-- Drake-Mounted Crossbow
				i(188449),	-- Enraged Feral Staff
				i(188436),	-- Holistic Patchwork Breeches
				i(188435),	-- Ingvar's Monolithic Cleaver
				i(188437),	-- Overlaid Chain Spaulders
				i(188447),	-- Plunderer's Helmet
				i(188453),	-- Sharp-Barbed Leather Belt
				i(188452),	-- Staggering Legplates
				i(188446),	-- Unsmashable Heavy Band
			})),
		})),
		inst_tw(286, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_2, REMOVED_9_1_5 }},{	-- Utgarde Pinnacle
			cr(26668, e(641, {	-- Svala Sorrowgrave
				i(127458),	-- Ritualistic Arthame
				i(127459),	-- Brazier Igniter
				i(127482),	-- Silent Spectator Shoulderpads
				i(127502),	-- Ymijar Physician's Robe
				i(127484),	-- Cuffs of the Trussed Hall
				i(127460),	-- Svala's Bloodied Shackles
				i(127461),	-- Tear-Linked Gauntlets
				i(127483),	-- Sorrowgrave's Breeches
				i(127478),	-- Berserker's Sabatons
				i(127481),	-- Echoing Stompers
			})),
			cr(26687, e(642, {	-- Gortok Palehoof
				i(127463),	-- Trophy Gatherer
				i(127464),	-- Seal of Valgarde
				i(127488),	-- Ferocious Pauldrons of the Rhino
				i(127486),	-- Massive Spaulders of the Jormungar
				i(127462),	-- Shroud of Resurrection
				i(127465),	-- Reanimated Armor
				i(127487),	-- Ravenous Leggings of the Furbolg
				i(127480),	-- Tundra Wolf Boots
				i(127485),	-- Ring of the Frenzied Wolvar
			})),
			cr(26693, e(643, {	-- Skadi the Ruthless
				i(44151),	-- Blue Proto-Drake (MOUNT!)
				i(127491),	-- Staff of Wayward Principles
				i(127489),	-- Netherbreath Spellblade
				i(127466),	-- Amulet of Deflected Blows
				i(127467),	-- Silken Amice of the Ymijar
				i(127469),	-- Dark Rider's Tunic
				i(127503),	-- Bands of Fading Light
				i(127479),	-- Dragonflayer Seer's Bindings
				i(127490),	-- Skadi's Iron Belt
				i(127492),	-- Crenelation Leggings
				i(127468),	-- Harpooner's Striders
			})),
			cr(26861, e(644, {	-- King Ymiron
				i(127471),	-- Jeweled Coronation Sword
				i(127497),	-- Red Sword of Courage
				i(127475),	-- Ymiron's Blade
				i(127472),	-- Tor's Crest
				i(127473),	-- Crown of the Forgotten Kings
				i(127495),	-- Gold Amulet of Kings
				i(127477),	-- Ceremonial Pyre Mantle
				i(127496),	-- Mantle of Discarded Ways
				i(127494),	-- Ornamented Plate Regalia
				i(127500),	-- Gilt-Edged Leather Gauntlets
				i(127499),	-- Girdle of Bane
				i(127498),	-- Sovereign's Belt
				i(127476),	-- Ancient Royal Legguards
				i(127470),	-- Signet of Ranulf
				i(127493),	-- Meteorite Whetstone
				i(127474),	-- Vestige of Haldor
			})),
		})),
	})),
})));

-- Only instances still in rotation should be in this list.
-- This will prevent instances that don't have Timewalking currently from showing in the mini list.
AddInstancesToRotation(EXPANSION.WRATH, {
	-- #if AFTER 7.2.5.23910
	759,	-- Ulduar, not originally included with the rotation
	-- #endif

	-- Dungeons
	274,	-- Gundrak
	275,	-- Halls of Lightning
	281,	-- The Nexus

	-- #if AFTER 9.1.5
	272,	-- Azjol-Nerub
	280,	-- The Forge of Souls
	285,	-- Utgarde Keep
	-- #else
	271,	-- Ahn'kahet: The Old Kingdom
	278,	-- Pit of Saron
	286,	-- Utgarde Pinnacle
	-- #endif
});



-- Cataclysm Timewalking
root(ROOTS.Holidays, n(TIMEWALKING_HEADER, applyevent(EVENTS.TIMEWALKING_CATACLYSM_DUNGEON_EVENT, {
	expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_3 }},{
		n(GROUP_FINDER, {
			i(185053, {	-- Kodo Soul (SS!)
				["timeline"] = { ADDED_9_1_5 },
				["description"] = "Can drop from the last boss of any 'Cataclysm Timewalking' dungeon if you are aligned with the 'Night Fae Covenant'.",
			}),
			i(133378, {	-- Smoldering Timewarped Ember (A)
				["description"] = "Drops from the last boss of any 'Cataclysm Timewalking' dungeon.",
			}),
			i(133377, {	-- Smoldering Timewarped Ember (H)
				["description"] = "Drops from the last boss of any 'Cataclysm Timewalking' dungeon.",
			}),
		}),
		n(QUESTS, {
			-- TW Cata Quest under level 80
			q(86556, {	-- A Shattered Journey Through Time
				["provider"] = { "n", 101759 },	-- Kiatke
				["coords"] = {
					{ 76.6, 16.6, STORMWIND_CITY },
					{ 52.1, 41.6, ORGRIMMAR },
				},
				["timeline"] = { ADDED_11_0_7 },
				["isWeekly"] = true,
				["lockCriteria"] = { 1, "lvl", 80 },
				["g"] = {
					i(232877, {	-- Timely Goodie Bag
						["sym"] = {
							{ "select", "itemID", 229355},	-- Chromie's Premium Goodie Bag
							{ "pop" },
						},
					}),
				},
			}),
			q(57637, {	-- Disturbance Detected: Firelands
				["provider"] = { "n", 158276 },	-- Vormu
				["coords"] = {
					{ 74.8, 18.2, STORMWIND_CITY },
					{ 49.8, 37.6, ORGRIMMAR },
				},
				["isWeekly"] = true,
				["timeline"] = { ADDED_8_2_5 },
				["g"] = {
					i(172506),	-- Time-Locked Cinder (QI!)
					i(208095, sharedDataSelf({ ["timeline"] = { ADDED_10_1_5 } }, {	-- Cache of Timewarped Treasures (Cata)
						["description"] = "This bag contains an item from Firelands or an item from the WoW's 15th Birthday Event Bosses Cho'gall or Nefarian.\nThe droprate for the mounts seems rather high (5-10%).",
						["sym"] = {{"select","itemID",
							152978,		-- Infernal Pyreclaw (PET!)
							152966,		-- Tinytron (PET!)
							152969,		-- Twilight Clutch-Sister (PET!)
							152973,		-- Zephyrian Prince (PET!)
						}},
						["groups"] = {
						-- Can also contain any item from Firelands
							i(77067),	-- Blazing Drake (MOUNT!)
							i(78919),	-- Experiment 12-B (MOUNT!)
							i(71665),	-- Flametalon of Alysrazor (MOUNT!)
							i(77069),	-- Life-Binder's Handmaiden (MOUNT!)
							i(133543),	-- Infinite Timereaver (MOUNT!)
							i(69224),	-- Pureblood Fire Hawk (MOUNT!)

							-- Chogall
							i(171856),	-- Shadowflame Mantle
							i(171872),	-- Reinforced Sapphirium Shoulderguards
							i(171870),	-- Reinforced Sapphirium Pauldrons
							i(171873),	-- Reinforced Sapphirium Mantle
							i(171857),	-- Mercurial Shoulderwraps
							i(171858),	-- Mercurial Mantle
							i(171866),	-- Spaulders of the Raging Elements
							i(171865),	-- Shoulderwraps of the Raging Elements
							i(171864),	-- Mantle of the Raging Elements
							i(171863),	-- Lightning-Charged Spaulders
							i(171868),	-- Earthen Shoulderguards
							i(171867),	-- Earthen Pauldrons
							i(171862),	-- Wind Dancer's Spaulders
							i(171861),	-- Stormrider's Spaulders
							i(171860),	-- Stormrider's Shoulderwraps
							i(171859),	-- Stormrider's Mantle
							i(171871),	-- Magma Plated Shoulderguards
							i(171869),	-- Magma Plated Pauldrons
							i(171855),	-- Firelord's Mantle
							i(171842),	-- Shalug'doom, the Axe of Unmaking
							i(171847),	-- "Uhn'agh Fash, the Darkest Betrayal"
							i(171854),	-- Twilight's Hammer
							i(171845),	-- Helm of Maddening Whispers
							i(171846),	-- Membrane of C'Thun
							i(171844),	-- Battleplate of the Apocalypse
							i(171849),	-- Shackles of the End of Days
							i(171850),	-- Hands of the Twilight Council
							i(171843),	-- Coil of Ten-Thousand Screams
							i(171851),	-- Kilt of the Forgotten Battle
							i(171848),	-- Treads of Hideous Transformation
							i(171853),	-- Signet of the Fifth Circle
							i(171852),	-- Fall of Mortality
							-- Nefarian
							i(171875),	-- Shadowflame Hood
							i(171889),	-- Reinforced Sapphirium Helmet
							i(171892),	-- Reinforced Sapphirium Headguard
							i(171891),	-- Reinforced Sapphirium Faceguard
							i(171876),	-- Mercurial Hood
							i(171877),	-- Mercurial Cowl
							i(171882),	-- Lightning-Charged Headguard
							i(171885),	-- Helmet of the Raging Elements
							i(171884),	-- Headpiece of the Raging Elements
							i(171883),	-- Faceguard of the Raging Elements
							i(171886),	-- Earthen Helemt
							i(171887),	-- Earthen Faceguard
							i(171881),	-- Wind Dancer's Helmet
							i(171878),	-- Stormrider's Helm
							i(171880),	-- Stormrider's Headpiece
							i(171879),	-- Stormrider's Cover
							i(171890),	-- Magma Plated Faceguard
							i(171888),	-- Magma Plated Helmet
							i(171874),	-- Firelord's Hood
							i(171639),	-- Reclaimed Ashkandi, Greatsword of the Brotherhood
							i(171638),	-- Andoros, Fist of the Dragon King
							i(171633),	-- Crul'korak, the Lightning's Arc
							i(171634),	-- Akmin-Kurai, Dominion's Shield
							i(171632),	-- Rage of Ages
							i(171629),	-- Mantle of Nefarius
							i(171630),	-- Pauldrons of the Apocalypse
							i(171627),	-- Spaulders of the Scarred Lady
							i(171637),	-- Shadow of Dread
							i(171636),	-- Shadowblaze Robes
							i(171635),	-- Belt of the Blackhand
							i(171628),	-- Belt of the Nightmare
							i(171631),	-- Prestor's Talisman of Machination
						},
					})),
				},
			}),
			q(40787, {	-- The Smoldering Ember (A)
				["provider"] = { "i", 133378 },	-- Smoldering Timewarped Ember
				["isWeekly"] = true,
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					currency(TIMEWARPED_BADGE),
				},
			}),
			q(40786, {	-- The Smoldering Ember (H)
				["provider"] = { "i", 133377 },	-- Smoldering Timewarped Ember
				["isWeekly"] = true,
				["races"] = HORDE_ONLY,
				["groups"] = {
					currency(TIMEWARPED_BADGE),
				},
			}),
		}),
		n(VENDORS, {
			n(101759, {	-- Kiatke <Timewalking Vendor>
				["maps"] = {
					STORMWIND_CITY,
					ORGRIMMAR,
				},
				["g"] = {
					n(ARMOR, {
						filter(CLOTH, {
							i(133536, {	-- Bracers of the Black Dream
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(133526, {	-- Lightwarper Vestments
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(133532, {	-- Vestal's Irrepressible Girdle
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
						}),
						filter(FINGER_F, {
							i(133521, {	-- Band of Reconstruction
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(133523, {	-- Emergency Descent Loop
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(133522, {	-- Ring of Torn Flesh
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(133520, {	-- Seal of the Grand Architect
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(133524, {	-- Signet of the Resolute
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
						}),
						filter(LEATHER, {
							i(133529, {	-- Belt of Hidden Keys
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(133535, {	-- Bracers of Manifold Pockets
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(133528, {	-- Decaying Herbalist's Robes
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
						}),
						filter(MAIL, {
							i(133530, {	-- Cord of Dragon Sinew
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(133534, {	-- Dragonbelly Bracers
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(133527, {	-- Ghostworld Chestguard
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
						}),
						filter(PLATE, {
							i(133531, {	-- Blinding Girdle of Truth
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(133525, {	-- Bones of the Damned
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(133533, {	-- Flashing Bracers of Warmth
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
						}),
						filter(TRINKET_F, {
							i(133538, {	-- Bottled Wishes
								["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
							}),
							i(133541, {	-- Fire of the Deep
								["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
							}),
							i(133537, {	-- Kiroptric Sigil
								["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
							}),
							i(133539, {	-- Reflection of the Light
								["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
							}),
							i(133540, {	-- Rotting Skull
								["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
							}),
						}),
					}),
					filter(COSMETIC, sharedDataSelf({ ["timeline"] = { ADDED_11_0_7 } }, {
						iensemble(234859, {	-- Ensemble: Twilight Acolyte's Regalia
							["cost"] = {{ "c", TIMEWARPED_BADGE, 2500 }},
						}),
						iensemble(234857, {	-- Ensemble: Twilight Hunter's Guise
							["cost"] = {{ "c", TIMEWARPED_BADGE, 2500 }},
						}),
						iensemble(234856, {	-- Ensemble: Twilight Zealot's Battleplate
							["cost"] = {{ "c", TIMEWARPED_BADGE, 2500 }},
						}),
						iensemble(234855, {	-- Ensemble: Vestments of the Twisted Grove
							["cost"] = {{ "c", TIMEWARPED_BADGE, 2500 }},
						}),
						i(234860, {	-- Explorer's League Deepholm Expedition Tabard
							["races"] = ALLIANCE_ONLY,
							["cost"] = {{ "c", TIMEWARPED_BADGE, 500 }},
						}),
						i(234861, {	-- Reliquary Tabard
							["races"] = HORDE_ONLY,
							["cost"] = {{ "c", TIMEWARPED_BADGE, 500 }},
						}),
					})),
					filter(MISC, {
						i(67414, {	-- Bag of Shiny Things
							["modID"] = 0,
							["cost"] = {{ "c", TIMEWARPED_BADGE, 150 }},
							["g"] = {
								i(44983),	-- Strand Crawler (PET!)
								i(33820),	-- Weather-Beaten Fishing Hat
								i(45991),	-- Bone Fishing Pole
								i(45992),	-- Jeweled Fishing Pole
								i(67410),	-- Very Unlucky Rock
								i(67388),	-- String of Alligator Teeth
							},
						}),
						i(133150, {	-- Commendation of the Dragonmaw Clan
							["races"] = HORDE_ONLY,
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(133159, {	-- Commendation of the Earthen Ring
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(133152, {	-- Commendation of the Guardians of Hyjal
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(133154, {	-- Commendation of the Ramkahen
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(133151, {	-- Commendation of the Wildhammer Clan
							["races"] = ALLIANCE_ONLY,
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(133160, {	-- Commendation of Therazanae
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
					}),
					filter(MOUNTS, sharedDataSelf({ ["timeline"] = { ADDED_11_0_7 } }, {
						i(234730, {	-- Broodling of Sinestra (MOUNT!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 5000 }},
						}),
					})),
					filter(RECIPES, {
						i(13497, {	-- Recipe: Greater Arcane Protection Potion (RECIPE!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
							["timeline"] = { ADDED_9_1_0 },
						}),
						i(5489, {	-- Recipe: Lean Venison (RECIPE!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
							["timeline"] = { ADDED_9_1_0 },
						}),
						i(3734, {	-- Recipe: Big Bear Steak (RECIPE!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
							["timeline"] = { ADDED_9_1_0 },
						}),
						i(12227, {	-- Recipe: Lean Wolf Steak (RECIPE!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
							["timeline"] = { ADDED_9_1_0 },
						}),
						i(13308, {	-- Schematic: Ice Deflector (RECIPE!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
							["timeline"] = { ADDED_9_1_0 },
						}),
						i(14493, {	-- Pattern: Robe of Winter Night
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
							["timeline"] = { ADDED_9_1_0 },
						}),
						i(15764, {	-- Pattern: Stormshroud Shoulders (RECIPE!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
							["timeline"] = { ADDED_9_1_0 },
						}),
						i(21548, {	-- Pattern: Stormshroud Gloves (RECIPE!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
							["timeline"] = { ADDED_9_1_0 },
						}),
						i(15753, {	-- Pattern: Stormshroud Armor (RECIPE!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
							["timeline"] = { ADDED_9_1_0 },
						}),
					}),
					filter(TOYS, {
						i(133511, {	-- Gurboggle's Gleaming Bauble (TOY!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
						}),
						i(133542, {	-- Tosselwrench's Mega-Accurate Simulation Viewfinder (TOY!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 3000 }},
						}),
					}),
				},
			}),
		}),
		inst_tw(78, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_5 }},{	-- Firelands
			["isRaid"] = true,
			["g"] = {
				n(COMMON_BOSS_DROPS, {
					["crs"] = {
						53691,	-- Shannox
						52498,	-- Beth'tilac <The Red Widow>
						52530,	-- Alysrazor
						52558,	-- Lord Rhyolith
						53494,	-- Baleroc <The Gatekeeper>
						52571,	-- Majordomo Staghelm <Archdruid of the Flame>
						52409,	-- Ragnaros
					},
					["g"] = {
						i(173277),	-- Avool's Incendiary Shanker
						i(173276),	-- Entrail Disgorger
						i(173274),	-- Eye of Purification
						i(173275),	-- Firethorn Mindslicer
						i(173278),	-- Shatterskull Bonecrusher
						i(173273),	-- Smoldering Censer of Purity
						i(173272),	-- Zoid's Firelit Greatsword
						ig(69237),	-- Living Ember
					},
				}),
				e(192, {	-- Beth'tilac
					["creatureID"] = 52498,
					["g"] = {
						i(152976, {	-- Cinderweb Recluse (PET!)
							["timeline"] = { ADDED_7_3_0 },
						}),
						i(171701),	-- Funeral Pyre
						i(171664),	-- Mandible of Beth'tilac
						i(171700),	-- Ward of the Red Widow
						i(171702),	-- Cowl of the Clicking Menace
						i(171697),	-- Flickering Shoulders
						i(171705),	-- Spaulders of Manifold Eyes
						i(171658),	-- Carapace of Imbibed Flame
						i(171703),	-- Robes of Smoldering Devastation
						i(171706),	-- Cindersilk Gloves
						i(171698),	-- Cinderweb Leggings
						i(171704),	-- Thoracic Flame Kilt
						i(171696),	-- Arachnaflame Treads
						i(171699),	-- Widow's Kiss
						i(171643),	-- Spidersilk Spindle
					},
				}),
				e(193, {	-- Lord Rhyolith
					["creatureID"] = 52558,
					["g"] = {
						i(171677),	-- Volcanospike
						i(171671),	-- Arbalest of Erupting Fury
						i(171681),	-- Flickering Cowl
						i(171674),	-- Hood of Rampant Disdain
						i(171682),	-- Heartstone of Rhyolith
						i(171672),	-- Dreadfire Drape
						i(171676),	-- Flaming Core Chestguard
						i(171680),	-- Incendic Chestguard
						i(171675),	-- Earthcrack Bracers
						i(171679),	-- Lava Line Wristbands
						i(171673),	-- Fireskin Gauntlets
						i(171678),	-- Grips of the Raging Giant
						i(171656),	-- Cracked Obsidian Stompers
					},
				}),
				e(194, {	-- Alysrazor
					["creatureID"] = 52530,
					["g"] = {
						i(71665),	-- Flametalon of Alysrazor (MOUNT!)
						i(171796, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Robes of the Cleansing Flame
						i(171801, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Vestment of the Cleansing Flame
						i(171777, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Flamewakers Tunic
						i(171813, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Erupting Volcanic Hauberk
						i(171806, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Balespider's Robes
						i(171811, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Firehawk Robes
						i(171818, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Erupting Volcanic Tunic
						i(171823, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Erupting Volcanic Cuirass
						i(171746, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Obsidian Arborweave Rainment
						i(171751, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Obsidian Arborweave Tunic
						i(171756, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Obsidian Arborweave vestment
						i(171768, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Dark Phoenix Tunic
						i(171737, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Elementium Deathplate Chestguard
						i(171738, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Elementium Deathplate Breastplate
						i(171788, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Immolation Breastplate
						i(171783, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Battleplate of the Molten Giant
						i(171778, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Immolation Battleplate
						i(171767, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Immolation Chestguard
						i(171762, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Chestguard of the Molten Giant
						i(171649),	-- Alysra's Razor
						i(171650),	-- Greathelm of the Voracious Maw
						i(171665),	-- Craterflame Spaulders
						i(171653),	-- Spaulders of Recurring Flame
						i(171670),	-- Wings of Flame
						i(171668),	-- Clutch of the Firemother
						i(171651),	-- Flickering Wristbands
						i(171666),	-- Clawshaper Gauntlets
						i(171655),	-- Lavaworm Legplates
						i(171669),	-- Leggings of Billowing Fire
						i(171652),	-- Moltenfeather Leggings
						i(171667),	-- Phoenix-Down Treads
						i(171654),	-- Alysrazor's Band
						i(171645),	-- Eye of Blazing Power
						i(199099, {	-- Glittering Phoenix Ember
							["description"] = "Guaranteed drop.",
							["timeline"] = { ADDED_10_0_7 },
						}),
					},
				}),
				e(195, {	-- Shannox
					["creatureID"] = 53691,
					["g"] = {
						i(152975),	-- Blazehound (PET!)
						i(171734, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Elementium Deathplate Legguards
						i(171741, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Elementium Deathplate Greaves
						i(171759, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Legguards of the Molten Giant
						i(171810, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- FireHawk Leggings
						i(171805, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Balespiders Leggings
						i(171800, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Leggings of the Cleansing Flame
						i(171795, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Legwraps of the Cleansing Flame
						i(171781, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Immolation Legplates
						i(171826, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Erupting Volcanic Legguards
						i(171821, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Erupting Volcanic Legwraps
						i(171816, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Erupting Volcanic Kilt
						i(171775, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Flamewakers Legguards
						i(171745, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Obsidian Arborweave Legguards
						i(171750, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Obsidian Arborweave legwraps
						i(171755, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Obsidian Arborweave Leggings
						i(171771, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Dark Phoenix Legguards
						i(171764, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Immolation Legguards
						i(171786, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Legplates of the Molten Giant
						i(171791, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Immolation Greaves
						i(171684),	-- Skullstealer Greataxe
						i(171683),	-- Feeding Frenzy
						i(171689),	-- Goblet of Anger
						i(171685),	-- Scalp of the Bandit Prince
						i(171686),	-- Necklace of Fetishes
						i(171692),	-- Flickering Shoulderpads
						i(171693),	-- Bracers of the Dread Hunter
						i(171687),	-- Gloves of Dissolving Smoke
						i(171688),	-- Uncrushable Belt of Fury
						i(171695),	-- Legplates of Absolute Control
						i(171657),	-- Legplates of Frenzied Devotion
						i(171690),	-- Coalwalker Sandals
						i(171694),	-- Treads of Implicit Obedience
						i(171691),	-- Crystal Prison Band
					},
				}),
				e(196, {	-- Baleroc, the Gatekeeper
					["creatureID"] = 53494,
					["g"] = {
						i(152977),	-- Surger (PET!)
						i(171793, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Handwraps of the Cleansing Flame
						i(171798, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Gloves of the Cleansing Flame
						i(171803, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Balespiders Handwraps
						i(171808, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Firehawk Gloves
						i(171735, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Elementium Deathplate Handguards
						i(171739, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Elementium Deathplate Gauntlets
						i(171766, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Immolation Handguards
						i(171779, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Immolation Gauntlets
						i(171784, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Gauntlets of the Molten Giant
						i(171760, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Handguards of the Molten Giant
						i(171789, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Immolation Gloves
						i(171773, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Flamewakers Gloves
						i(171814, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Erupting Volcanic Gloves
						i(171819, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Erupting Volcanic Handwraps
						i(171824, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Erupting Volcanic Grips
						i(171743, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Obsidian Arborweave Grips
						i(171748, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Obsidian Arborweave Handwraps
						i(171753, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Obsidian Arborweave Gloves
						i(171769, { ["timeline"] = { CREATED_8_2_5, ADDED_10_2_5 }}),	-- Dark Phoenix Gloves
						i(171707),	-- Gatecrasher
						i(171659),	-- Shard of Torment
						i(171711),	-- Molten Scream
						i(171714),	-- Casque of Flame
						i(171660),	-- Helm of Blazing Glory
						i(171715),	-- Mantle of Closed Doors
						i(171717),	-- Shoulderpads of the Forgotten Gate
						i(171709),	-- Breastplate of the Incendiary Soul
						i(171712),	-- Gatekeeper's Embrace
						i(171713),	-- Glowing Wing Bracers
						i(171661),	-- Flickering Handguards
						i(171710),	-- Decimation Treads
						i(171644),	-- Necromantic Focus
					},
				}),
				e(197, {	-- Majordomo Staghelm
					["creatureID"] = 52571,
					["g"] = {
						i(152978),	-- Infernal Pyreclaw (PET!)
						i(122304),	-- Fandral's Seed Pouch (TOY!)
						i(171807),	-- Balespider's Mantle
						i(171772),	-- Dark Phoenix Spaulders
						i(171742),	-- Elementium Deathplate Pauldrons
						i(171733),	-- Elementium Deathplate Shoulderguards
						i(171822),	-- Erupting Volcanic Mantle
						i(171817),	-- Erupting Volcanic Shoulderwraps
						i(171827),	-- Erupting Volcanic Spaulders
						i(171776),	-- Flamewaker's Spaulders
						i(171812),	-- Firehawk Mantle
						i(171855),	-- Firelord's Mantle
						i(171792),	-- Immolation Mantle
						i(171782),	-- Immolation Pauldrons
						i(171763),	-- Immolation Shoulderguards
						i(171797),	-- Mantle of the Cleansing Flame
						i(171752),	-- Obsidian Arborweave Mantle
						i(171757),	-- Obsidian Arborweave Shoulderwraps
						i(171747),	-- Obsidian Arborweave Spaulders
						i(171787),	-- Pauldrons of the Molten Giant
						i(171758),	-- Shoulderguards of the Molten Giant
						i(171802),	-- Shoulderwraps of the Cleansing Flame
						i(171869),	-- Magma Plated Pauldrons
						i(171871),	-- Magma Plated Shoulderguards
						i(171648),	-- Fandral's Flamescythe
						i(171719),	-- Stinger of the Flaming Scorpion
						i(171720),	-- Flowform Choker
						i(171716),	-- Breastplate of Shifting Visions
						i(171662),	-- Bracers of the Fiery Path
						i(171722),	-- Wristwraps of Arrogant Doom
						i(171718),	-- Grips of Unerring Precision
						i(171721),	-- Firecat Leggings
						i(171708),	-- Sandals of Leaping Coals
						i(171723),	-- Treads of the Penitent Man
						i(171641),	-- Jaws of Defeat
						i(171642),	-- The Hungerer
					},
				}),
				e(198, {	-- Ragnaros
					["creatureID"] = 52409,
					["g"] = {
						i(69224),	-- Pureblood Fire Hawk (MOUNT!)
						i(171804),	-- Balespider's Hood
						i(171794),	-- Cowl of the Cleansing Flame
						i(171770),	-- Dark Phoenix Helmet
						i(171736),	-- Elementium Deathplate Faceguard
						i(171740),	-- Elementium Deathplate Helmet
						i(171820),	-- Erupting Volcanic Faceguard
						i(171815),	-- Erupting Volcanic Headpiece
						i(171825),	-- Erupting Volcanic Helmet
						i(171761),	-- Faceguard of the Molten Giant
						i(171809),	-- Firehawk Hood
						i(171774),	-- Flamewaker's Headguard
						i(171785),	-- Helmet of the Molten Giant
						i(171799),	-- Hood of the Cleansing Flame
						i(171765),	-- Immolation Faceguard
						i(171790),	-- Immolation Headguard
						i(171780),	-- Immolation Helmet
						i(171754),	-- Obsidian Arborweave Cover
						i(171744),	-- Obsidian Arborweave Headpiece
						i(171749),	-- Obsidian Arborweave Helm
						-- This version requires confirmation, only the wierd one tagged as heroic timewalking might have made it in.
						i(171732, { ["timeline"] = { CREATED_8_2_5}}),	-- Sho'ravon, Greatstaff of Annihilation
						i(171731),	-- Sho'ravon, Greatstaff of Annihilation (Heroic, confirmed drop from 15th Anniversary event)
						i(171724),	-- Sulfuras, the Extinguished Hand
						i(171727),	-- Ko'gun, Hammer of the Firelord
						i(171725),	-- Arathar, the Eye of Flame
						i(171728),	-- Crown of Flame
						i(171726),	-- Choker of the Vanquished Lord
						i(171663),	-- Pauldrons of Roaring Flame
						i(171730),	-- Fingers of Incineration
						i(171729),	-- Majordomo's Chain of Office
						i(171646),	-- Matrix Restabilizer
						i(171640),	-- Variable Pulse Lightning Capacitor
						i(171647),	-- Vessel of Acceleration
					},
				}),
			},
		})),
		inst_tw(66, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 }},{	-- Blackrock Caverns
			cr(39665, e(105, {	-- Rom'ogg Boncrusher
				i(188520),	-- Groundrumble Boots
				i(188506),	-- Inquisition Robes
				i(188508),	-- Manacles of Pain
				i(188509),	-- Shield of the Iron Maiden
				i(188505),	-- Skullcracker Ring
				i(188507),	-- Torturer's Mercy
			})),
			cr(39679, e(106, {	-- Corla, Herald of Twilight
				i(188492),	-- Armbands of Change
				i(188491),	-- Corla's Baton
				i(188490),	-- Grace of the Herald
				i(188493),	-- Renouncer's Cowl
				i(188494),	-- Signet of Transformation
			})),
			cr(39698, e(107, {	-- Karsh Steelbender
				i(188496),	-- Bracers of Cooled Anger
				i(188499),	-- Burned Gatherings
				i(188498),	-- Heat Wave Leggings
				i(188521),	-- Heat-Shielded Tunic
				i(188495),	-- Quicksilver Amulet
				i(188497),	-- Steelbender's Masterpiece
			})),
			cr(39700, e(108, {	-- Beauty
				i(188504),	-- Beauty's Chew Toy
				i(188501),	-- Beauty's Favorite Bone
				i(188503),	-- Beauty's Plate
				i(188500),	-- Beauty's Silken Ribbon
				i(188519),	-- Gently Gnawed Hauberk
				i(188502),	-- Kibble
			})),
			cr(39705, e(109, {	-- Ascendent Lord Obsidius
				i(188511),	-- Amber Messenger
				i(188513),	-- Carrier Wave Pendant
				i(188517),	-- Clutches of Dying Light
				i(188516),	-- Crepuscular Shield
				i(188518),	-- Kyrstel Mantle
				i(188512),	-- Raz's Pauldrons
				i(188510),	-- Twitching Shadows
				i(188515),	-- Willowy Crown
				i(188514),	-- Witching Hourglass
			})),
		})),
		inst_tw(184, {	-- End Time
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					54431,	-- Echo of Baine
					54445,	-- Echo of Jaina
					54123,	-- Echo of Sylvannas
					54544,	-- Echo of Tyrande
				},
				["g"] = {
					i(133391),	-- Dragonshrine Scepter
					i(133415),	-- Crescent Wand
					i(133393),	-- Echoing Headguard
					i(133422),	-- Breastplate of Despair
					i(133388),	-- Breastplate of Sorrow
					i(133424),	-- Bindings of the End Time
					i(133414),	-- Archivist's Gloves
					i(133387),	-- Gauntlets of Temporal Interference
					i(133392),	-- Gloves of the Hollow
					i(133416),	-- Time Strand Gauntlets
					i(133385),	-- Cord of Lost Hope
					i(133390),	-- Girdle of Lost Heroes
					i(133428),	-- Time-Dessicated Girdle
					i(133394),	-- Waistguard of Lost Time
					i(133389),	-- Time Traveler's Leggings
					i(133418),	-- Boots of the Forked Road
					i(133386),	-- Dead End Boots
				},
			}),
			cr(54431, e(340, {	-- Echo of Baine
				i(133401),	-- Axe of The Tauren Chieftain
				i(133402),	-- Bloodhoof Legguards
			})),
			cr(54445, e(285, {	-- Echo of Jaina
				i(133395),	-- Jaina's Staff
				i(133396),	-- Ward of Incantations
			})),
			cr(54123, e(323, {	-- Echo of Sylvanas
				i(133397),	-- Windrunner's Bow
				i(133398),	-- Cloak of the Banshee Queen
			})),
			cr(54544, e(283, {	-- Echo of Tyrande
				i(133399),	-- Crescent Moon
				i(133400),	-- Whisperwind Robes
			})),
			cr(54432, e(289, {	-- Murozond
				i(133409),	-- Jagged Edge of Time
				i(133417),	-- Bronze Blaster
				i(133421),	-- Cowl of Destiny
				i(133407),	-- Crown of Epochs
				i(133410),	-- Timeway Headgear
				i(133412),	-- Mantle of Time
				i(133408),	-- Temporal Pauldrons
				i(133405),	-- Breastplate of Tarnished Bronze
				i(133413),	-- Robes of Fate
				i(133411),	-- Time Twisted Tunic
				i(133419),	-- Time Twister's Gauntlets
				i(133403),	-- Distortion Greaves
				i(133404),	-- Time Altered Legguards
				i(133406),	-- Chrono Boots
				i(133420),	-- Arrow of Time
			})),
		}),
		inst_tw(71, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_3, REMOVED_9_1_5 }},{	-- Grim Batol
			cr(39625, e(131, {	-- General Umbriss
				i(133283),	-- Modgud's Blade
				i(133285),	-- Wildhammer Riding Helm
				i(133284),	-- Cursed Skardyn Vest
				i(133306),	-- Bracers of Umbral Mending
				i(133307),	-- Abandoned Dark Iron Ring
				i(133286),	-- Umbriss Band
				i(133282),	-- Skardyn's Grace
			})),
			cr(40177, e(132, {	-- Forgemaster Throngus
				i(133288),	-- Wand of Untainted Power
				i(133353),	-- Troggbone Cinch
				i(133289),	-- Belt of the Forgemaster
				i(133308),	-- Curse-Tainted Leggings
				i(133290),	-- Dark Iron Chain Boots
				i(133287),	-- Ring of Dun Algaz
				i(133304),	-- Gale of Shadows
				i(133291),	-- Throngus's Finger
			})),
			cr(40319, e(133, {	-- Drahga Shadowburner
				i(133296),	-- Windwalker Blade
				i(133294),	-- Earthshape Pauldrons
				i(133292),	-- Azureborne Cloak
				i(133363),	-- Troggstitched Drape
				i(133295),	-- Crimsonborne Bracers
				i(133354),	-- Glimmerthread Pantalons
				i(133293),	-- Red Scale Boots
			})),
			cr(40484, e(134, {	-- Erudax
				i(133303),	-- Staff of Siphoned Essences
				i(133298),	-- Wild Hammer
				i(133301),	-- Mace of Transformed Bone
				i(133302),	-- Crown of Enfeebled Bodies
				i(133374),	-- Courier's Dragonriding Spaulders
				i(133309),	-- Shroud of Dark Memories
				i(133297),	-- Vest of Misshapen Hides
				i(133299),	-- Circle of Bone
				i(133305),	-- Corrupted Egg Shell
				i(133300),	-- Mark of Khardros
			})),
		})),
		inst_tw(69, {	-- Lost City of the Tol'vir
			e(117, {	-- General Husam
				["crs"] = { 44577 },	-- General Husam
				["g"] = {
					i(133257),	-- Saliza's Spear
					i(133373),	-- Necklace of Rumbling Earth
					i(133254),	-- Kaleki Cloak
					i(133258),	-- Ionic Gloves
					i(133256),	-- Greaves of Wu the Elder
					i(133255),	-- Spirit Creeper Ring
				},
			}),
			e(118, {	-- Lockmaw
				["crs"] = {
					43614,	-- Lockmaw
					49045,	-- Augh
				},
				["g"] = {
					i(133261),	-- Balkar's Waders
					i(133259),	-- Resonant Kris
					i(133260),	-- Tauntka's Necklace
					i(133280),	-- Oasis Bracers
					i(133263),	-- Ring of the Darkest Day
					i(133281),	-- Impetuous Query
					i(133266),	-- Veneficial Band
					-- Swapped/Confirmed Drops
					i(133267),	-- Sand Dune Belt (8.3.7, confirmed dropping here too on 11.08.2020)
					-- i(133262),	-- Greaves of Wu the Younger (moved to Barim)
					-- i(133278),	-- Evelyn's Belt (moved to Siamat)
				},
			}),
			e(119, {	-- High Prophet Barim
				["crs"] = { 43612 },	-- High Prophet Barim
				["g"] = {
					i(133265),	-- Barin's Main Gauche
					i(133277),	-- Zora's Ward
					i(133264),	-- Sand Silk Wristband
					i(133276),	-- Leggings of the Path
					i(133279),	-- Mirage Ring
					i(133268),	-- Heart of Solace
					-- Swapped/Confirmed Drops
					i(133261),	-- Balkar's Waders	-- 10.0.7, confirmed dropping here too on 04.04.2023
					i(133259),	-- Resonant Kris	-- 8.3.7, confirmed dropping here too on 18.08.2020
					i(133278),	-- Evelyn's Belt	-- 9.1, confirmed dropping here too on 27.09.2021
					i(133262),	-- Greaves of Wu the Younger	-- 9.1, confirmed dropping here too on 27.09.2021
					--	i(133267),	-- Sand Dune Belt (movd to Lockmaw))
					--	i(133266),	-- Veneficial Band (moved to Lockmaw)
				},
			}),
			e(122, {	-- Siamat
				["crs"] = { 44819 },	-- Siamat
				["g"] = {
					i(133271),	-- Hammer of Sparks
					i(133376),	-- Hammer of Swirling Winds
					i(133274),	-- Mantle of Master Cho
					i(133272),	-- Geordan's Cloak
					i(133278),	-- Evelyn's Belt (erroneously listed on Lockmaw in DJ -- drops from this boss)
					i(133270),	-- Crafty's Gaiters
					i(133273),	-- Ring of Three Lights
					i(133275),	-- Sorrowsong
					i(133269),	-- Tia's Grace
				},
			}),
		}),
		inst_tw(67, {	-- The Stonecore
			cr(43438, e(110, {	-- Corborus
				i(133375),	-- Crackling Geode Mace
				i(133207),	-- Fist of Pained Senses
				i(133364),	-- Crystal-Chained Lodestone
				i(133208),	-- Cinnabar Shoulders
				i(133356),	-- Crystalgrinder Bracers
				i(133209),	-- Dolomite Adorned Gloves
				i(133210),	-- Phosphorescent Ring
				i(133206),	-- Key to the Endless Chamber
			})),
			cr(43214, e(111, {	-- Slabhide
				i(63043),	-- Vitreous Stone Drake (MOUNT!)
				i(133213),	-- Quicksilver Blade
				i(133230),	-- Wand of Dark Worship
				i(133365),	-- Crystalpowder Amice
				i(133231),	-- Skin of Stone
				i(133212),	-- Deep Delving Gloves
				i(133214),	-- Hematite Plate Gloves
				i(133357),	-- Earth-Strength Legguards
				i(133211),	-- Rose Quartz Band
			})),
			cr(42188, e(112, {	-- Ozruk
				i(133219),	-- Sword of the Bottomless Pit
				i(133229),	-- Heavy Geode Mace
				i(133366),	-- Fractured Earthstone Necklace
				i(133215),	-- Pendant of the Lightless Grotto
				i(133217),	-- Elementium Scale Bracers
				i(133218),	-- Belt of the Ringworm
				i(133227),	-- Tear of Blood
				i(133216),	-- Tendrils of Burrowing Dark
			})),
			cr(42333, e(113, {	-- High Priestess Azil
				i(133220),	-- Darkling Staff
				i(133223),	-- Elementium Fang
				i(133226),	-- Prophet's Scepter
				i(133228),	-- Cowl of the Unseen World
				i(133221),	-- Helm of Numberless Shadows
				i(133225),	-- Slippers of the Twilight Prophet
				i(133224),	-- Leaden Despair
				i(133222),	-- Magnetite Mirror
			})),
		}),
		inst_tw(68, {	-- The Vortex Pinnacle
			cr(43878, e(114, {	-- Grand Vizier Ertan
				i(133233),	-- Biting Wind
				i(133234),	-- Headcover of Fog
				i(133361),	-- Choker of Stolen Thunder
				i(133369),	-- Ionized Choker
				i(133236),	-- Red Sky Pendant
				i(133235),	-- Fallen Snow Shoulderguards
				i(133232),	-- Stratosphere Belt
				i(133252),	-- Rainsong
			})),
			cr(43873, e(115, {	-- Altairus
				i(63040),	-- Drake of the North Wind (MOUNT!)
				i(133371),	-- Thundercleaver Axe
				i(133240),	-- Axe of the Eclipse
				i(133251),	-- Thundercall
				i(133238),	-- Amulet of Tender Breath
				i(133237),	-- Mantle of Bestilled Winds
				i(133362),	-- Billowing Skydrape
				i(133239),	-- Hail-Strung Belt
				i(133253),	-- Darksky Treads
				i(133370),	-- Sandals of the West Wind
				i(133241),	-- Skyshard Ring
			})),
			cr(43875, e(116, {	-- Asaad, Caliph of Zephyrs
				i(133242),	-- Lightningflash	-- Note!! Possible removal in 8.0 need confirmed reports
				i(133249),	-- Lunar Halo
				i(133245),	-- Billowing Cape
				i(133247),	-- Shadow of Perfect Bliss
				i(133244),	-- Gloves of Haze
				i(133250),	-- Leggings of Iridescent Clouds
				i(133243),	-- Legguards of Winnowing Wind
				i(133372),	-- Ion-Cage Signet
				i(133248),	-- Ring of Frozen Rain
				i(133246),	-- Heart of Thunder
			})),
		}),
		inst_tw(65, {	-- Throne of the Tides
			cr(40586, e(101, {	-- Lady Naz'jar
				i(133179),	-- Lightning Whelk Axe
				i(133367),	-- Barnacled Shell Buckler
				i(133182),	-- Aurelian Mitre
				i(133358),	-- Old One Eye's Cowl
				i(133359),	-- Ironshell Pendant
				i(133180),	-- Periwinkle Cloak
				i(133181),	-- Wrasse Handwraps
				i(133205),	-- Alpheus Legguards
				i(133183),	-- Entwined Nereis
			})),
			cr(40765, e(102, {	-- Commander Ulthok
				i(133184),	-- Cerith Spire Staff
				i(133203),	-- Barnacle Pendant
				i(133186),	-- Caridean Epaulets
				i(133185),	-- Harp Shell Pauldrons
				i(133188),	-- Eagle Ray Cloak
				i(133187),	-- Chromis Chestpiece
				i(133204),	-- Ring of the Great Whale
			})),
			cr(40788, e(103, {	-- Mindbender Ghur'sha
				i(133200),	-- Bioluminescent Lamp
				i(133191),	-- Anomuran Helm
				i(133360),	-- Stonespeaker's Spare Cinch
				i(133190),	-- Decapod Slippers
				i(133189),	-- Anthia's Ring
				i(133192),	-- Porcelain Crab
			})),
			cr(44566, e(104, {	-- Ozumat
				i(133196),	-- Whitefin Axe
				i(133199),	-- Pipefish Cord
				i(133202),	-- Abalone Plate Armor
				i(133193),	-- Wentletrap Vest
				i(133198),	-- Mnemiopsis Gloves
				i(133368),	-- Salty Shell-Studded Girdle
				i(133195),	-- Triton Legplates
				i(133194),	-- Nautilus Ring
				i(133197),	-- Might of the Ocean
				i(133201),	-- Sea Star
			})),
		}),
	})),
})));

-- Only instances still in rotation should be in this list.
-- This will prevent instances that don't have Timewalking currently from showing in the mini list.
AddInstancesToRotation(EXPANSION.CATA, {
	-- #if AFTER 8.2.5.31958
	78,	-- Firelands not originally included with the rotation
	-- #endif

	-- Dungeons
	184,	-- End Time
	 69,	-- Lost City of the Tol'vir
	 67,	-- The Stonecore
	 68,	-- The Vortex Pinnacle
	 65,	-- Throne of the Tides

	-- #if AFTER 9.1.5
	 66,	-- Blackrock Caverns
	-- #else
	 71,	-- Grim Batol
	-- #endif
});


-- Mists of Pandaria Timewalking
root(ROOTS.Holidays, n(TIMEWALKING_HEADER, applyevent(EVENTS.TIMEWALKING_MISTS_OF_PANDARIA_DUNGEON_EVENT, {
	expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_5 }},{
		n(GROUP_FINDER, {
			i(187904, {	-- Cloud Serpent Soul (SS!)
				["timeline"] = { ADDED_9_1_5 },
				["description"] = "Can drop from the last boss of any 'Mists of Pandaria Timewalking' dungeon if you are aligned with the 'Night Fae Covenant'.",
			}),
			i(143776, {	-- Shrouded Timewarped Coin
				["description"] = "Drops from the last boss of any 'Mists of Pandaria Timewalking' dungeon.",
			}),
		}),
		n(QUESTS, {
			-- TW MoP Quest under level 80
			q(86560, {	-- A Shrouded Journey Through Time
				["provider"] = { "n", 118828 },	-- Mistweaver
				["coord"] = { 43.1, 55.3, TIMELESS_ISLE },
				["timeline"] = { ADDED_11_0_7 },
				["weekly"] = true,
				["lockCriteria"] = { 1, "lvl", 80 },
				["g"] = {
					i(232877, {	-- Timely Goodie Bag
						["sym"] = {
							{ "select", "itemID", 229355},	-- Chromie's Premium Goodie Bag
							{ "pop" },
						},
					}),
				},
			}),
			q(45563, {	-- The Shrouded Coin
				["provider"] = { "i", 143776 },	-- Shrouded Timewarped Coin
				["isWeekly"] = true,
				["groups"] = {
					currency(TIMEWARPED_BADGE),
				},
			}),
		}),
		n(VENDORS, {
			n(118828, {	-- Mistweaver Xia <Timewalking Vendor>
				["coord"] = { 43.0, 55.4, TIMELESS_ISLE },
				["g"] = {
					n(ARMOR, {
						filter(BACK_F, {
							i(144054, {	-- Blackguard Cape
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(144055, {	-- Sagewhisper's Wrap
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
						}),
						filter(CLOTH, {
							i(144044, {	-- Gloves of Red Feathers
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(144056, {	-- Leggings of the Poisoned Soul
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(144060, {	-- Mantle of the Golden Sun
								["cost"] = {{ "c", TIMEWARPED_BADGE, 35 }},
							}),
							i(144051, {	-- Storm-Sing Sandals
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
						}),
						filter(LEATHER, {
							i(144057, {	-- Dreadsworn Slayer Legs
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(144045, {	-- Fingers of the Loneliest Monk
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(144050, {	-- Tukka-Tuk's Hairy Boots
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(144061, {	-- Whitepetal Shoulderguards
								["cost"] = {{ "c", TIMEWARPED_BADGE, 35 }},
							}),
						}),
						filter(MAIL, {
							i(144058, {	-- Locust Swarm Legguards
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(144046, {	-- Ravenmane's Gloves
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(144049, {	-- Sandals of the Elder Sage
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(144062, {	-- Windwalker Spaulders
								["cost"] = {{ "c", TIMEWARPED_BADGE, 35 }},
							}),
						}),
						filter(NECK_F, {
							i(144052, {	-- Bloodseeker's Solitaire
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(144053, {	-- Choker of the Klaxxi'va
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
						}),
						filter(PLATE, {
							i(144059, {	-- Ambersmith Legplates
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(144047, {	-- Gauntlets of Jade Sutras
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(144063, {	-- Stonetoe Spaulders
								["cost"] = {{ "c", TIMEWARPED_BADGE, 35 }},
							}),
							i(144048, {	-- Yu'lon Guardian Boots
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
						}),
						filter(TRINKET_F, {
							i(144070, {	-- Shado-Pan Dragon Gun
								["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
							}),
						})
					}),
					filter(COSMETIC, sharedDataSelf({ ["timeline"] = { ADDED_11_0_7 } }, {
						i(234775, {	-- Amber Pandaren Fan
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
						}),
						i(234763, {	-- Bloody Expeditionary Cleaver
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
						}),
						i(234783, {	-- Caravan Guard's Buckler
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
						}),
						i(234774, {	-- Crimson Amber Incubator
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
						}),
						i(234796, {	-- Embroidered Shado-Pan Kilt
							["cost"] = {{ "c", TIMEWARPED_BADGE, 800 }},
						}),
						i(234762, {	-- Embroidered Shado-Pan Robes
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
						}),
						i(234764, {	-- Fist of Knives
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
						}),
						i(234767, {	-- Flame-Bladed Long Sword
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
						}),
						i(234765, {	-- Flame-Bladed Steel Sword
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
						}),
						i(234794, {	-- Gilded Shado-Pan Kilt
							["cost"] = {{ "c", TIMEWARPED_BADGE, 800 }},
						}),
						i(234759, {	-- Gilded Shado-Pan Robes
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
						}),
						i(234789, {	-- Gourd-Topped Mallet
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
						}),
						i(234773, {	-- Imperial Gut Render
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
						}),
						i(234768, {	-- Jungle Gourd Splitter
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
						}),
						i(234757, {	-- Kor'kron Pauldrons
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
						}),
						i(234756, {	-- Kor'kron Tabard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 500 }},
						}),
						i(234772, {	-- Kris of the Mogu Shaman
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
						}),
						i(234771, {	-- Mogu Lightning Spitter
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1800 }},
						}),
						i(234781, {	-- Mogu'shan Vault's Improvised Shield
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
						}),
						i(234787, {	-- Mogu'shan Warden's Crystal Spear
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1800 }},
						}),
						i(234784, {	-- Pandaran Bolt Thrower
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1800 }},
						}),
						i(234770, {	-- Pandaran Guard's Halberd
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
						}),
						i(234769, {	-- Pandaren Guard's Poleaxe
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
						}),
						i(234791, {	-- Reforged Harmonic Mallet
							["cost"] = {{ "c", TIMEWARPED_BADGE, 3000 }},
						}),
						i(234790, {	-- Restored Harmonic Mallet
							["cost"] = {{ "c", TIMEWARPED_BADGE, 2500 }},
						}),
						i(234766, {	-- Ringed Pandaran Falchion
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
						}),
						i(234776, {	-- Saurok Mystic's Voodoo Stick
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
						}),
						i(234795, {	-- Shado-Pan Guise
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
							["races"] = { PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(234778, {	-- Staff of the Jade Serpent
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
						}),
						i(234777, {	-- Stave-Master's Spire
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
						}),
						i(234755, {	-- Tabard of the Pandaran Elders
							["cost"] = {{ "c", TIMEWARPED_BADGE, 500 }},
						}),
					})),
					filter(BATTLE_PETS, {
						i(143953, {	-- Infinite Hatchling (PET!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 2200 }},
						}),
						i(143954, {	-- Paradox Spirit (PET!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 2200 }},
						}),
					}),
					filter(MISC, {
						i(143947, {	-- Commendation of Emperor Shaohao
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(143944, {	-- Commendation of Operation: Shieldwall
							["races"] = ALLIANCE_ONLY,
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(143946, {	-- Commendation of The Anglers
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(143938, {	-- Commendation of The August Celestials
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(143943, {	-- Commendation of the Dominance Offensive
							["races"] = HORDE_ONLY,
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(143937, {	-- Commendation of the Golden Lotus
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(143940, {	-- Commendation of the Kirin Tor Offensive
							["races"] = ALLIANCE_ONLY,
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(143935, {	-- Commendation of The Klaxxi
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(143942, {	-- Commendation of the Order of the Cloud Serpent
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(143936, {	-- Commendation of the Shado-Pan
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(143945, {	-- Commendation of the Shado-Pan Assault
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(143939, {	-- Commendation of the Sunreaver Onslaught
							["races"] = HORDE_ONLY,
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(143941, {	-- Commendation of The Tillers
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						-- Quest Items
						i(79265, {	-- Blue Feather
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(79266, {	-- Jade Cat
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(79267, {	-- Lovely Apple
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(79268, {	-- Marsh Lily
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(79264, {	-- Ruby Shard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(143948, {	-- Chilled Satchel of Vegetables
							["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
						})
					}),
					filter(MOUNTS, {
						i(234740, {	-- Copper-Maned Quilen Reins (MOUNT!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 5000 }},
							["timeline"] = { ADDED_11_0_7 },
						}),
						i(87775, {	-- Yu'lei, Daughter of Jade (MOUNT!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 5000 }},
						}),
					}),
					filter(TOYS, {
						i(144072, {	-- Adopted Puppy Crate (TOY!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
						}),
						i(144393, {	-- Portable Yak Wash (TOY!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 500 }},
						}),
					}),
				},
			}),
		}),
		inst_tw(303, {	-- Gate of the Setting Sun
			cr(56906, e(655, {	-- Saboteur Kip'tilak
				i(144018),	-- Fallout-Filtering Hood
				i(144102),	-- Pendant of Precise Timing
				i(144100),	-- Saboteur's Stablizing Bracers
				i(144134),	-- Grenadier's Belt
				i(144135),	-- Pulled Grenade Pin
			})),
			cr(56589, e(675, {	-- Striker Ga'dok
				i(143980),	-- Acid-Scarred Spaulders
				i(144137),	-- Bomber's Precision Gloves
				i(144095),	-- Impaler's Girdle
				i(143983),	-- Airstream Treads
				i(144136),	-- Vision of the Predator
			})),
			cr(56636, e(676, {	-- Commander Ri'mok
				i(144098),	-- Mantid Trochanter
				i(144019),	-- Swarmcall Helm
				i(144138),	-- Ri'mok's Shattered Scale
				i(143982),	-- Leggings of the Frenzy
				i(144139),	-- Viscous Ring
			})),
			cr(56877, e(649, {	-- Raigonn
				i(144101),	-- Carapace Breaker
				i(144218),	-- Klatith, Fangs of the Swarm
				i(144140),	-- Impervious Carapace
				i(144104),	-- Shield of the Protectorate
				i(143991),	-- Shoulders of Engulfing Winds
				i(144141),	-- Drape of the Screeching Swarm
				i(143955),	-- Swarmbringer Chestguards
				i(144142),	-- Frenzyswarm Bracers
				i(144105),	-- Hive Protector's Gauntlets
				i(143977),	-- Wall-Breaker Legguards
				i(143984),	-- Treads of Fixation
			})),
		}),
		inst_tw(321, {	-- Mogu'shan Palace
			e(708, {	-- Trial of the King (Ming the Cunning; 61442 Kuai the Brute, 61445 Haiyan the Unstoppable)
				["crs"] = {
					61445,	-- Haiyan the Unstoppable
					61442,	-- Kuai the Brute
					61444,	-- Ming the Cunning
				},
				["g"] = {
					i(144020),	-- Crest of the Clan Lords
					i(144021),	-- Meteoric Greathelm
					i(144144),	-- Whirling Dervish Choker
					i(144145),	-- Conflagrating Gloves
					i(144143),	-- Hurricane Belt
				},
			}),
			e(690, {	-- Gekkan
				["crs"] = { 61243 },	-- Gekkan
				["g"] = {
					i(144148),	-- Claws of Gekkan
					i(144147),	-- Cloak of Cleansing Flames
					i(144149),	-- Hexxer's Lethargic Gloves
					i(143992),	-- Glintrok Sollerets
					i(144146),	-- Iron Protector Talisman
				},
			}),
			e(698, {	-- Xin the Weaponmaster
				["crs"] = { 61398 },	-- Xin the Weaponmaster
				["g"] = {
					i(144150),	-- Ghostheart
					i(144214),	-- Mogu'Dar, Blade of the Thousand Slaves
					i(144154),	-- Firescribe Dagger
					i(144155),	-- Firescribe Dagger
					i(143995),	-- Regal Silk Shoulderpads
					i(143956),	-- Mind's Eye Breastplate
					i(144153),	-- Groundshaker Bracer
					i(144151),	-- Axebreaker Gauntlets
					i(143993),	-- Boots of Plummeting Death
					i(143994),	-- Soulbinder Treads
					i(144152),	-- Blade Trap Signet
				},
			}),
		}),
		inst_tw(246, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 }},{	-- Scholomance
			e(659,   {	-- Instructor Chillheart
				["crs"] = {
					58633,	-- Instructor Chillheart
					58664,	-- Instructor Chillheart's Phylactery
				},
				["g"] = {
					i(144201),	-- Gravetouch Greatsword
					i(144180),	-- Anarchist's Pendant
					i(143967),	-- Breastplate of Wracking Souls
					i(144200),	-- Shadow Puppet Bracers
					i(144202),	-- Icewrath Belt
				},
			}),
			e(663,   {	-- Jandice Barov
				["crs"] = { 59184 },	-- Jandice Barov
				["g"] = {
					i(144207),	-- Metanoia Shield
					i(144029),	-- Barovian Ritual Hood
					i(144208),	-- Phantasmal Drape
					i(144012),	-- Ghostwoven Legguards
					i(144013),	-- Wraithplate Treads
				},
			}),
			e(665,   {	-- Rattlegore
				["crs"] = { 59153 },	-- Rattlegore
				["g"] = {
					i(144011),	-- Bone Golem Boots
					i(144204),	-- Deadwalker Bracers
					i(144203),	-- Goresoaked Headreaper
					i(144205),	-- Necromantic Wand
					i(144206),	-- Rattling Gloves
					i(144015),	-- Vigorsteel Spaulders
				},
			}),
			n(59369, {	-- Doctor Theolen Krastinov
				["description"] = "This is a Rare Creature and is not always present.",
				["g"] = {
					i(88566),	-- Krastinov's Bag of Horrors (TOY!)
				},
			}),
			e(666,   {	-- Lilian Voss
				["crs"] = { 58722 },	-- Lilian Voss
				["g"] = {
					i(144030),	-- Soulburner Crown
					i(144181),	-- Necklace of the Dark Blaze
					i(143968),	-- Shivbreaker Vest
					i(144209),	-- Dark Blaze Gauntlets
					i(144014),	-- Leggings of Unleashed Anguish
				},
			}),
			e(684, {	-- Darkmaster Gandling
				["crs"] = { 59080 },	-- Darkmaster Gandling
				["g"] = {
					i(144212),	-- Gloves of Explosive Pain
					i(144211),	-- Headmaster's Will
					i(144213),	-- Incineration Belt
					i(144161),	-- Lessons of the Darkmaster
					i(144159),	-- Price of Progress
					i(144160),	-- Searing Words
					i(144016),	-- Shoulderguards of Painful Lessons
					i(144210),	-- Tombstone Gauntlets
					i(144015),	-- Vigorsteel Spaulders
				},
			}),
		})),
		inst_tw(312, {	-- Shado-Pan Monastery
			cr(56747, e(673, {	-- Gu Cloudstrike
				i(144127),	-- Cloudstrike Pendant
				i(143961),	-- Azure Serpent Chestguard
				i(144126),	-- Star Summoner Bracers
				i(144096),	-- Sparkbreath Girdle
				i(143978),	-- Leggings of the Charging Soul
			})),
			cr(56541, e(657, {	-- Master Snowdrift
				i(144110),	-- Snowdrift's Bladed Staff
				i(144106),	-- Gauntlets of Resolute Fury
				i(144097),	-- Quivering Heart Girdle
				i(144129),	-- Eye of the Tornado
				i(144128),	-- Heart of Fire
			})),
			cr(56719, e(685, {	-- Sha of Violence
				i(144099),	-- Crescent of Ichor
				i(144130),	-- Necklace of Disorientation
				i(144131),	-- Bladed Smoke Bracers
				i(144107),	-- Gloves of Enraged Slaughter
				i(143985),	-- Spike-Soled Stompers
			})),
			cr(56884, e(686, {	-- Taran Zhu
				i(144109),	-- Warmace of Taran Zhu
				i(144215),	-- Ka'eng, Breath of the Shadow
				i(144103),	-- Shield of Blind Hate
				i(143981),	-- Shadowspine Shoulderguards
				i(143962),	-- Hateshatter Chestplate
				i(143990),	-- Robes of Fevered Dreams
				i(144108),	-- Mindbender Plate Gloves
				i(143979),	-- Darkbinder Leggings
				i(143986),	-- Blastwalker Footguards
				i(144133),	-- Ring of Malice
				i(144132),	-- Seal of Hateful Meditation
			})),
		}),
		inst_tw(324, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_5, REMOVED_9_1_5 }},{	-- Siege of Niuzao Temple
			cr(61567, e(693, {	-- Vizier Jin'bak
				i(144022),	-- Hood of Viridian Residue
				i(144162),	-- Engraved Amber Pendant
				i(144163),	-- Girdle of Soothing Detonation
				i(143996),	-- Sap-Encrusted Legplates
				i(144156),	-- Flashfrozen Resin Globule
			})),
			cr(61634, e(738, {	-- Commander Vo'jak
				i(144164),	-- Siege-Captain's Scimitar
				i(144023),	-- Sightfinder Helm
				i(143963),	-- Chestwrap of Arcing Flame
				i(144165),	-- Bombardment Bracers
				i(144166),	-- Archer's Precision Grips
			})),
			cr(61485, e(692, {	-- General Pa'valak
				i(144167),	-- Tempestuous Longbow
				i(144170),	-- Aerial Bombardment Cloak
				i(144168),	-- Siegeworn Bracers
				i(144169),	-- Breezebinder Handwraps
				i(144157),	-- Vial of Ichorous Blood
			})),
			cr(62205, e(727, {	-- Wing Leader Ner'onok
				i(144172),	-- Gustwalker Staff
				i(144171),	-- Ner'onok's Razor Katar
				i(144219),	-- Tolakesh, Horn of the Black Ox
				i(144025),	-- Breezeswept Hood
				i(144024),	-- Windblast Helm
				i(143998),	-- Spaulders of Immovable Stone
				i(143999),	-- Whisperwind Spaulders
				i(143964),	-- Galedodger Chestguard
				i(144173),	-- Belt of Totemic Binding
				i(144000),	-- Airbender Sandals
				i(143997),	-- Anchoring Sabatons
			})),
		})),
		inst_tw(302, {	-- Stormstout Brewery
			cr(56637, e(668, {	-- Ook-Ook
				i(144084),	-- Ook's Hozen Slicer
				i(143957),	-- Nimbletoe Chestguard
				i(144087),	-- Bracers of Displaced Air
				i(143989),	-- Barreldodger Boots
				i(144119),	-- Empty Fruit Barrel
			})),
			cr(56717, e(669, {	-- Hoptallus
				i(144092),	-- Bottle of Potent Potables
				i(144121),	-- Cloak of Hidden Flasks
				i(144088),	-- Bubble-Breaker Bracers
				i(144120),	-- Belt of Brazen Inebriation
				i(143975),	-- Hopping Mad Leggings
			})),
			cr(59479, e(670, {	-- Yan-Zhu the Uncasked
				i(144124),	-- Wort Stirring Rod
				i(144085),	-- Gao's Keg Tapper
				i(144089),	-- Yan-Zhu's Pressure Valve
				i(143969),	-- Fizzy Spaulders
				i(143958),	-- Uncasked Chestguard
				i(144082),	-- Fermenting Belt
				i(143976),	-- Sudsy Legplates
				i(144125),	-- Alemental Seal
				i(144123),	-- Lime-Rimmed Signet
				i(144122),	-- Carbonic Carbuncle
			})),
		}),
		inst_tw(313, {	-- Temple of the Jade Serpent
			cr(56448, e(672, {	-- Wise Mari
				i(144017),	-- Waterburst Helm
				i(144111),	-- Wind-Soaked
				i(143960),	-- Riverbed Chestguard
				i(143973),	-- Treads of Corrupted Water
				i(144112),	-- Crystallized Droplet
			})),
			cr(56843, e(664, {	-- Lorewalker Stonestep
				i(144081),	-- Girdle of Endemic Anger
				i(144083),	-- Sunheart Waistband
				i(143987),	-- Leggings of Whispered Dreams
				i(143974),	-- Stonestep Boots
				i(144113),	-- Windswept Pages
			})),
			cr(56732, e(658, {	-- Liu Flameheart
				i(144090),	-- Firebelcher Hand Cannon
				i(143971),	-- Serpentstrike Shoulderpads
				i(144094),	-- Cape of Entaglement
				i(143988),	-- Flameheart Sandals
				i(144114),	-- Signet of Dancing Jade
			})),
			cr(56439, e(335, {	-- Sha of Doubt
				i(144093),	-- Staff of Trembling Will
				i(144086),	-- Dubious Handaxe
				i(144216),	-- Je'lyu, Spirit of the Serpent
				i(144117),	-- Mindbreaker Pendant
				i(143972),	-- Doubtridden Shoulderguards
				i(143970),	-- Neverdare Shoulders
				i(144115),	-- Cloak of Failing Will
				i(143959),	-- Chestguard of Despair
				i(144091),	-- Hopecrusher Gauntlets
				i(144118),	-- Paralyzing Gloves
				i(144116),	-- Binding of Broken Dreams
			})),
		}),
	})),
})));

-- Only instances still in rotation should be in this list.
-- This will prevent instances that don't have Timewalking currently from showing in the mini list.
AddInstancesToRotation(EXPANSION.MOP, {
	-- Raid not originally included with the rotation
	-- It is expected that the raid will be Throne of Thunder.

	-- Dungeons
	303,	-- Gate of the Setting Sun
	321,	-- Mogu'shan Palace
	312,	-- Shado-Pan Monastery
	302,	-- Stormstout Brewery
	313,	-- Temple of the Jade Serpent

	-- #if BEFORE 9.1.5
	324,	-- Siege of Niuzao Temple
	-- #endif
});
AddInstancesToRotation(EXPANSION.CLASSIC, {
	-- #if AFTER 9.1.5
	246,	-- Scholomance
	-- #endif
});


-- Warlords of Draenor Timewalking
root(ROOTS.Holidays, n(TIMEWALKING_HEADER, applyevent(EVENTS.TIMEWALKING_WARLORDS_OF_DRAENOR_DUNGEON_EVENT, {
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 }},{
		n(GROUP_FINDER, {
			i(210062, {	-- Ironbound Satchel of Helpful Goods // Draenor TW Daily Reward
				["description"] = "Rewarded for completing any 'Warlords of Draenor Timewalking' dungeon.\nAvailable once per day.",
				["timeline"] = { ADDED_10_1_7 },
				["sym"] = { { "select", "itemID", 156698 }, {"pop"} },	-- Tranquil Satchel of Helpful Goods
			}),
			i(187905, {	-- Boar Soul (SS!)
				["timeline"] = { ADDED_9_1_5 },
				["description"] = "Can drop from the last boss of any 'Warlords of Draenor Timewalking' dungeon if you are aligned with the 'Night Fae Covenant'.",
			}),
			i(167921, {	-- Shimmering Timewarped Crystal (A)
				["description"] = "Drops from the last boss of any 'Warlords of Draenor Timewalking' dungeon.",
			}),
			i(167922, {	-- Shimmering Timewarped Crystal (H)
				["description"] = "Drops from the last boss of any 'Warlords of Draenor Timewalking' dungeon.",
			}),
		}),
		n(QUESTS, {
			-- TW WoD Quest under level 80
			q(86563, {	-- A Savage Journey Through Time
				["providers"] = {
					{ "n", 151955 },	-- Tempra
					{ "n", 151987 },	-- Kronnus
				},
				["coords"] = {
					{ 37.0, 72.4, STORMSHIELD },
					{ 42.8, 54.4, WARSPEAR },
				},
				["timeline"] = { ADDED_11_0_7 },
				["weekly"] = true,
				["lockCriteria"] = { 1, "lvl", 80 },
				["g"] = {
					i(232877, {	-- Timely Goodie Bag
						["sym"] = {
							{ "select", "itemID", 229355},	-- Chromie's Premium Goodie Bag
							{ "pop" },
						},
					}),
				},
			}),
			q(55498, {	-- The Shimmering Crystal (A)
				["provider"] = { "i", 167921 },		-- Shimmering Timewarped Crystal (A)
				["isWeekly"] = true,
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					currency(TIMEWARPED_BADGE),
				},
			}),
			q(55499, {	-- The Shimmering Crystal (H)
				["provider"] = { "i", 167922 },		-- Shimmering Timewarped Crystal (H)
				["isWeekly"] = true,
				["races"] = HORDE_ONLY,
				["groups"] = {
					currency(TIMEWARPED_BADGE),
				},
			}),
		}),
		n(VENDORS, {
			n(151987, {	-- Kronnus <Timewalking Vendor> [Horde Side]
				["races"] = HORDE_ONLY,
				["coord"] = { 42.8, 54.5, WARSPEAR },
				["g"] = {
					n(ARMOR, {
						filter(CLOTH, {
							i(109074, {	-- Fine Void-Chain Cinch
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(116765, {	-- Positive Pantaloons
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(127296, {	-- Twisted Taboo Handwraps
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(116110, {	-- Zorkra's Hood
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
						}),
						filter(LEATHER, {
							i(127304, {	-- Cave Keeper Wraps
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(113557, {	-- Dragonrider's Tinkered Leggings
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(109057, {	-- Frogskin Diving Cap
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(116834, {	-- Whitesea's Waistwrap
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
						}),
						filter(MAIL, {
							i(112096, {	-- Dented Ogre Skullcap
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(119372, {	-- Ironstudded Scale Girdle
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(119370, {	-- Rattlekilt
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(127311, {	-- Serpentine Gloves
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
						}),
						filter(PLATE, {
							i(119382, {	-- Hershak's Heavy Legguards
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(127319, {	-- Krag'goth's Iron Gauntlets
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(119384, {	-- Krud's Girthy Girdle
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(127320, {	-- Mo'gruth's Discarded Parade Helm
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
						}),
					}),
					filter(COSMETIC, sharedDataSelf({ ["timeline"] = { ADDED_11_0_7 } }, {
						iensemble(234903, {	-- Ensemble: Gorgrond Cragstalker's Hunting Gear
							["cost"] = {{ "c", TIMEWARPED_BADGE, 4000 }},
						}),
						iensemble(234901, {	-- Ensemble: Karabor Priest's Vestments
							["cost"] = {{ "c", TIMEWARPED_BADGE, 4000 }},
						}),
						iensemble(234904, {	-- Ensemble: Shadowmoon Anchorite's Guardplate
							["cost"] = {{ "c", TIMEWARPED_BADGE, 4000 }},
						}),
						iensemble(234902, {	-- Ensemble: Shattrath Artificer's Regalia
							["cost"] = {{ "c", TIMEWARPED_BADGE, 4000 }},
						}),
						i(234907, {	-- Tattered Iron Horde Tabard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 500 }},
						}),
					})),
					filter(MISC, {
						i(167924, {	-- Commendation of the Arakkoa Outcasts
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(167928, {	-- Commendation of the Frostwolf Orcs
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(167930, {	-- Commendation of the Laughing Skull Orcs
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(167925, {	-- Commendation of the Order of the Awakened
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(167927, {	-- Commendation of the Saberstalkers
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(167926, {	-- Commendation of the Steamwheedle Preservation Society
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(168017, {	-- Commendation of Vol'jin's Headhunters
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
					}),
					filter(MOUNTS, {
						i(167894, {	-- Beastlord's Irontusk (MOUNT!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 5000 }},
						}),
						i(167895, {	-- Beastlord's Warwolf (MOUNT!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 5000 }},
						}),
						i(234716, {	-- Nightfall Skyreaver's Reins (MOUNT!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 5000 }},
							["timeline"] = { ADDED_11_0_7 },
						}),
					}),
					filter(TOYS, {
						i(168012, {	-- Apexis Focusing Shard (TOY!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 500 }},
						}),
						i(168014, {	-- Banner of the Burning Blade (TOY!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 750 }},
						}),
					}),
					n(WEAPONS, {
						i(119226, {	-- Blammo's Blammer
							["cost"] = {{ "c", TIMEWARPED_BADGE, 100 }},
						}),
						i(127339, {	-- Forgotten Champion's Blade
							["cost"] = {{ "c", TIMEWARPED_BADGE, 100 }},
						}),
						i(119396, {	-- Shadowspeaker's Shard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(113287, {	-- Shard of Scorn
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
					}),
				},
			}),
			n(151955, {	-- Tempra <Timewalking Vendor> [Alliance Side]
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 36.9, 72.5, STORMSHIELD },
				["g"] = {
					n(ARMOR, {
						filter(CLOTH, {
							i(109074, {	-- Fine Void-Chain Cinch
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(116765, {	-- Positive Pantaloons
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(127296, {	-- Twisted Taboo Handwraps
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(116110, {	-- Zorkra's Hood
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
						}),
						filter(LEATHER, {
							i(127304, {	-- Cave Keeper Wraps
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(113557, {	-- Dragonrider's Tinkered Leggings
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(109057, {	-- Frogskin Diving Cap
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(116834, {	-- Whitesea's Waistwrap
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
						}),
						filter(MAIL, {
							i(112096, {	-- Dented Ogre Skullcap
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(119372, {	-- Ironstudded Scale Girdle
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(119370, {	-- Rattlekilt
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(127311, {	-- Serpentine Gloves
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
						}),
						filter(PLATE, {
							i(119382, {	-- Hershak's Heavy Legguards
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(127319, {	-- Krag'goth's Iron Gauntlets
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(119384, {	-- Krud's Girthy Girdle
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(127320, {	-- Mo'gruth's Discarded Parade Helm
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
						}),
					}),
					filter(COSMETIC, sharedDataSelf({ ["timeline"] = { ADDED_11_0_7 } }, {
						i(234906, {	-- Auchenai Tabard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 500 }},
							["minReputation"] = { FACTION_COUNCIL_OF_EXARCHS, EXALTED },
						}),
						iensemble(234903, {	-- Ensemble: Gorgrond Cragstalker's Hunting Gear
							["cost"] = {{ "c", TIMEWARPED_BADGE, 4000 }},
						}),
						iensemble(234901, {	-- Ensemble: Karabor Priest's Vestments
							["cost"] = {{ "c", TIMEWARPED_BADGE, 4000 }},
						}),
						iensemble(234904, {	-- Ensemble: Shadowmoon Anchorite's Guardplate
							["cost"] = {{ "c", TIMEWARPED_BADGE, 4000 }},
						}),
						iensemble(234902, {	-- Ensemble: Shattrath Artificer's Regalia
							["cost"] = {{ "c", TIMEWARPED_BADGE, 4000 }},
						}),
						i(234907, {	-- Tattered Iron Horde Tabard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 500 }},
						}),
					})),
					filter(MISC, {
						i(167924, {	-- Commendation of the Arakkoa Outcasts
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(167929, {	-- Commendation of the Council of Exarchs
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(168018, {	-- Commendation of the Hand of the Prophet
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(167925, {	-- Commendation of the Order of the Awakened
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(167927, {	-- Commendation of the Saberstalkers
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(167932, {	-- Commendation of the Sha'tari Defense
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(167926, {	-- Commendation of the Steamwheedle Preservation Society
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
					}),
					filter(MOUNTS, {
						i(167894, {	-- Beastlord's Irontusk (MOUNT!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 5000 }},
						}),
						i(167895, {	-- Beastlord's Warwolf (MOUNT!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 5000 }},
						}),
						i(234716, {	-- Nightfall Skyreaver's Reins (MOUNT!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 5000 }},
							["timeline"] = { ADDED_11_0_7 },
						}),
					}),
					filter(TOYS, {
						i(168012, {	-- Apexis Focusing Shard (TOY!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 500 }},
						}),
						i(168014, {	-- Banner of the Burning Blade (TOY!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 750 }},
						}),
					}),
					n(WEAPONS, {
						i(119226, {	-- Blammo's Blammer
							["cost"] = {{ "c", TIMEWARPED_BADGE, 100 }},
						}),
						i(127339, {	-- Forgotten Champion's Blade
							["cost"] = {{ "c", TIMEWARPED_BADGE, 100 }},
						}),
						i(119396, {	-- Shadowspeaker's Shard
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(113287, {	-- Shard of Scorn
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
					}),
				},
			}),
		}),
		n(COMMON_DUNGEON_DROPS, {
			["ItemAppearanceModifierID"] = 0,
			["groups"] = {
				n(HANDS, sharedData({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SBG, SKY, BLOOM }, },{
					i(109861),	-- Felflame Grips
					i(109845),	-- Frost-Touched Gloves
					i(109847),	-- Lightbinder Gloves
					i(109844),	-- Gloves of Arcane Mystery
					i(109846),	-- Gloves of Swirling Light
					i(109848),	-- Gauntlets of Burning Focus
					i(109862),	-- Blackwater Grips
					i(109849),	-- Bloodfeather Grips
					i(109850),	-- Crystalbinder Gloves
					i(109851),	-- Leafmender Grips
					i(109855),	-- Lavalink Grips
					i(109863),	-- Morningscale Gauntlet
					i(109854),	-- Rockhide Gloves
					i(109853),	-- Sharpeye Gauntlets
					i(109852),	-- Streamslither Gauntlets
					i(109858),	-- Goldsteel Gloves
					i(109859),	-- Gutcrusher Gauntlets
					i(109856),	-- Incarnadine Gauntlets
					i(109860),	-- Rivet-Sealed Crushers
					i(109857),	-- Verdant Plate Grips
				})),
				n(WAIST, sharedData({ ["crs"] = { AUCH, RAIL, DOCKS, SBG, SKY, BLOOM }, },{
					i(109828),	-- Felflame Belt
					i(109825),	-- Frost-Touched Cord
					i(109827),	-- Lightbinder Girdle
					i(109824),	-- Cord of Arcane Mystery
					i(109826),	-- Cord of Swirling Light
					i(109829),	-- Belt of Burning Focus
					i(109842),	-- Blackwater Belt
					i(109830),	-- Bloodfeather Girdle
					i(109831),	-- Crystalbinder Belt
					i(109832),	-- Leafmender Girdle
					i(109836),	-- Lavalink Girdle
					i(109843),	-- Morningscale Waistguard
					i(109835),	-- Rockhide Links
					i(109834),	-- Sharpeye Belt
					i(109833),	-- Streamslither Belt
					i(109839),	-- Goldsteel Belt
					i(109840),	-- Gutcrusher Greatbelt
					i(109837),	-- Incarnadine Girdle
					i(109841),	-- Rivet-Sealed Waistplate
					i(109838),	-- Verdant Plate Belt
				})),
				n(LEGS, sharedData({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SKY, BLOOM }, },{
					i(109808),	-- Felflame Legwraps
					i(109805),	-- Frost-Touched Legwraps
					i(109807),	-- Lightbinder Leggings
					i(109804),	-- Trousers of Arcane Mystery
					i(109806),	-- Leggings of Swirling Light
					i(109809),	-- Legguards of Burning Focus
					i(109823),	-- Blackwater Leggings
					i(109810),	-- Bloodfeather Leggings
					i(109811),	-- Crystalbinder Legwraps
					i(109812),	-- Leafmender Legwraps
					i(109816),	-- Lavalink Legguards
					i(109817),	-- Morningscale Leggings
					i(109815),	-- Rockhide Leggings
					i(109814),	-- Sharpeye Legguards
					i(109813),	-- Streamslither Legguards
					i(109820),	-- Goldsteel Legplates
					i(109821),	-- Gutcrusher Legplates
					i(109818),	-- Incarnadine Legplates
					i(109822),	-- Rivet-Sealed Legplates
					i(109819),	-- Verdant Plate Legguards
				})),
				n(CHEST, sharedData({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SBG, BLOOM }, },{
					i(109903),	-- Felflame Robes
					i(109900),	-- Frost-Touched Robes
					i(109902),	-- Lightbinder Robes
					i(109899),	-- Robes of Arcane Mystery
					i(109901),	-- Robes of Swirling Light
					i(109884),	-- Chestguard of Burning Focus
					i(109898),	-- Blackwater Wrap
					i(109885),	-- Bloodfeather Chestwrap
					i(109886),	-- Crystalbinder Chestguard
					i(109897),	-- Leafmender Robes
					i(109890),	-- Lavalink Ringmail
					i(109891),	-- Morningscale Chestguard
					i(109889),	-- Rockhide Ringmail
					i(109888),	-- Sharpeye Chestguard
					i(109887),	-- Streamslither Chestguard
					i(109894),	-- Goldsteel Chestguard
					i(109895),	-- Gutcrusher Chestplate
					i(109892),	-- Incarnadine Breastplate
					i(109896),	-- Rivet-Sealed Breastplate
					i(109893),	-- Verdant Plate Chest
				})),
				n(FEET, sharedData({ ["crs"] = { AUCH, BSM, SBG, SKY, BLOOM }, },{
					i(109797),	-- Felflame Sandals
					i(109785),	-- Frost-Touched Boots
					i(109796),	-- Lightbinder Treads
					i(109784),	-- Sandals of Arcane Mystery
					i(109786),	-- Sandals of Swirling Light
					i(109787),	-- Boots of Burning Focus
					i(109799),	-- Blackwater Boots
					i(109788),	-- Bloodfeather Treads
					i(109789),	-- Crystalbinder Sandals
					i(109798),	-- Leafmender Sandals
					i(109800),	-- Lavalink Stompers
					i(109801),	-- Morningscale Treads
					i(109792),	-- Rockhide Treads
					i(109791),	-- Sharpeye Greaves
					i(109790),	-- Streamslither Boots
					i(109795),	-- Goldsteel Sabatons
					i(109802),	-- Gutcrusher Stompers
					i(109793),	-- Incarnadine Greaves
					i(109803),	-- Rivet-Sealed Treads
					i(109794),	-- Verdant Plate Treads
				})),
				n(HEAD, sharedData({ ["crs"] = { BSM, DOCKS, SBG, SKY, BLOOM }, },{
					i(109974),	-- Felflame Hood
					i(109971),	-- Frost-Touched Hood
					i(109973),	-- Lightbinder Cover
					i(109970),	-- Hood of Arcane Mystery
					i(109972),	-- Hood of Swirling Light
					i(109975),	-- Hood of Burning Focus
					i(109979),	-- Blackwater Helm
					i(109976),	-- Bloodfeather Cowl
					i(109977),	-- Crystalbinder Helm
					i(109978),	-- Leafmender Hood
					i(109983),	-- Lavalink Helm
					i(109984),	-- Morningscale Cowl
					i(109982),	-- Rockhide Casque
					i(109981),	-- Sharpeye Gleam
					i(109980),	-- Streamslither Helm
					i(109987),	-- Goldsteel Greathelm
					i(109988),	-- Gutcrusher Coronet
					i(109985),	-- Incarnadine Greathelm
					i(109989),	-- Rivet-Sealed Casque
					i(109986),	-- Verdant Plate Crown
				})),
				n(WRIST, sharedData({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SBG, SKY, BLOOM }, },{
					i(109881),	-- Felflame Bracers
					i(109865),	-- Frost-Touched Wristwraps
					i(109867),	-- Lightbinder Wristwraps
					i(109864),	-- Bracers of Arcane Mystery
					i(109866),	-- Bracers of Swirling Light
					i(109868),	-- Bracers of Burning Focus
					i(109882),	-- Blackwater Wristguards
					i(109869),	-- Bloodfeather Bracers
					i(109870),	-- Crystalbinder Wristguards
					i(109871),	-- Leafmender Wraps
					i(109883),	-- Morningscale Bracers
					i(109874),	-- Rockhide Wristguards
					i(109873),	-- Sharpeye Bracers
					i(109872),	-- Streamslither Bracers
					i(109878),	-- Goldsteel Bindings
					i(109879),	-- Gutcrusher Bracers
					i(109876),	-- Incarnadine Bracers
					i(109880),	-- Rivet-Sealed Bracers
					i(109877),	-- Verdant Plate Wristguards
				})),
				n(SHOULDER, sharedData({ ["crs"] = { BSM, DOCKS, SKY, BLOOM }, },{
					i(109948),	-- Felflame Spaulders
					i(109931),	-- Frost-Touched Shoulderpads
					i(109933),	-- Lightbinder Shoulderpads
					i(109930),	-- Mantle of Arcane Mystery
					i(109932),	-- Mantle of Swirling Light
					i(109934),	-- Spaulders of Burning Focus
					i(109938),	-- Blackwater Spaulders
					i(109935),	-- Bloodfeather Spaulders
					i(109936),	-- Crystalbinder Shoulderpads
					i(109937),	-- Leafmender Mantle
					i(109942),	-- Lavalink Spaulders
					i(109949),	-- Morningscale Spaulders
					i(109941),	-- Rockhide Shoulderguards
					i(109940),	-- Sharpeye Shoulderguards
					i(109939),	-- Streamslither Spaulders
					i(109945),	-- Goldsteel Shouldercaps
					i(109946),	-- Gutcrusher Shoulderplates
					i(109943),	-- Incarnadine Shoulderguard
					i(109947),	-- Rivet-Sealed Shoulderplates
					i(109944),	-- Verdant Plate Spaulders
				})),
				n(BACK, sharedData({ ["crs"] = { BSM, AUCH, SBG, BLOOM }, },{
					i(109912),	-- Bloody-Blade Drape
					i(109911),	-- Cloak of Annealing Flesh
					i(109908),	-- Cloak of Arcane Mysteries
					i(109904),	-- Cloak of Cascading Blades
					i(109910),	-- Cloak of Mending Magics
					i(109929),	-- Cloak of Steeled Nerves
					i(109906),	-- Cloak of Violent Harmony
					i(109905),	-- Deadshot Greatcloak
					i(109914),	-- Drape of Dripping Runnels
					i(109926),	-- Drape of Frozen Dreams
					i(109909),	-- Drape of Iron Sutures
					i(109916),	-- Drape of Swirling Deflection
					i(109907),	-- Felbone Drape
					i(109925),	-- Forgeflame Greatcloak
					i(109913),	-- Headscythe Greatcloak
					i(109927),	-- Mistwoven Windcloak
					i(109915),	-- Rigid Scale Cloak
					i(109928),	-- Skullcracker Cloak
					i(109918),	-- Soot-Scarred Longcloak
					i(109917),	-- Three-Clefthoof Cape
				})),
				n(NECK, sharedData({ ["crs"] = { AUCH, RAIL, DOCKS, SBG, SKY, BLOOM }, },{
					i(109957),	-- Alc's Pendant of Fiery Dreams
					i(109962),	-- Bloodmist Pendant
					i(109959),	-- Chain of Soothing Light
					i(109969),	-- Choker of Weeping Viscera
					i(109955),	-- Demonbinder Cabochon
					i(109951),	-- Fireblade Collar
					i(109965),	-- Fistbreak Choker
					i(109968),	-- Flesh Beetle Brooch
					i(109963),	-- Goreclasp Choker
					i(109958),	-- Healing Leaf Necklace
					i(109954),	-- Magister's Chain
					i(109956),	-- Necklace of Endless Shadow
					i(109964),	-- Necklace of Furious Zeal
					i(109967),	-- Necklace of Holy Deflection
					i(109961),	-- Pendant of Purifying Mists
					i(109966),	-- Reinforced Bloodsteel Gorget
					i(109952),	-- Skulltooth Chain
					i(109950),	-- Stormshot Choker
					i(109960),	-- Wavesurge Choker
					i(109953),	-- Windseal Necklace
				})),
				n(FINGER, sharedData({ ["crs"] = { BSM, RAIL, AUCH, DOCKS, SBG, SKY, BLOOM }, },{
					i(109779),	-- Ancient Draenic Loop
					i(109768),	-- Band of Growing Leaves
					i(109773),	-- Band of Iron Scale
					i(109783),	-- Band of the Stalwart Stanchion
					i(109775),	-- Bladebinder Ring
					i(109771),	-- Bloodied Ring of Mytosis
					i(109761),	-- Bloodthorn Band
					i(109760),	-- Ced's Chiming Circle
					i(109766),	-- Darkflame Loop
					i(109763),	-- Diamondglow Circle
					i(109782),	-- Disease-Binder Seal
					i(109765),	-- Golem's Gleaming Eye
					i(109772),	-- Knucklebone of Lo'Dronar
					i(109764),	-- Mark of Ice
					i(109767),	-- Ring of Purified Light
					i(109774),	-- Ring of Ripped Flesh
					i(109759),	-- Ro-Ger's Brown Diamond Seal
					i(109776),	-- Seal of Resilient Fortitude
					i(109781),	-- Seal of Vindication
					i(109770),	-- Signet of Crashing Waves
					i(109762),	-- Signet of Radiant Leaves
					i(109780),	-- Signet of Shifting Magics
					i(109778),	-- Signet of the Glorious Protector
					i(109769),	-- Slicebinder Loop
					i(109777),	-- Unsullied Signet
				})),
			},
		}),
		inst_tw(547, {	-- Auchindoun
			e(1185, {	-- Vigilant Kaathar
				["crs"] = { 75839 },
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, WAIST},
					{"sub", "common_wod_dungeon_drop_tw", 24, FINGER},
				},
				["g"] = {
					i(110045),	-- Kamui's Crystalline Staff of Wizardry
				},
			}),
			e(1186, {	-- Soulbinder Nyami
				["crs"] = { 76177 },
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, CHEST},
					{"sub", "common_wod_dungeon_drop_tw", 24, NECK},
				},
				["g"] = {
					i(110046),	-- Hammer of the Soulbinder
					i(110047),	-- Soulcutter Mageblade
				},
			}),
			e(1216, {	-- Azzakel
				["crs"] = { 75927 },
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, WRIST},
					{"sub", "common_wod_dungeon_drop_tw", 24, HANDS},
				},
				["g"] = {
					i(110048),	-- Azzakel's Boltslinger
					i(109995),	-- Blood Seal of Azzakel
				},
			}),
			e(1225, {	-- Teron'gor
				["crs"] = { 77734 },
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, BACK},
					{"sub", "common_wod_dungeon_drop_tw", 24, LEGS},
					{"sub", "common_wod_dungeon_drop_tw", 24, FEET},
				},
				["g"] = {
					i(110049),	-- Bloodblade of Teron'Gor
					i(110050),	-- Dagger of the Sanguine Emeralds
					i(110005),	-- Crystalline Blood Drop
					i(110010),	-- Mote of Corruption
				},
			}),
		}),
		inst_tw(385, {	-- Bloodmaul Slag Mines
			e(888, {	-- Slave Watcher Crushto
				["crs"] = { 74787 },	-- Slave Watcher Crushto
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, WRIST},
					{"sub", "common_wod_dungeon_drop_tw", 24, LEGS},
				},
				["g"] = {
					i(110040),	-- Crushto's Neck Separator
					i(110000),	-- Crushto's Runic Alarm
				},
			}),
			e(893, {	-- Magmolatus
				["crs"] = {
					74366,	-- Forgemaster Gog'duh
					74475,	-- Magmolatus
				},
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, CHEST},
					{"sub", "common_wod_dungeon_drop_tw", 24, HANDS},
				},
			}),
			e(887, {	-- Roltall
				["crs"] = { 75786 },	-- Roltall
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, BACK},
					{"sub", "common_wod_dungeon_drop_tw", 24, FEET},
				},
				["g"] = {
					i(110041),	-- Roltall's Brutal Crescent
					i(110015),	-- Toria's Unseeing Eye
				},
			}),
			e(889, {	-- Gug'rokk
				["crs"] = { 74790 },	-- Gug'rokk
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, HEAD},
					{"sub", "common_wod_dungeon_drop_tw", 24, SHOULDER},
					{"sub", "common_wod_dungeon_drop_tw", 24, FINGER},
				},
				["g"] = {
					i(110042),	-- Gug'rokk's Smasher
					i(110044),	-- Ogre Dinner Plate
					i(110043),	-- Gug'rokk's Grandmother
				},
			}),
		}),
		inst_tw(536, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 }},{	-- Grimrail Depot
			e(1138, {	-- Rocketspark and Borka
				["crs"] = {
					77816,	-- Borka the Brute
					77803,	-- Railmaster Rocketspark
				},
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 23, WAIST},
					{"sub", "common_wod_dungeon_drop_tw", 23, FINGER},
				},
				["g"] = {
					i(110051),	-- Overseer's Final Word
				},
			}),
			e(1163, {	-- Nitrogg Thundertower
				["crs"] = {
					79548,	-- Assault Cannon
					79545,	-- Nitrogg Thundertower
				},
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 23, NECK},
					{"sub", "common_wod_dungeon_drop_tw", 23, CHEST},
				},
				["g"] = {
					i(110052),	-- Scepter of Brutality
					i(109996),	-- Thundertower's Targeting Reticle
				},
			}),
			e(1133, {	-- Skylord Tovra
				["crs"] = { 80005 },	-- Skylord Tovra
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 23, WRIST},
					{"sub", "common_wod_dungeon_drop_tw", 23, HANDS},
					{"sub", "common_wod_dungeon_drop_tw", 23, LEGS},
				},
				["g"] = {
					i(110054),	-- Thunderlord Flamestaff
					i(110053),	-- Arrowbreaker Greatshield
					i(110001),	-- Tovra's Lightning Repository
				},
			}),
		})),
		inst_tw(558, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5, REMOVED_9_1_5 }},{	-- Iron Docks
			e(1235, {	-- Fleshrender Nok'gar
				["crs"] = {
					81297,	-- Dreadfang
					81305,	-- Fleshrender Nok'gar
				},
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, CHEST},
					{"sub", "common_wod_dungeon_drop_tw", 24, FINGER},
				},
				["g"] = {
					i(110055),	-- Gutwrench Goreaxe
					i(110002),	-- Fleshrender's Meathook
				},
			}),
			e(1236, {	-- Grimrail Enforcers
				["crs"] = {
					80816,	-- Ahri'ok Dugru
					80805,	-- Makogg Emberblade
					80808,	-- Neesa Nox
				},
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, HEAD},
					{"sub", "common_wod_dungeon_drop_tw", 24, NECK},
				},
				["g"] = {
					i(110056),	-- Black Iron Sniper Rifle
					i(110017),	-- Enforcer's Stun Grenade
				},
			}),
			e(1237, {	-- Oshir
				["crs"] = { 79852 },	-- Oshir
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, WRIST},
					{"sub", "common_wod_dungeon_drop_tw", 24, WAIST},
				},
				["g"] = {
					i(110057),	-- Mindbreaker Scepter
					i(109997),	-- Kihra's Adrenaline Injector
				},
			}),
			e(1238, {	-- Skulloc
				["crs"] = {
					83613,	-- Koramar
					83612,	-- Skulloc
					83616,	-- Zoggosh
				},
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, SHOULDER},
					{"sub", "common_wod_dungeon_drop_tw", 24, HANDS},
					{"sub", "common_wod_dungeon_drop_tw", 24, LEGS},
				},
				["g"] = {
					i(110059),	-- Chasmwrench Docking Hook
					i(110058),	-- Bloodied Hand of Woe
					i(110060),	-- Painbringer's Crystal
				},
			}),
		})),
		inst_tw(537, {	-- Shadowmoon Burial Grounds
			e(1139, {	-- Sadana Bloodfury
				["crs"] = { 75509 },
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, NECK},
					{"sub", "common_wod_dungeon_drop_tw", 24, BACK},
				},
				["g"] = {
					i(110035),	-- Sadana's Grisly Visage
				},
			}),
			e(1168, {	-- Nhallish
				["crs"] = { 75829 },
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, WRIST},
					{"sub", "common_wod_dungeon_drop_tw", 24, CHEST},
				},
				["g"] = {
					i(110036),	-- Nhallish's Bloody Polearm
					i(110007),	-- Voidmender's Shadowgem
				},
			}),
			e(1140, {	-- Bonemaw
				["crs"] = { 75452 },
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, WAIST},
					{"sub", "common_wod_dungeon_drop_tw", 24, HANDS},
				},
				["g"] = {
					i(110037),	-- Bonetooth Longbow
					i(110012),	-- Bonemaw's Big Toe
				},
			}),
			e(1160, {	-- Ner'zhul
				["crs"] = { 76407 },
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, HEAD},
					{"sub", "common_wod_dungeon_drop_tw", 24, FEET},
					{"sub", "common_wod_dungeon_drop_tw", 24, FINGER},
				},
				["g"] = {
					i(138806),	-- Illusion: Mark of Shadowmoon (ILLUSION!)
					i(110039),	-- Portal-Ripper's Staff
					i(110038),	-- Ner'zhul's Ritual Blade
				},
			}),
		}),
		inst_tw(476, {	-- Skyreach
			e(965, {	-- Ranjit
				["crs"] = { 75964 },
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, HEAD},
					{"sub", "common_wod_dungeon_drop_tw", 24, WAIST},
				},
				["g"] = {
					i(110030),	-- Chakram-Breaker Greatsword
				},
			}),
			e(966, {	-- Araknath
				["crs"] = { 76141 },
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, NECK},
					{"sub", "common_wod_dungeon_drop_tw", 24, FEET},
				},
				["g"] = {
					i(110031),	-- Spire of the Furious Construct
					i(110016),	-- Solar Containment Unit
				},
			}),
			e(967, {	-- Rukhran
				["crs"] = { 76143 },
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, WRIST},
					{"sub", "common_wod_dungeon_drop_tw", 24, HANDS},
				},
				["g"] = {
					i(110032),	-- Beakbreaker Scimitar
					i(110006),	-- Rukhran's Quill
				},
			}),
			e(968, {	-- High Sage Viryx
				["crs"] = { 76266 },
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, SHOULDER},
					{"sub", "common_wod_dungeon_drop_tw", 24, LEGS},
					{"sub", "common_wod_dungeon_drop_tw", 24, FINGER},
				},
				["g"] = {
					TempForceMisc(ig(127772, {	-- Gemcutter Module: Haste
						["requireSkill"] = JEWELCRAFTING,
						["description"] = "Take this recipe to the \"Apexis Gemcutter\" in Tanaan Jungle to learn.  If you have this recipe already you will need to revisit the vendor to cache the recipe.",
					})),
					i(110033),	-- Arcanic of the High Sage
					i(110034),	-- Viryx's Indomitable Bulwark
					i(110011),	-- Fires of the Sun
				},
			}),
		}),
		inst_tw(556, {	-- The Everbloom
			e(1214, {	-- Witherbark
				["crs"] = { 81522 },	-- Witherbark
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, BACK},
					{"sub", "common_wod_dungeon_drop_tw", 24, HANDS},
				},
				["g"] = {
					i(119175),	-- Leafhide Penetrator
					i(109999),	-- Witherbark's Branch
				},
			}),
			e(1207, {	-- Ancient Protectors
				["crs"] = {
					83894,	-- Dulhu
					83893,	-- Earthshaper Telu
					83892,	-- Life Warden Gola
				},
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, WAIST},
					{"sub", "common_wod_dungeon_drop_tw", 24, LEGS},
				},
				["g"] = {
					i(119176),	-- Interloper's Mossy Skull
					i(110009),	-- Leaf of the Ancient Protectors
				},
			}),
			e(1209, {	-- Xeri'tac
				["crs"] = {
					84666,	-- Xeri'tac (before pulling)
					84550,	-- Xeri'tac
				},
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, CHEST},
					{"sub", "common_wod_dungeon_drop_tw", 24, FEET},
				},
				["g"] = {
					i(119173),	-- Dessicated Husk Shield
					i(110019),	-- Xeri'tac's Unhatched Egg Sac
				},
			}),
			e(1208, {	-- Archmage Sol
				["crs"] = { 82682 },	-- Archmage Sol
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, HEAD},
					{"sub", "common_wod_dungeon_drop_tw", 24, WRIST},
				},
				["g"] = {
					i(119174),	-- Sol's Magestaff
					i(110014),	-- Spores of Alacrity
				},
			}),
			e(1210, {	-- Yalnu
				["crs"] = { 83846 },	-- Yalnu
				["sym"] = {
					{"sub", "common_wod_dungeon_drop_tw", 24, NECK},
					{"sub", "common_wod_dungeon_drop_tw", 24, SHOULDER},
					{"sub", "common_wod_dungeon_drop_tw", 24, FINGER},
				},
				["g"] = {
					i(119181),	-- Hoof of Yalnu
					i(110004),	-- Coagulated Genesaur Blood
				},
			}),
		}),
	})),
})));

-- Only instances still in rotation should be in this list.
-- This will prevent instances that don't have Timewalking currently from showing in the mini list.
AddInstancesToRotation(EXPANSION.WOD, {
	-- Raid not originally included with the rotation
	-- It is expected that the raid will be Blackrock Foundry.

	-- Dungeons
	547,	-- Auchindoun
	385,	-- Bloodmaul Slag Mines
	537,	-- Shadowmoon Burial Grounds
	476,	-- Skyreach
	556,	-- The Everbloom

	-- #if AFTER 9.1.5
	536,	-- Grimrail Depot
	-- #else
	558,	-- Iron Docks
	-- #endif
});


-- Legion Timewalking
root(ROOTS.Holidays, n(TIMEWALKING_HEADER, applyevent(EVENTS.TIMEWALKING_LEGION_DUNGEON_EVENT, {
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 }},{
		n(GROUP_FINDER, {
			i(210063, {	-- Invader's Satchel of Helpful Goods // Legion TW Daily Reward
				["description"] = "Rewarded for completing any 'Legion Timewalking' dungeon.\nAvailable once per day.",
				["timeline"] = { ADDED_10_1_7 },
				["g"] = {
					i(113788),	-- Blossoming Belt*
					i(113764),	-- Blossoming Cap*
					i(113766),	-- Blossoming Gloves*
					i(113767),	-- Blossoming Mantle*
					i(113765),	-- Blossoming Robe*
					i(113787),	-- Blossoming Slippers*
					i(113772),	-- Firecracker Belt*		— 12/27/21
					i(113770),	-- Firecracker Boots*		— 12/27/21
					i(113731),	-- Firecracker Cap*			— 12/27/21
					un(REMOVED_FROM_GAME, i(113773)),	-- Firecracker Girdle
					i(113746),	-- Firecracker Gloves*		— 12/27/21
					un(REMOVED_FROM_GAME, i(113733)),	-- Firecracker Helm
					i(113752),	-- Firecracker Mantle*		— 12/27/21
					un(REMOVED_FROM_GAME, i(113771)),	-- Firecracker Slippers
					i(113740),	-- Firecracker Tunic*		— 12/27/21
					un(REMOVED_FROM_GAME, i(113730)),	-- Venomtail Helm
					i(113753),	-- Venomtail Shoulderguards*— 01/14/22
					i(113741),	-- Venomtail Chestguard*	— 01/14/22
					i(113747),	-- Venomtail Gauntlets*		— 01/14/22
					i(113779),	-- Venomtail Girdle			— 01/14/22
					un(REMOVED_FROM_GAME, i(113778)),	-- Venomtail Belt
					i(113777),	-- Venomtail Boots			— 01/14/22
					un(REMOVED_FROM_GAME, i(113776)),	-- Venomtail Treads
					i(113732),	-- Venomtail Visor			— 01/14/22
					i(113738),	-- Kyparite Chestguard
					un(REMOVED_FROM_GAME, i(113784)),	-- Kyparite Belt
					un(REMOVED_FROM_GAME, i(113782)),	-- Kyparite Boots
					i(113785),	-- Kyparite Girdle*			— confirmed by Reaperman on discord on April 20, 2020 (blaze it)
					i(113744),	-- Kyparite Gauntlets		- confirmed by Archvile June 02 2020
					i(113729),	-- Kyparite Headguard
					un(REMOVED_FROM_GAME, i(113728)),	-- Kyparite Helm
					i(113783),	-- Kyparite Stompers*
					i(113750),	-- Kyparite Shoulderguards*
					i(113735),	-- Drifting Cloud Necklace*	— 01/14/22
					i(113755),	-- Ring of Flowing Water*	— 01/14/22
					i(113734),	-- Tranquil Breeze Pendant of the Peerless	— 01/14/22
					i(113756),	-- Loop of Inner Clarity*	— 01/14/22
				},
			}),
			i(187906, {	-- Owl Serpent Soul (SS!)
				["description"] = "Can drop from the last boss of any 'Legion Timewalking' dungeon if you are aligned with the 'Night Fae Covenant'.",
			}),
			i(187611, {	-- Whispering Felflame Crystal
				["description"] = "Drops from the last boss of any 'Legion Timewalking' dungeon.",
			}),
		}),
		n(QUESTS, {
			-- TW Legion Quest under level 80
			q(86564, {	-- A Fel Journey Through Time
				["provider"] = { "n", 180899 },	-- Aridormi
				["coord"] = { 68.6, 49.2, LEGION_DALARAN },
				["timeline"] = { ADDED_11_0_7 },
				["weekly"] = true,
				["lockCriteria"] = { 1, "lvl", 80 },
				["g"] = {
					i(232877, {	-- Timely Goodie Bag
						["sym"] = {
							{ "select", "itemID", 229355},	-- Chromie's Premium Goodie Bag
							{ "pop" },
						},
					}),
				},
			}),
			q(64710, {	-- Whispering Felflame Crystal
				["provider"] = { "i", 187611 },	-- Whispering Felflame Crystal
				["isWeekly"] = true,
				["groups"] = {
					currency(TIMEWARPED_BADGE),
				},
			}),
		}),
		n(VENDORS, {
			n(180899, {	-- Aridormi <Timewalking Vendor>
				["coord"] = { 68.60, 49.20, LEGION_DALARAN },
				["g"] = {
					n(ARMOR, {
						filter(CLOTH, {
							i(187580, {	-- Nar'thalas Ceremonial Legwraps
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(187579, {	-- Nar'thalas Ceremonial Tunic
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(187581, {	-- Nar'thalas Scrollmantle
								["cost"] = {{ "c", TIMEWARPED_BADGE, 35 }},
							}),
						}),
						filter(LEATHER, {
							i(187583, {	-- Thorignir Breeches
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(187582, {	-- Thorignir Heartguard
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(187584, {	-- Thorignir Spaulders
								["cost"] = {{ "c", TIMEWARPED_BADGE, 35 }},
							}),
						}),
						filter(MAIL, {
							i(187585, {	-- Leyguard Cuirass
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(187586, {	-- Leyguard Greaves
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(187587, {	-- Leyguard Mantle
								["cost"] = {{ "c", TIMEWARPED_BADGE, 35 }},
							}),
						}),
						filter(PLATE, {
							i(187588, {	-- Black Rook Elite Chestguard
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(187589, {	-- Black Rook Elite Legguards
								["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							}),
							i(187590, {	-- Black Rook Elite Shoulderplates
								["cost"] = {{ "c", TIMEWARPED_BADGE, 35 }},
							}),
						}),
					}),
					filter(COSMETIC, {
						i(234954, {	-- Corrupted Knot
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
							["timeline"] = { ADDED_11_0_7 },
						}),
						i(234952, {	-- Crux of Blind Faith
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
							["timeline"] = { ADDED_11_0_7, REMOVED_11_1_5 }, -- EU users have reported it absent from the vendor (?)
						}),
						i(234953, {	-- Edge of the First Blade
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
							["timeline"] = { ADDED_11_0_7, REMOVED_11_1_5 }, -- EU users have reported it absent from the vendor (?)
						}),
						iensemble(234946, {	-- Ensemble: Broken Shore Battlemender's Gear
							["cost"] = {{ "c", TIMEWARPED_BADGE, 4000 }},
							["timeline"] = { ADDED_11_0_7 },
						}),
						iensemble(234947, {	-- Ensemble: Drake Hunter's Kit
							["cost"] = {{ "c", TIMEWARPED_BADGE, 2500 }},
							["timeline"] = { ADDED_11_0_7 },
						}),
						iensemble(234948, {	-- Ensemble: Drekirjar Warrior's Battlegear
							["cost"] = {{ "c", TIMEWARPED_BADGE, 2500 }},
							["timeline"] = { ADDED_11_0_7 },
						}),
						iensemble(234945, {	-- Ensemble: Invasion Stalker's Guise
							["cost"] = {{ "c", TIMEWARPED_BADGE, 4000 }},
							["timeline"] = { ADDED_11_0_7 },
						}),
						iensemble(188209, {	-- Ensemble: Ravencrest's Battleplate
							["cost"] = {{ "c", TIMEWARPED_BADGE, 500 }},
						}),
						i(234958, {	-- Fenryr's Bloodstained Fang
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
							["timeline"] = { ADDED_11_0_7 },
						}),
						i(234955, {	-- Hate-Sculpted Magma
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1800 }},
							["timeline"] = { ADDED_11_0_7 },
						}),
						i(234949, {	-- Howling Echoes
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1800 }},
							["timeline"] = { ADDED_11_0_7 },
						}),
						i(234957, {	-- Monstrous Gluttony
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
							["timeline"] = { ADDED_11_0_7 },
						}),
						i(234959, {	-- Key to the Halls
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
							["timeline"] = { ADDED_11_0_7 },
						}),
						i(227294, {	-- Ravencrest's Wrath
							["modID"] = 14,
							["cost"] = {{ "c", TIMEWARPED_BADGE, 2500 }},
							["timeline"] = { ADDED_11_0_7 },
						}),
						i(187562, {	-- Replica Aegis of Aggramar
							["cost"] = {{ "c", TIMEWARPED_BADGE, 3000 }},
						}),
						i(234956, {	-- Rod of Crystalline Energies
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1200 }},
							["timeline"] = { ADDED_11_0_7 },
						}),
						i(227287, {	-- Skovald's Resolve
							["modID"] = 14,
							["cost"] = {{ "c", TIMEWARPED_BADGE, 2000 }},
							["timeline"] = { ADDED_11_0_7 },
						}),
					}),
					filter(MISC, {
						i(152960, {	-- Argussian Reach Insignia
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(152957, {	-- Army of the Light Insignia
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(146943, {	-- Court of Farondis Insignia
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(146942, {	-- Dreamweaver Insignia
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(146944, {	-- Highmountain Insignia
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(146950, {	-- Legionfall Insignia
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(146946, {	-- Nightfallen Insignia
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(146941, {	-- Valarjar Insignia
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(146945, {	-- Wardens Insignia
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						-- Materials
						i(187598, {	-- Broken Isles Cloth Delivery
							["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
						}),
						i(187604, {	-- Broken Isles Enchantment Delivery
							["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
						}),
						i(187597, {	-- Broken Isles Fish Delivery
							["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							["g"] = {
								i(138777),	-- Drowned Mana
							},
						}),
						i(187605, {	-- Broken Isles Gem Delivery
							["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
						}),
						i(187599, {	-- Broken Isles Herb Delivery
							["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
						}),
						i(187601, {	-- Broken Isles Leather Delivery
							["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
						}),
						i(187596, {	-- Broken Isles Meat Delivery
							["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
							["g"] = {
								i(151653),	-- Broken Isles Recipe Scrap
							},
						}),
						i(187600, {	-- Broken Isles Ore Delivery
							["cost"] = {{ "c", TIMEWARPED_BADGE, 25 }},
						}),
						i(141018, {	-- Sargerei Blood Vessel
							["cost"] = {{ "c", TIMEWARPED_BADGE, 150 }},
							["g"] = {
								i(124124),	-- Blood of Sargeras
							},
						}),
					}),
					filter(MOUNTS, {
						i(187595, {	-- Val'sharah Hippogryph (MOUNT!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 5000 }},
						}),
						i(234721, {	-- Ur'zul Fleshripper Bridle (MOUNT!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 5000 }},
							["timeline"] = { ADDED_11_0_7 },
						}),
					}),
					filter(TOYS, {
						i(187591, {	-- Nightborne Guard's Vigilance (TOY!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1500 }},
						}),
						i(207114, {	-- Grimoire of the Fiendish Imp (CI!)
							["cost"] = {{ "c", TIMEWARPED_BADGE, 1000 }},
							["timeline"] = { ADDED_10_1_5 },
						}),
					}),
					n(WEAPONS, {
						i(187566, {	-- Arcsmasher
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(187565, {	-- Argussian Reach Longbow
							["cost"] = {{ "c", TIMEWARPED_BADGE, 100 }},
						}),
						i(187567, {	-- Nightborne Arcsaber
							["cost"] = {{ "c", TIMEWARPED_BADGE, 50 }},
						}),
						i(187564, {	-- Nightborne Arcshield
							["cost"] = {{ "c", TIMEWARPED_BADGE, 35 }},
						}),
						i(187563, {	-- Suramar Guard's Shield
							["cost"] = {{ "c", TIMEWARPED_BADGE, 35 }},
						}),
						i(187578, {	-- Warpcaster's Staff
							["cost"] = {{ "c", TIMEWARPED_BADGE, 100 }},
						}),
					}),
				},
			}),
		}),
		inst_tw(740, {	-- Black Rook Hold
			e(1518, {	-- Amalgam of Souls
				["creatureID"] = 98542,	-- Amalgam of Souls
				["g"] = {
					i(136714),	-- Amalgam's Seventh Spine
					i(136976),	-- Etheldrin's Breastplate
					i(134437),	-- Harrowing Soulspun Bracers
					i(134469),	-- Midnight Reaper Handwraps
					i(139242),	-- Raven's Vil Gloves
					i(139246),	-- Ravencourt Formal Robes
					i(139241),	-- Rook Footman's Warboots
					i(139245),	-- Shadow Archer's Spaulders
					i(136977),	-- Shadowfeather Shawl
					i(134442),	-- Tooled Rivermoor Boots
				},
			}),
			e(1653, {	-- Illysanna Ravencrest
				["creatureID"] = 98696,	-- Illysanna Ravencrest
				["g"] = {
					i(134412),	-- Cloak of Unwavering Loyalty
					i(136978),	-- Ember of Nullification
					i(134519),	-- Ravencrest Bonecrush Gauntlets
					i(134490),	-- Ring of Contempt
					i(134419),	-- Slippers of Heedless Sacrifice
					i(136724),	-- Soul-Torn Fury Cinch
					i(134440),	-- Soulstarve Hood
				},
			}),
			e(1664, {	-- Smashspite the Hateful
				["creatureID"] = 98949,	-- Smashspite the Hateful
				["g"] = {
					i(134528),	-- Band of Callous Dominance
					i(134426),	-- Collar of Raking Claws
					i(134483),	-- Fel-Hammered Greaves
					i(134373),	-- Felbat Leather Vest
					i(134507),	-- Leadfoot Earthshakers
					i(134390),	-- Mardum Chain Vest
					i(134391),	-- Netherwhisper Cinch
					i(134362),	-- Portalguard Wristguard
					i(136979),	-- Shorn Batbrood Cuffs
					i(136715),	-- Spiked Counterweight
				},
			}),
			e(1672, {	-- Lord Kur'talos Ravencrest
				["crs"] = {
					98970,	-- Dantalionax
					98965,	-- Kur'talos Ravencrest
				},
				["g"] = {
					i(136716),	-- Caged Horror
					i(136770),	-- Drape of the Raven Lord
					i(134370),	-- Felbat Leather Leggings
					i(134431),	-- Latosius's Blasting Gloves
					i(134384),	-- Madrum Chain Wristclamp
					i(134451),	-- Legguards of Endless Horrors
					i(134394),	-- Netherwhisper Leggings
					i(134510),	-- Pauldrons of Ancient Command
					i(134358),	-- Portalguard Helm
					i(134499),	-- Raven Filigree Pendant
					i(139243),	-- Raven's Veil Belt
					i(139247),	-- Ravencourt Formal Mantle
					i(134477),	-- Ravencrest's Unerring Striders
					i(139240),	-- Rook Footman's Legplates
					i(139244),	-- Shadow Archer's Helm
				},
			}),
		}),
		inst_tw(800, {	-- Court of Stars
			e(1718, {	-- Patrol Captain Gerdo
				["creatureID"] = 104215,	-- Patrol Captain Gerdo
				["g"] = {
					i(134268),	-- Arcane Defender's Gauntlets
					i(134415),	-- Arcanist's Resonant Robes
					i(137483),	-- Cape of the Duskwatch
					i(137482),	-- Duskwatch Guard's Boots
					i(134480),	-- Epaulets of Deceitful Intent
					i(137484),	-- Flask of the Solemn Night
					i(137480),	-- Guileful Intruder Handguards
					i(134296),	-- Ley Dragoon's Wristbraces
					i(134308),	-- Manawracker Sandals
					i(134280),	-- Swordsinger's Wristguards
				},
			}),
			e(1719, {	-- Talixae Flamewreath
				["creatureID"] = 104217,	-- Talixae Flamewreath
				["g"] = {
					i(134529),	-- Chain of Scorched Bones
					i(134473),	-- Collar of Fiery Allegiance
					i(137488),	-- Cord of Wicked Pyromania
					i(134374),	-- Felbat Leather Pauldrons
					i(134460),	-- Fevermelt Legguards
					i(137485),	-- Infernal Writ
					i(134503),	-- Inferno Breastplate
					i(134385),	-- Mardum Chain Gloves
					i(134392),	-- Netherwhisper Hood
					i(134360),	-- Portalguard Shoulders
				},
			}),
			e(1720, {	-- Advisor Melandrus
				["creatureID"] = 104218,	-- Advisor Melandrus
				["g"] = {
					i(134432),	-- Amice of the Unfurling Tempest
					i(134271),	-- Arcane Defender's Pants
					i(137489),	-- Arcane-Bound Gale Chain
					i(137497),	-- Footpads of the Swift Balestra
					i(134513),	-- Helmet of Reverent Loyalty
					i(134542),	-- Jeweled Signet of Melandrus
					i(134298),	-- Ley Dragoon's Stompers
					i(137498),	-- Luminous Bladesworn Hauberk
					i(134310),	-- Manawracker Bindings
					i(137499),	-- Roaring Breeze Waistguard
					i(137487),	-- Strand of the Stars
					i(137496),	-- Suramar Magistrate Leggings
					i(134287),	-- Swordsinger's Belt
					i(134447),	-- Veil of Unseen Strikes
					i(137486),	-- Windscar Whetstone
				},
			}),
		}),
		inst_tw(762, {	-- Darkheart Thicket
			e(1654, {	-- Archdruid Glaidalis
				["creatureID"] = 96512,	-- Archdruid Glaidalis
				["g"] = {
					i(134487),	-- Arch-Druid's Tainted Seal
					i(139077),	-- Bramblemail Belt
					i(137301),	-- Corrupted Starlight
					i(137300),	-- Gloves of Wretched Lesions
					i(134429),	-- Grove Darkener's Treads
					i(139086),	-- Night Dreamer Crest
					i(139058),	-- Nightsfall Helmet
					i(134423),	-- Poisonroot Belt
					i(134520),	-- Thornscar Wristguards
					i(139071),	-- Tranquil Bough Vest
				},
			}),
			e(1655, {	-- Oakheart
				["creatureID"] = 103344,	-- Oakheart
				["g"] = {
					i(134531),	-- Band of Twisted Bark
					i(137305),	-- Blighted Grasp Bracers
					i(134500),	-- Breastplate of Preservation
					i(121299),	-- Dreadhide Girdle
					i(134452),	-- Epaulets of Desiccated Foliage
					i(137306),	-- Oakheart's Gnarled Root
					i(137304),	-- Oakheart's Trunkwarmers
					i(121325),	-- Terrorweave Gloves
					i(121319),	-- Vilescale Helm
					i(121280),	-- Wracksoul Legplates
				},
			}),
			e(1656, {	-- Dresaron
				["creatureID"] = 99200,	-- Dresaron
				["g"] = {
					i(139082),	-- Bramblemail Greaves
					i(137311),	-- Chain of the Green Flight
					i(137310),	-- Greatbelt of Disruption
					i(139089),	-- Night Dreamer Robe
					i(137312),	-- Nightmare Egg Shell
					i(139056),	-- Nightsfall Gauntlets
					i(137309),	-- Slipstream Shoulderpads
					i(134461),	-- Thermal Bindings
					i(139070),	-- Tranquil Bough Hood
					i(134464),	-- Whelp Handler's Lined Boots
				},
			}),
			e(1657, {	-- Shade of Xavius
				["creatureID"] = 99192,	-- Shade of Xavius
				["g"] = {
					i(134448),	-- Ashen Satyr Leggings
					i(137321),	-- Burning Sky Pauldrons
					i(134405),	-- Cloak of Fading Echoes
					i(134504),	-- Curserunner Soulcrushers
					i(121293),	-- Dreadhide Boots
					i(134462),	-- Dream Bolstered Chestguard
					i(137320),	-- Gloves of Vile Defiance
					i(137322),	-- Mantle of the Resolute Champion
					i(137319),	-- Paranoid Sprinters
					i(134537),	-- Signet of the Highborne Magi
					i(121326),	-- Terrorweave Leggings
					i(121316),	-- Vilescale Bracers
					i(121276),	-- Wracksoul Chestplate
					i(137314),	-- Wristbands of Cursed Torment
					i(137315),	-- Writhing Heart of Darkness
				},
			}),
		}),
		inst_tw(716, {	-- Eye of Azshara
			e(1480, {	-- Warlord Parjesh
				["creatureID"] = 91784,	-- Warlord Parjesh
				["g"] = {
					i(134240),	-- Brinewashed Leather Cowl
					i(134223),	-- Coralplate Chestguard
					i(134484),	-- Crestrider Conduit Bracers
					i(134492),	-- Hatecoil Commander's Amulet
					i(137362),	-- Parjesh's Medallion
					i(137361),	-- Roaring Shellbreaker Greatbelt
					i(134251),	-- Sea Stalker's Cinch
					i(134261),	-- Seawitch Gloves
					i(134441),	-- Shellshock Footguards
					i(137360),	-- Shoulderpads of Crashing Waves
				},
			}),
			e(1490, {	-- Lady Hatecoil
				["creatureID"] = 91789,	-- Lady Hatecoil
				["g"] = {
					i(134238),	-- Brinewashed Leather Pants
					i(134230),	-- Coralplate Wristguard
					i(134433),	-- Cord of the Sea-Caller
					i(137364),	-- Crashing Oceantide Mantle
					i(134471),	-- Helm of Endless Dunes
					i(134505),	-- Horizon Line Warboots
					i(134253),	-- Sea Stalker's Gloves
					i(134525),	-- Seal of the Nazjatar Empire
					i(134263),	-- Seawitch Robes
					i(137367),	-- Stormsinger Fulmination Charge
				},
			}),
			e(1479, {	-- Serpentrix
				["creatureID"] = 91808,	-- Serpentrix
				["g"] = {
					i(134239),	-- Brinewashed Leather Grips
					i(134228),	-- Coraplate Pauldrons
					i(134465),	-- Hydra Scale Sabatons
					i(134256),	-- Sea Stalker's Leggings
					i(134260),	-- Seawitch Hood
					i(134508),	-- Stormwake Handguards
					i(137373),	-- Tempered Egg of Serpentrix
					i(134438),	-- Tunic of the Pitiless Monstrosity
					i(137372),	-- Wristbands of the Swirling Deeps
				},
			}),
			e(1491, {	-- King Deepbeard
				["creatureID"] = 91797,	-- King Deepbeard
				["g"] = {
					i(134539),	-- Braided Silver Ring
					i(137368),	-- Breastplate of Ten Lashes
					i(137369),	-- Giant Ornamental Pearl
					i(134514),	-- Keelhauler Legplates
					i(134406),	-- Mainsail Cloak
					i(134428),	-- Rising Ocean Legwraps
					i(134456),	-- Taut Halyard Waistband
				},
			}),
			e(1492, {	-- Wrath of Azshara
				["creatureID"] = 96028,	-- Wrath of Azshara
				["g"] = {
					i(134532),	-- Band of Fused Coral
					i(134237),	-- Brinewashed Leather Boots
					i(137378),	-- Bottled Hurricane
					i(134512),	-- Casque of the Deep
					i(134225),	-- Coralplate Girdle
					i(134459),	-- Cuffs of the Arcane Storm
					i(134255),	-- Sea Stalker's Hood
					i(134259),	-- Seawitch Cinch
					i(134417),	-- Slippers of Martyrdom
					i(134497),	-- Stormcharged Choker
					i(134478),	-- Thundercrush Pauldrons
				},
			}),
		}),
		inst_tw(767, {	-- Neltharion's Lair
			e(1662, {	-- Rokmora
				["creatureID"] = 91003,	-- Rokmora
				["g"] = {
					i(134481),	-- Boulderbuckle Strap
					i(137337),	-- Deepfurrow Bracers
					i(139095),	-- Greystone Belt
					i(139105),	-- Rivermane Sandals
					i(134427),	-- Riverride Legwraps
					i(137338),	-- Shard of Rokmora
					i(139121),	-- Skyhorn Mantle
					i(139130),	-- Sunfrost Wristwraps
					i(134491),	-- Understone Gorget
					i(137336),	-- Vest of Rupturing Diamonds
				},
			}),
			e(1665, {	-- Ularogg Cragshaper
				["creatureID"] = 91004,	-- Ularogg Cragshaper
				["g"] = {
					i(134164),	-- Bitestone Wristwraps
					i(137341),	-- Cragshaper's Fitted Hood
					i(134443),	-- Gravelworn Handguards
					i(134530),	-- Loop of Vitriolic Intent
					i(137342),	-- Rock Solid Legplates
					i(134141),	-- Rockbound Sabatons
					i(134177),	-- Roggthread Mantle
					i(134152),	-- Steelgazer Hide Hood
					i(137344),	-- Talisman of the Cragshaper
					i(137354),	-- Tunic of Screaming Earth
				},
			}),
			e(1673, {	-- Naraxas
				["creatureID"] = 91005,	-- Naraxas
				["g"] = {
					i(134524),	-- Band of the Wyrm Matron
					i(137348),	-- Gauntlets of Innumerable Barbs
					i(137349),	-- Naraxas' Spiked Tongue
					i(134416),	-- Offal Galoshes
					i(134408),	-- Putrid Carapace
					i(134511),	-- Subterranean Horror Faceguard
					i(134458),	-- Wristbands of Rousing Violence
				},
			}),
			e(1687, {	-- Dargrul
				["creatureID"] = 91007,	-- Dargrul
				["g"] = {
					i(134166),	-- Bitestone Boots
					i(134495),	-- Chain of the Underking
					i(137353),	-- Charskin Legguards
					i(134474),	-- Faultline Leggings
					i(134420),	-- Gloves of the Mountain Conquest
					i(137357),	-- Mark of Dargrul
					i(134470),	-- Mountain Throne Coif
					i(134135),	-- Rockbound Chestguard
					i(134171),	-- Roggthread Cord
					i(137355),	-- Rumblestone Guantlets
					i(134455),	-- Sinister Ashfall Cord
					i(134154),	-- Steelgazer Hide Mantle
					i(134517),	-- Tremorguard Pauldrons
					i(137352),	-- Tunic of Smoldering Ire
				},
			}),
		}),
		inst_tw(707, {	-- Vault of the Wardens
			e(1467, {	-- Tirathon Saltheril
				["creatureID"] = 95885,	-- Tirathon Saltheril
				["g"] = {
					i(134369),	-- Felbat Leather Boots
					i(137509),	-- Glaivemaster's Studded Grips
					i(137502),	-- Hood of Indignation
					i(134390),	-- Mardum Chain Vest
					i(137524),	-- Mortar Guard Shoulderplates
					i(134398),	-- Netherwhisper Wristguard
					i(134362),	-- Portalguard Wristguard
					i(137532),	-- Seal of Saltheril
					i(137517),	-- Striders of Furious Flight
					i(137537),	-- Tirathon's Betrayal
				},
			}),
			e(1695, {	-- Inquisitor Tormentorum
				["creatureID"] = 96015,	-- Inquisitor Tormentorum
				["g"] = {
					i(137503),	-- Amice of Cruel Laughter
					i(137525),	-- Blood-Spattered Gauntlets
					i(137530),	-- Drape of Vile Misfortune
					i(137511),	-- Hood of the Blind Executioner
					i(137518),	-- Leggings of Biting Links
					i(137538),	-- Orb of Torment
				},
			}),
			e(1468, {	-- Ash'golm
				["creatureID"] = 95886,	-- Ash'golm
				["g"] = {
					i(139468),	-- Bindings of the Windlord (rogue appearance)
					i(137510),	-- Charskin Mantle
					i(137526),	-- Crown of Ash
					i(137539),	-- Faulty Countermeasure
					i(137512),	-- Flame Juggler's Armbands
					i(137504),	-- Flameheart Vestment
					i(137519),	-- Lavabreaker Gauntlets
					i(137535),	-- Lavadrip Pendant
					i(137505),	-- Leggings of the Third Degree
					i(137523),	-- Magmacrusher Girdle
					i(137520),	-- Permafrost Waistband
				},
			}),
			e(1469, {	-- Glazer
				["creatureID"] = 95887,	-- Glazer
				["g"] = {
					i(137516),	-- Collar of Blindsight
					i(137540),	-- Concave Reflecting Lens
					i(137513),	-- Girdle of Lidless Sight
					i(137506),	-- Gloves of Unseen Evil
					i(137536),	-- Pendant of the Watchful Eye
					i(137527),	-- Polished Jade Chestguard
					i(137533),	-- Ring of Minute Mirrors
				},
			}),
			e(1470, {	-- Cordana Felsong
				["creatureID"] = 95888,	-- Cordana Felsong
				["g"] = {
					i(137522),	-- Bracers of Twisted Revelation
					i(137514),	-- Chestguard of Insidious Desire
					i(137531),	-- Cloak of Enthralling Darkness
					i(134371),	-- Felbat Leather Gloves
					i(137528),	-- Legguards of Illusory Burdens
					i(134386),	-- Mardum Chain Boots
					i(137541),	-- Moonlit Prism
					i(134392),	-- Netherwhisper Hood
					i(137529),	-- Pathfinders of Dark Omens
					i(134356),	-- Portalguard Gauntlets
					i(137508),	-- Shadewalker Footwraps
					i(137521),	-- Shoulderguards of Shunned Duty
					i(137507),	-- Waistband of Spiritual Doom
					i(137515),	-- Warden's Martial Greaves
				},
			}),
		}),
	})),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
		applyevent(EVENTS.TIMEWALKING, n(TIMEWALKING_HEADER, {
			q(78204),	-- Gain Mastery of Timeways for 5 weeks during Turbulent Timeways I (spellID 423861)
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_7 } }, {
		applyevent(EVENTS.TIMEWALKING, n(TIMEWALKING_HEADER, {
			q(85877),	-- Gain Mastery of Timeways for 5 weeks during Turbulent Timeways II (spellID 471544)
		})),
	})),
});

-- Only instances still in rotation should be in this list.
-- This will prevent instances that don't have Timewalking currently from showing in the mini list.
AddInstancesToRotation(EXPANSION.LEGION, {
	-- Raid not originally included with the rotation
	-- It is expected that the raid will be Nighthold.

	-- Dungeons
	740,	-- Black Rook Hold
	800,	-- Court of Stars
	762,	-- Darkheart Thicket
	716,	-- Eye of Azshara
	767,	-- Neltharion's Lair
	707,	-- Vault of the Wardens
});
--[[
-- Post Processors
table.insert(POST_PROCESSING_FUNCTIONS, function()
	print("Assigning mapID and creatureIDs for Infinite Timereaver...");
	root(ROOTS.Holidays, InfiniteTimereaver);
end);
]]--
