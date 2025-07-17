---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
ASSAULT_ON_THE_DARK_PORTAL = createHeader({
	readable = "Assault on the Dark Portal",
	icon = 255348,
	text = {
		en = "Assault on the Dark Portal",
		es = "Asalto en el Portal Oscuro",
		de = "Angriff auf das Dunkle Portal",
		fr = "Prise D'assaut de la Porte des Ténèbres",
		it = "Assalto al Portale Oscuro",
		pt = "Ataque ao Portal Negro",
		ru = "Атака на Темный портал",
		ko = "어둠의 문 공격 작",
		cn = "进攻黑暗之门",
	},
	description = {
		en = "The Assault on the Dark Portal is the instanced version of Tanaan Valley, which is the subzone of Tanaan Jungle and a location of Warlords of Draenor introductory experience. Once the intro is completed, players have no means of returning to the area, similiar to Plaguelands: The Scarlet Enclave for death knights.",
	},
});
root(ROOTS.Zones, {
	m(DRAENOR, {
		n(ASSAULT_ON_THE_DARK_PORTAL, {
			["maps"] = {
				577,	-- Tanaan Jungle (instanced)
				578,	-- Umbral Halls
			},
			["lvl"] = 90,
			["g"] = {
				n(ACHIEVEMENTS, {
					ach(8921, {	-- Welcome to Draenor (A)
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 35884,
					}),
					ach(8922, {	-- Welcome to Draenor (H)
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 35884,
					}),
				}),
				n(QUESTS, {
					q(34478, {	-- A Potential Ally (A)
						["provider"] = { "n", 78560 },	-- Archmage Khadgar
						["coord"] = { 73.0, 38.1, 577 },
						["sourceQuest"] = 34425,	-- The Kargathar Proving Grounds
						["races"] = ALLIANCE_ONLY,
						["g"] = {
							i(112440),	-- Slavebreaker Robes
							i(112441),	-- Slavebreaker Tunic
							i(112442),	-- Slavebreaker Chainmail
							i(112443),	-- Slavebreaker Chestguard
						},
					}),
					q(34427, {	-- A Potential Ally (H)
						["provider"] = { "n", 78560 },	-- Archmage Khadgar
						["coord"] = { 73.0, 38.1, 577 },
						["sourceQuest"] = 34425,	-- The Kargathar Proving Grounds
						["races"] = HORDE_ONLY,
						["g"] = {
							i(112440),	-- Slavebreaker Robes
							i(112441),	-- Slavebreaker Tunic
							i(112442),	-- Slavebreaker Chainmail
							i(112443),	-- Slavebreaker Chestguard
						},
					}),
					q(34445, {	-- A Taste of Iron
						["provider"] = { "n", 80521 },	-- Thaelin Darkanvil
						["coord"] = { 40.1, 48.4, 577 },
						["sourceQuest"] = 35747,	-- Taking a Trip to the Top of the Tank
					}),
					q(34423, {	-- Altar Altercation
						["provider"] = { "n", 78559 },	-- Archmage Khadgar
						["coord"] = { 71.5, 62.3, 577 },
						["sourceQuests"] = {
							34422,	-- Blaze of Glory
							34421,	-- Bled Dry
							35240,	-- Bled Dry
							35242,	-- Vengeance for the Fallen (A)
							35241,	-- Vengeance for the Fallen	(H)
						},
					}),
					q(35933, {	-- Azeroth's Last Stand
						["provider"] = { "n", 78558 },	-- Archmage Khadgar
						["sourceQuests"] = {
							36881,	-- The Dark Portal (A)
							34398,	-- The Dark Portal (H)
						},
						["coord"] = { 54.7, 48.2, 577 },
					}),
					q(34422, {	-- Blaze of Glory
						["provider"] = { "n", 78559 },	-- Archmage Khadgar
						["coord"] = { 60.2, 56.3, 577 },
						["sourceQuest"] = 34420,	-- The Cost of War
						["g"] = {
							i(112431),	-- Hollowheart Legguards
							i(112432),	-- Hollowheart Chain Leggings
							i(112433),	-- Hollowheart Trousers
							i(112434),	-- Hollowheart Pantaloons
						},
					}),
					q(35240, {	-- Bled Dry (A)
						["provider"] = { "n", 81762 },	-- Taag
						["coord"] = { 62.2, 52.9, 577 },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34420,	-- The Cost of War
					}),
					q(34421, {	-- Bled Dry (H)
						["provider"] = { "n", 78573 },	-- Korag
						["coord"] = { 62.2, 52.9, 577 },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34420,	-- The Cost of War
					}),
					q(34442, {	-- Ga'nar of the Frostwolf
						["provider"] = { "n", 78996 },	-- Farseer Drek'Thar
						["coord"] = { 43.0, 26.4, 577 },
						["sourceQuest"] = 34439,	-- The Battle of the Forge
					}),
					q(34436, {	-- Keli'dan the Breaker (A)
						["provider"] = { "n", 79537 },	-- Exarch Maladaar
						["coord"] = { 50.0, 48.1, 578 },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							34431,	-- Masters of Shadow
							34432,	-- The Shadowmoon Clan
							34740,	-- Yrel
						},
					}),
					q(34741, {	-- Keli'dan the Breaker (H)
						["provider"] = { "n", 79675 },	-- Lady Liadrin
						["coord"] = { 50.0, 48.1, 578 },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							34737,	-- Masters of Shadow
							34739,	-- The Shadowmoon Clan
							34740,	-- Yrel
						},
					}),
					q(34429, {	-- Kill Your Hundred
						["provider"] = { "n", 78560 },	-- Archmage Khadgar
						["coord"] = { 73.0, 38.0, 577 },
						["sourceQuest"] = 34427,	-- A Potential Ally
					}),
					q(34431, {	-- Masters of Shadow (A)
						["provider"] = { "n", 79661 },	-- Luuka
						["coord"] = { 82.8, 44.2, 578 },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34429,	-- Kill Your Hundred
					}),
					q(34737, {	-- Masters of Shadow (H)
						["provider"] = { "n", 79661 },	-- Luuka
						["coord"] = { 82.8, 44.2, 578 },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34429,	-- Kill Your Hundred
					}),
					q(34392, {	-- Onslaught's End
						["provider"] = { "n", 78558 },	-- Archmage Khadgar
						["coord"] = { 54.7, 48.2, 577 },
						["sourceQuest"] = 35933,	-- Azeroth's Last Stand
					}),
					q(34925, {	-- Polishing the Iron Throne
						["provider"] = { "n", 79917 },	-- Ga'nar
						["coord"] = { 41.8, 41.6, 577 },
						["sourceQuest"] = 34442,	-- Ga'nar of the Frostwolf
					}),
					q(35019, {	-- Prepare for Battle (A)
						["provider"] = { "n", 78554 },	-- Vindicator Maraad
						["coord"] = { 48.6, 14.2, 577 },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34436,	-- Keli'dan the Breaker
						["g"] = {
							i(112668),	-- Quarrier's Spaulders
							i(112669),	-- Quarrier's Shoulderplates
							i(112670),	-- Quarrier's Mantle
							i(112671),	-- Quarrier's Pauldrons
						},
					}),
					q(35005, {	-- Prepare for Battle (H)
						["provider"] = { "n", 78553 },	-- Thrall
						["coord"] = { 50.0, 13.3, 577 },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34741,	-- Keli'dan the Breaker
						["g"] = {
							i(112668),	-- Quarrier's Spaulders
							i(112669),	-- Quarrier's Shoulderplates
							i(112670),	-- Quarrier's Mantle
							i(112671),	-- Quarrier's Pauldrons
						},
					}),
					q(35747, {	-- Taking a Trip to the Top of the Tank
						["provider"] = { "n", 78563 },	-- Archmage Khadgar
						["coord"] = { 43.1, 28.7, 577 },
						["sourceQuests"] = {
							34987,	-- The Gunpowder Plot (is this really needed?)
							34437,	-- The Prodigal Frostwolf
							34958,	-- The Shadow of the Worldbreaker
						},
					}),
					q(34439, {	-- The Battle of the Forge
						["provider"] = { "n", 78430 },	-- Cordana Felsong
						["coord"] = { 49.5, 14.2, 577 },
						["sourceQuests"] = {
							35005,	-- Prepare for Battle
							35019,	-- Prepare for Battle
						},
					}),
					q(34420, {	-- The Cost of War
						["provider"] = { "n", 78558 },	-- Archmage Khadgar
						["coord"] = { 54.7, 48.2, 577 },
						["sourceQuest"] = 34393,	-- The Portal's Power
					}),
					q(34987, {	-- The Gunpowder Plot
						["provider"] = { "n", 78569 },	-- Hansel Heavyhands
						["coord"] = { 44.0, 29.5, 577 },
						["sourceQuest"] = 34439,	-- The Battle of the Forge
						["g"] = {
							o(231119, {	-- Blackrock Powder Keg
								["coord"] = { 46.9, 32.0, 577 },
								["g"] = { i(112323) },	-- Blackrock Powder Keg (QI!)
							}),
						},
					}),
					q(35884, {	-- The Home Stretch (A)
						["provider"] = { "n", 80521 },	-- Thaelin Darkanvil
						["coord"] = { 40.1, 48.4, 577 },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34445,	-- A Taste of Iron
					}),
					q(34446, {	-- The Home Stretch (H)
						["provider"] = { "n", 80521 },	-- Thaelin Darkanvil
						["coord"] = { 40.1, 48.4, 577 },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34445,	-- A Taste of Iron
					}),
					q(34425, {	-- The Kargathar Proving Grounds
						["provider"] = { "n", 78560 },	-- Archmage Khadgar
						["coord"] = { 71.9, 40.4, 577 },
						["sourceQuest"] = 34423,	-- Altar Altercation
					}),
					q(34393, {	-- The Portal's Power
						["provider"] = { "n", 78558 },	-- Archmage Khadgar
						["coord"] = { 54.6, 48.2, 577 },
						["sourceQuest"] = 34392,	-- Onslaught's End
						["g"] = {
							i(112387),	-- Iron Horde Bolt-Thrower
							i(112388),	-- Iron Horde Tomahawk
							i(112389),	-- Iron Horde Warcudgel
							i(112391),	-- Iron Horde Hatchet
							i(112392),	-- Iron Horde Ritual Staff
							i(112393),	-- Iron Horde Waraxe
							i(112395),	-- Iron Horde Bramblestaff
							i(120304),	-- Iron Horde Carving Knife
						},
					}),
					q(34437, {	-- The Prodigal Frostwolf
						["provider"] = { "n", 79917 },	-- Ga'nar
						["coord"] = { 41.8, 42.0, 577 },
						["sourceQuest"] = 34925,	-- Polishing the Iron Throne
					}),
					q(34958, {	-- The Shadow of the Worldbreaker
						["provider"] = { "n", 78568 },	-- Thaelin Darkanvil
						["coord"] = { 44.0, 29.6, 577 },
						["sourceQuest"] = 34439,	-- The Battle of the Forge
					}),
					q(34432, {	-- The Shadowmoon Clan (A)
						["provider"] = { "n", 78554 },	-- Vindicator Maraad
						["coord"] = { 80.7, 45.3, 578 },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34429,	-- Kill Your Hundred
						["g"] = {
							i(112664),	-- Voidgazer Cap
							i(112665),	-- Voidgazer Chain Hood
							i(112663),	-- Voidgazer Headguard
							i(112666),	-- Voidgazer Headcover
						},
					}),
					q(34739, {	-- The Shadowmoon Clan (H)
						["provider"] = { "n", 78553 },	-- Thrall
						["coord"] = { 81.5, 44.7, 578 },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34429,	-- Kill Your Hundred
						["g"] = {
							i(112664),	-- Voidgazer Cap
							i(112665),	-- Voidgazer Chain Hood
							i(112663),	-- Voidgazer Headguard
							i(112666),	-- Voidgazer Headcover
						},
					}),
					q(35242, {	-- Vengeance for the Fallen (A)
						["provider"] = { "n", 81763 },	-- Rephuura
						["coord"] = { 62.2, 52.9, 577 },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34420,	-- The Cost of War
					}),
					q(35241, {	-- Vengeance for the Fallen (H)
						["provider"] = { "n", 81761 },	-- Ashka
						["coord"] = { 62.2, 52.9, 577 },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34420,	-- The Cost of War
					}),
					q(34434, {	-- Yrel (A)
						["provider"] = { "n", 78994 },	-- Yrel
						["coord"] = { 45.1, 15.9, 578 },
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 34429,	-- Kill Your Hundred
					}),
					q(34740, {	-- Yrel (H)
						["provider"] = { "n", 78994 },	-- Yrel
						["coord"] = { 45.1, 15.9, 578 },
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 34429,	-- Kill Your Hundred
					}),
				}),
				n(ZONE_DROPS, sharedData({["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 } },{
					i(112436, {	-- Mismatched Cloth Gloves
						["cr"] = 78651,	-- Shattered Hand Bonechopper
					}),
					i(112438, {	-- Mismatched Leather Gloves
						["cr"] = 78651,	-- Shattered Hand Bonechopper
					}),
					i(112435, {	-- Mismatched Mail Gloves
						["cr"] = 78651,	-- Shattered Hand Bonechopper
					}),
					i(112437, {	-- Mismatched Plate Gauntlets
						["crs"] = {
							78651,	-- Shattered Hand Bonechopper
							78650,	-- Shattered Hand Torturer
						},
					}),
					i(112471, {	-- Jungle-Chopper Bracers
						["crs"] = {
							78507,	-- Bleeding Hollow Savage
							78510,	-- Bleeding Hollow Hatchet
						},
					}),
					i(112468, {	-- Jungle-Chopper Manacles
						["crs"] = {
							78507,	-- Bleeding Hollow Savage
							78510,	-- Bleeding Hollow Hatchet
						},
					}),
					i(112470, {	-- Jungle-Chopper Wristcovers
						["crs"] = {
							78507,	-- Bleeding Hollow Savage
							78509,	-- Bleeding Hollow Berserker
						},
					}),
					i(112469, {	-- Jungle-Chopper Wristplates
						["crs"] = {
							78507,	-- Bleeding Hollow Savage
							78510,	-- Bleeding Hollow Hatchet
						},
					}),
					i(112660, {	-- Blackrock Slippers
						["cr"] = 81357,	-- Blackrock Slaghauler
					}),
					i(112662, {	-- Blackrock Moccasins
						["cr"] = 81357,	-- Blackrock Slaghauler
					}),
					i(112661, {	-- Blackrock Chain Boots
						["cr"] = 81357,	-- Blackrock Slaghauler
					}),
					i(112659, {	-- Blackrock Infantry Warboots
						["crs"] = {
							81357,	-- Blackrock Slaghauler
							81367,	-- Blackrock Forgeworker
						},
					}),
				})),
			},
		}),
	}),
});
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	m(DRAENOR, {
		m(ASSAULT_ON_THE_DARK_PORTAL, {
			n(QUESTS, {
				q(35297),	-- FLAG: Army Pushed - triggers during "Blaze of Glory" when you approach Khadgar around 67.6,60.5
				q(35983),	-- FLAG: Hansel Event Complete - triggers during "Onslaught's End" when door to Cho'gal is opened
				q(34440),	-- FLAG: Khadgar out of Portal - triggers just before turning in "Ga'nar of the Frostwolf" (questID 34442) or "Polishing the Iron Throne" (questID 34925)
				q(35253),	-- FLAG: Thaelin Event Complete - triggers during "Onslaught's End" when door to Teron'gor is opened
			}),
		}),
	}),
})));