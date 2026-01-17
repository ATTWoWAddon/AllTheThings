---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(NAZMIR, {
		n(WORLD_QUESTS, sharedData({
			["isWorldQuest"] = true,
			["lvl"] = { 50 },
		},{
			q(51131, {	-- Absolutely Barbaric (A)
				["races"] = ALLIANCE_ONLY,
			}),
			q(50549, {	-- Absolutely Barbaric (H)
				["races"] = HORDE_ONLY,
			}),
			petbattle(q(52803)),	-- Accidental Dread
			q(50718),	-- Agent of Death
			q(50488),	-- Ancient Jawbreaker
			q(54684, {	-- Arcanist Quintril (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51412),	-- Azerite Empowerment
			q(52832),	-- Azerite Empowerment
			q(50570),	-- Azerite Infused Elemental
			q(50564),	-- Azerite Infused Slag
			q(51415),	-- Azerite Madness
			q(51411),	-- Azerite Mining
			q(54664),	-- Azerite Transport
			q(51064),	-- Azerite Wounds
			q(52884),	-- Azerite Wounds
			q(50511),	-- Bajiatha
			q(54533, {	-- Barreling Through (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51640),	-- Beachhead
			q(50572, {	-- Bloody Intrusion
				["groups"] = {
					i(154724),	-- Ceremonial Torch (QI!)
				},
			}),
			q(53292, {	-- Blooming Siren's Sting
				["requireSkill"] = HERBALISM,
			}),
			q(53291, {	-- Blooming Star Moss
				["requireSkill"] = HERBALISM,
			}),
			q(54691, {	-- Brewmaster Lin (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51550, {	-- Bubbles and Trouble
				["races"] = ALLIANCE_ONLY,
			}),
			q(50648, {	-- Bubbles and Trouble
				["races"] = HORDE_ONLY,
			}),
			q(50735, {	-- Burial Detail
				["races"] = HORDE_ONLY,
			}),
			q(53323, {	-- Burnished Platinum
				["requireSkill"] = MINING,
				["groups"] = {
					i(163624),	-- Burnished Platinum (QI!)
				},
			}),
			q(55342, {	-- Calligraphy
				["races"] = HORDE_ONLY,
			}),
			h(q(50665, {	-- Cancel the Blood Troll Apocalypse
				h(ach(13021)),	-- A Most Efficient Apocalypse
			})),
			q(50813, {	-- Cargo Reclamation
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(282481, {	-- Ransacked Supplies
						i(158878),	-- Ransacked Supplies (QI!)
					}),
				},
			}),
			q(50962, {	-- Cargo Reclamation
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					o(282481, {	-- Ransacked Supplies
						i(158878),	-- Ransacked Supplies (QI!)
					}),
				},
			}),
			q(50568),	-- Chag's Challenge
			q(54699, {	-- Classic Gnomish Engineering (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			a(q(54512, {	-- Cleansing Tide (Faction Assault WQ)
				a(ach(13426)),	-- Come On and Slam
			})),
			q(50491),	-- Corpse Bringer Yal'kar
			petbattle(q(52779)),	-- Crawg in the Bog
			q(50492),	-- Cursed Chest
			a(q(50899, {	-- Don't Stalk Me, Troll (A)
				["groups"] = {
					a(ach(13026)),	-- 7th Legion Spycatcher
					i(158924),	-- Portable Revealing Occular (QI!)
				},
			})),
			q(50717, {	-- Don't Stalk Me, Troll (H)
				["races"] = HORDE_ONLY,
				["groups"] = {
					h(ach(13025)),	-- Zandalari Spycatcher
					i(158324),	-- Talanji's Mojo (QI!)
				},
			}),
			q(51166, {	-- Down to the Roots (A)
				["races"] = ALLIANCE_ONLY,
			}),
			q(50443, {	-- Down to the Roots (H)
				["races"] = HORDE_ONLY,
			}),
			q(52007, {	-- Engines of War
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(160988),	-- Goblin Incendiary Rocket Launcher (QI!)
				},
			}),
			q(53290, {	-- Flourishing Riverbud
				["requireSkill"] = HERBALISM,
				["groups"] = {
					i(163595),	-- Flourishing Riverbud (QI!)
				},
			}),
			q(53289, {	-- Flourishing Sea Stalks
				["requireSkill"] = HERBALISM,
				["groups"] = {
					i(163588),	-- Flourishing Sea Stalk (QI!)
				},
			}),
			q(51172, {	-- Forked Lightning (A)
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(157863),	-- Restored Skycaller Gem (QI!)
					i(157861),	-- Skycaller Gem Chip (QI!)
				},
			}),
			q(50545, {	-- Forked Lightning (H)
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(157863),	-- Restored Skycaller Gem (QI!)
					i(157861),	-- Skycaller Gem Chip (QI!)
				},
			}),
			a(q(51127, {	-- Getting Out of Hand (A)
				ach(13023),	-- It's Really Getting Out of Hand
			})),
			h(q(50559, {	-- Getting Out of Hand (H)
				ach(13023),	-- It's Really Getting Out of Hand
			})),
			q(53322, {	-- Gleaming Storm Silver
				["requireSkill"] = MINING,
				["groups"] = {
					i(163623),	-- Gleaming Storm Silver (QI!)
				},
			}),
			q(50496),	-- Glompmaw
			q(50498),	-- Gutrip
			q(50499),	-- Gwugnug
			q(50695),	-- It's Never Time for Cannibalism
			q(54502, {	-- It's Raining Mana (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(51546, {	-- It's the Pits (A)
				["races"] = ALLIANCE_ONLY,
			}),
			q(50689, {	-- It's the Pits (H)
				["races"] = HORDE_ONLY,
			}),
			q(50502),	-- Jax'teb the Reanimated
			q(50503),	-- Juba the Scarred
			q(50505),	-- Kal'draxa
			q(50506),	-- King Kooba
			q(50497, {	-- Krag'wa's Favor
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(151040),	-- Chunky Meat (QI!)
					o(281469, {	-- Raptor's Eggs
						i(157841),	-- Prime Raptor Egg (QI!)
					}),
				},
			}),
			q(50507),	-- Krubbs
			q(54697, {	-- Lightforged Warframe (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(50509),	-- Lo'kuno
			q(50566),	-- Lost Scroll
			q(53321, {	-- Luminous Monelite
				["requireSkill"] = MINING,
				["groups"] = {
					i(163609),	-- Luminous Monelite (QI!)
				},
			}),
			q(50517),	-- Mala'kili and Rohnkor
			q(54136, {	-- March on the Marsh (Faction Assault WQ)
				["provider"] = { "n", 135446 },	-- Vindicator Jaelaana <7th Legion Emissary>
				["races"] = ALLIANCE_ONLY,
			}),
			petbattle(q(52754, {	-- Marshdwellers
				["provider"] = { "n", 141529 },	-- Lozu
			})),
			q(54267, {	-- Naga Attack!
				a(i(165605)),	-- Azsharan Medallion [A] (QS!)
				h(i(165668)),	-- Azsharan Medallion [H] (QS!)
			}),
			q(54236, {	-- Naga Attack!
				a(i(165605)),	-- Azsharan Medallion [A] (QS!)
				h(i(165668)),	-- Azsharan Medallion [H] (QS!)
			}),
			q(51548, {	-- Nagative Feedback (A)
				["races"] = ALLIANCE_ONLY,
			}),
			q(50587, {	-- Nagative Feedback (H)
				["races"] = HORDE_ONLY,
			}),
			q(53293, {	-- Overgrown Anchor Weed
				["requireSkill"] = HERBALISM,
				["groups"] = { i(163601) },	-- Overgrown Anchor Weed (QI!)
			}),
			q(54671),	-- Overgrown Ancient
			q(50510),	-- Overstuffed Saurolisk
			petbattle(q(52799, {	-- Pack Leader
				["provider"] = { "n", 141799 },	-- Grady Prett
			})),
			q(50667),	-- Past Due
			q(51154),	-- Past Due
			q(54680, {	-- Plague Master Herbert (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(52006, {	-- Preemptive Assault
				["races"] = HORDE_ONLY,
			}),
			q(54693, {	-- Pterror of the Horde (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(50501),	-- Queen Tzxi'kik
			h(q(50786, {	-- Revenge of Krag'wa
				h(ach(13022)),	-- Revenge is Best Served Speedily
			})),
			q(54839, {	-- Rightfully Ours (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(166726),	-- Alliance Supplies (QI!)
				},
			}),
			q(50676),	-- River Toll
			q(54135, {	-- Romp in the Swamp (Faction Assault WQ)
				["provider"] = { "n", 135459 },	-- Provisioner Lija <Talanji's Expedition Emissary>
				["races"] = HORDE_ONLY,
			}),
			q(50961, {	-- Save Our Scrolls!
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158176),	-- Intact Tortollan Scroll (QI!)
				},
			}),
			q(50634, {	-- Save Our Scrolls!
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(158176),	-- Intact Tortollan Scroll (QI!)
				},
			}),
			q(50521, {	-- Scorched Earth
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(157847),	-- Firestick (QI!)
				},
			}),
			q(51109, {	-- Scorched Earth
				["groups"] = {
					i(159745),	-- X-P100D (QI!)
				},
			}),
			q(50512),	-- Scout Skrasniss
			q(53886, {	-- Self Guided Tour (Faction Assault WQ)
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(310204, {	-- Alliance Strongbox
						["groups"] = { i(165011) },	-- Nazmir Battleplans (QI!)
					}),
				},
			}),
			q(54663, {	-- Shadow Hunter Vol'tris (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51628),	-- Shell Game
			q(50468, {	-- Shul-Nagruth
				n(128610, {	-- Maw of Shul-Nagruth
					["questID"] = 50467,
					["description"] = "This rare is only up when its associated world quest is active.",
					["coord"] = { 49.8, 67.0, NAZMIR },
					["groups"] = {
						i(160973),	-- Accursed Tuskwand
					},
				}),
			}),
			q(54707, {	-- Siegeotron (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			a(q(54539, {	-- Skirmish at the Span (Faction Assault WQ)
				pvp(ach(13429)),	-- Azerfighter
			})),
			h(q(54538, {	-- Skirmish at the Span (Faction Assault WQ)
				pvp(ach(13429)),	-- Azerfighter
			})),
			q(50650, {	-- Smashing Zalamar
				["races"] = HORDE_ONLY,
			}),
			q(52785, {	-- Smashing Zalamar
				["races"] = ALLIANCE_ONLY,
			}),
			q(54694, {	-- Stormcaller Morka (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(52385, {	-- Supplies Needed: Slimy Mackerel
				["races"] = HORDE_ONLY,
			}),
			q(50936, {	-- Survival Strategy
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158193),	-- Diremaw Hide (QI!)
					i(158192),	-- Pterrordax Wingclaw (QI!)
					i(158191),	-- Saurid Feather (QI!)
				},
			}),
			q(50660, {	-- Survival Strategy
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(158193),	-- Diremaw Hide (QI!)
					i(158192),	-- Pterrordax Wingclaw (QI!)
					i(158191),	-- Saurid Feather (QI!)
				},
			}),
			q(50513),	-- Tainted Guardian
			q(54534, {	-- The Blightest Touch (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(55302),	-- The Cycle of Life
			q(50474, {	-- The Other Side
				["races"] = HORDE_ONLY,
				["lvl"] = 50,
				["groups"] = {
					i(157833),	-- Spirit Essence (QI!)
				},
			}),
			q(50529, {	-- The Spirits Within
				["races"] = HORDE_ONLY,
			}),
			q(51856),	-- The Underrot: Rotmaw
			q(54503, {	-- This Gang of Mine (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(54700),	-- Thomas Vandergrief
			q(50514),	-- Totem Maker Jash'ga
			q(50577, {	-- Unaccounted For
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(159761),	-- Grappling Hook (QI!)
				},
			}),
			q(51176, {	-- Unaccounted For
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(159761),	-- Grappling Hook (QI!)
				},
			}),
			q(50483),	-- Underlord Xerxiz
			q(54500, {	-- Untapped Potential (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(50490),	-- Uroku the Bound
			q(50515),	-- Venomjaw
			q(50459),	-- Vugthuth
			q(50516),	-- Wardrummer Zurula
			q(54020, {	-- Wet Work: Gloomwater Span (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(52426, {	-- Work Order: Battle Flag: Phalanx Defense
				["requireSkill"] = TAILORING,
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(162444),	-- Pattern: Battle Flag: Phalanx Defense [Rank 3] (RECIPE!)
				},
			}),
			q(51009, {	-- Work Order: Calcified Bone
				["races"] = HORDE_ONLY,
			}),
			q(52396, {	-- Work Order: Contract: Talanji's Expedition
				["requireSkill"] = INSCRIPTION,
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(162368),	-- Technique: Contract: Talanji's Expedition [Rank 3] (RECIPE!)
				},
			}),
			q(51015, {	-- Work Order: Deep Sea Satin
				["races"] = HORDE_ONLY,
			}),
			q(52418, {	-- Work Order: Drums of the Maelstrom
				["races"] = HORDE_ONLY,
			}),
			q(52360, {	-- Work Order: Enchant Weapon - Coastal Surge
				["requireSkill"] = ENCHANTING,
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(162315),	-- Formula: Enchant Weapon - Coastal Surge [Rank 3] (RECIPE!)
				},
			}),
			q(52361, {	-- Work Order: Enchant Weapon - Torrent of Elements
				["requireSkill"] = ENCHANTING,
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(162319),	-- Formula: Enchant Weapon - Torrent of Elements [Rank 3] (RECIPE!)
				},
			}),
			q(52411, {	-- Work Order: Kubiline
				["races"] = HORDE_ONLY,
			}),
			q(51006, {	-- Work Order: Monelite Ore
				["races"] = HORDE_ONLY,
			}),
			q(52337, {	-- Work Order: Sea Mist Potion
				["requireSkill"] = ALCHEMY,
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(162259),	-- Recipe: Sea Mist Potion [Rank 3] (RECIPE!)
				},
			}),
			q(51005, {	-- Work Order: Sea Stalk
				["races"] = HORDE_ONLY,
			}),
			q(51012, {	-- Work Order: Shimmerscale
				["races"] = HORDE_ONLY,
			}),
			q(51004, {	-- Work Order: Siren's Pollen
				["races"] = HORDE_ONLY,
			}),
			q(52410, {	-- Work Order: Solstone
				["races"] = HORDE_ONLY,
			}),
			q(52372, {	-- Work Order: XA-1000 Surface Skimmer
				["requireSkill"] = ENGINEERING,
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(162339),	-- Schematic: XA-1000 Surface Skimmer [Rank 3] (RECIPE!)
				},
			}),
			q(50489),	-- Xu'ba
			q(50519),	-- Za'amar
			q(50518),	-- Zanxib
			q(50461),	-- Zujothgul
		})),
	}),
})));

-- root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
-- 	m(ZANDALAR, {
-- 		m(NAZMIR, {
-- 			n(WORLD_QUESTS, {
-- 				q(54325),	-- Completed 54136 without WM
-- 			}),
-- 		}),
-- 	}),
-- })));
