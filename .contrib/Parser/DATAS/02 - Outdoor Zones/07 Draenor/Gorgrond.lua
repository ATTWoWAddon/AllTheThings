---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local COMMON_TREASURE_SYM = {{"select","itemID",
	-- Weapons
	116508,	-- Creeperclaw Axe
	116510,	-- Creeperclaw Bow
	116509,	-- Creeperclaw Broadaxe
	116511,	-- Creeperclaw Crossbow
	116512,	-- Creeperclaw Dagger
	116523,	-- Creeperclaw Greatsword
	116515,	-- Creeperclaw Gun
	116518,	-- Creeperclaw Hammer
	116514,	-- Creeperclaw Knuckles
	116516,	-- Creeperclaw Mace
	116519,	-- Creeperclaw Spear
	116521,	-- Creeperclaw Staff
	116520,	-- Creeperclaw Staff
	116522,	-- Creeperclaw Sword
	116517,	-- Evermorn Scepter
	116513,	-- Evermorn Spellblade
	116703,	-- Evermorn Twig
	116524,	-- Evermorn Wand
	106496,	-- Shardback Shield
	-- Head
	106518,	-- Highland Helm
	106507,	-- Mandragoran Cowl
	106492,	-- Shardback Helm
	106502,	-- Steamscar Hood
	-- Neck
	116680,	-- Evermorn Amulet
	-- Shoulders
	106520,	-- Highland Spaulders
	106512,	-- Mandragoran Shoulderpads
	106494,	-- Shardback Pauldrons
	106504,	-- Steamscar Shoulders
	-- Bacj
	116702,	-- Evermorn Cloak
	-- Chest
	106521,	-- Highland Vest
	106510,	-- Mandragoran Robe
	106489,	-- Shardback Breastplate
	106503,	-- Steamscar Jerkin
	-- Wrist
	106515,	-- Highland Bracers
	106513,	-- Mandragoran Wristwraps
	106497,	-- Shardback Vambraces
	106498,	-- Steamscar Bindings
	-- Hands
	106516,	-- Highland Gauntlets
	106508,	-- Mandragoran Handwraps
	106490,	-- Shardback Gauntlets
	106501,	-- Steamscar Gloves
	-- Waist
	106514,	-- Highland Belt
	106506,	-- Mandragoran Cord
	106491,	-- Shardback Girdle
	106505,	-- Steamscar Waistband
	-- Legs
	106519,	-- Highland Legguards
	106509,	-- Mandragoran Leggings
	106493,	-- Shardback Legplates
	106500,	-- Steamscar Britches
	-- Feet
	106517,	-- Highland Greaves
	106511,	-- Mandragoran Sandals
	106495,	-- Shardback Sabatons
	106499,	-- Steamscar Boots
	-- Finger
	116704,	-- Evermorn Ring
}};

