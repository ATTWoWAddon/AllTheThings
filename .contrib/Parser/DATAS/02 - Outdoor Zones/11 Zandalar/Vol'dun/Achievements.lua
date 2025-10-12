---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(VOLDUN, {
		n(ACHIEVEMENTS, {
			ach(12943, {	-- Adventurer of Vol'dun
				["sym"] = {{ "achievement_criteria" }},
			}),
			h(ach(13009, {	-- Adept Sandfisher
				crit(41335, {		-- Cobalt Sandworm Scale
					["_quests"] = { 51173 },	-- Sandfishing
				}),
				crit(41336, {		-- Silver Sandworm Scale
					["_quests"] = { 51173 },	-- Sandfishing
				}),
				crit(41337, {		-- Emerald Sandworm Scale
					["_quests"] = { 51173 },	-- Sandfishing
				}),
				crit(41338, {		-- Ruby Sandworm Scale
					["_quests"] = { 51173 },	-- Sandfishing
				}),
				crit(41339, {		-- Onyx Sandworm Scale
					["_quests"] = { 51173 },	-- Sandfishing
				}),
			})),
			h(ach(13017)),	-- Champion of the Vulpera
			ach(13018, {	-- Dune Rider
				--[[ Each plank has a unique "kill credit" NPC id but no quest tracking ID. These are the IDs I found: [Pr3vention]
				["providers"] = {
					{ "n", 143668 },
					{ "n", 143258 },
					{ "n", 143257 },
					{ "n", 143256 },
					{ "n", 143255 },
				},
				]]--
				["coords"] = {
					{ 47.9, 62.5, VOLDUN },
					{ 45.8, 63.6, VOLDUN },
					{ 38.1, 71.0, VOLDUN },
					{ 32.2, 69.0, VOLDUN },
					{ 54.9, 21.4, VOLDUN },
				},
				["groups"] = { i(244326, {["timeline"] = { ADDED_12_0_0 }}),},	-- Zandalari Wall Shelf (DECOR!)
			}),
			ach(41204, {	-- Dune Squad
				["timeline"] = { ADDED_11_0_7 },
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					13009,	-- Adept Sandfisher
					12943,	-- Adventurer of Vol'dun
					13017,	-- Champion of the Vulpera
					13018,	-- Dune Rider
					13016,	-- Scavenger of the Sands
					13437,	-- Scavenge like a Vulpera
					13011,	-- Scourge of Zem'lan
					12849,	-- Treasures of Vol'dun
				}},
			}),
			ach(12560),	-- Explore Vol'dun
			ach(13016, {	-- Scavenger of the Sands
				crit(41342, {	-- Jason's Rusty Blade
					["_quests"] = { 53132 },
				}),
				crit(41343, {	-- Ian's Empty Bottle
					["_quests"] = { 53133 },
				}),
				crit(41344, {	-- Julie's Cracked Dish
					["_quests"] = { 53134 },
				}),
				crit(41345, {	-- Brian's Broken Compass
					["_quests"] = { 53135 },
				}),
				crit(41346, {	-- Ofer's Bound Journal
					["_quests"] = { 53136 },
				}),
				crit(41347, {	-- Skye's Pet Rock
					["_quests"] = { 53137 },
				}),
				crit(41348, {	-- Julien's Left Boot
					["_quests"] = { 53138 },
				}),
				crit(41349, {	-- Navarro's Flask
					["_quests"] = { 53139 },
				}),
				crit(41350, {	-- Zach's Canteen
					["_quests"] = { 53140 },
				}),
				crit(41351, {	-- Damarcus' Backpack
					["_quests"] = { 53141 },
				}),
				crit(41352, {	-- Rachel's Flute
					["_quests"] = { 53142 },
				}),
				crit(41353, {	-- Josh's Fang Necklace
					["_quests"] = { 53143 },
				}),
				crit(41354, {	-- Portrait of Commander Martens
					["_quests"] = { 53144 },
				}),
				crit(41355, {	-- Kurt's Ornate Key
					["_quests"] = { 53145 },
				}),
			}),
			ach(13011),		-- Scourge of Zem'lan
			ach(12478, {	-- Secrets in the Sands
				["races"] = HORDE_ONLY,
				["groups"] = {
					crit(40280, {	-- Unlikely Allies
						["sourceQuest"] = 51364,	-- An Explosive Exit
					}),
					crit(40017, {	-- Dangers in the Desert
						["sourceQuests"] = {
							48549,	-- Grozztok the Blackheart
						},
					}),
					crit(40016, {	-- Dangers in the Desert
						["sourceQuests"] = {
							48550,	-- Stolen Satchels
						},
					}),
					crit(40020, {	-- The Warguard's Fate
						["sourceQuest"] = 47874,	-- Clearing the Fog
					}),
					crit(40021, {	-- A City of Secrets
						["sourceQuest"] = 50561,	-- Sulthis' Stone
					}),
					crit(40022, {	-- The Three Keepers
						["sourceQuest"] = 49340,	-- The Keeper's Keys
					}),
					crit(40023, {	-- Storming the Spire
						["sourceQuest"] = 50550,	-- The Fall of Emperor Korthek
					}),
					crit(40024, {	-- Atul'Aman
						["sourceQuest"] = 50702,	-- Defeat Jakra'zet
					}),
				},
			}),
			ach(12949, {	-- The Voldunai
				["races"] = HORDE_ONLY,
			}),
			pvp(ach(12576)),	-- Tour of Duty: Vol'dun
			ach(12849, {	-- Treasures of Vol'dun
				crit(40966, {	-- Ashvane Spoils
					["_quests"] = { 50237 },
				}),
				crit(40967, {	-- Grayal's Last Offering
					["_quests"] = { 51093 },
				}),
				crit(40968, {	-- Lost Explorer's Bounty
					["_quests"] = { 51132 },
				}),
				crit(40969, {	-- Sandfury Reserve
					["_quests"] = { 51133 },
				}),
				crit(40970, {	-- Stranded Cache
					["_quests"] = { 51135 },
				}),
				crit(40971, {	-- Excavator's Greed
					["_quests"] = { 51136 },
				}),
				crit(40972, {	-- Zem'lan's Buried Treasure
					["_quests"] = { 51137 },
				}),
				crit(41002, {	-- Lost Offerings of Kimbul
					["_quests"] = { 52992 },
				}),
				crit(41003, {	-- Deadwood Chest
					["_quests"] = { 52994 },
				}),
				crit(41004, {	-- Sandsunken Treasure
					["_quests"] = { 53004 },
				}),
			}),
			h(ach(13014, {	-- Vorrik's Champion
				crit(41356, {	-- Faithless slain with Vorrik's Bulwark slain
					["_quests"] = { 51957 },	-- The Wrath of Vorrik
					["races"] = HORDE_ONLY,	-- explicit tag due to H-ach on regular WQ until parser can inherit from parent ach for us
				}),
				crit(41357, {	-- Faithless slain with Rakjan the Unbroken slain
					["_quests"] = { 51983 },	-- Vorrik's Vengeance
					["races"] = HORDE_ONLY,	-- explicit tag due to H-ach on regular WQ until parser can inherit from parent ach for us
				}),
				crit(41358, {	-- Faithless charged with a Battle Krolusk slain
					-- ["_quests"] = {  },	-- Not tied to a WQ, always available once unlocked via storyline I think
					-- ["races"] = HORDE_ONLY,	-- explicit tag due to H-ach on regular WQ until parser can inherit from parent ach for us
				}),
			})),
		}),
	}),
})));
