---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.EASTERN_KINGDOMS, {
	m(MAP.BLACKROCK_MOUNTAIN, {
		["lore"] = "Blackrock Mountain is a zone between the Burning Steppes and the Searing Gorge, linking the two regions. This zone is deceptively small and appears empty when first entered - however, it is among the most dangerous places in Azeroth. It was hotly contested between the forces of Ragnaros and his Dark Iron servants on one side and the black dragon Nefarian and his orc minions on the other. This is one of the most important areas in World of Warcraft lore.",
		["zone-text-areaID"] = 25,	-- Blackrock Mountain (mapID doesn't exist for a couple expansions)
		["icon"] = 254649,
		["lvl"] = 40,
		["groups"] = {
			n(RARES, {
				n(9026, {	-- Overmaster Pyron
					["coords"] = {
						{ 36.2, 36.2, MAP.BLACKROCK_MOUNTAIN_LEVEL3 },
						{ 40.6, 37.8, MAP.BLACKROCK_MOUNTAIN_LEVEL3 },
						{ 37.0, 28.2, MAP.BLACKROCK_MOUNTAIN_LEVEL3 },
					},
					["groups"] = {
						i(14486),	-- Pattern: Cloak of Fire (RECIPE!)
					},
				}),
				n(9046, {	-- Scarshield Quartermaster <Scarshield Legion>
					["description"] = "This used to be a simple Rare Creature with a limited loot table. He was later repurposed for use with the BWL Attunement Quest Chain. The two items listed below were never available in WoW Classic.",
					["groups"] = {
						i(13254, {	-- Astral Guard
							["timeline"] = { REMOVED_1_6_0 },
						}),
						i(13248, {	-- Burstshot Harquebus
							["timeline"] = { REMOVED_1_6_0 },
						}),
						i(18987),	-- Blackhand's Command
					},
				}),
				n(8924, {	-- The Behemoth
					["coords"] = {
						{ 37.8, 61.3, MAP.BLACKROCK_MOUNTAIN_LEVEL3 },
						{ 47.6, 62.0, MAP.BLACKROCK_MOUNTAIN_LEVEL3 },
					},
					["groups"] = {
						i(19259),	-- Two of Warlords
						i(11603),	-- Vilerend Slicer
					},
				}),
			}),
			n(SPECIAL, {
				n(16033, {	-- Bodley
					["coord"] = { 63.1, 44.4, MAP.BLACKROCK_MOUNTAIN },
					["provider"] = { "i", 22115 },	-- Extra-Dimensional Ghost Revealer
					["groups"] = {
						n(SPECIAL, {
							["description"] = "Available if a specific Quest (8996) has been completed.",
							["sourceQuest"] = 8996,	-- Return to Bodley
							["timeline"] = { ADDED_1_11_1 },
							["u_sqs"] = true,	-- remove the u flag if sourcequests are completed
							["groups"] = {
								i(22057),	-- Brazier of Invocation
							},
						}),
					},
				}),
			}),
		},
	}),
}));