root(ROOTS.Zones, {
	m(DRAENOR, {
		m(GORGROND, {
			["lore"] = "Gorgrond is a zone in northern Draenor. It is home to the Blackrock clan and the industrial heart of the Iron Horde and their ancestral home, the Blackrock Foundry, lies near the northern coast. However the industrial efforts of the Blackrock are dwarfed by the perpetual war that rages across the region. Two groups of creatures, both descended from ancients, fight a furious, unending war to determine what form the region's landscape should take. Along the northern and western side of Gorgrond the mighty Breakers have created a barren desert with rocky mesas and hot-springs bubbling up from the ground. Along the southern and eastern side of the region the savage Primals have created a lush jungle with thick foliage and dangerous animate plant-life that waits to devour those foolish enough to stray into its depths. If either side triumphed over the other, then Gorgrond and all of Draenor would soon be transformed into the victor's favoured environment. For the Blackrock, however, this war acts as perfect barricade preventing invasion from the south, allowing them to churn out weapons for the Iron Horde unopposed.",
			["icon"] = 1046803,
			["maps"] = {
				544,	-- Moira's Reach
				545,	-- Moira's Reach
				546,	-- Fissure of Fury
				547,	-- Fissure of Fury
				548,    -- Cragplume Cauldron
				549,	-- Cragplume Cauldron
			},
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(9678, {	-- Ancient No More
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(9667),		-- Burn It to the Ground (Everbloom Wilds)
					explorationAch(8939),		-- Explore Gorgrond
					ach(9655, {		-- Fight the Power (The Pit)
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(9656, {	-- In Plain Sight (The Pit)
						["coords"] = {
							{ 45.8, 27.2, GORGROND },
							{ 48.2, 27.0, GORGROND },
							{ 45.2, 25.2, GORGROND },
							{ 49.0, 24.0, GORGROND },
						},
					}),
					ach(9659),		-- Iron Wings (The Pit)
					ach(9400, {		-- Gorgrond Monster Hunter
						crit(25568, {	-- Biolante
							["crs"] = { 75207 },	-- Biolante
							["coord"] = { 62.8, 54.0, GORGROND },
						}),
						crit(25569, {	-- Roardan the Sky Terror
							["crs"] = { 77093 },	-- Roardan the Sky Terror
							["coords"] = {
								{ 51.2, 65.6, GORGROND },
								{ 60.8, 66.4, GORGROND },
								{ 61.6, 61.8, GORGROND },
							},
						}),
						crit(25570, {	-- Crater Lord Igneous
							["crs"] = { 81528 },	-- Crater Lord Igneous
							["coord"] = { 43.6, 59.6, GORGROND },
						}),
						crit(25571, {	-- Dessicus of the Dead Pools
							["crs"] = { 81529 },	-- Dessicus of the Dead Pools
							["coord"] = { 38.8, 51.2, GORGROND },
						}),
						crit(25572, {	-- Khargax the Devourer
							["crs"] = { 81537 },	-- Khargax the Devourer
							["coord"] = { 53.0, 66.6, GORGROND },
						}),
						crit(25573, {	-- Erosian the Violent
							["crs"] = { 81540 },	-- Erosian the Violent
							["coord"] = { 51.8, 41.6, GORGROND },
						}),
						crit(25574, {	-- Charl Doomwing
							["crs"] = { 81548 },	-- Charl Doomwing
							["coord"] = { 46.0, 46.8, GORGROND },
						}),
						crit(25575, {	-- Fungal Praetorian
							["crs"] = { 80785 },	-- Fungal Praetorian
							["coord"] = { 58.0, 63.6, GORGROND },
						}),
					}),
					ach(9607, {	-- Make It a Bonus
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(9654),		-- Mean and Green (Everbloom Wilds)
					ach(9663, {	-- Picky Palate (Everbloom Wilds)
						["coords"] = {
							{ 70.90, 42.20, GORGROND },	-- Coconut
							{ 72.21, 41.53, GORGROND },	-- Guava
							{ 73.16, 37.94, GORGROND },	-- Berry
						},
					}),
					ach(9658, {	-- Pillars of Draenor (Everbloom Wilds)
						["coords"] = {
							{ 70.7, 36.5, GORGROND },	-- Pillar of Rejuvenation
							{ 73.6, 42.8, GORGROND },	-- Pillar of Life
							{ 69.8, 43.9, GORGROND },	-- Pillar of Creation
						},
					}),
					ach(9402, {	-- Prove Your Strength
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(8923, {	-- Putting the Gore in Gorgrond (A) (unlocks ability to buy Gorgrond Treasure Map from Grakis in Stormshield)
						["races"] = ALLIANCE_ONLY,
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(8924, {	-- Putting the Gore in Gorgrond (H)
						["races"] = HORDE_ONLY,
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(9564, {	-- Securing Draenor (A)
						["collectible"] = false,
						["races"] = ALLIANCE_ONLY,
						["g"] = {
							crit(26248),	-- Assault on the Pit
							crit(26249),	-- Assault on the Everbloom Wilds
						},
					}),
					ach(9562, {	-- Securing Draenor (H)
						["collectible"] = false,
						["races"] = HORDE_ONLY,
						["g"] = {
							crit(26229),	-- Assault on the Pit
							crit(26232),	-- Assault on the Everbloom Wilds
						},
					}),
					ach(9401),		-- Shredder Maniac
				}),
				petbattle(filter(BATTLE_PETS, {
					["sym"] = {{"select","speciesID",
						449,	-- Brown Marmot (PET!)
						393,	-- Cockroach (PET!)
						430,	-- Gold Beetle (PET!)
						702,	-- Leopard Tree Frog (PET!)
						568,	-- Silkbead Snail (PET!)
						1464,	-- Twilight Wasp (PET!)
						410,	-- Wharf Rat (PET!)
					}},
					["groups"] = {
						pet(1465),	-- Amberbarb Wasp (PET!)
						pet(1470),	-- Axebeak Hatchling (PET!)
						pet(1469),	-- Junglebeak (PET!)
						pet(1594, {	-- Mudback Calf (PET!)
							["description"] = "Best general locations to find these are around the coords. Killing other nearby critters helps spawn them.",
							["coords"] = {
								{ 46.0, 90.8, GORGROND },
								{ 40.8, 77.4, GORGROND },
							},
						}),
						pet(1615, {	-- Parched Lizard (PET!)
							["description"] = "Found mostly in and around Gronn Canyon.",
						}),
						pet(1463, {	-- Wood Wasp (PET!)
							["description"] = "Found in a small area around this coord.",
							["coord"] = { 50.8, 80.2, GORGROND },
						}),
					},
				})),
				explorationHeader({
					visit_exploration(6899,{coord={44.9,63.7,GORGROND}}),	-- Affliction Ridge
					visit_exploration(7448,{coord={71.5,18.9,GORGROND}}),	-- Barrier Sea
					exploration(6876),	-- Bastion Rise
					exploration(6881),	-- Beastwatch
					visit_exploration(7387,{coord={43.1,43.7,GORGROND}}),	-- Brak's Excavation
					exploration(6889),	-- Brimstone Springs
					visit_exploration(7451,{coord={63.2,23.0,GORGROND}}),	-- Broken Horn Village
					exploration(6885),	-- Cragplume Cauldron
					exploration(7149),	-- Crimson Fen
					visit_exploration(7322,{coord={48.5,52.5,GORGROND}}),	-- Crushfang's End
					exploration(6877),	-- Deadgrin
					exploration(6914),	-- Deeproot
					visit_exploration(7154,{coord={44.4,53.7,GORGROND}}),	-- Drywind Gorge
					visit_exploration(7190,{coord={49.9,45.5,GORGROND}}),	-- Dionor's Demise
					exploration(7320),	-- Everbloom Wilds
					exploration(7402),	-- Evermorn Rise
					exploration(6880),	-- Evermorn Springs
					exploration(7319),	-- Gorgorek's Fall
					visit_exploration(6913,{coord={36.2,78.2,GORGROND}}),	-- Gorgrond Pass
					exploration(6901),	-- Grimrail Depot
					visit_exploration(7205,{coord={49.6,44.9,GORGROND}}),	-- Grom'kar Gulch
					exploration(6891),	-- Gronn Canyon
					exploration(7158),	-- Highpass
					visit_exploration(7520,{coord={54.2,18.3,GORGROND}}),	-- Iron Docks
					exploration(6893),	-- Iyun Weald
					exploration(6884),	-- Mistcreep Mire
					visit_exploration(7152,{coord={64.7,49.1,GORGROND}}),	-- Naielle's Watch
					visit_exploration(7501,{coord={39.6,94.5,GORGROND}}),	-- Orunai Coast
					exploration(7298),	-- Overlook Ruins
					exploration(6935),	-- Razorbloom
					visit_exploration(6934,{coord={42.7,36.0,GORGROND}}),	-- Rooter's Pass
					visit_exploration(7299,{coord={50.7,80.1,GORGROND}}),	-- Ruins of the First Bastion
					exploration(7394),	-- Steamburst Cauldron
					exploration(7304),	-- Steamscar Rise
					exploration(6887),	-- Stonemaul Arena
					exploration(6900),	-- Sulfur Basin
					exploration(6878),	-- Tailthrasher Basin
					exploration(7224),	-- Tangleheart
					visit_exploration(7474,{coord={69.6,23.9,GORGROND}}),	-- Thaelin's Workshop
					visit_exploration(6879,{coord={43.4,69.2,GORGROND}}),	-- The Broken Spine
					visit_exploration(7403,{coord={41.1,84.7,GORGROND}}),	-- The Compost Heap
					visit_exploration(7313,{coord={45.9,86.6,GORGROND}}),	-- The Destroyed Expedition
					exploration(6915),	-- The Fertile Ground
					exploration(7415),	-- The Iron Approach
					exploration(7411),	-- The Iron Approach
					exploration(6892),	-- The Pit
					visit_exploration(7155,{coord={44.3,43.7,GORGROND}}),	-- Valley of Destruction
					exploration(7153),	-- Wildwood Wash
					visit_exploration(7437,{coord={54.4,71.9,GORGROND}}),	-- Witherwind Pass
				}),
				n(FLIGHT_PATHS, {
					fp(1511, {	-- Bastion Rise, Gorgrond
						["coord"] = { 46.4, 92.4, GORGROND },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1512, {	-- Bastion Rise, Gorgrond
						["coord"] = { 47.4, 90.8, GORGROND },
						["races"] = HORDE_ONLY,
					}),
					fp(1442, {	-- Beastwatch, Gorgrond
						["coord"] = { 46.0, 69.2, GORGROND },
						["races"] = HORDE_ONLY,
					}),
					fp(1520, {	-- Breaker's Crown, Gorgrond
						["coord"] = { 45.8, 55.0, GORGROND },
					}),
					fp(1523, {	-- Deeproot, Gorgrond
						["coord"] = { 46.4, 76.6, GORGROND },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1580, {	-- Everbloom Overlook, Gorgrond
						["coord"] = { 68.6, 28.8, GORGROND },
					}),
					fp(1568, {	-- Everbloom Wilds, Gorgrond
						["coord"] = { 57.0, 45.8, GORGROND },
					}),
					fp(1514, {	-- Evermorn Springs, Gorgrond
						["coord"] = { 41.2, 87.2, GORGROND },
						["races"] = HORDE_ONLY,
					}),
					fp(1519, {	-- Highpass, Gorgrond
						["coord"] = { 52.8, 59.4, GORGROND },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1524, {	-- Iron Docks, Gorgrond
						["coord"] = { 43.0, 20.2, GORGROND },
					}),
					fp(1539, {	-- Skysea Ridge, Gorgrond
						["coord"] = { 39.6, 36.6, GORGROND },
					}),
					fp(1518, {	-- Wildwood Wash, Gorgrond
						["coord"] = { 64.0, 57.4, GORGROND },
						["races"] = ALLIANCE_ONLY,
					}),
				}),
				petbattles({ ADDED_6_0_2 }, {
					n(83837, {	-- Cymre Brightblade <Grand Master Pet Tamer>
						["coord"] = { 51.0, 70.6, GORGROND },
					}),
				}),
				n(QUESTS, {
					--[[ notes:
						-- unknown trigger/flag criteria
						34224 - Creature Treasure: Bloodcleave
						34412 - Creature Treasure: Gnarljaw
						34222 - Creature Treasure: Iron Horde Blacksmith
						34225 - Creature Treasure: Iron Horde Slacker
						34223 - Creature Treasure: Iron Horde Stable Master
						34411 - Creature Treasure: King Slime
					]]--
					header(HEADERS.Spell, 164028, {	-- Lumber Yard
						q(36523, {	-- A Green Ogron? (A)
							["provider"] = { "n", 81601 },	-- Burrian Coalpart
							["races"] = ALLIANCE_ONLY,
							["coord"] = { 42.1, 83.4, GORGROND },
							["sourceQuest"] = 35208,	-- Dark Iron Down
							["g"] = {
								i(112591),	-- Foundry-Fired Plate Warboots
								i(112594),	-- Overgrowth Cutter Boots
								i(112592),	-- Steamburst Treads
								i(112593),	-- Wildwood Wrangler Sabatons
							},
						}),
						q(36482, {	-- A Green Ogron? (H)
							["provider"] = { "n", 82274 },	-- Cutter
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35430,	-- Cutter
							["g"] = {
								i(112591),	-- Foundry-Fired Plate Warboots
								i(112594),	-- Overgrowth Cutter Boots
								i(112592),	-- Steamburst Treads
								i(112593),	-- Wildwood Wrangler Sabatons
							},
						}),
						q(35225, {	-- A Heavy Helping Hand
							["provider"] = { "n", 81588 },	-- Thaelin Darkanvil
							["coord"] = { 46.0, 76.8, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								35206,	-- Bushwhacker (TODO: verify if needed)
								35209,	-- The Life Spring
							},
						}),
						q(35205, {	-- Burn the Bodies
							["provider"] = { "n", 81601 },	-- Burrian Coalpart
							["races"] = ALLIANCE_ONLY,
							["coord"] = { 42.1, 83.4, GORGROND },
							["sourceQuest"] = 35208,	-- Dark Iron Down
						}),
						q(35206, {	-- Bushwhacker (A)
							["provider"] = { "n", 81590 },	-- Yrel
							["coord"] = { 46.0, 76.6, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								35216,	-- Super Seeds
								35214,	-- The Infested (TODO: verify if needed)
								35213,	-- The Razorbloom
								35215,	-- The Voice of Iyu
							},
							["g"] = {
								i(112858),	-- Botani Grower's Ring
								i(119060),	-- Botani Leafbloomer's Signet
								i(112860),	-- Botani Mender's Signet
								i(119068),	-- Botani Pruner's Signet
								i(112859),	-- Botani Tender's Seal
							},
						}),
						q(35432, {	-- Bushwhacker (H)
							["coord"] = { 46.5, 71.4, GORGROND },
							["races"] = HORDE_ONLY,
							["providers"] = {
								{ "n", 74593 },	-- Draka
								{ "n", 82233 },	-- Draka
							},
							["sourceQuests"] = {
								35399,	-- Mossy Fate
								35402,	-- The Voice of Iyu
							},
							["g"] = {
								i(112858),	-- Botani Grower's Ring
								i(119060),	-- Botani Leafbloomer's Signet
								i(112860),	-- Botani Mender's Signet
								i(119068),	-- Botani Pruner's Signet
								i(112859),	-- Botani Tender's Seal
							},
						}),
						q(35654, {	-- Chapter I: Plant Food (A)
							["provider"] = { "n", 82569 },	-- Frenna
							["coord"] = { 57.0, 71.9, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35505,	-- Lost Lumberjack
						}),
						q(35508, {	-- Chapter I: Plant Food (H)
							["provider"] = { "n", 82569 },	-- Frenna
							["coord"] = { 57.0, 71.9, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35505,	-- Lost Lumberjack
						}),
						q(35651, {	-- Chapter II: The Harvest (A)
							["provider"] = { "n", 82569 },	-- Frenna
							["coord"] = { 57.0, 71.9, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35505,	-- Lost Lumberjack
						}),
						q(35527, {	-- Chapter II: The Harvest (H)
							["provider"] = { "n", 82569 },	-- Frenna
							["coord"] = { 57.0, 71.9, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35505,	-- Lost Lumberjack
						}),
						q(35650, {	-- Chapter III: Ritual of the Charred (A)
							["provider"] = { "n", 82569 },	-- Frenna
							["coord"] = { 57.0, 71.9, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35505,	-- Lost Lumberjack
						}),
						q(35524, {	-- Chapter III: Ritual of the Charred (H)
							["provider"] = { "n", 82569 },	-- Frenna
							["coord"] = { 57.0, 71.9, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35505,	-- Lost Lumberjack
						}),
						q(35207, {	-- Coalpart's Revenge
							["provider"] = { "n", 81601 },	-- Burrian Coalpart
							["coord"] = { 42.9, 82.6, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								36523,	-- A Green Ogron?
								35205,	-- Burn the Bodies
							},
						}),
						q(35433, {	-- Cut Them Down
							["provider"] = { "n", 82233 },	-- Draka
							["coord"] = { 42.0, 85.8, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								35432,	-- Bushwhacker
								35429,	-- Pollen Power
								35536,	-- Secrets of the Botani
							}
						}),
						q(35430, {	-- Cutter
							["provider"] = { "n", 74606 },	-- Kaz the Shrieker
							["coord"] = { 46.5, 71.5, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								35400,	-- The Infected
								35406,	-- Super Seeds (H)
							},
						}),
						q(35208, {	-- Dark Iron Down
							["provider"] = { "n", 81588 },	-- Thaelin Darkanvil
							["coord"] = { 46.0, 76.8, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								35216,	-- Super Seeds
								35215,	-- The Voice of Iyu
							},
						}),
						q(35212, {	-- Deeproot
							["provider"] = { "n", 75136 },	-- Thaelin Darkanvil
							["coord"] = { 53.0, 59.7, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35063,	-- We Need an Outpost
							["isBreadcrumb"] = true,
						}),
						o(232492, {	-- Doomshot
							["coord"] = { 47.1, 29.6, 544 },
							["questID"] = 35501,
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								35433,	-- Cut Them Down
								35434,	-- The Life Spring
							},
						}),
						q(35229, {	-- Down the Goren Hole (A)
							["provider"] = { "n", 75710 },	-- Hansel Heavyhands
							["coord"] = { 47.5, 94.0, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35225,	-- A Heavy Helping Hand
							["g"] = {
								i(112874),	-- Abandoned Dark Iron Cudgel
								i(112872),	-- Abandoned Dark Iron Glaive
								i(112868),	-- Abandoned Dark Iron Greataxe
								i(112867),	-- Abandoned Dark Iron Handaxe
								i(112870),	-- Abandoned Dark Iron Lockjammer
								i(112869),	-- Abandoned Dark Iron Longbow
								i(112871),	-- Abandoned Dark Iron Skullthumper
								i(112873),	-- Abandoned Dark Iron Staff
							},
						}),
						q(35507, {	-- Down the Goren Hole (H)
							["provider"] = { "n", 85601 },	-- Cutter
							["coord"] = { 46.4, 93.5, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 36488,	-- Thieving Dwarves
							["g"] = {
								i(112874),	-- Abandoned Dark Iron Cudgel
								i(112872),	-- Abandoned Dark Iron Glaive
								i(112868),	-- Abandoned Dark Iron Greataxe
								i(112867),	-- Abandoned Dark Iron Handaxe
								i(112870),	-- Abandoned Dark Iron Lockjammer
								i(112869),	-- Abandoned Dark Iron Longbow
								i(112871),	-- Abandoned Dark Iron Skullthumper
								i(112873),	-- Abandoned Dark Iron Staff
							},
						}),
						q(35652, {	-- Growing Wood (A)
							["provider"] = { "n", 82575 },	-- Glirin
							["coord"] = { 55.9, 71.5, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35708,	-- Tangleheart
							["g"] = {
								i(112617),	-- Foundry-Fired Plate Wristwraps
								i(112619),	-- Overgrowth Cutter Wristwraps
								i(112616),	-- Steamburst Wristwraps
								i(112618),	-- Wildwood Wrangler Wristwraps
							},
						}),
						q(35506, {	-- Growing Wood (H)
							["provider"] = { "n", 82574 },	-- Penny Clobberbottom
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35707,	-- Tangleheart
							["g"] = {
								i(112617),	-- Foundry-Fired Plate Wristwraps
								i(112619),	-- Overgrowth Cutter Wristwraps
								i(112616),	-- Steamburst Wristwraps
								i(112618),	-- Wildwood Wrangler Wristwraps
							},
						}),
						q(35235, {	-- Iyu (A)
							["provider"] = { "n", 81751 },	-- Hansel Heavyhands
							["coord"] = { 50.1, 22.2, 545 },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								35229,	-- Down the Goren Hole
								35233,	-- Just In Case
								35234,	-- Will of the Genesaur
							},
							["g"] = {
								i(112588),	-- Foundry-Fired Plate Chestplate
								i(112590),	-- Overgrowth Cutter Vest
								i(112607),	-- Steamburst Robe
								i(112589),	-- Wildwood Wrangler Vest
							},
						}),
						q(35510, {	-- Iyu (H)
							["provider"] = { "n", 82334 },	-- Cutter
							["coord"] = { 49.9, 22.5, 545 },
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								35507,	-- Down the Goren Hole
								35509,	-- Will of the Genesaur
								35501,	-- Doomshot
							},
							["g"] = {
								i(112588),	-- Foundry-Fired Plate Chestplate
								i(112590),	-- Overgrowth Cutter Vest
								i(112607),	-- Steamburst Robe
								i(112589),	-- Wildwood Wrangler Vest
							},
						}),
						q(35233, {	-- Just In Case
							["provider"] = { "n", 75710 },	-- Hansel Heavyhands
							["coord"] = { 47.5, 94.0, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35225,	-- A Heavy Helping Hand
						}),
						q(35511, {	-- Kaz the Shrieker
							["provider"] = { "n", 82338 },	-- Kaz the Shrieker
							["coord"] = { 47.8, 93.3, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35510,	-- Iyu
							["g"] = {
								follower(159),	-- Kaz the Shrieker
							},
						}),
						q(36368, {	-- Lost Lumberjack (A)
							["provider"] = { "n", 82575 },	-- Glirin
							["coord"] = { 55.9, 71.5, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35708,	-- Tangleheart
						}),
						q(35505, {	-- Lost Lumberjack (H)
							["provider"] = { "n", 84811 },	-- Thuldren
							["coord"] = { 55.9, 71.5, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35707,	-- Tangleheart
						}),
						q(36828, {	-- Lumber, I Hardly Knew 'Er
							["provider"] = { "n", 85119 },	-- Glirin
							["coord"] = { 53.0, 59.8, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 36575,	-- Strike While the Iron is Hot
							["g"] = {
								follower(211),	-- Glirin
							},
						}),
						q(35399, {	-- Mossy Fate
							["provider"] = { "n", 74606 },	-- Kaz the Shrieker
							["coord"] = { 46.5, 71.5, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 36474,	-- The Razorbloom
							["g"] = {
								i(112612),	-- Foundry-Fired Plate Girdle
								i(112615),	-- Overgrowth Cutter Belt
								i(112613),	-- Steamburst Cord
								i(112614),	-- Wildwood Wrangler Belt
							},
						}),
						q(36812, {	-- Penny For Your Thoughts
							["provider"] = { "n", 85077 },	-- Penny Clobberbottom
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								35508,	-- Chapter I: Plant Food
								35527,	-- Chapter II: The Harvest
								35524,	-- Chapter III: Ritual of the Charred
								35506,	-- Growing Wood
							},
							["g"] = {
								follower(211),	-- Penny Clobberbottom
							},
						}),
						q(35204, {	-- Pollen Power (A)
							["provider"] = { "n", 81589 },	-- Rangari Kaalya
							["coord"] = { 46.1, 76.6, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								35216,	-- Super Seeds
								35215,	-- The Voice of Iyu
							},
						}),
						q(35429, {	-- Pollen Power (H)
							["provider"] = { "n", 74606 },	-- Kaz the Shrieker
							["coord"] = { 46.5, 71.5, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								35399,	-- Mossy Fate
								35402,	-- The Voice of Iyu
							},
						}),
						q(35255, {	-- Power of the Genesaur (A)
							["provider"] = { "n", 75878 },	-- Yrel
							["coord"] = { 47.7, 93.3, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35235,	-- Iyu
						}),
						q(35416, {	-- Power of the Genesaur (H)
							["provider"] = { "n", 82337 },	-- Draka
							["coord"] = { 47.7, 93.3, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35510,	-- Iyu
						}),
						q(35536, {	-- Secrets of the Botani
							["provider"] = { "n", 82274 },	-- Cutter
							["coord"] = { 42.7, 80.5, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								36482,	-- A Green Ogron?
								35487,	-- We Burn the Dead
							},
						}),
						q(35262, {	-- Service of Rangari Kaalya
							["provider"] = { "n", 81772 },	-- Rangari Kaalya
							["coord"] = { 47.8, 93.3, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35235,	-- Iyu
							["g"] = {
								follower(159),	-- Rangari Kaalya
							},
						}),
						q(36439, {	-- Shredder vs. Saberon (A)
							["provider"] = { "n", 85432 },	-- Altauur
							["coord"] = { 51.3, 47.9, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["altQuests"] = { 36438 },	-- Beatface vs. Boulder
							["sourceQuests"] = {
								36437,	-- Ambassador to the Ancient
								36436,	-- Plant Pruning
							},
						}),
						q(33663, {	-- Shredder vs. Saberon (H)
							["provider"] = { "n", 85089 },	-- Rakthoth
							["coord"] = { 51.2, 48.0, GORGROND },
							["races"] = HORDE_ONLY,
							["altQuests"] = { 33662 },	-- Beatface vs. Boulder
							["sourceQuests"] = {
								33685,	-- Ambassador to the Ancient
								33689,	-- Plant Pruning
							},
						}),
						q(36575, {	-- Strike While the Iron is Hot (A)
							["provider"] = { "n", 75127 },	-- Vindicator Maraad
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								35508,	-- Chapter I: Plant Food (Lumber Yard)
								35527,	-- Chapter II: The Harvest (Lumber Yard)
								35524,	-- Chapter III: Ritual of the Charred (Lumber Yard)
								35652,	-- Growing Wood (Lumber Yard)
								35255,	-- Power of the Genesaur
							},
							["g"] = {
								i(112885),	-- Commander Gar's Iron Insignia
								i(112889),	-- Genesaur's Greatness
								i(112887),	-- Goc's Trophy
							},
						}),
						q(36574, {	-- Strike While the Iron is Hot (H)
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								35508,	-- Chapter I: Plant Food
								35527,	-- Chapter II: The Harvest
								35524,	-- Chapter III: Ritual of the Charred
								35506,	-- Growing Wood
							},
							["g"] = {
								i(112885),	-- Commander Gar's Iron Insignia
								i(112889),	-- Genesaur's Greatness
								i(112887),	-- Goc's Trophy
							},
						}),
						q(35216, {	-- Super Seeds (A)
							["provider"] = { "o", 235129 },	-- Enriched Seeds
							["coord"] = { 49.4, 70.9, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35063,	-- We Need an Outpost
						}),
						q(35406, {	-- Super Seeds (H)
							["provider"] = { "o", 235129 },	-- Enriched Seeds
							["coord"] = { 49.4, 70.9, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35151,	-- Your Base, Your Choice
						}),
						q(35708, {	-- Tangleheart (A)
							["provider"] = { "n", 85119 },	-- Glirin
							["coord"] = { 53.0, 59.8, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35063,	-- We Need an Outpost
						}),
						q(35707, {	-- Tangleheart (H)
							["provider"] = { "n", 85077 },	-- Penny Clobberbottom
							["coord"] = { 46.3, 69.6, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35151,	-- Your Base, Your Choice
						}),
						q(35214, {	-- The Infested (A)
							["provider"] = { "n", 81589 },	-- Rangari Kaalya
							["coord"] = { 46.1, 76.6, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35063,	-- We Need an Outpost
						}),
						q(35400, {	-- The Infested (H)
							["provider"] = { "n", 74593 },	-- Draka
							["coord"] = { 46.5, 71.4, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 36474,	-- The Razorbloom
						}),
						q(35209, {	-- The Life Spring (A)
							["provider"] = { "n", 81601 },	-- Burrian Coalpart
							["coord"] = { 39.7, 81.2, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35207,	-- Coalpart's Revenge
							["g"] = {
								i(118009),	-- Botani Tangle Chain
								i(119090),	-- Botani Thorn Necklace
								i(119081),	-- Smoothed Spiritstone
								i(118011),	-- Utrophis-Soaked Spiritstone
								i(118010),	-- Waterworn Ogre Carving
							},
						}),
						q(35434, {	-- The Life Spring (H)
							["provider"] = { "n", 82228 },	-- Kaz the Shrieker
							["coord"] = { 42.0, 85.9, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								35432,	-- Bushwhacker
								35429,	-- Pollen Power
								35536,	-- Secrets of the Botani
							},
							["g"] = {
								i(118009),	-- Botani Tangle Chain
								i(119090),	-- Botani Thorn Necklace
								i(119081),	-- Smoothed Spiritstone
								i(118011),	-- Utrophis-Soaked Spiritstone
								i(118010),	-- Waterworn Ogre Carving
							},
						}),
						q(35213, {	-- The Razorbloom (A)
							["provider"] = { "n", 81588 },	-- Thaelin Darkanvil
							["coord"] = { 46.0, 76.8, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								35212,	-- Deeproot
								35063,	-- We Need an Outpost
							},
							["g"] = {
								i(112612),	-- Foundry-Fired Plate Girdle
								i(112615),	-- Overgrowth Cutter Belt
								i(112613),	-- Steamburst Cord
								i(112614),	-- Wildwood Wrangler Belt
							},
						}),
						q(36474, {	-- The Razorbloom (H)
							["provider"] = { "n", 74594 },	-- Durotan
							["coord"] = { 46.0, 70.1, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35151,	-- Your Base, Your Choice
						}),
						q(35215, {	-- The Voice of Iyu (A)
							["provider"] = { "o", 231903 },	-- Razzlebeard's Report
							["coord"] = { 47.6, 72.7, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35063,	-- We Need an Outpost
						}),
						q(35402, {	-- The Voice of Iyu (H)
							["provider"] = { "n", 74606 },	-- Kaz the Shrieker
							["coord"] = { 46.5, 71.5, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 36474,	-- The Razorbloom
						}),
						q(36488, {	-- Thieving Dwarves
							["provider"] = { "n", 82228 },	-- Kaz the Shrieker
							["coord"] = { 42.0, 85.9, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								35433,	-- Cut Them Down
								35434,	-- The Life Spring
							},
						}),
						q(35234, {	-- Will of the Genesaur (A)
							["provider"] = { "n", 75710 },	-- Hansel Heavyhands
							["coord"] = { 47.5, 94.0, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35225,	-- A Heavy Helping Hand
						}),
						q(35509, {	-- Will of the Genesaur (H)
							["provider"] = { "n", 85601 },	-- Cutter
							["coord"] = { 46.4, 93.5, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 36488,	-- Thieving Dwarves
						}),
						n(BONUS_OBJECTIVES, {
							-- TODO: Check SQ, also probably can't do after a certain level
							q(36473, {	-- Affliction Ridge
								["coord"] = { 47.1, 64.4, GORGROND },
								["sourceQuest"] = 35151,	-- Your Base, Your Choice
							}),
							q(36476, {	-- South Gronn Canyon
								["coord"] = { 45.1, 52.1, GORGROND },
								["sourceQuests"] = {
									35063,	-- We Need an Outpost
									35151,	-- Your Base, Your Choice
								},
							}),
							q(36566, {	-- Stonemaul Arena
								["coord"] = { 39.9, 66.4, GORGROND },
								["sourceQuests"] = {
									35063,	-- We Need an Outpost
									35151,	-- Your Base, Your Choice
								},
							}),
						}),
					}),
					header(HEADERS.Spell, 171866, {	-- Sparring Arena
						q(35210, {	-- A Great Escape
							["provider"] = { "o", 236140 },	-- Goren Tunnel
							["coord"] = { 34.7, 66.9, 547 },
							["description"] = "Available once you complete the objectives for |cFFFFD700Fair Warning|r and |cFFFFD700Leave Every Solder Behind|r.",
							["isBreadcrumb"] = true,	-- unavailable once you turn in "Leave Every Soldier Behind"
							["sourceQuests"] = {
								35128,	-- Fair Warning
								35129,	-- Leave Every Soldier Behind
							},
						}),
						q(35693, {	-- A Harsh Reminder (A)
							["provider"] = { "n", 82610 },	-- Rangari Erdanii
							["coord"] = { 46.2, 66.6, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35686,	-- Rage and Wisdom
							["g"] = {
								i(112612),	-- Foundry-Fired Plate Girdle
								i(112615),	-- Overgrowth Cutter Belt
								i(112613),	-- Steamburst Cord
								i(112614),	-- Wildwood Wrangler Belt
							},
						}),
						q(35248, {	-- A Harsh Reminder (H)
							["provider"] = { "n", 81202 },	-- Bony Xuk
							["coord"] = { 43.5, 65.0, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35880,	-- Rage and Wisdom
							["g"] = {
								i(112612),	-- Foundry-Fired Plate Girdle
								i(112615),	-- Overgrowth Cutter Belt
								i(112613),	-- Steamburst Cord
								i(112614),	-- Wildwood Wrangler Belt
							},
						}),
						q(34704, {	-- A Rediscovered Legend (A)
							["provider"] = { "n", 81076 },	-- Rangari Jonaa
							["coord"] = { 52.8, 59.8, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35063,	-- We Need an Outpost
						}),
						q(34697, {	-- A Rediscovered Legend (H)
							["provider"] = { "n", 76688 },	-- Limbflayer
							["coord"] = { 46.3, 69.7, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35151,	-- Your Base, Your Choice
						}),
						q(35037, {	-- Bad at Breaking
							["provider"] = { "n", 80856 },	-- Rexxar
							["coord"] = { 46.0, 54.7, GORGROND },
							["sourceQuests"] = {
								36508,	-- Is This One of Yours? (A)
								35036,	-- Is This One of Yours? (H)
							},
							["g"] = {
								i(112591),	-- Foundry-Fired Plate Warboots
								i(112594),	-- Overgrowth Cutter Boots
								i(112592),	-- Steamburst Treads
								i(112593),	-- Wildwood Wrangler Sabatons
							},
						}),
						q(35870, {	-- Basilisk Butcher
							["provider"] = { "n", 82832 },	-- Rexxar
							["coord"] = { 44.2, 61.6, GORGROND },
							["sourceQuest"] = 35730,	-- Cauterizing Wounds
							["groups"] = {
								i(113504),	-- Basilisk Meat (QI!)
							},
						}),
						q(36438, {	-- Beatface vs. Boulder (A)
							["provider"] = { "n", 85432 },	-- Altauur
							["coord"] = { 51.3, 47.9, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["altQuests"] = { 36439 },	-- Shredder vs. Saberon
							["sourceQuests"] = {
								36437,	-- Ambassador to the Ancient
								36436,	-- Plant Pruning
							},
						}),
						q(33662, {	-- Beatface vs. Boulder (H)
							["provider"] = { "n", 85089 },	-- Rakthoth
							["coord"] = { 51.2, 48.0, GORGROND },
							["races"] = HORDE_ONLY,
							["altQuests"] = { 33663 },	-- Shredder vs. Saberon
							["sourceQuests"] = {
								33685,	-- Ambassador to the Ancient
								33689,	-- Plant Pruning
							},
						}),
						q(35730, {	-- Cauterizing Wounds
							["provider"] = { "n", 82832 },	-- Rexxar
							["coord"] = { 44.2, 61.6, GORGROND },
							["sourceQuests"] = {
								35665,	-- We Have Company (A)
								35025,	-- We Have Company (H)
							},
							["groups"] = {
								o(233180, {	-- Iron Horde Bonfire
									i(113398),	-- Burning Log (QI!)
								}),
							},
						}),
						q(35702, {	-- Chains of Iron (A)
							["provider"] = { "n", 84131 },	-- Rexxar
							["coord"] = { 43.9, 48.8, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35139,	-- Eye in the Sky
							["g"] = {
								o(231775, {	-- Heart of the Magnaron
									i(112680),	-- Heart of the Magnaron (QI!)
								}),
								i(112588),	-- Foundry-Fired Plate Chestplate
								i(112590),	-- Overgrowth Cutter Vest
								i(112607),	-- Steamburst Robe
								i(112589),	-- Wildwood Wrangler Vest
							},
						}),
						q(35136, {	-- Chains of Iron (H)
							["provider"] = { "n", 84131 },	-- Rexxar
							["coord"] = { 43.9, 48.8, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35139,	-- Eye in the Sky
							["g"] = {
								i(112588),	-- Foundry-Fired Plate Chestplate
								i(112590),	-- Overgrowth Cutter Vest
								i(112607),	-- Steamburst Robe
								i(112589),	-- Wildwood Wrangler Vest
							},
						}),
						q(35139, {	-- Eye in the Sky
							["provider"] = { "n", 84131 },	-- Rexxar
							["coord"] = { 43.9, 48.8, GORGROND },
							["sourceQuests"] = {
								35210,	-- A Great Escape
								35128,	-- Fair Warning
								35129,	-- Leave Every Soldier Behind
							},
						}),
						q(35128, {	-- Fair Warning
							["provider"] = { "n", 80856 },	-- Rexxar
							["coord"] = { 46.0, 54.7, GORGROND },
							["sourceQuests"] = {
								35041,	-- Xuk It!
								36209,	-- What's Under There?
							},
							["g"] = {
								i(118025),	-- Ogron Slayer's Ankleslicer
								i(118022),	-- Ogron Slayer's Axe
								i(118029),	-- Ogron Slayer's Club
								i(118024),	-- Ogron Slayer's Eye-Poker
								i(118026),	-- Ogron Slayer's Eyebruiser
								i(118027),	-- Ogron Slayer's Eyegouger
								i(118023),	-- Ogron Slayer's Greataxe
								i(118028),	-- Ogron Slayer's Greatstaff
							},
						}),
						q(36832, {	-- Get the Xuk Outta Here!
							["provider"] = { "n", 85980 },	-- Spirit of Bony Xuk
							["coord"] = { 44.1, 48.8, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35247,	-- Zero Xuks Given
							["g"] = {
								follower(212),	-- Spirit of Bony Xuk
							},
						}),
						q(34699, {	-- Getting Gladiators
							["provider"] = { "n", 79322 },	-- Gladiator Akaani
							["coord"] = { 42.7, 62.9, GORGROND },
							["sourceQuests"] = {
								34704,	-- A Rediscovered Legend (A)
								34697,	-- A Rediscovered Legend (H)
							},
							["g"] = {
								i(112617),	-- Foundry-Fired Plate Wristwraps
								i(112619),	-- Overgrowth Cutter Wristwraps
								i(112616),	-- Steamburst Wristwraps
								i(112618),	-- Wildwood Wrangler Wristwraps
							},
						}),
						q(36210, {	-- Hard Shell
							["provider"] = { "n", 82610 },	-- Rangari Erdanii
							["coord"] = { 46.1, 55.0, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 36508,	-- Is This One of Yours?
							["groups"] = {
								i(112786),	-- Goren Shell (QI!)
							},
						}),
						q(35218, {	-- Iron Horde Orders
							["provider"] = { "n", 80856 },	-- Rexxar
							["coord"] = { 46.0, 54.7, GORGROND },
							["isBreadcrumb"] = true,
							["sourceQuests"] = {
								35037,	-- Bad at Breaking
								35934,	-- Nisha's Vengeance
							},
						}),
						q(36508, {	-- Is This One of Yours? (A)
							["provider"] = { "n", 83569 },	-- Rexxar
							["coord"] = { 46.0, 54.7, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								35870,	-- Basilisk Butcher
								35730,	-- Cauterizing Wounds
								35026,	-- On the Mend
							},
						}),
						q(35036, {	-- Is This One of Yours? (H)
							["provider"] = { "n", 83569 },	-- Rexxar
							["coord"] = { 46.0, 54.7, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								35870,	-- Basilisk Butcher
								35730,	-- Cauterizing Wounds
								35026,	-- On the Mend
							},
						}),
						q(34702, {	-- Krav'ogra
							["provider"] = { "n", 79331 },	-- Beatface
							["coord"] = { 42.6, 63.0, GORGROND },
							["sourceQuests"] = {
								34704,	-- A Rediscovered Legend (A)
								34697,	-- A Rediscovered Legend (H)
							},
						}),
						q(36223, {	-- Leave Every Soldier Behind (A)
							["provider"] = { "n", 82610 },	-- Rangari Erdanii
							["coord"] = { 46.1, 55.0, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 36209,	-- What's Under There?
							["groups"] = {
								o(233594, {	-- Thukmar's Research
									i(113629),	-- Thukmar's Intel
								}),
							},
						}),
						q(35129, {	-- Leave Every Soldier Behind (H)
							["provider"] = { "n", 80856 },	-- Rexxar
							["coord"] = { 46.0, 54.7, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35041,	-- Xuk It!
						}),
						q(36833, {	-- May I Be of Service?
							["provider"] = { "n", 85278 },	-- Rangari Erdanii
							["coord"] = { 53.3, 59.7, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35702,	-- Chains of Iron
							["g"] = {
								follower(212),	-- Rangari Erdanii
							},
						}),
						q(34700, {	-- Nazgrel
							["provider"] = { "n", 79320 },	-- Kash'drakor
							["coord"] = { 42.7, 63.0, GORGROND },
							["sourceQuests"] = {
								34704,	-- A Rediscovered Legend (A)
								34697,	-- A Rediscovered Legend (H)
							},
						}),
						q(34012, {	-- Need More Teeth
							["provider"] = { "n", 75008 },	-- Prowler Sasha
							["coord"] = { 41.4, 66.1, GORGROND },
							["sourceQuests"] = {
								34704,	-- A Rediscovered Legend (A)
								34697,	-- A Rediscovered Legend (H)
							},
							["groups"] = {
								i(108898),	-- Ogre Tooth (QI!)
							},
						}),
						q(35934, {	-- Nisha's Vengeance
							["provider"] = { "n", 80856 },	-- Rexxar
							["coord"] = { 46.0, 54.7, GORGROND },
							["sourceQuests"] = {
								36508,	-- Is This One of Yours? (A)
								35036,	-- Is This One of Yours? (H)
							},
						}),
						q(35026, {	-- On the Mend
							["provider"] = { "n", 82832 },	-- Rexxar
							["coord"] = { 44.2, 61.6, GORGROND },
							["sourceQuest"] = 35730,	-- Cauterizing Wounds
							["g"] = {
								i(113009),	-- Quenching Waters (QI!)
								i(119064),	-- Steamfury Band
								i(118039),	-- Steamfury Loop
								i(119072),	-- Steamfury Ring
								i(118040),	-- Steamfury Seal
								i(118038),	-- Steamfury Signet
							},
						}),
						q(35686, {	-- Rage and Wisdom (A)
							["provider"] = { "n", 75127 },	-- Vindicator Maraad
							["coord"] = { 52.8, 59.6, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35063,	-- We Need an Outpost
						}),
						q(35880, {	-- Rage and Wisdom (H)
							["provider"] = { "n", 74594 },	-- Durotan
							["coord"] = { 46.0, 70.1, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35151,	-- Your Base, Your Choice
						}),
						q(35664, {	-- Seedbearers of Bad News (A)
							["provider"] = { "n", 82610 },	-- Rangari Erdanii
							["coord"] = { 46.2, 66.6, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 35686,	-- Rage and Wisdom
							["groups"] = {
								i(114967),	-- Torch (QI!)
							},
						}),
						q(35035, {	-- Seedbearers of Bad News (H)
							["provider"] = { "n", 81202 },	-- Bony Xuk
							["coord"] = { 43.5, 65.0, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35880,	-- Rage and Wisdom
						}),
						q(34698, {	-- Slave Hunters
							["provider"] = { "n", 79320 },	-- Kash'drakor
							["coord"] = { 42.7, 63.0, GORGROND },
							["sourceQuests"] = {
								34704,	-- A Rediscovered Legend (A)
								34697,	-- A Rediscovered Legend (H)
							},
							["groups"] = {
								i(108899),	-- Pendant of Brol (QI!)
								i(111527),	-- Pendant of Krag (QI!)
								i(111528),	-- Pendant of Mol (QI!)
							},
						}),
						q(36576, {	-- Strike While the Iron is Hot (A)
							["provider"] = { "n", 75127 },	-- Vindicator Maraad
							["coord"] = { 52.8, 59.6, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								35702,	-- Chains of Iron
								35137,	-- The Sparring Arena (A)
							},
							["g"] = {
								i(112885),	-- Commander Gar's Iron Insignia
								i(112889),	-- Genesaur's Greatness
								i(112887),	-- Goc's Trophy
							},
						}),
						q(36573, {	-- Strike While the Iron is Hot (H)
							["provider"] = { "n", 74594 },	-- Durotan
							["coord"] = { 46.1, 70.1, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								35136,	-- Chains of Iron
								35152,	-- The Sparring Arena (H)
							},
							["g"] = {
								i(112885),	-- Commander Gar's Iron Insignia
								i(112889),	-- Genesaur's Greatness
								i(112887),	-- Goc's Trophy
							},
						}),
						q(34703, {	-- The Axe of Kor'gall
							["provider"] = { "n", 77014 },	-- Bruto
							["coord"] = { 36.8, 67.9, GORGROND },
							["sourceQuest"] = 34699,	-- Getting Gladiators
							["g"] = {
								i(109023),	-- Serathil (QI!)
								i(112888),	-- Anger of Kor'gall
								i(112886),	-- Ferocity of Kor'gall
								i(112884),	-- Might of Kor'gall
							},
						}),
						q(36208, {	-- The Crystal Shard
							["provider"] = { "n", 82610 },	-- Rangari Erdanii
							["coord"] = { 46.1, 55.0, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 36508,	-- Is This One of Yours?
							["g"] = {
								i(112911),	-- Goren Crystal (QI!)
								i(112864),	-- Laughing Skull Trophy Necklace
								i(119085),	-- Xuk's Bad Xuk Charm
								i(119076),	-- Xuk's Fingerbone Pouch
								i(112863),	-- Xuk's Good Xuk Charm
								i(112865),	-- Xuk's Spirit-Speaking Chain
							},
						}),
						q(35883, {	-- The Fists of Vaandaam
							["provider"] = { "n", 79337 },	-- Pitfighter Vaandaam
							["coord"] = { 42.8, 63.0, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 34703,	-- The Axe of Kor'gall
							["g"] = {
								follower(176),	-- Pitfighter Vaandaam
							},
						}),
						q(35925, {	-- The Gronn Strategy
							["provider"] = { "o", 233391 },	-- Weaponization Orders
							["icon"] = 133463,
							["coord"] = { 47.7, 52.0, GORGROND },
							["sourceQuests"] = {
								35218,	-- Iron Horde Orders
								35730,	-- Cauterizing Wounds
							},
							["groups"] = {
								i(116909),	-- Weaponization Orders
							},
						}),
						q(35882, {	-- The Interest of Bruto
							["provider"] = { "n", 77014 },	-- Bruto
							["coord"] = { 42.8, 62.9, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 34703,	-- The Axe of Kor'gall
							["g"] = {
								follower(176),	-- Bruto
							},
						}),
						q(35137, {	-- The Sparring Arena (A)
							["provider"] = { "n", 79322 },	-- Gladiator Akaani
							["coord"] = { 42.8, 63.0, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								34702,	-- Krav'ogra
								34700,	-- Nazgrel
								34698,	-- Slave Hunters
								34703,	-- The Axe of Kor'gall
							},
						}),
						q(35152, {	-- The Sparring Arena (H)
							["provider"] = { "n", 79320 },	-- Kash'drakor
							["coord"] = { 42.7, 63.0, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								34702,	-- Krav'ogra
								34700,	-- Nazgrel
								34698,	-- Slave Hunters
								34703,	-- The Axe of Kor'gall
							},
						}),
						q(36107, {	-- Trophy Hunter of Gorgrond (A)
							["provider"] = { "n", 81076 },	-- Rangari Jonaa
							["coord"] = { 52.8, 59.9, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								36092,	-- Proof of Strength: Ancient Branch
								36103,	-- Proof of Strength: Basilisk Scale
								36084,	-- Proof of Strength: Botani Bloom
								36105,	-- Proof of Strength: Elemental Crystal
								35944,	-- Proof of Strength: Goren Tooth
								36081,	-- Proof of Strength: Gronn Eye
								36078,	-- Proof of Strength: Gronnling Scale
								36075,	-- Proof of Strength: Ogron Horn
								36090,	-- Proof of Strength: Orc Thorn
								36096,	-- Proof of Strength: Ravager Claw
								36098,	-- Proof of Strength: Wasp Stinger
							},
						}),
						q(36108, {	-- Trophy Hunter of Gorgrond (H)
							["provider"] = { "n", 76688 },	-- Limbflayer
							["coord"] = { 46.3, 69.7, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								36094,	-- Proof of Strength: Ancient Branch
								36104,	-- Proof of Strength: Basilisk Scale
								36086,	-- Proof of Strength: Botani Bloom
								36106,	-- Proof of Strength: Elemental Crystal
								35948,	-- Proof of Strength: Goren Tooth
								36083,	-- Proof of Strength: Gronn Eye
								36080,	-- Proof of Strength: Gronnling Scale
								36076,	-- Proof of Strength: Ogron Horn
								36091,	-- Proof of Strength: Orc Thorn
								36097,	-- Proof of Strength: Ravager Claw
								36101,	-- Proof of Strength: Wasp Stinger
							},
						}),
						q(35665, {	-- We Have Company (A)
							["provider"] = { "n", 82610 },	-- Rangari Erdanii
							["coord"] = { 44.9, 63.9, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								35693,	-- A Harsh Reminder
								35664,	-- Seedbearers of Bad News
							},
						}),
						q(35025, {	-- We Have Company (H)
							["provider"] = { "n", 81202 },	-- Bony Xuk
							["coord"] = { 43.5, 65.0, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								35248,	-- A Harsh Reminder
								35035,	-- Seedbearers of Bad News
							},
						}),
						q(35038, {	-- What the Bony Xuk?
							["provider"] = { "n", 84743 },	-- Bony Xuk
							["coord"] = { 46.1, 55.0, GORGROND },
							["sourceQuest"] = 35036,	-- Is This One of Yours?
							["races"] = HORDE_ONLY,
							["g"] = {
								i(112864),	-- Laughing Skull Trophy Necklace
								i(119085),	-- Xuk's Bad Xuk Charm
								i(119076),	-- Xuk's Fingerbone Pouch
								i(112863),	-- Xuk's Good Xuk Charm
								i(112865),	-- Xuk's Spirit-Speaking Chain
							},
						}),
						q(36209, {	-- What's Under There?
							["provider"] = { "n", 82610 },	-- Rangari Erdanii
							["coord"] = { 46.1, 55.0, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								35925,	-- The Gronn Strategy
								36210,	-- Hard Shell
								36208,	-- The Crystal Shard
							},
							["groups"] = {
								i(112958),	-- Goren Disguise (QI!)
								i(114963),	-- Grom'kar Dispatch (QI!)
							},
						}),
						q(35041, {	-- Xuk It!
							["provider"] = { "n", 84743 },	-- Bony Xuk
							["coord"] = { 46.1, 55.0, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								35037,	-- Bad At Breaking
								35934,	-- Nisha's Vengeance
								35925,	-- The Gronn Strategy
								35038,	-- What the Bony Xuk?
								35202,	-- Xuk Me, Right?
							},
						}),
						q(35202, {	-- Xuk Me, Right?
							["provider"] = { "n", 84743 },	-- Bony Xuk
							["coord"] = { 46.1, 55.0, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35036,	-- Is This One of Yours?
						}),
						q(35247, {	-- Zero Xuks Given
							["provider"] = { "n", 84748 },	-- Bony Xuk
							["coord"] = { 43.8, 48.8, GORGROND },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 35041,	-- Xuk It!
						}),
						n(BONUS_OBJECTIVES, {
							-- TODO: Check SQ (completed all at L60 in SL)
							q(36504, {	-- Evermorn Springs
								["coord"] = { 43.0, 79.9, GORGROND },
								["sourceQuest"] = 35151,	-- Your Base, Your Choice
							}),
							q(36564, {	-- Tangleheart
								["coord"] = { 60.2, 67.6, GORGROND },
								["sourceQuest"] = 35151,	-- Your Base, Your Choice
							}),
							q(36500, {	-- The Razorbloom
								["coord"] = { 47.8, 72.8, GORGROND },
								["sourceQuest"] = 35151,	-- Your Base, Your Choice
							}),
						}),
					}),
					header(HEADERS.Spell, 171866, sharedData({	-- Sparring Arena (A) (Proofs of Strength)
						["sharedDescription"] = "Quest Item will only drop from mobs killed while your Sparring Arena follower is summoned, they do not need to hit any.",
						["sourceQuest"] = 35137,	-- The Sparring Arena (A)
						["races"] = ALLIANCE_ONLY,
					},{
						q(36092, {	-- Proof of Strength: Ancient Branch (A)
							["provider"] = { "i", 114029 },	-- Ancient Branch
							["crs"] = {
								81630,	-- Bloom Defender
								81005,	-- Silent Watcher
							},
						}),
						q(36103, {	-- Proof of Strength: Basilisk Scale (A)
							["provider"] = { "i", 114035 },	-- Basilisk Scale
							["crs"] = {
								85694,	-- Mire Basilisk
								74962,	-- Stoneshamble Basilisk
							},
						}),
						q(36084, {	-- Proof of Strength: Botani Bloom (A)
							["provider"] = { "i", 114024 },	-- Botani Bloom
							["crs"] = {
								80696,	-- Botani Greensworn
								81631,	-- Botani Grovetender
								81575,	-- Bloom Weaver
								81721,	-- Dionar Seedpriest
								83826,	-- Tarlna Thorncaster
								81634,	-- Voice of Iyu
							},
						}),
						q(36105, {	-- Proof of Strength: Elemental Crystal (A)
							["provider"] = { "i", 114037 },	-- Elemental Crystal
							["crs"] = {
								78257,	-- Abyssal Earthwarden
								86439,	-- Earthen Fury
								85924,	-- Lesser Brimfury
								83458,	-- Rippling Steamfury
								81685,	-- Turbulent Steamfury
							},
						}),
						q(35944, {	-- Proof of Strength: Goren Tooth (A)
							["provider"] = { "i", 113586 },	-- Acid-Stained Goren Tooth
							["crs"] = {
								81729,	-- Enraged Gembiter
								80690,	-- Goren Gouger
								81775,	-- Goren Nibbler
							},
						}),
						q(36081, {	-- Proof of Strength: Gronn Eye (A)
							["provider"] = { "i", 114022 },	-- Gronn Eye
							["crs"] = {
								81246,	-- Canyon Boulderbreaker
								80689,	-- Gronn Rockthrower
								85988,	-- Mangled Boulderbreaker
							},
						}),
						q(36078, {	-- Proof of Strength: Gronnling Scale (A)
							["provider"] = { "i", 114020 },	-- Gronnling Scale
							["crs"] = {
								81207,	-- Drywind Bonepicker
								80685,	-- Gronnling Bonebreaker
							},
						}),
						q(36075, {	-- Proof of Strength: Ogron Horn (A)
							["provider"] = { "i", 114018 },	-- Worn Ogron Horn
							["crs"] = { 81240 },	-- Ogron Spinecrusher
						}),
						q(36090, {	-- Proof of Strength: Orc Thorn (A)
							["provider"] = { "i", 114026 },	-- Orc Thorn
							["crs"] = { 81617 },	-- Infested Orc
						}),
						q(36096, {	-- Proof of Strength: Ravager Claw (A)
							["provider"] = { "i", 114031 },	-- Ravager Claw
							["crs"] = {
								85516,	-- Cliffscar Ravager
								83517,	-- Stoneshard Ravager
								81561,	-- Thicket Ravager
								86263,	-- Venomous Ravager
								85779,	-- Verdant Ravager
							},
						}),
						q(36098, {	-- Proof of Strength: Wasp Stinger (A)
							["provider"] = { "i", 114033 },	-- Wasp Stinger
							["crs"] = {
								84852,	-- Heartsting Pollinator
								85695,	-- Mistcreep Stinger
								83520,	-- Stoneshard Hunter
							},
						}),
					})),
					header(HEADERS.Spell, 171866, sharedData({	-- Sparring Arena (H) (Proofs of Strength)
						["sharedDescription"] = "Quest Item will only drop from mobs killed while your Sparring Arena follower is summoned, they do not need to hit any.",
						["sourceQuest"] = 35152,	-- The Sparring Arena (H)
						["races"] = HORDE_ONLY,
					},{
						q(36094, {	-- Proof of Strength: Ancient Branch (H)
							["provider"] = { "i", 114030 },	-- Ancient Branch
							["crs"] = {
								81630,	-- Bloom Defender
								81005,	-- Silent Watcher
							},
						}),
						q(36104, {	-- Proof of Strength: Basilisk Scale (H)
							["provider"] = { "i", 114036 },	-- Basilisk Scale
							["crs"] = {
								85694,	-- Mire Basilisk
								74962,	-- Stoneshamble Basilisk
							},
						}),
						q(36086, {	-- Proof of Strength: Botani Bloom (H)
							["provider"] = { "i", 114025 },	-- Botani Bloom
							["crs"] = {
								80696,	-- Botani Greensworn
								81631,	-- Botani Grovetender
								81575,	-- Bloom Weaver
								81721,	-- Dionar Seedpriest
								83826,	-- Tarlna Thorncaster
								81634,	-- Voice of Iyu
							},
						}),
						q(36106, {	-- Proof of Strength: Elemental Crystal (H)
							["provider"] = { "i", 114038 },	-- Elemental Crystal
							["crs"] = {
								78257,	-- Abyssal Earthwarden
								86439,	-- Earthen Fury
								85924,	-- Lesser Brimfury
								83458,	-- Rippling Steamfury
								81685,	-- Turbulent Steamfury
							},
						}),
						q(35948, {	-- Proof of Strength: Goren Tooth (H)
							["provider"] = { "i", 113590 },	-- Acid-Stained Goren Tooth
							["crs"] = {
								81729,	-- Enraged Gembiter
								80690,	-- Goren Gouger
								81775,	-- Goren Nibbler
							},
						}),
						q(36083, {	-- Proof of Strength: Gronn Eye (H)
							["provider"] = { "i", 114023 },	-- Gronn Eye
							["crs"] = {
								81246,	-- Canyon Boulderbreaker
								80689,	-- Gronn Rockthrower
								85988,	-- Mangled Boulderbreaker
							},
						}),
						q(36080, {	-- Proof of Strength: Gronnling Scale (H)
							["provider"] = { "i", 114021 },	-- Gronnling Scale
							["crs"] = {
								81207,	-- Drywind Bonepicker
								80685,	-- Gronnling Bonebreaker
							},
						}),
						q(36076, {	-- Proof of Strength: Ogron Horn (H)
							["provider"] = { "i", 114019 },	-- Worn Ogron Horn
							["crs"] = { 81240 },	-- Ogron Spinecrusher
						}),
						q(36091, {	-- Proof of Strength: Orc Thorn (H)
							["provider"] = { "i", 114027 },	-- Orc Thorn
							["crs"] = { 81617 },	-- Infested Orc
						}),
						q(36097, {	-- Proof of Strength: Ravager Claw (H)
							["provider"] = { "i", 114032 },	-- Ravager Claw
							["crs"] = {
								85516,	-- Cliffscar Ravager
								83517,	-- Stoneshard Ravager
								81561,	-- Thicket Ravager
								86263,	-- Venomous Ravager
								85779,	-- Verdant Ravager
							},
						}),
						q(36101, {	-- Proof of Strength: Wasp Stinger (H)
							["provider"] = { "i", 114034 },	-- Wasp Stinger
							["crs"] = {
								84852,	-- Heartsting Pollinator
								85695,	-- Mistcreep Stinger
								83520,	-- Stoneshard Hunter
							},
						}),
					})),
					q(36037, {	-- A Centurion Without a Cause
						["provider"] = { "n", 83820 },	-- High Centurion Tormmok
						["coord"] = { 44.9, 86.9, GORGROND },
						["description"] = "You must defend Tormmok against a few waves of enemies before he will become your follower.",
						["g"] = {
							follower(193),	-- Tormmok
						},
					}),
					q(33593, {	-- A Flare for the Dramatic
						["provider"] = { "n", 74594 },	-- Durotan
						["coord"] = { 41.4, 74.0, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							33563,	-- Eye Candy
							33544,	-- Goren, Goren, Gone!
							33548,	-- We Die Laughing!
						},
					}),
					q(35647, {	-- A Grim Harvest (A)
						["provider"] = { "n", 82476 },	-- Khaano
						["coord"] = { 58.2, 59.9, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							35644,	-- Mercy for the Living
							35645,	-- The Secret of the Fungus
						},
						["groups"] = {
							i(112394),	-- Enlarged Stomper Spore Pod (QI!)
						},
					}),
					q(35030, {	-- A Grim Harvest (H)
						["provider"] = { "n", 80757 },	-- Grulkor
						["coord"] = { 57.2, 61.9, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							35027,	-- Clearing the Way
							35029,	-- The Secret of the Fungus
						},
					}),
					q(35065, {	-- A Harvester Has Come
						["provider"] = { "n", 80921 },	-- Rangari D'kaan
						["coord"] = { 64.2, 51.9, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35033,	-- Welcome to Gorgrond
					}),
					q(35656, {	-- A Heartfelt Search (A)
						["provider"] = { "n", 82476 },	-- Khaano
						["coord"] = { 58.2, 59.9, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							35644,	-- Mercy for the Living
							35645,	-- The Secret of the Fungus
						},
					}),
					q(35031, {	-- A Heartfelt Search (H)
						["provider"] = { "n", 80757 },	-- Grulkor
						["coord"] = { 57.2, 61.9, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							35027,	-- Clearing the Way
							35029,	-- The Secret of the Fungus
						},
					}),
					q(36437, {	-- Ambassador to the Ancient (A)
						["coord"] = { 49.3, 49.6, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35063,	-- We Need an Outpost
						["providers"] = {
							{ "n", 85426 },	-- Altauur
							{ "n", 85432 },	-- Altauur
						},
					}),
					q(33685, {	-- Ambassador to the Ancient (H)
						["provider"] = { "n", 81731 },	-- Rakthoth
						["coord"] = { 49.3, 49.7, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 33694,	-- Reagents from Rakthoth
					}),
					q(35016, {	-- Basic Skulltaking
						["provider"] = { "n", 81218 },	-- Grulkor
						["coord"] = { 54.4, 66.6, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35667,	-- Skulltakers in Crimson Fen
					}),
					q(35027, {	-- Clearing the Way
						["provider"] = { "n", 80757 },
						["coord"] = { 57.1, 61.9, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							35016,	-- Basic Skulltaking
							35021,	-- Mysterious Pod
							35017,	-- Skulltaker's Revenge
						},
						["g"] = {
							i(112596),	-- Foundry-Fired Plate Gauntlets
							i(112595),	-- Overgrowth Cutter Gloves
							i(112597),	-- Steamburst Gloves
							i(112598),	-- Wildwood Wrangler Gauntlets
						},
					}),
					q(33563, {	-- Eye Candy
						["provider"] = { "n", 74611 },	-- Limbflayer
						["coord"] = { 40.4, 71.9, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 33543,	-- The Laughing Skull
						["g"] = {
							i(118031),	-- Foundry-Fired Plate Handguards
							i(118030),	-- Overgrowth Cutter Gauntlets
							i(118032),	-- Steamburst Handwraps
							i(118033),	-- Wildwood Wrangler Gloves
						},
					}),
					q(33544, {	-- Goren, Goren, Gone!
						["provider"] = { "n", 84176 },	-- Ripfist
						["coord"] = { 38.7, 73.6, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 33543,	-- The Laughing Skull
					}),
					q(36595, {	-- He Drew Aggro...culture (TODO: determine sourceQuest)
						["provider"] = { "n", 75146 },	-- Rangari D'kaan
						["coord"] = { 64.2, 51.9, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(35659, {	-- Heart of the Fen (A)
						["provider"] = { "n", 82477 },	-- Khaano
						["coord"] = { 58.9, 62.5, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							35647,	-- A Grim Harvest
							35656,	-- A Heartfelt Search
						},
						["g"] = {
							i(112603),	-- Foundry-Fired Plate Legguards
							i(112606),	-- Overgrowth Cutter Breeches
							i(112604),	-- Steamburst Leggings
							i(112605),	-- Wildwood Wrangler Leggings
						},
					}),
					q(35040, {	-- Heart of the Fen (H)
						["provider"] = { "n", 80757 },	-- Grulkor
						["coord"] = { 57.2, 61.9, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							35030,	-- A Grim Harvest
							35031,	-- A Heartfelt Search
						},
						["g"] = {
							i(112603),	-- Foundry-Fired Plate Legguards
							i(112606),	-- Overgrowth Cutter Breeches
							i(112604),	-- Steamburst Leggings
							i(112605),	-- Wildwood Wrangler Leggings
						},
					}),
					heroscall(q(49564, {	-- Hero's Call: Gorgrond!
						["timeline"] = { ADDED_7_3_5 },
						["isBreadcrumb"] = true,
						["lvl"] = 92,
					})),
					q(34279, {	-- I Am Blook
						["provider"] = { "n", 78030 },	-- Blook
						["coord"] = { 41.3, 91.5, GORGROND },
						["description"] = "Talk to Blook to start a fight, then defeat him.",
						["g"] = {
							follower(189),	-- Blook
						},
					}),
					q(35828, {	-- I Drew Aggro...culture
						["provider"] = { "n", 80874 },	-- Thaelin Darkanvil
						["coord"] = { 64.9, 48.5, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35033,	-- Welcome to Gorgrond
					}),
					q(36460, {	-- Just Another Stick in the Wall
						["provider"] = { "n", 85147 },	-- Penny Clobberbottom
						["coord"] = { 45.6, 70.5, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 36434,	-- Penny From Heaven
					}),
					q(36443, {	-- Laying Dionor to Rest (A)
						["provider"] = { "n", 82302 },	-- Birchus
						["coord"] = { 50.2, 47.5, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 36442,	-- Taking the Death Bloom
						["g"] = {
							i(119054),	-- Clarity of Dionor
							i(119049),	-- Fortitude of Dionor
							i(112959),	-- Grace of Dionor
							i(112961),	-- Strength of Dionor
							i(112960),	-- Wisdom of Dionor
						},
					}),
					q(33706, {	-- Laying Dionor to Rest (H)
						["provider"] = { "n", 82302 },	-- Birchus
						["coord"] = { 52.8, 51.7, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 33695,	-- Taking the Death Bloom
						["g"] = {
							i(119054),	-- Clarity of Dionor
							i(119049),	-- Fortitude of Dionor
							i(112959),	-- Grace of Dionor
							i(112961),	-- Strength of Dionor
							i(112960),	-- Wisdom of Dionor
						},
					}),
					q(35055, {	-- Lost Mole Machines
						["provider"] = { "n", 75136 },	-- Thaelin Darkanvil
						["coord"] = { 63.1, 52.4, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							35065,	-- A Harvester Has Come
							36595,	-- He Drew Aggro...culture
							35828,	-- I Drew Aggro...culture
							35834,	-- Wake of the Genesaur
						},
					}),
					q(35644, {	-- Mercy for the Living
						["provider"] = { "n", 82476 },	-- Khaano
						["coord"] = { 58.2, 59.9, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							35642,	-- Mysterious Pod
							35633,	-- Scout Forensics
							35640,	-- Vengeance for the Fallen
						},
						["g"] = {
							i(112596),	-- Foundry-Fired Plate Gauntlets
							i(112595),	-- Overgrowth Cutter Gloves
							i(112597),	-- Steamburst Gloves
							i(112598),	-- Wildwood Wrangler Gauntlets
						},
					}),
					q(35642, {	-- Mysterious Pod (A)
						["provider"] = { "i", 113260 },	-- Glowing Red Pod
						["races"] = ALLIANCE_ONLY,
						["crs"] = { 80714 },	-- Fungal Lurcher
						["description"] = "Must have accepted |cFFFFD700Scout Forensics|r for this to drop.",
						["sourceQuest"] = 35633,	-- Scout Forensics
					}),
					q(35021, {	-- Mysterious Pod (H)
						["description"] = "Must have accepted or have completed the quest Basic Skulltaking for the quest item to drop.",
						["provider"] = { "i", 112378 },	-- Glowing Red Pod
						["races"] = HORDE_ONLY,
						["crs"] = { 80714 },	-- Fungal Lurcher
						["sourceQuest"] = 35016,	-- Basic Skulltaking
					}),
					q(34463, {	-- Mysterious Ring
						["provider"] = { "o", 229330 },	-- Mysterious Ring
						["coord"] = { 39.6, 39.9, GORGROND },
						["icon"] = 133352,
					}),
					q(36495, {	-- News from Talador (A)
						["provider"] = { "n", 75127 },	-- Vindicator Maraad
						["lvl"] = 94,
						["coord"] = { 52.8, 59.7, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["DisablePartySync"] = true,
					}),
					q(36494, {	-- News from Talador (H)
						["provider"] = { "n", 74594 },	-- Durotan
						["lvl"] = 94,
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["DisablePartySync"] = true,
						["coords"] = {
							{ 37.2, 77.0, GORGROND },
							{ 41.4, 74.0, GORGROND },
							{ 46.0, 70.1, GORGROND },
						},
					}),
					q(36434, {	-- Penny From Heaven
						["provider"] = { "n", 74594 },	-- Durotan
						["coord"] = { 41.4, 74.0, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 33593,	-- A Flare for the Dramatic
					}),
					q(36436, {	-- Plant Pruning (A)
						["provider"] = { "n", 85426 },	-- Altauur
						["coord"] = { 49.3, 49.6, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35063,	-- We Need an Outpost
						["g"] = {
							i(118034),	-- Foundry-Fired Plate Waistguard
							i(118037),	-- Overgrowth Cutter Girdle
							i(118035),	-- Steamburst Waistwrap
							i(118036),	-- Wildwood Wrangler Links
						},
					}),
					q(33689, {	-- Plant Pruning (H)
						["provider"] = { "n", 81731 },	-- Rakthoth
						["coord"] = { 49.3, 49.7, GORGROND },
						["description"] = "Available after building Beastwatch and selecting the Lumber Mill or the Sparring Arena.",
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35151,	-- Your Base, Your Choice
						["g"] = {
							i(118034),	-- Foundry-Fired Plate Waistguard
							i(118037),	-- Overgrowth Cutter Girdle
							i(118035),	-- Steamburst Waistwrap
							i(118036),	-- Wildwood Wrangler Links
						},
					}),
					q(35666, {	-- Rangari in the Red
						["provider"] = { "n", 75146 },	-- Rangari D'kaan
						["coord"] = { 53.3, 59.8, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35063,	-- We Need an Outpost
						["isBreadcrumb"] = true,
					}),
					q(33694, {	-- Reagents from Rakthoth
						["provider"] = { "n", 82732 },	-- Marrow
						["coord"] = { 46.2, 69.9, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35151,	-- Your Base, Your Choice
						["isBreadcrumb"] = true,
					}),
					q(36441, {	-- Reclaiming Property
						["provider"] = {"o",234474},	-- Saberon Stash
						["icon"] = 459041,
						["coord"] = { 51.0, 51.6, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 36438,	-- Beatface vs. Boulder
					}),
					q(35050, {	-- Rescue Rangari
						["provider"] = { "n", 75146 },	-- Rangari D'kaan
						["coord"] = { 63.2, 52.2, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							35065,	-- A Harvester Has Come
							35834,	-- Wake of the Genesaur
						},
						["g"] = {
							i(118031),	-- Foundry-Fired Plate Handguards
							i(118030),	-- Overgrowth Cutter Gauntlets
							i(118032),	-- Steamburst Handwraps
							i(118033),	-- Wildwood Wrangler Gloves
						},
					}),
					q(33633, {	-- Rooter the Ravenous
						["provider"] = { "n", 75593 },	-- Rooter
						["coord"] = { 42.6, 37.8, GORGROND },
						["groups"] = {
							o(225596, {	-- Prickly Nopal
								i(107609),	-- Prickly Nopal (QI!)
							}),
						},
					}),
					q(36440, {	-- Saberon Population Reduction
						["provider"] = { "n", 85431 },	-- Altauur
						["coord"] = { 50.8, 51.3, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 36438,	-- Beatface vs. Boulder
						["g"] = {
							i(118014),	-- Steamscar Cudgel
							i(118013),	-- Steamscar Sabre
							i(112875),	-- Steamscar Shaman's Barrier
							i(118012),	-- Steamscar Shank
							i(118004),	-- Steamscar Shield
							i(118005),	-- Steamscar Vessel
						},
					}),
					q(33660, {	-- The Sacking of the Saberon
						["provider"] = {"o",234474},	-- Saberon Stash
						["coord"] = { 51.0, 51.6, GORGROND },
						["icon"] = 459041,
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 33662,	-- Beatface vs. Boulder
					}),
					n(85374, {	-- Sappy
						["questID"] = 35630,
						["coord"] = { 62.8, 63.2, GORGROND },
					}),
					q(35633, {	-- Scout Forensics
						["provider"] = { "n", 80762 },	-- Khaano
						["coord"] = { 59.3, 56.3, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35666,	-- Rangari in the Red
						["groups"] = {
							i(113243),	-- Rangari Pouch (QI!)
						},
					}),
					q(36432, {	-- Seeking the Scout
						["provider"] = { "n", 75146 },	-- Rangari D'kaan
						["coord"] = { 53.3, 59.8, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35063,	-- We Need an Outpost
						["isBreadcrumb"] = true,
					}),
					q(35017, {	-- Skulltaker's Revenge
						["provider"] = { "n", 81185 },	-- Dying Skulltaker
						["coord"] = { 54.8, 65.2, GORGROND },
						["races"] = HORDE_ONLY,
					}),
					q(35667, {	-- Skulltakers in Crimson Fen
						["provider"] = { "n", 82732 },	-- Marrow
						["coord"] = { 46.3, 70.0, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35151,	-- Your Base, Your Choice
						["isBreadcrumb"] = true,
					}),
					q(33661, {	-- Steamscar "Reagents"
						["provider"] = { "n", 82222 },	-- Rakthoth
						["coord"] = { 50.9, 51.4, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 33662,	-- Beatface vs. Boulder
						["g"] = {
							i(118014),	-- Steamscar Cudgel
							i(118013),	-- Steamscar Sabre
							i(112875),	-- Steamscar Shaman's Barrier
							i(118012),	-- Steamscar Shank
							i(118004),	-- Steamscar Shield
							i(118005),	-- Steamscar Vessel
						},
					}),
					q(36442, {	-- Taking the Death Bloom (A)
						["provider"] = { "n", 85436 },	-- Altauur
						["coord"] = { 52.8, 51.7, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 36440,	-- Saberon Population Reduction
					}),
					q(33695, {	-- Taking the Death Bloom (H)
						["provider"] = { "n", 82225 },	-- Rokthoth
						["coord"] = { 52.8, 51.7, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							33661,	-- Steamscar "Reagents"
							33660,	-- The Sacking of the Saberon
						},
					}),
					q(33543, {	-- The Laughing Skull
						["provider"] = { "n", 74594 },	-- Durotan
						["coord"] = { 37.2, 77.0, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34867,	-- The Secrets of Gorgrond
							35557,	-- The Secrets of Gorgrond
							-- #if AFTER 7.3.5
							49546,	-- Warchief's Command: Gorgrond!
							-- #endif
						},
					}),
					q(35645, {	-- The Secret of the Fungus (A)
						["provider"] = { "n", 82476 },	-- Khaano
						["coord"] = { 58.2, 59.9, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							35642,	-- Mysterious Pod
							35633,	-- Scout Forensics
							35640,	-- Vengeance for the Fallen
						},
						["groups"] = {
							o(231769, {	-- Glowing Mushroom
								i(112672),	-- Glowing Mushroom (QI!)
							}),
						},
					}),
					q(35029, {	-- The Secret of the Fungus (H)
						["provider"] = { "n", 80757 },	-- Grulkor
						["coord"] = { 57.1, 61.9, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							35016,	-- Basic Skulltaking
							35021,	-- Mysterious Pod
							35017,	-- Skulltaker's Revenge
						},
					}),
					q(36632, {	-- The Secrets of Gorgrond
						["provider"] = { "n", 86088 },	-- Rangari Kolaan
						["coord"] = { 42.0, 94.0, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(36502, {	-- Trophy of Glory: Biolante (A)
						["provider"] = { "i", 116159 },	-- Writhing Green Tendril
						["crs"] = { 75207 },	-- Biolante
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35063,	-- We Need an Outpost
						["coords"] = {
							{ 60.5, 54.4, GORGROND },
							{ 61.4, 53.0, GORGROND },
							{ 62.4, 52.8, GORGROND },
							{ 63.1, 54.4, GORGROND },
						},
					}),
					q(36503, {	-- Trophy of Glory: Biolante (H)
						["provider"] = { "i", 116160 },	-- Writhing Green Tendril
						["crs"] = { 75207 },	-- Biolante
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35151,	-- Your Base, Your Choice
						["coords"] = {
							{ 60.5, 54.4, GORGROND },
							{ 61.4, 53.0, GORGROND },
							{ 62.4, 52.8, GORGROND },
							{ 63.1, 54.4, GORGROND },
						},
					}),
					q(35816, {	-- Trophy of Glory: Charl Doomwing (A)
						["provider"] = { "i", 113457 },	-- Fang of the Doomwing
						["crs"] = { 81548 },	-- Charl Doomwing
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35063,	-- We Need an Outpost
						["coords"] = {
							{ 47.9, 46.3, GORGROND },
							{ 46.1, 46.8, GORGROND },
							{ 45.2, 51.9, GORGROND },
						},
					}),
					q(35815, {	-- Trophy of Glory: Charl Doomwing (H)
						["provider"] = { "i", 113456 },	-- Fang of the Doomwing
						["crs"] = { 81548 },	-- Charl Doomwing
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35151,	-- Your Base, Your Choice
						["coords"] = {
							{ 47.9, 46.3, GORGROND },
							{ 46.1, 46.8, GORGROND },
							{ 45.2, 51.9, GORGROND },
						},
					}),
					q(35812, {	-- Trophy of Glory: Crater Lord Igneous (A)
						["provider"] = { "i", 113449 },	-- Chunk of Crater Lord
						["crs"] = { 81528 },	-- Crater Lord Igneous
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35063,	-- We Need an Outpost
						["coords"] = {
							{ 42.9, 59.3, GORGROND },
							{ 43.9, 59.8, GORGROND },
						},
					}),
					q(35811, {	-- Trophy of Glory: Crater Lord Igneous (H)
						["provider"] = { "i", 113448 },	-- Chunk of Crater Lord
						["crs"] = { 81528 },	-- Crater Lord Igneous
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35151,	-- Your Base, Your Choice
						["coords"] = {
							{ 42.9, 59.3, GORGROND },
							{ 43.9, 59.8, GORGROND },
						},
					}),
					q(35809, {	-- Trophy of Glory: Dessicus (A)
						["provider"] = { "i", 113446 },	-- Globe of Dead Water
						["coord"] = { 38.8, 51.1, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["crs"] = { 81529 },	-- Dessicus
						["sourceQuest"] = 35063,	-- We Need an Outpost
					}),
					q(35810, {	-- Trophy of Glory: Dessicus (H)
						["provider"] = { "i", 113447 },	-- Globe of Dead Water
						["coord"] = { 38.8, 51.1, GORGROND },
						["races"] = HORDE_ONLY,
						["crs"] = { 81529 },	-- Dessicus
						["sourceQuest"] = 35151,	-- Your Base, Your Choice
					}),
					q(35808, {	-- Trophy of Glory: Erosian (A)
						["provider"] = { "i", 113445 },	-- Crystalized Steam
						["coord"] = { 51.8, 41.6, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["crs"] = { 81540 },	-- Erosian the Violent
						["sourceQuest"] = 35063,	-- We Need an Outpost
					}),
					q(35807, {	-- Trophy of Glory: Erosian (H)
						["provider"] = { "i", 113444 },	-- Crystalized Steam
						["coord"] = { 51.8, 41.6, GORGROND },
						["races"] = HORDE_ONLY,
						["crs"] = { 81540 },	-- Erosian the Violent
						["sourceQuest"] = 35151,	-- Your Base, Your Choice
					}),
					q(35813, {	-- Trophy of Glory: Fungal Praetorian (A)
						["provider"] = { "i", 113453 },	-- Precious Mushroom
						["coord"] = { 58.0, 63.7, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["crs"] = { 80785 },	-- Fungal Praetorian
						["sourceQuest"] = 35063,	-- We Need an Outpost
					}),
					q(35814, {	-- Trophy of Glory: Fungal Praetorian (H)
						["provider"] = { "i", 113454 },	-- Precious Mushroom
						["coord"] = { 58.0, 63.7, GORGROND },
						["races"] = HORDE_ONLY,
						["crs"] = { 80785 },	-- Fungal Praetorian
						["sourceQuest"] = 35151,	-- Your Base, Your Choice
					}),
					q(35820, {	-- Trophy of Glory: Khargax the Devourer (A)
						["provider"] = { "i", 113461 },	-- Shimmering Scale
						["crs"] = { 81537 },	-- Khargax the Devourer
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35063,	-- We Need an Outpost
						["coords"] = {
							{ 52.3, 67.9, GORGROND },
							{ 51.5, 67.1, GORGROND },
							{ 50.8, 66.3, GORGROND },
							{ 51.6, 65.6, GORGROND },
							{ 53.1, 65.8, GORGROND },
							{ 52.9, 67.4, GORGROND },
							{ 52.6, 68.0, GORGROND },
						},
					}),
					q(35819, {	-- Trophy of Glory: Khargax the Devourer (H)
						["provider"] = { "i", 113460 },	-- Shimmering Scale
						["crs"] = { 81537 },	-- Khargax the Devourer
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35151,	-- Your Base, Your Choice
						["coords"] = {
							{ 52.3, 67.9, GORGROND },
							{ 51.5, 67.1, GORGROND },
							{ 50.8, 66.3, GORGROND },
							{ 51.6, 65.6, GORGROND },
							{ 53.1, 65.8, GORGROND },
							{ 52.9, 67.4, GORGROND },
							{ 52.6, 68.0, GORGROND },
						},
					}),
					q(35817, {	-- Trophy of Glory: Roardan the Sky Terror (A)
						["provider"] = { "i", 113458 },	-- Ebony Feather
						["races"] = ALLIANCE_ONLY,
						["crs"] = { 77093 },	-- Roardan the Sky Terror
						["sourceQuest"] = 35063,	-- We Need an Outpost
						["coords"] = {
							{ 61.7, 61.7, GORGROND },
							{ 53.0, 63.1, GORGROND },
							{ 50.8, 67.6, GORGROND },
						},
					}),
					q(35818, {	-- Trophy of Glory: Roardan the Sky Terror (H)
						["provider"] = { "i", 113459 },	-- Ebony Feather
						["races"] = HORDE_ONLY,
						["crs"] = { 77093 },	-- Roardan the Sky Terror
						["sourceQuest"] = 35151,	-- Your Base, Your Choice
						["coords"] = {
							{ 61.7, 61.7, GORGROND },
							{ 53.0, 63.1, GORGROND },
							{ 50.8, 67.6, GORGROND },
						},
					}),
					q(35640, {	-- Vengeance for the Fallen
						["provider"] = { "n", 82499 },	-- Dying Rangari
						["coord"] = { 59.5, 57.9, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35063,	-- We Need an Outpost
					}),
					q(35834, {	-- Wake of the Genesaur
						["provider"] = { "n", 80922 },	-- Rangari Kaalya
						["coord"] = { 64.1, 51.7, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35033,	-- Welcome to Gorgrond
						["g"] = {
							i(112609),	-- Foundry-Fired Plate Shoulders
							i(112608),	-- Overgrowth Cutter Spaulders
							i(112610),	-- Steamburst Mantle
							i(112611),	-- Wildwood Wrangler Monnion
						},
					}),
					warchiefscommand(q(49546, {	-- Warchief's Command: Gorgrond!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					})),
					q(35487, {	-- We Burn the Dead
						["provider"] = { "n", 82274 },	-- Cutter
						["sourceQuest"] = 35430,	-- Cutter
						["coord"] = { 43.7, 84.0, GORGROND },
						["races"] = HORDE_ONLY,
					}),
					q(33548, {	-- We Die Laughing
						["provider"] = { "n", 76987 },	-- Kaz the Shrieker
						["coord"] = { 39.3, 71.9, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 33543,	-- The Laughing Skull
						["g"] = {
							i(112609),	-- Foundry-Fired Plate Shoulders
							i(112608),	-- Overgrowth Cutter Spaulders
							i(112610),	-- Steamburst Mantle
							i(112611),	-- Wildwood Wrangler Monnion
						},
					}),
					q(35063, {	-- We Need An Outpost
						["provider"] = { "n", 75136 },	-- Thaelin Darkanvil
						["coord"] = { 53.4, 60.3, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							35055,	-- Lost Mole Machines
							35050,	-- Rescue Rangari
						},
					}),
					q(35033, {	-- Welcome to Gorgrond
						["provider"] = { "n", 80978 },	-- Yrel
						["coord"] = { 63.9, 57.1, GORGROND },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							33533,	-- The Secrets of Gorgrond
							35556,	-- The Secrets of Gorgrond
							36632,	-- The Secrets of Gorgrond
							-- #if AFTER 7.3.5
							49564,	-- Hero's Call: Gorgrond!
							-- #endif
						},
					}),
					q(35151, {	-- Your Base, Your Choice
						["provider"] = { "n", 74594 },	-- Durotan
						["coord"] = { 45.8, 70.2, GORGROND },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 36460,	-- Just Another Stick in the Wall
					}),
					n(BONUS_OBJECTIVES, {
						-- TODO: Check SQ
						q(36815, {	-- Assault on the Everbloom Wilds (A)
							["coord"] = { 64.0, 40.0, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["isRepeatable"] = true,
						}),
						q(36814, {	-- Assault on the Everbloom Wilds (H)
							["coord"] = { 64.0, 40.0, GORGROND },
							["races"] = HORDE_ONLY,
							["isRepeatable"] = true,
						}),
						q(36383, {	-- Assault on the Pit (A)
							["coord"] = { 48.4, 25.8, GORGROND },
							["races"] = ALLIANCE_ONLY,
							["isRepeatable"] = true,
						}),
						q(36489, {	-- Assault on the Pit (H)
							["coord"] = { 48.4, 25.8, GORGROND },
							["races"] = HORDE_ONLY,
							["isRepeatable"] = true,
						}),
						q(36603, {	-- Brimstone Springs
							["coord"] = { 40.4, 54.6, GORGROND },
						}),
						q(37921, {	-- Clearing the Docks (A)
							["lvl"] = 100,
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 36615 },	-- My Very Own Castle (A)
						}),
						q(38569, {	-- Clearing the Docks (H)
							["lvl"] = 100,
							["races"] = HORDE_ONLY,
							["sourceQuests"] = { 36614 },	-- My Very Own Fortress (H)
						}),
						q(36571, {	-- Iyun Weald
							["coord"] = { 61.9, 54.4, GORGROND },
						}),
						q(36563, {	-- Mistcreep Mire
							["coord"] = { 51.9, 66.6, GORGROND },
						}),
						q(35881, {	-- Ruins of the First Bastion
							["coord"] = { 49.9, 79.5, GORGROND },
						}),
						q(36520, {	-- Tailthrasher Basin
							["coord"] = { 45.1, 91.2, GORGROND },
						}),
						q(34724, {	-- The Forgotten Caves
							["coord"] = { 51.4, 77.8, GORGROND },
						}),
						q(36480, {	-- Valley of Destruction
							["coord"] = { 46.4, 47.2, GORGROND },
						}),
					}),
				}),
				n(RARES, {
					-- Coords have been confirmed on rares except for Edge of Reality, Poundfist, and few longer spawning rares in The Pit.
					n(86268, {	-- Alkali
						["questID"] = 37371,
						["isDaily"] = true,
						["coords"] = {
							{ 56.2, 40.8, GORGROND },
							{ 58.6, 41.2, GORGROND },
							{ 71.4, 40.2, GORGROND },
						},
						["g"] = {
							i(119361),	-- Thorn-Knuckled Gloves
						},
					}),
					n(82085, {	-- Bashiok
						["questID"] = 35335,
						["coord"] = { 40.0, 79.0, GORGROND },
						["g"] = {
							i(118222),	-- Spirit of Bashiok (TOY!)
						},
					}),
					n(86257, {	-- Basten (Protectors of the Grove)
						["description"] = "Kill Basten LAST or you will not be able to loot him.",
						["questID"] = 37369,
						["isDaily"] = true,
						["coord"] = { 69.2, 44.6, GORGROND },
						["crs"] = {
							86258,	-- Nultra
							86259,	-- Valstil
						},
						["g"] = {
							i(119432),	-- Botani Camouflage (TOY!)
							i(119357),	-- Grovetender's Cummerbund
						},
					}),
					n(85907, {	-- Berthora
						["questID"] = 36597,
						["coord"] = { 39.4, 74.6, GORGROND },
						["g"] = {
							i(118232),	-- Scaled Riverbeast Spaulders
						},
					}),
					n(86579, {	-- Blademaster Ro'gor
						["questID"] = 37368,
						["isDaily"] = true,
						["coords"] = {
							{ 46.0, 31.4, GORGROND },
							{ 45.8, 33.2, GORGROND },
						},
						["lvl"] = 100,
						["g"] = {
							i(119228),	-- Ro'gor's Slippers of Silence
						},
					}),
					n(82311, {	-- Char the Burning
						["questID"] = 35503,
						["coord"] = { 53.4, 44.6, GORGROND },
						["g"] = {
							i(118212),	-- Char's Smoldering Fist
						},
					}),
					n(86566, {	-- Defector Dazgo
						["questID"] = 37362,
						["isDaily"] = true,
						["coord"] = { 48.25, 20.83, GORGROND },
						["lvl"] = 100,
						["g"] = {
							i(119224),	-- Foereaver Polearm
						},
					}),
					n(82058, {	-- Depthroot
						["questID"] = 37370,
						["isDaily"] = true,
						["coord"] = { 72.6, 40.8, GORGROND },
						["g"] = {
							i(119406),	-- Depthroot's Forearm
						},
					}),
					n(86571, {	-- Durp the Hated
						["questID"] = 37366,
						["isDaily"] = true,
						["coord"] = { 49.8, 23.8, GORGROND },	-- **Coords unconfirmed, relied on wowhead**
						["lvl"] = 100,
						["g"] = {
							i(119225),	-- Studded Gronn-Stitched Girdle
						},
					}),
					n(88580, {	-- Firestarter Grash
						["description"] = "Will spawn in the area that is on fire.",
						["questID"] = 37373,
						["isDaily"] = true,
						["coords"] = {
							{ 57.8, 36.6, GORGROND },
							{ 72.8, 35.8, GORGROND },
						},
						["g"] = {
							i(119381),	-- Grash's Fireproof Handguards
						},
					}),
					n(85250, {	-- Fossilwood the Petrified
						["questID"] = 36387,
						["coord"] = { 57.4, 68.6, GORGROND },
						["g"] = {
							i(118221),	-- Petrification Stone (TOY!)
						},
					}),
					n(81038, {	-- Gelgor of the Blue Flame
						["description"] = "Located in the cave.",
						["questID"] = 36391,
						["coords"] = {
							{ 43.5, 48.1, GORGROND },	-- Cave Entrance
							{ 32.6, 38.2, 546 },	-- Gelgor
						},
						["g"] = {
							i(118230),	-- Smoldering Cerulean Stone
						},
					}),
					n(80868, {	-- Glut
						["questID"] = 36204,
						["coords"] = {
							{ 44.5, 50.8, GORGROND },	-- Cave Entrance
							{ 46.0, 50.8, GORGROND },	-- Glut
						},
						["g"] = {
							i(118229),	-- Resonant Hidecrystal of the Gorger
						},
					}),
					n(78269, {	-- Gnarljaw
						["description"] = "At the bottom of the cave.",
						["questID"] = 37413,
						["isDaily"] = true,
						["coords"] = {
							{ 53.9, 55.7, GORGROND },	-- Cave Entrance
							{ 54.8, 35.6, 549 },
						},
						["g"] = {
							i(119397),	-- Gnarled Goren Jaw
						},
					}),
					n(84431, {	-- Greldrok the Cunning
						["questID"] = 36186,
						["coords"] = {
							{ 46.4, 45.4, GORGROND },	-- Cave Entrance
							{ 46.8, 43.2, GORGROND },	-- Greldrok the Cunning
						},
						["g"] = {
							i(118210),	-- Greldrok's Facesmasher
						},
					}),
					n(88583, {	-- Grove Warden Yal
						["questID"] = 37375,
						["isDaily"] = true,
						["coord"] = { 59.6, 43.0, GORGROND },
						["g"] = {
							i(119414),	-- Yal's Leafwrap Cloak
						},
					}),
					n(83522, {	-- Hive Queen Skrikka
						["questID"] = 35908,
						["coord"] = { 52.2, 70.2, GORGROND },
						["g"] = {
							i(118209),	-- Skrikka's Mandible
						},
					}),
					n(86577, {	-- Horgg
						["questID"] = 37365,
						["isDaily"] = true,
						["coords"] = {
							{ 46.0, 27.8, GORGROND },
							{ 45.6, 25.4, GORGROND },
						},
						["lvl"] = 100,
						["g"] = {
							i(119229),	-- Horgg's Bandolier
						},
					}),
					n(88672, {	-- Hunter Bal'ra
						["questID"] = 37377,
						["isDaily"] = true,
						["coord"] = { 55.0, 46.2, GORGROND },
						["g"] = {
							i(119412),	-- Bal'ra's Compound Bow
						},
					}),
					n(86574, {	-- Inventor Blammo
						["questID"] = 37367,
						["isDaily"] = true,
						["coord"] = { 47.6, 30.8, GORGROND },	-- **Coords unconfirmed, relied on wowhead**
						["lvl"] = 100,
						["g"] = {
							i(119226),	-- Blammo's Blammer
						},
					}),
					n(78260, {	-- King Slime
						["description"] = "At the bottom of the cave.",
						["questID"] = 37412,
						["isDaily"] = true,
						["coords"] = {
							{ 53.9, 55.7, GORGROND },	-- Cave Entrance
							{ 41.6, 75.7, 549 },
						},
						["g"] = {
							i(119351),	-- Slime Coated Kingscloak
						},
					}),
					n(84406, {	-- Mandrakor
						["questID"] = 36178,
						["coord"] = { 50.6, 53.2, GORGROND },
						["g"] = {
							i(118709),	-- Doom Bloom (PET!)
						},
					}),
					n(86562, {	-- Maniacal Madgard
						["questID"] = 37363,
						["isDaily"] = true,
						["coord"] = { 49.17, 33.11, GORGROND },
						["lvl"] = 100,
						["g"] = {
							i(119230),	-- Unpopped Pustule Pendant
						},
					}),
					n(88586, {	-- Mogamago
						["questID"] = 37376,
						["isDaily"] = true,
						["coord"] = { 61.6, 39.2, GORGROND },
						["g"] = {
							i(119391),	-- Etched Osteoderm Shield
						},
					}),
					n(86582, {	-- Morgo Kain
						["questID"] = 37364,
						["isDaily"] = true,
						["coords"] = {
							{ 46.6, 23.2, GORGROND },
							{ 45.8, 24.2, GORGROND },
						},
						["lvl"] = 100,
						["g"] = {
							i(119227),	-- Morgo's Unstoppable Ramming Helm
						},
					}),
					n(76473, {	-- Mother Araneae
						["questID"] = 34726,
						["coords"] = {
							{ 53.4, 78.2, GORGROND },	-- Mother Araneae
							{ 52.2, 76.7, GORGROND },	-- Cave Entrance
						},
						["g"] = {
							i(118208),	-- Broodmother's Kiss
						},
					}),
					n(50985, {	-- Poundfist
						["description"] = "Poundfist has a respawn timer between 48-142 hours. Mount drop rate is 100% for all participants.",
						["coords"] = {
							{ 42.0, 25.0, GORGROND },
							{ 51.4, 43.1, GORGROND },
							{ 45.4, 47.5, GORGROND },
							{ 47.0, 54.1, GORGROND },
							{ 43.2, 55.5, GORGROND },
						},
						["g"] = {
							i(116792),	-- Sunhide Gronnling (MOUNT!)
						},
					}),
					n(85970, {	-- Riptar
						["questID"] = 36600,
						["coord"] = { 37.6, 81.4, GORGROND },
						["g"] = {
							i(118231),	-- Riptar's Clever Claw
						},
					}),
					n(85264, {	-- Rolkor
						["questID"] = 36393,
						["coord"] = { 47.8, 41.6, GORGROND },
						["g"] = {
							i(118211),	-- Rolkor's Rage
						},
					}),
					n(86520, {	-- Stompalupagus
						["questID"] = 36837,
						["coords"] = {
							{ 55.0, 71.0, GORGROND },
							{ 54.3, 72.0, GORGROND },
							{ 53.9, 73.4, GORGROND },
						},
						["g"] = {
							i(118228),	-- Smashalupagus
						},
					}),
					n(79629, {	-- Stomper Kreego
						["questID"] = 35910,
						["coord"] = { 38.2, 66.2, GORGROND },
						["g"] = {
							i(118224),	-- Ogre Brewing Kit (TOY!)
						},
					}),
					n(80725, {	-- Sulfurious
						["questID"] = 36394,
						["coords"] = {
							{ 39.4, 60.6, GORGROND },
							{ 41.2, 60.8, GORGROND },
						},
						["g"] = {
							i(114227),	-- Bubble Wand (TOY!)
						},
					}),
					n(86137, {	-- Sunclaw
						["questID"] = 36656,
						["coord"] = { 44.6, 92.2, GORGROND },
						["g"] = {
							i(118223),	-- Sunclaw
						},
					}),
					n(88582, {	-- Swift Onyx Flayer
						["questID"] = 37374,
						["isDaily"] = true,
						["coord"] = { 59.52, 31.97, GORGROND },
						["g"] = {
							i(119367),	-- Flayerscale Carapace Stompers
						},
					}),
					n(86410, {	-- Sylldross
						["questID"] = 36794,
						["coords"] = {
							{ 63.0, 61.6, GORGROND },
							{ 63.9, 61.8, GORGROND },
							{ 65.4, 60.8, GORGROND },
						},
						["g"] = {
							i(118213),	-- Slimy Sea Serpent Skin Sabatons
						},
					}),
					n(80371, {	-- Typhon
						["questID"] = 37405,
						["isDaily"] = true,
						["coord"] = { 75.6, 42.6, GORGROND },
					}),
					n(86266, {	-- Venolasix
						["questID"] = 37372,
						["isDaily"] = true,
						["coord"] = { 63.4, 30.8, GORGROND },
						["g"] = {
							i(119395),	-- Hydratooth Dagger
						},
					}),
				}),
				n(TREASURES, {
					header(HEADERS.Spell, 171866, {	-- Sparring Arena
						o(233455, {	-- Aged Stone Container
							["questID"] = 36734,
							["coord"] = { 51.3, 40.6, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(233552, {	-- Aged Stone Container
							["questID"] = 36726,
							["coord"] = { 41.8, 45.3, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236265, {	-- Aged Stone Container
							["description"] = "When you're inside the Fissure of Fury cave, follow the spiral path to the bottom.  The treasure is in little corner nubbin in the upper-right section of the map (across from the part of the map with water on it).",
							["questID"] = 36723,
							["coord"] = { 60.5, 43.1, 547 },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236270, {	-- Aged Stone Container
							["questID"] = 36722,
							["coord"] = { 45.7, 49.3, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236271, {	-- Aged Stone Container
							["questID"] = 36736,
							["coord"] = { 46.0, 63.1, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236274, {	-- Aged Stone Container
							["questID"] = 36730,
							["coord"] = { 48.1, 55.2, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236279, {	-- Aged Stone Container
							["questID"] = 36739,
							["coord"] = { 58.2, 51.5, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236285, {	-- Aged Stone Container
							["questID"] = 36781,
							["coord"] = { 59.6, 72.7, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236289, {	-- Aged Stone Container
							["questID"] = 36784,
							["coord"] = { 45.8, 88.2, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236406, {	-- Ancient Ogre Cache
							["questID"] = 36733,
							["coord"] = { 45.5, 43.0, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236348, {	-- Ancient Ogre Cache
							["questID"] = 36740,
							["coord"] = { 61.5, 58.6, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236284, {	-- Ancient Ogre Cache
							["questID"] = 36782,
							["coord"] = { 54.2, 73.1, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236400, {	-- Ancient Ogre Cache
							["questID"] = 36737,
							["coord"] = { 45.0, 69.9, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236351, {	-- Ancient Ogre Cache
							["questID"] = 36789,
							["coord"] = { 41.5, 86.5, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236407, {	-- Ancient Ogre Cache
							["questID"] = 36787,
							["coord"] = { 42.2, 93.0, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236402, {	-- Ancient Titan Chest
							["questID"] = 36710,
							["coord"] = { 49.5, 50.8, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236288, {	-- Ancient Titan Chest
							["questID"] = 36735,
							["coord"] = { 48.0, 39.9, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236275, {	-- Ancient Titan Chest
							["questID"] = 36731,
							["coord"] = { 43.3, 51.7, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236349, {	-- Ancient Titan Chest
							["questID"] = 36727,
							["coord"] = { 42.2, 52.0, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236280, {	-- Ancient Titan Chest
							["questID"] = 36738,
							["coord"] = { 50.4, 66.6, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236257, {	-- Ancient Titan Chest
							["questID"] = 36783,
							["coord"] = { 49.1, 82.4, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(233522, {	-- Obsidian Crystal Formation
							["questID"] = 36732,
							["coord"] = { 44.2, 46.6, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236269, {	-- Obsidian Crystal Formation
							["questID"] = 36721,
							["coord"] = { 48.2, 46.4, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236276, {	-- Obsidian Crystal Formation
							["questID"] = 36728,
							["coord"] = { 41.8, 59.0, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236278, {	-- Obsidian Crystal Formation
							["questID"] = 36729,
							["coord"] = { 42.1, 64.3, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
					}),
					header(HEADERS.Spell, 164028, {	-- Lumber Mill
						o(236350, {	-- Aged Stone Container
							["questID"] = 36003,
							["coord"] = { 42.4, 54.8, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236399, {	-- Aged Stone Container
							["questID"] = 35952,
							["coord"] = { 49.1, 48.4, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236404, {	-- Aged Stone Container
							["questID"] = 36717,
							["coord"] = { 47.5, 43.6, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(233139, {	-- Ancient Titan Chest
							["questID"] = 36720,
							["coord"] = { 36.8, 50.5, 547 },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236267, {	-- Ancient Titan Chest
							["questID"] = 35701,
							["coord"] = { 53.4, 46.8, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(233526, {	-- Ancient Titan Chest
							["questID"] = 35984,
							["coord"] = { 50.2, 53.7, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(233525, {	-- Botani Essence Seed
							["questID"] = 35982,
							["coord"] = { 42.0, 81.5, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(233507, {	-- Forgotten Ogre Cache
							["questID"] = 35968,
							["coord"] = { 49.7, 78.9, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(233559, {	-- Forgotten Skull Cache
							["questID"] = 36716,
							["coord"] = { 39.3, 56.3, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(233513, {	-- Forgotten Skull Cache
							["questID"] = 35971,
							["coord"] = { 47.0, 69.1, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236264, {	-- Forgotten Skull Cache
							["questID"] = 36019,
							["coord"] = { 45.8, 89.3, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(233558, {	-- Mysterious Petrified Pod
							["questID"] = 35965,
							["coord"] = { 56.8, 57.3, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(233501, {	-- Mysterious Petrified Pod
							["questID"] = 36430,
							["coord"] = { 63.2, 57.2, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236259, {	-- Mysterious Petrified Pod
							["questID"] = 36015,
							["coord"] = { 60.5, 72.7, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(235127, {	-- Mysterious Petrified Pod
							["questID"] = 36715,
							["coord"] = { 51.7, 69.1, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236260, {	-- Mysterious Petrified Pod
							["questID"] = 36714,
							["coord"] = { 47.7, 76.8, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(233523, {	-- Mysterious Petrified Pod
							["questID"] = 35980,
							["coord"] = { 41.1, 77.3, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236282, {	-- Obsidian Crystal Formation
							["questID"] = 35979,
							["coord"] = { 40.9, 67.3, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(233520, {	-- Remains of Explorer Engineer Toldirk Ashlamp
							["questID"] = 35975,
							["coord"] = { 45.9, 93.6, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(233504, {	-- Remains of Grimnir Ashpick
							["questID"] = 35966,
							["coord"] = { 51.8, 61.5, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236258, {	-- Unknown Petrified Egg
							["questID"] = 36718,
							["coord"] = { 47.2, 51.8, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(233550, {	-- Unknown Petrified Egg
							["questID"] = 36001,
							["coord"] = { 42.9, 43.5, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(236266, {	-- Unknown Petrified Egg
							["questID"] = 35967,
							["coord"] = { 51.6, 72.3, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(233505, {	-- Unknown Petrified Egg
							["description"] = "Inside The Forgotten Caves with Pale and Spiders.",
							["questID"] = 36713,
							["coords"] = {
								{ 53.0, 79.0, GORGROND },	-- Egg Location
								{ 51.4, 77.6, GORGROND },	-- Cave Entrance
							},
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
						o(233524, {	-- Unknown Petrified Egg
							["questID"] = 35981,
							["coord"] = { 45.3, 81.9, GORGROND },
							["g"] = {
								currency(824),	-- Garrison Resources
							},
						}),
					}),
					o(235859, {	-- Brokor's Sack
						["questID"] = 36506,
						["coord"] = { 41.7, 53.0, GORGROND },
						["g"] = {
							i(118702),	-- Brokor's Walking Stick
						},
					}),
					o(236141, {	-- Discarded Pack
						["questID"] = 36625,
						["coord"] = { 42.4, 83.4, GORGROND },
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(236139, {	-- Explorer Canister
						["questID"] = 36621,
						["coord"] = { 40.4, 76.6, GORGROND },
						["g"] = {
							i(118710),	-- Exploratron 2000 Spare Parts
						},
					}),
					o(236178, {	-- Evermorn Supply Cache
						["questID"] = 36658,
						["coord"] = { 41.8, 78.1, GORGROND },
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(233917, {	-- Femur of Improbability
						["questID"] = 36170,
						["coord"] = { 40.0, 72.3, GORGROND },
						["g"] = {
							i(118715),	-- Cracked Femur
						},
					}),
					o(236169, {	-- Harvestable Precious Crystal
						["description"] = "Inside Glut's burrow.",
						["questID"] = 36651,
						["coords"] = {
							{ 46.1, 50.0, GORGROND },	-- Crystal
							{ 44.5, 50.75, GORGROND },	-- Glut's Burrow Entrance
						},
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(231644, {	-- Horned Skull
						["questID"] = 35056,
						["coord"] = { 47.6, 67.0, 547 },
					}),
					o(236138, {	-- Iron Supply Chest
						["questID"] = 36618,
						["coord"] = { 43.7, 42.5, GORGROND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(233149, {	-- Laughing Skull Cache
						["description"] = "On a tree branch above these coordinates.",
						["questID"] = 35709,
						["coord"] = { 44.2, 74.3, GORGROND },
						["g"] = {
							currency(824),	-- Garrison Resources
						},
					}),
					o(227998, {	-- Ockbar's Pack
						["questID"] = 34241,
						["coord"] = { 43.1, 92.9, GORGROND },
						["g"] = {
							i(118227),	-- Glossy Brochure
						},
					}),
					o(236715, {	-- Odd Skull
						["questID"] = 36509,
						["coord"] = { 52.5, 66.9, GORGROND },
						["g"] = {
							i(118717),	-- Beastskull Vessel
						},
					}),
					o(235881, {	-- Petrified Rylak Egg
						["questID"] = 36521,
						["coord"] = { 46.2, 43.0, GORGROND },
					}),
					o(233792, {	-- Pile of Rubble
						["questID"] = 36118,
						["coord"] = { 43.9, 70.6, GORGROND },
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(236170, {	-- Remains of Balik Orecrusher
						["questID"] = 36654,
						["coord"] = { 53.1, 74.5, GORGROND },
						["g"] = {
							i(118714),	-- Cracked Mirror
						},
					}),
					o(236096, {	-- Remains of Balldir Deeprock
						["questID"] = 36605,
						["coord"] = { 57.8, 56.0, GORGROND },
						["g"] = {
							i(118703),	-- Diary of Balldir Deeprock
						},
					}),
					o(236149, {	-- Sasha's Secret Stash
						["description"] = "Hanging at the ledge of a beam. Can be accessed from the top of the tower or by precise flying.",
						["questID"] = 36631,
						["coord"] = { 39.0, 68.1, GORGROND },
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(236158, {	-- Sniper's Crossbow
						["questID"] = 36634,
						["coord"] = { 45.0, 42.6, GORGROND },
						["g"] = {
							i(118713),	-- Iron Lookout's Arbalest
						},
					}),
					o(236092, {	-- Stashed Emergency Rucksack
						["description"] = "Tied to a rope. Jumping around required to access the platform.",
						["questID"] = 36604,
						["coord"] = { 48.1, 93.4, GORGROND },
						["sym"] = COMMON_TREASURE_SYM,
					}),
					o(231069, {	-- Strange Looking Dagger
						["description"] = "Inside The Forgotten Caves with Pale and Spiders.",
						["questID"] = 34940,
						["coords"] = {
							{ 53.0, 80.0, GORGROND },	-- Dagger Location
							{ 51.4, 77.6, GORGROND },	-- Cave Entrance
						},
						["g"] = {
							i(118718),	-- Pale Bloodthief Dagger
						},
					}),
					o(237511, {	-- Strange Spore
						["questID"] = 37249,
						["coord"] = { 57.1, 65.3, GORGROND },
						["g"] = {
							i(118106),	-- Crimson Spore (PET!)
						},
					}),
					o(236099, {	-- Suntouched Spear
						["questID"] = 36610,
						["coord"] = { 45.7, 49.7, GORGROND },
					}),
					o(236147, {	-- Vindicator's Hammer
						["questID"] = 36628,
						["coord"] = { 59.5, 63.7, GORGROND },
						["g"] = {
							i(118712),	-- Huurand's Huge Hammer
						},
					}),
					o(234054, {	-- Warm Goren Egg
						["modelScale"] = 2,
						["questID"] = 36203,
						["coord"] = { 48.9, 47.3, GORGROND },
						["g"] = {
							i(118705, {	-- Warm Goren Egg
								["description"] = "The egg hatches into a toy after 7 days.",
								["g"] = {
									i(118716),	-- Goren Garb (TOY!)
								},
							}),
						},
					}),
					o(235869, {	-- Weapons Cache
						["questID"] = 36596,
						["coord"] = { 49.3, 43.6, GORGROND },
						["g"] = {
							i(107645),	-- Iron Horde Weapon Cache
						},
					}),
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	m(DRAENOR, {
		m(GORGROND, {
			n(QUESTS, {
				q(36249),	-- Active Choice: Lumbermill - triggers if the Lumbermill is currently active
				q(36250),	-- Active Choice: Lumbermill - triggers if the Lumbermill is currently active
				q(36251),	-- Active Choice: Sparring Arena - triggers if the Sparring Arena is currently active
				q(36252),	-- Active Choice: Sparring Arena - triggers if the Sparring Arena is currently active
				q(39309),	-- Arcane Orb
				q(39310),	-- Artillery Strike
				q(39308),	-- Bodyguard
				q(36426),	-- Dueling Orbs - triggers when completing "Mysterious Ring" (questID 34463)
				q(34992),	-- Lumber Mill
				q(35049),	-- Lumber Mill
				q(36619),	-- Lumber Mill
				q(39307),	-- Mechasuit
				q(36712),	-- Mill Treasure 1 - triggers when looting Ancient Titan Chest (questID 35701)
				q(36886),	-- Ogre Waygate
				q(35946),	-- Peckers the Majestic - triggers if you free Peckers from his cage in Kor'gall's Hovel with the Sparring Arena active (37.3, 70.7)
				q(33820),	-- Tracking Quest: Seen Escape Cinematic — triggeres with cinematic during "The Descent" (questID 34338)
				q(36588),	-- Tracking - See Closed Chest — triggeres immediately after accepting "The Beating Heart" (questID 34410)
				q(35064),	-- Sparring Arena
				q(35149),	-- Sparring Arena - triggers if you choose to build the Sparring Arena for the first timeMgrAlarmEnabled
			}),
		}),
	}),
})));
