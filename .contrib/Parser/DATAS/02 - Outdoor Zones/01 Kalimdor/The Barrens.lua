---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if BEFORE 4.0.3
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
	m(THE_BARRENS, {
		["lore"] = "The Barrens is a vast, arid savannah. Dust devils swirl across the dry land and canyons cut the earth. Despite its inhospitable nature, numerous trade routes, including the major Gold Road, cross the Barrens. Centaur raiding parties are a constant threat, as are lions and thunder lizards. The orcs and tauren drove the quilboar tribes out of their lands, and the creatures now lair in the Barrens.\n\nIronforge dwarves have discovered a great Titan ruin in this region, and an enormous dig site and settlement has sprung up around it. Called Bael Modan, this fortified city is a common stop for the caravans that trundle across the dusty landscape. The goblin city of Ratchet, full of clanging coins, shining lights and debauchery, sprawls on the Barrens' eastern coast.",
		["icon"] = 236717,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(750),	-- Explore The Barrens
			}),
			explorationHeader({
				exploration(1700),	-- Agama'gor
				exploration(359),	-- Bael Modan
				exploration(1701),	-- Blackthorn Ridge
				exploration(381),	-- Boulder Lode Mine
				exploration(1698),	-- Bramblescar
				exploration(378),	-- Camp Taurajo
				exploration(384),	-- Dreadmist Peak
				exploration(379),	-- Far Watch Post
				exploration(390),	-- Field of Giants
				exploration(1704),	-- Grol'dom Farm
				exploration(1702),	-- Honor's Stand
				exploration(387),	-- Lushwater Oasis
				exploration(385),	-- Northwatch Hold
				exploration(1697),	-- Raptor Grounds
				exploration(392),	-- Ratchet
				exploration(1316),	-- Razorfen Downs
				exploration(1717),	-- Razorfen Kraul
				exploration(380),	-- The Crossroads
				exploration(383),	-- The Dry Hills
				exploration(386),	-- The Forgotten Pools
				exploration(391),	-- The Merchant Coast
				exploration(1703),	-- The Mor'shan Rampart
				exploration(382),	-- The Sludge Fen
				exploration(388),	-- The Stagnant Oasis
				exploration(1699),	-- Thorn Hill
			}),
			n(FACTIONS, {
				faction(FACTION_RATCHET, {	-- Ratchet
					["icon"] = 133784,
					["OnTooltip"] = [[_.OnTooltipDB.ForRatchet]],
					["maps"] = { TANARIS },
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(77, {	-- Camp Taurajo, The Barrens
					["cr"] = 10378,	-- Omusa Thunderhorn <Wind Rider Master>
					["coord"] = { 44.4, 59.0, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(25, {	-- Crossroads, The Barrens
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
				fp(80, {	-- Ratchet, The Barrens
					["cr"] = 16227,	-- Bragok <Flight Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 69.0, 70.6, NORTHERN_BARRENS },
						-- #else
						{ 63.0, 37.0, THE_BARRENS },
						-- #endif
					},
				}),
			}),
			prof(FISHING, {
				i(6651, {	-- Broken Wine Bottle
					["description"] = "Drops from fishing in the Sludge Fen.",
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			header(HEADERS.Spell, 921, {	-- Pickpocketing
				["classes"] = { ROGUE },
				["groups"] = {
					applyclassicphase(SOD_PHASE_ONE, i(208768, {	-- Buccaneer's Matchbox
						["coord"] = { 63.6, 49.2, THE_BARRENS },
						["classes"] = { ROGUE },
						["crs"] = {
							3384,	-- Southsea Privateer
							3383,	-- Southsea Cutthroat
							3381,	-- Southsea Brigand
							3382,	-- Southsea Cannoneer
						},
					})),
				},
			}),
			-- #endif
			n(QUESTS, {
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79007, {	-- ...and that note you found (H)
					["providers"] = {
						{ "o", 415106 },	-- Burned-Out Remains
						{ "o", 424010 },	-- Nailed Plank
					},
					["coords"] = {
						{ 46.4, 73.9, THE_BARRENS },
						{ 37.5, 50.8, WESTFALL },
					},
					["timeline"] = { ADDED_1_15_1 },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						i(2459),	-- Swiftness Potion
						i(3388),	-- Strong Troll's Blood Potion
					},
				})),
				-- #endif
				q(1153, {	-- A New Ore Sample
					["sourceQuest"] = 893,	-- Weapons of Choice
					["qg"] = 3433,	-- Tatternack Steelforge
					["coord"] = { 45.10, 57.69, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Unrefined Ore Sample
							["provider"] = { "i", 5842 },	-- Unrefined Ore Sample
							["crs"] = {
								4116,	-- Gravelsnout Surveyor
								4113,	-- Gravelsnout Digger
								14427,	-- Gibblesnik
							},
						}),
						i(6741, {	-- Orcish War Sword
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5043, {	-- Agamaggan's Agility
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["qg"] = 3430,	-- Mangletooth
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 5075, 4 }},	-- Blood Shard
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 14,
				}),
				q(5042, {	-- Agamaggan's Strength
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["qg"] = 3430,	-- Mangletooth
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 5075, 4 }},	-- Blood Shard
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 14,
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
				q(879, {	-- Betrayal from Within (1/2)
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["qg"] = 3430,	-- Mangletooth
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/1 Kuz's Skull
							["provider"] = { "i", 5074 },	-- Kuz's Skull
							["coord"] = { 44.6, 79.8, THE_BARRENS },
							["cr"] = 3436,	-- Kuz
						}),
						objective(2, {	-- 0/1 Nak's Skull
							["provider"] = { "i", 5073 },	-- Nak's Skull
							["coord"] = { 43.8, 83.6, THE_BARRENS },
							["cr"] = 3434,	-- Nak
						}),
						objective(3, {	-- 0/1 Lok's Skull
							["provider"] = { "i", 5072 },	-- Lok's Skull
							["coord"] = { 40.2, 80.6, THE_BARRENS },
							["cr"] = 3435,	-- Lok Orcbane
						}),
					},
				}),
				q(906, {	-- Betrayal from Within (2/2)
					["sourceQuest"] = 879,	-- Betrayal from Within (1/2)
					["providers"] = {
						{ "n", 3430 },	-- Mangletooth
						{ "i", 5072 },	-- Lok's Skull
					},
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						i(5316, {	-- Barkshell Tunic
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5317, {	-- Dry Moss Tunic
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5052, {	-- Blood Shards of Agamaggan
					["sourceQuest"] = 878,	-- Tribes at War
					["qg"] = 3430,	-- Mangletooth
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 5075, 1 }},	-- Blood Shard
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
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
					["coord"] = { 25.2, 21.0, THUNDER_BLUFF },
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
					["coord"] = { 55.8, 20.0, THE_BARRENS },
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
							["coord"] = { 44.0, 77.0, THE_BARRENS },
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
							["coord"] = { 62.0, 20.0, HILLSBRAD_FOOTHILLS },
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
							["coord"] = { 33.0, 67.0, ASHENVALE },
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
						{ 45.34, 28.42, THE_BARRENS },
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
					["coord"] = { 46.0, 57.0, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Demon of the Orb slain
							["provider"] = { "n", 6549 },	-- Demon of the Orb
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
						{ 51.95, 31.58, THE_BARRENS },
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
						{ 45.34, 28.42, THE_BARRENS },
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
				q(913, {	-- Cry of the Thunderhawk
					["sourceQuest"] = 907,	-- Enraged Thunder Lizards
					["qg"] = 3387,	-- Jorn Skyseer
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Thunderhawk Wings
							["provider"] = { "i", 5164 },	-- Thunderhawk Wings
							["crs"] = {
								3249,	-- Greater Thunderhawk
								3424,	-- Thunderhawk Cloudscraper
								3247,	-- Thunderhawk Hatchling
							},
						}),
						i(5302, {	-- Cobalt Buckler
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5306, {	-- Wind Rider Staff
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5299, {	-- Gloves of the Moon
							["timeline"] = { REMOVED_4_0_3 },
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
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78266, {	-- Dark Iron Ordinance
					["sourceQuest"] = 78284,	-- Grizzby HQT
					["qg"] = 211653,	-- Grizzby
					["coord"] = { 61.8, 39.4, THE_BARRENS },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { WETLANDS, ARATHI_HIGHLANDS },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/20 Dark Iron Ordinance
							["provider"] = { "i", 210138 },	-- Dark Iron Ordinance
							["coord"] = { 61.4, 29.6, WETLANDS },
							["crs"] = {
								1051,	-- Dark Iron Dwarf
								1052,	-- Dark Iron Saboteur
								1053,	-- Dark Iron Tunneler
								1054,	-- Dark Iron Demolitionist
							},
						}),
					},
				})),
				-- #endif
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
				q(1716, {	-- Devourer of Souls [Stormwind City]
					["sourceQuest"] = 1717,	-- Gakin's Summons (Succubus)
					["qg"] = 6122,	-- Gakin the Darkbinder
					["coords"] = {
						-- #if AFTER WRATH
						{ 39.2, 85.2, STORMWIND_CITY },
						-- #else
						{ 25.4, 78.4, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(862, {	-- Dig Rat Stew
					["qg"] = 3443,	-- Grub
					["coord"] = { 55.31, 31.79, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 5051, 8 } },	-- Dig Rat
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						i(10919, {	-- Apothecary Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5478),	-- Dig Rat Stew
						i(5487, {	-- Recipe: Dig Rat Stew (RECIPE!)
							["timeline"] = { REMOVED_4_3_0 },
						}),
					},
				}),
				q(871, {	-- Disrupt the Attacks / In Defense of Far Watch [CATA+]
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
						{ 51.50, 30.86, THE_BARRENS },
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
				q(1515, {	-- Dogran's Captivity
					["sourceQuest"] = 1511,	-- Ken'zigla's Draught
					["providers"] = {
						{ "n", 5911 },	-- Grunt Logmar
						{ "i", 6624 },	-- Ken'zigla's Draught
					},
					["coord"] = { 44.6, 59.2, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 20,
				}),
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
						{ 52.23, 31.01, THE_BARRENS },
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
				q(907, {	-- Enraged Thunder Lizards
					["sourceQuest"] = 882,	-- Ishamuhale
					["qg"] = 3387,	-- Jorn Skyseer
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/3 Thunder Lizard Blood
							["provider"] = { "i", 5143 },	-- Thunder Lizard Blood
							["crs"] = {
								3240,	-- Stormsnout
								3239,	-- Thunderhead
							},
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78265, {	-- Fish Oil
					["sourceQuest"] = 78284,	-- Grizzby HQT
					["qg"] = 211653,	-- Grizzby
					["coord"] = { 61.8, 39.4, THE_BARRENS },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { ARATHI_HIGHLANDS, BLACKFATHOM_DEEPS, DESOLACE, DUSTWALLOW_MARSH, FERALAS, HILLSBRAD_FOOTHILLS, STRANGLETHORN_VALE, SWAMP_OF_SORROWS, WETLANDS },
					["cost"] = { { "i", 17058, 24 } },	-- Fish Oil
					["lvl"] = 20,
				})),
				-- #endif
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
						{ 51.44, 30.15, THE_BARRENS },
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
				q(843, {	-- Gann's Reclamation
					["qg"] = 3341,	-- Gann Stonespire
					["coord"] = { 46.08, 76.37, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/15 Bael'dun Excavator slain
							["provider"] = { "n", 3374 },	-- Bael'dun Excavator
						}),
						objective(2, {	-- 0/5 Bael'dun Foreman slain
							["provider"] = { "n", 3375 },	-- Bael'dun Foreman
						}),
						objective(3, {	-- 0/1 Khazgorm's Journal
							["provider"] = { "i", 5006 },	-- Khazgorm's Journal
							["coord"] = { 47.8, 85.6, THE_BARRENS },
							["cr"] = 3392,	-- Prospector Khazgorm <Explorers' League>
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
						{ 51.6, 30.9, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(12, 12, 5),
					["groups"] = {
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
					},
				}),
				q(1738, {	-- Heartswood
					["sourceQuest"] = 1716,	-- Devourer of Souls [Stormwind City]
					["qg"] = 6244,	-- Takar the Seer
					["coord"] = { 49.2, 57.0, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Heartswood
							["providers"] = {
								{ "i", 6912 },	-- Heartswood
								{ "o", 93192 },	-- Heartswood
							},
							["coord"] = { 31.0, 31.0, ASHENVALE },
						}),
					},
				}),
				q(852, {	-- Hezrul Bloodmark
					["sourceQuests"] = {
						851,	-- Verog the Dervish
						-- #if AFTER CATA
						850,	-- Kolkar Leaders
						14073,	-- Deathgate's Reinforcements
						-- #endif
					},
					["qg"] = 3389,	-- Regthar Deathgate
					["coords"] = {
						-- #if AFTER CATA
						{ 37.9, 55.2, NORTHERN_BARRENS },
						-- #else
						{ 45.34, 28.42, THE_BARRENS },
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
				q(4736, {	-- In Search of Menara Voidrender (Ironforge)
					["qg"] = 5172,	-- Briarthorn
					["coord"] = { 50.2, 6.0, IRONFORGE },
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
					["coord"] = { 86.0, 15.6, UNDERCITY },
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
						{ 56.52, 7.45, THE_BARRENS },
						-- #endif
					},
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
				q(882, {	-- Ishamuhale
					["sourceQuest"] = 3261,	-- Jorn Skyseer
					["qg"] = 3387,	-- Jorn Skyseer
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Ishamuhale's Fang
							["provider"] = { "i", 5101 },	-- Ishamuhale's Fang
							["coord"] = { 59.8, 30.6, THE_BARRENS },
							["cost"] = {{ "i", 10338, 1 }},	-- Fresh Zhevra Carcass
							["cr"] = 3257,	-- Ishamuhale
						}),
						-- #if BEFORE 4.0.3
						i(10338, {	-- Fresh Zhevra Carcass
							["crs"] = {
								3426,	-- Zhevra Charger
								3466,	-- Zhevra Courser
								3242,	-- Zhevra Runner
							},
						}),
						-- #endif
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
					["coord"] = { 50.2, 6.0, IRONFORGE },
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
					["coord"] = { 86.0, 15.6, UNDERCITY },
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
						{ 45.34, 28.42, THE_BARRENS },
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
				q(883, {	-- Lakota'mani
					["provider"] = { "i", 5099 },	-- Hoof of Lakota'mani
					["coord"] = { 47.6, 51.6, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["cr"] = 3474,	-- Lakota'mani
					["lvl"] = 10,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78287, {	-- Let Me Make You An Offer [A]
					["sourceQuests"] = {
						78265,	-- Fish Oil
						78266,	-- Dark Iron Ordinance
						78267,	-- Shredder Turbochargers
					},
					["providers"] = {
						{ "n", 211653 },	-- Grizzby
						{ "i", 211447 },	-- Arms Shipment
					},
					["coord"] = { 61.8, 39.4, THE_BARRENS },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				})),
				applyclassicphase(SOD_PHASE_ONE, q(78288, {	-- Let Me Make You An Offer [H]
					["sourceQuests"] = {
						78265,	-- Fish Oil
						78266,	-- Dark Iron Ordinance
						78267,	-- Shredder Turbochargers
					},
					["providers"] = {
						{ "n", 211653 },	-- Grizzby
						{ "i", 211447 },	-- Arms Shipment
					},
					["coord"] = { 61.8, 39.4, THE_BARRENS },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				})),
				-- #endif
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
				q(1512, {	-- Love's Gift
					["sourceQuest"] = 1515,	-- Dogran's Captivity
					["providers"] = {
						{ "n", 5908 },	-- Grunt Dogran
						{ "i", 6625 },	-- Dirt-caked Pendant
					},
					["coord"] = { 43.2, 47.8, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 20,
				}),
				q(874, {	-- Mahren Skyseer
					["sourceQuest"] = 913,	-- Cry of the Thunderhawk
					["qg"] = 3387,	-- Jorn Skyseer
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(6365, {	-- Meats to Orgrimmar
					["providers"] = {
						{ "n", 3489 },	-- Zargh
						{ "i", 16306 },	-- Zargh's Meats
					},
					["coord"] = { 52.62, 29.84, THE_BARRENS },
					["races"] = { ORC, TROLL },
					["lvl"] = lvlsquish(10, 10, 5),
				}),
				q(9267, {	-- Mending Old Wounds
					["qg"] = 16418,	-- Mupsi Shacklefridd
					["coord"] = { 61.22, 37.86, THE_BARRENS },
					["maxReputation"] = { FACTION_RATCHET, NEUTRAL },	-- Ratchet, must be less than Neutral
					["cost"] = {
						{ "i", 2589, 40 },	-- Linen Cloth
						{ "i", 3371, 4 },	-- Empty Vial
					},
					["repeatable"] = true,
					["lvl"] = lvlsquish(10, 10, 5),
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
				q(884, {	-- Owatanka
					["provider"] = { "i", 5102 },	-- Owatanka's Tailspike
					["coord"] = { 49.6, 59.6, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["cr"] = 3473,	-- Owatanka
					["lvl"] = 10,
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
						{ 52.23, 31.01, THE_BARRENS },
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
					["coord"] = { 63.0, 36.4, THE_BARRENS },
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
				q(903, {	-- Prowlers of the Barrens / Hunting the Huntress [CATA+]
					["sourceQuest"] = 845,	-- The Zhevra
					["qg"] = 3338,	-- Sergra Darkthorn
					["coords"] = {
						-- #if AFTER CATA
						{ 50.0, 59.7, NORTHERN_BARRENS },
						-- #else
						{ 52.23, 31.01, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(10, 10, 5),
					["groups"] = {
						objective(1, {	-- 0/7 Prowler Claws
							["provider"] = { "i", 5096 },	-- Prowler Claws
							["cr"] = 3425,	-- Savannah Prowler
						}),
					},
				}),
				q(865, {	-- Raptor Horns / It's Gotta be the Horn [CATA+]
					["qg"] = 3446,	-- Mebok Mizzyrix
					["coords"] = {
						-- #if AFTER CATA
						{ 67.8, 71.5, NORTHERN_BARRENS },
						-- #else
						{ 62.37, 37.32, THE_BARRENS },
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
				q(869, {	-- Raptor Thieves / To Track a Thief [CATA+]
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
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78702, {	-- Raszel Ander
					["sourceQuest"] = 78684,	-- Mysterious Traveler
					["qg"] = 6247,	-- Doan Karhan
					["coord"] = { 49.2, 57.2, THE_BARRENS },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARLOCK },
					["lvl"] = 20,
					["groups"] = {
						i(210980, {	-- Rune of Metamorphosis
							["classes"] = { WARLOCK },
							["groups"] = {
								recipe(403938),	-- Engrave Gloves - Metamorphosis
							},
						}),
					},
				})),
				-- #endif
				q(5046, {	-- Razorhide
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["qg"] = 3430,	-- Mangletooth
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 5075, 4 }},	-- Blood Shard
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 14,
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
				-- #if BEFORE CATA
				q(6386, {	-- Return to the Crossroads.
					["sourceQuest"] = 6385,	-- Doras the Wind Rider Master
					["providers"] = {
						{ "n", 3310 },	-- Doras
						{ "i", 16307 },	-- Gryshka's Letter
					},
					["coord"] = { 45.21, 63.58, ORGRIMMAR },
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
					["coord"] = { 46.0, 57.0, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["lvl"] = 35,
				}),
				q(846, {	-- Revenge of Gann (1/2)
					["sourceQuest"] = 843,	-- Gann's Reclamation
					["qg"] = 3341,	-- Gann Stonespire
					["coord"] = { 46.08, 76.37, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/6 Nitroglycerin
							["provider"] = { "i", 5017 },	-- Nitroglycerin
							["crs"] = {
								3378,	-- Bael'dun Officer
								3377,	-- Bael'dun Rifleman
								3376,	-- Bael'dun Soldier
							},
						}),
						objective(2, {	-- 0/6 Wood Pulp
							["provider"] = { "i", 5018 },	-- Wood Pulp
							["crs"] = {
								3378,	-- Bael'dun Officer
								3377,	-- Bael'dun Rifleman
								3376,	-- Bael'dun Soldier
							},
						}),
						objective(3, {	-- 0/6 Sodium Nitrate
							["provider"] = { "i", 5019 },	-- Sodium Nitrate
							["crs"] = {
								3378,	-- Bael'dun Officer
								3377,	-- Bael'dun Rifleman
								3376,	-- Bael'dun Soldier
							},
						}),
					},
				}),
				q(849, {	-- Revenge of Gann (2/2)
					["sourceQuest"] = 846,	-- Revenge of Gann (1/2)
					["qg"] = 3341,	-- Gann Stonespire
					["coord"] = { 46.08, 76.37, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- Bael Modan Flying Machine destroyed
							["providers"] = {
								{ "o", 3644 },	-- Bael Modan Flying Machine
								{ "i", 5021 },	-- Explosive Stick of Gann
							},
							["coord"] = { 46.0, 85.0, THE_BARRENS },
						}),
						i(5313, {	-- Totemic Clan Ring
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if BEFORE CATA
				q(6384, {	-- Ride to Orgrimmar
					["sourceQuest"] = 6365,	-- Meats to Orgrimmar
					["providers"] = {
						{ "n", 3615 },	-- Devrak
						{ "i", 16306 },	-- Zargh's Meats
					},
					["coord"] = { 51.50, 30.34, THE_BARRENS },
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
					["coord"] = { 49.05, 11.17, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(5045, {	-- Rising Spirit
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["qg"] = 3430,	-- Mangletooth
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 5075, 4 }},	-- Blood Shard
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 14,
				}),
				q(866,	{	-- Root Samples
					["description"] = "To access this quest, you must have at least 40 skill in Herbalism.",
					["qg"] = 3446,	-- Mebok Mizzyrix
					["coords"] = {
						-- #if AFTER CATA
						{ 67.8, 71.6, NORTHERN_BARRENS },
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
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78680, {	-- Rumors Abound
					["description"] = "Climb each of the towers, you'll likely need a group or a friend capable of surviving long enough to give you about 3 seconds of uninterupted looting time.",
					["sourceQuest"] = 1740,	-- The Orb of Soran'ruk
					["qg"] = 6247,	-- Doan Karhan
					["coord"] = { 49.2, 57.2, THE_BARRENS },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { REDRIDGE_MOUNTAINS, DARKSHORE },
					["classes"] = { WARLOCK },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Orb of Des
							["providers"] = {
								{ "i", 210765 },	-- Orb of Des
								{ "o", 411710 },	-- Orb of Des
							},
							["coord"] = { 80.2, 49.5, REDRIDGE_MOUNTAINS },
						}),
						objective(2, {	-- 0/1 Bough of Altek
							["providers"] = {
								{ "i", 210763 },	-- Bough of Altek
								{ "o", 411715 },	-- Bough of Altek
							},
							["coord"] = { 56.3, 26.4, DARKSHORE },
						}),
					},
				})),
				-- #endif
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
					["coord"] = { 85.0, 25.6, UNDERCITY },
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
						{ 51.62, 30.90, THE_BARRENS },
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
							["coord"] = { 50.0, 73.0, DESOLACE },
							["cr"] = 4676,	-- Lesser Infernal
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78909, {	-- Shifting Scale Talisman
					["sourceQuest"] = 78908,	-- Speak to N'ora
					["qg"] = 214208,	-- N'ora Anyheart <Scholar of Exotic Fauna>
					["coord"] = { 62.0, 39.4, THE_BARRENS },
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = {
						{ "i", 10940, 40 },	-- Strange Dust
						{ "i", 10939, 5 },	-- Greater Magic Essence
						{ "i", 10978, 2 },	-- Small Glimmering Shard
						{ "i", 211419, 1 },	-- Handful of Shifting Scales
						{ "g", 50000 },		-- 5g
					},
					["OnUpdate"] = [[_.OnUpdateDB.FOR_CRAFTER]],
					["groups"] = {
						i(211420, {	-- Shifting Scale Talisman
							["timeline"] = { REMOVED_2_0_1 },
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, q(78267, {	-- Shredder Turbochargers
					["sourceQuest"] = 78284,	-- Grizzby HQT
					["qg"] = 211653,	-- Grizzby
					["coord"] = { 61.8, 39.4, THE_BARRENS },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { STONETALON_MOUNTAINS },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/16 Shredder Turbocharger
							["provider"] = { "i", 210146 },	-- Shredder Turbocharger
							["coord"] = { 62.6, 52.8, STONETALON_MOUNTAINS },
							["cost"] = { { "i", 210147, 25 } },	-- Shredder Autosalvage Unit
							["description"] = "This may take a more than 25 salvage units. It's ~50% chance to salvage the right item.",
							["cr"] = 214129,	-- Venture Co. Light Shredder
						}),
					},
				})),
				-- #endif
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
						{ 62.68, 36.24, THE_BARRENS },
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
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(createHeader({	-- Speak to Grizzby
					readable = "Speak to Grizzby",
					icon = 131038,
					text = {
						en = "Speak to Grizzby",
						de = "Sprich mit Grizzby",
						es = "Habla con el Grizzby",
						-- TODO: mx = "",
						fr = "Parlez à Grizzby",
						it = "Parla con Grizzby",
						ko = "그리즈비와 대화",
						pt = "Fale com o Grizzby",
						ru = "Поговорите с Grizzby",
						cn = "与灰熊交谈",
						-- TODO: tw = "",
					},
				}), {
					["questID"] = 78284,	-- Grizzby HQT
					["qg"] = 211653,	-- Grizzby
					["coord"] = { 61.8, 39.4, THE_BARRENS },
					["timeline"] = { REMOVED_2_0_1 },
					["lvl"] = 20,
				})),
				applyclassicphase(SOD_PHASE_ONE, n(createHeader({	-- Speak to N'ora
					readable = "Speak to N'ora",
					icon = 131038,
					text = {
						en = "Speak to N'ora",
						de = "Sprich mit N'ora",
						es = "Habla con el N'ora",
						-- TODO: mx = "",
						fr = "Parlez à N'ora",
						it = "Parla con N'ora",
						ko = "노라와 대화",
						pt = "Fale com o N'ora",
						ru = "Поговорите с Н'ора",
						cn = "与奈奥拉谈",
						-- TODO: tw = "",
					},
				}), {
					["providers"] = {
						{ "i", 211419 },	-- Handful of Shifting Scales
						{ "n", 214208 },	-- N'ora Anyheart <Scholar of Exotic Fauna>
					},
					["questID"] = 78908,	-- N'ora HQT
					["coord"] = { 62.0, 39.4, THE_BARRENS },
					["description"] = "You need to loot the Handful of Shifting Scales before this quest will be displayed to you.",
					["timeline"] = { REMOVED_2_0_1 },
					["OnUpdate"] = [[_.OnUpdateDB.FOR_CRAFTER]],
					["lvl"] = 20,
				})),
				-- #endif
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
				q(889, {	-- Spirit of the Wind
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["qg"] = 3430,	-- Mangletooth
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 5075, 10 }},	-- Blood Shard
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 14,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79192, {	-- Stepping Stones
					["sourceQuests"] = {
						79008,	-- ...and that note you found (A)
						79007,	-- ...and that note you found (H)
					},
					["providers"] = {
						{ "o", 417072 },	-- Nailed Plank
						{ "o", 424010 },	-- Nailed Plank
					},
					["coords"] = {
						{ 46.4, 73.8, THE_BARRENS },
						{ 37.5, 50.8, WESTFALL },
					},
					["timeline"] = { ADDED_1_15_1 },
					["maps"] = { STONETALON_MOUNTAINS },
					["lvl"] = 14,
					["groups"] = {
						i(3334),	-- Farmer's Shovel
						i(221498),	-- Sturdy Lunchbox
					},
				})),
				-- #endif
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
					["coord"] = { 50.2, 6.0, IRONFORGE },
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
					["coord"] = { 86.0, 15.6, UNDERCITY },
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
						{ 51.50, 30.86, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(9, 9, 5),
					["groups"] = {
						-- #if AFTER CATA
						objective(1, {	-- 0/5 Crossroads' Supply Crate
							["providers"] = {
								{ "i",  12708 },	-- Crossroads' Supply Crate
								{ "o", 175708 },	-- Crossroads Supply Crate
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
				q(1719, {	-- The Affray
					["sourceQuest"] = 1718,	-- The Islander
					["qg"] = 6236,	-- Klannoc Macleod
					["coord"] = { 66.6, 49.0, THE_BARRENS },
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
				q(905, {	-- The Angry Scytheclaws / Into the Raptor's Den [CATA+]
					["sourceQuest"] = 881,	-- Echeyakee
					["qg"] = 3338,	-- Sergra Darkthorn
					["coords"] = {
						-- #if AFTER CATA
						{ 50.0, 59.8, NORTHERN_BARRENS },
						-- #else
						{ 52.23, 31.01, THE_BARRENS },
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
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78681, {	-- The Conjuring
					["description"] = "After obtaining the blood, interact with the altar near the obelisk dedicated to Grommash Hellscream to begin a ritual, summoning a few waves of demons that must be defeated using Drain Soul while standing inside the purple rune on the ground. Defeat the final Searing Infernal this way to cause the Mysterious Traveler to appear.",
					["sourceQuest"] = 78680,	-- Rumors Abound
					["providers"] = {
						{ "n",   6247 },	-- Doan Karhan
						{ "o", 412224 },	-- Dark Ritual Stone
					},
					["coords"] = {
						{ 49.2, 57.2, THE_BARRENS },
						{ 79.0, 80.3, ASHENVALE },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARLOCK },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/10 Blood of the Legion
							["provider"] = { "i", 210966 },	-- Blood of the Legion
							["coord"] = { 84.2, 71.6, ASHENVALE },
							["crs"] = {
								11697,	-- Mannoroc Lasher
								6115,	-- Felguard
								6073,	-- Searing Infernal
								6071,	-- Legion Hound
							},
						}),
					},
				})),
				-- #endif
				q(872, {	-- The Disruption Ends / The Far Watch Offensive [CATA+]
					["sourceQuest"] = 871,	-- Disrupt the Attacks / In Defense of Far Watch [CATA+]
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
						{ 51.50, 30.86, THE_BARRENS },
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
				q(863, {	-- The Escape
					["sourceQuest"] = 858,	-- Ignition
					["qg"] = 3439,	-- Wizzlecrank's Shredder
					["coords"] = {
						-- #if AFTER CATA
						{ 57.5, 18.2, NORTHERN_BARRENS },
						-- #else
						{ 56.52, 7.45, THE_BARRENS },
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
				q(891, {	-- The Guns of Northwatch / A Captain's Vengeance [CATA+]
					["qg"] = 3339,	-- Captain Thalo'thas Brightsun
					["coords"] = {
						-- #if AFTER CATA
						{ 67.7, 74.0, NORTHERN_BARRENS },
						-- #else
						{ 62.29, 39.03, THE_BARRENS },
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
				q(897, {	-- The Harvester
					["provider"] = { "i", 5138 },	-- Harvester's Head
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
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
				q(3513, {	-- The Runed Scroll
					["provider"] = { "i", 10621 },	-- Runed Scroll
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
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
						{ 52.26, 31.92, THE_BARRENS },
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
								{ 55.0, 42.0, THE_BARRENS },
								-- #endif
							},
						}),
					},
				}),
				q(857, {	-- The Tear of the Moons
					["qg"] = 3421,	-- Feegly the Exiled
					["coord"] = { 48.95, 86.32, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						objective(1, {	-- 0/1 Tear of the Moons
							["providers"] = {
								{ "i", 5038 },	-- Tear of the Moons
								{ "o", 3646 },	-- General Twinbraid's Strongbox
							},
							["coord"] = { 49.1, 84.2, THE_BARRENS },
						}),
					},
				}),
				q(1791, {	-- The Windwatcher
					["sourceQuest"] = 1719,	-- The Affray
					["qg"] = 6236,	-- Klannoc Macleod
					["coord"] = { 68.6, 49.0, THE_BARRENS },
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
						{ 52.23, 31.01, THE_BARRENS },
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
							["providers"] = {
								{ "i", 6931 },	-- Moldy Tome
								{ "o", 92013 },	-- Tome of the Cabal
							},
							["coord"] = { 27.8, 72.9, HILLSBRAD_FOOTHILLS },
						}),
						objective(2, {	-- 0/1 Tattered Manuscript
							["providers"] = {
								{ "i", 6997 },	-- Tattered Manuscript
								{ "o", 92423 },	-- Damaged Chest
							},
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
				q(878, {	-- Tribes at War
					["qg"] = 3430,	-- Mangletooth
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/6 Bristleback Water Seeker slain
							["provider"] = { "n", 3260 },	-- Bristleback Water Seeker
						}),
						objective(2, {	-- 0/12 Bristleback Thornweaver slain
							["provider"] = { "n", 3261 },	-- Bristleback Thornweaver
						}),
						objective(3, {	-- 0/12 Bristleback Geomancer slain
							["provider"] = { "n", 3263 },	-- Bristleback Geomancer
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
							["coord"] = { 45.0, 35.2, THE_BARRENS },
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
						{ 45.34, 28.42, THE_BARRENS },
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
						{ 68.2, 71.2, NORTHERN_BARRENS },
						-- #else
						{ 62.59, 37.47, THE_BARRENS },
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
				q(885, {	-- Washte Pawne
					["provider"] = { "i", 5103 },	-- Washte Pawne's Feather
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["cr"] = 3472,	-- Washte Pawne
					["lvl"] = 10,
				}),
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
				q(893, {	-- Weapons of Choice
					["qg"] = 3433,	-- Tatternack Steelforge
					["coord"] = { 45.10, 57.69, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/1 Razormane Backstabber
							["provider"] = { "i", 5093 },	-- Razormane Backstabber
						}),
						objective(2, {	-- 0/1 Charred Razormane Wand
							["provider"] = { "i", 5092 },	-- Charred Razormane Wand
						}),
						objective(3, {	-- 0/1 Razormane War Shield
							["provider"] = { "i", 5094 },	-- Razormane War Shield
						}),
						i(5322, {	-- Demolition Hammer
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5323, {	-- Everglow Lantern
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
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
				q(5044, {	-- Wisdom of Agamaggan
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["qg"] = 3430,	-- Mangletooth
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 5075, 4 }},	-- Blood Shard
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 14,
				}),
			}),
			n(RARES, {
				n(5797, {	-- Aean Swiftriver <Alliance Outrunner>
					-- #if BEFORE CATA
					["coords"] = {
						{ 45.6, 41.2, THE_BARRENS },
						{ 48.8, 42.6, THE_BARRENS },
						{ 50.4, 43.8, THE_BARRENS },
						{ 50.2, 46.8, THE_BARRENS },
						{ 48.8, 52.4, THE_BARRENS },
						{ 47.6, 55.8, THE_BARRENS },
						{ 45.6, 61.0, THE_BARRENS },
						{ 45.4, 66.8, THE_BARRENS },
						{ 46.6, 72.6, THE_BARRENS },
						{ 48.6, 77.6, THE_BARRENS },
						{ 48.6, 79.6, THE_BARRENS },
						{ 46.4, 81.6, THE_BARRENS },
						{ 46.6, 78.2, THE_BARRENS },
						{ 47.8, 64.2, THE_BARRENS },
						{ 49.4, 61.2, THE_BARRENS },
						{ 46.6, 46.8, THE_BARRENS },
						{ 46.0, 45.6, THE_BARRENS },
					},
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["crs"] = {
						5799,	-- Hannah Bladeleaf <Alliance Outrunner>
						5800,	-- Marcus Bel <Alliance Outrunner>
						5798,	-- Thora Feathermoon <Alliance Outrunner>
					},
					["groups"] = {
						i(10621, {	-- Runed Scroll
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				n(5834, {	-- Azzere the Skyblade
					["coords"] = {
						-- #if AFTER CATA
						{ 45.8, 55.0, SOUTHERN_BARRENS },
						{ 46.0, 58.6, SOUTHERN_BARRENS },
						{ 44.2, 59.0, SOUTHERN_BARRENS },
						{ 43.6, 57.6, SOUTHERN_BARRENS },
						{ 42.4, 54.8, SOUTHERN_BARRENS },
						{ 42.6, 53.4, SOUTHERN_BARRENS },
						{ 43.8, 55.2, SOUTHERN_BARRENS },
						{ 44.6, 56.2, SOUTHERN_BARRENS },
						-- #else
						{ 44.6, 62.2, THE_BARRENS },
						{ 46.6, 63.0, THE_BARRENS },
						{ 44.8, 64.0, THE_BARRENS },
						-- #endif
					},
				}),
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
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
						}),
					},
				}),
				n(5827, {	-- Brontus
					-- #if BEFORE CATA
					["coords"] = {
						{ 49.6, 58.0, THE_BARRENS },
						{ 49.0, 60.8, THE_BARRENS },
						{ 48.6, 63.0, THE_BARRENS },
						{ 47.6, 58.8, THE_BARRENS },
						{ 47.4, 65.6, THE_BARRENS },
						{ 46.6, 67.4, THE_BARRENS },
						{ 46.6, 71.6, THE_BARRENS },
						{ 46.0, 75.8, THE_BARRENS },
						{ 44.8, 79.4, THE_BARRENS },
						{ 44.4, 75.6, THE_BARRENS },
					},
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(209797, {	-- Bruuz
					["coord"] = { 64.8, 39.8, THE_BARRENS },
					["cost"] = {{ "i", 208773, 1 }},	-- Fishing Harpoon
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR, HUNTER },
					["groups"] = {
						i(208777, {	-- Rune of the Sniper
							["classes"] = { HUNTER },
							["groups"] = {
								recipe(416091),	-- Engrave Pants - Sniper Training
							},
						}),
						i(208778, {	-- Rune of Quick Strike
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(425443),	-- Engrave Gloves - Quick Strike
							},
						}),
					},
				})),
				-- #endif
				n(5851, {	-- Captain Gerogg Hammertoe <Bael'dun Captain of the Guard>
					["coords"] = {
						-- #if AFTER CATA
						{ 49.8, 89.6, SOUTHERN_BARRENS },
						-- #else
						{ 49.6, 83.8, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, n(218931, {	-- Dark Rider
					["provider"] = { "i", 216941 },	-- Ariden's Sigil
					["coord"] = { 52.0, 36.0, THE_BARRENS },
					["groups"] = {
						i(216949),	-- Heavy Dalaran Relic
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, n(209742, {	-- Desert Mirage
					["description"] = "Cast Dispel or Purge on it.",
					["coord"] = { 55.0, 35.4, THE_BARRENS },
					["classes"] = { PRIEST, SHAMAN },
					["groups"] = {
						i(208758, {	-- Earthen Rune
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { SHAMAN },
							["groups"] = {
								recipe(410107),	-- Engrave Pants - Way of Earth
							},
						}),
						i(205932, {	-- Prophecy of a King's Demise
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { PRIEST },
							["groups"] = {
								recipe(402849),	-- Engrave Gloves - Shadow Word - Death
							},
						}),
					},
				})),
				-- #endif
				n(5849, {	-- Digger Flameforge <Excavation Specialist>
					["coords"] = {
						-- #if AFTER CATA
						{ 47.8, 88.2, SOUTHERN_BARRENS },
						-- #else
						{ 47.6, 85.6, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4785, {	-- Brimstone Belt
							-- #if BEFORE 4.0.3
							["description"] = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item. If you were to sell this item on the Neutral AH you might be able to fetch a pretty penny to collectors.",
							-- #endif
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 11.09.2023
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
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- 03.09.2023 Data Discord
						}),
						i(4771, {	-- Harvest Cloak
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
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
				n(5863, {	-- Geopriest Gukk'rok
					["coords"] = {
						-- #if AFTER CATA
						{ 42.0, 42.6, SOUTHERN_BARRENS },
						{ 44.2, 42.0, SOUTHERN_BARRENS },
						{ 42.2, 37.6, SOUTHERN_BARRENS },
						-- #else
						{ 41.2, 45.6, THE_BARRENS },
						{ 42.6, 47.2, THE_BARRENS },
						{ 43.8, 48.4, THE_BARRENS },
						{ 43.6, 52.2, THE_BARRENS },
						{ 45.6, 52.4, THE_BARRENS },
						-- #endif
					},
					["groups"] = {
						i(1539, {	-- Gnarled Hermit's Staff
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
						}),
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
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
						}),
						i(5182, {	-- Shiver Blade
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- 03.09.2023 Data Discord
						}),
					},
				}),
				n(5859, {	-- Hagg Taurenbane <Razormane Champion>
					["coords"] = {
						-- #if AFTER CATA
						{ 43.4, 84.6, SOUTHERN_BARRENS },
						{ 41.8, 85.2, SOUTHERN_BARRENS },
						{ 40.4, 83.0, SOUTHERN_BARRENS },
						-- #else
						{ 41.6, 78.8, THE_BARRENS },
						{ 42.0, 81.6, THE_BARRENS },
						{ 43.4, 84.0, THE_BARRENS },
						{ 45.0, 84.6, THE_BARRENS },
						{ 44.8, 79.6, THE_BARRENS },
						-- #endif
					},
				}),
				n(5847, {	-- Heggin Stonewhisker <Bael'dun Chief Engineer>
					["coords"] = {
						-- #if AFTER CATA
						{ 47.0, 88.6, SOUTHERN_BARRENS },
						-- #else
						{ 47.0, 83.8, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(2035, {	-- Sword of the Night Sky
							-- #if BEFORE 4.0.3
							["description"] = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item. If you were to sell this item on the Neutral AH you might be able to fetch a pretty penny to collectors.",
							-- #else
							["description"] = "The mob dropping this item is friendly to the alliance.",
							-- #endif
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
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
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(209607, {	-- Lieutenant Stonebrew
					["providers"] = {
						{ "i", 208739 },	-- Horde Warbanner
						{ "o", 407291 },	-- Alliance Warbanner
					},
					["coord"] = { 62.6, 56.2, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(208741, {	-- Rune of Endless Rage
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(403489),	-- Engrave Gloves - Endless Rage
							},
						}),
					},
				})),
				-- #endif
				n(5848, {	-- Malgin Barleybrew <Bael'dun Morale Officer>
					["coords"] = {
						-- #if AFTER CATA
						{ 47.4, 85.8, SOUTHERN_BARRENS },
						-- #else
						{ 49.4, 84.4, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(209524, {	-- Patrolling Cheetah
					["description"] = "Drop a trap in its path to remove its speed buff.",
					["coord"] = { 44.4, 55.4, THE_BARRENS },
					["classes"] = { HUNTER },
					["groups"] = {
						i(208701, {	-- Rune of Beast Mastery
							["classes"] = { HUNTER },
							["groups"] = {
								recipe(410110),	-- Engrave Gloves - Beast Mastery
							},
						}),
					},
				})),
				-- #endif
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
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
						}),
						i(5112, {  -- Ritual Blade
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 07.09.2023
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
				n(3253, {	-- Silithid Harvester
					["coords"] = {
						-- #if AFTER CATA
						{ 41.2, 67.0, SOUTHERN_BARRENS },
						-- #else
						{ 42.6, 70.6, THE_BARRENS },
						{ 44.6, 70.0, THE_BARRENS },
						{ 44.4, 74.0, THE_BARRENS },
						{ 47.8, 70.2, THE_BARRENS },
						-- #endif
					},
					["groups"] = {
						i(5138, {	-- Harvester's Head
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = HORDE_ONLY,
						}),
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
				n(5829, {	-- Snort the Heckler
					["coords"] = {
						-- #if AFTER CATA
						{ 45.6, 43.6, SOUTHERN_BARRENS },
						-- #else
						{ 41.8, 20.4, THE_BARRENS },
						{ 40.8, 23.4, THE_BARRENS },
						{ 41.4, 27.2, THE_BARRENS },
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
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
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
				n(5864, {	-- Swinegart Spearhide
					["coords"] = {
						-- #if AFTER CATA
						{ 38.6, 33.6, SOUTHERN_BARRENS },
						-- #else
						{ 41.4, 45.6, THE_BARRENS },
						{ 42.2, 48.0, THE_BARRENS },
						{ 45.2, 49.0, THE_BARRENS },
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
				n(5832, {	-- Thunderstomp
					["coords"] = {
						-- #if AFTER CATA
						{ 48.2, 74.6, SOUTHERN_BARRENS },
						{ 49.8, 80.0, SOUTHERN_BARRENS },
						{ 46.4, 78.6, SOUTHERN_BARRENS },
						{ 44.6, 80.0, SOUTHERN_BARRENS },
						{ 44.6, 77.4, SOUTHERN_BARRENS },
						-- #else
						{ 47.0, 77.2, THE_BARRENS },
						{ 46.4, 78.6, THE_BARRENS },
						{ 48.0, 80.8, THE_BARRENS },
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
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_ONE, i(208682, {	-- Abandoned Snapjaw Egg
					["provider"] = { "o", 407117 },	-- Abandoned Snapjaw Nest
					["coord"] = { 44.0, 22.0, THE_BARRENS },
					["classes"] = { DRUID },
				})),
				applyclassicphase(SOD_PHASE_ONE, i(209847, {	-- Arcanic Systems Manual
					["provider"] = { "o", 409700 },	-- Manual
					["coord"] = { 56.3, 8.8, THE_BARRENS },
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208800, {	-- Baxtan: On Destructive Magics
					["provider"] = { "o", 407566 },	-- Goblin Tome
					["coord"] = { 62.7, 36.3, THE_BARRENS },
				})),
				applyclassicphase(SOD_PHASE_ONE, o(407510, {	-- Etched Carving
					["provider"] = { "o", 407505 },	-- Etched Carving
					["description"] = "Stand on the green dot and read the inscription to activate the hidden path. Blink from green dot to green dot without taking any steps or losing the Path of no Steps debuff.\n\nOnce you've reached the last green dot, you'll see another large carving. Blink to it and quickly read the inscription before the buff falls off to earn the Rune.",
					["coord"] = { 45.5, 80.0, THE_BARRENS },
					["classes"] = { MAGE },
					["groups"] = {
						i(208799, {	-- Spell Notes: Living Bomb
							["classes"] = { MAGE },
							["groups"] = {
								recipe(415936),	-- Engrave Gloves - Living Bomb
							},
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208739, {	-- Horde Warbanner
					["provider"] = { "o", 407289 },	-- Horde Warbanner
					["coord"] = { 52.2, 31.1, THE_BARRENS },
					["races"] = HORDE_ONLY,
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208771, {	-- Rune of Blade Dance
					["providers"] = {
						{ "o", 407454 },	-- Gunpowder Keg
						{ "i", 208768 },	-- Buccaneer's Matchbox
						{ "o", 407453 },	-- Southsea Loot Stash
					},
					["coord"] = { 62.0, 45.0, THE_BARRENS },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(400099),	-- Engrave Pants - Blade Dance
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208750, {	-- Rune of Channeling
					["provider"] = { "o", 407347 },	-- Altar of Thorns
					["description"] = "Channel Health Funnel to 0 health while standing on the Altar of Thorns. You will be healed to full and granted the Rune.",
					["coord"] = { 58.2, 26.7, THE_BARRENS },
					["classes"] = { WARLOCK },
					["groups"] = {
						recipe(403932),	-- Engrave Chest - Master Channeler
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208687, {	-- Rune of Lacerate
					["providers"] = {
						{ "i", 208682 },	-- Abandoned Snapjaw Egg
						{ "o", 407120 },	-- Empty Snapjaw Nest
						{ "n", 209511 },	-- Oasis Snapjaw Hatchling
					},
					["description"] = "Bring the Abandoned Snapjaw Egg to an empty nest and interact with the hatchling afterward.",
					["coord"] = { 48.0, 40.0, THE_BARRENS },
					["classes"] = { DRUID },
					["groups"] = {
						recipe(416049),	-- Engrave Gloves - Lacerate
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208772, {	-- Rune of Saber Slash
					["provider"] = { "o", 407457 },	-- Stable Hand's Trunk
					["description"] = "Head to Northwatch Hold. As you pass the main gate look to your left, you'll see a stable with a chest on the roof. Go up and around to the right and jump down onto the wall behind the stable. Once there you can jump to the roof and loot the chest for the Rune. You need lockpicking (80) to open this chest.",
					-- ["coord"] = { , THE_BARRENS },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(424984),	-- Engrave Gloves - Saber Slash
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(208744, {	-- Rune of Shadowbolts
					["providers"] = {
						{ "i", 208743 },	-- Soul of Greed
						{ "o", 407312 },	-- Hungry Idol
					},
					["coord"] = { 57.08, 9.73, THE_BARRENS },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARLOCK },
					["groups"] = {
						recipe(403936),	-- Engrave Gloves - Shadow Bolt Volley
					},
				})),
			}),
			-- #endif
			n(TREASURES, {
				o(3642, {	-- Kolkars' Booty
					-- #if SEASON_OF_DISCOVERY
					["providers"] = {
						{ "o", 152618 },	-- Kolkars' Booty
						{ "o", 152608 },	-- Kolkars' Booty
					},
					-- #endif
					["description"] = "Contains random low level greens.",
					["coords"] = {
						{ 43.0, 23.5, THE_BARRENS },
						{ 52.8, 41.8, THE_BARRENS },
						{ 44.3, 37.7, THE_BARRENS },
					},
					["cost"] = {{ "i", 5020, 1 }},	-- Kolkar Booty Key
					-- #if SEASON_OF_DISCOVERY
					["groups"] = {
						applyclassicphase(SOD_PHASE_ONE, i(208689, {	-- Ferocious Idol
							["classes"] = { DRUID },
							["groups"] = {
								recipe(410023),	-- Engrave Pants - Savage Roar
							},
						})),
						applyclassicphase(SOD_PHASE_ONE, i(208754, {	-- Spell Notes: TENGI RONEERA
							["classes"] = { MAGE },
						})),
						applyclassicphase(SOD_PHASE_ONE, i(206382, {	-- Tempest Icon
							["classes"] = { SHAMAN },
							["groups"] = {
								recipe(410097),	-- Engrave Gloves - Water Shield
							},
						})),
					},
					-- #endif
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
						{ 67.6, 72.8, NORTHERN_BARRENS },
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
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(211653, {	-- Grizzby
					["sourceQuests"] = {
						78297,	-- You've Got Yourself A Deal [A]
						78304,	-- You've Got Yourself A Deal [H]
					},
					["coord"] = { 61.8, 39.4, THE_BARRENS },
					["lvl"] = 20,
					["groups"] = {
						i(210822, {	-- Harmonious Epiphany
							["classes"] = { PRIEST },
							["cost"] = 50000,	-- 5g
							["groups"] = {
								recipe(415995),	-- Engrave Chest - Serendipity
							},
						}),
						i(210820, {	-- Rune of Sacrifice
							["cost"] = 50000,	-- 5g
							["classes"] = { PALADIN },
							["groups"] = {
								recipe(410010),	-- Engrave Pants - Divine Sacrifice
							},
						}),
						i(210654, {	-- Spell Notes: Rewind Time
							["classes"] = { MAGE },
							["cost"] = 50000,	-- 5g
							["groups"] = {
								recipe(401761),	-- Engrave Gloves - Rewind Time
							},
						}),
						i(210818, {	-- Rune of Lone Wolf
							["classes"] = { HUNTER },
							["cost"] = 50000,	-- 5g
							["groups"] = {
								recipe(410122),	-- Engrave Chest - Lone Wolf
							},
						}),
						i(210817, {	-- Rune of Survival
							["classes"] = { DRUID },
							["cost"] = 50000,	-- 5g
							["groups"] = {
								recipe(416042),	-- Engrave Chest - Survival of the Fittest
							},
						}),
						i(210825, {	-- Rune of the Warbringer
							["classes"] = { WARRIOR },
							["cost"] = 50000,	-- 5g
							["groups"] = {
								recipe(425445),	-- Engrave Chest - Warbringer
							},
						}),
						i(210824, {	-- Rune of the Pact
							["classes"] = { WARLOCK },
							["cost"] = 50000,	-- 5g
							["groups"] = {
								recipe(425476),	-- Engrave Pants - Demonic Pact
							},
						}),
						i(210653, {	-- Rune of Main Gauche
							["classes"] = { ROGUE },
							["cost"] = 50000,	-- 5g
							["groups"] = {
								recipe(424990),	-- Engrave Gloves - Main Gauche
							},
						}),
						i(210823, {	-- Rune of Dual Wield Specialization
							["classes"] = { SHAMAN },
							["cost"] = 50000,	-- 5g
							["groups"] = {
								recipe(410096),	-- Engrave Chest - Dual Wield Specialization
							},
						}),
					},
				})),
				-- #endif
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
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(208773, {	-- Fishing Harpoon
							["timeline"] = { REMOVED_2_0_1 },
							["classes"] = { WARRIOR, HUNTER },
							["cost"] = 526,	-- 5s 26c
						})),
						-- #endif
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
				-- #if AFTER 3.1.0.9626
				n(3392, {	-- Prospector Khazgorm <Explorers' League>
					["coord"] = { 47.8, 85.6, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(44977, {	-- Recipe: Dig Rat Stew (RECIPE!)
							["timeline"] = { ADDED_3_1_0, DELETED_4_3_0 },
						}),
					},
				}),
				-- #endif
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
				i(5075, {	-- Blood Shard
					["providers"] = {
						{ "n", 3261 },	-- Bristleback Thornweaver
						{ "n", 3263 },	-- Bristleback Geomancer
						{ "n", 3260 },	-- Bristleback Water Seeker
						{ "n", 3258 },	-- Bristleback Hunter
						-- #if ANYCLASSIC
						{ "o", 3763 },	-- Copper Vein (The Barrens - Blood Shard)
						{ "o", 3764 },	-- Tin Vein (The Barrens - Blood Shard)
						-- #endif
					},
				}),
				i(5092, {	-- Charred Razormane Wand
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						37661,	-- Razormane Seer
						-- #else
						3458,	-- Razormane Seer
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 41.8, 82.8, SOUTHERN_BARRENS },
						{ 43.2, 84.4, SOUTHERN_BARRENS },
						{ 23.4, 35.4, SOUTHERN_BARRENS },
						-- #else
						{ 42.6, 79.0, THE_BARRENS },
						{ 43.0, 83.2, THE_BARRENS },
						-- #endif
					},
				}),
				i(5107, {	-- Deckhand's Shirt
					-- #if AFTER 4.0.3
					["description"] = "Incredibly rare drop from Fray Island.",
					-- #else
					["description"] = "While technically this shirt does still drop in retail, the drop rate is reduced from fairly common to 1 in 12k with the Cataclysm. For the purposes of collecting, get it now and stock up on extras!",
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },	-- Likely Removed -- 13th May 2025 -- Goldenshacal
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
				i(5051, {	-- Dig Rat
					["coord"] = { 48.8, 84.8, THE_BARRENS },	-- Bael Modan Excavation
					["cr"] = 3444,	-- Dig Rat
					["description"] = "Only drops from Dig Rats in The Barrens."
				}),
				i(5020, {	-- Kolkar Booty Key
					["coords"] = {
						{ 44.4, 23.6, THE_BARRENS },
						{ 47.4, 41.8, THE_BARRENS },
						{ 53.6, 40.0, THE_BARRENS },
					},
					["crs"] = {
						3272,	-- Kolkar Wrangler
						3273,	-- Kolkar Stormer
						3394,	-- Barak Kodobane
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(208765, {	-- Helping Hand (Closed)
					["provider"] = { "i", 208766 },	-- Helping Hand (Open)
					["description"] = "The hand will open when you ressurect another player.",
					["coord"] = { 55.6, 27.2, THE_BARRENS },
					["classes"] = { PRIEST },
					["crs"] = {
						3268,	-- Razormane Thornweaver
						3267,	-- Razormane Water Seeker
						3266,	-- Razormane Defender
						3265,	-- Razormane Hunter
					},
					["groups"] = {
						i(205905, {	-- Memory of a Devout Champion
							["classes"] = { PRIEST },
							["groups"] = {
								recipe(425215),	-- Engrave Chest - Twisted Faith
							},
						}),
					},
				})),
				-- #endif
				i(5093, {	-- Razormane Backstabber
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						37560,	-- Razormane Pathfinder
						-- #else
						3457,	-- Razormane Stalker
						3456,	-- Razormane Pathfinder
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 43.4, 82.0, SOUTHERN_BARRENS },
						{ 41.6, 81.4, SOUTHERN_BARRENS },
						{ 43.6, 86.2, SOUTHERN_BARRENS },
						-- #else
						{ 41.8, 79.6, THE_BARRENS },
						{ 43.8, 83.2, THE_BARRENS },
						-- #endif
					},
				}),
				i(5094, {	-- Razormane War Shield
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						37660,	-- Razormane Warfrenzy
						-- #else
						3459,	-- Razormane Warfrenzy
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 38.0, 81.8, SOUTHERN_BARRENS },
						{ 43.6, 82.6, SOUTHERN_BARRENS },
						{ 44.6, 87.8, SOUTHERN_BARRENS },
						-- #else
						{ 41.6, 79.0, THE_BARRENS },
						{ 42.2, 81.6, THE_BARRENS },
						-- #endif
					},
				}),
				-- #if AFTER 4.2.0.10000
				i(44977, {	-- Recipe: Dig Rat Stew (RECIPE!)
					["timeline"] = { ADDED_3_1_0, DELETED_4_3_0 },
					["crs"] = {
						39153,	-- Excavation Raider
						3376,	-- Bael'dun Soldier
						3378,	-- Bael'dun Officer
						3377,	-- Bael'dun Rifleman
					},
				}),
				-- #endif
				i(6663, {	-- Recipe: Elixir of Giant Growth (RECIPE!)
					["description"] = "Can drop from any mob in the Barrens.",
				}),
				i(6661, {	-- Recipe: Savory Deviate Delight (RECIPE!)
					["description"] = "Can drop from any mob in the Barrens.",
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(208743, {	-- Soul of Greed
					["description"] = "Use Drain Soul on him.",
					["coord"] = { 56.2, 8.6, THE_BARRENS },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARLOCK },
					["cr"] = 3445,	-- Supervisor Lugwizzle
				})),
				-- #endif
				i(5052, {	-- Unconscious Dig Rat
					["cr"] = 3444,	-- Dig Rat
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.CLASSIC, {
	m(KALIMDOR, {
		m(THE_BARRENS, {
			q(55296),	-- Triggered after complete 'Chen's Empty Keg' (822)
		}),
	}),
}));
-- #endif
