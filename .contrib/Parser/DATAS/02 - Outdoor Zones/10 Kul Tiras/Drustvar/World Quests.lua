---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(DRUSTVAR, {
		n(WORLD_QUESTS, sharedData({
			["lvl"] = { 50 },
			["isWorldQuest"] = true,
		},{
--[[	raw quest list to check against
		-- Unknown
			q(50195, {	-- Bilgemaul's Brigade
				["races"] = ALLIANCE_ONLY,
			}),
			q(53280, {	-- Blooming Siren's Sting
				["isWorldQuest"] = true,
				["lvl"] = { 50 },
			}),
			q(53299, {	-- Blooming Siren's Sting
				["isWorldQuest"] = true,
				["lvl"] = { 50 },
			}),
			q(53271, {	-- Blooming Star Moss
				["isWorldQuest"] = true,
				["lvl"] = { 50 },
			}),
			q(53302, {	-- Flourishing Riverbud
				["isWorldQuest"] = true,
				["lvl"] = { 50 },
			}),
			q(53297, {	-- Flourishing Riverbud
				["isWorldQuest"] = true,
				["lvl"] = { 50 },
			}),
			q(53284, {	-- Flourishing Riverbud
				["isWorldQuest"] = true,
				["lvl"] = { 50 },
			}),
			q(48604, {	-- Home Again, Home Again
				["races"] = ALLIANCE_ONLY,
			}),
			q(54627),	-- Paragon of the Order of Embers
			q(48515, {	-- Silver Blades
				["races"] = ALLIANCE_ONLY,
			}),
			q(50206, {	-- Strike Back
				["races"] = ALLIANCE_ONLY,
			}),
			q(48808, {	-- Thesis Statement
				["races"] = ALLIANCE_ONLY,
			}),
]]--
			q(53701, {	-- A Drust Cause (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
			}),
			q(51616, {	-- A Final Rest
				["races"] = ALLIANCE_ONLY,
			}),
			q(51719, {	-- A Glaive Mistake
				["races"] = HORDE_ONLY,
			}),
			q(51727, {	-- A Shot at the Dark Iron
				["races"] = HORDE_ONLY,
			}),
			q(51687, {	-- A Smelly Solution
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160557),	-- Pungent Onion (QI!)
				},
			}),
			q(51745, {	-- A Smelly Solution
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(160557),	-- Pungent Onion (QI!)
				},
			}),
			q(51576, {	-- Any Witch Way but Dead
				["races"] = ALLIANCE_ONLY,
			}),
			q(53714, {	-- Apothecary Jerrod (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51541),	-- Arclight
			q(51466),	-- Arvon the Betrayed
			q(51542),	-- Avalanche
			q(54681, {	-- Azerite Caravan (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(52862),	-- Azerite Empowerment
			q(51612),	-- Azerite Empowerment
			q(51608),	-- Azerite Madness
			q(52872),	-- Azerite Mining
			q(51615),	-- Azerite Mining
			q(51609),	-- Azerite Wounds
			q(51491),	-- Balethorn
			q(51506),	-- Barbthorn Queen
			q(51681, {	-- Basic Witch
				["races"] = ALLIANCE_ONLY,
			}),
			q(51637),	-- Beachhead
			q(50000, {	-- Beastly Dealings
				["races"] = ALLIANCE_ONLY,
			}),
			q(51832, {	-- Beat Around The Bush
				["races"] = HORDE_ONLY,
			}),
			q(51917),	-- Beshol
			q(51469),	-- Betsy
			q(51512),	-- Bilefang Mother
			q(54143, {	-- Bird's-Eye (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(165943),	-- Grizzek's Rocket Hop (QI!)
					i(165656),	-- Spy Gear (QI!)
				},
			}),
			q(51699),	-- Blighted Monstrosity
			q(53272, {	-- Blooming Siren's Sting
				["requireSkill"] = HERBALISM,
			}),
			q(51709, {	-- Bombarbment (A)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51741, {	-- Bombarbment (H)
				["races"] = HORDE_ONLY,
			}),
			q(51468),	-- Bonesquall
			q(51989),	-- Braedan Whitewall
			q(54662, {	-- Brought to Light (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(50369, {	-- Bruin Potions (A)
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(157545),	-- Bear Heart (QI!)
					i(160442),	-- Caustic Sap (QI!)
					i(157546),	-- Hearthbloom Petals (QI!)
				},
			}),
			q(51737, {	-- Bruin Potions (H)
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(157545),	-- Bear Heart (QI!)
					i(160442),	-- Caustic Sap (QI!)
					i(157546),	-- Hearthbloom Petals (QI!)
				},
			}),
			q(53312, {	-- Burnished Platinum
				["requireSkill"] = MINING,
				["groups"] = {
					i(163624),	-- Burnished Platinum (QI!)
				},
			}),
			q(55264, {	-- Calligraphy
				["races"] = ALLIANCE_ONLY,
			}),
			q(51528),	-- Captain Leadfist
			q(51920),	-- Cottontail Matron
			petbattle(q(52009, {	-- Crab People
				["filterID"] = BATTLE_PETS,
			})),
			q(51706, {	-- Deadwood
				["races"] = ALLIANCE_ONLY,
			}),
			q(51461),	-- Deathcap
			q(53317, {	-- Dense Storm Silver
				["requireSkill"] = MINING,
				["groups"] = {
					i(163629),	-- Dense Storm Silver (QI!)
				},
			}),
			q(51754, {	-- Dogged Tenacity
				["isWorldQuest"] = true,
			}),
			q(54665, {	-- Duchess Fallensong (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51747, {	-- Early Warning
				["races"] = HORDE_ONLY,
			}),
			q(54449, {	-- Elemental Azerite (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(164767),	-- Unrefined Azerite Shard (QI!)
				},
			}),
			q(54448, {	-- Elemental Azerite (Faction Assault WQ)
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(164767),	-- Unrefined Azerite Shard (QI!)
				},
			}),
			q(51919),	-- Emily Mayville
			q(53867, {	-- Engineer Bolthold (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51527),	-- Executioner Blackwell
			q(51761, {	-- Familiar Foes
				["races"] = HORDE_ONLY,
			}),
			q(51588, {	-- Familiar Foes
				["races"] = ALLIANCE_ONLY,
			}),
			q(53270, {	-- Flourishing Riverbud
				["requireSkill"] = HERBALISM,
				["groups"] = {
					i(163595),	-- Flourishing Riverbud (QI!)
				},
			}),
			q(53266, {	-- Flourishing Sea Stalks
				["requireSkill"] = HERBALISM,
				["groups"] = {
					i(163588),	-- Flourishing Sea Stalk (QI!)
				},
			}),
			q(51658, {	-- Fly the Coop!
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					o(281326, {	-- Falcon Cage
						["coords"] = {
							{ 31.8, 25.5, DRUSTVAR },
							{ 31.9, 24.2, DRUSTVAR },
							{ 31.6, 24.9, DRUSTVAR },
							{ 31.4, 24.2, DRUSTVAR },
							{ 31.3, 24.8, DRUSTVAR },
						},
						["groups"] = { i(157840) },	-- Falconer's Key (QI!)
					}),
				},
			}),
			q(54507, {	-- Fungal Infestation (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(54506, {	-- Fungal Infestation (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(51887),	-- Fungi Trio
			q(53311, {	-- Gleaming Storm Silver
				["requireSkill"] = MINING,
				["groups"] = {
					i(163623),	-- Gleaming Storm Silver (QI!)
				},
			}),
			q(51507),	-- Gorehorn
			q(51874),	-- Gorged Boar
			q(51909),	-- Grozgore
			q(51884),	-- Haywire Golem
			q(51604, {	-- Hunters Hunted
				["races"] = ALLIANCE_ONLY,
			}),
			q(51764, {	-- Hunters Hunted
				["races"] = HORDE_ONLY,
			}),
			q(51697, {	-- Hunting for Truffle Hunters (A)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51740),	-- Hunting for Truffle Hunters
			q(51467),	-- Hyo'gi
			q(54137, {	-- In Every Dark Corner (Faction Assault WQ)
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
			}),
			q(54688, {	-- Inquisitor Erik (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(51693, {	-- Intercepting the Irontide
				["races"] = ALLIANCE_ONLY,
			}),
			q(51742, {	-- Intercepting the Irontide
				["races"] = HORDE_ONLY,
			}),
			q(54689, {	-- Lights Out (Faction Assault WQ)
				["races"] = HORDE_ONLY,
				["groups"] = {
					ach(13435, {	-- Doomsoul Surprise
						["races"] = HORDE_ONLY,
					}),
				},
			}),
			q(51972),	-- Lost Goat
			q(53308, {	-- Luminous Monelite
				["requireSkill"] = MINING,
				["groups"] = {
					i(163609),	-- Luminous Monelite (QI!)
				},
			}),
			q(54690, {	-- Maddok the Sniper (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(54692, {	-- Magister Crystalynn
				["races"] = HORDE_ONLY,
			}),
			q(51433),	-- Matron Morana
			q(54686, {	-- Medical Emergency (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			{	-- More Valuable Than Gold
				["allianceQuestData"] = q(51707, {	-- More Valuable Than Gold (Alliance)
					["races"] = ALLIANCE_ONLY,
				}),
				["hordeQuestData"] = q(51743, {	-- More Valuable Than Gold (Horde)
					["races"] = HORDE_ONLY,
				}),
				["groups"] = {
					o(290975, {	-- Silver Nugget
						i(160577),	-- Silver Nugget (QI!)
					}),
				},
			},
			q(54650, {	-- Muk'luk (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(53979, {	-- Naga Attack!
				a(i(165605)),	-- Azsharan Medallion [A] (QS!)
				h(i(165668)),	-- Azsharan Medallion [H] (QS!)
			}),
			q(53963, {	-- Naga Attack!
				a(i(165605)),	-- Azsharan Medallion [A] (QS!)
				h(i(165668)),	-- Azsharan Medallion [H] (QS!)
			}),
			q(51620, {	-- Natural Resources
				["races"] = ALLIANCE_ONLY,
			}),
			q(51768),	-- Natural Resources
			q(51908),	-- Nevermore
			petbattle(q(52218, {	-- Night Horrors
				["filterID"] = BATTLE_PETS,
			})),
			q(54089, {	-- Omgar Doombow (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51454, {	-- Once More Into Battle
				["races"] = ALLIANCE_ONLY,
			}),
			q(53274, {	-- Overgrown Anchor Weed
				["requireSkill"] = HERBALISM,
				["races"] = ALLIANCE_ONLY,	-- probably?  reported as seen on an alliance character
				["groups"] = { i(163601) },	-- Overgrown Anchor Weed (QI!)
			}),
			q(53282, {	-- Overgrown Anchor Weed
				["requireSkill"] = HERBALISM,
				["races"] = HORDE_ONLY,	-- probably?
				["groups"] = { i(163601) },	-- Overgrown Anchor Weed (QI!)
			}),
			q(54666, {	-- Packmaster Swiftarrow (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(54472, {	-- Plowing the Field (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(51505),	-- Quillrat Matriarch
			q(51585, {	-- Quit Your Witchin'
				["races"] = ALLIANCE_ONLY,
			}),
			q(51897),	-- Rimestone
			q(51710, {	-- Rise of the Yetis (A)
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(164309),	-- Lost Supplies (QI!)
				},
			}),
			q(51739, {	-- Rise of the Yetis (H)
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(164309),	-- Lost Supplies (QI!)
				},
			}),
			petbattle(q(52278, {	-- Rogue Azerite
				["filterID"] = BATTLE_PETS,
			})),
			q(49397, {	-- Sausage Party
				["races"] = ALLIANCE_ONLY,
			}),
			q(51625),	-- Shell Game
			q(51906),	-- Sister Martha
			q(51683, {	-- Slash and Burn Tactics
				["races"] = ALLIANCE_ONLY,
			}),
			q(51431),	-- Soul Goliath
			q(51434),	-- Stone Golem
			q(52381, {	-- Supplies Needed: Lane Snapper
				["races"] = ALLIANCE_ONLY,
			}),
			q(51529),	-- Talon
			q(51672, {	-- Tangled Webs (A)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51765, {	-- Tangled Webs (H)
				["races"] = HORDE_ONLY,
			}),
			q(54187, {	-- Tea for Two
				["races"] = ALLIANCE_ONLY,
			}),
			q(54190, {	-- Tea for Two
				["races"] = HORDE_ONLY,
			}),
			q(54471, {	-- Tend the Wounded (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51970),	-- The Caterer
			q(55215),	-- The Cycle of Life
			q(51690, {	-- The Shadows of Corlain
				["races"] = ALLIANCE_ONLY,
			}),
			q(51746),	-- The Shadows of Corlain
			q(51667, {	-- This Bird You Cannot Change
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(157845),	-- Falconer's Whistle (QI!)
				},
			}),
			q(51767, {	-- Trapline
				["races"] = HORDE_ONLY,
			}),
			q(51619, {	-- Trapline
				["races"] = ALLIANCE_ONLY,
			}),
			q(51397, {	-- Up In Your Drill
				["races"] = ALLIANCE_ONLY,
			}),
			q(51508),	-- Vicemaul
			q(51530, {	-- Wedding Crashers
				["races"] = ALLIANCE_ONLY,
			}),
			q(54011, {	-- Wet Work: Arom's Stand (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(51457),	-- Whargarble the Ill-Tempered
			petbattle(q(52297, {	-- What's the Buzz?
				["filterID"] = BATTLE_PETS,
			})),
			q(51676, {	-- What a Gull Wants (A)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51769, {	-- What a Gull Wants (H)
				["races"] = HORDE_ONLY,
			}),
			q(51686, {	-- Where My Witches at?
				["races"] = ALLIANCE_ONLY,
			}),
			q(51694, {	-- Which Witch?
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160571),	-- Lucille's Sewing Needle (QI!)
				},
			}),
			q(51988),	-- Whitney "Steelclaw" Ramsay
			q(51682, {	-- Witches by the Dozen (A)
				["races"] = ALLIANCE_ONLY,
			}),
			q(51738, {	-- Witches by the Dozen (H)
				["races"] = HORDE_ONLY,
			}),
			q(53273, {	-- Winter's Kiss Cluster
				["requireSkill"] = HERBALISM,
			}),
			q(52424, {	-- Work Order: Battle Flag: Rallying Swiftness
				["requireSkill"] = TAILORING,
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(162445),	-- Pattern: Battle Flag: Rallying Swiftness [Rank 3] (RECIPE!)
				},
			}),
			q(50991, {	-- Work Order: Blood-Stained Bone
				["requireSkill"] = SKINNING,
				["races"] = ALLIANCE_ONLY,
			}),
			q(52390, {	-- Work Order: Contract: Order of Embers
				["requireSkill"] = INSCRIPTION,
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(162362),	-- Technique: Contract: Order of Embers [Rank 3] (RECIPE!)
				},
			}),
			q(52414, {	-- Work Order: Drums of the Maelstrom
				["requireSkill"] = LEATHERWORKING,
				["races"] = ALLIANCE_ONLY,
			}),
			q(52357, {	-- Work Order: Enchant Weapon - Quick Navigation
				["requireSkill"] = ENCHANTING,
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(162314),	-- Formula: Enchant Weapon - Quick Navigation [Rank 3] (RECIPE!)
				},
			}),
			q(52365, {	-- Work Order: F.R.I.E.D.
				["requireSkill"] = ENGINEERING,
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(162331),	-- Schematic: F.R.I.E.D. [Rank 3] (RECIPE!)
				},
			}),
			q(52407, {	-- Work Order: Golden Beryl
				["requireSkill"] = JEWELCRAFTING,
				["races"] = ALLIANCE_ONLY,
			}),
			q(50987, {	-- Work Order: Monelite Ore
				["requireSkill"] = MINING,
				["races"] = ALLIANCE_ONLY,
			}),
			q(52334, {	-- Work Order: Potion of Concealment
				["requireSkill"] = ALCHEMY,
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(162260),	-- Recipe: Potion of Concealment [Rank 3] (RECIPE!)
				},
			}),
			q(52406, {	-- Work Order: Rubellite
				["requireSkill"] = JEWELCRAFTING,
				["races"] = ALLIANCE_ONLY,
			}),
			q(50986, {	-- Work Order: Sea Stalk
				["races"] = ALLIANCE_ONLY,
			}),
			q(50985, {	-- Work Order: Siren's Pollen
				["requireSkill"] = HERBALISM,
				["races"] = ALLIANCE_ONLY,
			}),
			q(50994, {	-- Work Order: Tempest Hide
				["races"] = ALLIANCE_ONLY,
			}),
			q(52364, {	-- Work Order: Thermo-Accelerated Plague Spreader
				["requireSkill"] = ENGINEERING,
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(162332),	-- Schematic: Thermo-Accelerated Plague Spreader [Rank 3] (RECIPE!)
				},
			}),
			q(54711, {	-- Zillie Wunderwrench and Grizzwald (Faction Assault WQ)
				["races"] = HORDE_ONLY,
			}),
			q(54488, {	-- Zul'aki the Headhunter (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
			}),
		})),
	}),
})));

-- root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
-- 	m(KUL_TIRAS, {
-- 		m(DRUSTVAR, {
-- 			n(WORLD_QUESTS, {
-- 				q(54772),	-- triggered when turning in #54137, "In Every Dark Corner".
-- 			}),
-- 		}),
-- 	}),
-- })));
