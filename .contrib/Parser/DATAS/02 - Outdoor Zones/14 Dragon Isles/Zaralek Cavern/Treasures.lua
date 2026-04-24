---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	m(ZARALEK_CAVERN, {
		n(TREASURES, {
			i(205260),	-- Fleeting Glowspores
			o(386104, {	-- Ancient Zaqali Chest
				["description"] = "Interact with Bottled Magma at 36.5 48.2",
				["coord"] = { 36.7, 48.8, ZARALEK_CAVERN },
				["questID"] = 73697,
			}),
			o(385585, {	-- Binding Oaths
				["coord"] = { 61.2, 71.8, ZARALEK_CAVERN },
			}),
			o(385565, {	-- Blazing Shadowflame Chest
				["description"] = "You'll need to equip an Onyxia Scale Cloak in order to open this chest.",
				["coord"] = { 28.6, 47.9, ZARALEK_CAVERN },
				["questID"] = 72986,
				["cost"] = { { "i", 15138, 1 } },	-- 1x Onyxia Scale Cloak
				["groups"] = {
					i(205418),	-- Blazing Shadowflame Cinder (TOY!)
				},
			}),
			o(386123, {	-- Charred Egg
				["coord"] = { 30.0, 41.9, ZARALEK_CAVERN },
				["questID"] = 73706,
			}),
			o(392591, {	-- Chest of the Flights
				["description"] = "Need to click in order Red - Black - Blue - Yellow - Green to open chest.",
				["coord"] = { 55.9, 3.1, ZARALEK_CAVERN },
				["questID"] = 75187,
				["isDaily"] = true,
			}),
			o(388896, {	-- Crystal-encased Chest
				["description"] = "Interact with the purple and yellow crystals to unlock the chest.",
				["coords"] = {
					{ 39.4, 73.2, ZARALEK_CAVERN },	-- Orange Crystal
					{ 37.2, 68.8, ZARALEK_CAVERN },	-- Purple Crystal
					{ 36.4, 74.3, ZARALEK_CAVERN },	-- Chest
				},
				["questID"] = 74986,
				["groups"] = {
					i(205192),	-- Volatile Crystal Shard
				},
			}),
			o(385584, {	-- Demanding Perfection
				["coord"] = { 43.3, 23.7, ZARALEK_CAVERN },
			}),
			o(401839, {	-- Dreamer's Bounty
				["description"] = "Attack a nearby Preying Dustmoth and wait until it casts Drowsy Dust - don't interrupt! Once you have the debuff, kill the moth and open the chest.",
				["questID"] = 75762,
				["groups"] = {
					i(205194),	-- Fractured Crystalspine Quill
				},
			}),
			o(398810, {	-- Fealty's Reward
				["description"] = "/kneel near dragon statue (should start fire breath animation) to unlock this chest.",
				["coords"] = {
					{ 43.5, 23.0, ZARALEK_CAVERN },	-- Statue to /kneel
					{ 48.4, 10.9, ZARALEK_CAVERN },	-- Chest
				},
				["questID"] = 75514,
				["groups"] = {
					i(205195),	-- Drakeforged Magma Charm
				},
			}),
			o(389114, {	-- Long-Lost Cache
				["coord"] = { 62.7, 53.7, ZARALEK_CAVERN },
				["questID"] = 75019,
			}),
			o(398814, {	-- Molten Hoard
				["description"] = "Under the whole structure and behind the metal gate. You can get there from wall hopping on the right side or other movement abilities.",
				["coord"] = { 48.4, 16.4, ZARALEK_CAVERN },
				["questID"] = 75515,
				["groups"] = {
					i(205981),	-- Molten Primal Fang
				},
			}),
			o(396339, {	-- Moth-Pilfered Pouch
				["description"] = "Go to his position, he will fly up a bit, go under his shadow on earth and 'help' him until he get 5 stacks of buff. After that - he will fly around a bit and reveal pouch.",
				["crs"] = { 203225 },
				["coord"] = { 56.7, 48.7, ZARALEK_CAVERN },
				["questID"] = 75320,
				["groups"] = {
					i(205191),	-- Underlight Globe
				},
			}),
			o(401828, {	-- Nal ks'kol Reliquary
				["description"] = "Use the console nearby and solve the puzzle to unlock.",
				["sourceQuests"] = { 72964 },	-- Singed
				["coord"] = { 64.2, 75.0, ZARALEK_CAVERN },
				["questID"] = 75745,
			}),
			o(388911, {	-- Old Trunk
				["description"] = "Must catch the Thieving Rock Mouse 5 times for the key to open the chest",
				["coord"] = { 43.1, 82.6, ZARALEK_CAVERN },
				["questID"] = 74995,
				["cost"] = { { "i", 204323, 1 } },	-- Old Trunk Key
				["groups"] = {
					hqt(75526, {	-- First Rock Mouse
						["name"] = "First Rock Mouse",
						["provider"] = { "n", 203073 },
						["coord"] = { 43.0, 82.6, ZARALEK_CAVERN },
					}),
					hqt(75527, {	-- Second Rock Mouse
						["name"] = "Second Rock Mouse",
						["provider"] = { "n", 204277 },
						["coord"] = { 42.1, 80.2, ZARALEK_CAVERN },
						["sourceQuest"] = 75526,	-- First Rock Mouse
					}),
					hqt(75534, {	-- Third Rock Mouse
						["name"] = "Third Rock Mouse",
						["provider"] = { "n", 204279 },
						["coord"] = { 41.7, 81.5, ZARALEK_CAVERN },
						["sourceQuest"] = 75527,	-- Second Rock Mouse
					}),
					hqt(75535, {	-- Fourth Rock Mouse
						["name"] = "Fourth Rock Mouse",
						["provider"] = { "n", 204280 },
						["coord"] = { 42.8, 82.2, ZARALEK_CAVERN },
						["sourceQuest"] = 75534,	-- Third Rock Mouse
					}),
					n(createHeader({
						readable = "Fifth Rock Mouse",
						text = {
							en = "Fifth Rock Mouse",
						},
					}), {
						["provider"] = { "n", 204289 },
						["coord"] = { 43.7, 83.9, ZARALEK_CAVERN },
						["sourceQuest"] = 75535,	-- Fourth Rock Mouse
						["groups"] = {
							i(204323),	-- Old Trunk Key
						},
					}),
				},
			}),
			o(385586, {	-- Primal Power
				["coord"] = { 47.4, 48.6, ZARALEK_CAVERN },
			}),
			o(386086, {	-- Seething Cache
				["description"] = "You'll need to pick up 3x stacks of a Insidious Insight debuff from Seething Orbs located in the Zaqali Caldera (Plot coords in Debug).\n\nWarning: While you may click each Seething Orb with multiple players, when the first player clicks the Seething Cache, the debuff will be removed from all nearby players and the cache itself will be gone!",
				["coord"] = { 32.3, 39.4, ZARALEK_CAVERN },
				["questID"] = 73410,
				["groups"] = {
					i(192779),	-- Seething Slug (MOUNT!)
					o(386083, {	-- Seething Orb
						["coords"] = {
							{25.2, 44.8, ZARALEK_CAVERN},
							{26.8, 46.9, ZARALEK_CAVERN},
							{27.7, 49.0, ZARALEK_CAVERN},
							{28.0, 51.3, ZARALEK_CAVERN},
							{28.7, 55.3, ZARALEK_CAVERN},
							{29.1, 42.5, ZARALEK_CAVERN},
							{29.9, 48.0, ZARALEK_CAVERN},
							{30.2, 40.0, ZARALEK_CAVERN},
							{31.2, 51.9, ZARALEK_CAVERN},
							{32.7, 52.2, ZARALEK_CAVERN},
							{34.4, 45.7, ZARALEK_CAVERN},
							{35.7, 48.8, ZARALEK_CAVERN},
							{35.8, 41.4, ZARALEK_CAVERN},
							{36.2, 44.0, ZARALEK_CAVERN},
							{37.6, 46.7, ZARALEK_CAVERN},
						},
					}),
				},
			}),
			o(386080, {	-- Scorching Key
				-- ["questID"] = ,	-- No questid triggered (Jan 5, 2025)
				["coord"] = { 30.1, 40.8, ZARALEK_CAVERN },
				["groups"] = {
					i(202869),	-- Scorching Key
				}
			}),
			n(200618, {	-- Sheridon Hastle
				["coord"] = { 42.9, 60.3, ZARALEK_CAVERN },
				["questID"] = 75231,
				["groups"] = {
					i(204642),	-- Sheridon Hastle's Effects
				},
			}),
			o(386079, {	-- Well-Chewed Chest
				["description"] = "Loot the key under the massive corebeasts's head, then use it to open the chest",
				["coord"] = { 29.7, 40.6, ZARALEK_CAVERN },
				["questID"] = 73395,
				["cost"] = { { "i", 202869, 1 } },	-- 1x Scorching Key
			}),
			-- Repeatable Treasure Chests?
			o_repeated({	-- Ritual Offerings
				["sym"] = {
					{"select","itemID",
						205340,	-- Formula: Enchanted Aspect's Shadowflame Crest (RECIPE!)
						205338,	-- Formula: Enchanted Whelpling's Shadowflame Crest (RECIPE!)
						205339,	-- Formula: Enchanted Wyrm's Shadowflame Crest (RECIPE!)
						205337,	-- Formula: Titan Training Matrix V (RECIPE!)
					},{"finalize"},
					{"select","mapID",ZARALEK_CAVERN},
					{"find","headerID",COMMON_BOSS_DROPS},{"pop"},	-- Obtained Weapons/Armor confirmed by Wowhead/Runaway
				},
				["groups"] = appendAllGroups({
					-- Shared Drops
					i(202275),	-- Renewed Proto-Drake: Plated Jaw (MM!)
				},sharedData({
					["isDaily"] = true,
				},{
					-- Objects
					o(386088, {	-- Ritual Offerings
						["questID"] = 73548,
						["coords"] = {
							{ 41.7, 44.6, ZARALEK_CAVERN },
							{ 41.9, 47.1, ZARALEK_CAVERN },
							{ 40.0, 51.3, ZARALEK_CAVERN },
							{ 38.1, 49.8, ZARALEK_CAVERN },
							{ 40.8, 50.2, ZARALEK_CAVERN },
						},
					}),
					o(386089, {	-- Ritual Offerings
						["questID"] = 73551,
						["coords"] = {
							{ 30.4, 43.7, ZARALEK_CAVERN },
							{ 31.9, 39.7, ZARALEK_CAVERN },
							{ 32.6, 44.2, ZARALEK_CAVERN },
							{ 33.1, 39.9, ZARALEK_CAVERN },
							{ 35.4, 41.8, ZARALEK_CAVERN },
							{ 36.0, 44.6, ZARALEK_CAVERN },
						},
					}),
					o(386090, {	-- Ritual Offerings
						["questID"] = 73552,
						["coords"] = {
							{ 29.0, 54.9, ZARALEK_CAVERN },
							{ 30.1, 51.4, ZARALEK_CAVERN },
							{ 36.4, 52.3, ZARALEK_CAVERN },
							{ 35.1, 52.2, ZARALEK_CAVERN },
							{ 32.0, 52.9, ZARALEK_CAVERN },
							{ 32.4, 50.3, ZARALEK_CAVERN },
						},
					}),
					o(386091, {	-- Ritual Offerings
						["questID"] = 73553,
						["coords"] = {
							{ 28.6, 48.7, ZARALEK_CAVERN },
							{ 27.3, 42.2, ZARALEK_CAVERN },
							{ 28.9, 44.2, ZARALEK_CAVERN },
							{ 28.2, 46.3, ZARALEK_CAVERN },
							{ 28.2, 51.5, ZARALEK_CAVERN },
						},
					}),
				})),
			}),
			o(401845, {	-- Smelly Disturbed Dirt
				["coords"] = {
					{ 25.7, 43.6, ZARALEK_CAVERN },
					{ 28.2, 53.7, ZARALEK_CAVERN },
					{ 30.2, 40.1, ZARALEK_CAVERN },
					{ 32.5, 53.0, ZARALEK_CAVERN },
					{ 35.9, 45.2, ZARALEK_CAVERN },
					{ 38.8, 84.9, ZARALEK_CAVERN },
					{ 39.1, 62.0, ZARALEK_CAVERN },
					{ 41.1, 35.0, ZARALEK_CAVERN },
					{ 41.3, 55.9, ZARALEK_CAVERN },
					{ 42.8, 78.1, ZARALEK_CAVERN },
					{ 44.1, 41.5, ZARALEK_CAVERN },
					{ 44.4, 35.1, ZARALEK_CAVERN },
					{ 45.0, 15.7, ZARALEK_CAVERN },
					{ 45.3, 70.2, ZARALEK_CAVERN },
					{ 45.7, 52.6, ZARALEK_CAVERN },
					{ 45.9, 22.4, ZARALEK_CAVERN },
					{ 45.9, 22.5, ZARALEK_CAVERN },
					{ 45.9, 87.3, ZARALEK_CAVERN },
					{ 46.6, 80.5, ZARALEK_CAVERN },
					{ 47.0, 26.7, ZARALEK_CAVERN },
					{ 47.3, 62.0, ZARALEK_CAVERN },
					{ 47.9, 48.8, ZARALEK_CAVERN },
					{ 49.1, 40.9, ZARALEK_CAVERN },
					{ 51.3, 24.3, ZARALEK_CAVERN },
					{ 52.7, 65.4, ZARALEK_CAVERN },
					{ 52.8, 32.3, ZARALEK_CAVERN },
					{ 52.9, 23.4, ZARALEK_CAVERN },
					{ 52.9, 23.5, ZARALEK_CAVERN },
					{ 53.1, 47.6, ZARALEK_CAVERN },
					{ 54.1, 77.6, ZARALEK_CAVERN },
					{ 54.4, 22.9, ZARALEK_CAVERN },
					{ 54.5, 22.9, ZARALEK_CAVERN },
					{ 56.9, 31.0, ZARALEK_CAVERN },
					{ 57.5, 70.4, ZARALEK_CAVERN },
					{ 57.5, 70.5, ZARALEK_CAVERN },
					{ 58.7, 43.7, ZARALEK_CAVERN },
					{ 60.0, 63.0, ZARALEK_CAVERN },
					{ 62.5, 42.0, ZARALEK_CAVERN },
					{ 62.9, 69.9, ZARALEK_CAVERN },
					{ 65.2, 55.3, ZARALEK_CAVERN },
				},
				["cost"] = { { "i", 191304, 1 } },	-- Sturdy Expedition Shovel
				["groups"] = {
					o(401846, {	-- Smelly Treasure Chest
						["isRepeatable"] = true,
						["sym"] = {
							{"select","mapID",ZARALEK_CAVERN},
							{"find","headerID",COMMON_BOSS_DROPS},{"pop"},	-- Obtained Weapons/Armor confirmed by Wowhead/Runaway
							{"select","itemID", 202275},	-- Renewed Proto-Drake: Plated Jaw (MM!)
						},
					}),
				},
			}),
			o(401844, {	-- Smelly Trash Pile
				["description"] = "These spawn basically everywhere in the zone, 120+ coords not listed :)",
				["isRepeatable"] = true,
				-- Dont link coords. Its 2 many
				["sym"] = {
					{"select","mapID",ZARALEK_CAVERN},
					{"find","headerID",COMMON_BOSS_DROPS},
					{"find","headerID",BACK},{"pop"},		-- Only Cloak/Ring drop from these it appears
					{"select","itemID", 202275},	-- Renewed Proto-Drake: Plated Jaw (MM!)
				},
				["groups"] = {
					i(203313),	-- Winding Slitherdrake: Spiked Chin (MM!)
				},
			}),
			o_repeated({	-- Stolen Stash
				-- Contains
				-- Objects
				o(396020, {	-- Stolen Stash
					["coord"] = { 63.7, 82.6, 2184 },
					["questID"] = 75303,
					["isDaily"] = true,
				}),
				o(396019, {	-- Stolen Stash
					["coord"] = { 60.7, 46.3, ZARALEK_CAVERN },
					["questID"] = 75302,
					["isDaily"] = true,
				}),
			}),
			o(389111, {	-- Waterlogged Bundle
				["coord"] = { 62.1, 55.3, ZARALEK_CAVERN },
				["questID"] = 75015,
				["isDaily"] = true,
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	m(DRAGON_ISLES, {
		m(ZARALEK_CAVERN, {
			n(TREASURES, {
				q(75559),	-- Orange Crystal (Crystal Chest) (spellID 408322)
				q(74987),	-- Purple Crystal (Crystal Chest) (spellID 400760)
				q(75601),	-- Lock Opened? (Crystal Chest) (spellID 408329)
				q(75814),	-- Probably Some Barter Brick Tracker
			}),
		}),
	}),
})));
