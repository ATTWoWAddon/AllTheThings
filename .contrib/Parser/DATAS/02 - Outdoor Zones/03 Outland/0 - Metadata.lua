---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	applyclassicphase(TBC_PHASE_ONE, m(OUTLAND, {
		["lore"] = "Outland is the shattered floating remnants of the destroyed world of Draenor, the homeworld of the orcs and refuge of the draenei. After the sundering of Draenor, Outland was thrown partially towards the Twisting Nether, and is now in a constant state of degradation. It became the domain of the pitlord Magtheridon, who was eventually deposed and replaced by Illidan Stormrage until his death at the Black Temple.",
		["icon"] = 236813,
		["zone-text-continent"] = true,
		["timeline"] = { ADDED_2_0_1 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(1312, {	-- Bloody Rare
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(1262, {	-- Loremaster of Outland (A)
					-- #if AFTER WRATH
					["sym"] = {{"meta_achievement",
						1189,	-- To Hellfire and Back (Alliance)
						-- #if AFTER 5.0.4
						1271,	-- To Hellfire and Back (Horde)
						-- #endif
						1190,	-- Mysteries of the Marsh
						1191,	-- Terror of Terokkar (Alliance)
						-- #if AFTER 5.0.4
						1272,	-- Terror of Terokkar (Horde)
						-- #endif
						1192,	-- Nagrand Slam (Alliance)
						-- #if AFTER 5.0.4
						1273,	-- Nagrand Slam (Horde)
						-- #endif
						1193,	-- On the Blade's Edge
						1194,	-- Into the Nether
						1195,	-- Shadow of the Betrayer
					}},
					-- #endif
					-- #if BEFORE 5.0.4
					["races"] = ALLIANCE_ONLY,
					-- #endif
				}),
				-- #if BEFORE 5.0.4
				ach(1274, {	-- Loremaster of Outland (H)
					-- #if AFTER WRATH
					["sym"] = { {"meta_achievement", 1194, 1190, 1273, 1193, 1195, 1272, 1271 } },
					-- #endif
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				-- #endif
				ach(1311, {	-- Medium Rare
					["sym"] = {{"partial_achievement",1312}},	-- Bloody Rare
					["timeline"] = { ADDED_3_0_2 },
				}),
				applyclassicphase(TBC_PHASE_ONE, ach(44, {	-- Outland Explorer [7.0.3] / Explore Outland
					-- #if AFTER WRATH
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						865,	-- Explore Blade's Edge Mountains
						862,	-- Explore Hellfire Peninsula
						866,	-- Explore Nagrand
						843,	-- Explore Netherstorm
						864,	-- Explore Shadowmoon Valley
						867,	-- Explore Terokkar Forest
						863,	-- Explore Zangarmarsh
					}},
					-- #endif
				})),
				petbattle(ach(6587, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {	-- Outland Safari
					crit(21509),	-- Adder (Northern Barrens, Southern Barrens, Durotar, Hellfire Peninsula, Nagrand, Spires of Arak, Valley of Trials, Nagrand, Blasted Lands)
					crit(21624),	-- Ash Viper (Burning Steppes, Shadowmoon Valley, Suramar)
					crit(21674),	-- Brown Marmot (The Hinterlands, Gorgrond)
					crit(21610),	-- Cat (Elwynn Forest, Sunstrider Isle, Silvermoon City)
					crit(21761),	-- Clefthoof Runt (Nagrand)
					crit(21760),	-- Flayer Youngling (Terokkar Forest)
					crit(21762),	-- Fledgling Nether Ray (Netherstorm)
					crit(21764),	-- Fel Flame (Shadowmoon Valley, Tanaan Jungle)
					crit(21631),	-- Mouse (Dustwallow Marsh, The Exodar, Mulgore, Camp Narache, Thunder Bluff)
					crit(21763),	-- Nether Roach (Netherstorm)
					crit(21613),	-- Prairie Dog (Northern Barrens, Southern Barrens, Arathi Highlands, Thunder Bluff, Westfall, Mulgore, Nagrand, Nagrand, Camp Narache)
					crit(21508),	-- Rabbit (Stormwind City, Elwynn Forest, Mulgore, Stonetalon Mountains, Highmountain)
					crit(21516),	-- Rat (Terokkar Forest, Hillsbrad Foothills, Ashenvale, Arathi Highlands, Desolace, Howling Fjord, The Hinterlands, Nagrand, Timeless Isle, Tirisfal Glades, Loch Modan, Darkshore, Ghostlands, Highmountain, Spires of Arak, Tanaan Jungle)
					crit(21716),	-- Rock Viper (Desolace, Mount Hyjal, Blade's Edge Mountains, Silithus)
					crit(21759),	-- Scalded Basilisk Hatchling (Blade's Edge Mountains)
					crit(21622),	-- Scorpid (Hellfire Peninsula, Twilight Highlands, Thousand Needles, Burning Steppes, Shadowmoon Valley, Blasted Lands, Silithus, Blade's Edge Mountains)
					crit(21758),	-- Skittering Cavern Crawler (Blade's Edge Mountains)
					crit(21633),	-- Skunk (Duskwood, Terokkar Forest, Azshara, Howling Fjord, Bloodmyst Isle, Val'sharah, Azuremyst Isle)
					crit(21518),	-- Small Frog (Elwynn Forest, Southern Barrens, Northern Barrens, Duskwood, Arathi Highlands, Desolace, Zangarmarsh, Darnassus, Westfall, Teldrassil, Eversong Woods, Loch Modan)
					crit(21519),	-- Snake (Dustwallow Marsh, Feralas, Eversong Woods, Westfall, Zul'Drak, Sholazar Basin, Zangarmarsh, Terokkar Forest, Ghostlands, Howling Fjord, Loch Modan)
					crit(21766),	-- Sporeling Sprout (Zangarmarsh)
					crit(21522),	-- Squirrel (Stormwind City, Terokkar Forest, Ashenvale, Feralas, Elwynn Forest, Nagrand, Crystalsong Forest, Highmountain, Loch Modan, Duskwood, Darkshore, Western Plaguelands, Azuremyst Isle, Blade's Edge Mountains, Howling Fjord, Thunder Totem, Westfall)
					crit(21620),	-- Stripe-Tailed Scorpid (Tanaris, Badlands, Terokkar Forest)
					crit(21723),	-- Tainted Cockroach (Felwood, Shadowmoon Valley)
					crit(21646),	-- Toad (Durotar, Ashenvale, Felwood, Dustwallow Marsh, Orgrimmar, Nagrand, Wetlands, Ghostlands, Hillsbrad Foothills, Eversong Woods, Silverpine Forest)
					crit(21765),	-- Warpstalker Hatchling (Terokkar Forest, Shadowmoon Valley)
				}))),
				petbattle(ach(6614, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {	-- Outland Tamer
					crit(21468),	-- Blade's Edge Mountains
					crit(21469),	-- Hellfire Peninsula
					crit(21470),	-- Nagrand
					crit(21475),	-- Netherstorm
					crit(21472),	-- Shadowmoon Valley
					crit(21471),	-- Terokkar Forest
					crit(21476),	-- Zangarmarsh
				}))),
				petbattle(ach(6604, {	-- Taming Outland
					["timeline"] = { ADDED_5_0_4 },
				})),
			}),
		},
	})),
});