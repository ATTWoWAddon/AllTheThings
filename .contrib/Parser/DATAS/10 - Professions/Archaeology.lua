ARCHAEOLOGY_ARAKKOA = createHeader({
	readable = "Archaeology: Arakkoa",
	icon = 441139,
	text = {
		en = "Archaeology: Arakkoa",
	},
});
ARCHAEOLOGY_DEMONIC = createHeader({
	readable = "Archaeology: Demonic",
	icon = 441139,
	text = {
		en = "Archaeology: Demonic",
	},
});
ARCHAEOLOGY_DRAENORCLANS = createHeader({
	readable = "Archaeology: Draenor Clans",
	icon = 441139,
	text = {
		en = "Archaeology: Draenor Clans",
	},
});
ARCHAEOLOGY_DRUST = createHeader({
	readable = "Archaeology: Drust",
	icon = 441139,
	text = {
		en = "Archaeology: Drust",
	},
});
ARCHAEOLOGY_HIGHBORNE = createHeader({
	readable = "Archaeology: Highborne",
	icon = 441139,
	text = {
		en = "Archaeology: Highborne",
	},
});
ARCHAEOLOGY_HIGHMOUNTAIN = createHeader({
	readable = "Archaeology: Highmountain",
	icon = 441139,
	text = {
		en = "Archaeology: Highmountain",
	},
});
ARCHAEOLOGY_MANTID = createHeader({
	readable = "Archaeology: Mantid",
	icon = 441139,
	text = {
		en = "Archaeology: Mantid",
	},
});
ARCHAEOLOGY_MOGU = createHeader({
	readable = "Archaeology: Mogu",
	icon = 441139,
	text = {
		en = "Archaeology: Mogu",
	},
});
ARCHAEOLOGY_OGRE = createHeader({
	readable = "Archaeology: Ogre",
	icon = 441139,
	text = {
		en = "Archaeology: Ogre",
	},
});
ARCHAEOLOGY_PANDAREN = createHeader({
	readable = "Archaeology: Pandaren",
	icon = 441139,
	text = {
		en = "Archaeology: Pandaren",
	},
});
ARCHAEOLOGY_ZANDALARI = createHeader({
	readable = "Archaeology: Zandalari",
	icon = 441139,
	text = {
		en = "Archaeology: Zandalari",
	},
});
local RESTORED_ARTIFACT = 87399;
root(ROOTS.Professions, prof(ARCHAEOLOGY, bubbleDownSelf({
	["requireSkill"] = ARCHAEOLOGY,
	["timeline"] = { ADDED_4_0_3_LAUNCH },
}, {
	expansion(EXPANSION.CATA, {
		n(ACHIEVEMENTS, {
			ach(4857),	-- Journeyman Archaeologist
			ach(4919),	-- Expert Archaeologist
			ach(4920),	-- Artisan Archaeologist
			ach(4921),	-- Master Archaeologist
			ach(4922),	-- Grand Master Archaeologist
			ach(4923),	-- Illustrious Grand Master Archaeologist
			ach(5193, {	-- Blue Streak
				crit(15058, {	-- Notched Sword of Tunadil the Redeemer
					["provider"] = { "i", 64337 },	-- Notched Sword of Tunadil the Redeemer
				}),
				crit(15059, {	-- Dented Shield of Horuz Killcrow
					["provider"] = { "i", 64362 },	-- Dented Shield of Horuz Killcrow
				}),
				crit(15060, {	-- Scorched Staff of Shadow Priest Anund
					["provider"] = { "i", 64366 },	-- Scorched Staff of Shadow Priest Anund
				}),
				crit(15095, {	-- Silver Kris of Korl
					["provider"] = { "i", 64483 },	-- Silver Kris of Korl
				}),
			}),
			ach(5470),	-- Diggerest
			ach(5469),	-- Diggerer
			ach(5315),	-- Digger
			ach(5511, {	-- It's Always in the Last Place You Look
				crit(16197),	-- Draenei
				crit(16198),	-- Dwarf
				crit(16199),	-- Fossil
				crit(16200),	-- Nerubian
				crit(16201),	-- Night Elf
				crit(16202),	-- Orc
				crit(16203),	-- Tol'vir
				crit(16204),	-- Troll
				crit(16205),	-- Vrykul
			}),
			ach(4859, {	-- Kings Under the Mountain
				crit(15062, {	-- Mithril Chain of Angerforge
					["provider"] = { "i", 64368 },	-- Mithril Chain of Angerforge
				}),
				crit(15063, {	-- Moltenfist's Jeweled Goblet
					["provider"] = { "i", 63414 },	-- Moltenfist's Jeweled Goblet
				}),
				crit(15064, {	-- Winged Helm of Corehammer
					["provider"] = { "i", 64343 },	-- Winged Helm of Corehammer
				}),
				crit(15065, {	-- Ironstar's Petrified Shield
					["provider"] = { "i", 64344 },	-- Ironstar's Petrified Shield
				}),
				crit(15066, {	-- Skull Staff of Shadowforge
					["provider"] = { "i", 64371 },	-- Skull Staff of Shadowforge
				}),
				crit(15068, {	-- Spiked Gauntlets of Anvilrage
					["provider"] = { "i", 64485 },	-- Spiked Gauntlets of Anvilrage
				}),
				crit(15069, {	-- Warmaul of Burningeye
					["provider"] = { "i", 64484 },	-- Warmaul of Burningeye
				}),
				i(245426, {	-- Dark Iron Brazier (DECOR!)
					["timeline"] = { ADDED_11_2_7 },
				}),
			}),
			ach(4858, {	-- Seven Scepters
				crit(15051, {	-- Scepter of Charlga Razorflank
					["provider"] = { "i", 64367 },	-- Scepter of Charlga Razorflank
				}),
				crit(15050, {	-- Atal'ai Scepter
					["provider"] = { "i", 64348 },	-- Atal'ai Scepter
				}),
				crit(15052, {	-- Scepter of Xavius
					["provider"] = { "i", 64382 },	-- Scepter of Xavius
				}),
				crit(15071, {	-- Scepter of Nekros Skullcrusher
					["provider"] = { "i", 64420 },	-- Scepter of Nekros Skullcrusher
				}),
				crit(15074, {	-- Scepter of the Nathrezim
					["provider"] = { "i", 64444 },	-- Scepter of the Nathrezim
				}),
				crit(15092, {	-- Scepter of Nezar'Azret
					["provider"] = { "i", 64475 },	-- Scepter of Nezar'Azret
				}),
				crit(15096, {	-- Scepter of Bronzebeard
					["provider"] = { "i", 64487 },	-- Scepter of Bronzebeard
				}),
			}),
			ach(5301, {	-- The Boy Who Would be King
				crit(15100, {	-- Cat Statue with Emerald Eyes
					["provider"] = { "i", 64653 },	-- Cat Statue with Emerald Eyes
				}),
				crit(15101, {	-- Soapstone Scarab Necklace
					["provider"] = { "i", 64654 },	-- Soapstone Scarab Necklace
				}),
				crit(15102, {	-- Tiny Oasis Mosaic
					["provider"] = { "i", 64655 },	-- Tiny Oasis Mosaic
				}),
				crit(15103, {	-- Engraved Scimitar Hilt
					["provider"] = { "i", 64656 },	-- Engraved Scimitar Hilt
				}),
				crit(15104, {	-- Sketch of a Desert Palace
					["provider"] = { "i", 64658 },	-- Sketch of a Desert Palace
				}),
				crit(15105, {	-- Canopic Jar
					["provider"] = { "i", 64657 },	-- Canopic Jar
				}),
			}),
			ach(5192, {	-- The Harder they Fall
				crit(15061, {	-- Tiny Bronze Scorpion
					["provider"] = { "i", 64389 },	-- Tiny Bronze Scorpion
				}),
				crit(15070, {	-- Maul of Stone Guard Mur'og
					["provider"] = { "i", 64417 },	-- Maul of Stone Guard Mur'og
				}),
				crit(15072, {	-- Gray Candle Stub
					["provider"] = { "i", 64418 },	-- Gray Candle Stub
				}),
				crit(15073, {	-- Rusted Steak Knife
					["provider"] = { "i", 64419 },	-- Rusted Steak Knife
				}),
			}),
			ach(4854, {	-- I Had It in My Hand
				title(148),	-- Assistant Professor <Name>
			}),
			ach(4855, {	-- What was Briefly Yours is Now Mine
				title(149),	-- Associate Professor <Name>
			}),
			ach(4856, {	-- It Belongs in a Museum!
				title(150),	-- Professor <Name>
			}),
			ach(5191, {	-- Tragedy in Three Acts
				crit(15053, {	-- Delicate Music Box
					["provider"] = { "i", 64357 },	-- Delicate Music Box
				}),
				crit(15054, {	-- Cloak Clasp with Antlers
					["provider"] = { "i", 63407 },	-- Cloak Clasp with Antlers
				}),
				crit(15055, {	-- Hairpin of Silver and Malachite
					["provider"] = { "i", 64356 },	-- Hairpin of Silver and Malachite
				}),
				crit(15056, {	-- Chest of Tiny Glass Animals
					["provider"] = { "i", 64379 },	-- Chest of Tiny Glass Animals
				}),
				crit(15057, {	-- Cracked Crystal Vial
					["provider"] = { "i", 64381 },	-- Cracked Crystal Vial
				}),
				crit(15099, {	-- Silver Scroll Case
					["provider"] = { "i", 64648 },	-- Silver Scroll Case
				}),
			}),
		}),
		n(VENDORS, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
			["crs"] = {
				64922,	-- Brann Bronzebeard <Archaeology Trainer>
				-- #if AFTER WOD
				87365,	-- Grakis <Archaeology Fragments>
				88253,	-- Srikka <Archaeology Fragments>
				-- #if AFTER LEGION
				93538,	-- Dariness the Learned <Archaeology Trainer>
				-- #if AFTER BFA
				136106,	-- Jane Hudson <Archaeology Trainer>
				122701,	-- Examiner Alerinda <Archaeology Trainer>
				-- #endif
				-- #endif
				-- #endif
			},
			["coords"] = {
				{ 83.6, 31.0, VALE_OF_ETERNAL_BLOSSOMS },
				-- #if AFTER WOD
				{ 49.0, 33.8, STORMSHIELD },
				{ 74.6, 31.8, WARSPEAR},
				-- #if AFTER LEGION
				{ 40.8, 26.4, LEGION_DALARAN},
				-- #if AFTER BFA
				{ 68.4, 8.6, BORALUS },
				{ 43.0, 44.0, DAZARALOR},
				-- #endif
				-- #endif
				-- #endif
			},
			["groups"] = sharedData({
				["cost"] = {{"i", RESTORED_ARTIFACT, 1}},
			}, {
				i(87534, {	-- Crate of Draenei Archaeology Fragments
					currency(ARCH_CURRENCY_DRAENEI)
				}),
				i(87533, {	-- Crate of Dwarven Archaeology Fragments
					currency(ARCH_CURRENCY_DWARF),
				}),
				i(87535, {	-- Crate of Fossil Archaeology Fragments
					currency(ARCH_CURRENCY_FOSSIL),
				}),
				i(87536, {	-- Crate of Night Elf Archaeology Fragments
					currency(ARCH_CURRENCY_NIGHTELF),
				}),
				i(87537, {	-- Crate of Nerubian Archaeology Fragments
					currency(ARCH_CURRENCY_NERUBIAN),
				}),
				i(87538, {	-- Crate of Orc Archaeology Fragments
					currency(ARCH_CURRENCY_ORC),
				}),
				i(87539, {	-- Crate of Tol'vir Archaeology Fragments
					currency(ARCH_CURRENCY_TOLVIR),
					applyclassicphase(MOP_PHASE_ESCALATION, i(97986, {	-- Digmaster's Earthblade (QI!)
						["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3_LAUNCH },
						-- Wouter NOTE: in MoP Classic, this started dropping in Phase 2 (Landfall) already
						-- #if BEFORE 5.5.3
						["description"] = "This is not supposed to be in the game until Phase 4 and doesn't work yet, keep it in your bank until then.",
						-- #endif
					})),
				}),
				i(87540, {	-- Crate of Troll Archaeology Fragments
					currency(ARCH_CURRENCY_TROLL),
				}),
				i(87541, {	-- Crate of Vrykul Archaeology Fragments
					currency(ARCH_CURRENCY_VRYKUL),
				}),
			}),
		})),
	}),
	expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
		n(ACHIEVEMENTS, {
			ach(6837),	-- Zen Master Archaeologist
			ach(8223, {	-- Collector: Ancient Sap Feeders (20)
				["provider"] = { "i", 95376 },	-- Ancient Sap Feeder
				["timeline"] = { ADDED_5_2_0 },
			}),
			ach(8222, {	-- Collector: Ancient Sap Feeders (5)
				["provider"] = { "i", 95376 },	-- Ancient Sap Feeder
				["timeline"] = { ADDED_5_2_0 },
			}),
			ach(7365, {	-- Collector: Apothecary Tins (20)
				["provider"] = { "i", 79903 },	-- Apothecary Tins
			}),
			ach(7345, {	-- Collector: Apothecary Tins (5)
				["provider"] = { "i", 79903 },	-- Apothecary Tins
			}),
			ach(8221, {	-- Collector: Banners of the Mantid Empire (20)
				["provider"] = { "i", 95375 },	-- Banner of the Mantid Empire
				["timeline"] = { ADDED_5_2_0 },
			}),
			ach(8220, {	-- Collector: Banners of the Mantid Empire (5)
				["provider"] = { "i", 95375 },	-- Banner of the Mantid Empire
				["timeline"] = { ADDED_5_2_0 },
			}),
			ach(7363, {	-- Collector: Carved Bronze Mirrors (20)
				["provider"] = { "i", 79901 },	-- Carved Bronze Mirror
			}),
			ach(7343, {	-- Collector: Carved Bronze Mirrors (5)
				["provider"] = { "i", 79901 },	-- Carved Bronze Mirror
			}),
			ach(7369, {	-- Collector: Cracked Mogu Runestones (20)
				["provider"] = { "i", 79909 },	-- Cracked Mogu Runestone
			}),
			ach(7349, {	-- Collector: Cracked Mogu Runestones (5)
				["provider"] = { "i", 79909 },	-- Cracked Mogu Runestone
			}),
			ach(7373, {	-- Collector: Edicts of the Thunder King (20)
				["provider"] = { "i", 79913 },	-- Edicts of the Thunder King
			}),
			ach(7353, {	-- Collector: Edicts of the Thunder King (5)
				["provider"] = { "i", 79913 },	-- Edicts of the Thunder King
			}),
			ach(7362, {	-- Collector: Empty Kegs of Brewfather Xin Wo Yin (20)
				["provider"] = { "i", 79900 },	-- Empty Keg
			}),
			ach(7342, {	-- Collector: Empty Kegs of Brewfather Xin Wo Yin (5)
				["provider"] = { "i", 79900 },	-- Empty Keg
			}),
			ach(7364, {	-- Collector: Gold-Inlaid Porcelain Funerary Figurines (20)
				["provider"] = { "i", 79902 },	-- Gold-Inlaid Figurine
			}),
			ach(7344, {	-- Collector: Gold-Inlaid Porcelain Funerary Figurines (5)
				["provider"] = { "i", 79902 },	-- Gold-Inlaid Figurine
			}),
			ach(8227, {	-- Collector: Inert Sound Beacons (20)
				["provider"] = { "i", 95378 },	-- Inert Sound Beacon
				["timeline"] = { ADDED_5_2_0 },
			}),
			ach(8226, {	-- Collector: Inert Sound Beacons (5)
				["provider"] = { "i", 95378 },	-- Inert Sound Beacon
				["timeline"] = { ADDED_5_2_0 },
			}),
			ach(7374, {	-- Collector: Iron Amulets (20)
				["provider"] = { "i", 79914 },	-- Iron Amulet
			}),
			ach(7354, {	-- Collector: Iron Amulets (5)
				["provider"] = { "i", 79914 },	-- Iron Amulet
			}),
			ach(8235, {	-- Collector: Kypari Sap Containers (20)
				["provider"] = { "i", 95382 },	-- Kypari Sap Container
				["timeline"] = { ADDED_5_2_0 },
			}),
			ach(8234, {	-- Collector: Kypari Sap Containers (5)
				["provider"] = { "i", 95382 },	-- Kypari Sap Container
				["timeline"] = { ADDED_5_2_0 },
			}),
			ach(7368, {	-- Collector: Manacles of Rebellion (20)
				["provider"] = { "i", 79908 },	-- Manacles of Rebellion
			}),
			ach(7348, {	-- Collector: Manacles of Rebellion (5)
				["provider"] = { "i", 79908 },	-- Manacles of Rebellion
			}),
			ach(8231, {	-- Collector: Mantid Lamps (20)
				["provider"] = { "i", 95380 },	-- Mantid Lamp
				["timeline"] = { ADDED_5_2_0 },
			}),
			ach(8230, {	-- Collector: Mantid Lamps (5)
				["provider"] = { "i", 95380 },	-- Mantid Lamp
				["timeline"] = { ADDED_5_2_0 },
			}),
			ach(7376, {	-- Collector: Mogu Coins (20)
				["provider"] = { "i", 79916 },	-- Mogu Coin
			}),
			ach(7356, {	-- Collector: Mogu Coins (5)
				["provider"] = { "i", 79916 },	-- Mogu Coin
			}),
			ach(7359, {	-- Collector: Pandaren Game Boards (20)
				["provider"] = { "i", 79897 },	-- Pandaren Game Board
			}),
			ach(7339, {	-- Collector: Pandaren Game Boards (5)
				["provider"] = { "i", 79897 },	-- Pandaren Game Board
			}),
			ach(7358, {	-- Collector: Pandaren Tea Sets (20)
				["provider"] = { "i", 79896 },	-- Pandaren Tea Set
			}),
			ach(7338, {	-- Collector: Pandaren Tea Sets (5)
				["provider"] = { "i", 79896 },	-- Pandaren Tea Set
			}),
			ach(7366, {	-- Collector: Pearls of Yu'lon (20)
				["provider"] = { "i", 79904 },	-- Pearl of Yu'lon
			}),
			ach(7346, {	-- Collector: Pearls of Yu'lon (5)
				["provider"] = { "i", 79904 },	-- Pearl of Yu'lon
			}),
			ach(7371, {	-- Collector: Petrified Bone Whips (20)
				["provider"] = { "i", 79911 },	-- Petrified Bone Whip
			}),
			ach(7351, {	-- Collector: Petrified Bone Whips (5)
				["provider"] = { "i", 79911 },	-- Petrified Bone Whip
			}),
			ach(8233, {	-- Collector: Pollen Collectors (20)
				["provider"] = { "i", 95381 },	-- Pollen Collector
				["timeline"] = { ADDED_5_2_0 },
			}),
			ach(8232, {	-- Collector: Pollen Collectors (5)
				["provider"] = { "i", 95381 },	-- Pollen Collector
				["timeline"] = { ADDED_5_2_0 },
			}),
			ach(8225, {	-- Collector: Praying Mantids (20)
				["provider"] = { "i", 95377 },	-- The Praying Mantid
				["timeline"] = { ADDED_5_2_0 },
			}),
			ach(8224, {	-- Collector: Praying Mantids (5)
				["provider"] = { "i", 95377 },	-- The Praying Mantid
				["timeline"] = { ADDED_5_2_0 },
			}),
			ach(8229, {	-- Collector: Remains of Paragons (20)
				["provider"] = { "i", 95379 },	-- Remains of a Paragon
				["timeline"] = { ADDED_5_2_0 },
			}),
			ach(8228, {	-- Collector: Remains of Paragons (5)
				["provider"] = { "i", 95379 },	-- Remains of a Paragon
				["timeline"] = { ADDED_5_2_0 },
			}),
			ach(7367, {	-- Collector: Standards of Niuzao (20)
				["provider"] = { "i", 79905 },	-- Standard of Niuzao
			}),
			ach(7347, {	-- Collector: Standards of Niuzao (5)
				["provider"] = { "i", 79905 },	-- Standard of Niuzao
			}),
			ach(7370, {	-- Collector: Terracotta Arms (20)
				["provider"] = { "i", 79910 },	-- Terracotta Arm
			}),
			ach(7350, {	-- Collector: Terracotta Arms (5)
				["provider"] = { "i", 79910 },	-- Terracotta Arm
			}),
			ach(7372, {	-- Collector: Thunder King Insignias (20)
				["provider"] = { "i", 79912 },	-- Thunder King Insignia
			}),
			ach(7352, {	-- Collector: Thunder King Insignias (5)
				["provider"] = { "i", 79912 },	-- Thunder King Insignia
			}),
			ach(7360, {	-- Collector: Twin Stein Sets of Brewfather Quan Tou Kuo (20)
				["provider"] = { "i", 79898 },	-- Twin Stein Set,
			}),
			ach(7340, {	-- Collector: Twin Stein Sets of Brewfather Quan Tou Kuo (5)
				["provider"] = { "i", 79898 },	-- Twin Stein Set,
			}),
			ach(7361, {	-- Collector: Walking Canes of Brewfather Ren Yun (20)
				["provider"] = { "i", 79899 },	-- Walking Cane
			}),
			ach(7341, {	-- Collector: Walking Canes of Brewfather Ren Yun (5)
				["provider"] = { "i", 79899 },	-- Walking Cane
			}),
			ach(7375, {	-- Collector: Warlord's Branding Irons (20)
				["provider"] = { "i", 79915 },	-- Warlord's Branding Iron
			}),
			ach(7355, {	-- Collector: Warlord's Branding Irons (5)
				["provider"] = { "i", 79915 },	-- Warlord's Branding Iron
			}),
			ach(7377, {	-- Collector: Worn Monument Ledgers (20)
				["provider"] = { "i", 79917 },	-- Worn Monument Ledger
			}),
			ach(7357, {	-- Collector: Worn Monument Ledgers (5)
				["provider"] = { "i", 79917 },	-- Worn Monument Ledger
			}),
			ach(7337, {	-- Documents of a Dark History
				crit(20649, {	-- Edicts of the Thunder King
					["provider"] = { "i", 79913 },	-- Edicts of the Thunder King
				}),
				crit(20650, {	-- Worn Monument Ledger
					["provider"] = { "i", 79917 },	-- Worn Monument Ledger
				}),
			}),
			ach(7334, {	-- Instruments of Cruelty
				crit(20639, {	-- Manacles of Rebellion
					["provider"] = { "i", 79908 },	-- Manacles of Rebellion
				}),
				crit(20640, {	-- Petrified Bone Whip
					["provider"] = { "i", 79911 },	-- Petrified Bone Whip
				}),
				crit(20641, {	-- Warlord's Branding Iron
					["provider"] = { "i", 79915 },	-- Warlord's Branding Iron
				}),
				crit(20642, {	-- Anatomical Dummy
					["provider"] = { "i", 89614 },	-- Anatomical Dummy (TOY!)
				}),
			}),
			ach(8219, bubbleDownSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- History of the Mantid
				crit(22947, {	-- Pristine Banner of the Mantid Empire
					["_quests"] = { 32686 },
				}),
				crit(22948, {	-- Pristine Ancient Sap Feeder
					["_quests"] = { 32687 },
				}),
				crit(22949, {	-- Pristine Praying Mantid
					["_quests"] = { 32688 },
				}),
				crit(22950, {	-- Pristine Sound Beacon
					["_quests"] = { 32689 },
				}),
				crit(22951, {	-- Pristine Remains of a Paragon
					["_quests"] = { 32690 },
				}),
				crit(22952, {	-- Pristine Mantid Lamp
					["_quests"] = { 32691 },
				}),
				crit(22953, {	-- Pristine Pollen Collector
					["_quests"] = { 32692 },
				}),
				crit(22954, {	-- Pristine Kypari Sap Container
					["_quests"] = { 32693 },
				}),
			})),
			ach(7336, {	-- Stone Servants
				crit(20647, {	-- Terracotta Arm
					["provider"] = { "i", 79910 },	-- Terracotta Arm
				}),
				crit(20648, {	-- Quilen Statuette
					["provider"] = { "i", 89611 },	-- Quilen Statuette
				}),
			}),
			ach(7335, {	-- Symbols of Strength
				crit(20643, {	-- Iron Amulet
					["provider"] = { "i", 79914 },	-- Iron Amulet
				}),
				crit(20644, {	-- Cracked Mogu Runestone
					["provider"] = { "i", 79909 },	-- Cracked Mogu Runestone
				}),
				crit(20645, {	-- Mogu Coin
					["provider"] = { "i", 79916 },	-- Mogu Coin
				}),
				crit(20646, {	-- Thunder King Insignia
					["provider"] = { "i", 79912 },	-- Thunder King Insignia
				}),
			}),
			ach(7332, {	-- The Broken Hearted
				crit(20632, {	-- Carved Bronze Mirror
					["provider"] = { "i", 79901 },	-- Carved Bronze Mirror
				}),
				crit(20633, {	-- Gold-Inlaid Figurine
					["provider"] = { "i", 79902 },	-- Gold-Inlaid Figurine
				}),
				crit(20634, {	-- Apothecary Tins
					["provider"] = { "i", 79903 },	-- Apothecary Tins
				}),
			}),
			ach(7333, {	-- The Four Celestials
				crit(20635, {	-- Pearl of Yu'lon
					["provider"] = { "i", 79904 },	-- Pearl of Yu'lon
				}),
				crit(20636, {	-- Standard of Niuzao
					["provider"] = { "i", 79905 },	-- Standard of Niuzao
				}),
				crit(20637, {	-- Umbrella of Chi-Ji
					["provider"] = { "i", 89684 },	-- Umbrella of Chi-Ji
				}),
				crit(20638, {	-- Spear of Xuen
					["provider"] = { "i", 89685 },	-- Spear of Xuen
				}),
			}),
			ach(7612, {	-- The Seat of Knowledge
				title(208),	-- <Name>, Seeker of Knowledge
				crit(21954, {	-- Pristine Manacles of Rebellion
					["_quests"] = { 31786 },
				}),
				crit(21956, {	-- Pristine Mogu Runestone
					["_quests"] = { 31787 },
				}),
				crit(21958, {	-- Pristine Terracotta Arm
					["_quests"] = { 31788 },
				}),
				crit(21960, {	-- Pristine Petrified Bone Whip
					["_quests"] = { 31789 },
				}),
				crit(21965, {	-- Pristine Thunder King Insignia
					["_quests"] = { 31790 },
				}),
				crit(21967, {	-- Pristine Edicts of the Thunder King
					["_quests"] = { 31791 },
				}),
				crit(21969, {	-- Pristine Iron Amulet
					["_quests"] = { 31792 },
				}),
				crit(21970, {	-- Pristine Branding Iron
					["_quests"] = { 31793 },
				}),
				crit(21971, {	-- Pristine Mogu Coin
					["_quests"] = { 31794 },
				}),
				crit(21972, {	-- Pristine Monument Ledger
					["_quests"] = { 31805 },
				}),
				crit(21973, {	-- Pristine Pandaren Tea Set
					["_quests"] = { 31795 },
				}),
				crit(21974, {	-- Pristine Game Board
					["_quests"] = { 31796 },
				}),
				crit(21975, {	-- Pristine Twin Stein Set
					["_quests"] = { 31797 },
				}),
				crit(21976, {	-- Pristine Walking Cane
					["_quests"] = { 31798 },
				}),
				crit(21977, {	-- Pristine Empty Keg
					["_quests"] = { 31799 },
				}),
				crit(21978, {	-- Pristine Carved Bronze Mirror
					["_quests"] = { 31800 },
				}),
				crit(21979, {	-- Pristine Gold-Inlaid Figurine
					["_quests"] = { 31801 },
				}),
				crit(21980, {	-- Pristine Apothecary Tins
					["_quests"] = { 31802 },
				}),
				crit(21981, {	-- Pristine Pearl of Yu'lon
					["_quests"] = { 31803 },
				}),
				crit(21982, {	-- Pristine Standard of Niuzao
					["_quests"] = { 31804 },
				}),
			}),
			ach(7331, {	-- The Three Brew Fathers
				crit(20629, {	-- Twin Stein Set
					["provider"] = { "i", 79898 },	-- Twin Stein Set
				}),
				crit(20630, {	-- Walking Cane
					["provider"] = { "i", 79899 },	-- Walking Cane
				}),
				crit(20631, {	-- Empty Keg
					["provider"] = { "i", 79900 },	-- Empty Keg
				}),
			}),
		}),
		n(QUESTS, {
			n(ARCHAEOLOGY_MANTID, bubbleDownSelf({ ["timeline"] = { ADDED_5_2_0 } }, {
				q(32686, {	-- Pristine Banner of the Mantid Empire
					["provider"] = { "i", 95383 },	-- Pristine Banner of the Mantid Empire
				}),
				q(32687, {	-- Pristine Ancient Sap Feeder
					["provider"] = { "i", 95384 },	-- Pristine Ancient Sap Feeder
				}),
				q(32688, {	-- Pristine Praying Mantid
					["provider"] = { "i", 95385 },	-- Pristine Praying Mantid
				}),
				q(32689, {	-- Pristine Sound Beacon
					["provider"] = { "i", 95386 },	-- Pristine Sound Beacon
				}),
				q(32690, {	-- Pristine Remains of a Paragon
					["provider"] = { "i", 95387 },	-- Pristine Remains of a Paragon
				}),
				q(32691, {	-- Pristine Mantid Lamp
					["provider"] = { "i", 95388 },	-- Pristine Mantid Lamp
				}),
				q(32692, {	-- Pristine Pollen Collector
					["provider"] = { "i", 95389 },	-- Pristine Pollen Collector
				}),
				q(32693, {	-- Pristine Kypari Sap Container
					["provider"] = { "i", 95390 },	-- Pristine Kypari Sap Container
				}),
			})),
			n(ARCHAEOLOGY_MOGU, {
				q(31793, {	-- Pristine Branding Iron
					["provider"] = { "i", 89176 },	-- Pristine Branding Iron
				}),
				q(31791, {	-- Pristine Edicts of the Thunder King
					["provider"] = { "i", 89174 },	-- Pristine Edicts of the Thunder King
				}),
				q(31792, {	-- Pristine Iron Amulet
					["provider"] = { "i", 89175 },	-- Pristine Iron Amulet
				}),
				q(31786, {	-- Pristine Manacles of Rebellion
					["provider"] = { "i", 89169 },	-- Pristine Manacles of Rebellion
				}),
				q(31794, {	-- Pristine Mogu Coin
					["provider"] = { "i", 85477 },	-- Pristine Mogu Coin
				}),
				q(31787, {	-- Pristine Mogu Runestone
					["provider"] = { "i", 89170 },	-- Pristine Mogu Runestone
				}),
				q(31805, {	-- Pristine Monument Ledger
					["provider"] = { "i", 89209 },	-- Pristine Monument Ledger
				}),
				q(31789, {	-- Pristine Petrified Bone Whip
					["provider"] = { "i", 89172 },	-- Pristine Petrified Bone Whip
				}),
				q(31788, {	-- Pristine Terracotta Arm
					["provider"] = { "i", 89171 },	-- Pristine Terracotta Arm
				}),
				q(31790, {	-- Pristine Thunder King Insignia
					["provider"] = { "i", 89173 },	-- Pristine Thunder King Insignia
				}),
			}),
			n(ARCHAEOLOGY_PANDAREN, {
				q(31802, {	-- Pristine Apothecary Tins
					["provider"] = { "i", 89183 },	-- Pristine Apothecary Tins
				}),
				q(31800, {	-- Pristine Carved Bronze Mirror
					["provider"] = { "i", 89181 },	-- Pristine Carved Brone Mirror
				}),
				q(31799, {	-- Pristine Empty Keg
					["provider"] = { "i", 89180 },	-- Pristine Empty Keg
				}),
				q(31796, {	-- Pristine Game Board
					["provider"] = { "i", 85558 },	-- Pristine Game Board
				}),
				q(31801, {	-- Pristine Gold-Inlaid Figurine
					["provider"] = { "i", 89182 },	-- Pristine Gold-Inlaid Figurine
				}),
				q(31795, {	-- Pristine Pandaren Tea Set
					["provider"] = { "i", 85557 },	-- Pristine Pandaren Tea Set
				}),
				q(31803, {	-- Pristine Pearl of Yu'lon
					["provider"] = { "i", 89184 },	-- Pristine Pearl of Yu'lon
				}),
				q(31804, {	-- Pristine Standard of Niuzao
					["provider"] = { "i", 89185 },	-- Pristine Standard of Niuzao
				}),
				q(31797, {	-- Pristine Twin Stein Set
					["provider"] = { "i", 89178 },	-- Pristine Twin Stein Set
				}),
				q(31798, {	-- Pristine Walking Cane
					["provider"] = { "i", 89179 },	-- Pristine Walking Cane
				}),
			}),
		}),
		n(VENDORS, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
			["crs"] = {
				87365,	-- Grakis <Archaeology Fragments>
				88253,	-- Srikka <Archaeology Fragments>
				-- #if AFTER LEGION
				93538,	-- Dariness the Learned <Archaeology Trainer>
				-- #if AFTER BFA
				136106,	-- Jane Hudson <Archaeology Trainer>
				122701,	-- Examiner Alerinda <Archaeology Trainer>
				-- #endif
				-- #endif
			},
			["coords"] = {
				{ 49.0, 33.8, STORMSHIELD },
				{ 74.6, 31.8, WARSPEAR},
				-- #if AFTER LEGION
				{ 40.8, 26.4, LEGION_DALARAN},
				-- #if AFTER BFA
				{ 68.4, 8.6, BORALUS },
				{ 43.0, 44.0, DAZARALOR},
				-- #endif
				-- #endif
			},
			["groups"] = sharedData({
				["cost"] = {{"i", RESTORED_ARTIFACT, 1}},
			}, {
				i(117388, {	-- Crate of Mantid Archaeology Fragments
					currency(ARCH_CURRENCY_MANTID),
				}),
				i(117387, {	-- Crate of Mogu Archaeology Fragments
					currency(ARCH_CURRENCY_MOGU),
				}),
				i(117386, {	-- Crate of Pandaren Archaeology Fragments
					currency(ARCH_CURRENCY_PANDAREN),
				}),
			}),
		})),
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(9409),	-- Draenor Archaeologist
			ach(9414, {	-- Ogre Observer
				crit(25692, {	-- Eye of Har'gunn the Blind
					["provider"] = { "i", 114191 },	-- Eye of Har'gunn the Blind
				}),
				crit(25693, {	-- Gladiator's Shield
					["provider"] = { "i", 114189 },	-- Gladiator's Shield
				}),
				crit(25694, {	-- Imperial Decree Stele
					["provider"] = { "i", 114194 },	-- Imperial Decree Stele
				}),
				crit(25695, {	-- Mortar and Pestle
					["provider"] = { "i", 114190 },	-- Mortar and Pestle
				}),
				crit(25696, {	-- Ogre Figurine
					["provider"] = { "i", 114185 },	-- Ogre Figurine
				}),
				crit(25697, {	-- Pictogram Carving
					["provider"] = { "i", 114187 },	-- Pictogram Carving
				}),
				crit(25698, {	-- Rylak Riding Harness
					["provider"] = { "i", 114193 },	-- Rylak Riding Harness
				}),
				crit(25699, {	-- Stone Dentures
					["provider"] = { "i", 114192 },	-- Stone Dentures
				}),
				crit(25700, {	-- Stone Manacles
					["provider"] = { "i", 114183 },	-- Stone Manacles
				}),
				crit(25701, {	-- Stonemaul Succession Stone
					["provider"] = { "i", 114181 },	-- Stonemaul Succession Stone
				}),
			}),
			ach(9415, {	-- Secrets of Skettis
				crit(25702, {	-- Dreamcatcher
					["provider"] = { "i", 114197 },	-- Dreamcatcher
				}),
				crit(25703, {	-- Burial Urn
					["provider"] = { "i", 114198 },	-- Burial Urn
				}),
				crit(25704, {	-- Decree Scrolls
					["provider"] = { "i", 114199 },	-- Decree Scrolls
				}),
				crit(25705, {	-- Solar Orb
					["provider"] = { "i", 114200 },	-- Solar Orb
				}),
				crit(25706, {	-- Sundial
					["provider"] = { "i", 114201 },	-- Sundial
				}),
				crit(25707, {	-- Talonpriest Mask
					["provider"] = { "i", 114202 },	-- Talonpriest Mask
				}),
				crit(25708, {	-- Outcast Dreamcatcher
					["provider"] = { "i", 114203 },	-- Outcast Dreamcatcher
				}),
				crit(25709, {	-- Apexis Crystal
					["provider"] = { "i", 114204 },	-- Apexis Crystal
				}),
				crit(25710, {	-- Apexis Hieroglyph
					["provider"] = { "i", 114205 },	-- Apexis Hieroglyph
				}),
				crit(25711, {	-- Apexis Scroll
					["provider"] = { "i", 114206 },	-- Apexis Scroll
				}),
				i(258740, {	-- Glorious Pendant of Rukhmar (DECOR!)
					["timeline"] = { ADDED_12_0_0 },
				}),
			}),
			ach(9413, {	-- Strength and Honor
				crit(25673, {	-- Ancestral Talisman
					["provider"] = { "i", 114171 },	-- Ancestral Talisman
				}),
				crit(25674, {	-- Barbed Fishing Hook
					["provider"] = { "i", 114163 },	-- Barbed Fishing Hook
				}),
				crit(25675, {	-- Blackrock Razor
					["provider"] = { "i", 114157 },	-- Blackrock Razor
				}),
				crit(25676, {	-- Calcified Eye in a Jar
					["provider"] = { "i", 114165 },	-- Calcified Eye in a Jar
				}),
				crit(25677, {	-- Ceremonial Tattoo Needles
					["provider"] = { "i", 114167 },	-- Ceremonial Tattoo Needles
				}),
				crit(25678, {	-- Cracked Ivory Idol
					["provider"] = { "i", 114169 },	-- Cracked Ivory Idol
				}),
				crit(25679, {	-- Doomsday Prophecy
					["provider"] = { "i", 114177 },	-- Doomsday Prophecy
				}),
				crit(25680, {	-- Elemental Bellows
					["provider"] = { "i", 114155 },	-- Elemental Bellows
				}),
				crit(25681, {	-- Fang-Scarred Frostwolf Axe
					["provider"] = { "i", 114141 },	-- Fang-Scarred Frostwolf Axe
				}),
				crit(25682, {	-- Flask of Blazegrease
					["provider"] = { "i", 114173 },	-- Flask of Blazegrease
				}),
				crit(25683, {	-- Frostwolf Ancestry Scrimshaw
					["provider"] = { "i", 114143 },	-- Frostwolf Ancestry Scrimshaw
				}),
				crit(25684, {	-- Gronn-Tooth Necklace
					["provider"] = { "i", 114175 },	-- Gronn-Tooth Necklace
				}),
				crit(25685, {	-- Hooked Dagger
					["provider"] = { "i", 114161 },	-- Hooked Dagger
				}),
				crit(25686, {	-- Metalworker's Hammer
					["provider"] = { "i", 114153 },	-- Metalworker's Hammer
				}),
				crit(25687, {	-- Screaming Bullroarer
					["provider"] = { "i", 114149 },	-- Screaming Bullroarer
				}),
				crit(25688, {	-- Warsinger's Drums
					["provider"] = { "i", 114147 },	-- Warsinger's Drums
				}),
				crit(25689, {	-- Warsong Ceremonial Pike
					["provider"] = { "i", 114151 },	-- Warsong Ceremonial Pike
				}),
				crit(25690, {	-- Weighted Chopping Axe
					["provider"] = { "i", 114159 },	-- Weighted Chopping Axe
				}),
				crit(25691, {	-- Wolfskin Snowshoes
					["provider"] = { "i", 114145 },	-- Wolfskin Snowshoes
				}),
			}),
			ach(9412, {	-- Arakkoa Archivist
				crit(25663, {	-- Pristine Dreamcatcher
					["_quests"] = { 36771 },
				}),
				crit(25664, {	-- Pristine Burial Urn
					["_quests"] = { 36772 },
				}),
				crit(25665, {	-- Pristine Decree Scrolls
					["_quests"] = { 36773 },
				}),
				crit(25666, {	-- Pristine Solar Orb
					["_quests"] = { 36774 },
				}),
				crit(25667, {	-- Pristine Sundial
					["_quests"] = { 36775 },
				}),
				crit(25668, {	-- Pristine Talonpriest Mask
					["_quests"] = { 36776 },
				}),
				crit(25669, {	-- Pristine Outcast Dreamcatcher
					["_quests"] = { 36777 },
				}),
				crit(25670, {	-- Pristine Apexis Crystal
					["_quests"] = { 36778 },
				}),
				crit(25671, {	-- Pristine Apexis Hieroglyph
					["_quests"] = { 36779 },
				}),
				crit(25672, {	-- Pristine Apexis Scroll
					["_quests"] = { 36780 },
				}),
			}),
			ach(9419, {	-- Draenor Curator
				crit(25663, {	-- Pristine Dreamcatcher
					["_quests"] = { 36771 },
				}),
				crit(25664, {	-- Pristine Burial Urn
					["_quests"] = { 36772 },
				}),
				crit(25665, {	-- Pristine Decree Scrolls
					["_quests"] = { 36773 },
				}),
				crit(25666, {	-- Pristine Solar Orb
					["_quests"] = { 36774 },
				}),
				crit(25667, {	-- Pristine Sundial
					["_quests"] = { 36775 },
				}),
				crit(25668, {	-- Pristine Talonpriest Mask
					["_quests"] = { 36776 },
				}),
				crit(25669, {	-- Pristine Outcast Dreamcatcher
					["_quests"] = { 36777 },
				}),
				crit(25670, {	-- Pristine Apexis Crystal
					["_quests"] = { 36778 },
				}),
				crit(25671, {	-- Pristine Apexis Hieroglyph
					["_quests"] = { 36779 },
				}),
				crit(25672, {	-- Pristine Apexis Scroll
					["_quests"] = { 36780 },
				}),
				crit(25634, {	-- Pristine Fang-Scarred Frostwolf Axe
					["_quests"] = { 36725 },
				}),
				crit(25635, {	-- Pristine Frostwolf Ancestry Scrimshaw
					["_quests"] = { 36743 },
				}),
				crit(25636, {	-- Pristine Wolfskin Snowshoes
					["_quests"] = { 36744 },
				}),
				crit(25637, {	-- Pristine Warsinger's Drums
					["_quests"] = { 36745 },
				}),
				crit(25638, {	-- Pristine Screaming Bullroarer
					["_quests"] = { 36746 },
				}),
				crit(25639, {	-- Pristine Warsong Ceremonial Pike
					["_quests"] = { 36747 },
				}),
				crit(25640, {	-- Pristine Metalworker's Hammer
					["_quests"] = { 36748 },
				}),
				crit(25641, {	-- Pristine Elemental Bellows
					["_quests"] = { 36749 },
				}),
				crit(25642, {	-- Pristine Blackrock Razor
					["_quests"] = { 36750 },
				}),
				crit(25643, {	-- Pristine Weighted Chopping Axe
					["_quests"] = { 36751 },
				}),
				crit(25644, {	-- Pristine Hooked Dagger
					["_quests"] = { 36752 },
				}),
				crit(25645, {	-- Pristine Barbed Fishing Hook
					["_quests"] = { 36753 },
				}),
				crit(25646, {	-- Pristine Calcified Eye In A Jar
					["_quests"] = { 36754 },
				}),
				crit(25647, {	-- Pristine Ceremonial Tattoo Needles
					["_quests"] = { 36755 },
				}),
				crit(25648, {	-- Pristine Ancestral Talisman
					["_quests"] = { 36756 },
				}),
				crit(25649, {	-- Pristine Cracked Ivory Idol
					["_quests"] = { 36757 },
				}),
				crit(25650, {	-- Pristine Flask of Blazegrease
					["_quests"] = { 36758 },
				}),
				crit(25651, {	-- Pristine Gronn-Tooth Necklace
					["_quests"] = { 36759 },
				}),
				crit(25652, {	-- Pristine Doomsday Prophecy
					["_quests"] = { 36760 },
				}),
				crit(25653, {	-- Pristine Stonemaul Succession Stone
					["_quests"] = { 36761 },
				}),
				crit(25654, {	-- Pristine Stone Manacles
					["_quests"] = { 36762 },
				}),
				crit(25655, {	-- Pristine Ogre Figurine
					["_quests"] = { 36763 },
				}),
				crit(25656, {	-- Pristine Pictogram Carving
					["_quests"] = { 36764 },
				}),
				crit(25657, {	-- Pristine Gladiator's Shield
					["_quests"] = { 36765 },
				}),
				crit(25658, {	-- Pristine Mortar and Pestle
					["_quests"] = { 36766 },
				}),
				crit(25659, {	-- Pristine Eye of Har'guun the Blind
					["_quests"] = { 36767 },
				}),
				crit(25660, {	-- Pristine Stone Dentures
					["_quests"] = { 36768 },
				}),
				crit(25661, {	-- Pristine Rylak Riding Harness
					["_quests"] = { 36769 },
				}),
				crit(25662, {	-- Pristine Imperial Decree Stele
					["_quests"] = { 36770 },
				}),
			}),
			ach(9411, {	-- Highmaul Historian
				crit(25653, {	-- Pristine Stonemaul Succession Stone
					["_quests"] = { 36761 },
				}),
				crit(25654, {	-- Pristine Stone Manacles
					["_quests"] = { 36762 },
				}),
				crit(25655, {	-- Pristine Ogre Figurine
					["_quests"] = { 36763 },
				}),
				crit(25656, {	-- Pristine Pictogram Carving
					["_quests"] = { 36764 },
				}),
				crit(25657, {	-- Pristine Gladiator's Shield
					["_quests"] = { 36765 },
				}),
				crit(25658, {	-- Pristine Mortar and Pestle
					["_quests"] = { 36766 },
				}),
				crit(25659, {	-- Pristine Eye of Har'guun the Blind
					["_quests"] = { 36767 },
				}),
				crit(25660, {	-- Pristine Stone Dentures
					["_quests"] = { 36768 },
				}),
				crit(25661, {	-- Pristine Rylak Riding Harness
					["_quests"] = { 36769 },
				}),
				crit(25662, {	-- Pristine Imperial Decree Stele
					["_quests"] = { 36770 },
				}),
			}),
			ach(9422),	-- The Search For Fact, Not Truth
			ach(9410, {	-- Unite the Clans
				crit(25634, {	-- Pristine Fang-Scarred Frostwolf Axe
					["_quests"] = { 36725 },
				}),
				crit(25635, {	-- Pristine Frostwolf Ancestry Scrimshaw
					["_quests"] = { 36743 },
				}),
				crit(25636, {	-- Pristine Wolfskin Snowshoes
					["_quests"] = { 36744 },
				}),
				crit(25637, {	-- Pristine Warsinger's Drums
					["_quests"] = { 36745 },
				}),
				crit(25638, {	-- Pristine Screaming Bullroarer
					["_quests"] = { 36746 },
				}),
				crit(25639, {	-- Pristine Warsong Ceremonial Pike
					["_quests"] = { 36747 },
				}),
				crit(25640, {	-- Pristine Metalworker's Hammer
					["_quests"] = { 36748 },
				}),
				crit(25641, {	-- Pristine Elemental Bellows
					["_quests"] = { 36749 },
				}),
				crit(25642, {	-- Pristine Blackrock Razor
					["_quests"] = { 36750 },
				}),
				crit(25643, {	-- Pristine Weighted Chopping Axe
					["_quests"] = { 36751 },
				}),
				crit(25644, {	-- Pristine Hooked Dagger
					["_quests"] = { 36752 },
				}),
				crit(25645, {	-- Pristine Barbed Fishing Hook
					["_quests"] = { 36753 },
				}),
				crit(25646, {	-- Pristine Calcified Eye In A Jar
					["_quests"] = { 36754 },
				}),
				crit(25647, {	-- Pristine Ceremonial Tattoo Needles
					["_quests"] = { 36755 },
				}),
				crit(25648, {	-- Pristine Ancestral Talisman
					["_quests"] = { 36756 },
				}),
				crit(25649, {	-- Pristine Cracked Ivory Idol
					["_quests"] = { 36757 },
				}),
				crit(25650, {	-- Pristine Flask of Blazegrease
					["_quests"] = { 36758 },
				}),
				crit(25651, {	-- Pristine Gronn-Tooth Necklace
					["_quests"] = { 36759 },
				}),
				crit(25652, {	-- Pristine Doomsday Prophecy
					["_quests"] = { 36760 },
				}),
			}),
		}),
		n(QUESTS, {
			n(ARCHAEOLOGY_ARAKKOA, {
				q(36778, {	-- Pristine Apexis Crystal
					["provider"] = { "i", 114222 },	-- Pristine Apexis Crystal
				}),
				q(36779, {	-- Pristine Apexis Hieroglyph
					["provider"] = { "i", 114223 },	-- Pristine Apexis Hieroglyph
				}),
				q(36780, {	-- Pristine Apexis Scroll
					["provider"] = { "i", 114224 },	-- Pristine Apexis Scroll
				}),
				q(36772, {	-- Pristine Burial Urn
					["provider"] = { "i", 114216 },	-- Pristine Burial Urn
				}),
				q(36773, {	-- Pristine Decree Scrolls
					["provider"] = { "i", 114217 },	-- Pristine Decree Scrolls
				}),
				q(36771, {	-- Pristine Dreamcatcher
					["provider"] = { "i", 114215 },	-- Pristine Dreamcatcher
				}),
				q(36777, {	-- Pristine Outcast Dreamcatcher
					["provider"] = { "i", 114221 },	-- Pristine Outcast Dreamcatcher
				}),
				q(36774, {	-- Pristine Solar Orb
					["provider"] = { "i", 114218 },	-- Pristine Solar Orb
				}),
				q(36775, {	-- Pristine Sundial
					["provider"] = { "i", 114219 },	-- Pristine Sundial
				}),
				q(36776, {	-- Pristine Talonpriest Mask
					["provider"] = { "i", 114220 },	-- Pristine Talonpriest Mask
				}),
			}),
			n(ARCHAEOLOGY_DRAENORCLANS, {
				q(36756, {	-- Pristine Ancestral Talisman
					["provider"] = { "i", 114172 },	-- Pristine Ancestral Talisman
				}),
				q(36753, {	-- Pristine Barbed Fishing Hook
					["provider"] = { "i", 114164 },	-- Pristine Barbed Fishing Hook
				}),
				q(36750, {	-- Pristine Blackrock Razor
					["provider"] = { "i", 114158 },	-- Pristine Blackrock Razor
				}),
				q(36754, {	-- Pristine Calcified Eye In A Jar
					["provider"] = { "i", 114166 },	-- Pristine Calcified Eye In A Jar
				}),
				q(36755, {	-- Pristine Ceremonial Tattoo Needles
					["provider"] = { "i", 114168 },	-- Pristine Ceremonial Tattoo Needles
				}),
				q(36757, {	-- Pristine Cracked Ivory Idol
					["provider"] = { "i", 114170 },	-- Pristine Cracked Ivory Idol
				}),
				q(36760, {	-- Pristine Doomsday Prophecy
					["provider"] = { "i", 114178 },	-- Pristine Doomsday Prophecy
				}),
				q(36749, {	-- Pristine Elemental Bellows
					["provider"] = { "i", 114156 },	-- Pristine Elemental Bellows
				}),
				q(36725, {	-- Pristine Fang-Scarred Frostwolf Axe
					["provider"] = { "i", 114142 },	-- Pristine Fang-Scarred Frostwolf Axe
				}),
				q(36758, {	-- Pristine Flask of Blazegrease
					["provider"] = { "i", 114174 },	-- Pristine Flask of Blazegrease
				}),
				q(36743, {	-- Pristine Frostwolf Ancestry Scrimshaw
					["provider"] = { "i", 114144 },	-- Pristine Frostwolf Ancestry Scrimshaw
				}),
				q(36759, {	-- Pristine Gronn-Tooth Necklace
					["provider"] = { "i", 114176 },	-- Pristine Gronn-Tooth Necklace
				}),
				q(36752, {	-- Pristine Hooked Dagger
					["provider"] = { "i", 114162 },	-- Pristine Hooked Dagger
				}),
				q(36748, {	-- Pristine Metalworker's Hammer
					["provider"] = { "i", 114154 },	-- Pristine Metalworker's Hammer
				}),
				q(36746, {	-- Pristine Screaming Bullroarer
					["provider"] = { "i", 114150 },	-- Pristine Screaming Bullroarer
				}),
				q(36745, {	-- Pristine Warsinger's Drums
					["provider"] = { "i", 114148 },	-- Pristine Warsinger's Drums
				}),
				q(36747, {	-- Pristine Warsong Ceremonial Pike
					["provider"] = { "i", 114152 },	-- Pristine Warsong Ceremonial Pike
				}),
				q(36751, {	-- Pristine Weighted Chopping Axe
					["provider"] = { "i", 114160 },	-- Pristine Weighted Chopping Axe
				}),
				q(36744, {	-- Pristine Wolfskin Snowshoes
					["provider"] = { "i", 114146 },	-- Pristine Wolfskin Snowshoes
				}),
			}),
			n(ARCHAEOLOGY_OGRE, {
				q(36767, {	-- Pristine Eye of Har'guun
					["provider"] = { "i", 114210 },	-- Pristine Eye of Har'guun the Blind
				}),
				q(36765, {	-- Pristine Gladiator's Shield
					["provider"] = { "i", 114208 },	-- Pristine Gladiator's Shield
				}),
				q(36770, {	-- Pristine Imperial Decree Stele
					["provider"] = { "i", 114213 },	-- Pristine Imperial Decree Stele
				}),
				q(36766, {	-- Pristine Mortar and Pestle
					["provider"] = { "i", 114209 },	-- Pristine Mortar and Pestle
				}),
				q(36763, {	-- Pristine Ogre Figurine
					["provider"] = { "i", 114186 },	-- Pristine Ogre Figurine
				}),
				q(36764, {	-- Pristine Pictogram Carving
					["provider"] = { "i", 114188 },	-- Pristine Pictogram Carving
				}),
				q(36769, {	-- Pristine Rylak Riding Harness
					["provider"] = { "i", 114212 },	-- Pristine Rylak Riding Harness
				}),
				q(36768, {	-- Pristine Stone Dentures
					["provider"] = { "i", 114211 },	-- Pristine Stone Dentures
				}),
				q(36762, {	-- Pristine Stone Manacles
					["provider"] = { "i", 114184 },	-- Pristine Stone Manacles
				}),
				q(36761, {	-- Pristine Stonemaul Succession Stone
					["provider"] = { "i", 114182 },	-- Pristine Stonemaul Succession Stone
				}),
			}),
		}),
		n(VENDORS, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_0 } }, {
			["crs"] = {
				93538,	-- Dariness the Learned <Archaeology Trainer>
				-- #if AFTER BFA
				136106,	-- Jane Hudson <Archaeology Trainer>
				122701,	-- Examiner Alerinda <Archaeology Trainer>
				-- #endif
			},
			["coords"] = {
				{ 40.8, 26.4, LEGION_DALARAN},
				-- #if AFTER BFA
				{ 68.4, 8.6, BORALUS },
				{ 43.0, 44.0, DAZARALOR},
				-- #endif
			},
			["groups"] = sharedData({
				["cost"] = {{"i", RESTORED_ARTIFACT, 1}},
			}, {
				i(142113, {	-- Crate of Arakkoa Archaeology Fragments
					currency(ARCH_CURRENCY_ARAKKOA),
				}),
				i(142114, {	-- Crate of Draenor Clans Archaeology Fragments
					currency(ARCH_CURRENCY_DRAENORCLANS),
				}),
				i(142115, {	-- Crate of Ogre Archaeology Fragments
					currency(ARCH_CURRENCY_OGRE),
				}),
			}),
		})),
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(10600),	-- Legion Archaeologist
			ach(10604, {	-- Legion Curator
				crit(29979, {	-- Pristine Imp's Cup
					["_quests"] = { 40359 },
				}),
				crit(29980, {	-- Pristine Flayed-Skin Chronicle
					["_quests"] = { 40360 },
				}),
				crit(29981, {	-- Pristine Malformed Abyssal
					["_quests"] = { 40361 },
				}),
				crit(29982, {	-- Pristine Orb of Inner Chaos
					["_quests"] = { 40362 },
				}),
				crit(29983, {	-- Pristine Houndstooth Hauberk
					["_quests"] = { 40363 },
				}),
				crit(29984, {	-- Pristine Violetglass Vessel
					["_quests"] = { 40349 },
				}),
				crit(29985, {	-- Pristine Inert Leystone Charm
					["_quests"] = { 40350 },
				}),
				crit(29986, {	-- Pristine Quietwine Vial
					["_quests"] = { 40351 },
				}),
				crit(29987, {	-- Pristine Pre-War Highborne Tapestry
					["_quests"] = { 40352 },
				}),
				crit(29988, {	-- Pristine Nobleman's Letter Opener
					["_quests"] = { 40353 },
				}),
				crit(29989, {	-- Pristine Trailhead Drum
					["_quests"] = { 40354 },
				}),
				crit(29990, {	-- Pristine Moosebone Fish-Hook
					["_quests"] = { 40355 },
				}),
				crit(29991, {	-- Pristine Hand-Smoothed Pyrestone
					["_quests"] = { 40356 },
				}),
				crit(29992, {	-- Pristine Drogbar Gem-Roller
					["_quests"] = { 40357 },
				}),
				crit(29993, {	-- Pristine Stonewood Bow
					["_quests"] = { 40358 },
				}),
			}),
			ach(10603, {	-- A Keen Eye
				crit(29966, {	-- Corrupted Studies
					["_quests"] = { 41157 },
				}),
				crit(29967, {	-- A Beacon of Hope
					["_quests"] = { 41173 },
				}),
				crit(29968, {	-- Neltharion's Lair: Misdirected
					["_quests"] = { 41188 },
				}),
				crit(29969, {	-- Sifting Through the Rubble
					["_quests"] = { 41176 },
				}),
				crit(29970, {	-- The Gates of Valor
					["_quests"] = { 41802 },
				}),
				crit(29971, {	-- What Once Was Lost
					["_quests"] = { 41179 },
				}),
				crit(29972, {	-- The Apocalypse Bringer
					["_quests"] = { 41163 },
				}),
				crit(29973, {	-- Uncovering the Orb of Sciallax
					["_quests"] = { 41182 },
				}),
				crit(29974, {	-- Drogbar Deception
					["_quests"] = { 41191 },
				}),
				crit(29975, {	-- Dark Secrets
					["_quests"] = { 41166 },
				}),
				crit(29976, {	-- The Keys to Success
					["_quests"] = { 41185 },
				}),
				crit(29977, {	-- Darkheart Thicket: Through the Fog
					["_quests"] = { 41169 },
				}),
				crit(29978, {	-- Laying to Rest
					["_quests"] = { 41193 },
				}),
			}),
			achpart(10601, 10603),	-- Surveying the Land
			achpart(10602, 10603),	-- This Side Up (gets filled with class-wrapped artifacts from Artifacts file)
			ach(10605, {	-- Handle With Care
				crit(29994, {	-- Imp's Cup
					["provider"] = { "i", 130916 },	-- Imp's Cup
				}),
				crit(29995, {	-- Flayed-Skin Chronicle
					["provider"] = { "i", 130917 },	-- Flayed-Skin Chronicle
				}),
				crit(29996, {	-- Malformed Abyssal
					["provider"] = { "i", 130918 },	-- Malformed Abyssal
				}),
				crit(29997, {	-- Orb of Inner Chaos
					["provider"] = { "i", 130919 },	-- Orb of Inner Chaos
				}),
				crit(29998, {	-- Houndstooth Hauberk
					["provider"] = { "i", 130920 },	-- Houndstooth Hauberk
				}),
				crit(29999, {	-- Violetglass Vessel
					["provider"] = { "i", 130906 },	-- Violetglass Vessel
				}),
				crit(30000, {	-- Inert Leystone Charm
					["provider"] = { "i", 130907 },	-- Inert Leystone Charm
				}),
				crit(30001, {	-- Quietwine Vial
					["provider"] = { "i", 130908 },	-- Quietwine Vial
				}),
				crit(30002, {	-- Pre-War Highborne Tapestry
					["provider"] = { "i", 130909 },	-- Pre-War Highborne Tapestry
				}),
				crit(30003, {	-- Nobleman's Letter Opener
					["provider"] = { "i", 130910 },	-- Nobleman's Letter Opener
				}),
				crit(30004, {	-- Trailhead Drum
					["provider"] = { "i", 130911 },	-- Trailhead Drum
				}),
				crit(30005, {	-- Moosebone Fish-Hook
					["provider"] = { "i", 130912 },	-- Moosebone Fish-Hook
				}),
				crit(30006, {	-- Hand-Smoothed Pyrestone
					["provider"] = { "i", 130913 },	-- Hand-Smoothed Pyrestone
				}),
				crit(30007, {	-- Drogbar Gem-Roller
					["provider"] = { "i", 130914 },	-- Drogbar Gem-Roller
				}),
				crit(30008, {	-- Stonewood Bow
					["provider"] = { "i", 130915 },	-- Stonewood Bow
				}),
			}),
			ach(10609, {	-- No Stone Unturned (250)
				title(333),	-- the Groundbreaker
			}),
			ach(10608),	-- Sifting Through the Sand (100)
			ach(10607),	-- Getting Your Hands Dirty (50)
		}),
		n(QUESTS, {
			n(ARCHAEOLOGY_DEMONIC, {
				header(HEADERS.Item, 131743, sharedData({ ["isWeekly"] = true }, {	-- Blood of Young Mannoroth
					q(41164, {	-- One Step Closer
						["provider"] = { "n", 93538 },	-- Dariness the Learned
						["coord"] = { 40.4, 24.0, LEGION_DALARAN },
					}),
					q(41165, {	-- Deciphering Demonology
						["sourceQuests"] = { 41164 },	-- One Step Closer
						["provider"] = { "n", 103484 },	-- Brann Bronzebeard
						["coord"] = { 27.0, 70.0, SURAMAR },
					}),
					q(41166, {	-- Dark Secrets
						["sourceQuests"] = { 41165 },	-- Deciphering Demonology
						["provider"] = { "n", 103484 },	-- Brann Bronzebeard
						["coord"] = { 27.0, 70.0, SURAMAR },
						["groups"] = {
							i(136398),	-- Ancient Vial (QI!)
							i(136397),	-- Dusty Disc Fragment (QI!)
							i(131743),	-- Blood of Young Mannoroth
						},
					}),
				})),
				header(HEADERS.Item, 131724, sharedData({ ["isWeekly"] = true }, {	-- Crystalline Eye of Undravius
					q(40857, {	-- Bits and Pieces
						["provider"] = { "n", 93538 },	-- Dariness the Learned
						["coord"] = { 40.4, 24.0, LEGION_DALARAN },
					}),
					q(41157, {	-- Corrupted Studies
						["sourceQuests"] = { 40857 },	-- Bits and Pieces
						["provider"] = { "n", 103484 },	-- Brann Bronzebeard
						["coord"] = { 52.2, 52.6, STORMHEIM },
						["groups"] = {
							i(136362, {	-- Ancient War Remnants
								i(131724),	-- Crystalline Eye of Undravius (TOY!)
							}),
							i(146328),	-- Petrified Wyrmtongue
						},
					}),
				})),
				header(HEADERS.Item, 131735, sharedData({ ["isWeekly"] = true }, {	-- Imp Generator
					q(41158, {	-- Fragments of the Fjords
						["provider"] = { "n", 93538 },	-- Dariness the Learned
						["coord"] = { 40.4, 24.0, LEGION_DALARAN },
					}),
					q(41159, {	-- Process of Elimination
						["sourceQuests"] = { 41158 },	-- Fragments of the Fjords
						["provider"] = { "n", 103484 },	-- Brann Bronzebeard
						["coord"] = { 52.2, 52.6, STORMHEIM },
					}),
					q(41802, {	-- The Gates of Valor
						["sourceQuests"] = { 41159 },	-- Process of Elimination
						["provider"] = { "n", 103484 },	-- Brann Bronzebeard
						["coord"] = { 52.2, 52.6, STORMHEIM },
						["groups"] = {
							i(131735),	-- Imp Generator
						},
					}),
				})),
				header(HEADERS.Item, 131732, sharedData({ ["isWeekly"] = true }, {	-- Purple Hills of Eredath
					q(41167, {	-- Fel Fragments
						["provider"] = { "n", 93538 },	-- Dariness the Learned
						["coord"] = { 40.4, 24.0, LEGION_DALARAN },
					}),
					q(41168, {	-- The Purple Hills of Eredath
						["sourceQuests"] = { 41167 },	-- Fel Fragments
						["provider"] = { "n", 103484 },	-- Brann Bronzebeard
						["coord"] = { 61.8, 87.9, VALSHARAH },
					}),
					q(41169, {	-- Darkheart Thicket: Through the Fog
						["sourceQuests"] = { 41168 },	-- The Purple Hills of Eredath
						["provider"] = { "n", 103484 },	-- Brann Bronzebeard
						["coord"] = { 61.8, 87.9, VALSHARAH },
						["groups"] = {
							i(131732),	-- Purple Hills of Eredath
						},
					}),
				})),
				header(HEADERS.Item, 136922, sharedData({ ["isWeekly"] = true }, {	-- Wyrmy Tunkins
					q(41161, {	-- Out of the Frying Pan
						["provider"] = { "n", 93538 },	-- Dariness the Learned
						["coord"] = { 40.4, 24.0, LEGION_DALARAN },
					}),
					q(41162, {	-- And Into the Fel Fire
						["sourceQuests"] = { 41161 },	-- Out of the Frying Pan
						["provider"] = { "n", 103484 },	-- Brann Bronzebeard
						["coord"] = { 39.0, 38.6, AZSUNA },
					}),
					q(41163, {	-- The Apocalypse Bringer
						["sourceQuests"] = { 41162 },	-- And Into the Fel Fire
						["provider"] = { "n", 103484 },	-- Brann Bronzebeard
						["coord"] = { 39.0, 38.6, AZSUNA },
						["groups"] = {
							i(136922),	-- Wyrmy Tunkins (PET!)
						},
					}),
				})),
				q(41170, {	-- The Relic Renewed
					["sourceQuests"] = {	-- Hidden Tracking quests used, as the other quests reset weekly.
						41871,	-- Darkheart Thicket: Through the Fog
						41870,	-- Dark Secrets
						41869,	-- The Apocalypse Bringer
						41868,	-- The Gates of Valor
						41867,	-- Corrupted Studies
					},
					["groups"] = {
						ach(10606),	-- The Dwarven Dream
					},
				}),
				q(40360, {	-- Pristine Flayed-Skin Chronicle
					["provider"] = { "i", 130932 },	-- Pristine Flayed-Skin Chronicle
				}),
				q(40363, {	-- Pristine Houndstooth Hauberk
					["provider"] = { "i", 130935 },	-- Pristine Houndstooth Hauberk
				}),
				q(40359, {	-- Pristine Imp's Cup
					["provider"] = { "i", 130931 },	-- Pristine Imp's Cup
				}),
				q(40361, {	-- Pristine Malformed Abyssal
					["provider"] = { "i", 130933 },	-- Pristine Malformed Abyssal
				}),
				q(40362, {	-- Pristine Orb of Inner Chaos
					["provider"] = { "i", 130934 },	-- Pristine Orb of Inner Chaos
				}),
			}),
			n(ARCHAEOLOGY_HIGHBORNE, {
				header(HEADERS.Item, 131740, sharedData({ ["isWeekly"] = true }, {	-- Crown Jewels of Suramar
					q(41174, {	-- Worth Its Weight
						["provider"] = { "n", 93538 },	-- Dariness the Learned
						["coord"] = { 40.4, 24.0, LEGION_DALARAN },
					}),
					q(41175, {	-- Fit for an Elven Queen
						["sourceQuests"] = { 41174 },	-- Worth Its Weight
						["provider"] = { "n", 103482 },	-- Tae'thelan Bloodwatcher <High Examiner>
						["coord"] = { 38.2, 90.0, SURAMAR },
					}),
					q(41176, {	-- Sifting Through the Rubble
						["sourceQuests"] = { 41175 },	-- Fit for an Elven Queen
						["provider"] = { "n", 103482 },	-- Tae'thelan Bloodwatcher <High Examiner>
						["coord"] = { 38.2, 90.0, SURAMAR },
						["groups"] = {
							i(131740),	-- Crown Jewels of Suramar
						},
					}),
				})),
				header(HEADERS.Item, 134076, sharedData({ ["isWeekly"] = true }, {	-- Crystallized Shard of Sciallax
					q(41180, {	-- Unspeakable Power
						["provider"] = { "n", 93538 },	-- Dariness the Learned
						["coord"] = { 40.4, 24.0, LEGION_DALARAN },
					}),
					q(41181, {	-- Narrowing Down
						["sourceQuests"] = { 41180 },	-- Unspeakable Power
						["provider"] = { "n", 103482 },	-- Tae'thelan Bloodwatcher <High Examiner>
						["coord"] = { 38.2, 90.0, SURAMAR },
					}),
					q(41182, {	-- Uncovering the Orb of Sciallax
						["sourceQuests"] = { 41181 },	-- Narrowing Down
						["provider"] = { "n", 103482 },	-- Tae'thelan Bloodwatcher <High Examiner>
						["coord"] = { 38.2, 90.0, SURAMAR },
						["groups"] = {
							i(134076),	-- Crystallized Shard of Sciallax
							i(134079),	-- Ardent Shard of Sciallax
							i(134081),	-- Adamant Shard of Sciallax
							i(131731),	-- Glinting Shard of Sciallax
							i(134077),	-- Glowing Shard of Sciallax
							i(134078),	-- Dark Shard of Sciallax
						},
					}),
				})),
				header(HEADERS.Item, 131745, sharedData({ ["isWeekly"] = true }, {	-- Key of Kalyndras
					q(41177, {	-- Goblin Archaeology
						["provider"] = { "n", 93538 },	-- Dariness the Learned
						["coord"] = { 40.4, 24.0, LEGION_DALARAN },
					}),
					q(41178, {	-- Explosive Results
						["sourceQuests"] = { 41177 },	-- Goblin Archaeology
						["provider"] = { "n", 103482 },	-- Tae'thelan Bloodwatcher <High Examiner>
						["coord"] = { 38.8, 81.6, VALSHARAH },
					}),
					q(41179, {	-- What Once Was Lost
						["sourceQuests"] = { 41178 },
						["provider"] = { "n", 103482 },	-- Tae'thelan Bloodwatcher <High Examiner>
						["coord"] = { 38.8, 81.6, VALSHARAH },
						["groups"] = {
							i(136383, {	-- Ravencrest Cache
								i(131745, {	-- Key of Kalyndras
									["questID"] = 41805,
									["isWeekly"] = true,
								}),
							}),
						},
					}),
				})),
				header(HEADERS.Item, 131744, sharedData({ ["isWeekly"] = true }, {	-- Key to Nar'thalas Academy
					q(41183, {	-- Academic Exploration
						["provider"] = { "n", 93538 },	-- Dariness the Learned
						["coord"] = { 40.4, 24.0, LEGION_DALARAN },
					}),
					q(41184, {	-- Tried and True
						["sourceQuests"] = { 41183 },	-- Academic Exploration
						["provider"] = { "n", 103482 },	-- Tae'thelan Bloodwatcher <High Examiner>
						["coord"] = { 38.2, 90.0, AZSUNA },
						["groups"] = {
							i(134117),	-- Azsunian Key Mold Piece (QI!)
						},
					}),
					q(41185, {	-- The Keys to Success
						["sourceQuests"] = { 41184 },
						["provider"] = { "n", 103482 },	-- Tae'thelan Bloodwatcher <High Examiner>
						["coord"] = { 38.2, 90.0, AZSUNA },
						["groups"] = {
							i(131744, {	-- Key to Nar'thalas Academy
								title(348),	-- Headmaster <Name> / Headmistress <Name>
							}),
						},
					}),
				})),
				header(HEADERS.Item, 131717, sharedData({ ["isWeekly"] = true }, {	-- Starlight Beacon
					q(41171, {	-- The Reliquary Calls
						["provider"] = { "n", 93538 },	-- Dariness the Learned
						["coord"] = { 40.4, 24.0, LEGION_DALARAN },
					}),
					q(41172, {	-- Echoes of My Ancestors
						["sourceQuests"] = { 41171 },	-- The Reliquary Calls
						["provider"] = { "n", 103482 },	-- Tae'thelan Bloodwatcher <High Examiner>
						["coord"] = { 47.4, 42.6, AZSUNA },
					}),
					q(41173, {	-- A Beacon of Hope
						["sourceQuests"] = { 41172 },	-- Echoes of My Ancestors
						["provider"] = { "n", 103482 },	-- Tae'thelan Bloodwatcher <High Examiner>
						["coord"] = { 47.4, 42.6, AZSUNA },
						["groups"] = {
							i(134108),	-- Ancient Highborne Artifact (QI!)
							i(131717, {	-- Starlight Beacon
								-- #if AFTER 11.2.0
								-- #if BEFORE 11.2.5
								["description"] = "In patch 11.2.5, Starlight Beacon is becoming a toy.\n\nIf you don't have it, the next time the quest will be up is from 2nd September through 15th September. Then it won't be up again until March 2026.",
								-- #endif
								-- #endif
							}),
						},
					}),
				})),
				q(40350, {	-- Pristine Inert Leystone Charm
					["provider"] = { "i", 130922 },	-- Pristine Inert Leystone Charm
				}),
				q(40353, {	-- Pristine Nobleman's Letter Opener
					["provider"] = { "i", 130925 },	-- Pristine Nobleman's Letter Opener
				}),
				q(40352, {	-- Pristine Pre-War Highborne Tapestry
					["provider"] = { "i", 130924 },	-- Pristine Pre-War Highborne Tapestry
				}),
				q(40351, {	-- Pristine Quietwine Vial
					["provider"] = { "i", 130923 },	-- Pristine Quietwine Vial
				}),
				q(40349, {	-- Pristine Violetglass Vessel
					["provider"] = { "i", 130921 },	-- Pristine Violetglass Vessel
				}),
			}),
			n(ARCHAEOLOGY_HIGHMOUNTAIN, {
				header(HEADERS.Item, 131736, sharedData({ ["isWeekly"] = true }, {	-- Prizerock Neckband
					q(41189, {	-- A New Lead
						["provider"] = { "n", 93538 },	-- Dariness the Learned
						["coord"] = { 40.4, 24.0, LEGION_DALARAN },
					}),
					q(41190, {	-- Crystal Eyes
						["sourceQuests"] = { 41189 },	-- A New Lead
						["provider"] = { "n", 103485 },	-- Lessah Moonwater <Archaeologist>
						["coord"] = { 45.8, 44.6, HIGHMOUNTAIN },
					}),
					q(41191, {	-- Drogbar Deception
						["sourceQuests"] = { 41190 },	-- Crystal Eyes
						["provider"] = { "n", 103485 },	-- Lessah Moonwater <Archaeologist>
						["coord"] = { 45.8, 44.6, HIGHMOUNTAIN },
						["groups"] = {
							i(134094),	-- Ancient Highmountain Necklace (QI!)
							i(131736),	-- Prizerock Neckband
						},
					}),
				})),
				header(HEADERS.Item, 131733, sharedData({ ["isWeekly"] = true }, {	-- Spear of Rethu
					q(41186, {	-- History of Highmountain
						["provider"] = { "n", 93538 },	-- Dariness the Learned
						["coord"] = { 40.4, 24.0, LEGION_DALARAN },
					}),
					q(41187, {	-- Surveying Student
						["sourceQuests"] = { 41186 },	-- History of Highmountain
						["provider"] = { "n", 103485 },	-- Lessah Moonwater <Archaeologist>
						["coord"] = { 45.8, 44.6, HIGHMOUNTAIN },
						["groups"] = {
							i(136372),	-- Archaeologist's Whistle (QI!)
						},
					}),
					q(41188, {	-- Neltharion's Lair: Misdirected
						["sourceQuests"] = { 41187 },	-- Surveying Student
						["provider"] = { "n", 103485 },	-- Lessah Moonwater <Archaeologist>
						["coord"] = { 45.8, 44.6, HIGHMOUNTAIN },
						["groups"] = {
							i(134093),	-- Ancient Highmountain Artifact (QI!)
							i(131733),	-- Spear of Rethu
						},
					}),
				})),
				header(HEADERS.Item, 131734, sharedData({ ["isWeekly"] = true }, {	-- Spirit of Eche'ro
					q(41192, {	-- The Right Path
						["provider"] = { "n", 93538 },	-- Dariness the Learned
						["coord"] = { 40.4, 24.0, LEGION_DALARAN },
					}),
					q(41193, {	-- Laying to Rest
						["sourceQuests"] = { 41192 },	-- The Right Path
						["provider"] = { "n", 103485 },	-- Lessah Moonwater <Archaeologist>
						["coord"] = { 45.8, 44.6, HIGHMOUNTAIN },
						["groups"] = {
							i(131734),	-- Spirit of Eche'ro (MOUNT!)
							i(134095),	-- Bone Fragment of Eche'ro (QI!)
						},
					}),
				})),
				q(40357, {	-- Pristine Drogbar Gem-Roller
					["provider"] = { "i", 130929 },	-- Pristine Drogbar Gem-Roller
				}),
				q(40356, {	-- Pristine Hand-Smoothed Pyrestone
					["provider"] = { "i", 130928 },	-- Pristine Hand-Smoothed Pyrestone
				}),
				q(40355, {	-- Pristine Moosebone Fish-Hook
					["provider"] = { "i", 130927 },	-- Pristine Moosebone Fish-Hook
				}),
				q(40358, {	-- Pristine Stonewood Bow
					["provider"] = { "i", 130930 },	-- Pristine Stonewood Bow
				}),
				q(40354, {	-- Pristine Trailhead Drum
					["provider"] = { "i", 130926 },	-- Pristine Trailhead Drum
				}),
			}),
		}),
		n(VENDORS, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {
			["crs"] = {
				136106,	-- Jane Hudson <Archaeology Trainer>
				122701,	-- Examiner Alerinda <Archaeology Trainer>
			},
			["coords"] = {
				{ 68.4, 8.6, BORALUS },
				{ 43.0, 44.0, DAZARALOR},
			},
			["groups"] = sharedData({
				["cost"] = {{"i", RESTORED_ARTIFACT, 1}},
			}, {
				i(164625, {	-- Crate of Demon Archaeology Fragments
					currency(ARCH_CURRENCY_DEMONIC),
				}),
				i(164626, {	-- Crate of Highborne Archaeology Fragments
					currency(ARCH_CURRENCY_HIGHBORNE),
				}),
				i(164627, {	-- Crate of Highmountain Tauren Archaeology Fragments
					currency(ARCH_CURRENCY_HIGHMOUNTAIN),
				}),
			}),
		})),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(12760, {	-- Kul Tiran Archaeologist
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12761, {	-- Zandalari Archaeologist
				["races"] = HORDE_ONLY,
			}),
			ach(12765, {	-- Exotic Discoveries
				crit(43323, {	-- Ceremonial Bonesaw
					["provider"] = { "i", 154921 },	-- Ceremonial Bonesaw
				}),
				crit(40842, {	-- Ancient Runebound Tome
					["provider"] = { "i", 154922 },	-- Ancient Runebound Tome
				}),
				crit(40843, {	-- Disembowling Sickle
					["provider"] = { "i", 154923 },	-- Disembowling Sickle
				}),
				crit(40844, {	-- Jagged Blade of the Drust
					["provider"] = { "i", 154924 },	-- Jagged Blade of the Drust
				}),
				crit(40845, {	-- Ritual Fetish
					["provider"] = { "i", 154925 },	-- Ritual Fetish
				}),
				crit(40846, {	-- Soul Coffer
					["provider"] = { "i", 160741 },	-- Soul Coffer
				}),
				crit(40847, {	-- Akun'Jar Vase
					["provider"] = { "i", 154913 },	-- Akun'Jar Vase
				}),
				crit(40848, {	-- Urn of Passage
					["provider"] = { "i", 154914 },	-- Urn of Passage
				}),
				crit(40849, {	-- Rezan Idol
					["provider"] = { "i", 154915 },	-- Rezan Idol
				}),
				crit(40850, {	-- High Apothecary's Hood
					["provider"] = { "i", 154916 },	-- High Apothecary's Hood
				}),
				crit(40851, {	-- Bwonsamdi Voodoo Mask
					["provider"] = { "i", 154917 },	-- Bwonsamdi Voodoo Mask
				}),
				crit(40852, {	-- Blowgun of the Sethra
					["provider"] = { "i", 160743 },	-- Blowgun of the Sethra
				}),
			}),
			ach(12770),	-- Lengthy Legwork
			ach(12769),	-- Light Travel
			ach(12762, {	-- Kul Tiran Curator
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(12764, {	-- Zandalari Curator
				["races"] = HORDE_ONLY,
				["sym"] = {{ "achievement_criteria" }},
			}),
		}),
		n(QUESTS, {
			n(ARCHAEOLOGY_DRUST, {
				q(51951, {	-- Pristine Ancient Runebound Tome
					["provider"] = { "i", 154927 },	-- Pristine Ancient Runebound Tome
				}),
				q(51950, {	-- Pristine Ceremonial Bonesaw
					["provider"] = { "i", 154926 },	-- Pristine Ceremonial Bonesaw
				}),
				q(51952, {	-- Pristine Disembowling Sickle
					["provider"] = { "i", 154928 },	-- Pristine Disembowling Sickle
				}),
				q(51953, {	-- Pristine Jagged Blade of the Drust
					["provider"] = { "i", 154929 },	-- Pristine Jagged Blade of the Drust
				}),
				q(51954, {	-- Pristine Ritual Fetish
					["provider"] = { "i", 154930 },	-- Pristine Ritual Fetish
				}),
				q(51955, {	-- Pristine Soul Coffer
					["provider"] = { "i", 160742 },	-- Pristine Soul Coffer
				}),
			}),
			n(ARCHAEOLOGY_ZANDALARI, {
				q(51926, {	-- Pristine Akun'Jar Vase
					["provider"] = { "i", 154931 },	-- Pristine Akun'Jar Vase
				}),
				q(51937, {	-- Pristine Blowgun of the Sethrak
					["provider"] = { "i", 160744 },	-- Pristine Blowgun of the Sethrak
				}),
				q(51936, {	-- Pristine Bwonsamdi Voodoo Mask
					["provider"] = { "i", 154935 },	-- Pristine Bwonsamdi Voodoo Mask
				}),
				q(51934, {	-- Pristine High Apothecary's Hood
					["provider"] = { "i", 154934 },	-- Pristine High Apothecary's Hood
				}),
				q(51932, {	-- Pristine Rezan Idol
					["provider"] = { "i", 154933 },	-- Pristine Rezan Idol
				}),
				q(51929, {	-- Pristine Urn of Passage
					["provider"] = { "i", 154932 },	-- Pristine Urn of Passage
				}),
			}),
		}),
	})),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
		n(PROFESSIONS, {
			prof(ARCHAEOLOGY, {
				q(33823),	-- Tracking Quest - Archaeology - Frostfire - Dig Map #1
				q(33824),	-- Tracking Quest - Archaeology - Frostfire - Dig Map #2
				q(33825),	-- Tracking Quest - Archaeology - Frostfire - Dig Map #3
			}),
		}),
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		n(PROFESSIONS, {
			prof(ARCHAEOLOGY, {
				q(41867),	-- FLAG - Brann Week 1
				q(41868),	-- FLAG - Brann Week 2
				q(41869),	-- FLAG - Brann Week 3
				q(41870),	-- FLAG - Brann Week 4
				q(41871),	-- FLAG - Brann Week 5
				q(45775),	-- Completion of 'Sifting Through the Rubble' [41176] for A Keen Eye [10603] - Crown Jewels of Suramar
			}),
		}),
	})),
});
