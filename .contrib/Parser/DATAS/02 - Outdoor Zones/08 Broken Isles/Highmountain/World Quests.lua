---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(HIGHMOUNTAIN, {
			n(WORLD_QUESTS, sharedData({ ["isWorldQuest"] = true, },{
				q(41705),	-- Assault on Thunder Totem
				q(41026),	-- Back to the Shadows
				q(46191),	-- Balinar (Invasion wq)
				q(45071),	-- Barrels o' Fun
				q(40978),	-- Bears Behaving Badly
				q(40951, {	-- Bitestone Bazaar
					["groups"] = {
						i(133972),	-- Basilisk Meat (QI!)
					},
				}),
				q(40925),	-- Bitestone Burglary
				q(40980),	-- Boilback Plague
				q(41308),	-- Border Reinforcements
				q(41310),	-- Border Reinforcements
				q(46193),	-- Borne of Fel (Invasion WQ)
				q(41203, {	-- Bright Leystone Deposits
					["requireSkill"] = MINING,
					["groups"] = {
						i(141231),	-- Bright Leystone Ore (QI!)
					},
				}),
				q(41208, {	-- Brimstone Destroyer
					["requireSkill"] = MINING,
					["sym"] = {{"select","headerID",191970}},	-- Infernal Brimstone [Rank 3]
				}),
				q(41209, {	-- Brimstone Destroyer
					["requireSkill"] = MINING,
					["sym"] = {{"select","headerID",191970}},	-- Infernal Brimstone [Rank 3]
				}),
				q(41210, {	-- Brimstone Destroyer
					["requireSkill"] = MINING,
					["sym"] = {{"select","headerID",191970}},	-- Infernal Brimstone [Rank 3]
				}),
				q(41706),	-- Briny Waters
				q(41233, {	-- Bristled Bear Skin
					["requireSkill"] = SKINNING,
				}),
				q(41526, {	-- Bushy Foxflower
					["requireSkill"] = HERBALISM,
				}),
				q(41238, {	-- Calcified Wormscales
					["requireSkill"] = SKINNING,
				}),
				q(41623),	-- Champions of Highmountain
				q(46196),	-- Class Dismissed (Invasion WQ)
				q(41201, {	-- Coarse Leystone Outcropping
					["requireSkill"] = MINING,
				}),
				q(46183),	-- Commander Zarthak (Invasion wq)
				q(41699),	-- Crabby Crunchies
				q(41622),	-- Crawliac's Legacy
				q(41095),	-- Critical Crops
				q(41202, {	-- Crude Leystone Seams
					["requireSkill"] = MINING,
				}),
				q(41685),	-- DANGER: Ala'washte
				q(41695),	-- DANGER: Defilia
				q(41696),	-- DANGER: Mawat'aki
				q(41686),	-- DANGER: Olokk the Shipbreaker
				q(41703),	-- DANGER: Ormagrogg
				q(41816),	-- DANGER: Oubdob da Smasher
				q(41013, {	-- Darkbrul Arena
					ach(11478),		-- The Darkbrul-oh
				}),
				q(41835),	-- Deworming
				q(41024),	-- Dirge of the Dead
				q(43767),	-- Enigmatic
				q(39424),	-- Everything!
				q(41561, {	-- Felhide
					["requireSkill"] = SKINNING,
				}),
				q(41560, {	-- Felhide
					["requireSkill"] = SKINNING,
				}),
				q(41239, {	-- Felhide
					["requireSkill"] = SKINNING,
				}),
				q(41511, {	-- Felwort
					["requireSkill"] = HERBALISM,
				}),
				q(41512, {	-- Felwort
					["requireSkill"] = HERBALISM,
				}),
				q(41225, {	-- Felwort
					["requireSkill"] = HERBALISM,
				}),
				q(41432, {	-- Fiery Leystone Deposits
					["requireSkill"] = MINING,
				}),
				q(41219, {	-- Flourishing Foxflower
					["requireSkill"] = HERBALISM,
				}),
				q(41228, {	-- Foxflower Cluster
					["requireSkill"] = HERBALISM,
				}),
				q(41544, {	-- Foxflower Cluster
					["requireSkill"] = HERBALISM,
				}),
				q(46197),	-- From the Skies They Fel (Invasion WQ)
				q(41014),	-- Fury Road
				q(46184),	-- Gelgothar (Invasion wq)
				q(41701),	-- Gettin' Tuffer
				q(41127, {	-- Gunksnout Infestation
					o_repeated({	-- Wax Ingot
						o(247072),	-- Wax Ingot
						o(247073),	-- Wax Ingot
						o(247074),	-- Wax Ingot
						i(134056),	-- Wax Ingot
					}),
				}),
				q(41204, {	-- Hard Leystone Deposits
					["requireSkill"] = MINING,
				}),
				q(44746),	-- Helarjar Landing: Rockaway Coast
				q(41609, {	-- Huge Highmountain Salmon
					["requireSkill"] = FISHING,
				}),
				q(41243, {	-- Huge Highmountain Salmon
					["requireSkill"] = FISHING,
				}),
				q(46185),	-- Iroxus (Invasion wq)
				petbattle(q(42064)),	-- It's Illid... Wait.
				q(46186),	-- Ix'dreloth (Invasion WQ)
				q(46187),	-- Larthogg (Invasion WQ)
				q(43764),	-- Ley Race
				q(41196, {	-- Leystone Basilisks
					["requireSkill"] = MINING,
				}),
				q(41198, {	-- Leystone Basilisks
					["requireSkill"] = MINING,
				}),
				q(41199, {	-- Leystone Rumblers
					["requireSkill"] = MINING,
				}),
				q(45048),	-- Like the Wind
				q(41596, {	-- Lively Highmountain Salmon
					["requireSkill"] = FISHING,
				}),
				q(41244, {	-- Lively Highmountain Salmon
					["requireSkill"] = FISHING,
				}),
				q(41597, {	-- Lively Highmountain Salmon
					["requireSkill"] = FISHING,
				}),
				q(41090),	-- Lords of the Hills
				q(41089),	-- Lords of the Hills
				q(41091),	-- Lords of the Hills
				q(41433, {	-- Massive Leystone Deposits
					["requireSkill"] = MINING,
				}),
				q(41253, {	-- Migrating Highmountain Salmon
					["requireSkill"] = FISHING,
				}),
				q(41122),	-- Mists Take You
				q(41077),	-- Munitions Testing
				q(41078),	-- Munitions Testing
				q(41076),	-- Munitions Testing
				q(46188),	-- Orgrokk (Invasion WQ)
				q(39462),	-- Primal Payback
				q(41057),	-- Primal Payback
				q(41055),	-- Primal Payback
				q(40850),	-- Prisoners of Greystone
				q(41416),	-- Retake the Skyhorn
				q(41789),	-- Return to the Crag
				q(41144),	-- Return to the River
				q(40985),	-- Rimescale Naga Incursion: Highmountain
				q(41025),	-- Rise of the Fallen
				q(40966),	-- Ritualists in Our Midsts
				petbattle(q(41624)),	-- Rocko Needs a Shave
				q(41200, {	-- Rough Leystone Outcropping
					["requireSkill"] = MINING,
				}),
				q(46262),	-- Save the Tadpoles! (Invasion wq)
				q(41691),	-- Sea of Feathers
				q(41234, {	-- Shaggy Saber Hide
					["requireSkill"] = SKINNING,
				}),
				q(46189),	-- Shel'zuul (Invasion WQ)
				q(41692),	-- Shipwreck Scavengers
				q(41242, {	-- Slab of Bacon
					["requireSkill"] = COOKING,
					["groups"] = { i(135511) },	-- Thick Slab of Bacon (QI!)
				}),
				q(41549, {	-- Slab of Bacon
					["requireSkill"] = COOKING,
					["groups"] = { i(135511) },	-- Thick Slab of Bacon (QI!)
				}),
				q(41550, {	-- Slab of Bacon
					["requireSkill"] = COOKING,
					["groups"] = { i(135511) },	-- Thick Slab of Bacon (QI!)
				}),
				petbattle(q(41687)),	-- Snail Fight!
				q(44892),	-- Snowfeather Swarm!
				q(40920),	-- Stonebinder Bounty
				q(41224),	-- Supplies Needed: Foxflower
				q(41207),	-- Supplies Needed: Leystone
				q(41237),	-- Supplies Needed: Stonehide Leather
				q(46195),	-- Swarming Skies (Invasion WQ)
				q(42086),	-- The Feltotem
				q(43766),	-- The Magic of Flight
				q(41232, {	-- Thick Ironhorn Hide
					["requireSkill"] = SKINNING,
				}),
				q(40896),	-- Threnody of Chieftains
				q(44823),	-- Thunder Totem Cleanup Detail
				petbattle(q(40282)),	-- Tiny Poacher, Tiny Animals
				petbattle(q(40280)),	-- Training with Bredda
				q(46190),	-- Ulgrom (Invasion WQ)
				q(41011),	-- Umbralshard Rituals
				q(41428),	-- Unstable Portal
				q(41665, {	-- Vantus Rune Work Order: Ursoc
					["requireSkill"] = INSCRIPTION,
					["groups"] = {
						i(137767),	-- Vantus Rune Technique: Ursoc [Rank 3] (RECIPE!)
					},
				}),
				q(41824),	-- WANTED: Arru
				q(44289),	-- WANTED: Arru (rare wq)
				q(41828),	-- WANTED: Bristlemaul
				q(44290),	-- WANTED: Bristlemaul (rare wq)
				q(41836),	-- WANTED: Bodash the Hoarder
				q(43616),	-- WANTED: Bodash the Hoarder (rare wq)
				q(41826),	-- WANTED: Crawshuk the Hungry
				q(44291),	-- WANTED: Crawshuk the Hungry (rare wq)
				q(43455),	-- WANTED: Devouring Darkness
				q(43617),	-- WANTED: Devouring Darkness (rare wq)
				q(41819),	-- WANTED: Gurbog da Basher
				q(43618),	-- WANTED: Gurbog da Basher (rare wq)
				q(41818),	-- WANTED: Majestic Elderhorn
				q(44292),	-- WANTED: Majestic Elderhorn (rare wq)
				q(41844),	-- WANTED: Sekhan
				q(44294),	-- WANTED: Sekhan (rare wq)
				q(41821),	-- WANTED: Shara Felbreath
				q(43619),	-- WANTED: Shara Felbreath (rare wq)
				q(44293),	-- WANTED: Slumber
				q(41838),	-- WANTED: Slumber
				q(41257, {	-- Warden Tower Assault: Cordana's Apex [A]
					["races"] = ALLIANCE_ONLY,
				}),
				q(41227, {	-- Warden Tower Assault: Cordana's Apex (H)
					["races"] = HORDE_ONLY,
				}),
				q(41421, {	-- Warden Tower Assault: Nightwatcher's Perch [A]
					["races"] = ALLIANCE_ONLY,
				}),
				q(41420, {	-- Warden Tower Assault: Nightwatcher's Perch (H)
					["races"] = HORDE_ONLY,
				}),
				q(41205, {	-- Warm Leystone Deposits
					["requireSkill"] = MINING,
				}),
				q(41145),	-- Water of Life
				q(41321, {	-- Weapons of Deathwing
					o(247695, {	-- Elementium Slats
						["coords"] = {
							{ 49.8, 78.3, HIGHMOUNTAIN },
							{ 50.9, 74.4, HIGHMOUNTAIN },
							{ 51.9, 76.1, HIGHMOUNTAIN },
							{ 52.3, 74.1, HIGHMOUNTAIN },
							{ 52.4, 75.3, HIGHMOUNTAIN },
						},
						["groups"] = { i(134837) },	-- Impure Elementium Ore (QI!)
					}),
				}),
				q(41414, {	-- Weapons of Deathwing
						o(247695, {	-- Elementium Slats
						["coords"] = {
							{ 49.8, 78.3, HIGHMOUNTAIN },
							{ 50.9, 74.4, HIGHMOUNTAIN },
							{ 51.9, 76.1, HIGHMOUNTAIN },
							{ 52.3, 74.1, HIGHMOUNTAIN },
							{ 52.4, 75.3, HIGHMOUNTAIN },
						},
						["groups"] = { i(134837) },	-- Impure Elementium Ore (QI!)
					}),
				}),
				q(41252, {	-- Wild Northern Barracuda
					["requireSkill"] = FISHING,
				}),
				petbattle(q(41766)),	-- Wildlife Protection Force
				q(41525, {	-- Wispy Foxflower
					["requireSkill"] = HERBALISM,
				}),
				q(46194),	-- Wolves of the Legion (Invasion WQ)
				q(41677, {	-- Work Order: Auto-Hammer
					["requireSkill"] = ENGINEERING,
					["groups"] = {
						i(137723),	-- Schematic: Auto-Hammer [Rank 3] (RECIPE!)
					},
				}),
				q(41659, {	-- Work Order: Avalanche Elixirs
					["requireSkill"] = ALCHEMY,
					["groups"] = {
						i(127922),	-- Recipe: Avalanche Elixir [Rank 2] (RECIPE!)
					},
				}),
				q(41641, {	-- Work Order: Battlebound Armbands
					["requireSkill"] = LEATHERWORKING,
					["groups"] = {
						i(137908),	-- Pattern: Battlebound Armbands [Rank 3] (RECIPE!)
					},
				}),
				q(41223, {	-- Work Order: Foxflower
					["requireSkill"] = HERBALISM,
				}),
				q(41240, {	-- Work Order: Highmountain Salmon
					["requireSkill"] = FISHING,
				}),
				q(41206, {	-- Work Order: Leystone
					["requireSkill"] = MINING,
				}),
				q(41635, {	-- Work Order: Leystone Boots
					["requireSkill"] = BLACKSMITHING,
					["groups"] = {
						i(137605),	-- Plans: Leystone Boots [Rank 3] (RECIPE!)
					},
				}),
				q(41647, {	-- Work Order: Silkweave Robe
					["requireSkill"] = TAILORING,
					["groups"] = {
						i(137964),	-- Pattern: Silkweave Robe [Rank 3] (RECIPE!)
					},
				}),
				q(41653, {	-- Work Order: Skystone Pendant
					["requireSkill"] = JEWELCRAFTING,
					["groups"] = {
						i(137842),	-- Design: Skystone Pendant [Rank 3] (RECIPE!)
					},
				}),
				q(41235, {	-- Work Order: Stonehide Leather
					["requireSkill"] = SKINNING,
				}),
				q(41671, {	-- Work Order: Word of Strength
					["requireSkill"] = ENCHANTING,
					["groups"] = {
						i(128604),	-- Formula: Enchant Cloak - Word of Strength [Rank 3] (RECIPE!)
					},
				}),
				q(46279),	-- Zargrom (Invasion WQ)
				q(46192),	-- Zar'vok (Invasion WQ)
			})),
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	m(BROKEN_ISLES, {
		m(HIGHMOUNTAIN, {
			n(WORLD_QUESTS, {
				q(45513),	-- Highmountain - WQ rare: Defilia
				q(45512),	-- Highmountain - WQ rare: Mawat'aki
				q(48381),	-- Highmountain - WQ rare: Obsidian Deathwarder
				q(45511),	-- Highmountain - WQ rare: Olokk the Shipbreaker
				q(45510),	-- Highmountain - WQ rare: Ormagrogg
				q(44039),	-- Highmountain - WQ rare: Sea King Tidross
				q(44879),	-- Highmountain - WQ rare: Snowfeather Matriarch
			}),
		}),
	}),
})));
