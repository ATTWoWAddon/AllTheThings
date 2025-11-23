---------------------------------------------------
--         Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if AFTER 4.0.3
ExportDB.OnTooltipDB.ForRatchet = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		if reputation < 20999 then
			addRepInfo(tooltipInfo, reputation, "Kill Pirates in Ratchet (To 11999 Honored)", 5, 20999);
		end
		addRepInfo(tooltipInfo, reputation, "Kill Pirates in Tanaris", 2.5, 42000);
	end
end]];
root(ROOTS.Zones, m(KALIMDOR, {
	m(NORTHERN_BARRENS, {
		["lore"] = "Northern Barrens is a dry grassy zone, dotted with farms and few lush oasis. It is primarily a low-level zone for Horde players, but Alliance players can travel to the Steamwheedle Cartel city of Ratchet.",
		["icon"] = 236717,
		["timeline"] = { ADDED_4_0_3 },
		["maps"] = { 11 },	-- Wailing Caverns (Outside instance)
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(750, {	-- Explore Northern Barrens
					["timeline"] = { ADDED_4_0_3 },
				}),
				ach(4933, {	-- Northern Barrens Quests
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					-- #if AFTER 7.3.5
					["_doautomation"] = true,
					-- #else
					["sourceQuests"] = {
						5041,	-- Supplies for the Crossroads
						872,	-- The Far Watch Offensive
						13971,	-- The Kodo's Return
						4021,	-- Counterattack!
						880,	-- Altered Beings
						877,	-- The Stagnant Oasis
						14042,	-- Ammo Kerblammo
						14067,	-- The Stolen Silver
						14063,	-- Mutiny, Mon!
						14050,	-- Gazlowe's Fortune
						29094,	-- The Short Way Home
						29111,	-- Mor'shan Caravan Delivery
					},
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					635,	-- Adder (PET!)
					631,	-- Emerald Boa (PET!)
					419,	-- Small Frog (PET!)
				}},
				["groups"] = {
					pet(474, {	-- Cheetah Cub (PET!)
						["description"] = "Can be found under large trees alongside Plainsland Cheetahs.",
					}),
					pet(1157, {	-- Harpy Youngling (PET!)
						["description"] = "Can be found at The Dry Hills, alongside Witchwing Harpies.",
						["timeline"] = { ADDED_5_1_0 },
					}),
					pet(386),	-- Prairie Dog (PET!)
				},
			}),
			explorationHeader({
				exploration(381),	-- Boulder Lode Mine
				exploration(384),	-- Dreadmist Peak
				exploration(379),	-- Far Watch Post
				exploration(720),	-- Fray Island
				exploration(1704),	-- Grol'dom Farm
				exploration(387),	-- Lushwater Oasis
				exploration(5117),	-- Nozzlepot's Outpost
				exploration(392),	-- Ratchet
				exploration(380),	-- The Crossroads
				exploration(383),	-- The Dry Hills
				exploration(386),	-- The Forgotten Pools
				exploration(391),	-- The Merchant Coast
				exploration(1703),	-- The Mor'shan Rampart
				exploration(382),	-- The Sludge Fen
				exploration(388),	-- The Stagnant Oasis
				exploration(1699),	-- Thorn Hill
				exploration(718),	-- Wailing Caverns
			}),
			n(FACTIONS, {
				faction(FACTION_RATCHET, {	-- Ratchet
					["icon"] = 133784,
					["OnTooltip"] = [[_.OnTooltipDB.ForRatchet]],
					["maps"] = { TANARIS },
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(458, {	-- Nozzlepot's Outpost, Northern Barrens
					["cr"] = 40558,	-- Gazrix <Flight Master>
					["coord"] = { 62.4, 17.2, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(80, {	-- Ratchet, Northern Barrens
					["cr"] = 16227,	-- Bragok <Flight Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 69.1, 70.7, NORTHERN_BARRENS },
						-- #else
						{ 63.0, 37.0, THE_BARRENS },
						-- #endif
					},
				}),
				fp(25, {	-- The Crossroads, Northern Barrens
					["cr"] = 3615,	-- Devrak <Wind Rider Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 48.6, 58.6, NORTHERN_BARRENS },
						-- #else
						{ 51.4, 30.2, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
				}),
				fp(354, {	-- The Mor'Shan Ramparts, Ashenvale
					["cr"] = 34927,	-- Gort Goreflight <Flight Master>
					["coord"] = { 42.0, 15.8, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
			}),
			petbattles({
				n(115286, {	-- Crysa <Flying Pet Tamer>
					["coord"] = { 63.6, 35.8, NORTHERN_BARRENS },
					-- ["description"] = "",	-- @DannyDonkey, do your thing here
					["timeline"] = { ADDED_7_1_0 },
					["petBattleLvl"] = 25,
					["groups"] = {
						q(45083, {	-- Crysa's Flyers
							["timeline"] = { ADDED_7_1_0 },
							["isDaily"] = true,
							-- CRIEVE NOTE: Not sure if there's a source achievement or quest required to do first.
							["groups"] = {
								i(142447, {	-- Torn Sack of Pet Supplies
									["timeline"] = { ADDED_7_1_0 },
									["groups"] = {
										i(142448, {	-- Albino Buzzard (PET!)
											["timeline"] = { ADDED_7_1_0 },
										}),
										i(89587, {	-- Porcupette (PET!)
											["timeline"] = { ADDED_7_1_0 },
										}),
									},
								}),
							},
						}),
					},
				}),
				n(66135, {	-- Dagra the Fierce <Master Pet Tamer>
					["coord"] = { 58.6, 53.0, NORTHERN_BARRENS },
					["description"] = "This pet tamer is Horde only.\n\nDagra's pets are level 3 of the following consecutive pet classes:\n1. Beast - use Mechanical (powerful) or Flying (tanky) pet.\n2. Critter - use Beast (powerful) or Humanoid (tanky) pet.\n3. Beast - see above.",
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
					["petBattleLvl"] = 3,
					["groups"] = {
						q(31819, {	-- Dagra the Fierce
							["sourceAchievement"] = 6602,	-- Taming Kalimdor
							["timeline"] = { ADDED_5_0_4 },
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
						}),
					},
				}),
				q(31814, {	-- Analynn
					["sourceQuest"] = 31813,	-- Dagra the Fierce
					["qg"] = 66135,	-- Dagra the Fierce
					["coord"] = { 58.6, 53.0, NORTHERN_BARRENS },
					["timeline"] = { ADDED_5_0_4 },
					["maps"] = { ASHENVALE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Defeat Analynn
							["provider"] = { "n", 66136 },	-- Analynn
							["coord"] = { 20.2, 29.5, ASHENVALE },
						}),
						i(89125),	-- Sack of Pet Supplies
					},
				}),
			}),
			n(PROFESSIONS, {
				prof(FISHING, {
					i(6651, {	-- Broken Wine Bottle
						["description"] = "Drops from fishing in the Sludge Fen.",
						["coord"] = { 57, 17, NORTHERN_BARRENS },
					}),
				}),
			}),
			n(QUESTS, {
				q(29090, {	-- A Burning Threat
					["qg"] = 52192,	-- Brogor
					["coord"] = { 44.2, 25.0, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Burning Blade Slain
							["providers"] = {
								{ "n", 3379},	-- Burning Blade Bruiser
								{ "n", 3380},	-- Burning Blade Acolyte
								{ "n", 52196},	-- Burning Blade Bruiser
							},
						}),
					},
				}),
				q(891, {	-- A Captain's Vengeance [CATA+] / The Guns of Northwatch
					["qg"] = 3339,	-- Captain Thalo'thas Brightsun
					["coords"] = {
						-- #if AFTER CATA
						{ 67.7, 74.0, NORTHERN_BARRENS },
						-- #else
						{ 62.3, 39.0, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(13, 13, 5),
					["groups"] = {
						-- #if AFTER CATA
						objective(1, {	-- 0/1 Lieutenant Buckland slain
							["provider"] = { "n", 34753 },	-- Lieutenant Buckland <Northwatch Expeditionary Unit>
						}),
						objective(2, {	-- 0/1 Lieutenant Pyre slain
							["provider"] = { "n", 34752 },	-- Lieutenant Pyre <Northwatch Expeditionary Unit>
						}),
						objective(3, {	-- 0/10 Theramore Medal
							["provider"] = { "i", 5078 },	-- Theramore Medal
							["crs"] = {
								5629,	-- Theramore Commando
								34707,	-- Theramore Deck Hand
								3385,	-- Theramore Marine
								3386,	-- Theramore Preserver
								34706,	-- Theramore Sharpshooter
							},
						}),
						-- #else
						objective(1, {	-- 0/1 Captain Fairmount slain
							["provider"] = { "n", 3393 },	-- Captain Fairmount
							["coord"] = { 61.8, 54.8, THE_BARRENS },
						}),
						objective(2, {	-- 0/1 Cannoneer Whessan slain
							["provider"] = { "n", 3455 },	-- Cannoneer Whessan
							["coord"] = { 60.4, 54.8, THE_BARRENS },
						}),
						objective(3, {	-- 0/1 Cannoneer Smythe slain
							["provider"] = { "n", 3454 },	-- Cannoneer Smythe
							["coord"] = { 63.0, 56.6, THE_BARRENS },
						}),
						objective(4, {	-- 0/10 Theramore Medal
							["provider"] = { "i", 5078 },	-- Theramore Medal
							["crs"] = {
								3385,	-- Theramore Marine
								3386,	-- Theramore Preserver
							},
						}),
						-- #endif
						i(5309, {	-- Privateer Musket
							["timeline"] = { REMOVED_4_0_3 },	-- NOTE: Old reward, quest repurposed, original quest name was The Guns of Northwatch
						}),
						i(5310, {	-- Sea Dog Britches
							["timeline"] = { REMOVED_4_0_3 },	-- NOTE: Old reward, quest repurposed, original quest name was The Guns of Northwatch
						}),
					},
				}),
				q(13988, {	-- A Growing Problem
					["sourceQuest"] = 870,	-- The Forgotten Pools
					["qg"] = 3448,	-- Tonga Runetotem
					["coord"] = { 49.5, 58.6, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(13992, {	-- A Little Diversion
					["qg"] = 34613,	-- Ta'jari
					["coord"] = { 37.5, 45.8, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Kolkar Centaur Killed
							["providers"] = {
								{ "n", 34614},	-- Kolkar Counter
								{ "n", 3272},	-- Kolkar Wrangler
								{ "n", 3273},	-- Kolkar Stormer
							},
						}),
					},
				}),
				q(14049, {	-- A Most Unusual Map
					["sourceQuest"] = 14046,	-- The Baron's Demands
					["qg"] = 3467,	-- Baron Longshore
					["coord"] = { 69.9, 85.1, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Tattooed Pirate Head
							["providers"] = {
								{ "i", 46832 },	-- Tattooed Pirate Head
								{ "o", 195205 },	-- Hanging Pirate Head
							},
						}),
					},
				}),
				q(880, {	-- Altered Beings
					["sourceQuests"] = {
						-- #if AFTER CATA
						13988,	-- A Growing Problem
						-- #else
						877,	-- The Stagnant Oasis
						-- #endif
					},
					["qgs"] = {
						-- #if AFTER CATA
						34626,	-- Jerrik Highmountain
						-- #else
						3448,	-- Tonga Runetotem
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 60.6, 85.4, NORTHERN_BARRENS },
						-- #else
						{ 52.26, 31.92, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(10, 10, 5),
					["groups"] = {
						objective(1, {	-- 0/8 Altered Snapjaw Shell
							["provider"] = { "i", 5098 },	-- Altered Snapjaw Shell
							["cr"] = 3461,	-- Oasis Snapjaw
						}),
					},
				}),
				q(14042, {	-- Ammo Kerblammo
					["sourceQuest"] = 14038,	-- Love it or Limpet
					["qg"] = 3391,	-- Gazlowe
					["coord"] = { 68.4, 69, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Ammo Dumps Destroyed
							["provider"] = { "o", 195203 },	-- Theramore Ammunition Stockpile
						}),
						i(59558, {	-- Gouging Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59559, {	-- Bellipotent Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(13970, {	-- Animal Services
					["sourceQuest"] = 13969,	-- Grol'dom's Missing Kodo
					["qg"] = 34547,	-- Grol'dom Kodo
					["coord"] = { 58.0, 49.4, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Stolen Grain
							["providers"] = {
								{ "i", 46742 },	-- Stolen Grain
								{ "o", 195118 },	-- Stolen Grain Sack
							},
						}),
					},
				}),
				q(853, {	-- Apothecary Zamah
					["sourceQuest"] = 848,	-- Fungal Spores
					["providers"] = {
						{ "n", 3390 },	-- Apothecary Helbrim
						{ "i", 5027 },	-- Rendered Spores
					},
					["coord"] = { 51.44, 30.15, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						-- #if BEFORE 4.0.3
						i(2458),	-- Elixir of Minor Fortitude
						i(2457),	-- Elixir of Minor Agility
						i(2456),	-- Minor Rejuvenation Potion
						i(2459),	-- Swiftness Potion
						-- #endif
						i(5340, {	-- Cauldron Stirrer
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1838, {	-- Brutal Armor
					["sourceQuest"] = 1825,	-- Speak with Thun'grim
					["providers"] = {
						{ "n", 5878 },	-- Thun'grim Firegaze
						{ "i", 7587 },	-- Thun'grim's Instructions
					},
					["coord"] = { 57.23, 30.34, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { HILLSBRAD_FOOTHILLS, RAZORFEN_KRAUL, STONETALON_MOUNTAINS },
					["cost"] = { { "i", 3575, 10 } },	-- Iron Bar
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/15 Smoky Iron Ingot
							["provider"] = { "i", 7126 },	-- Smoky Iron Ingot
							["crs"] = {
								3999,	-- Windshear Digger
								4003,	-- Windshear Geomancer
								4004,	-- Windshear Overlord
								4002,	-- Windshear Stonecutter
								4001,	-- Windshear Tunnel Rat
								3998,	-- Windshear Vermin
							},
						}),
						objective(2, {	-- 0/10 Powdered Azurite
							["provider"] = { "i", 7127 },	-- Powdered Azurite
							["cr"] = 2269,	-- Hillsbrad Miner
						}),
						objective(4, {	-- 0/1 Vial of Phlogiston
							["provider"] = { "i", 6841 },	-- Vial of Phlogiston
							["cr"] = 6168,	-- Roogug
						}),
					},
				}),
				q(1848, {	-- Brutal Hauberk
					["sourceQuest"] = 1838,	-- Brutal Armor
					["qg"] = 5878,	-- Thun'grim Firegaze
					["coord"] = { 57.23, 30.34, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(7133, {	-- Brutal Hauberk
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(13963, {	-- By Hook Or By Crook
					["sourceQuest"] = 13961,	-- Drag it Out of Them
					["qg"] = 34513,	-- Togrik
					["coord"] = { 56.5, 40.4, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Razormane Prisoner Interrogated
							["provider"] = { "n", 34523 },	-- Captured Razormane
						}),
					},
				}),
				q(1522, {	-- Call of Fire (1/5) [Orgrimmar]
					["qg"] = 5892,	-- Searn Firewarder
					["coord"] = { 37.8, 37.4, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(10, 10, 5),
				}),
				q(1523, {	-- Call of Fire (1/5) [Thunder Bluff]
					["qg"] = 5906,	-- Xanis Flameweaver
					["coord"] = { 25.2, 21, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(10, 10, 5),
				}),
				q(2983, {	-- Call of Fire (1/5) [Durotar]
					["qg"] = 3173,	-- Swart <Shaman Trainer>
					["coord"] = { 54.4, 42.6, DUROTAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(10, 10, 5),
				}),
				q(2984, {	-- Call of Fire (1/5) [Mulgore]
					["qg"] = 3066,	-- Narm Skychaser <Shaman Trainer>
					["coord"] = { 48.4, 59.2, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(10, 10, 5),
				}),
				q(1524, {	-- Call of Fire (2/5)
					["sourceQuests"] = {
						1522,	-- Call of Fire (1/5) [Orgrimmar]
						1523,	-- Call of Fire (1/5) [Thunder Bluff]
						2983,	-- Call of Fire (1/5) [Durotar]
						2984,	-- Call of Fire (1/5) [Mulgore]
					},
					["providers"] = {
						{ "n", 5907 },	-- Kranal Fiss
						{ "i", 6653 },	-- Torch of the Dormant Flame
					},
					["coord"] = { 55.8, 20, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["lvl"] = lvlsquish(10, 10, 5),
					-- #if NOT ANYCLASSIC
					-- CRIEVE NOTE: This isn't collectible in Classic.
					["groups"] = {
						i(6653, {	-- Torch of the Dormant Flame
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
					-- #endif
				}),
				q(1525, {	-- Call of Fire (3/5)
					["sourceQuest"] = 1524,	-- Call of Fire (2/5)
					["qg"] = 5900,	-- Telf Joolam
					["coord"] = { 38.6, 58.8, DUROTAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["lvl"] = lvlsquish(10, 10, 5),
					["groups"] = {
						objective(1, {	-- 0/1 Fire Tar
							["provider"] = { "i", 5026 },	-- Fire Tar
							["crs"] = {
								3269,	-- Razormane Geomancer
								3271,	-- Razormane Mystic
								3268,	-- Razormane Thornweaver
								3267,	-- Razormane Water Seeker
							},
						}),
						objective(2, {	-- 0/1 Reagent Pouch
							["provider"] = { "i", 6652 },	-- Reagent Pouch
							["cr"] = 3199,	-- Burning Blade Cultist
						}),
						i(6636, {	-- Fire Sapta
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1526, {	-- Call of Fire (4/5)
					["sourceQuest"] = 1525,	-- Call of Fire (3/5)
					["providers"] = {
						{ "n", 5900 },	-- Telf Joolam
						{ "i", 6653 },	-- Torch of the Dormant Flame
					},
					["coord"] = { 38.6, 58.8, DUROTAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["lvl"] = lvlsquish(10, 10, 5),
					["groups"] = {
						objective(1, {	-- 0/1 Glowing Ember
							["providers"] = {
								{ "i", 6655 },	-- Glowing Ember
								{ "i", 6636 },	-- Fire Sapta
							},
							["coord"] = { 38.6, 58.2, DUROTAR },
							["cr"] = 5893,	-- Minor Manifestation of Fire
						}),
					},
				}),
				q(1527, {	-- Call of Fire (5/5)
					["sourceQuest"] = 1526,	-- Call of Fire (4/5)
					["providers"] = {
						{ "o", 61934 },	-- Brazier of the Dormant Flame
						{ "i", 6654 },	-- Torch of the Eternal Flame
					},
					["coord"] = { 38.9, 58.2, DUROTAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["lvl"] = lvlsquish(10, 10, 5),
					["groups"] = {
						recipe(3599),	-- Searing Totem
						i(5176, {	-- Fire Totem
							["description"] = "You must keep this in your bags forever.",
						}),
						-- #if NOT ANYCLASSIC
						i(6654, {	-- Torch of the Eternal Flame
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #endif
					},
				}),
				q(2985, {	-- Call of Water (1/9) [Durotar]
					["qg"] = 3173,	-- Swart <Shaman Trainer>
					["coord"] = { 54.4, 42.6, DUROTAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(2986, {	-- Call of Water (1/9) [Mulgore]
					["qg"] = 3066,	-- Narm Skychaser <Shaman Trainer>
					["coord"] = { 48.4, 59.2, MULGORE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1528, {	-- Call of Water (1/9) [Orgrimmar]
					["qg"] = 5892,	-- Searn Firewarder
					["coord"] = { 38.0, 37.7, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1529, {	-- Call of Water (1/9) [Thunder Bluff]
					["qg"] = 5906,	-- Xanis Flameweaver
					["coord"] = { 25.2, 20.5, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1530, {	-- Call of Water (2/9)
					["sourceQuests"] = {
						2985,	-- Call of Water (1/9) [Durotar]
						2986,	-- Call of Water (1/9) [Mulgore]
						1528,	-- Call of Water (1/9) [Orgrimmar]
						1529,	-- Call of Water (1/9) [Thunder Bluff]
					},
					["qg"] = 5901,	-- Islen Waterseer
					["coord"] = { 65.8, 43.8, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(1535, {	-- Call of Water (3/9)
					["sourceQuest"] = 1530,	-- Call of Water (2/9)
					["qg"] = 5899,	-- Brine
					["coord"] = { 43.4, 77.4, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Brown Waterskin
							["providers"] = {
								{ "i", 7766 },	-- Filled Brown Waterskin
								{ "i", 7766 },	-- Empty Brown Waterskin
							},
							["coord"] = { 44, 77, THE_BARRENS },
						}),
					},
				}),
				q(1536, {	-- Call of Water (4/9)
					["sourceQuest"] = 1535,	-- Call of Water (3/9)
					["qg"] = 5899,	-- Brine
					["coord"] = { 43.4, 77.4, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Red Waterskin
							["providers"] = {
								{ "i", 7771 },	-- Filled Red Waterskin
								{ "i", 7768 },	-- Empty Red Waterskin
							},
							["coord"] = { 62, 20, HILLSBRAD_FOOTHILLS },
						}),
					},
				}),
				q(1534, {	-- Call of Water (5/9)
					["sourceQuest"] = 1536,	-- Call of Water (4/9)
					["qg"] = 5899,	-- Brine
					["coord"] = { 43.4, 77.4, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Blue Waterskin
							["providers"] = {
								{ "i", 7770 },	-- Filled Blue Waterskin
								{ "i", 7767 },	-- Empty Blue Waterskin
							},
							["coord"] = { 33, 67, ASHENVALE },
						}),
					},
				}),
				q(220, {	-- Call of Water (6/9)
					["sourceQuest"] = 1534,	-- Call of Water (5/9)
					["providers"] = {
						{ "n", 5899 },	-- Brine
						{ "i", 7810 },	-- Vial of Purest Water
					},
					["coord"] = { 43.4, 77.4, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(6637, {	-- Water Sapta
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(63, {		-- Call of Water (7/9)
					["sourceQuest"] = 1534,	-- Call of Water (6/9)
					["qg"] = 5901,	-- Islen Waterseer
					["coord"] = { 65.8, 43.8, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SILVERPINE_FOREST },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Corrupt Manifestation's Bracers
							["providers"] = {
								{ "i", 7812 },	-- Corrupt Manifestation's Bracers
								{ "i", 7811 },	-- Remaining Drops of Purest Water
							},
							["coord"] = { 38.8, 44.3, SILVERPINE_FOREST },
							["cr"] = 5894,	-- Corrupt Minor Manifestation of Water
						}),
					},
				}),
				q(100, {	-- Call of Water (8/9)
					["sourceQuest"] = 1534,	-- Call of Water (7/9)
					["provider"] = { "o", 113791 },	-- Brazier of Everfount
					["coord"] = { 38.3, 44.6, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(96, {	-- Call of Water (9/9)
					["sourceQuest"] = 100,	-- Call of Water (8/9)
					["providers"] = {
						{ "n", 5895 },	-- Minor Manifestation of Water
						{ "i", 7813 },	-- Shard of Water
					},
					["coord"] = { 38.6, 44.6, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						recipe(5394),	-- Healing Stream Totem
						i(5177, {	-- Water Totem
							["description"] = "You must keep this in your bags forever.",
						}),
					},
				}),
				q(1103, {	-- Call of Water (Water Sapta) [Silverpine Forest]
					["sourceQuest"] = 100,	-- Call of Water (8/9)
					["qg"] = 7007,	-- Tiev Mordune
					["coord"] = { 37.3, 44.1, SILVERPINE_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 20,
					["groups"] = {
						i(6637, {	-- Water Sapta
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(855, {	-- Centaur Bracers
					["qg"] = 3389,	-- Regthar Deathgate
					["coords"] = {
						-- #if AFTER CATA
						{ 37.9, 55.2, NORTHERN_BARRENS },
						-- #else
						{ 45.3, 28.4, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(9, 9, 5),
					["groups"] = {
						objective(1, {	-- 0/15 Centaur Bracers
							["provider"] = { "i", 5030 },	-- Centaur Bracers
							["crs"] = {
								3394,	-- Barak Kodobane
								5838,	-- Brokespear
								3396,	-- Hezrul Bloodmark
								3397,	-- Kolkar Bloodcharger
								9524,	-- Kolkar Invader
								3275,	-- Kolkar Marauder
								3274,	-- Kolkar Pack Runner
								3273,	-- Kolkar Stormer
								9523,	-- Kolkar Stormseer
								3272,	-- Kolkar Wrangler
								5841,	-- Rocklance
								5837,	-- Stonearm
								3395,	-- Verog the Dervish
								9456,	-- Warlord Krom'zar
							},
						}),
						i(59584, {	-- Foolhardy Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59583, {	-- Marauding Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131221, {	-- Marauding Cord
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(5346, {	-- Orcish Battle Bow
							["timeline"] = { REMOVED_4_0_3 },	-- NOTE: Old rewards, quest reused
						}),
						i(5344, {	-- Pointed Axe
							["timeline"] = { REMOVED_4_0_3 },	-- NOTE: Old rewards, quest reused
						}),
						i(5345, {	-- Stonewood Hammer
							["timeline"] = { REMOVED_4_0_3 },	-- NOTE: Old rewards, quest reused
						}),
					},
				}),
				q(819, {	-- Chen's Empty Keg (1/3)
					["providers"] = {
						{ "o", 3238 },	-- Chen's Empty Keg
						{ "i", 4926 },	-- Chen's Empty Keg
					},
					["coords"] = {
						{ 37.9, 16.1, THE_BARRENS },
						{ 43.8, 12.2, THE_BARRENS },
						{ 57.1, 9.0, THE_BARRENS },
						{ 55.8, 20.0, THE_BARRENS },
						{ 55.7, 27.3, THE_BARRENS },
						{ 54.7, 37.2, THE_BARRENS },
						{ 56.5, 43.6, THE_BARRENS },
						{ 41.8, 38.7, THE_BARRENS },
						{ 45.0, 62.2, THE_BARRENS },
					},
					["timeline"] = { REMOVED_4_0_1 },
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
				}),
				q(821, {	-- Chen's Empty Keg (2/3)
					["sourceQuest"] = 819,	-- Chen's Empty Keg (1/3)
					["qg"] = 3292,	-- Brewmaster Drohn
					["coord"] = { 62.27, 38.39, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_1 },
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
					["groups"] = {
						objective(1, {	-- 0/5 Savannah Lion Tusk
							["provider"] = { "i", 4893 },	-- Savannah Lion Tusk
							["crs"] = {
								3243,	-- Savannah Highmane
								3415,	-- Savannah Huntress
								3416,	-- Savannah Matriarch
								3425,	-- Savannah Prowler
								3241,	-- Savannah Patriarch
							},
						}),
						objective(2, {	-- 0/5 Plainstrider Kidney
							["provider"] = { "i", 4894 },	-- Plainstrider Kidney
							["crs"] = {
								3246,	-- Fleeting Plainstrider
								3244,	-- Greater Plainstrider
								3245,	-- Ornery Plainstrider
							},
						}),
						objective(3, {	-- 0/1 Thunder Lizard Horn
							["provider"] = { "i", 4895 },	-- Thunder Lizard Horn
							["crs"] = {
								3240,	-- Stormsnout
								5832,	-- Thunderstomp
								3239,	-- Thunderhead
							},
						}),
						i(4952, {	-- Stormstout
							["timeline"] = { REMOVED_4_0_1 },
						}),
					},
				}),
				q(822, {	-- Chen's Empty Keg (3/3)
					["sourceQuest"] = 821,	-- Chen's Empty Keg (2/3)
					["qg"] = 3292,	-- Brewmaster Drohn
					["coord"] = { 62.27, 38.39, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_1 },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 11,
					["groups"] = {
						objective(1, {	-- 0/5 Lightning Gland
							["provider"] = { "i", 4898 },	-- Lightning Gland
							["cr"] = 3238,	-- Stormhide
						}),
						objective(2, {	-- 0/1 Thunderhawk Saliva Gland
							["provider"] = { "i", 4897 },	-- Thunderhawk Saliva Gland
							["cr"] = 3249,	-- Greater Thunderhawk
						}),
						objective(3, {	-- 0/1 Kodo Liver
							["provider"] = { "i", 4896 },	-- Kodo Liver
							["crs"] = {
								3236,	-- Barrens Kodo
								3235,	-- Greater Barrens Kodo
								3234,	-- Lost Barrens Kodo
								3237,	-- Wooly Kodo
								3474,	-- Lakota'mani
							},
						}),
						i(4953, {	-- Trogg Brew / Trogg Ale [CATA+]
							["timeline"] = { REMOVED_4_0_1 },
						}),
					},
				}),
				q(4961, {	-- Cleansing of the Orb of Orahil
					["sourceQuest"] = 1799,	-- Fragments of the Orb of Orahil
					["qg"] = 6546,	-- Tabetha
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Demon of the Orb slain
							["provider"] = { "n", 6549 },	-- Demon of the Orb
						}),
					},
				}),
				q(14034, {	-- Club Foote
					["qg"] = 3391,	-- Gazlowe
					["coord"] = { 68.4, 69.0, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(29086, {	-- Competition Schmompetition
					["qg"] = 3442,	-- Sputtervalve
					["coord"] = { 62.3, 17.4, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Sputtervalve's Blueprints
							["provider"] = { "i", 68820 },	-- Sputtervalve's Blueprints
							["crs"] = {
								3282,	-- Venture Co. Mercenary
								3284,	-- Venture Co. Drudger
								3285,	-- Venture Co. Peon
								52356,	-- Venture Co. Drudger
								52357,	-- Venture Co. Mercenary
							},
						}),
					},
				}),
				q(1796, {	-- Components for the Enchanted Gold Bloodrobe (1/5)
					["sourceQuests"] = {
						4736,	-- In Search of Menara Voidrender (Ironforge)
						4737,	-- In Search of Menara Voidrender (Orgrimmar)
						4738,	-- In Search of Menara Voidrender (Stormwind)
						4739,	-- In Search of Menara Voidrender (Undercity)
					},
					["qg"] = 6266,	-- Menara Voidrender
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 5770, 1 }},	-- Robes of Arcana
					["classes"] = { WARLOCK },
					["lvl"] = 31,
				}),
				q(4781, {	-- Components for the Enchanted Gold Bloodrobe (2/5)
					["sourceQuest"] = 1796,	-- Components for the Enchanted Gold Bloodrobe (1/5)
					["qg"] = 6266,	-- Menara Voidrender
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 3577, 1 }},	-- Gold Bar
					["classes"] = { WARLOCK },
					["lvl"] = 31,
				}),
				q(4782, {	-- Components for the Enchanted Gold Bloodrobe (3/5)
					["sourceQuest"] = 4781,	-- Components for the Enchanted Gold Bloodrobe (2/5)
					["qg"] = 2670,	-- Xizk Goodstitch
					["coord"] = { 28.6, 76.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["lvl"] = 31,
				}),
				q(4783, {	-- Components for the Enchanted Gold Bloodrobe (4/5)
					["sourceQuest"] = 4782,	-- Components for the Enchanted Gold Bloodrobe (3/5)
					["qg"] = 6266,	-- Menara Voidrender
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DESOLACE },
					["classes"] = { WARLOCK },
					["lvl"] = 31,
					["groups"] = {
						objective(1, {	-- 0/10 Vial of Hatefury Blood
							["provider"] = { "i", 6989 },	-- Vial of Hatefury Blood
							["crs"] = {
								4673,	-- Hatefury Betrayer
								4672,	-- Hatefury Felsworn
								4675,	-- Hatefury Hellcaller
								4670,	-- Hatefury Rogue
								4674,	-- Hatefury Shadowstalker
								4671,	-- Hatefury Trickster
								14225,	-- Prince Kellen
							},
						}),
						objective(2, {	-- 0/1 Lesser Infernal Stone
							["provider"] = { "i", 6990 },	-- Lesser Infernal Stone
							["cr"] = 4676,	-- Lesser Infernal
						}),
					},
				}),
				q(4784, {	-- Components for the Enchanted Gold Bloodrobe (5/5)
					["sourceQuest"] = 4783,	-- Components for the Enchanted Gold Bloodrobe (4/5)
					["qg"] = 6266,	-- Menara Voidrender
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ARATHI_HIGHLANDS },
					["cost"] = { { "i", 6265, 1 } },	-- Soul Shard
					["classes"] = { WARLOCK },
					["lvl"] = 31,
					["groups"] = {
						objective(1, {	-- 0/1 Fine Gold Thread
							["provider"] = { "i", 12293 },	-- Fine Gold Thread
						}),
						objective(2, {	-- 0/2 Smoldering Coal
							["provider"] = { "i", 6991 },	-- Smoldering Coal
							["cr"] = 2760,	-- Burning Exile
						}),
					},
				}),
				q(899, {	-- Consumed by Hatred
					["qg"] = 3432,	-- Mankrik
					["coords"] = {
						-- #if AFTER CATA
						{ 55.1, 41.0, NORTHERN_BARRENS },
						-- #else
						{ 51.9, 31.6, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(14, 14, 5),
					["groups"] = {
						-- #if AFTER CATA
						objective(1, {	-- 0/30 Quilboar Tusk
							["provider"] = { "i", 5085 },	-- Quilboar Tusk
							["crs"] = {
								3261,	-- Bristleback Thornweaver
								3266,	-- Razormane Defender
								34545,	-- Razormane Frenzy
								3269,	-- Razormane Geomancer
								3265,	-- Razormane Hunter
								3271,	-- Razormane Mystic
								34503,	-- Razormane Pillager
								3267,	-- Razormane Plunderer
								3268,	-- Razormane Thornweaver
							},
						}),
						-- #else
						objective(1, {	-- 0/60 Bristleback Quilboar Tusk
							["provider"] = { "i", 5085 },	-- Bristleback Quilboar Tusk
							["crs"] = {
								3263,	-- Bristleback Geomancer
								3258,	-- Bristleback Hunter
								3261,	-- Bristleback Thornweaver
								3260,	-- Bristleback Water Seeker
							},
						}),
						-- #endif
						i(59539, {	-- Mankrik's Old Wedding Garments
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59540, {	-- Quilboar Skin Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59541, {	-- Mankrik's Boar Slicer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131227, {	-- Quilboar Linked Gauntlets
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(5314, {	-- Boar Hunter's Cape
							["timeline"] = { REMOVED_4_0_3 },	-- NOTE: Old rewards, quest reused
						}),
						i(6477, {	-- Grassland Sash
							["timeline"] = { REMOVED_4_0_3 },	-- NOTE: Old rewards, quest reused
						}),
					},
				}),
				q(4021, {	-- Counterattack!
					["sourceQuest"] = 852,	-- Hezrul Bloodmark
					["qg"] = 3389,	-- Regthar Deathgate
					["coords"] = {
						-- #if AFTER CATA
						{ 37.9, 55.2, NORTHERN_BARRENS },
						-- #else
						{ 45.3, 28.4, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(11, 11, 5),
					["groups"] = {
						objective(1, {	-- 0/1 Piece of Krom'zar's Banner
							["provider"] = { "i", 11227 },	-- Piece of Krom'zar's Banner
							["cr"] = 9456,	-- Warlord Krom'zar
						}),
						i(59591, {	-- Shield of the Barrens
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59592, {	-- Suppressor's Wand
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59593, {	-- Deathgate Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(13975, {	-- Crossroads Caravan Delivery
					["sourceQuest"] = 13949,	-- Crossroads Caravan Pickup
					["qg"] = 34578,	-- Rocco Whipshank
					["coord"] = { 54.6, 41.4, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(13949, {	-- Crossroads Caravan Pickup
					["sourceQuests"] = {
						5041,	-- Supplies for the Crossroads
						872,	-- The Far Watch Offensive
					},
					["qg"] = 34258,	-- Halga Bloodeye
					["coord"] = { 67.3, 38.7, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(59536, {	-- Bloodeye Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59537, {	-- Kranal's Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59538, {	-- Caravan Escort's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131324, {	-- Kranal's Chestplate
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(6129, {	-- Curing the Sick (H)
					["sourceQuest"] = 6128,	-- Gathering the Cure
					["qg"] = 3448,	-- Tonga Runetotem
					["coord"] = { 52.2, 31.8, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/10 Sickly Gazelle cured
							["provider"] = { "i", 15826 },	-- Curative Animal Salve
							["cr"] = 12296,	-- Sickly Gazelle
						}),
						i(15866, {	-- Veildust Medicine Bag
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(14073, {	-- Deathgate's Reinforcements
					["sourceQuests"] = {
						850,	-- Kolkar Leaders
						851,	-- Verog the Dervish
					},
					["qg"] = 3429,	-- Thork
					["coord"] = { 48.7, 59.5, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(1069, {	-- Deepmoss Spider Eggs
					["qg"] = 3446,	-- Mebok Mizzyrix
					["coord"] = { 62.37, 37.32, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STONETALON_MOUNTAINS },
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/15 Deepmoss Egg
							["providers"] = {
								{ "i", 5570 },	-- Deepmoss Egg
								{ "o", 19542 },	-- Deepmoss Eggs
							},
						}),
					},
				}),
				q(29112, {	-- Demon Seed
					["sourceQuest"] = 29110,	-- Mor'shan Caravan Rescue
					["qg"] = 52309,	-- Balgor Whipshank
					["coord"] = { 41.0, 39.1, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Demon Seed
							["providers"] = {
								{ "i", 68837 },	-- Demon Seed
								{ "o", 3524 },	-- The Demon Seed
							},
						}),
						i(69219, {	-- Sacrificial Blade
							["timeline"] = { ADDED_4_1_0 },
						}),
					},
				}),
				q(26878, {	-- Disciples of Naralex
					["qg"] = 3448,	-- Tonga Runetotem
					["coord"] = { 49.5, 58.6, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				-- #if BEFORE CATA
				q(6385, {	-- Doras the Wind Rider Master
					["sourceQuest"] = 6384,	-- Ride to Orgrimmar
					["providers"] = {
						{ "n", 6929 },	-- Innkeeper Gryshka
						{ "i", 16307 },	-- Gryshka's Letter
					},
					["coord"] = { 54.09, 68.43, ORGRIMMAR },
					["races"] = { ORC, TROLL },
					["lvl"] = 10,
				}),
				-- #endif
				q(13961, {	-- Drag it Out of Them
					["qg"] = 34513,	-- Togrik
					["coord"] = { 56.5, 40.4, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(881, {	-- Echeyakee
					["sourceQuests"] = {
						-- #if AFTER CATA
						903,	-- Hunting the Huntress
						845,	-- The Zhevra
						-- #else
						903,	-- Prowlers of the Barrens
						-- #endif
					},
					["qg"] = 3338,	-- Sergra Darkthorn
					["coords"] = {
						-- #if AFTER CATA
						{ 50.0, 59.7, NORTHERN_BARRENS },
						-- #else
						{ 52.2, 31.0, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(10, 10, 5),
					["groups"] = {
						objective(1, {	-- 0/1 Echeyakee's Hide
							["providers"] = {
								{ "i", 5100 },	-- Echeyakee's Hide
								{ "i", 10327 },	-- Horn of Echeyakee
							},
							["coords"] = {
								-- #if AFTER CATA
								{ 47.8, 44.0, NORTHERN_BARRENS },
								{ 44.8, 47.8, NORTHERN_BARRENS },
								-- #else
								{ 55.8, 17.2, THE_BARRENS },
								-- #endif
							},
							["cr"] = 3475,	-- Echeyakee
						}),
					},
				}),
				q(868, {	-- Egg Hunt
					["qg"] = 3428,	-- Korran
					["coord"] = { 51.07, 29.62, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/12 Silithid Egg
							["providers"] = {
								{ "i", 5058 },	-- Silithid Egg
								{ "o", 3685 },	-- Silithid Mound
								{ "i", 5059 },	-- Digging Claw
							},
						}),
						i(6503, {	-- Harlequin Robes
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6502, {	-- Violet Scale Armor
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(13615, {	-- Empty Quivers
					["qg"] = 33284,	-- Truun
					["coord"] = { 42.2, 15.2, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Serviceable Arrow
							["providers"] = {
								{ "i", 45004 },	-- Serviceable Arrow
								{ "o", 194263 },	-- Serviceable Arrow
							},
						}),
					},
				}),
				q(14045, {	-- Find Baron Longshore
					["qg"] = 3391,	-- Gazlowe
					["coord"] = { 68.4, 69.0, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(13618, {	-- Find Gorat!
					["qg"] = 8582,	-- Kadrak
					["coord"] = { 42.7, 14.9, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(26701, {	-- Flight to Brackenwall
					["description"] = "This quest is only available for characters who haven't started questing in Dustwallow Marsh, and requires the completion of the breadcrumb quest 'The Call of Kalimdor'. Said quest can be obtained from an ogre swimming in a circle near the pier at Booty Bay in The Cape of Stranglethorn.",
					["sourceQuest"] = 26696,	-- The Call of Kalimdor
					["qg"] = 3391,	-- Gazlowe
					["coord"] = { 68.4, 69.0, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(26702, {	-- Flight to Theramore
					["description"] = "This quest is only available for characters who haven't started questing in Dustwallow Marsh, and requires the completion of the breadcrumb quest 'The Call of Kalimdor'. Said quest can be obtained from Corporal Jeyne on the pier at Booty Bay in The Cape of Stranglethorn.",
					["sourceQuest"] = 26596,	-- The Call of Kalimdor
					["qg"] = 3391,	-- Gazlowe
					["coord"] = { 68.4, 69.0, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(14072, {	-- Flushing Out Verog
					["qg"] = 34638,	-- Shoe
					["coord"] = { 55.1, 78.3, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/4 Centaur Intelligence
							["providers"] = {
								{ "i", 46857 },	-- Centaur Intelligence
								{ "o", 195240 },	-- Centaur Intelligence
							},
						}),
					},
				}),
				q(1503, {	-- Forged Steel
					["sourceQuest"] = 1502,	-- Thun'grim Firegaze
					["qg"] = 5878,	-- Thun'grim Firegaze
					["coord"] = { 57.23, 30.34, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Forged Steel Bars
							["providers"] = {
								{ "i", 6534 },	-- Forged Steel Bars
								{ "o", 58369 },	-- Stolen Iron Chest
							},
							["coord"] = { 55.0, 26.6, THE_BARRENS },
						}),
						i(7326, {	-- Thun'grim's Axe
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(7327, {	-- Thun'grim's Dagger
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(7328, {	-- Thun'grim's Mace
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(7329, {	-- Thun'grim's Sword
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1799, {	-- Fragments of the Orb of Orahil
					["sourceQuests"] = {
						4965,	-- Knowledge of the Orb of Orahil [Ironforge]
						4967,	-- Knowledge of the Orb of Orahil [Orgrimmar]
						4968,	-- Knowledge of the Orb of Orahil [Stormwind]
						4969,	-- Knowledge of the Orb of Orahil [Undercity]
					},
					["qg"] = 6266,	-- Menara Voidrender
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DESOLACE, DUSTWALLOW_MARSH },
					["classes"] = { WARLOCK },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Infernal Orb
							["provider"] = { "i", 7291 },	-- Infernal Orb
							["coord"] = { 55.0, 77.8, DESOLACE },
							["cr"] = 4668,	-- Burning Blade Summoner
						}),
					},
				}),
				q(898, {	-- Free From the Hold
					["qg"] = 3465,	-- Gilthares Firebough
					["coord"] = { 61.96, 54.97, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						i(5311, {	-- Buckled Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5312, {	-- Riveted Gauntlets
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(848, {	-- Fungal Spores
					["qg"] = 3390,	-- Apothecary Helbrim
					["coords"] = {
						-- #if AFTER CATA
						{ 48.6, 58.2, NORTHERN_BARRENS },
						-- #else
						{ 51.4, 30.1, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(10, 10, 5),
					["groups"] = {
						objective(1, {	-- 0/4 Fungal Spores
							["providers"] = {
								{ "i", 5012 },	-- Fungal Spores
								{ "o", 3640 },	-- Laden Mushroom
							},
						}),
					},
				}),
				q(6128, {	-- Gathering the Cure (H)
					["sourceQuest"] = 6127,	-- The Principal Source [H]
					["qg"] = 3448,	-- Tonga Runetotem
					["coord"] = { 52.2, 31.8, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 2449, 5 }},	-- Earthroot
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
					["groups"] = {
						objective(2, {	-- 0/5 Kodo Horn
							["provider"] = { "i", 15852 },	-- Kodo Horn
							["crs"] = {
								3236,	-- Barrens Kodo
								3234,	-- Lost Barrens Kodo
							},
						}),
					},
				}),
				q(14050, {	-- Gazlowe's Fortune
					["sourceQuest"] = 14049,	-- A Most Unusual Map
					["qg"] = 3391,	-- Gazlowe
					["coord"] = { 68.4, 69.0, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gazlowe's Treasure Chest
							["providers"] = {
								{ "i", 46833 },	-- Gazlowe's Treasure Chest
								{ "o", 195206 },	-- Curious Pirate Landmark
							},
						}),
						i(59560, {	-- Bling Cane
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59561, {	-- Vest of Fortune
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59562, {	-- Dividend Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131329, {	-- Hauberk of Fortune
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(14056, {	-- Glomp is Sitting On It
					["sourceQuest"] = 14052,	-- Take it up With Tony
					["qg"] = 34749,	-- Tony Two-Tusk
					["coord"] = { 77.2, 91.3, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Glomp's Booty
							["provider"] = { "i", 46834 },	-- Glomp's Booty
							["cr"] = 34747,	-- Glomp
						}),
					},
				}),
				q(13621, {	-- Gorat's Vengeance
					["sourceQuest"] = 13620,	-- To Dinah, at Once!
					["qg"] = 33263,	-- Dinah Halfmoon
					["coord"] = { 42.4, 15.7, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Captain Elendilad slain
							["provider"] = { "n", 33302 },	-- Captain Elendilad
						}),
						i(56644, {	-- Gorat's Bequest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56645, {	-- Kadrak's Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131295, {	-- Gorat's Spaulders of Satisfaction
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13628, {	-- Got Lumber?
					["sourceQuest"] = 13621,	-- Gorat's Vengeance
					["qg"] = 33284,	-- Truun
					["coord"] = { 42.2, 15.2, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Brutusk mounted
							["provider"] = { "n", 33374 },	-- Brutusk
						}),
					},
				}),
				q(13969, {	-- Grol'dom's Missing Kodo
					["sourceQuest"] = 13963,	-- By Hook or By Crook
					["qg"] = 5907,	-- Kranal Fiss
					["coord"] = { 56.4, 40.3, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(14057, {	-- Guns. We Need Guns.
					["sourceQuest"] = 14056,	-- Glomp is Sitting On It
					["qg"] = 34749,	-- Tony Two-Tusk
					["coord"] = { 77.2, 91.3, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Heavy Dwarven Rifle
							["providers"] = {
								{ "i", 46836 },	-- Heavy Dwarven Rifle
								{ "o", 195211 },	-- Southsea Gun Rack
							},
						}),
					},
				}),
				q(875, {	-- Harpy Lieutenants
					["sourceQuest"] = 867,	-- Harpy Raiders
					["qg"] = 3449,	-- Darsok Swiftdagger
					["coords"] = {
						-- #if AFTER CATA
						{ 30.6, 45.8, NORTHERN_BARRENS },
						-- #else
						{ 51.62, 30.90, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(12, 12, 5),
					["groups"] = {
						-- #if AFTER CATA
						objective(1, {	-- 0/6 Witchwing Slayer slain
							["provider"] = { "n", 3278 },	-- Witchwing Slayer
						}),
						-- #else
						objective(1, {	-- 0/6 Harpy Lieutenant Ring
							["provider"] = { "i", 5065 },	-- Harpy Lieutenant Ring
							["cr"] = 3278,	-- Witchwing Slayer
						}),
						-- #endif
					},
				}),
				q(867, {	-- Harpy Raiders
					["qg"] = 3449,	-- Darsok Swiftdagger
					["coords"] = {
						-- #if AFTER CATA
						{ 30.6, 45.8, NORTHERN_BARRENS },
						-- #else
						{ 51.62, 30.90, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(12, 12, 5),
					["groups"] = {
						-- #if AFTER CATA
						objective(1, {	-- 0/6 Witchwing Talon
							["provider"] = { "i", 5064 },	-- Witchwing Talon
							["crs"] = {
								3276,	-- Witchwing Harpy
								3277,	-- Witchwing Roguefeather
								3278,	-- Witchwing Slayer
								3279,	-- Witchwing Ambusher
								3280,	-- Witchwing Windcaller
								3452,	-- Serena Bloodfeather
							},
						}),
						-- #else
						objective(1, {	-- 0/8 Witchwing Talon
							["provider"] = { "i", 5064 },	-- Witchwing Talon
							["crs"] = {
								3452,	-- Serena Bloodfeather
								3279,	-- Witchwing Ambusher
								3276,	-- Witchwing Harpy
								3277,	-- Witchwing Roguefeather
								3278,	-- Witchwing Slayer
								3280,	-- Witchwing Windcaller
							},
						}),
						-- #endif
					},
				}),
				q(852, {	-- Hezrul Bloodmark
					["sourceQuests"] = {
						-- #if AFTER CATA
						850,	-- Kolkar Leaders
						851,	-- Verog the Dervish
						14073,	-- Deathgate's Reinforcements
						-- #else
						851,	-- Verog the Dervish
						-- #endif
					},
					["qg"] = 3389,	-- Regthar Deathgate
					["coords"] = {
						-- #if AFTER CATA
						{ 37.9, 55.2, NORTHERN_BARRENS },
						-- #else
						{ 45.3, 28.4, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(11, 11, 5),
					["groups"] = {
						objective(1, {	-- 0/1 Hezrul's Head
							["provider"] = { "i", 5025 },	-- Hezrul's Head
							["coords"] = {
								-- #if AFTER CATA
								{ 42.6, 74.8, NORTHERN_BARRENS },
								-- #else
								{ 46.8, 38.6, THE_BARRENS },
								-- #endif
							},
							["cr"] = 3396,	-- Hezrul Bloodmark
						}),
						i(59585, {	-- Lushwater Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59586, {	-- Gloves of Unfocused Rage
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59587, {	-- Fractured Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131220, {	-- Hands of Unfocused Rage
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(5351, {	-- Bounty Hunter's Ring
							["timeline"] = { REMOVED_4_0_3 },	-- NOTE: Old rewards, quest reused
						}),
					},
				}),
				q(3514, {	-- Horde Presence
					["sourceQuest"] = 3513,	-- The Runed Scroll
					["qg"] = 8582,	-- Kadrak
					["coord"] = { 48.12, 5.42, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- Rynthariel the Keymaster slain
							["providers"] = {
								{ "n", 8518 },	-- Rynthariel the Keymaster
								{ "i", 10622 },	-- Kadrak's Flag
							},
							["coord"] = { 29.8, 17.6, STONETALON_MOUNTAINS },
						}),
						i(10653, {	-- Trailblazer Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10654, {	-- Jutebraid Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(903, {	-- Hunting the Huntress [CATA+] / Prowlers of the Barrens
					["qg"] = 3338,	-- Sergra Darkthorn
					["coords"] = {
						-- #if AFTER CATA
						{ 50.0, 59.7, NORTHERN_BARRENS },
						-- #else
						{ 52.2, 31.0, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(10, 10, 5),
					["groups"] = {
						-- #if AFTER CATA
						objective(1, {	-- 0/5 Huntress Claws
							["provider"] = { "i", 5096 },	-- Huntress Claws
							["cr"] = 3415,	-- Savannah Huntress
						}),
						-- #else
						objective(1, {	-- 0/7 Prowler Claws
							["provider"] = { "i", 5096 },	-- Prowler Claws
							["cr"] = 3425,	-- Savannah Prowler
						}),
						-- #endif
					},
				}),
				q(29088, {	-- Hyena Extermination
					["qg"] = 34698,	-- Nozzlepot
					["coord"] = { 62.5, 16.7, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Hecklefang Hyena slain
							["provider"] = { "n", 4127 },	-- Hecklefang Hyena
						}),
					},
				}),
				q(871, {	-- In Defense of Far Watch [CATA+] / Disrupt the Attacks
					["sourceQuests"] = {
						-- #if AFTER CATA
						840,	-- Conscript of the Horde
						26642,	-- Preserving the Barrens
						28494,	-- Warchief's Command: Northern Barrens!
						-- #else
						854,	-- Journey to the Crossroads
						-- #endif
					},
					["qgs"] = {
						-- #if AFTER CATA
						3337,	-- Kargal Battlescar
						-- #else
						3429,	-- Thork
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 67.6, 39.3, NORTHERN_BARRENS },
						-- #else
						{ 51.5, 30.9, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(9, 9, 5),
					["groups"] = {
						-- #if AFTER CATA
						objective(1, {	-- 0/8 Razormane Plunderer slain
							["provider"] = { "n", 3267 },	-- Razormane Plunderer
						}),
						objective(2, {	-- 0/3 Razormane Hunter slain
							["provider"] = { "n", 3265 },	-- Razormane Hunter
						}),
						-- #else
						objective(1, {	-- 0/8 Razormane Water Seeker slain
							["provider"] = { "n", 3267 },	-- Razormane Water Seeker
						}),
						objective(2, {	-- 0/8 Razormane Thornweaver slain
							["provider"] = { "n", 3268 },	-- Razormane Thornweaver
						}),
						objective(3, {	-- 0/3 Razormane Hunter slain
							["provider"] = { "n", 3265 },	-- Razormane Hunter
						}),
						-- #endif
					},
				}),
				q(13998, {	-- In Fungus We Trust
					["sourceQuest"] = 848,	-- Fungal Spores
					["qg"] = 3390,	-- Apothecary Helbrim
					["coord"] = { 48.6, 58.2, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(59545, {	-- Fuzzy Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59546, {	-- Ointment-Coated Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131328, {	-- Ointment-Coated Handwraps
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(4736, {	-- In Search of Menara Voidrender (Ironforge)
					["qg"] = 5172,	-- Briarthorn
					["coord"] = { 50.2, 6, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 31,
				}),
				q(4737, {	-- In Search of Menara Voidrender (Orgrimmar)
					["qg"] = 3326,	-- Zevrost
					["coord"] = { 48.4, 45.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 31,
				}),
				q(4738, {	-- In Search of Menara Voidrender (Stormwind)
					["qg"] = 461,	-- Demisette Cloyce
					["coord"] = { 25.4, 78.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 31,
				}),
				q(4739, {	-- In Search of Menara Voidrender (Undercity)
					["qg"] = 4563,	-- Kaal Soulreaper
					["coord"] = { 86, 15.6, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 31,
				}),
				q(858, {	-- Ignition
					["qg"] = 3439,	-- Wizzlecrank's Shredder
					["coords"] = {
						-- #if AFTER CATA
						{ 57.5, 18.2, NORTHERN_BARRENS },
						-- #else
						{ 56.5, 7.5, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(13, 13, 5),
					["groups"] = {
						objective(1, {	-- 0/1 Ignition Key
							["provider"] = { "i", 5050 },	-- Ignition Key
							["coords"] = {
								-- #if AFTER CATA
								{ 57.2, 20.6, NORTHERN_BARRENS },
								-- #else
								{ 56.2, 8.6, THE_BARRENS },
								-- #endif
							},
							["cr"] = 3445,	-- Supervisor Lugwizzle
						}),
					},
				}),
				q(905, {	-- Into the Raptor's Den [CATA+] / The Angry Scytheclaws
					["sourceQuest"] = 881,	-- Echeyakee
					["qg"] = 3338,	-- Sergra Darkthorn
					["coords"] = {
						-- #if AFTER CATA
						{ 50.0, 59.8, NORTHERN_BARRENS },
						-- #else
						{ 52.2, 31.0, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(10, 10, 5),
					["groups"] = {
						-- #if AFTER CATA
						objective(1, {	-- Visit Red Raptor Nest
							["provider"] = { "o", 6906 },	-- Red Raptor Nest
							["coord"] = { 49.67, 75.14, NORTHERN_BARRENS },
							["cost"] = {{ "i", 5165, 1 }},	-- Sunscale Feather
						}),
						objective(2, {	-- Visit Yellow Raptor Nest
							["provider"] = { "o", 6908 },	-- Yellow Raptor Nest
							["coord"] = { 48.02, 76.13, NORTHERN_BARRENS },
							["cost"] = {{ "i", 5165, 1 }},	-- Sunscale Feather
						}),
						objective(3, {	-- Visit Blue Raptor Nest
							["provider"] = { "o", 6907 },	-- Blue Raptor Nest
							["coord"] = { 48.57, 74.82, NORTHERN_BARRENS },
							["cost"] = {{ "i", 5165, 1 }},	-- Sunscale Feather
						}),
						-- #else
						objective(1, {	-- Visit Blue Raptor Nest
							["provider"] = { "o", 6907 },	-- Blue Raptor Nest
							["coord"] = { 52.59, 46.10, THE_BARRENS },
							["cost"] = {{ "i", 5165, 1 }},	-- Sunscale Feather
						}),
						objective(2, {	-- Visit Yellow Raptor Nest
							["provider"] = { "o", 6908 },	-- Yellow Raptor Nest
							["coord"] = { 52.46, 46.57, THE_BARRENS },
							["cost"] = {{ "i", 5165, 1 }},	-- Sunscale Feather
						}),
						objective(3, {	-- Visit Red Raptor Nest
							["provider"] = { "o", 6906 },	-- Red Raptor Nest
							["coord"] = { 52.03, 46.48, THE_BARRENS },
							["cost"] = {{ "i", 5165, 1 }},	-- Sunscale Feather
						}),
						-- #endif
						i(5165, {	-- Sunscale Feather
							["crs"] = {
								3254,	-- Sunscale Lashtail
								3255,	-- Sunscale Screecher
								3256,	-- Sunscale Scytheclaw
							},
						}),
						i(59549, {	-- Sunscale Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59550, {	-- Darkthorn Piercer
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(14066, {	-- Investigate the Wreckage
					["sourceQuest"] = 13991,	-- The Purloined Payroll
					["qg"] = 3464,	-- Gazrog
					["coord"] = { 66.8, 72.7, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(873, {	-- Isha Awak
					["sourceQuest"] = 874,	-- Mahren Skyseer
					["qg"] = 3388,	-- Mahren Skyseer
					["coord"] = { 65.83, 43.85, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Heart of Isha Awak
							["provider"] = { "i", 5104 },	-- Heart of Isha Awak
							["coords"] = {
								{ 65.6, 47.0, THE_BARRENS },
								{ 64.2, 50.6, THE_BARRENS },
								{ 63.6, 53.6, THE_BARRENS },
							},
							["cr"] = 3476,	-- Isha Awak
						}),
						i(5356, {	-- Branding Rod
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5357, {	-- Ward of the Vale
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5355, {	-- Beastmaster's Girdle
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(865, {	-- It's Gotta be the Horn [CATA+] / Raptor Horns
					["qg"] = 3446,	-- Mebok Mizzyrix
					["coords"] = {
						-- #if AFTER CATA
						{ 67.9, 71.5, NORTHERN_BARRENS },
						-- #else
						{ 62.4, 37.3, THE_BARRENS },
						-- #endif
					},
					["lvl"] = lvlsquish(13, 13, 5),
					["groups"] = {
						-- #if AFTER CATA
						objective(1, {	-- 0/1 King Reaperclaw's Horn
							["provider"] = { "i", 46850 },	-- King Reaperclaw's Horn
							["coord"] = { 65.2, 59.0, NORTHERN_BARRENS },
							["cr"] = 34829,	-- King Reaperclaw
						}),
						-- #else
						objective(1, {	-- 0/5 Intact Raptor Horn
							["provider"] = { "i", 5055 },	-- Intact Raptor Horn
							["crs"] = {
								3257,	-- Ishamuhale
								3256,	-- Sunscale Scytheclaw
								5842,	-- Takk the Leaper
							},
						}),
						-- #endif
						i(59580, {	-- Sharp Poker
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59581, {	-- Smart Shoes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59582, {	-- Shrewd Crossbow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131223, {	-- Smart Sandals
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(5343, {	-- Barkeeper's Cloak
							["timeline"] = { REMOVED_4_0_3 },	-- NOTE: Old reward, quest repurposed
						}),
						i(5342),	-- Raptor Punch
					},
				}),
				q(3261, {	-- Jorn Skyseer
					["sourceQuest"] = 905,	-- The Angry Scytheclaws
					["qg"] = 3338,	-- Sergra Darkthorn
					["coord"] = { 52.23, 31.01, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(854, {	-- Journey to the Crossroads
					["qg"] = 3418,	-- Kirge Sternhorn
					["coord"] = { 44.8, 58.6, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { TAUREN },
					["isBreadcrumb"] = true,
					["lvl"] = 9,
				}),
				q(13995, {	-- King of Centaur Mountain
					["qg"] = 34634,	-- Gorgal Angerscar
					["coord"] = { 55.1, 78.4, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Kurak slain
							["provider"] = { "n", 34635 },	-- Kurak
						}),
					},
				}),
				q(4967, {	-- Knowledge of the Orb of Orahil [Orgrimmar]
					["qg"] = 3326,	-- Zevrost
					["coord"] = { 48.4, 45.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(4965, {	-- Knowledge of the Orb of Orahil [Ironforge]
					["qg"] = 5172,	-- Briarthorn
					["coord"] = { 50.2, 6, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(4968, {	-- Knowledge of the Orb of Orahil [Stormwind]
					["qg"] = 461,	-- Demisette Cloyce
					["coord"] = { 25.4, 78.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(4969, {	-- Knowledge of the Orb of Orahil [Undercity]
					["qg"] = 4563,	-- Kaal Soulreaper
					["coord"] = { 86, 15.6, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(850, {	-- Kolkar Leaders
					["qgs"] = {
						-- #if AFTER CATA
						34841,	-- Telar Highstrider
						-- #else
						3389,	-- Regthar Deathgate
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 38.0, 46.5, NORTHERN_BARRENS },
						-- #else
						{ 45.3, 28.4, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(11, 11, 5),
					["groups"] = {
						objective(1, {	-- 0/1 Kodobane's Head
							["provider"] = { "i", 5022 },	-- Kodobane's Head
							["coords"] = {
								-- #if AFTER CATA
								{ 33.4, 46.8, NORTHERN_BARRENS },
								-- #else
								{ 42.8, 23.6, THE_BARRENS },
								-- #endif
							},
							["cr"] = 3394,	-- Barak Kodobane
						}),
						i(59551, {	-- Tangled Thread Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59552, {	-- Belt of the Forgotten Pool
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59553, {	-- Highstrider Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131218, {	-- Cord of the Forgotten Pool
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1060, {	-- Letter to Jin'Zil
					["sourceQuest"] = 876,	-- Serena Bloodfeather
					["providers"] = {
						{ "n", 3449 },	-- Darsok Swiftdagger
						{ "i", 5594 },	-- Letter to Jin'Zil
					},
					["coord"] = { 51.62, 30.90, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
				}),
				q(14038, {	-- Love it or Limpet
					["sourceQuest"] = 14034,	-- Club Foote
					["qg"] = 3391,	-- Gazlowe
					["coord"] = { 68.4, 69.0, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 The Bellipotent Mined
							["providers"] = {
								{ "i", 46829 },	-- Limpet Mine
								{ "o", 195202 },	-- Thinnest Part of the Hull
							},
						}),
					},
				}),
				q(4921, {	-- Lost in Battle
					["qg"] = 3432,	-- Mankrik
					["coord"] = { 51.95, 31.58, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- Find Mankrik's Wife
							["provider"] = { "n", 10668 },	-- Beaten Corpse
							["coord"] = { 49.2, 50.4, THE_BARRENS },
						}),
					},
				}),
				-- #if BEFORE CATA
				q(6365, {	-- Meats to Orgrimmar
					["providers"] = {
						{ "n", 3489 },	-- Zargh
						{ "i", 16306 },	-- Zargh's Meats
					},
					["coord"] = { 52.6, 29.8, THE_BARRENS },
					["races"] = { ORC, TROLL },
					["lvl"] = lvlsquish(10, 10, 5),
				}),
				-- #endif
				q(9267, {	-- Mending Old Wounds
					["qg"] = 16418,	-- Mupsi Shacklefridd
					["coords"] = {
						-- #if AFTER CATA
						{ 65.8, 72.0, NORTHERN_BARRENS },
						-- #else
						{ 61.2, 37.9, THE_BARRENS },
						-- #endif
					},
					["maxReputation"] = { FACTION_RATCHET, NEUTRAL },	-- Ratchet, must be less than Neutral
					["cost"] = {
						{ "i", 2589, 40 },	-- Linen Cloth
						{ "i", 3371, 4 },	-- Empty Vial
					},
					["repeatable"] = true,
					["lvl"] = lvlsquish(10, 10, 5),
				}),
				q(29015, {	-- Miner's Fortune
					["sourceQuest"] = 14004,	-- Return to Samophlanger
					["qg"] = 34674,	-- Brak Blusterpipe
					["coord"] = { 62.6, 17.0, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_6 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Cats Eye Emerald
							["provider"] = { "i", 5097 },	-- Cats Eye Emerald
							["crs"] = {
								3283,	-- Venture Co. Enforcer
								3286,	-- Venture Co. Overseer
								9336,	-- Boss Copperplug
							},
						}),
						i(59570, {	-- Bargain Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59571, {	-- Irregular Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59572, {	-- Misshapen Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131706, {	-- Slightly Dented Belt
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(896, {	-- Miner's Fortune
					["qg"] = 3453,	-- Wharfmaster Dizzywig
					["coord"] = { 63.35, 38.45, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- 0/1 Cats Eye Emerald
							["provider"] = { "i", 5097 },	-- Cats Eye Emerald
							["coord"] = { 60.4, 3.8, THE_BARRENS },
							["crs"] = {
								9336,	-- Boss Copperplug
								3283,	-- Venture Co. Enforcer
								3286,	-- Venture Co. Overseer
							},
						}),
						i(5335, {	-- A Sack of Coins
							i(4957, {	-- Old Moneybag
								["timeline"] = { REMOVED_4_0_3 },
							}),
						}),
					},
				}),
				q(2478, {	-- Mission: Possible But Not Probable
					["sourceQuest"] = 2458,	-- Deep Cover
					["qg"] = 7233,	-- Taskmaster Fizzule
					["coord"] = { 55.4, 5.6, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/2 Mutated Venture Co. Drone slain
							["provider"] = { "n", 7310 },	-- Mutated Venture Co. Drone
						}),
						objective(2, {	-- 0/2 Venture Co. Lookout slain
							["provider"] = { "n", 7307 },	-- Venture Co. Lookout
						}),
						objective(3, {	-- 0/2 Venture Co. Patroller slain
							["provider"] = { "n", 7308 },	-- Venture Co. Patroller
						}),
						objective(4, {	-- 0/1 Gallywix's Head
							["provider"] = { "i", 8074 },	-- Gallywix's Head
							["cr"] = 7288,	-- Grand Foreman Puzik Gallywix
						}),
						objective(5, {	-- 0/1 Silixiz's Tower Key
							["provider"] = { "i", 8072 },	-- Silixiz's Tower Key
							["cr"] = 7287,	-- Foreman Silixiz
						}),
						objective(6, {	-- 0/1 Cache of Zanzil's Altered Mixture
							["providers"] = {
								{ "i",   8073 },	-- Cache of Zanzil's Altered Mixture
								{ "o", 129127 },	-- Gallywix's Lockbox
							},
							["cost"] = {{ "i", 8072, 1 }},	-- Silixiz's Tower Key
						}),
						i(7678,	{	-- Recipe: Thistle Tea (RECIPE!)
							["timeline"] = { REMOVED_1_3_0 },
						}),
						i(18160, {	-- Recipe: Thistle Tea (RECIPE!)
							["timeline"] = { ADDED_1_3_0, REMOVED_4_0_3 },
						}),
					},
				}),
				q(29111, {	-- Mor'shan Caravan Delivery
					["sourceQuest"] = 29112,	-- Demon Seed
					["qg"] = 52207,	-- Nagala Whipshank
					["coord"] = { 47.5, 39.5, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(69221, {	-- Mor'shan Caravaneer's Leggings
							["timeline"] = { ADDED_4_1_0 },
						}),
						i(69216, {	-- Wild Rider's Gloves
							["timeline"] = { ADDED_4_1_0 },
						}),
						i(131710, {	-- Wild Rider's Mail Gauntlets
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(69222, {	-- Kadrak's Axe
							["timeline"] = { ADDED_4_1_0 },
						}),
					},
				}),
				q(29109, {	-- Mor'shan Caravan Pick-Up
					["sourceQuest"] = 29095,	-- Report to Thork
					["qg"] = 3429,	-- Thork
					["coord"] = { 48.7, 59.5, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
					["races"] = HORDE_ONLY,
				}),
				q(29110, {	-- Mor'shan Caravan Rescue
					["sourceQuest"] = 29109,	-- Mor'shan Caravan Pick-Up
					["qg"] = 52207,	-- Nagala Whipshank
					["coord"] = { 47.5, 39.6, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
					["races"] = HORDE_ONLY,
				}),
				q(13612, {	-- Mor'shan Defense
					["sourceQuests"] = {
						13866,	-- To The Ramparts!
						28493,	-- Warchief's Command: Ashenvale!
					},
					["qg"] = 8582,	-- Kadrak
					["coord"] = { 42.7, 14.9, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Ashenvale Skirmishers Slain
							["provider"] = { "n", 33193 },	-- Ashenvale Skirmisher
						}),
						objective(2, {	-- 0/5 Ashenvale Bowmen Slain
							["provider"] = { "n", 33195 },	-- Ashenvale Bowman
						}),
					},
				}),
				q(3301, {	-- Mura Runetotem
					["sourceQuest"] = 880,	-- Altered Beings
					["qg"] = 3448,	-- Tonga Runetotem
					["coord"] = { 52.26, 31.92, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(59557, {	-- Belt of Unwanted Aid
							["timeline"] = { ADDED_4_0_1, REMOVED_4_0_3 },
						}),
						i(59556, {	-- Shield of Inner Glow
							["timeline"] = { ADDED_4_0_1, REMOVED_4_0_3 },
						}),
						i(10820, {	-- Jackseed Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10821, {	-- Sower's Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(14063, {	-- Mutiny, Mon!
					["sourceQuest"] = 14057,	-- Guns. We Need Guns.
					["qg"] = 34749,	-- Tony Two-Tusk
					["coord"] = { 77.2, 91.3, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Maiden's Dagger Captured
							["provider"] = { "n", 34782 },	-- Alicia Cuthbert
						}),
						i(59573, {	-- Bachelor's Dagger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59574, {	-- Conspirator's Slippers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59575, {	-- Uninsured Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59576, {	-- Mutineer's Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131330, {	-- Uninsured Armguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1946, {	-- Nether-lace Garment
					["sourceQuest"] = 1945,	-- Laughing Sisters
					["qg"] = 3484,	-- Kil'hala <Journeyman Tailor>
					["coord"] = { 52.2, 31.6, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["lvl"] = 26,
					["groups"] = {
						i(7512, {	-- Nether-lace Robe
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9515, {	-- Nether-lace Tunic
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1510, {	-- News of Dogran (2/2)
					["sourceQuest"] = 1509,	-- News of Dogran (1/2)
					["qg"] = 3464,	-- Gazrog
					["coord"] = { 51.8, 30.2, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["lvl"] = 20,
				}),
				q(29027, {	-- Nugget Slugs
					["sourceQuest"] = 29026,	-- Wenikee Boltbucket
					["altQuests"] = { 3922 },	-- Nugget Slugs [Pre-4.0]
					["qg"] = 9316,	-- Wenikee Boltbucket
					["coord"] = { 44.3, 24.8, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_6 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Nugget Slug
							["providers"] = {
								{ "i", 11143 },	-- Nugget Slug
								{ "o", 161752 },	-- Tool Bucket
							},
						}),
					},
				}),
				q(3922, {	-- Nugget Slugs
					["sourceQuest"] = 3921,	-- Wenikee Boltbucket
					["qg"] = 9316,	-- Wenikee Boltbucket
					["coord"] = { 49.05, 11.17, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/15 Nugget Slug
							["providers"] = {
								{ "i",  11143 },	-- Nugget Slug
								{ "o", 161752 },	-- Tool Bucket
							},
						}),
					},
				}),
				q(1840, {	-- Orm Stonehoof and the Brutal Helm
					["sourceQuest"] = 1838,	-- Brutal Armor
					["qg"] = 5878,	-- Thun'grim Firegaze
					["coord"] = { 57.2, 30.2, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
				q(1040, {	-- Passage to Booty Bay
					["sourceQuest"] = 1039,	-- The Barrens Port(Darnassus)
					["qg"] = 3453,	-- Wharfmaster Dizzywig
					["coord"] = { 63.35, 38.45, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(1498, {	-- Path of Defense
					["description"] = "Completing this quest prevents you from accepting \"Speak with Dillinger\" and \"Ulag the Cleaver\" in Silverpine Forest.",
					["sourceQuest"] = 1505,	-- Veteran Uzzek
					["qg"] = 5810,	-- Uzzek
					["coord"] = { 61.38, 21.11, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/5 Singed Scale
							["provider"] = { "i", 6486 },	-- Singed Scale
							["crs"] = {
								3131,	-- Lightning Hide
								3130,	-- Thunder Lizard
							},
						}),
					},
				}),
				q(844, {	-- Plainstrider Menace
					-- #if BEFORE CATA
					["sourceQuest"] = 860,	-- Sergra Darkthorn
					-- #endif
					["qgs"] = {
						-- #if AFTER CATA
						34258,	-- Halga Bloodeye
						-- #else
						3338,	-- Sergra Darkthorn
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 67.4, 38.7, NORTHERN_BARRENS },
						-- #else
						{ 52.2, 31.0, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(10, 10, 5),
					["groups"] = {
						objective(1, {	-- 0/7 Plainstrider Beak
							["provider"] = { "i", 5087 },	-- Plainstrider Beak
							["crs"] = {
								3244,	-- Greater Plainstrider
								3246,	-- Fleeting Plainstrider
								3245,	-- Ornery Plainstrider
							},
						}),
					},
				}),
				q(2381, {	-- Plundering the Plunderers
					["sourceQuest"] = 2382,	-- Wrenix of Ratchet
					["qg"] = 7161,	-- Wrenix the Wretched
					["coord"] = { 63, 36.4, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Southsea Treasure
							["providers"] = {
								{ "i",   7968 },	-- Southsea Treasure
								{ "o", 123462 },	-- The Jewel of the Southsea
							},
							["coord"] = { 64.8, 45.4, THE_BARRENS },
							["cr"] = 7168,	-- Polly
						}),
						i(7676),	-- Thistle Tea
					},
				}),
				q(26642, {	-- Preserving the Barrens
					["altQuests"] = { 28494 },	-- Warchief's Command: Northern Barrens!
					["qg"] = 35068,	-- Gotura Fourwinds
					["coord"] = { 47.6, 71.3, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(26769, {	-- Raging River Ride
					["sourceQuest"] = 14050,	-- Gazlowe's Fortune
					["qg"] = 3391,	-- Gazlowe
					["coord"] = { 68.4, 69.0, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Board the Riverboat to Nozzlepot
							["provider"] = { "n", 44057 },	-- Riverboat
						}),
					},
				}),
				q(14006, {	-- Read the Manual
					["sourceQuest"] = 14004,	-- Return to Samophlanger
					["qg"] = 3442,	-- Sputtervalve
					["coord"] = { 62.2, 17.4, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(59547, {	-- Out-of-Date Manual
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59548, {	-- Scrap Metal Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(6541, {	-- Report to Kadrak (The Barrens)
					["qg"] = 3429,	-- Thork
					["coord"] = { 51.50, 30.86, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 17,
				}),
				q(6542, {	-- Report to Kadrak (Stonetalon Mountains)
					["qg"] = 11821,	-- Darn Talongrip
					["coord"] = { 73.23, 94.91, STONETALON_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 17,
				}),
				q(29095, {	-- Report to Thork
					["sourceQuest"] = 876,	-- Serena Bloodfeather
					["qg"] = 3449,	-- Darsok Swiftdagger
					["coord"] = { 30.6, 45.9, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
					["races"] = HORDE_ONLY,
				}),
				q(13613, {	-- Rescue the Fallen
					["qg"] = 33263,	-- Dinah Halfmoon
					["coord"] = { 42.4, 15.7, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Wounded Mor'shan Defenders Rescued
							["provider"] = { "i", 45001 },	-- Medicated Salve
							["cr"] = 33266,	-- Wounded Mor'shan Defender
						}),
						i(56633, {	-- Leggings of the Traveling Medic
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56634, {	-- Halfmoon Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56635, {	-- First Responder's Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131294, {	-- Battlefield Medic Handguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(14004, {	-- Return to Samophlanger
					["sourceQuest"] = 29027,	-- Nugget Slugs
					["qg"] = 9316,	-- Wenikee Boltbucket
					["coord"] = { 44.3, 24.9, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				-- #if BEFORE CATA
				q(6386, {	-- Return to the Crossroads.
					["sourceQuest"] = 6385,	-- Doras the Wind Rider Master
					["providers"] = {
						{ "n", 3310 },	-- Doras
						{ "i", 16307 },	-- Gryshka's Letter
					},
					["coord"] = { 45.2, 63.6, ORGRIMMAR },
					["races"] = { ORC, TROLL },
					["lvl"] = lvlsquish(10, 10, 5),
				}),
				-- #endif
				q(4976, {	-- Returning the Cleansed Orb
					["sourceQuest"] = 4961,	-- Cleansing of the Orb of Orahil
					["providers"] = {
						{ "n", 6546 },	-- Tabetha
						{ "i", 12642 },	-- Cleansed Infernal Orb
					},
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["lvl"] = 35,
				}),
				-- #if BEFORE CATA
				q(6384, {	-- Ride to Orgrimmar
					["sourceQuest"] = 6365,	-- Meats to Orgrimmar
					["providers"] = {
						{ "n", 3615 },	-- Devrak
						{ "i", 16306 },	-- Zargh's Meats
					},
					["coord"] = { 51.5, 30.3, THE_BARRENS },
					["races"] = { ORC, TROLL },
					["lvl"] = lvlsquish(10, 10, 5),
				}),
				-- #endif
				q(3923, {	-- Rilli Greasygob
					["sourceQuest"] = 3922,	-- Nugget Slugs
					["providers"] = {
						{ "n", 9316 },	-- Wenikee Boltbucket
						{ "i", 11146 },	-- Broken and Battered Samophlange
					},
					["coord"] = { 49.0, 11.2, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(866,	{	-- Root Samples
					["description"] = "To access this quest, you must have at least 40 skill in Herbalism.",
					["qg"] = 3446,	-- Mebok Mizzyrix
					["coords"] = {
						-- #if AFTER CATA
						{ 67.9, 71.5, NORTHERN_BARRENS },
						-- #else
						{ 62.4, 37.6, THE_BARRENS },
						-- #endif
					},
					["requireSkill"] = HERBALISM,
					["lvl"] = lvlsquish(9, 9, 5),
					["groups"] = {
						objective(1, {	-- 0/8 Root Sample
							["provider"] = { "i", 5056 },	-- Root Sample
						}),
						i(5341),	-- Spore-Covered Tunic
					},
				}),
				q(29021, {	-- Samophlange (1/4)
					["altQuests"] = { 902 },	-- Samophlange [Pre-4.0]
					["qg"] = 3442,	-- Sputtervalve
					["coord"] = { 62.3, 17.4, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_6 },
					["races"] = HORDE_ONLY,
				}),
				q(29022, {	-- Samophlange (2/4)
					["sourceQuest"] = 29021,	-- Samophlange (1/4)
					["altQuests"] = { 902 },	-- Samophlange [Pre-4.0]
					["provider"] = { "o", 4141 },	-- Control Console
					["coord"] = { 50.3, 25.6, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_6 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Shut off Main Control Valve
							["provider"] = { "o", 4072 },	-- Main Control Valve
						}),
						objective(2, {	-- 0/1 Shut off Fuel Control Valve
							["provider"] = { "o", 61936 },	-- Fuel Control Valve
						}),
						objective(3, {	-- 0/1 Shut off Regulator Valve
							["provider"] = { "o", 61935 },	-- Regulator Valve
						}),
					},
				}),
				q(29023, {	-- Samophlange (3/4)
					["sourceQuest"] = 29022,	-- Samophlange (2/4)
					["altQuests"] = { 902 },	-- Samophlange [Pre-4.0]
					["provider"] = { "o", 4141 },	-- Control Console
					["coord"] = { 50.3, 25.6, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_6 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Console Key
							["provider"] = { "i", 5089 },	-- Console Key
							["cr"] = 3471,	-- Tinkerer Sniggles
						}),
					},
				}),
				q(29024, {	-- Samophlange (4/4)
					["sourceQuest"] = 29023,	-- Samophlange (3/4)
					["altQuests"] = { 902 },	-- Samophlange [Pre-4.0]
					["provider"] = { "o", 4141 },	-- Control Console
					["coord"] = { 50.3, 25.6, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_6 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(59568, {	-- Painstakingly Crafted Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59569, {	-- Clean Room Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131707, {	-- Dusty Treads
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(894, {	-- Samophlange (1/4)
					["providers"] = {
						{ "n", 3442 },	-- Sputtervalve
						{ "i", 5088 },	-- Control Console Operating Manual
					},
					["coord"] = { 62.98, 37.21, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 10,
				}),
				q(900, {	-- Samophlange (2/4)
					["sourceQuest"] = 894,	-- Samophlange (1/4)
					["provider"] = { "o", 4141 },	-- Control Console
					["coord"] = { 52.41, 11.60, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Shut off Main Control Valve
							["provider"] = { "o", 4072 },	-- Main Control Valve
							["coord"] = { 52.3, 11.6, THE_BARRENS },
						}),
						objective(2, {	-- Shut off Fuel Control Valve
							["provider"] = { "o", 61936 },	-- Fuel Control Valve
							["coord"] = { 52.4, 11.5, THE_BARRENS },
						}),
						objective(3, {	-- Shut off Regulator Valve
							["provider"] = { "o", 61935 },	-- Regulator Valve
							["coord"] = { 52.3, 11.4, THE_BARRENS },
						}),
					},
				}),
				q(901, {	-- Samophlange (3/4)
					["sourceQuest"] = 900,	-- Samophlange (2/4)
					["provider"] = { "o", 4141 },	-- Control Console
					["coord"] = { 52.41, 11.60, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Console Key
							["provider"] = { "i", 5089 },	-- Console Key
							["coord"] = { 53.0, 10.6, THE_BARRENS },
							["cr"] = 3471,	-- Tinkerer Sniggles
						}),
					},
				}),
				q(902, {	-- Samophlange (4/4)
					["sourceQuest"] = 901,	-- Samophlange (3/4)
					["providers"] = {
						{ "o", 4141 },	-- Control Console
						{ "i", 5054 },	-- Samophlange
					},
					["coord"] = { 52.41, 11.60, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 10,
					["groups"] = {
						i(5324, {	-- Engineer's Hammer
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5325, {	-- Welding Shield
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(3924, {	-- Samophlange Manual
					["sourceQuest"] = 3923,	-- Rilli Greasygob
					["qg"] = 9317,	-- Rilli Greasygob
					["coord"] = { 76.49, 24.47, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Samophlange Manual
							["provider"] = { "i", 11149 },	-- Samophlange Manual
							["cost"] = {
								{ "i", 11147, 1 },	-- Samophlange Manual Cover
								{ "i", 11148, 5 },	-- Samophlange Manual Page
							},
						}),
						i(11854, {	-- Samophlange Screwdriver
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11855, {	-- Tork Wrench
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #if BEFORE 4.0.3
						i(11147, {	-- Samophlange Manual Cover
							["coord"] = { 60.0, 4.0, THE_BARRENS },
							["cr"] = 9336,	-- Boss Copperplug
						}),
						i(11148, {	-- Samophlange Manual Page
							["crs"] = {
								3283,	-- Venture Co. Enforcer
								3286,	-- Venture Co. Overseer
							},
						}),
						-- #endif
					},
				}),
				q(14003, {	-- Samophlange Repair
					["sourceQuest"] = 29024,	-- Samophlange
					["qg"] = 3442,	-- Sputtervalve
					["coord"] = { 62.3, 17.5, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(2996, {	-- Seeking Strahad (Orgrimmar)
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["coord"] = { 48.2, 45.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1798, {	-- Seeking Strahad (Stormwind)
					["qg"] = 6122,	-- Gakin the Darkbinder
					["coords"] = {
						-- #if AFTER WRATH
						{ 39.2, 85.2, STORMWIND_CITY },
						-- #else
						{ 25.4, 78.4, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(3001, {	-- Seeking Strahad (Undercity)
					["qg"] = 5675,	-- Carendin Halgar
					["coord"] = { 85, 25.6, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(876, {	-- Serena Bloodfeather
					["sourceQuests"] = {
						875,	-- Harpy Lieutenants
						-- #if AFTER CATA
						867,	-- Harpy Raiders
						-- #endif
					},
					["qg"] = 3449,	-- Darsok Swiftdagger
					["coords"] = {
						-- #if AFTER CATA
						{ 30.6, 45.9, NORTHERN_BARRENS },
						-- #else
						{ 51.6, 30.9, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(12, 12, 5),
					["groups"] = {
						objective(1, {	-- 0/1 Serena's Head
							["provider"] = { "i", 5067 },	-- Serena's Head
							["coords"] = {
								-- #if AFTER CATA
								{ 26.8, 26.8, NORTHERN_BARRENS },
								-- #else
								{ 39.4, 12.4, THE_BARRENS },
								-- #endif
							},
							["cr"] = 3452,	-- Serena Bloodfeather
						}),
						i(59588, {	-- Cutthroat Band
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59589, {	-- Bloodfeather Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59590, {	-- Darsok's Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(5321, {	-- Elegant Shortsword
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5279, {	-- Harpy Skinner
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5318, {	-- Zhovur Axe
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(860, {	-- Sergra Darkthorn
					["sourceQuest"] = 861,	-- The Hunter's Way
					["qg"] = 3441,	-- Melor Stonehoof
					["coord"] = { 61.52, 80.91, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(4962, {	-- Shard of a Felhound
					["altQuests"] = { 4963 },	-- Shard of an Infernal
					["qg"] = 6254,	-- Acolyte Wytula
					["coord"] = { 62.5, 35.5, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DESOLACE },
					["classes"] = { WARLOCK },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Imprisoned Felhound Spirit
							["providers"] = {
								{ "i", 12648 },	-- Imprisoned Felhound Spirit
								{ "i", 12647 },	-- Felhas Ruby
							},
							["coords"] = {
								{ 56.6, 75.6, DESOLACE },
								{ 50.6, 81.6, DESOLACE },
							},
							["crs"] = {
								4685,	-- Ley Hunter
								4681,	-- Mage Hunter
							},
						}),
					},
				}),
				q(4963, {	-- Shard of an Infernal
					["altQuests"] = { 4962 },	-- Shard of a Felhound
					["qg"] = 6252,	-- Acolyte Magaz
					["coord"] = { 62.6, 35.2, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DESOLACE },
					["classes"] = { WARLOCK },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Imprisoned Infernal Spirit
							["providers"] = {
								{ "i", 12649 },	-- Imprisoned Infernal Spirit
								{ "i", 12646 },	-- Infus Emerald
							},
							["coord"] = { 50, 73, DESOLACE },
							["cr"] = 4676,	-- Lesser Infernal
						}),
					},
				}),
				q(29089, {	-- Sludge Beast!
					["sourceQuest"] = 29087,	-- Sludge Investigation
					["qg"] = 34698,	-- Nozzlepot
					["coord"] = { 62.5, 16.7, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Sludge Beast slain
							["provider"] = { "n", 52165 },	-- Sludge Beast
						}),
						i(69220, {	-- Nozzlepot's Vest
							["timeline"] = { ADDED_4_1_0 },
						}),
						i(69218, {	-- Sludge Fen Cloak
							["timeline"] = { ADDED_4_1_0 },
						}),
						i(131708, {	-- Sludge Encrusted Vest
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(29087, {	-- Sludge Investigation
					["qg"] = 34698,	-- Nozzlepot
					["coord"] = { 62.5, 16.7, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Muddy Tracks Examined
							["provider"] = { "n", 52166 },	-- Muddy Tracks
						}),
					},
				}),
				q(887, {	-- Southsea Freebooters
					["qgs"] = {
						-- #if AFTER CATA
						3453,	-- Wharfmaster Dizzywig
						-- #else
						3391,	-- Gazlowe
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 69.5, 72.9, NORTHERN_BARRENS },
						-- #else
						{ 62.7, 36.2, THE_BARRENS },
						-- #endif
					},
					-- #if AFTER CATA
					["races"] = HORDE_ONLY,
					-- #endif
					["lvl"] = lvlsquish(9, 9, 5),
					["groups"] = {
						-- #if AFTER CATA
						objective(1, {	-- 0/8 Fray Island Pirates Killed
							["providers"] = {
								{ "n", 3383 },	-- Southsea Cutthroat
								{ "n", 3384 },	-- Southsea Privateer
							},
						}),
						-- #else
						objective(1, {	-- 0/12 Southsea Brigand slain
							["provider"] = { "n", 3381 },	-- Southsea Brigand
						}),
						objective(2, {	-- 0/6 Southsea Cannoneer slain
							["provider"] = { "n", 3382 },	-- Southsea Cannoneer
						}),
						-- #endif
					},
				}),
				q(1823, {	-- Speak with Ruga
					["qgs"] = {
						3354,	-- Sorek
						3041,	-- Torm Ragetotem
						4595,	-- Baltus Fowler <Warrior Trainer>
					},
					["coords"] = {
						{ 80.2, 32.4, ORGRIMMAR },
						{ 57.4, 87.2, THUNDER_BLUFF },
						{ 47.2, 17.0, UNDERCITY },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
				q(1825, {	-- Speak with Thun'grim
					["sourceQuest"] = 1824,	-- Trial at the Field of Giants
					["qg"] = 6394,	-- Ruga Ragetotem
					["coord"] = { 44.68, 59.42, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
				q(888, {	-- Stolen Booty
					["sourceQuest"] = 892,	-- The Missing Shipment (2/2)
					["qg"] = 3391,	-- Gazlowe
					["coord"] = { 62.68, 36.24, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Shipment of Boots
							["providers"] = {
								{ "i", 5076 },	-- Shipment of Boots
								{ "o", 3767 },	-- Drizzlik's Emporium
							},
							["coord"] = { 62.6, 49.7, THE_BARRENS },
						}),
						objective(2, {	-- 0/1 Telescopic Lens
							["providers"] = {
								{ "i", 5077 },	-- Telescopic Lens
								{ "o", 3768 },	-- Fragile - Do Not Drop
							},
							["coord"] = { 63.6, 49.2, THE_BARRENS },
						}),
						i(5337, {	-- Wayfaring Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5320, {	-- Padded Lamellar Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(3281, {	-- Stolen Silver
					["sourceQuest"] = 869,	-- Raptor Thieves
					["qg"] = 3464,	-- Gazrog
					["coord"] = { 51.93, 30.32, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Stolen Silver
							["providers"] = {
								{ "i",   5061 },	-- Stolen Silver
								{ "o", 147557 },	-- Stolen Silver
							},
							["coord"] = { 58.0, 53.9, THE_BARRENS },
						}),
						i(11853, {	-- Rambling Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(2694, {	-- Settler's Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4487, {	-- Summon Felsteed (1/2) (Ironforge)
					["qg"] = 5172,	-- Briarthorn
					["coord"] = { 50.2, 6, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(3631, {	-- Summon Felsteed (1/2) (Orgrimmar)
					["qg"] = 3326,	-- Zevrost
					["coord"] = { 48.4, 45.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(4488, {	-- Summon Felsteed (1/2) (Stormwind)
					["qg"] = 461,	-- Demisette Cloyce <Warlock Trainer>
					["coord"] = { 25.4, 78.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(4489, {	-- Summon Felsteed (1/2) (Undercity)
					["qg"] = 4563,	-- Kaal Soulreaper
					["coord"] = { 86, 15.6, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(4490, {	-- Summon Felsteed (2/2)
					["sourceQuests"] = {
						4487,	-- Summon Felsteed (1/2) (Ironforge)
						3631,	-- Summon Felsteed (1/2) (Orgrimmar)
						4488,	-- Summon Felsteed (1/2) (Stormwind)
						4489,	-- Summon Felsteed (1/2) (Undercity)
					},
					["qg"] = 6251,	-- Strahad Farsan
					["coord"] = { 62.6, 35.4, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["lvl"] = 40,
					["groups"] = {
						mount(5784),	-- Summon Felsteed
					},
				}),
				q(5041, {	-- Supplies for the Crossroads
					-- #if AFTER CATA
					["sourceQuest"] = 871,	-- In Defense of Far Watch
					-- #endif
					["qgs"] = {
						-- #if AFTER CATA
						34258,	-- Halga Bloodeye
						-- #else
						3429,	-- Thork
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 67.4, 38.7, NORTHERN_BARRENS },
						-- #else
						{ 51.5, 30.9, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(9, 9, 5),
					["groups"] = {
						-- #if AFTER CATA
						objective(1, {	-- 0/5 Crossroads' Supply Crate
							["providers"] = {
								{ "i",  12708 },	-- Crossroads' Supply Crate
								{ "o", 175708 },	-- Crossroads' Supply Crate
							},
							["coord"] = { 65.4, 54.6, NORTHERN_BARRENS },
						}),
						-- #else
						objective(1, {	-- 0/1 Crossroads' Supply Crates
							["providers"] = {
								{ "i",  12708 },	-- Crossroads' Supply Crates
								{ "o", 175708 },	-- Crossroads' Supply Crates
							},
							["coord"] = { 59.5, 24.6, THE_BARRENS },
						}),
						-- #endif
					},
				}),
				q(14052, {	-- Take it up with Tony
					["qg"] = 3453,	-- Wharfmaster Dizzywig
					["coord"] = { 69.5, 72.9, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(1719, {	-- The Affray
					["sourceQuest"] = 1718,	-- The Islander
					["qg"] = 6236,	-- Klannoc Macleod
					["coord"] = { 66.6, 49, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Big Will slain
							["provider"] = { "n", 6238 },	-- Big Will
							["coord"] = { 68.6, 48.6, THE_BARRENS },
						}),
					},
				}),
				q(14046, {	-- The Baron's Demands
					["sourceQuest"] = 14045,	-- Find Baron Longshore
					["qg"] = 3467,	-- Baron Longshore
					["coord"] = { 69.9, 85.1, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Deal Struck with Baron Longshore
							["provider"] = { "n", 3467 },	-- Baron Longshore
						}),
					},
				}),
				q(886, {	-- The Barrens Oases
					["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
					["coord"] = { 78.63, 28.56, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(1795, {	-- The Binding (Felhunter)
					["allianceQuestData"] = {
						["sourceQuest"] = 1804,	-- Tome of the Cabal (3/3) (A)
					},
					["hordeQuestData"] = {
						["sourceQuest"] = 1805,	-- Tome of the Cabal (3/3) (H)
					},
					["qg"] = 6251,	-- Strahad Farsan
					["coord"] = { 62.6, 35.4, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- Summoned Felhunter slain
							["provider"] = { "n", 6268 },	-- Summoned Felhunter
							["cost"] = { { "i", 6999, 1 } },	-- Tome of the Cabal
						}),
						-- #if BEFORE 4.0.3
						recipe(691),	-- Summon Felhunter
						-- #endif
						i(22244, {	-- Box of Souls
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4964, {	-- The Completed Orb of Dar'Orahil
					["sourceQuests"] = {
						4976,	-- Returning the Cleansed Orb
						4962,	-- Shard of a Felhound
					},
					["qg"] = 6266,	-- Menara Voidrender
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["lockCriteria"] = { 1, "questID", 4975 },	-- The Completed Orb of Noh'Orahil (mutually exclusive)
					["lvl"] = 35,
					["groups"] = {
						i(15108, {	-- Orb of Dar'Orahil
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15106, {	-- Staff of Dar'Orahil
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4975, {	-- The Completed Orb of Noh'Orahil
					["sourceQuests"] = {
						4976,	-- Returning the Cleansed Orb
						4963,	-- Shard of an Infernal
					},
					["qg"] = 6266,	-- Menara Voidrender
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["lockCriteria"] = { 1, "questID", 4964 },	-- The Completed Orb of Dar'Orahil (mutually exclusive)
					["lvl"] = 35,
					["groups"] = {
						i(15107, {	-- Orb of Noh'Orahil
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15105, {	-- Staff of Noh'Orahil
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4786, {	-- The Completed Robe
					["sourceQuest"] = 4784,	-- Components for the Enchanted Gold Bloodrobe (5/5)
					["qg"] = 6266,	-- Menara Voidrender
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["lvl"] = 31,
					["groups"] = {
						i(6900, {	-- Enchanted Gold Bloodrobe
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(863, {	-- The Escape
					["sourceQuest"] = 858,	-- Ignition
					["qg"] = 3439,	-- Wizzlecrank's Shredder
					["coords"] = {
						-- #if AFTER CATA
						{ 57.5, 18.2, NORTHERN_BARRENS },
						-- #else
						{ 56.5, 7.5, THE_BARRENS },
						-- #endif
					},
					-- #if AFTER CATA
					["races"] = HORDE_ONLY,
					-- #endif
					["lvl"] = lvlsquish(13, 13, 5),
					["groups"] = {
						i(59577, {	-- Sputtervalve Gun
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59578, {	-- Bracers of Angry Mutterings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59579, {	-- Nozzlepot Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131222, {	-- Nozzlepot Legwraps
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(5326, {	-- Flaring Baton
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5327, {	-- Greasy Tinker's Pants
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(872, {	-- The Far Watch Offensive [CATA+] / The Disruption Ends
					["sourceQuest"] = 871,	-- In Defense of Far Watch [CATA+] / Disrupt the Attacks
					["qgs"] = {
						-- #if AFTER CATA
						3337,	-- Kargal Battlescar
						-- #else
						3429,	-- Thork
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 67.7, 39.4, NORTHERN_BARRENS },
						-- #else
						{ 51.5, 30.9, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(9, 9, 5),
					["groups"] = {
						-- #if AFTER CATA
						objective(1, {	-- 0/8 Razormane Thornweaver slain
							["provider"] = { "n", 3268 },	-- Razormane Thornweaver
						}),
						objective(2, {	-- 0/8 Razormane Defender slain
							["provider"] = { "n", 3266 },	-- Razormane Defender
						}),
						objective(3, {	-- 0/1 Kreenig Snarlsnout's Tusk
							["provider"] = { "i", 5063 },	-- Kreenig Snarlsnout's Tusk
							["coord"] = { 64.2, 54.8, NORTHERN_BARRENS },
							["cr"] = 3438,	-- Kreenig Snarlsnout
						}),
						-- #else
						objective(1, {	-- 0/8 Razormane Geomancer slain
							["provider"] = { "n", 3269 },	-- Razormane Geomancer
						}),
						objective(2, {	-- 0/8 Razormane Defender slain
							["provider"] = { "n", 3266 },	-- Razormane Defender
						}),
						objective(3, {	-- 0/1 Kreenig Snarlsnout's Tusk
							["provider"] = { "i", 5063 },	-- Kreenig Snarlsnout's Tusk
							["coord"] = { 58.6, 27.2, THE_BARRENS },
							["cr"] = 3438,	-- Kreenig Snarlsnout
						}),
						-- #endif
						i(59542, {	-- Thornweaver Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59543, {	-- Pigman Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59544, {	-- Kargal's Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131224, {	-- Pigman Waistband
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(5275, {	-- Binding Girdle
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5328, {	-- Cinched Belt
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(870, {	-- The Forgotten Pools
					-- #if BEFORE CATA
					["sourceQuest"] = 886,	-- The Barrens Oases
					-- #endif
					["qg"] = 3448,	-- Tonga Runetotem
					["coords"] = {
						-- #if AFTER CATA
						{ 49.5, 58.6, NORTHERN_BARRENS },
						-- #else
						{ 52.26, 31.92, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(10, 10, 5),
				}),
				q(13973, {	-- The Grol'dom Militia
					["qg"] = 34560,	-- Una Wolfclaw
					["coord"] = { 54.0, 41.2, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Razormane Pillager slain
							["provider"] = { "n", 34503 },	-- Razormane Pillager
						}),
					},
				}),
				q(1718, {	-- The Islander
					["allianceQuestData"] = {
						["qgs"] = {
							5113,	-- Kelv Sternhammer <Warrior Trainer>
							5479,	-- Wu Shen <Warrior Trainer>
						},
						["coords"] = {
							{ 70.6, 90.6, IRONFORGE },
							-- #if AFTER WRATH
							{ 80.6, 59.6, STORMWIND_CITY },
							-- #else
							{ 78.8, 45.6, STORMWIND_CITY },
							-- #endif
						},
					},
					["hordeQuestData"] = {
						["qgs"] = {
							4595,	-- Baltus Fowler <Warrior Trainer>
							3354,	-- Sorek <Warrior Trainer>
							3041,	-- Torm Ragetotem <Warrior Trainer>
						},
						["coords"] = {
							{ 47.6, 16.8, UNDERCITY },
							{ 80.2, 32.4, ORGRIMMAR },
							{ 57.6, 87.2, THUNDER_BLUFF },
						},
					},
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["lvl"] = 30,
				}),
				q(13971, {	-- The Kodo's Return
					["sourceQuest"] = 13970,	-- Animal Services
					["qg"] = 34547,	-- Grol'dom Kodo
					["coord"] = { 58.0, 49.4, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(59531, {	-- Far Watch Musket
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59532, {	-- Imported Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(13991, {	-- The Purloined Payroll
					["sourceQuest"] = 905,	-- Into the Raptor's Den
					["qg"] = 3338,	-- Sergra Darkthorn
					["coord"] = { 50.0, 59.9, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(890, {	-- The Missing Shipment (1/2)
					["sourceQuest"] = 887,	-- Southsea Freebooters
					["providers"] = {
						{ "n", 3391 },	-- Gazlowe
						{ "i", 5080 },	-- Gazlowe's Ledger
					},
					["coord"] = { 62.68, 36.24, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 9,
				}),
				q(892, {	-- The Missing Shipment (2/2)
					["sourceQuest"] = 890,	-- The Missing Shipment (1/2)
					["providers"] = {
						{ "n", 3453 },	-- Wharfmaster Dizzywig
						{ "i", 5080 },	-- Gazlowe's Ledger
					},
					["coord"] = { 63.35, 38.45, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 9,
				}),
				q(29094, {	-- The Short Way Home
					["sourceQuests"] = {
						29086,	-- Competition Schmompetition
						29015,	-- Miner's Fortune
						14006,	-- Read the Manual
					},
					["qg"] = 3442,	-- Sputtervalve
					["coord"] = { 62.3, 17.3, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_1_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Rocket Ride Taken
							["provider"] = { "n", 52203 },	-- Silver Bullet X-831
						}),
						i(69217, {	-- Test Pilot Britches
							["timeline"] = { ADDED_4_1_0 },
						}),
						i(69223, {	-- Emergency Hatchet
							["timeline"] = { ADDED_4_1_0 },
						}),
						i(131709, {	-- Passenger Pantaloons
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(877, {	-- The Stagnant Oasis
					["sourceQuests"] = {
						-- #if AFTER CATA
						13988,	-- A Growing Problem
						-- #else
						870,	-- The Forgotten Pools
						-- #endif
					},
					["qgs"] = {
						-- #if AFTER CATA
						34626,	-- Jerrik Highmountain
						-- #else
						3448,	-- Tonga Runetotem
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 60.6, 85.4, NORTHERN_BARRENS },
						-- #else
						{ 52.3, 31.9, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(10, 10, 5),
					["groups"] = {
						objective(1, {	-- Test the Dried Seeds
							["providers"] = {
								{ "i", 5068 },	-- Dried Seeds
								{ "o", 3737 },	-- Bubbling Fissure
							},
							["coords"] = {
								-- #if AFTER CATA
								{ 55.9, 80.5, NORTHERN_BARRENS },
								-- #else
								{ 55, 42, THE_BARRENS },
								-- #endif
							},
						}),
					},
				}),
				q(14067, {	-- The Stolen Silver
					["sourceQuest"] = 869,	-- To Track a Thief
					["qg"] = 3464,	-- Gazrog
					["coord"] = { 66.8, 72.6, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Sunscale Ravager slain
							["provider"] = { "n", 44164 },	-- Sunscale Ravager
						}),
						objective(2, {	-- 0/4 Sunscale Scytheclaw slain
							["provider"] = { "n", 3256 },	-- Sunscale Scytheclaw
						}),
						objective(3, {	-- 0/1 Stolen Silver
							["providers"] = {
								{ "i", 5061 },	-- Stolen Silver
								{ "o", 147557 },	-- Stolen Silver
								{ "o", 195224 },	-- Stolen Silver Lockbox
							},
						}),
						i(59554, {	-- Silver-Edged Blade
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59555, {	-- Silver-Trim Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131331, {	-- Silver-Trim Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13968, {	-- The Tortusk Takedown
					["sourceQuest"] = 13963,	-- By Hook or by Crook
					["qg"] = 34513,	-- Togrik
					["coord"] = { 56.5, 40.4, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Tortusk slain
							["provider"] = { "n", 34544 },	-- Tortusk
						}),
						i(59533, {	-- Wand of Separation
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59534, {	-- Boar Hunter's Shoes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59535, {	-- Togrik's Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131325, {	-- Boar Hunter's Treads
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1791, {	-- The Windwatcher
					["sourceQuest"] = 1719,	-- The Affray
					["qg"] = 6236,	-- Klannoc Macleod
					["coord"] = { 68.6, 49, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ALTERAC_MOUNTAINS },
					["classes"] = { WARRIOR },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(845, {	-- The Zhevra
					["sourceQuest"] = 844,	-- Plainstrider Menace
					["qg"] = 3338,	-- Sergra Darkthorn
					["coords"] = {
						-- #if AFTER CATA
						{ 50.0, 59.7, NORTHERN_BARRENS },
						-- #else
						{ 52.2, 31.0, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(10, 10, 5),
					["groups"] = {
						objective(1, {	-- 0/4 Zhevra Hooves
							["provider"] = { "i", 5086 },	-- Zhevra Hooves
							["crs"] = {
								5831,	-- Swiftmane
								3426,	-- Zhevra Charger
								3466,	-- Zhevra Courser
								3242,	-- Zhevra Runner
							},
						}),
					},
				}),
				q(28877, {	-- They Call Him Swiftdagger. He Kills Harpies.
					["qg"] = 34698,	-- Nozzlepot
					["coord"] = { 62.5, 16.7, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3, REMOVED_4_1_0 },
					["races"] = HORDE_ONLY,
				}),
				q(13878, {	-- Through Fire and Flames
					["qg"] = 34284,	-- Dorak
					["coord"] = { 66.6, 45.4, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/3 Wolves Freed
							["providers"] = {
								{ "o", 195001 },	-- Wolf Chains
								{ "o", 195003 },	-- Wolf Chains
								{ "o", 195004 },	-- Wolf Chains
							},
						}),
						i(59529, {	-- Flame Retardant Sheet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59530, {	-- Wolf Tender's Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131310, {	-- Wolf Tender's Footwraps
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1502, {	-- Thun'grim Firegaze
					["sourceQuest"] = 1498,	-- Path of Defense
					["qg"] = 5810,	-- Uzzek
					["coord"] = { 61.38, 21.11, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = lvlsquish(10, 10, 5),
				}),
				q(13620, {	-- To Dinah, at Once!
					["sourceQuest"] = 13619,	-- Final Report
					["qg"] = 8582,	-- Kadrak
					["coord"] = { 42.6, 14.9, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(28876, {	-- To the Mor'Shan Ramparts!
					["qg"] = 3429,	-- Thork
					["coord"] = { 48.7, 59.5, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3, REMOVED_4_1_0 },
					["races"] = HORDE_ONLY,
				}),
				q(13712, {	-- To the Rescue!
					["sourceQuest"] = 13653,	-- Crisis at Splintertree
					["qg"] = 8582,	-- Kadrak
					["coord"] = { 42.6, 14.9, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(60644, {	-- Gorka's Band
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(869, {	-- To Track a Thief [CATA+] / Raptor Thieves
					-- #if AFTER CATA
					["sourceQuest"] = 14066,	-- Investigate the Wreckage
					-- #endif
					["qg"] = 3464,	-- Gazrog
					["coords"] = {
						-- #if AFTER CATA
						{ 66.8, 72.6, NORTHERN_BARRENS },
						-- #else
						{ 51.93, 30.32, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(9, 9, 5),
					-- #if BEFORE CATA
					["groups"] = {
						objective(1, {	-- 0/12 Raptor Head
							["provider"] = { "i", 5062 },	-- Raptor Head
							["crs"] = {
								3254,	-- Sunscale Lashtail
								3255,	-- Sunscale Screecher
								3256,	-- Sunscale Scytheclaw
							},
						}),
					},
					-- #endif
				}),
				{	-- Tome of the Cabal (1/3)
					["allianceQuestData"] = q(1758, {	-- Tome of the Cabal (1/3) (A)
						["sourceQuest"] = 1798,	-- Seeking Strahad (Stormwind)
					}),
					["hordeQuestData"] = q(1801, {	-- Tome of the Cabal (1/3) (H)
						["sourceQuests"] = {
							2996,	-- Seeking Strahad (Orgrimmar)
							3001,	-- Seeking Strahad (Undercity)
						},
					}),
					["qg"] = 6251,	-- Strahad Farsan
					["coord"] = { 62.6, 35.4, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["lvl"] = 30,
				},
				{	-- Tome of the Cabal (2/3)
					["allianceQuestData"] = q(1802, {	-- Tome of the Cabal (2/3) (A)
						["sourceQuest"] = 1758,	-- Tome of the Cabal (1/3) (A)
						["qg"] = 6294,	-- Krom Stoutarm
						["coord"] = { 74.4, 9.4, IRONFORGE },
					}),
					["hordeQuestData"] = q(1803, {	-- Tome of the Cabal (2/3) (H)
						["sourceQuest"] = 1801,	-- Tome of the Cabal (1/3) (H)
						["qg"] = 6293,	-- Jorah Annison
						["coord"] = { 76.6, 36.8, UNDERCITY },
					}),
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { HILLSBRAD_FOOTHILLS, THOUSAND_NEEDLES },
					["classes"] = { WARLOCK },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Moldy Tome
							["provider"] = { "i", 6931 },	-- Moldy Tome
							["coord"] = { 27.8, 72.9, HILLSBRAD_FOOTHILLS },
						}),
						objective(2, {	-- 0/1 Tattered Manuscript
							["provider"] = { "i", 6997 },	-- Tattered Manuscript
							["coord"] = { 43.5, 32.7, THOUSAND_NEEDLES },
						}),
					},
				},
				{	-- Tome of the Cabal (3/3)
					["allianceQuestData"] = q(1804, {	-- Tome of the Cabal (3/3) (A)
						["sourceQuest"] = 1802,	-- Tome of the Cabal (2/3) (A)
						["providers"] = {
							{ "n", 6294 },	-- Krom Stoutarm
							{ "i", 7006 },	-- Reconstructed Tome
						},
						["coord"] = { 74.4, 9.4, IRONFORGE },
					}),
					["hordeQuestData"] = q(1805, {	-- Tome of the Cabal (3/3) (H)
						["sourceQuest"] = 1803,	-- Tome of the Cabal (2/3) (H)
						["providers"] = {
							{ "n", 6293 },	-- Jorah Annison
							{ "i", 7006 },	-- Reconstructed Tome
						},
						["coord"] = { 76.6, 36.8, UNDERCITY },
					}),
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WETLANDS },
					["classes"] = { WARLOCK },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/3 Rod of Channeling
							["provider"] = { "i", 6930 },	-- Rod of Channeling
							["crs"] = {
								1057,	-- Dragonmaw Bonewarder
								1038,	-- Dragonmaw Shadowwarder
							},
						}),
					},
				},
				q(1824, {	-- Trial at the Field of Giants
					["sourceQuest"] = 1823,	-- Speak with Ruga
					["qg"] = 6394,	-- Ruga Ragetotem
					["coord"] = { 44.68, 59.42, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/5 Twitching Antenna
							["provider"] = { "i", 7119 },	-- Twitching Antenna
							["crs"] = {
								3250,	-- Silithid Creeper
								3251,	-- Silithid Grub
								3253,	-- Silithid Harvester
								3503,	-- Silithid Protector
								3252,	-- Silithid Swarmer
							},
						}),
						i(7120, {	-- Ruga's Bulwark
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(959, {	-- Trouble at the Docks
					["qg"] = 3665,	-- Crane Operator Bigglefuzz
					["coord"] = { 63.1, 37.6, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WAILING_CAVERNS },
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/1 99-Year-Old Port
							["provider"] = { "i", 5334 },	-- 99-Year-Old Port
							["coord"] = { 45, 35.2, THE_BARRENS },
							["cr"] = 3655,	-- Mad Magglish
						}),
					},
				}),
				q(1839, {	-- Ula'elek and the Brutal Gauntlets
					["sourceQuest"] = 1838,	-- Brutal Armor
					["qg"] = 5878,	-- Thun'grim Firegaze
					["coord"] = { 57.2, 30.2, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
				q(851, {	-- Verog the Dervish
					["sourceQuests"] = {
						-- #if AFTER CATA
						14072,	-- Flushing Out Verog
						-- #else
						850,	-- Kolkar Leaders
						-- #endif
					},
					["qgs"] = {
						-- #if AFTER CATA
						34638,	-- Shoe
						-- #else
						3389,	-- Regthar Deathgate
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 55.2, 78.3, NORTHERN_BARRENS },
						-- #else
						{ 45.3, 28.4, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(11, 11, 5),
					["groups"] = {
						objective(1, {	-- 0/1 Verog's Head
							["provider"] = { "i", 5023 },	-- Verog's Head
							["coords"] = {
								-- #if AFTER CATA
								{ 51.2, 78.8, NORTHERN_BARRENS },
								-- #else
								{ 53.0, 41.6, THE_BARRENS },
								-- #endif
							},
							["cr"] = 3395,	-- Verog the Dervish
						}),
						i(59566, {	-- Robe of Shame
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59567, {	-- Murderous Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131219, {	-- Murderous Cuffs
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1505, {	-- Veteran Uzzek
					["altQuests"] = { 1502, 1819 },	-- Thun'grim Firegaze / Ulag the Cleaver
					["qgs"] = {
						3170,	-- Tarshaw Jaggedscar
						3354,	-- Sorek
						3063,	-- Krang Stonehoof
					},
					["coords"] = {
						{ 54.18, 42.47, DUROTAR },
						{ 49.4, 60.4, MULGORE },
						{ 80.3, 32.4, ORGRIMMAR },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(895, {	-- WANTED: Baron Longshore / WANTED: Cap'n Garvey [CATA+]
					["provider"] = { "o", 3972 },	-- WANTED
					["coords"] = {
						-- #if AFTER CATA
						{ 68.3, 71.2, NORTHERN_BARRENS },
						-- #else
						{ 62.6, 37.5, THE_BARRENS },
						-- #endif
					},
					["lvl"] = lvlsquish(11, 11, 5),
					["groups"] = {
						-- #if AFTER CATA
						objective(1, {	-- 0/1 Cap'n Garvey's Head [CATA+]
							["provider"] = { "i", 5084 },	-- Cap'n Garvey's Head [CATA+]
							["coord"] = { 77.8, 89.2, NORTHERN_BARRENS },
							["cr"] = 34750,	-- Cap'n Garvey <Southsea Freebooters>
						}),
						-- #else
						objective(1, {	-- 0/1 Baron Longshore's Head
							["provider"] = { "i", 5084 },	-- Baron Longshore's Head
							["coord"] = { 62.6, 49.8, THE_BARRENS },
							["cr"] = 3467,	-- Baron Longshore <Southsea Freebooters>
						}),
						-- #endif
						i(49560, {	-- Proof of Death
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(49543, {	-- Seaworthy Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(49548, {	-- Gazlowe's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(49446, {	-- Retainer Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131225, {	-- Gazlowe's Grips
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131226, {	-- Retainer Tunic
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(14068, {	-- Waptor Twapping
					-- #if AFTER 9.0.1
					["description"] = "This quest is a stand-alone quest involving level 30 raptors and have nothing to do with the level 35 Kor'kron soldiers around the zone. The level 35 soldiers got added with patch 5.3.0 as part of the late MoP storyline.",
					-- #endif
					["qg"] = 34828,	-- Kala'ma
					["coord"] = { 62.0, 63.2, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Wittle Waptor
							["providers"] = {
								{ "i", 46851 },	-- Wittle Waptor
								{ "o", 195239 },	-- Woaded Waptor Twap
							},
						}),
						i(59563, {	-- Waptor Thwapper
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59564, {	-- Waptor Skin Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59565, {	-- Waptor Scale Bweastpwate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131332, {	-- Waptor Tweads
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				warchiefscommand(q(28493, {	-- Warchief's Command: Ashenvale!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR, THUNDER_BLUFF },	-- Only found in Orgrimmar & Thunder Bluff in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 19. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 23. (TODO: Test max level)
					["lvl"] = { 19, 23 },
					-- #endif
				})),
				warchiefscommand(q(28494, {	-- Warchief's Command: Northern Barrens!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR, THUNDER_BLUFF },	-- Only found in Orgrimmar & Thunder Bluff in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 9. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 18. (TODO: Test max level)
					["lvl"] = { 9, 18 },
					-- #endif
				})),
				q(972, {	-- Water Sapta [The Barrens]
					["sourceQuest"] = 220,	-- Call of Water (6/9)
					["qg"] = 5901,	-- Islen Waterseer
					["coord"] = { 65.8, 43.8, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 20,
					["groups"] = {
						i(6637, {	-- Water Sapta
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(29026, {	-- Wenikee Boltbucket
					["sourceQuest"] = 14003,	-- Samophlange Repair
					["altQuests"] = { 3921 },	-- Wenikee Boltbucket [Pre-4.0]
					["qg"] = 34674,	-- Brak Blusterpipe
					["coord"] = { 62.6, 16.9, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_6 },
					["races"] = HORDE_ONLY,
				}),
				q(3921, {	-- Wenikee Boltbucket
					["sourceQuest"] = 902,	-- Samophlange (4/4)
					["providers"] = {
						{ "n", 3442 },	-- Sputtervalve
						{ "i", 11142 },	-- Broken Samophlange
					},
					["coord"] = { 62.98, 37.21, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1492, {	-- Wharfmaster Dizzywig
					["providers"] = {
						{ "n", 3390 },	-- Apothecary Helbrim
						{ "i", 6462 },	-- Secure Crate
					},
					["coord"] = { 51.44, 30.15, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(13999, {	-- Who's Shroomin' Who?
					["sourceQuest"] = 13998,	-- In Fungus we Trust
					["qg"] = 3390,	-- Apothecary Helbrim
					["coord"] = { 48.6, 58.2, NORTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(RARES, {
				n(3672, {	-- Boahn <Druid of the Fang>
					["coords"] = {
						-- #if AFTER CATA
						{ 43.6, 65.8, NORTHERN_BARRENS },
						-- #else
						{ 49.1, 33.9, THE_BARRENS },
						-- #endif
					},
					["description"] = "Roams around the waterfall just outside the Wailing Caverns dungeon portal.",
					["groups"] = {
						i(5423),	-- Boahn's Fang
						i(5422),	-- Brambleweed Leggings
					},
				}),
				n(5838, {	-- Brokespear
					["coords"] = {
						-- #if AFTER CATA
						{ 52.2, 75.8, NORTHERN_BARRENS },
						{ 51.4, 83.8, NORTHERN_BARRENS },
						{ 53.6, 87.0, NORTHERN_BARRENS },
						{ 57.8, 82.2, NORTHERN_BARRENS },
						{ 58.6, 77.6, NORTHERN_BARRENS },
						-- #else
						{ 53.6, 40.0, THE_BARRENS },
						{ 53.0, 44.6, THE_BARRENS },
						{ 54.6, 46.2, THE_BARRENS },
						{ 56.6, 43.6, THE_BARRENS },
						{ 57.2, 41.6, THE_BARRENS },
						-- #endif
					},
					["groups"] = {
						i(7559, {	-- Runic Cane
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(5865, {	-- Dishu
					["coords"] = {
						-- #if AFTER CATA
						{ 45.4, 32.8, NORTHERN_BARRENS },
						{ 45.2, 52.8, NORTHERN_BARRENS },
						{ 48.8, 51.8, NORTHERN_BARRENS },
						-- #else
						{ 49.6, 15.8, THE_BARRENS },
						{ 51.0, 20.6, THE_BARRENS },
						{ 49.8, 27.6, THE_BARRENS },
						{ 51.6, 26.8, THE_BARRENS },
						-- #endif
					},
				}),
				n(3270, {	-- Elder Mystic Razorsnout
					["coords"] = {
						-- #if AFTER CATA
						{ 56.4, 51.6, NORTHERN_BARRENS },
						{ 58.2, 49.6, NORTHERN_BARRENS },
						{ 60.8, 52.4, NORTHERN_BARRENS },
						{ 61.6, 53.2, NORTHERN_BARRENS },
						-- #else
						{ 58.6, 26.8, THE_BARRENS },
						{ 59.0, 24.6, THE_BARRENS },
						-- #endif
					},
					["groups"] = {
						i(4768, {	-- Adept's Gloves
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(4771, {	-- Harvest Cloak
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(5836, {	-- Engineer Whirleygig
					["coords"] = {
						-- #if AFTER CATA
						{ 58.0, 20.6, NORTHERN_BARRENS },
						-- #else
						{ 56.2, 8.6, THE_BARRENS },
						-- #endif
					},
				}),
				n(5835, {	-- Foreman Grills
					["coords"] = {
						-- #if AFTER CATA
						{ 57.2, 20.6, NORTHERN_BARRENS },
						-- #else
						{ 56.6, 8.6, THE_BARRENS },
						-- #endif
					},
				}),
				n(3398, {	-- Gesharahan
					["coords"] = {
						-- #if AFTER CATA
						{ 40.0, 74.6, NORTHERN_BARRENS },
						-- #else
						{ 46.6, 39.6, THE_BARRENS },
						-- #endif
					},
					["groups"] = {
						i(5183, {	-- Pulsating Hydra Heart
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(5182, {	-- Shiver Blade
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(5828, {	-- Humar the Pridelord
					["coords"] = {
						-- #if AFTER CATA
						{ 67.2, 64.0, NORTHERN_BARRENS },
						-- #else
						{ 62.0, 33.6, THE_BARRENS },
						-- #endif
					},
				}),
				n(3470, {	-- Rathorian
					["coords"] = {
						-- #if AFTER CATA
						{ 41.6, 39.6, NORTHERN_BARRENS },
						-- #else
						{ 47.6, 19.2, THE_BARRENS },
						-- #endif
					},
					["groups"] = {
						i(5111, {  -- Rathorian's Cape
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(5112, {  -- Ritual Blade
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(5841, {	-- Rocklance
					["coords"] = {
						-- #if AFTER CATA
						{ 59.2, 80.2, NORTHERN_BARRENS },
						-- #else
						{ 53.4, 37.4, THE_BARRENS },
						{ 53.8, 41.2, THE_BARRENS },
						{ 53.0, 44.6, THE_BARRENS },
						{ 54.6, 48.0, THE_BARRENS },
						{ 55.4, 45.6, THE_BARRENS },
						{ 56.8, 41.8, THE_BARRENS },
						{ 55.6, 39.0, THE_BARRENS },
						-- #endif
					},
				}),
				n(5830, {	-- Sister Rathtalon
					["coords"] = {
						-- #if AFTER CATA
						{ 25.4, 33.2, NORTHERN_BARRENS },
						-- #else
						{ 39.6, 12.8, THE_BARRENS },
						{ 39.0, 16.2, THE_BARRENS },
						{ 40.6, 17.8, THE_BARRENS },
						-- #endif
					},
				}),
				n(3295, {	-- Sludge Anomaly [CATA+] / Sludge Beast
					["coords"] = {
						-- #if AFTER CATA
						{ 57.6, 19.4, NORTHERN_BARRENS },
						-- #else
						{ 56.6, 7.4, THE_BARRENS },
						{ 56.2, 9.6, THE_BARRENS },
						-- #endif
					},
				}),
				n(5837, {	-- Stonearm
					["coords"] = {
						-- #if AFTER CATA
						{ 32.4, 53.0, NORTHERN_BARRENS },
						{ 32.0, 48.6, NORTHERN_BARRENS },
						{ 40.0, 45.6, NORTHERN_BARRENS },
						-- #else
						{ 46.6, 23.0, THE_BARRENS },
						{ 42.2, 24.6, THE_BARRENS },
						-- #endif
					},
					["groups"] = {
						i(1355, {	-- Buckskin Cape
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(5831, {	-- Swiftmane
					["coords"] = {
						-- #if AFTER CATA
						{ 64.8, 60.4, NORTHERN_BARRENS },
						-- #else
						{ 60.6, 30.4, THE_BARRENS },
						{ 59.2, 32.6, THE_BARRENS },
						{ 61.8, 33.8, THE_BARRENS },
						-- #endif
					},
				}),
				n(5842, {	-- Takk the Leaper
					["coords"] = {
						-- #if AFTER CATA
						{ 63.4, 36.6, NORTHERN_BARRENS },
						-- #else
						{ 58.2, 7.6, THE_BARRENS },
						{ 60.6, 10.0, THE_BARRENS },
						{ 61.0, 13.6, THE_BARRENS },
						-- #endif
					},
				}),
				n(3652, {	-- Trigore the Lasher
					["description"] = "Inside the pool of water outside the Wailing Caverns dungeon portal.",
					["coords"] = {
						-- #if AFTER CATA
						{ 42.6, 64.0, NORTHERN_BARRENS },
						-- #else
						{ 52.0, 54.0, THE_BARRENS },
						-- #endif
					},
					["groups"] = {
						i(5425),	-- RuneChain Girdle [7.0.3+] / Runescale Girdle
						i(5426),	-- Serpent's Kiss
					},
				}),
			}),
			n(TREASURES, {
				o(152608, {	-- Kolkar's Booty
					["coords"] = {
						-- #if AFTER CATA
						{ 50.9, 78.9, NORTHERN_BARRENS },
						-- #else
						{ 44.3, 37.7, THE_BARRENS },
						-- #endif
					},
					["cost"] = { { "i", 5020, 1 } },	-- Kolkar Booty Key
				}),
				o(152618, {	-- Kolkar's Booty
					["coords"] = {
						-- #if AFTER CATA
						{ 50.9, 78.9, NORTHERN_BARRENS },
						-- #else
						{ 52.8, 41.8, THE_BARRENS },
						-- #endif
					},
					["cost"] = { { "i", 5020, 1 } },	-- Kolkar Booty Key
				}),
				o(202081, {	-- Takk's Nest
					["coords"] = {
						-- #if AFTER CATA
						{ 61.0, 19.8, NORTHERN_BARRENS },
						{ 62.8, 20.2, NORTHERN_BARRENS },
						{ 64.1, 23.0, NORTHERN_BARRENS },
						{ 65.0, 28.7, NORTHERN_BARRENS },
						-- { 56.0, 49.3, NORTHERN_BARRENS },	-- Wowhead notes this as another coord, but only before cataclysm
						-- #else
						{ 59.8, 8.5, THE_BARRENS },
						{ 60.3, 10.1, THE_BARRENS },
						{ 61.1, 11.4, THE_BARRENS },
						{ 60.7, 13.4, THE_BARRENS },
						-- #endif
					},
					["timeline"] = { ADDED_3_2_0 },
					["groups"] = {
						i(48118, {	-- Leaping Hatchling (PET!)
							["timeline"] = { ADDED_3_2_0 },
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(3495, {	-- Gagsprocket <Engineering Goods>
					["coords"] = {
						-- #if AFTER CATA
						{ 68.4, 69.2, NORTHERN_BARRENS },
						-- #else
						{ 62.7, 36.3, THE_BARRENS },
						-- #endif
					},
					["groups"] = {
						i(18648, {	-- Schematic: Green Firework (RECIPE!)
							["isLimited"] = true,
						}),
						-- #if AFTER TBC
						i(14639, {	-- Schematic: Minor Recombobulator (RECIPE!)
							["isLimited"] = true,
						}),
						-- #endif
					},
				}),
				n(3493, {	-- Grazlix <Armorer & Shieldcrafter>
					["coords"] = {
						-- #if AFTER CATA
						{ 67.6, 72.9, NORTHERN_BARRENS },
						-- #else
						{ 62.2, 38.4, THE_BARRENS },
						-- #endif
					},
					["groups"] = {
						i(4799, {	-- Antiquated Cloak
							["isLimited"] = true,
						}),
						i(4821, {	-- Bear Buckler
							["isLimited"] = true,
						}),
						i(4797, {	-- Fiery Cloak
							["isLimited"] = true,
						}),
						i(4820, {	-- Guardian Buckler
							["isLimited"] = true,
						}),
						i(4798, {	-- Heavy Runed CLoak
							["isLimited"] = true,
						}),
						i(4816, {	-- Legionnaire's Leggings
							["isLimited"] = true,
						}),
						i(4800, {	-- Mighty Chain Pants
							["isLimited"] = true,
						}),
						i(4822, {	-- Owl's Disk
							["isLimited"] = true,
						}),
					},
				}),
				-- #if AFTER 3.1.0.9626
				n(3443, {	-- Grub
					["coords"] = {
						-- #if AFTER CATA
						{ 55.4, 61.2, NORTHERN_BARRENS },
						-- #else
						{ 55.2, 31.8, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5051),	-- Dig Rat
						i(44977, {	-- Recipe: Dig Rat Stew (RECIPE!)
							["timeline"] = { ADDED_3_1_0, DELETED_4_3_0 },
						}),
					},
				}),
				-- #endif
				n(3486, {	-- Halija Whitestrider <Clothier>
					["coords"] = {
						-- #if AFTER CATA
						{ 50.0, 61.4, NORTHERN_BARRENS },
						-- #else
						{ 52.2, 31.8, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						16059,	-- Common Brown Shirt
						3428,	-- Common Grey Shirt
						16060,	-- Common White Shirt
					}},
					["groups"] = {
						i(4790, {	-- Inferno Cloak
							["isLimited"] = true,
						}),
						i(4782, {	-- Solstice Robe
							["isLimited"] = true,
						}),
						i(4792, {	-- Spirit Cloak
							["isLimited"] = true,
						}),
						i(4793, {	-- Sylvan Cloak
							["isLimited"] = true,
						}),
						i(4781, {	-- Whispering Cloak
							["isLimited"] = true,
						}),
						i(4786, {	-- Wise Man's Belt
							["isLimited"] = true,
						}),
					},
				}),
				n(3490, {	-- Hula'mahi <Reagents, Herbs & Poison Supplies> [TBC+] / Hula'mahi <Reagents and Herbs>
					["coords"] = {
						-- #if AFTER CATA
						{ 48.6, 58.4, NORTHERN_BARRENS },
						-- #else
						{ 51.4, 30.2, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6053, {	-- Recipe: Holy Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(3683, {	-- Kiknikle <Stylish Clothier>
					["coord"] = { 41.8, 38.6, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
							["isLimited"] = true,
						}),
						i(4782, {	-- Solstice Robe
							["isLimited"] = true,
						}),
						i(4781, {	-- Whispering Vest
							["isLimited"] = true,
						}),
						i(4786, {	-- Wise Man's Belt
							["isLimited"] = true,
						}),
					},
				}),
				n(3497, {	-- Kilxx <Fisherman>
					["coords"] = {
						-- #if AFTER CATA
						{ 68.6, 72.6, NORTHERN_BARRENS },
						-- #else
						{ 62.8, 38.2, THE_BARRENS },
						-- #endif
						},
					["groups"] = {
						i(6330),	-- Recipe: Bristle Whisker Catfish (RECIPE!)
						i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
					},
				}),
				n(3658, {	-- Lizzarik <Weapon Dealer>
					["coords"] = {
						-- #if AFTER CATA
						{ 66.8, 72.6, NORTHERN_BARRENS },
						{ 50.2, 59.2, NORTHERN_BARRENS },
						-- #else
						{ 52.4, 30.6, THE_BARRENS },
						{ 61.8, 38.2, THE_BARRENS },
						-- #endif
					},
					["description"] = "Travels on the road between Ratchet and The Crossroads.",
					["groups"] = {
						i(4765, {	-- Enamelled Broadsword
							["isLimited"] = true,
						}),
						i(4766, {	-- Feral Blade
							["isLimited"] = true,
						}),
						i(4778, {	-- Heavy Spiked Mace
							["isLimited"] = true,
						}),
						i(4777, {	-- Ironwood Maul
							["isLimited"] = true,
						}),
					},
				}),
				n(3479, {	-- Nargal Deatheye <Weaponsmith>
					["coords"] = {
						-- #if AFTER CATA
						{ 48.2, 56.6, NORTHERN_BARRENS },
						-- #else
						{ 51.2, 29.2, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4765, {	-- Enamelled Broadsword
							["isLimited"] = true,
						}),
						i(4766, {	-- Feral Blade
							["isLimited"] = true,
						}),
					},
				}),
				n(3684, {	-- Pizznukle <Leather Armor Merchant>
					["coord"] = { 41.8, 38.6, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4788, {	-- Agile Boots
							["isLimited"] = true,
						}),
						i(4789, {	-- Stable Boots
							["isLimited"] = true,
						}),
					},
				}),
				n(3499, {	-- Ranik <Trade Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 67.0, 73.4, NORTHERN_BARRENS },
						-- #else
						{ 61.9, 38.7, THE_BARRENS },
						-- #endif
					},
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(20855, {	-- Design: Wicked Moonstone Ring (RECIPE!)
							["timeline"] = { ADDED_2_0_5 },
							["isLimited"] = true,
						})),
						i(6272, {	-- Pattern: Blue Linen Robe (RECIPE!)
							["isLimited"] = true,
						}),
						i(6275, {	-- Pattern: Greater Adept's Robe (RECIPE!)
							["isLimited"] = true,
						}),
						i(5640, {	-- Recipe: Rage Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(8307, {	-- Tarban Hearthgrain <Baker>
					["coords"] = {
						-- #if AFTER CATA
						{ 55.0, 61.6, NORTHERN_BARRENS },
						-- #else
						{ 55.0, 32.0, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(3482, {	-- Tari'qa <Trade Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 49.0, 58.2, NORTHERN_BARRENS },
						-- #else
						{ 51.6, 30.0, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5488),	-- Recipe: Crispy Lizard Tail (RECIPE!)
						i(5486),	-- Recipe: Strider Stew (RECIPE!)
					},
				}),
				n(3488, {	-- Uthrok <Bowyer & Gunsmith>
					["coords"] = {
						-- #if AFTER CATA
						{ 48.0, 56.4, NORTHERN_BARRENS },
						-- #else
						{ 51.0, 29.0, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11304, {	-- Fine Longbow
							["isLimited"] = true,
						}),
					},
				}),
				n(3492, {	-- Vexspindle <Cloth & Leather Armor Merchant>
					["coords"] = {
						-- #if AFTER CATA
						{ 67.4, 72.8, NORTHERN_BARRENS },
						-- #else
						{ 62.2, 38.4, THE_BARRENS },
						-- #endif
					},
					["groups"] = {
						i(4795, {	-- Bear Bracers
							["isLimited"] = true,
						}),
						i(4796, {	-- Owl Bracers
							["isLimited"] = true,
						}),
						i(4794, {	-- Wolf Bracers
							["isLimited"] = true,
						}),
					},
				}),
				n(3682, {	-- Vrang Wildgore <Weaponsmith & Armorcrafter>
					["coords"] = {
						-- #if AFTER CATA
						{ 35.0, 26.8, NORTHERN_BARRENS },
						-- #else
						{ 43.8, 12.2, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4799, {	-- Antiquated Cloak
							["isLimited"] = true,
						}),
						i(4765, {	-- Enamelled Broadsword
							["isLimited"] = true,
						}),
						i(4766, {	-- Feral Blade
							["isLimited"] = true,
						}),
						i(4797, {	-- Fiery Cloak
							["isLimited"] = true,
						}),
						i(4798, {	-- Heavy Runed CLoak
							["isLimited"] = true,
						}),
						i(4778, {	-- Heavy Spiked Mace
							["isLimited"] = true,
						}),
						i(4777, {	-- Ironwood Maul
							["isLimited"] = true,
						}),
						i(4816, {	-- Legionnaire's Leggings
							["isLimited"] = true,
						}),
						i(4800, {	-- Mighty Chain Pants
							["isLimited"] = true,
						}),
					},
				}),
				n(3485, {	-- Wrahk <Tailoring Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 50.0, 61.0, NORTHERN_BARRENS },
						-- #else
						{ 52.2, 31.6, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6272, {	-- Pattern: Blue Linen Robe (RECIPE!)
							["isLimited"] = true,
						}),
						i(6270, {	-- Pattern: Blue Linen Vest (RECIPE!)
							["isLimited"] = true,
						}),
						i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				-- #if BEFORE CATA
				n(5944, {	-- Yonada <Tailoring & Leatherworking Supplies>
					["coord"] = { 45.0, 59.2, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6274, {	-- Pattern: Blue Overalls (RECIPE!)
							["isLimited"] = true,
						}),
						i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				-- #endif
				n(3489, {	-- Zargh <Butcher>
					["coords"] = {
						-- #if AFTER CATA
						{ 50.6, 57.8, NORTHERN_BARRENS },
						-- #else
						{ 52.6, 29.8, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(3735),	-- Recipe: Hot Lion Chops (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(5107, {	-- Deckhand's Shirt
					-- #if AFTER 4.0.3
					["description"] = "Previously dropping in Fray Island, it is currently considered unobtainable.",
					-- #else
					["description"] = "This shirt is expected to become unobtainable with Cataclysm. For the purposes of collecting, get it now and stock up on extras!",
					-- #endif
					["timeline"] = { ADDED_1_11_1, REMOVED_4_0_3 },	-- Likely Removed -- 13th May 2025 -- Goldenshacal
																	-- If somebody gets it, we can remove the timeline & set a note here since people are asking every couple months
					["crs"] = {
						-- #if BEFORE 4.0.3
						3381,	-- Southsea Brigand
						-- #endif
						3382,	-- Southsea Cannoneer
						3383,	-- Southsea Cutthroat
						3384,	-- Southsea Privateer
					},
				}),
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(97821, {	-- Gahz'rooki (PET!)
					["timeline"] = { ADDED_5_4_0 },
					["crs"] = {
						70997,	-- Hellscream Laborer
						70999,	-- Kor'kron Marauder
						71000,	-- Mercenary Engineer
						71001,	-- Mercenary Shredder
					},
				})),
				i(5020, {	-- Kolkar Booty Key
					["description"] = "Used to open Kolkar's Booty.",
					["timeline"] = { ADDED_1_11_1 },
					["crs"] = {
						3394,	-- Barak Kodobane
						3274,	-- Kolkar Pack Runner
						3273,	-- Kolkar Stormer
						3272,	-- Kolkar Wrangler
					},
				}),
				i(98059, { ["timeline"] = { ADDED_5_3_0 } }),	-- Kor'kron Supply Satchel
				-- Wouter TODO: check if this is added early with MoP Classic's Escalation phase
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(97990, {	-- Raptorhide Boxing Gloves (QI!)
					["timeline"] = { ADDED_5_4_0, REMOVED_7_0_3_LAUNCH },
					["crs"] = {
						70997,	-- Hellscream Laborer
						71012,	-- Kor'kron Butcher
						71188,	-- Kor'kron Earthshaker
						71002,	-- Kor'kron Incinerator
						70999,	-- Kor'kron Marauder
						71006,	-- Kor'kron Overseer
						71000,	-- Mercenary Engineer
						71001,	-- Mercenary Shredder
						71141,	-- Overburdened Laborer
					},
				})),
				i(6663, {	-- Recipe: Elixir of Giant Growth (RECIPE!)
					["description"] = "Can drop from any creature in the Barrens.",
				}),
				i(6661, {	-- Recipe: Savory Deviate Delight (RECIPE!)
					["description"] = "Can drop from any creature in the Barrens.",
				}),
			}),
		},
	}),
}));
-- #endif
