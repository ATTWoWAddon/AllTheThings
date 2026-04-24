---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local GORNII_GROUPS, PHEA_GROUPS = {}, {};
local EGOMIS_GROUPS = {
	i(22565, {	-- Formula: Large Prismatic Shard (RECIPE!)
		["isLimited"] = true,
	}),
	i(22562, {	-- Formula: Superior Mana Oil (RECIPE!)
		["isLimited"] = true,
	}),
	i(22563, {	-- Formula: Superior Wizard Oil (RECIPE!)
		["isLimited"] = true,
	}),
};

local REDEMPTION = recipe(7328);	-- Redemption
root(ROOTS.Zones, m(KALIMDOR, applyclassicphase(TBC_PHASE_ONE, {
	m(THE_EXODAR, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {
		["lore"] = "The Exodar is the capital city of the Draenei. It is located in the westernmost part of Azuremyst Isle. The Exodar's faction leader is Prophet Velen, who is located near the battlemasters in the Vault of Lights.",
		["icon"] = 255137,
		["isRaid"] = true,
		["groups"] = {
			battlepets({
				["sym"] = {{"select","speciesID",
					464,	-- Grey Moth (PET!)
					385,	-- Mouse (PET!)
				}},
			}),
			n(FACTIONS, {
				faction(FACTION_EXODAR, {	-- Exodar
					-- #if AFTER CATA
					["provider"] = { "i", 45580 },	-- Exodar Tabard
					-- #endif
					["OnTooltip"] = [[_.OnTooltipDB.RuneclothTurnIns]],
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(94, {	-- The Exodar
					["cr"] = 17555,	-- Stephanos <Hippogryph Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 54.5, 36.3, THE_EXODAR },
						-- #else
						{ 68.3, 63.8, THE_EXODAR },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			-- #if NOT ANYCLASSIC
			-- CRIEVE NOTE: I'm going to solve this a different way eventually.
			o(207322, {	-- Hero's Call Board
				["coord"] = { 55.5, 47.9, THE_EXODAR },
				["timeline"] = { ADDED_4_0_1 },
				["sym"] = HEROS_CALL_BOARD_SYMLINK,
				["races"] = ALLIANCE_ONLY,
				["skipFill"] = true,
			}),
			-- #endif
			-- #if BEFORE CATA
			n(PROFESSIONS, {
				prof(JEWELCRAFTING, {
					n(19778, {	-- Farii <Jewelcrafting Trainer>
						["coord"] = { 44.8, 24.6, THE_EXODAR },
						["races"] = ALLIANCE_ONLY,
						["groups"] = CLASSIC_JEWELCRAFTING,
					}),
				}),
			}),
			-- #endif
			n(QUESTS, {
				q(10356, {	-- A Donation of Mageweave
					["qg"] = 20604,	-- Dugiru <Alliance Cloth Quartermaster>
					["coord"] = { 63.5, 67.7, THE_EXODAR },
					["timeline"] = { REMOVED_4_0_3},
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(10357, {	-- A Donation of Runecloth
					["qg"] = 20604,	-- Dugiru <Alliance Cloth Quartermaster>
					["coord"] = { 63.5, 67.7, THE_EXODAR },
					["timeline"] = { REMOVED_4_0_3},
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				{	-- A Donation of Silk
					["qg"] = 20604,	-- Dugiru <Alliance Cloth Quartermaster>
					-- #if AFTER TBC
					-- Blizzard did a dumb and moved the other quest from Darnassus.
					["questID"] = 7798,		-- A Donation of Silk [DARN (TBC)]
					-- #else
					["questID"] = 10354,	-- A Donation of Silk [DARN (Classic)]
					-- #endif
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["coord"] = { 63.5, 67.7, THE_EXODAR },
					["timeline"] = { REMOVED_4_0_3},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
				},
				{	-- A Donation of Wool
					["qg"] = 20604,	-- Dugiru <Alliance Cloth Quartermaster>
					-- #if AFTER TBC
					-- Blizzard did a dumb and moved the other quest from Darnassus.
					["questID"] = 7792,		-- A Donation of Wool [DARN (TBC)]
					-- #else
					["questID"] = 10352,	-- A Donation of Wool [DARN (Classic)]
					-- #endif
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["coord"] = { 63.5, 67.7, THE_EXODAR },
					["timeline"] = { REMOVED_4_0_3},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				},
				q(10358, {	-- Additional Runecloth
					["sourceQuest"] = 10357,	-- A Donation of Runecloth
					["qg"] = 20604,	-- Dugiru <Alliance Cloth Quartermaster>
					["coord"] = { 63.5, 67.7, THE_EXODAR },
					["maxReputation"] = { FACTION_EXODAR, EXALTED },	-- Exodar, Exalted.
					["timeline"] = { REMOVED_4_0_3},
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(9551, {	-- Call of Air (1/4) [The Exodar]
					["qg"] = 17219,	-- Sulaa <Shaman Trainer>
					["coord"] = { 32.6, 24.2, THE_EXODAR },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = { DRAENEI },
					["classes"] = { SHAMAN },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(9547, {	-- Call of Air (1/4) [Ironforge]
					["qg"] = 23127,	-- Farseer Javad <Shaman Trainer>
					["coord"] = { 55.2, 29.6, IRONFORGE },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = { DRAENEI },
					["classes"] = { SHAMAN },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(10491, {	-- Call of Air (1/4) [Stormwind City]
					["qg"] = 20407,	-- Farseer Umbrua <Shaman Trainer>
					["coord"] = { 61.8, 83.8, STORMWIND_CITY },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = { DRAENEI },
					["classes"] = { SHAMAN },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(9552, {	-- Call of Air (2/4)
					["sourceQuests"] = {
						9551,	-- Call of Air (1/4) [The Exodar]
						9547,	-- Call of Air (1/4) [Ironforge]
						10491,	-- Call of Air (1/4) [Stormwind City]
					},
					["qg"] = 17204,	-- Farseer Nobundo <Shaman Trainer>
					["coord"] = { 31.0, 27.8, THE_EXODAR },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["maps"] = { AZUREMYST_ISLE },
					["races"] = { DRAENEI },
					["classes"] = { SHAMAN },
					["lvl"] = 30,
				}),
				q(9553, {	-- Call of Air (3/4)
					["sourceQuest"] = 9552,	-- Call of Air (2/4)
					["qg"] = 17431,	-- Velaada
					["coord"] = { 24.8, 35.8, AZUREMYST_ISLE },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = { DRAENEI },
					["classes"] = { SHAMAN },
					["lvl"] = 30,
				}),
				q(9554, {	-- Call of Air (4/4)
					["sourceQuest"] = 9553,	-- Call of Air (3/4)
					["providers"] = {
						{ "n", 17435 },	-- Susurrus
						{ "i", 23843 },	-- Whorl of Air
					},
					["coord"] = { 22.4, 32.6, AZUREMYST_ISLE },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = { DRAENEI },
					["classes"] = { SHAMAN },
					["lvl"] = 30,
					["groups"] = {
						i(5178, {	-- Air Totem
							["description"] = "You must keep this in your bags forever.",
						}),
					},
				}),
				q(9605, {	-- Hippogryph Master Stephanos
					["sourceQuest"] = 9604,	-- On the Wings of a Hippogryph
					["qg"] = 16768,	-- Nurguni
					["coord"] = { 56.8, 49.8, THE_EXODAR },
					["maps"] = {
						-- #if AFTER CATA
						AZUREMYST_ISLE,
						-- #else
						BLOODMYST_ISLE,
						-- #endif
					},
					["cost"] = { { "i", 23903, 1 } },	-- Nurguni's Supplies
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(10, 5, 1),
				}),
				q(10366, {	-- Jol
					["qg"] = 17483,	-- Tullas <Paladin Trainer>
					["coord"] = { 48.4, 49.6, AZUREMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(12, 12, 10),
				}),
				q(32661, {	-- Learn To Ride
					["description"] = "This quest is automatically offered to Draenei upon reaching the specified level.",
					["qg"] = 20914,	-- Aalun <Riding Trainer>
					["coord"] = { 81.4, 52.6, THE_EXODAR },
					["timeline"] = { ADDED_5_2_0, REMOVED_10_1_5 },
					["maps"] = { AZUREMYST_ISLE },
					["races"] = { DRAENEI },
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
					["lvl"] = lvlsquish(20, 20, 10),
				}),
				q(14082, {	-- Learn to Ride at the Exodar
					["description"] = "The pamphlet that starts this quest is sent to Draenei in their Mailbox upon reaching the specified level.",
					["provider"] = { "i", 46879 },	-- Riding Training Pamphlet
					["timeline"] = { ADDED_3_3_0, REMOVED_5_2_0 },
					["races"] = { DRAENEI },
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["lvl"] = lvlsquish(20, 20, 10),
				}),
				q(9598, {	-- Redemption (1/2)
					["sourceQuest"] = 10366,	-- Jol
					["qg"] = 17509,	-- Jol <Paladin Trainer>
					["coord"] = { 38.4, 82.2, THE_EXODAR },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 23926, 1 } },	-- Tome of Divinity
					["classes"] = { PALADIN },
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(12, 12, 10),
				}),
				q(9600, {	-- Redemption (2/2)
					["sourceQuest"] = 9598,	-- Redemption (1/2)
					["qg"] = 17509,	-- Jol <Paladin Trainer>
					["coord"] = { 38.4, 82.2, THE_EXODAR },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BLOODMYST_ISLE },
					["classes"] = { PALADIN },
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(12, 12, 10),
					["groups"] = {
						objective(1, {	-- Young Furbolg Shaman Resurrected
							["provider"] = { "i", 6866 },	-- Symbol of Life
							["coord"] = { 65.0, 77.6, BLOODMYST_ISLE },
							["cr"] = 17542,	-- Young Furbolg Shaman
						}),
						-- #if BEFORE CATA
						REDEMPTION,
						-- #endif
					},
				}),
				q(9606, {	-- Return to Caregiver Chellan
					["sourceQuest"] = 9605,	-- Hippogryph Master Stephanos
					["qg"] = 17555,	-- Stephanos
					["coord"] = { 54.8, 35.8, THE_EXODAR },
					["maps"] = {
						-- #if AFTER CATA
						AZUREMYST_ISLE,
						-- #else
						BLOODMYST_ISLE,
						-- #endif
					},
					["cost"] = { { "i", 23903, 1 } },	-- Nurguni's Supplies
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(10, 5, 1),
				}),
			}),
			n(VENDORS, {
				n(16705, {	-- Altaa <Alchemy Supplies>
					["coord"] = { 28.1, 61.9, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["groups"] =  {
						i(22900, {	-- Recipe: Elixir of Camouflage (RECIPE!)
							["isLimited"] = true,
						}),
						i(23574, {	-- Recipe: Transmute Primal Might (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(16713, {	-- Arras <Blacksmithing Supplies>
					["coord"] = { 61.3, 89.3, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER 4.3.0
					["sym"] = {{ "sub", "common_recipes_vendor", 55684 }},	-- Jordan Smith <Blacksmithing Trainer & Supplies>
					-- #endif
					["groups"] = {
						i(23591, {	-- Plans: Adamantite Cleaver (RECIPE!)
							["isLimited"] = true,
						}),
						i(23592, {	-- Plans: Adamantite Dagger (RECIPE!)
							["isLimited"] = true,
						}),
						i(23590, {	-- Plans: Adamantite Maul (RECIPE!)
							["isLimited"] = true,
						}),
						i(23593, {	-- Plans: Adamantite Rapier (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(17512, {	-- Arred <Jewelcrafting Supplies>
					["coord"] = { 45.5, 25.3, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{ "sub", "common_recipes_vendor", 50480 },	-- Isabel Jones <Jewelcrafting Supplies>
						{"select","itemID",
							7341,	-- Cubic Zirconia Ring
							7340,	-- Flawless Diamond Solitaire
							7339,	-- Miniscule Diamond Ring
							7338,	-- Mood Ring
							7342,	-- Silver Piffeny Band
							7337,	-- The Rock
						},
					},
					["groups"] = {
						i(20854, {	-- Design: Amulet of the Moon (RECIPE!)
							["isLimited"] = true,
						}),
						i(20856, {	-- Design: Heavy Golden Necklace of Battle (RECIPE!)
							["isLimited"] = true,
						}),
						i(21948, {	-- Design: Opal Necklace of Impact (RECIPE!)
							["isLimited"] = true,
						}),
						i(20975, {	-- Design: The Jade Eye (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(16715, {	-- Avelii
					["coord"] = { 48.6, 90.2, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						15808,	-- Fine Light Crossbow
						15809,	-- Heavy Crossbow
						3027,	-- Heavy Recurve Bow
						2506,	-- Hornwood Recurve Bow
						2507,	-- Laminated Recurve Bow
						15807,	-- Light Crossbow
						2505,	-- Polished Shortbow
						3026,	-- Reinforced Bow
						2504,	-- Worn Shortbow
					}},
				}),
				n(16739, {	-- Caregiver Breel <Innkeeper>
					["coord"] = { 59.5, 18.76, THE_EXODAR },	-- The Exobar
					["races"] = ALLIANCE_ONLY,
				}),
				n(20121, {	-- Dekin <Fishing Supplies>
					["coord"] = { 29.5, 20.1, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{ "sub", "common_vendor", 4222 }},	-- Voloren <Fishing Supplies>
				}),
				n(16765, {	-- Ellomin
					["coord"] = { 73.4, 84.6, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2527,	-- Battle Staff
						925,	-- Flail
						1197,	-- Giant Mace
						2030,	-- Gnarled Staff
						2028,	-- Hammer
						928,	-- Long Staff
						852,	-- Mace
						924,	-- Maul
						2532,	-- Morning Star
						854,	-- Quarter Staff
						2026,	-- Rock Hammer
						2524,	-- Truncheon
						2525,	-- War Hammer
						2533,	-- War Maul
						2535,	-- War Staff
					}},
				}),
				n(16722, {	-- Egomis <Enchanting Supplies>
					["coord"] = { 39.9, 40.2, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						-- #if AFTER CATA
						{"sub", "common_recipes_vendor", 1318},	-- Jessara Cordell <Enchanting Supplies>
						-- #endif
						{ "select","itemID",
							20753,	-- Formula: Lesser Wizard Oil (RECIPE!)
							20752,	-- Formula: Minor Mana Oil (RECIPE!)
							20758,	-- Formula: Minor Wizard Oil (RECIPE!)
							-- #if BEFORE CATA
							6342,	-- Formula: Enchant Chest - Minor Mana (RECIPE!)
							-- #endif
							22307,	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
						},
					},
					["groups"] = appendGroups(EGOMIS_GROUPS, {}),
				}),
				n(16657, {	-- Feera <Engineering Supplies>
					["coord"] = { 53.6, 90.8, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(23799, {	-- Schematic: Adamantite Rifle (RECIPE!)
							["isLimited"] = true,
						}),
						applyclassicphase(TBC_PHASE_TWO, i(23815, {	-- Schematic: Adamantite Shell Machine (RECIPE!)
							["timeline"] = { REMOVED_4_0_1 },
							["isLimited"] = true,
						})),
						i(23816, {	-- Schematic: Fel Iron Toolbox (RECIPE!)
							["isLimited"] = true,
						}),
						i(23811, {	-- Schematic: White Smoke Flare (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(20121, {	-- Fingin
					["coord"] = { 52.2, 84.6, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER MOP
					["sym"] = {{"select","itemID",
						4565,	-- Simple Dagger
					}},
					-- #endif
				}),
				n(221817, {	-- Gaal <Blacksmith>
					["coord"] = { 56.6, 81.8, THE_EXODAR},
					["timeline"] = { ADDED_10_2_7 },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						208684,		-- Anchorite's Sorrow
						208755,		-- Ancient Soulpriest's Staff
						208683,		-- Arinor Ritual Baton
						208677,		-- Eredath Crystal Hammer
						208662,		-- Lightforged Seeker
						206195,		-- Path of the Naaru (TOY!)
						208685,		-- Recovered Kaarinos Blade
						208688,		-- Telaasti Mining Pick
						208686,		-- Velenite Claymore
					}},
				}),
				n(16716, {	-- Gornii <Cloth Armor Merchant>
					["coord"] = { 71.5, 91.7, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						16059,	-- Common Brown Shirt
						3428,	-- Common Gray Shirt
						16060,	-- Common White Shirt
						837,	-- Heavy Weave Armor
						3589,	-- Heavy Weave Belt
						3590,	-- Heavy Weave Bracers
						839,	-- Heavy Weave Gloves
						838,	-- Heavy Weave Pants
						840,	-- Heavy Weave Shoes
						3602,	-- Knitted Belt
						3603,	-- Knitted Bracers
						793,	-- Knitted Gloves
						794,	-- Knitted Pants
						792,	-- Knitted Sandals
						795,	-- Knitted Tunic
						3597,	-- Thick Cloth Belt
						3598,	-- Thick Cloth Bracers
						203,	-- Thick Cloth Gloves
						201,	-- Thick Cloth Pants
						202,	-- Thick Cloth Shoes
						200,	-- Thick Cloth Vest
					}},
				}),
				n(16753, {	-- Gotaan
					["coord"] = { 67.6, 96.0, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2424,	-- Brigandine Belt
						2426,	-- Brigandine Boots
						2427,	-- Brigandine Bracers
						2428,	-- Brigandine Gloves
						3894,	-- Brigandine Helm
						2425,	-- Brigandine Leggings
						2423,	-- Brigandine Vest
						2451,	-- Crested Heater Shield
						17190,	-- Ornate Buckler
						8094,	-- Platemail Armor
						8088,	-- Platemail Belt
						8089,	-- Platemail Boots
						8090,	-- Platemail Bracers
						8091,	-- Platemail Gloves
						8092,	-- Platemail Helm
						8093,	-- Platemail Leggings
					}},
				}),
				n(16748, {	-- Haferet <Leatherworking Supplies>
					["coord"] = { 66.6, 73.7, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["sym"] = { {"sub", "common_vendor", 5565} },	-- Jillian Tanner <Leatherworking Supplies>
					["groups"] = {
						i(25726, {	-- Pattern: Comfortable Insoles (RECIPE!)
							["isLimited"] = true,
						}),
						i(25720, {	-- Pattern: Heavy Knothide Leather
							["timeline"] = { REMOVED_3_2_0},
							["requireSkill"] = LEATHERWORKING,
							["isLimited"] = true,
							["f"] = RECIPES,
						}),
					},
				}),
				n(16766, {	-- Issca <Tabard Vendor>
					["coord"] = { 53.8, 67.2, THE_EXODAR },
					["sym"] = { { "sub", "common_vendor", 5193 } },	-- Rebecca Laughlin <Tabard Designer>
					["races"] = ALLIANCE_ONLY,
				}),
				n(50306, {	-- Kadu <Exodar Quartermaster>
					["coord"] = { 54.8, 36.8, THE_EXODAR },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(45580, {	-- Exodar Tabard
							["timeline"] = { ADDED_3_1_0 },
						}),
						i(64889, {	-- Mantle of Exodar
							["minReputation"] = { FACTION_EXODAR, EXALTED },	-- Exodar, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64890, {	-- Cape of Exodar
							["minReputation"] = { FACTION_EXODAR, EXALTED },	-- Exodar, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64891, {	-- Shroud of Exodar
							["minReputation"] = { FACTION_EXODAR, EXALTED },	-- Exodar, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67527, {	-- Exodar Satchel
							["minReputation"] = { FACTION_EXODAR, REVERED },	-- Exodar, Revered.
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				n(16747, {	-- Mahri
					["coord"] = { 70.6, 92.2, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						236,	-- Cured Leather Armor
						1849,	-- Cured Leather Belt
						238,	-- Cured Leather Boots
						1850,	-- Cured Leather Bracers
						239,	-- Cured Leather Gloves
						237,	-- Cured Leather Pants
						1839,	-- Rough Leather Belt
						796,	-- Rough Leather Boots
						1840,	-- Rough Leather Bracers
						797,	-- Rough Leather Gloves
						798,	-- Rough Leather Pants
						799,	-- Rough Leather Vest
						1843,	-- Tanned Leather Belt
						843,	-- Tanned Leather Boots
						1844,	-- Tanned Leather Bracers
						844,	-- Tanned Leather Gloves
						846,	-- Tanned Leather Jerkin
						845,	-- Tanned Leather Pants
					}},
				}),
				n(16751, {	-- Merran <Mining Supplies>
					["coord"] = { 59.9, 88.6, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{ "sub", "common_vendor", 4256 }},	-- Golnir Bouldertoe <Mining Supplies>
				}),
				n(16735, {	-- Muhaa
					["coord"] = { 45.8, 89.2, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						3024,	-- Bkp 2700 Enforcer
						3023,	-- Large Bore Blunderbuss
						2509,	-- Ornate Blunderbuss
						2511,	-- Hunter's Boomstick
					}},
				}),
				n(16767, {	-- Neii <Tailoring Supplies>
					["coord"] = { 64.7, 68.5, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER CATA
					["sym"] = {{ "sub", "common_vendor", 5154 }},	-- Poranna Snowbraid <Tailoring Supplies>
					-- #endif
					["groups"] = {
						i(21892),	-- Pattern: Bolt of Imbued Netherweave (RECIPE!)
						i(21894, {	-- Pattern: Bolt of Soulcloth (RECIPE!)
							["isLimited"] = true,
						}),
						i(21896),	-- Pattern: Netherweave Robe (RECIPE!)
						i(21897),	-- Pattern: Netherweave Tunic (RECIPE!)
					},
				}),
				n(16632, {	-- Oss
					["coord"] = { 46.8, 60.4, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						5239,	-- Blackbone Wand
						5210,	-- Burning Wand
						5236,	-- Combustible Wand
						5211,	-- Dusk Wand
						5209,	-- Gloom Wand
						5347,	-- Pestilent Wand
						5238,	-- Pitchwood Wand
						5208,	-- Smoldering Wand
					}},
				}),
				n(16718, {	-- Phea <Cooking Supplies>
					["coord"] = { 54.4, 26.3, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(PHEA_GROUPS, {}),
				}),
				n(21019, {	-- Sixx <Moth Keeper>
					["coord"] = { 30.1, 33.8, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(29901),	-- Blue Moth (PET!)
						i(29904),	-- White Moth (PET!)
						i(29903),	-- Yellow Moth (PET!)
					},
				}),
				n(30716, {	-- Thoth <Inscription Trainer>
					["coord"] = { 40.5, 39.8, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["timeline"] = { ADDED_3_0_2 },
					["groups"] = {
						i(137789, {	-- Technique: Songs of the Legion (RECIPE!)
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				n(17584, {	-- Torallius the Pack Handler <Elekk Breeder>
					["coord"] = { 81.5, 51.4, THE_EXODAR },
					-- Available to Draenei without faction requirements.
					["minReputation"] = { FACTION_EXODAR, EXALTED },	-- Exodar, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. DRAENEI .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(29745),	-- Great Blue Elekk (MOUNT!)
						i(29746),	-- Great Green Elekk (MOUNT!)
						i(29747),	-- Great Purple Elekk (MOUNT!)
						i(28481),	-- Brown Elekk (MOUNT!)
						i(29743),	-- Purple Elekk (MOUNT!)
						i(29744),	-- Gray Elekk (MOUNT!)
					},
				}),
				n(16762, {	-- Treall
					["coord"] = { 68.2, 96.2, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						17187,	-- Banded Buckler
						1201,	-- Dull Heater Shield
						2446,	-- Kite Shield
						2445,	-- Large Metal Shield
						2129,	-- Large Round Shield
						17192,	-- Reinforced Targe
						17188,	-- Ringed Buckler
						17184,	-- Small Shield
						17186,	-- Small Targe
						1202,	-- Wall Shield
					}},
				}),
				n(16714, {	-- Ven
					["coord"] = { 69.8, 89.4, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						-- added all
						926,	-- Battle Axe
						2025,	-- Bearded Axe
						2520,	-- Broadsword
						1198,	-- Claymore
						2029,	-- Cleaver
						851,	-- Cutlass
						922,	-- Dacian Falx
						927,	-- Double Axe
						2024,	-- Espadon
						2528,	-- Falchion
						852,	-- Hatched
						2207,	-- Jambiya
						2209,	-- Kris
						923,	-- Longsword
						2526,	-- Main Gauche
						2208,	-- Poniad
						2534,	-- Rondel
						2027,	-- Scimitar
						1196,	-- Tabar
					}},
				}),
				n(16750, {	-- Yil
					["coord"] = { 67.6, 94.6, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						847,	-- Chainmail Armor
						1845,	-- Chainmail Belt
						849,	-- Chainmail Boots
						1846,	-- Chainmail Bracers
						850,	-- Chainmail Gloves
						848,	-- Chainmail Pants
						2392,	-- Light Mail Armor
						2393,	-- Light Mail Belt
						2395,	-- Light Mail Boots
						2396,	-- Light Mail Bracers
						2397,	-- Light Mail Gloves
						2394,	-- Light Mail Leggings
						1853,	-- Scalemail Belt
						287,	-- Scalemail Boots
						1852,	-- Scalemail Bracers
						718,	-- Scalemail Gloves
						286,	-- Scalemail Pants
						285,	-- Scalemail Vest
					}},
				}),
			}),
		},
	})),
})));

-- Remove the phase requirement from Redemption.
REDEMPTION.u = nil;

-- Add in items that aren't supposed to be marked with a phase release.
for i,o in ipairs({
	i(16059),	-- Common Brown Shirt
	i(3428),	-- Common Gray Shirt
	i(16060),	-- Common White Shirt
}) do table.insert(GORNII_GROUPS, o); end
for i,o in ipairs({
	i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
	i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
}) do table.insert(PHEA_GROUPS, o); end
for i,o in ipairs({
	i(20753),	-- Formula: Lesser Wizard Oil (RECIPE!)
	i(20752),	-- Formula: Minor Mana Oil (RECIPE!)
	i(20758),	-- Formula: Minor Wizard Oil (RECIPE!)
	i(22307),	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
}) do table.insert(EGOMIS_GROUPS, o); end
