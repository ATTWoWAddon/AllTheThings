---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(BORALUS, {
		n(WORLD_QUESTS, sharedData({
			["isWorldQuest"] = true,
		}, {
			q(52047, {	-- Against the Storm
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(52057, {	-- Against the Storm
				["lvl"] = 120,
			}),
			q(51225, {	-- Albatrocity
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51333, {	-- Anchors Aweigh!
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(159926),	-- Cannonball (QI!)
				},
			}),
			q(53808, {	-- Crawl To Victory (Faction Assault WQ)
				["races"] = HORDE_ONLY,
				["lvl"] = 110,
				["groups"] = {
					i(164742),	-- Crawler Mine Parts (QI!)
				},
			}),
			q(51579, {	-- Dark Ranger Clea
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(160480),	-- Marine Dog Tags (QI!)
				},
			}),
			q(51577, {	-- Defending the Academy
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(160480),	-- Marine Dog Tags (QI!)
				},
			}),
			q(50776, {	-- False Prophets
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(53726, {	-- Mechinations (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 110,
				["groups"] = {
					i(165841),	-- Bot Scrambler (QI!)
				},
			}),
			q(53704, {	-- Not Too Sober Citizens Brigade (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 110,
				["groups"] = {
					a(ach(13285, {	-- Upright Citizens
						i(166247),		-- Citizens Brigade Whistle (TOY!)
						hqt(54400, name(HEADERS.AchCriteria, 13285.01)),	-- Russel the Bard recruited
						hqt(54401, name(HEADERS.AchCriteria, 13285.02)),	-- Flynn Fairwind recruited
						hqt(54399, name(HEADERS.AchCriteria, 13285.03)),	-- Leeroy Jenkins recruited
						crit(43718, {	-- Russel the Bard recruited
							["coord"] = { 72.4, 68.9, BORALUS },
						}),
						crit(43719, {	-- Flynn Fairwind recruited
							["coord"] = { 72.0, 61.6, BORALUS },
						}),
						crit(43720, {	-- Leeroy Jenkins recruited
							["coord"] = { 66.8, 64.0, BORALUS },
						}),
					})),
				},
			}),
			q(51092, {	-- Picturesque Boralus
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(157540),	-- Battered S.E.L.F.I.E. Camera (QI!)
				},
			}),
			q(51893, {	-- Sawtooth
				["lvl"] = 120,
			}),
			q(54167, {	-- Set Sail
				["races"] = ALLIANCE_ONLY,
				["isWeekly"] = true,
				["lvl"] = 110,
			}),
			q(53784, {	-- Siege Engineer Krackleboom (Faction Assault WQ)
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 110,
			}),
			q(51024, {	-- Supplies Needed: Akunda's Bite
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51028, {	-- Supplies Needed: Blood-Stained Bone
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51029, {	-- Supplies Needed: Calcified Bone
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51030, {	-- Supplies Needed: Coarse Leather
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51035, {	-- Supplies Needed: Deep Sea Satin
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(52375, {	-- Supplies Neeeded: Great Sea Catfish
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51033, {	-- Supplies Neeeded: Mistscale
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51017, {	-- Supplies Needed: Monelite Ore
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(52379, {	-- Supplies Needed: Redtail Loach
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51022, {	-- Supplies Needed: Riverbud
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(52376, {	-- Supplies Needed: Sand Shifter
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51027, {	-- Supplis Needed: Sea Stalk
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51032, {	-- Supplies Needed: Shimmerscale
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51026, {	-- Supplies Needed: Siren's Pollen
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(52378, {	-- Supplies Needed: Slimy Mackerel
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51023, {	-- Supplies Needed: Star Moss
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51021, {	-- Supplies Needed: Storm Silver Ore
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51031, {	-- Supplies Needed: Tempest Hide
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51034, {	-- Supplies Needed: Tidespray Linen
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(52377, {	-- Supplies Needed: Tiragarde Perch
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51025, {	-- Supplies Needed: Winter's Kiss
				["provider"] = { "n", 142095 },	-- Henrick Wyther <Trade Goods>
				["coord"] = { 73.21, 11.01, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(157540),	-- Battered S.E.L.F.I.E. Camera (QI!)
				},
			}),
			q(50792, {	-- Taking Bribes
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(50767, {	-- The Scrimshaw Gang
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(158677),	-- Scrimshaw Ledger (QI!)
				},
			}),
			q(51621, {	-- Tidal Teachings
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(50958, {	-- Watch Your Wallets
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(51758, {	-- Weapons Shipment
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 50,
				["groups"] = {
					o(307683,	{ -- Azerite Bombs
						["groups"] = {
							i(160667),	-- Unstable Azerite Bomb (QI!)
						},
					}),
				},
			}),
			q(50992, {	-- Work Order: Calcified Bone
				["provider"] = { "n", 135808 },	-- Provisioner Fray
				["coord"] = { 67.61, 21.81, BORALUS },
				["requireSkill"] = SKINNING,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(52389, {	-- Work Order: Contract: Proudmoore Admiralty
				["requireSkill"] = INSCRIPTION,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(162360),	-- Technique: Contract: Proudmoore Admiralty [Rank 3] (RECIPE!)
				},
			}),
			q(52368, {	-- Work Order: Crow's Nest Scope
				["requireSkill"] = ENGINEERING,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(162343),	-- Schematic: Crow's Nest Scope [Rank 3] (RECIPE!)
				},
			}),
			q(52355, {	-- Work Order: Enchant Weapon - Coastal Surge
				["requireSkill"] = ENCHANTING,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(162315),	-- Formula: Enchant Weapon - Coastal Surge [Rank 3] (RECIPE!)
				},
			}),
			q(52356, {	-- Work Order: Enchant Weapon - Torrent of Elements
				["requireSkill"] = ENCHANTING,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(162319),	-- Formula: Enchant Weapon - Torrent of Elements [Rank 3] (RECIPE!)
				},
			}),
			q(52363, {	-- Work Order: Incendiary Ammunition
				["requireSkill"] = ENGINEERING,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(162321),	-- Schematic: Incendiary Ammunition [Rank 3] (RECIPE!)
				},
			}),
			q(52405, {	-- Work Order: Kubiline
				["provider"] = { "n", 135808 },	-- Provisioner Fray
				["coord"] = { 67.61, 21.81, BORALUS },
				["requireSkill"] = JEWELCRAFTING,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(52340, {	-- Work Order: Monel-Hardened Hoofplates
				["requireSkill"] = BLACKSMITHING,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(52339, {	-- Work Order: Monel-Hardened Stirrups
				["requireSkill"] = BLACKSMITHING,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(50995, {	-- Work Order: Shimmerscale
				["requireSkill"] = SKINNING,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(52417, {	-- Work Order: Shimmerscale Diving Helmet
				["provider"] = { "n", 135808 },	-- Provisioner Fray
				["coord"] = { 67.61, 21.81, BORALUS },
				["requireSkill"] = LEATHERWORKING,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(52416, {	-- Work Order: Shimmerscale Diving Suit
				["provider"] = { "n", 135808 },	-- Provisioner Fray
				["coord"] = { 67.61, 21.81, BORALUS },
				["requireSkill"] = LEATHERWORKING,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(52392, {	-- Work Order: Ultramarine Pigment
				["requireSkill"] = INSCRIPTION,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(50984, {	-- Work Order: Winter's Kiss
				["requireSkill"] = HERBALISM,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
			}),
			q(52366, {	-- Work Order: XA-1000 Surface Skimmer
				["requireSkill"] = ENGINEERING,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 120,
				["groups"] = {
					i(162339),	-- Schematic: XA-1000 Surface Skimmer [Rank 3] (RECIPE!)
				},
			}),
		})),
	}),
})));
