---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(THE_GREAT_SEAL, {
		n(WORLD_QUESTS, sharedData({
			["isWorldQuest"] = true,
		}, {
			q(52251, {	-- Compromised Reconnaissance
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(50765, {	-- Herding Children
				["lvl"] = 120,
			}),
			q(50845, {	-- Kul'krazahn
				["lvl"] = 120,
			}),
			q(51496, {	-- Loa Your Standards
				-- ["races"] = HORDE_ONLY,	-- This is likely Horde Only due to quests that need to be completed for phasing but needs verification
				["lvl"] = 120,
			}),
			q(50747, {	-- No Good Amani
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(50744, {	-- Refresh Their Memory
				["lvl"] = 120,
			}),
			q(50964, {	-- Ritual Combat
				["lvl"] = 120,
			}),
			q(49413, {	-- Scamps With Scrolls
				["lvl"] = 120,
			}),
			q(50737, {	-- Silence the Speakers (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 110,
			}),
			q(50858, {	-- Sky Queeen [Alliance]
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51038, {	-- Supplies Needed: Akunda's Bite
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(51044, {	-- Supplies Needed: Blood-Stained Bone
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(51045, {	-- Supplies Needed: Calcified Bone
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(51046, {	-- Supplies Needed: Coarse Leather
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(51051, {	-- Supplies Needed: Deep Sea Satin
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(52387, {	-- Supplies Needed: Frenzied Fangtooth
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(52382, {	-- Supplies Neeeded: Great Sea Catfish
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(52388, {	-- Supplies Needed: Lane Snapper
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(51049, {	-- Supplies Neeeded: Mistscale
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(51042, {	-- Supplies Needed: Monelite Ore
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(51036, {	-- Supplies Needed: Riverbud
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(52383, {	-- Supplies Needed: Sand Shifter
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(51041, {	-- Supplies Needed: Sea Stalk
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(51048, {	-- Supplies Needed: Shimmerscale
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(51040, {	-- Supplies Needed: Siren's Pollen
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(51037, {	-- Supplies Needed: Star Moss
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(51043, {	-- Supplies Needed: Storm Silver Ore
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(51047, {	-- Supplies Needed: Tempest Hide
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(51050, {	-- Supplies Needed: Tidespray Line
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(52384, {	-- Supplies Needed: Tiragarde Perch
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(51039, {	-- Supplies Needed: Winter's Kiss
				["provider"] = { "n", 141936 },	-- Hanul Swiftgale <Trade Supplies>
				["coord"] = { 44.01, 32.21, THE_GREAT_SEAL },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(49444, {	-- Underfoot
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(50782, {	-- Word on the Streets
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(52425, {	-- Work Order: Battle Flag: Spirit of Freedom
				["provider"] = { "n", 131287 },	-- Natal'hakata
				["coord"] = { 65.61, 72.01, THE_GREAT_SEAL },
				["requireSkill"] = TAILORING,
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(162443),	-- Pattern: Battle Flag: Spirit of Freedom [Rank 3] (RECIPE!)
				},
			}),
			q(52395, {	-- Work Order: Contract: Zandalari Empire
				["requireSkill"] = INSCRIPTION,
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(162366),	-- Technique: Contract: Zandalari Empire [Rank 3] (RECIPE!)
				},
			}),
			q(52374, {	-- Work Order: Crow's Nest Scope
				["requireSkill"] = ENGINEERING,
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(162343),	-- Schematic: Crow's Nest Scope [Rank 3] (RECIPE!)
				},
			}),
			q(52373, {	-- Work Order: Electroshock Mount Motivator
				["requireSkill"] = ENGINEERING,
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(162340),	-- Schematic: Electroshock Mount Motivator [Rank 3] (RECIPE!)
				},
			}),
			q(52358, {	-- Work Order: Enchant Ring - Seal of Haste
				["requireSkill"] = ENCHANTING,
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(162299),	-- Formula: Enchant Ring - Seal of Haste [Rank 3] (RECIPE!)
				},
			}),
			q(52359, {	-- Work Order: Enchant Ring - Seal of Mastery
				["requireSkill"] = ENCHANTING,
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(162300),	-- Formula: Enchant Ring - Seal of Mastery [Rank 3] (RECIPE!)
				},
			}),
			q(52369, {	-- Work Order: Incendiary Ammunition
				["requireSkill"] = ENGINEERING,
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(162321),	-- Schematic: Incendiary Ammunition [Rank 3] (RECIPE!)
				},
			}),
			q(51013, {	-- Work Order: Mistscale
				["requireSkill"] = SKINNING,
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(50999, {	-- Work Order: Riverbud
				["races"] = HORDE_ONLY,
			}),
			q(52421, {	-- Work Order: Shimmerscale Diving Helmet
				["requireSkill"] = LEATHERWORKING,
				["races"] = HORDE_ONLY,
			}),
			q(51000, {	-- Work Order: Star Moss
				["requireSkill"] = HERBALISM,
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(51014, {	-- Work Order: Tidespray Linen
				["requireSkill"] = TAILORING,
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(52398, {	-- Work Order: Ultramarine Pigment
				["requireSkill"] = INSCRIPTION,
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(52409, {	-- Work Order: Viridium
				["requireSkill"] = JEWELCRAFTING,
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
		})),
	}),
})));
