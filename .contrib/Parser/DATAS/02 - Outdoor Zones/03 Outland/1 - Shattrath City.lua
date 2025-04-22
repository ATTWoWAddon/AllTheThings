---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local TIER_FOUR_GROUPS = applyclassicphase(TBC_PHASE_ONE, {
	cl(WARRIOR, {
		-- DPS
		i(29021, {	-- Warbringer Battle-Helm
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(29019, {	-- Warbringer Breastplate
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(29023, {	-- Warbringer Shoulderplates
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(29020, {	-- Warbringer Gauntlets
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(29022, {	-- Warbringer Greaves
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),

		-- Protection
		i(29011, {	-- Warbringer Greathelm
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(29016, {	-- Warbringer Shoulderguards
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(29012, {	-- Warbringer Chestguard
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(29017, {	-- Warbringer Handguards
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(29015, {	-- Warbringer Legguards
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),
	}),
	cl(PALADIN, {
		-- DPS
		i(29073, {	-- Justicar Crown
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(29075, {	-- Justicar Shoulderplates
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(29071, {	-- Justicar Breastplate
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(29072, {	-- Justicar Gauntlets
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(29074, {	-- Justicar Greaves
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),

		-- Holy
		i(29061, {	-- Justicar Diadem
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(29064, {	-- Justicar Pauldrons
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(29062, {	-- Justicar Chestpiece
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(29065, {	-- Justicar Gloves
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(29063, {	-- Justicar Leggings
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),

		-- Protection
		i(29068, {	-- Justicar Faceguard
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(29070, {	-- Justicar Shoulderguards
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(29066, {	-- Justicar Chestguard
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(29067, {	-- Justicar Handguards
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(29069, {	-- Justicar Legguards
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),
	}),
	cl(HUNTER, {
		i(29081, {	-- Demon Stalker Greathelm
			["cost"] = { { "i", 29759, 1 }, },	-- Helm of the Fallen Hero
		}),
		i(29084, {	-- Demon Stalker Shoulderguards
			["cost"] = { { "i", 29762, 1 }, },	-- Pauldrons of the Fallen Hero
		}),
		i(29082, {	-- Demon Stalker Harness
			["cost"] = { { "i", 29755, 1 }, },	-- Chestguard of the Fallen Hero
		}),
		i(29085, {	-- Demon Stalker Gauntlets
			["cost"] = { { "i", 29756, 1 }, },	-- Gloves of the Fallen Hero
		}),
		i(29083, {	-- Demon Stalker Greaves
			["cost"] = { { "i", 29765, 1 }, },	-- Leggings of the Fallen Hero
		}),
	}),
	cl(ROGUE, {
		i(29044, {	-- Netherblade Facemask
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(29047, {	-- Netherblade Shoulderpads
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(29045, {	-- Netherblade Chestpiece
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(29048, {	-- Netherblade Gloves
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(29046, {	-- Netherblade Breeches
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),
	}),
	cl(PRIEST, {
		-- DPS
		i(29058, {	-- Soul-Collar of the Incarnate
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(29060, {	-- Soul-Mantle of the Incarnate
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(29056, {	-- Shroud of the Incarnate
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(29057, {	-- Gloves of the Incarnate
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(29059, {	-- Leggings of the Incarnate
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),

		-- Holy
		i(29049, {	-- Light-Collar of the Incarnate
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(29054, {	-- Light-Mantle of the Incarnate
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(29050, {	-- Robes of the Incarnate
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(29055, {	-- Handwraps of the Incarnate
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(29053, {	-- Trousers of the Incarnate
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),
	}),
	cl(SHAMAN, {
		-- Enhance
		i(29040, {	-- Cyclone Helm
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(29043, {	-- Cyclone Shoulderplates
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(29038, {	-- Cyclone Breastplate
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(29039, {	-- Cyclone Gauntlets
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(29042, {	-- Cyclone War-Kilt
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),

		-- Elemental
		i(29035, {	-- Cyclone Faceguard
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(29037, {	-- Cyclone Shoulderguards
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(29033, {	-- Cyclone Chestguard
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(29034, {	-- Cyclone Handguards
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(29036, {	-- Cyclone Legguards
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),

		-- Restoration
		i(29028, {	-- Cyclone Headdress
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(29031, {	-- Cyclone Shoulderpads
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(29029, {	-- Cyclone Hauberk
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(29032, {	-- Cyclone Gloves
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(29030, {	-- Cyclone Kilt
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),
	}),
	cl(MAGE, {
		i(29076, {	-- Collar of the Aldor
			["cost"] = { { "i", 29759, 1 }, },	-- Helm of the Fallen Hero
		}),
		i(29079, {	-- Pauldrons of the Aldor
			["cost"] = { { "i", 29762, 1 }, },	-- Pauldrons of the Fallen Hero
		}),
		i(29077, {	-- Vestments of the Aldor
			["cost"] = { { "i", 29755, 1 }, },	-- Chestguard of the Fallen Hero
		}),
		i(29080, {	-- Gloves of the Aldor
			["cost"] = { { "i", 29756, 1 }, },	-- Gloves of the Fallen Hero
		}),
		i(29078, {	-- Legwraps of the Aldor
			["cost"] = { { "i", 29765, 1 }, },	-- Leggings of the Fallen Hero
		}),
	}),
	cl(WARLOCK, {
		i(28963, {	-- Voidheart Crown
			["cost"] = { { "i", 29759, 1 }, },	-- Helm of the Fallen Hero
		}),
		i(28967, {	-- Voidheart Mantle
			["cost"] = { { "i", 29762, 1 }, },	-- Pauldrons of the Fallen Hero
		}),
		i(28964, {	-- Voidheart Robe
			["cost"] = { { "i", 29755, 1 }, },	-- Chestguard of the Fallen Hero
		}),
		i(28968, {	-- Voidheart Gloves
			["cost"] = { { "i", 29756, 1 }, },	-- Gloves of the Fallen Hero
		}),
		i(28966, {	-- Voidheart Leggings
			["cost"] = { { "i", 29765, 1 }, },	-- Leggings of the Fallen Hero
		}),
	}),
	cl(DRUID, {
		-- Boomkin
		i(29093, {	-- Antlers of Malorne
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(29095, {	-- Pauldrons of Malorne
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(29091, {	-- Chestpiece of Malorne
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(29092, {	-- Gloves of Malorne
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(29094, {	-- Britches of Malorne
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),

		-- Feral
		i(29098, {	-- Stag-Helm of Malorne
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(29100, {	-- Mantle of Malorne
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(29096, {	-- Breastplate of Malorne
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(29097, {	-- Gauntlets of Malorne
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(29099, {	-- Greaves of Malorne
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),

		-- Restoration
		i(29086, {	-- Crown of Malorne
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(29089, {	-- Shoulderguards of Malorne
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(29087, {	-- Chestguard of Malorne
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(29090, {	-- Handguards of Malorne
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(29088, {	-- Legguards of Malorne
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),
	}),
});
local TIER_FIVE_GROUPS = applyclassicphase(TBC_PHASE_TWO, {
	cl(WARRIOR, {
		i(30120, {	-- Destroyer Battle-Helm
			["cost"] = { { "i", 30243, 1 }, },	-- Helm of the Vanquished Defender
		}),
		i(30118, {	-- Destroyer Breastplate
			["cost"] = { { "i", 30237, 1 }, },	-- Chestguard of the Vanquished Defender
		}),
		i(30113, {	-- Destroyer Chestguard
			["cost"] = { { "i", 30237, 1 }, },	-- Chestguard of the Vanquished Defender
		}),
		i(30119, {	-- Destroyer Gauntlets
			["cost"] = { { "i", 30240, 1 }, },	-- Gloves of the Vanquished Defender
		}),
		i(30115, {	-- Destroyer Greathelm
			["cost"] = { { "i", 30243, 1 }, },	-- Helm of the Vanquished Defender
		}),
		i(30121, {	-- Destroyer Greaves
			["cost"] = { { "i", 30246, 1 }, },	-- Leggings of the Vanquished Defender
		}),
		i(30114, {	-- Destroyer Handguards
			["cost"] = { { "i", 30240, 1 }, },	-- Gloves of the Vanquished Defender
		}),
		i(30116, {	-- Destroyer Legguards
			["cost"] = { { "i", 30246, 1 }, },	-- Leggings of the Vanquished Defender
		}),
		i(30122, {	-- Destroyer Shoulderblades
			["cost"] = { { "i", 30249, 1 }, },	-- Pauldrons of the Vanquished Defender
		}),
		i(30117, {	-- Destroyer Shoulderguards
			["cost"] = { { "i", 30249, 1 }, },	-- Pauldrons of the Vanquished Defender
		}),
	}),
	cl(PALADIN, {
		i(30129, {	-- Crystalforge Breastplate
			["cost"] = { { "i", 30236, 1 }, },	-- Chestguard of the Vanquished Champion
		}),
		i(30123, {	-- Crystalforge Chestguard
			["cost"] = { { "i", 30236, 1 }, },	-- Chestguard of the Vanquished Champion
		}),
		i(30134, {	-- Crystalforge Chestpiece
			["cost"] = { { "i", 30236, 1 }, },	-- Chestguard of the Vanquished Champion
		}),
		i(30125, {	-- Crystalforge Faceguard
			["cost"] = { { "i", 30242, 1 }, },	-- Helm of the Vanquished Champion
		}),
		i(30130, {	-- Crystalforge Gauntlets
			["cost"] = { { "i", 30239, 1 }, },	-- Gloves of the Vanquished Champion
		}),
		i(30135, {	-- Crystalforge Gloves
			["cost"] = { { "i", 30239, 1 }, },	-- Gloves of the Vanquished Champion
		}),
		i(30136, {	-- Crystalforge Greathelm
			["cost"] = { { "i", 30242, 1 }, },	-- Helm of the Vanquished Champion
		}),
		i(30132, {	-- Crystalforge Greaves
			["cost"] = { { "i", 30245, 1 }, },	-- Leggings of the Vanquished Champion
		}),
		i(30124, {	-- Crystalforge Handguards
			["cost"] = { { "i", 30239, 1 }, },	-- Gloves of the Vanquished Champion
		}),
		i(30137, {	-- Crystalforge Leggings
			["cost"] = { { "i", 30245, 1 }, },	-- Leggings of the Vanquished Champion
		}),
		i(30126, {	-- Crystalforge Legguards
			["cost"] = { { "i", 30245, 1 }, },	-- Leggings of the Vanquished Champion
		}),
		i(30138, {	-- Crystalforge Pauldrons
			["cost"] = { { "i", 30248, 1 }, },	-- Pauldrons of the Vanquished Champion
		}),
		i(30133, {	-- Crystalforge Shoulderbraces
			["cost"] = { { "i", 30248, 1 }, },	-- Pauldrons of the Vanquished Champion
		}),
		i(30127, {	-- Crystalforge Shoulderguards
			["cost"] = { { "i", 30248, 1 }, },	-- Pauldrons of the Vanquished Champion
		}),
		i(30131, {	-- Crystalforge War-Helm
			["cost"] = { { "i", 30242, 1 }, },	-- Helm of the Vanquished Champion
		}),
	}),
	cl(HUNTER, {
		i(30141, {	-- Rift Stalker Helm
			["cost"] = { { "i", 30244, 1 }, },	-- Helm of the Vanquished Hero
		}),
		i(30143, {	-- Rift Stalker Mantle
			["cost"] = { { "i", 30250, 1 }, },	-- Pauldrons of the Vanquished Hero
		}),
		i(30139, {	-- Rift Stalker Hauberk
			["cost"] = { { "i", 30238, 1 }, },	-- Chestguard of the Vanquished Hero
		}),
		i(30140, {	-- Rift Stalker Gauntlets
			["cost"] = { { "i", 30241, 1 }, },	-- Gloves of the Vanquished Hero
		}),
		i(30142, {	-- Rift Stalker Leggings
			["cost"] = { { "i", 30247, 1 }, },	-- Leggings of the Vanquished Hero
		}),
	}),
	cl(ROGUE, {
		i(30146, {	-- Deathmantle Helm
			["cost"] = { { "i", 30242, 1 }, },	-- Helm of the Vanquished Champion
		}),
		i(30149, {	-- Deathmantle Shoulderpads
			["cost"] = { { "i", 30248, 1 }, },	-- Pauldrons of the Vanquished Champion
		}),
		i(30144, {	-- Deathmantle Chestguard
			["cost"] = { { "i", 30236, 1 }, },	-- Chestguard of the Vanquished Champion
		}),
		i(30145, {	-- Deathmantle Handguards
			["cost"] = { { "i", 30239, 1 }, },	-- Gloves of the Vanquished Champion
		}),
		i(30148, {	-- Deathmantle Legguards
			["cost"] = { { "i", 30245, 1 }, },	-- Leggings of the Vanquished Champion
		}),
	}),
	cl(PRIEST, {
		i(30161, {	-- Hood of the Avatar
			["cost"] = { { "i", 30243, 1 }, },	-- Helm of the Vanquished Defender
		}),
		i(30152, {	-- Cowl of the Avatar
			["cost"] = { { "i", 30243, 1 }, },	-- Helm of the Vanquished Defender
		}),
		i(30151, {	-- Gloves of the Avatar
			["cost"] = { { "i", 30240, 1 }, },	-- Gloves of the Vanquished Defender
		}),
		i(30153, {	-- Breeches of the Avatar
			["cost"] = { { "i", 30246, 1 }, },	-- Leggings of the Vanquished Defender
		}),

		i(30154, {	-- Mantle of the Avatar
			["cost"] = { { "i", 30249, 1 }, },	-- Pauldrons of the Vanquished Defender
		}),
		i(30160, {	-- Handguards of the Avatar
			["cost"] = { { "i", 30240, 1 }, },	-- Gloves of the Vanquished Defender
		}),
		i(30159, {	-- Shroud of the Avatar
			["cost"] = { { "i", 30237, 1 }, },	-- Chestguard of the Vanquished Defender
		}),
		i(30150, {	-- Vestments of the Avatar
			["cost"] = { { "i", 30237, 1 }, },	-- Chestguard of the Vanquished Defender
		}),
		i(30163, {	-- Wings of the Avatar
			["cost"] = { { "i", 30249, 1 }, },	-- Pauldrons of the Vanquished Defender
		}),
		i(30162, {	-- Leggings of the Avatar
			["cost"] = { { "i", 30246, 1 }, },	-- Leggings of the Vanquished Defender
		}),
	}),
	cl(SHAMAN, {
		i(30164, {	-- Cataclysm Chestguard
			["cost"] = { { "i", 30236, 1 }, },	-- Chestguard of the Vanquished Champion
		}),
		i(30169, {	-- Cataclysm Chestpiece
			["cost"] = { { "i", 30236, 1 }, },	-- Chestguard of the Vanquished Champion
		}),
		i(30185, {	-- Cataclysm Chestplate
			["cost"] = { { "i", 30236, 1 }, },	-- Chestguard of the Vanquished Champion
		}),
		i(30189, {	-- Cataclysm Gauntlets
			["cost"] = { { "i", 30239, 1 }, },	-- Gloves of the Vanquished Champion
		}),
		i(30165, {	-- Cataclysm Gloves
			["cost"] = { { "i", 30239, 1 }, },	-- Gloves of the Vanquished Champion
		}),
		i(30170, {	-- Cataclysm Handgrips
			["cost"] = { { "i", 30239, 1 }, },	-- Gloves of the Vanquished Champion
		}),
		i(30166, {	-- Cataclysm Headguard
			["cost"] = { { "i", 30242, 1 }, },	-- Helm of the Vanquished Champion
		}),
		i(30171, {	-- Cataclysm Headpiece
			["cost"] = { { "i", 30242, 1 }, },	-- Helm of the Vanquished Champion
		}),
		i(30190, {	-- Cataclysm Helm
			["cost"] = { { "i", 30242, 1 }, },	-- Helm of the Vanquished Champion
		}),
		i(30172, {	-- Cataclysm Leggings
			["cost"] = { { "i", 30245, 1 }, },	-- Leggings of the Vanquished Champion
		}),
		i(30167, {	-- Cataclysm Legguards
			["cost"] = { { "i", 30245, 1 }, },	-- Leggings of the Vanquished Champion
		}),
		i(30192, {	-- Cataclysm Legplates
			["cost"] = { { "i", 30245, 1 }, },	-- Leggings of the Vanquished Champion
		}),
		i(30168, {	-- Cataclysm Shoulderguards
			["cost"] = { { "i", 30248, 1 }, },	-- Pauldrons of the Vanquished Champion
		}),
		i(30173, {	-- Cataclysm Shoulderpads
			["cost"] = { { "i", 30248, 1 }, },	-- Pauldrons of the Vanquished Champion
		}),
		i(30194, {	-- Cataclysm Shoulderplates
			["cost"] = { { "i", 30248, 1 }, },	-- Pauldrons of the Vanquished Champion
		}),
	}),
	cl(MAGE, {
		i(30206, {	-- Cowl of Tirisfal
			["cost"] = { { "i", 30244, 1 }, },	-- Helm of the Vanquished Hero
		}),
		i(30210, {	-- Mantle of Tirisfal
			["cost"] = { { "i", 30250, 1 }, },	-- Pauldrons of the Vanquished Hero
		}),
		i(30196, {	-- Robes of Tirisfal
			["cost"] = { { "i", 30238, 1 }, },	-- Chestguard of the Vanquished Hero
		}),
		i(30205, {	-- Gloves of Tirisfal
			["cost"] = { { "i", 30241, 1 }, },	-- Gloves of the Vanquished Hero
		}),
		i(30207, {	-- Leggings of Tirisfal
			["cost"] = { { "i", 30247, 1 }, },	-- Leggings of the Vanquished Hero
		}),
	}),
	cl(WARLOCK, {
		i(30212, {	-- Hood of the Corruptor
			["cost"] = { { "i", 30244, 1 }, },	-- Helm of the Vanquished Hero
		}),
		i(30215, {	-- Mantle of the Corruptor
			["cost"] = { { "i", 30250, 1 }, },	-- Pauldrons of the Vanquished Hero
		}),
		i(30214, {	-- Robe of the Corruptor
			["cost"] = { { "i", 30238, 1 }, },	-- Chestguard of the Vanquished Hero
		}),
		i(30211, {	-- Gloves of the Corruptor
			["cost"] = { { "i", 30241, 1 }, },	-- Gloves of the Vanquished Hero
		}),
		i(30213, {	-- Leggings of the Corruptor
			["cost"] = { { "i", 30247, 1 }, },	-- Leggings of the Vanquished Hero
		}),
	}),
	cl(DRUID, {
		i(30216, {	-- Nordrassil Chestguard
			["cost"] = { { "i", 30237, 1 }, },	-- Chestguard of the Vanquished Defender
		}),
		i(30231, {	-- Nordrassil Chestpiece
			["cost"] = { { "i", 30237, 1 }, },	-- Chestguard of the Vanquished Defender
		}),
		i(30222, {	-- Nordrassil Chestplate
			["cost"] = { { "i", 30237, 1 }, },	-- Chestguard of the Vanquished Defender
		}),
		i(30229, {	-- Nordrassil Feral-Kilt
			["cost"] = { { "i", 30246, 1 }, },	-- Leggings of the Vanquished Defender
		}),
		i(30230, {	-- Nordrassil Feral-Mantle
			["cost"] = { { "i", 30249, 1 }, },	-- Pauldrons of the Vanquished Defender
		}),
		i(30232, {	-- Nordrassil Gauntlets
			["cost"] = { { "i", 30240, 1 }, },	-- Gloves of the Vanquished Defender
		}),
		i(30217, {	-- Nordrassil Gloves
			["cost"] = { { "i", 30240, 1 }, },	-- Gloves of the Vanquished Defender
		}),
		i(30223, {	-- Nordrassil Handgrips
			["cost"] = { { "i", 30240, 1 }, },	-- Gloves of the Vanquished Defender
		}),
		i(30228, {	-- Nordrassil Headdress
			["cost"] = { { "i", 30243, 1 }, },	-- Helm of the Vanquished Defender
		}),
		i(30219, {	-- Nordrassil Headguard
			["cost"] = { { "i", 30243, 1 }, },	-- Helm of the Vanquished Defender
		}),
		i(30233, {	-- Nordrassil Headpiece
			["cost"] = { { "i", 30243, 1 }, },	-- Helm of the Vanquished Defender
		}),
		i(30220, {	-- Nordrassil Life-Kilt
			["cost"] = { { "i", 30246, 1 }, },	-- Leggings of the Vanquished Defender
		}),
		i(30221, {	-- Nordrassil Life-Mantle
			["cost"] = { { "i", 30249, 1 }, },	-- Pauldrons of the Vanquished Defender
		}),
		i(30234, {	-- Nordrassil Wrath-Kilt
			["cost"] = { { "i", 30246, 1 }, },	-- Leggings of the Vanquished Defender
		}),
		i(30235, {	-- Nordrassil Wrath-Mantle
			["cost"] = { { "i", 30249, 1 }, },	-- Pauldrons of the Vanquished Defender
		}),
	}),
});
local MADAME_RUBY_GROUPS = {
	i(28282, {	-- Formula: Enchant Shield - Major Stamina (RECIPE!)
		["isLimited"] = true,
	}),
	i(22565, {	-- Formula: Large Prismatic Shard (RECIPE!)
		["isLimited"] = true,
	}),
	i(25849, {	-- Formula: Runed Eternium Rod (RECIPE!)
		["timeline"] = { ADDED_2_0_1, REMOVED_5_0_4 },
	}),
	i(22562, {	-- Formula: Superior Mana Oil (RECIPE!)
		["isLimited"] = true,
	}),
	i(22563, {	-- Formula: Superior Wizard Oil (RECIPE!)
		["isLimited"] = true,
	}),
};
local ZURII_YURIAL_GROUPS = {};
-- #if AFTER CATA
local EPIC_GEM_COSTS = { { "c", 395, 78 } };	-- 78x Justice Points
-- #elseif AFTER WRATH
local EPIC_GEM_COSTS = { { "c", 42, 15 } };	-- 15x Badge of Justice
-- #else
local EPIC_GEM_COSTS = { { "i", 29434, 15 } };	-- 15x Badge of Justice
-- #endif
root(ROOTS.Zones, {
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(SHATTRATH_CITY, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {
			["lore"] = "Shattrath City is a major hub in Outland situated in the northwestern portion of Terokkar Forest. It is a capital-sized sanctuary city populated by ancient heroes and naaru. It is the first capital available to both sides.",
			["icon"] = 135760,
			["isRaid"] = true,
			["lvl"] = 58,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(964, {	-- Going Down?
						["lore"] = "This achievement can be easily earned by riding your epic mount directly off the Scryer elevator when it's at its highest point on to the flat ground below without hitting the bridge. (so jump at an angle)\n\nAdditionally paladins and mages can make themselves immune to get this achievement.",
						["timeline"] = { ADDED_3_0_2 },
					}),
					ach(906, {	-- Kickin' It Up a Notch
						["timeline"] = { ADDED_3_0_2 },
						["requireSkill"] = COOKING,
						["groups"] = {
							crit(5702, {	-- Revenge is Tasty
								["timeline"] = { ADDED_3_0_2 },
								["_quests"] = { 11377 },
							}),
							crit(5703, {	-- Super Hot Stew
								["timeline"] = { ADDED_3_0_2 },
								["_quests"] = { 11379 },
							}),
							crit(5704, {	-- Manalicious
								["timeline"] = { ADDED_3_0_2 },
								["_quests"] = { 11380 },
							}),
							crit(5705, {	-- Soup for the Soul
								["timeline"] = { ADDED_3_0_2 },
								["_quests"] = { 11381 },
							}),
						},
					}),
					applyclassicphase(TBC_PHASE_ONE, achWithReps(1205, { FACTION_THE_ALDOR, FACTION_THE_SCRYERS }, {	-- Hero of Shattrath
						-- #if BEFORE WRATH
						["providers"] = {
							{ "i", 31779 },	-- Aldor Tabard
							{ "i", 31780 },	-- Scryers Tabard
						},
						["lore"] = "NOTE: This can be accomplished now by learning both faction's Exalted recipes, their tabards, or their equipment that require Exalted reputation to buy. For the sake of simplicity, just buy both tabards as this will also count toward the 25 tabard achievement later.\n\nWARNING: You must maintain at least one of these requirements in order to acquire the achievement with prepatch!",
						-- #endif
					})),
					applyclassicphase(TBC_PHASE_ONE, achWithAnyReps(903, { FACTION_THE_ALDOR, FACTION_THE_SCRYERS })),	-- Shattrath Divided
					applyclassicphase(TBC_PHASE_ONE, achWithReps(764, { FACTION_CENARION_EXPEDITION, FACTION_KEEPERS_OF_TIME, FACTION_LOWER_CITY, FACTION_THE_SHATAR, FACTION_HONOR_HOLD }, {	-- The Burning Crusader (A)
						["races"] = ALLIANCE_ONLY,
					})),
					applyclassicphase(TBC_PHASE_ONE, achWithReps(763, { FACTION_CENARION_EXPEDITION, FACTION_KEEPERS_OF_TIME, FACTION_LOWER_CITY, FACTION_THE_SHATAR, FACTION_THRALLMAR }, {	-- The Burning Crusader (H)
						["races"] = HORDE_ONLY,
					})),
				}),
				n(FACTIONS, {
					faction(936, {	-- Shattrath City
						["description"] = "This is a hidden reputation. It might not count towards reputation achievements.",
						["collectible"] = false,
					}),
					faction(FACTION_LOWER_CITY, {	-- Lower City
						["maps"] = {
							256,		-- AUCHINDOUN_AUCHENAI_CRYPTS 1
							257,		-- AUCHINDOUN_AUCHENAI_CRYPTS 2
							258,		-- AUCHINDOUN_SETHEKK_HALLS 1
							259,		-- AUCHINDOUN_SETHEKK_HALLS 2
							AUCHINDOUN_SHADOW_LABYRINTH,
						},
					}),
					faction(FACTION_THE_ALDOR, {	-- The Aldor
						["maxReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					}),
					faction(FACTION_THE_SCRYERS, {	-- The Scryers
						["maxReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					}),
					faction(FACTION_THE_SHATAR, {	-- The Sha'tar
						["maps"] = { TEMPEST_KEEP_ARCATRAZ, TEMPEST_KEEP_BOTANICA, TEMPEST_KEEP_MECHANAR },
					}),
				}),
				n(FLIGHT_PATHS, {
					fp(128, {	-- Shattrath, Terokkar Forest
						["cr"] = 18940,	-- Nutral <Flight Master>
						["coord"] = { 64.08, 41.12, SHATTRATH_CITY },
					}),
				}),
				n(PROFESSIONS, {
					prof(BLACKSMITHING, {
						n(20124, {	-- Kradu Grimblade <Weaponsmith Trainer>
							["coord"] = { 69.6, 43.6, SHATTRATH_CITY },
							["groups"] = TBC_WEAPONSMITHING,
						}),
						n(20125, {	-- Zula Slagfury <Armorsmith Trainer>
							["coord"] = { 69.8, 42.6, SHATTRATH_CITY },
							["groups"] = TBC_ARMORSMITHING,
						}),
					}),
					prof(COOKING, {
						n(19185, {	-- Jack Trapper <Cooking Trainer>
							["coord"] = { 63.2, 68.6, SHATTRATH_CITY },
							["groups"] = TBC_COOKING,
						}),
					}),
				}),
				n(QUESTS, {
					q(10420, {	-- A Cleansing Light
						["qg"] = 18538,	-- Ishanah
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["coord"] = { 24.2, 29.8, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 29740, 1 } },	-- Fel Armament
					}),
					q(10020, {	-- A Cure for Zahlia
						["qg"] = 18597,	-- Sha'nir
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["coord"] = { 64.2, 15.4, SHATTRATH_CITY },
						["groups"] = {
							objective(1, {	-- 0/1 Stonegazer's Blood
								["provider"] = { "i", 25815 },	-- Stonegazer's Blood
								["coord"] = { 66.6, 30.6, TEROKKAR_FOREST },
								["cr"] = 18648,	-- Stonegazer
							}),
						},
					}),
					q(10210, {	-- A'dal
						["qg"] = 19684,	-- Haggard War Veteran
						["coord"] = { 59.6, 41.4, SHATTRATH_CITY },
					}),
					q(10551, {	-- Allegiance to the Aldor
						["qg"] = 18166,	-- Archmage Khadgar
						["sourceQuest"] = 10211,	-- City of Light
						["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
					}),
					q(10552, {	-- Allegiance to the Scryers
						["qg"] = 18166,	-- Archmage Khadgar
						["sourceQuest"] = 10211,	-- City of Light
						["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
					}),
					q(10419, {	-- Arcane Tomes
						["qg"] = 18530,	-- Voren'thal the Seer
						["sourceQuest"] = 10416,	-- Synthesis of Power
						["coord"] = { 42.6, 91.4, SHATTRATH_CITY },
						["maxReputation"] = { FACTION_THE_SCRYERS, EXALTED },	-- The Scryers, Exalted.
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 29739, 1 } },	-- Arcane Tome
						["repeatable"] = true,
					}),
					q(10211, {	-- City of Light
						["qg"] = 18166,	-- Archmage Khadgar
						["sourceQuest"] = 10210,	-- A'dal
						["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
					}),
					q(44863, bubbleDownSelf({ ["timeline"] = { CREATED_7_0_3, ADDED_7_1_5 } }, {	-- Clearing the Air
						["qg"] = 115546,	-- Lunelli
						["coord"] = { 64.1, 71.5, SHATTRATH_CITY },
						["requireSkill"] = BLACKSMITHING,
						["groups"] = {
							i(142279),	-- Plans: Windforged Rapier (RECIPE!)
							i(142283),	-- Plans: Skyforged Great Axe (RECIPE!)
							i(142282),	-- Plans: Stormforged Axe (RECIPE!)
						},
					})),
					applyclassicphase(TBC_PHASE_FIVE, q(11481, {	-- Crisis at the Sunwell
						["qg"] = 18537,	-- Adyen the Lightwarden
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["coord"] = { 30.6, 34.4, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["isBreadcrumb"] = true,
					})),
					applyclassicphase(TBC_PHASE_FIVE, q(11482, {	-- Duty Calls
						["qg"] = 18594,	-- Dathris Sunstriker
						["coord"] = { 54.6, 80.8, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["isBreadcrumb"] = true,
						["lvl"] = 70,
					})),
					q(41160, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_5 } }, {	-- Earth to Earth
						["qg"] = 115546,	-- Lunelli
						["coord"] = { 64.1, 71.5, SHATTRATH_CITY },
						["timeline"] = { ADDED_7_0_3 },
						["requireSkill"] = BLACKSMITHING,
						["groups"] = {
							i(142284),	-- Plans: Stoneforged Claymore (RECIPE!)
							i(142287),	-- Plans: Great Earthforged Hammer (RECIPE!)
							i(142286),	-- Plans: Lavaforged Warhammer (RECIPE!)
						},
					})),
					q(10421, {	-- Fel Armaments
						["qg"] = 18538,	-- Ishanah
						["sourceQuest"] = 10420,	-- A Cleansing Light
						["coord"] = { 24.2, 29.8, SHATTRATH_CITY },
						["maxReputation"] = { FACTION_THE_ALDOR, EXALTED },	-- The Aldor, Exalted.
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 29740, 1 } },	-- Fel Armament
						["repeatable"] = true,
					}),
					q(10412, {	-- Firewing Signets
						["qg"] = 18531,	-- Magistrix Fyalenn
						["sourceQuest"] = 10552,	-- Allegiance to the Scryers
						["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 29426, 10 } },	-- Firewing Signet
					}),
					applyclassicphase(TBC_PHASE_FIVE, q(11875, {	-- Gaining the Advantage
						["qg"] = 19202,	-- Emissary Mordin
						["description"] = "This daily quest is only available to characters with Herbalism, Mining, or Skinning.",
						["maxReputation"] = { FACTION_SHATTERED_SUN_OFFENSIVE, EXALTED },	-- Shattered Sun Offensive, Exalted.
						["maps"] = { BLADES_EDGE_MOUNTAINS, HELLFIRE_PENINSULA, ISLE_OF_QUELDANAS, NAGRAND, NETHERSTORM, SHADOWMOON_VALLEY, TEROKKAR_FOREST, ZANGARMARSH },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 25),
						["groups"] = {
							objective(1, {	-- 0/8 Nether Residue
								["provider"] = { "i", 35229 },	-- Nether Residue
							}),
						},
					})),
					applyclassicphase(TBC_PHASE_FIVE_OFFENSIVE_PHASE_TWO, q(11513, {	-- Intercepting the Mana Cells
						["qg"] = 24932,	-- Exarch Nasuun
						["sourceQuest"] = 11517,	-- Report to Nasuun
						["coord"] = { 49.8, 42.6, SHATTRATH_CITY },
						["maxReputation"] = { FACTION_SHATTERED_SUN_OFFENSIVE, EXALTED },	-- Shattered Sun Offensive, Exalted.
						["maps"] = { BLADES_EDGE_MOUNTAINS },
						["timeline"] = { REMOVED_3_0_2 },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 25),
						-- #if BEFORE WRATH
						["OnUpdate"] = [[function(t) t.u = _.Settings:GetUnobtainableFilter(]] .. TBC_PHASE_FIVE_OFFENSIVE_PHASE_TWO_B .. [[) and ]] .. REMOVED_FROM_GAME .. [[ or ]] .. TBC_PHASE_FIVE_OFFENSIVE_PHASE_TWO .. [[; end]],
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/10 Smuggled Mana Cell
								["providers"] = {
									{ "i",  34246 },	-- Smuggled Mana Cell
									{ "o", 187039 },	-- Smuggled Mana Cell
								},
								["cost"] = { { "i", 34248, 1 } },	-- Bash'ir Phasing Device
								["coord"] = { 51, 19.3, BLADES_EDGE_MOUNTAINS },
								["crs"] = {
									22243,	-- Bash'ir Arcanist
									22241,	-- Bash'ir Raider
									22242,	-- Bash'ir Spell-Thief
									22244,	-- Unbound Ethereal
								},
							}),
							i(35232),	-- Shattered Sun Supplies
						},
					})),
					q(10554, {	-- Ishanah
						["qg"] = 18166,	-- Archmage Khadgar
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					}),
					q(10169, {	-- Losing Gracefully
						["qg"] = 19485,	-- Magister Falris
						["coord"] = { 47.0, 83.5, SHATTRATH_CITY },
						["timeline"] = { ADDED_2_0_3, REMOVED_2_4_0 },
					}),
					applyclassicphase(TBC_PHASE_FIVE_OFFENSIVE_PHASE_TWO_B, q(11514, {	-- Maintaining the Sunwell Portal
						["qg"] = 24932,	-- Exarch Nasuun
						["sourceQuest"] = 11534,	-- Report to Nasuun
						["coord"] = { 49.8, 42.6, SHATTRATH_CITY },
						["maxReputation"] = { FACTION_SHATTERED_SUN_OFFENSIVE, EXALTED },	-- Shattered Sun Offensive, Exalted.
						["maps"] = { BLADES_EDGE_MOUNTAINS },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 25),
						["groups"] = {
							objective(1, {	-- 0/10 Smuggled Mana Cell
								["providers"] = {
									{ "i",  34246 },	-- Smuggled Mana Cell
									{ "o", 187039 },	-- Smuggled Mana Cell
								},
								["cost"] = { { "i", 34248, 1 } },	-- Bash'ir Phasing Device
								["coord"] = { 51, 19.3, BLADES_EDGE_MOUNTAINS },
								["crs"] = {
									22243,	-- Bash'ir Arcanist
									22241,	-- Bash'ir Raider
									22242,	-- Bash'ir Spell-Thief
									22244,	-- Unbound Ethereal
								},
							}),
							i(35232),	-- Shattered Sun Supplies
						},
					})),
					q(11380, {	-- Manalicious
						["qg"] = 24393,	-- The Rokk <Master of Cooking>
						["coord"] = { 61.6, 16.6, SHATTRATH_CITY },
						["maps"] = { NETHERSTORM },
						["requireSkill"] = COOKING,
						["isDaily"] = true,
						["lvl"] = 70,
						["groups"] = {
							objective(1, {	-- 0/15 Mana Berry
								["provider"] = { "i", 33849 },	-- Mana Berry
								["coord"] = { 48, 54, NETHERSTORM },
							}),
							i(33844),	-- Barrel of Fish
							i(33857),	-- Crate of Meat
						},
					}),
					q(10325, {	-- Marks of Kil'jaeden
						["qg"] = 18537,	-- Adyen the Lightwarden
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 29425, 10 } },	-- Mark of Kil'jaeden
					}),
					q(10653, {	-- Marks of Sargeras
						["qg"] = 18537,	-- Adyen the Lightwarden
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 30809, 10 } },	-- Mark of Sargeras
					}),
					q(10025, {	-- More Basilisk Eyes
						["qg"] = 18596,	-- Arcanist Adyria
						["sourceQuest"] = 10024,	-- Voren'thal's Visions
						["description"] = "If you want to switch from Aldor to Scryers, use this quest to regain lost Scryers reputation.",
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 25744, 8 } },	-- Dampscale Basilisk Eye
						["coord"] = { 54.8, 22.6, SHATTRATH_CITY },
						["repeatable"] = true,
					}),
					q(10918, {	-- More Feathers
						["qg"] = 22429,	-- Vekax
						["sourceQuest"] = 10917,	-- The Outcast's Plight
						["coord"] = { 47.7, 18.8, SHATTRATH_CITY },
						["maxReputation"] = { FACTION_LOWER_CITY, HONORED },	-- Lower City, Honored.
						["cost"] = { { "i", 25719, 30 } },	-- 30x Arakkoa Feather
						["repeatable"] = true,
						-- #if NOT ANYCLASSIC
						["lockCriteria"] = { 1, "factionID", 1011.6 },	-- Lower City, Honored
						-- #endif
						["groups"] = {
							i(31800, {  -- Outcasts Cache
								["sym"] = {{"fill"}},	-- fill with Sourced content for this Item since reward of repeatable quest
							}),
						},
					}),
					q(10415, {	-- More Firewing Signets
						["qg"] = 18531,	-- Magistrix Fyalenn
						["sourceQuest"] = 10412,	-- Firewing Signets
						["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
						["maxReputation"] = { FACTION_THE_SCRYERS, HONORED },	-- The Scryers, Honored.
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 29426, 10 } },	-- Firewing Signet
						["repeatable"] = true,
					}),
					q(10326, {	-- More Marks of Kil'jaeden
						["qg"] = 18537,	-- Adyen the Lightwarden
						["sourceQuest"] = 10325,	-- Marks of Kil'jaeden
						["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
						["maxReputation"] = { FACTION_THE_ALDOR, HONORED },	-- The Aldor, Honored.
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 29425, 10 } },	-- Mark of Kil'jaeden
						["repeatable"] = true,
					}),
					q(10654, {	-- More Marks of Sargeras
						["qg"] = 18537,	-- Adyen the Lightwarden
						["sourceQuests"] = { 10826, 10653 },	-- Marks of Sargeras (SMV or Shattrath)
						["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
						["maxReputation"] = { FACTION_THE_ALDOR, EXALTED },	-- The Aldor, Exalted.
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 30809, 10 } },	-- Mark of Sargeras
						["repeatable"] = true,
					}),
					q(10658, {	-- More Sunfury Signets
						["qg"] = 18531,	-- Magistrix Fyalenn
						["sourceQuests"] = { 10824, 10656 },	-- Sunfury Signets (SMV or Shattrath)
						["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
						["maxReputation"] = { FACTION_THE_SCRYERS, EXALTED },	-- The Scryers, Exalted.
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 30810, 10 } },	-- Sunfury Signet
						["repeatable"] = true,
					}),
					q(10019, {	-- More Venom Sacs
						["qg"] = 18597,	-- Sha'nir
						["sourceQuest"] = 10017,	-- Strained Supplies
						["description"] = "If you want to switch from Scryers to Aldor, use this quest to regain lost Aldor reputation.",
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["coord"] = { 64.2, 15.4, SHATTRATH_CITY },
						["cost"] = { { "i", 25802, 8 } },	-- Dreadfang Venom Sac
						["repeatable"] = true,
					}),
					q(57581, {	-- Plucking Plumes
						["qg"] = 22429,	-- Vekax
						["coord"] = { 47.7, 18.8, SHATTRATH_CITY },
						["timeline"] = { ADDED_8_2_5 },
						["minReputation"] = { FACTION_LOWER_CITY, EXALTED },	-- Lower City, Exalted.
						["cost"] = { { "i", 25719, 30 } },	-- 30x Arakkoa Feather
						["repeatable"] = true,
						["groups"] = {
							i(31800, {  -- Outcasts Cache
								["sym"] = {{"fill"}},	-- fill with Sourced content for this Item since reward of repeatable quest
							}),
						},
					}),
					q(10037, {	-- Rather Be Fishin'
						["qg"] = 18653,	-- Seth
						["coord"] = { 64.0, 15.6, SHATTRATH_CITY },
						["maps"] = { TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/8 Pristine Shimmerscale Eel
								["provider"] = { "i", 25891 },	-- Pristine Shimmerscale Eel
								["coord"] = { 39.6, 9.6, TEROKKAR_FOREST },
								["cr"] = 18750,	-- Shimmerscale Eel
							}),
							i(25978)	-- Seth's Graphite Fishing Pole
						},
					}),
					q(10021, {	-- Restoring the Light
						["qg"] = 18538,	-- Ishanah
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["coord"] = { 24.2, 29.8, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["maps"] = { TEROKKAR_FOREST },
						["groups"] = {
							objective(1, {	-- 0/1 Northern Altar Cleansed
								["providers"] = {
									{ "i",  25817 },	-- Blessed Vial
									{ "o", 182563 },	-- Northern Altar
								},
								["coord"] = { 50.6, 16.7, TEROKKAR_FOREST },
							}),
							objective(2, {	-- 0/1 Eastern Altar Cleansed
								["providers"] = {
									{ "i",  25817 },	-- Blessed Vial
									{ "o", 182565 },	-- Eastern Altar
								},
								["coord"] = { 49.2, 20.5, TEROKKAR_FOREST },
							}),
							objective(3, {	-- 0/1 Western Altar Cleansed
								["providers"] = {
									{ "i",  25817 },	-- Blessed Vial
									{ "o", 182566 },	-- Western Altar
								},
								["coord"] = { 48.1, 14.3, TEROKKAR_FOREST },
							}),
						},
					}),
					q(11377, {	-- Revenge is Tasty
						["qg"] = 24393,	-- The Rokk <Master of Cooking>
						["coord"] = { 61.6, 16.6, SHATTRATH_CITY },
						["maps"] = { TEROKKAR_FOREST },
						["requireSkill"] = COOKING,
						["isDaily"] = true,
						["lvl"] = 70,
						["groups"] = {
							objective(1, {	-- 0/1 Kaliri Stew
								["provider"] = { "i", 33839 },	-- Kaliri Stew
								["coord"] = { 68.4, 79.0, TEROKKAR_FOREST },
								["cr"] = 23051,	-- Monstrous Kaliri
								["cost"] = {
									{ "i", 33837, 1 },	-- Cooking Pot
									{ "i", 27659, 3 },	-- Warp Burger
									{ "i", 33838, 1 },	-- Giant Kaliri Wing
								},
							}),
							i(33844),	-- Barrel of Fish
							i(33857),	-- Crate of Meat
						},
					}),
					q(10414, {	-- Single Firewing Signet
						["qg"] = 18531,	-- Magistrix Fyalenn
						["sourceQuest"] = 10412,	-- Firewing Signets
						["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
						["maxReputation"] = { FACTION_THE_SCRYERS, HONORED },	-- The Scryers, Honored.
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 29426, 1 } },	-- Firewing Signet
						["repeatable"] = true,
					}),
					q(10327, {	-- Single Mark of Kil'jaeden
						["qg"] = 18537,	-- Adyen the Lightwarden
						["sourceQuest"] = 10325,	-- Marks of Kil'jaeden
						["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
						["maxReputation"] = { FACTION_THE_ALDOR, HONORED },	-- The Aldor, Honored.
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 29425, 1 } },	-- Mark of Kil'jaeden
						["repeatable"] = true,
					}),
					q(10655, {	-- Single Mark of Sargeras
						["qg"] = 18537,	-- Adyen the Lightwarden
						["sourceQuests"] = { 10826, 10653 },	-- Marks of Sargeras (SMV or Shattrath)
						["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
						["maxReputation"] = { FACTION_THE_ALDOR, EXALTED },	-- The Aldor, Exalted.
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 30809, 1 } },	-- Mark of Sargeras
						["repeatable"] = true,
					}),
					q(10659, {	-- Single Sunfury Signet
						["qg"] = 18531,	-- Magistrix Fyalenn
						["sourceQuests"] = { 10824, 10656 },	-- Sunfury Signets (SMV or Shattrath)
						["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
						["maxReputation"] = { FACTION_THE_SCRYERS, EXALTED },	-- The Scryers, Exalted.
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 30810, 1 } },	-- Sunfury Signet
						["repeatable"] = true,
					}),
					q(11381, {	-- Soup for the Soul
						["qg"] = 24393,	-- The Rokk <Master of Cooking>
						["coord"] = { 61.6, 16.6, SHATTRATH_CITY },
						["maps"] = { NAGRAND },
						["requireSkill"] = COOKING,
						["isDaily"] = true,
						["lvl"] = 70,
						["groups"] = {
							objective(1, {	-- 0/1 Spiritual Soup
								["provider"] = { "i", 33850 },	-- Spiritual Soup
								["coord"] = { 25.81, 59.40, NAGRAND },
								["cost"] = {
									{ "i", 33851, 1 },	-- Cooking Pot
									{ "i", 27658, 4 },	-- Roasted Clefthoof
								},
							}),
							i(33844),	-- Barrel of Fish
							i(33857),	-- Crate of Meat
						},
					}),
					q(10984, {	-- Speak with the Ogre
						["qg"] = 22497,	-- V'eru
						["coord"] = { 56.4, 49.2, SHATTRATH_CITY },
						["altQuests"] = { 11022 },	-- Speak with Mog'dorg
						["isBreadcrumb"] = true,
					}),
					q(10017, {	-- Strained Supplies
						["qg"] = 18597,	-- Sha'nir
						["description"] = "If you want to switch from Scryers to Aldor, use this quest to regain lost Aldor reputation.",
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["coord"] = { 64.2, 15.4, SHATTRATH_CITY },
						["cost"] = { { "i", 25802, 8 } },	-- Dreadfang Venom Sac
					}),
					applyclassicphase(TBC_PHASE_FIVE, q(11877, {	-- Sunfury Attack Plans
						["qg"] = 25140,	-- Lord Torvos
						["coord"] = { 62.6, 36, SHATTRATH_CITY },
						["maxReputation"] = { FACTION_SHATTERED_SUN_OFFENSIVE, EXALTED },	-- Shattered Sun Offensive, Exalted.
						["maps"] = { NETHERSTORM },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Sunfury Attack Plans
								["provider"] = { "i", 35231 },	-- Sunfury Attack Plans
								["crs"] = {
									21089,	-- Sunfury Blood Knight
									18853,	-- Sunfury Bloodwarder
									19453,	-- Sunfury Captain
									18855,	-- Sunfury Magister
									20248,	-- Sunfury Nethermancer
									19779,	-- Sunfury Geologist
									19643,	-- Sunfury Astromancer
									18857,	-- Sunfury Warp-Master
									19635,	-- Captain Arathyn
									18852,	-- Sunfury Warp-Engineer
									20139,	-- Sunfury Conjurer
									20140,	-- Sunfury Centurion
									20134,	-- Sunfury Arcanist
									18850,	-- Sunfury Guardsman
									20207,	-- Sunfury Bowman
									20136,	-- Sunfury Researcher
									20135,	-- Sunfury Arch Mage
								},
							}),
						},
					})),
					q(10656, {	-- Sunfury Signets
						["qg"] = 18531,	-- Magistrix Fyalenn
						["sourceQuest"] = 10552,	-- Allegiance to the Scryers
						["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 30810, 10 } },	-- Sunfury Signet
					}),
					q(11379, {	-- Super Hot Stew
						["qg"] = 24393,	-- The Rokk <Master of Cooking>
						["coord"] = { 61.6, 16.6, SHATTRATH_CITY },
						["maps"] = { BLADES_EDGE_MOUNTAINS },
						["requireSkill"] = COOKING,
						["isDaily"] = true,
						["lvl"] = 70,
						["groups"] = {
							objective(1, {	-- 0/1 Demon Broiled Surprise
								["provider"] = { "i", 33848 },	-- Demon Broiled Surprise
								["coord"] = { 28.0, 82.2, BLADES_EDGE_MOUNTAINS },
								["cr"] = 19973,	-- Abyssal Flamebringer
								["cost"] = {
									{ "i", 33852, 1 },	-- Cooking Pot
									{ "i", 31672, 2 },	-- Mok'Nathal Shortribs
									{ "i", 31673, 1 },	-- Crunchy Serpent
								},
							}),
							i(33844),	-- Barrel of Fish
							i(33857),	-- Crate of Meat
						},
					}),
					q(10416, {	-- Synthesis of Power
						["qg"] = 18530,	-- Voren'thal the Seer
						["sourceQuest"] = 10552,	-- Allegiance to the Scryers
						["coord"] = { 42.6, 91.4, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 29739, 1 } },	-- Arcane Tome
					}),
					q(10251, {	-- The Master's Grand Design?
						["qg"] = 19720,	-- "Dirty" Larry <Ruffian>
						["sourceQuest"] = 10231,	-- What Book? I Don't See Any Book.
						["coord"] = { 43.6, 29.6, SHATTRATH_CITY },
						["maps"] = { NAGRAND },
					}),
					applyclassicphase(TBC_PHASE_FIVE, q(11880, {	-- The Multiphase Survey
						["qg"] = 19475,	-- Harbinger Haronem
						["coord"] = { 61.4, 52.2, SHATTRATH_CITY },
						["maxReputation"] = { FACTION_SHATTERED_SUN_OFFENSIVE, EXALTED },	-- Shattered Sun Offensive, Exalted.
						["maps"] = { NAGRAND },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 25),
						["groups"] = {
							objective(1, {	-- 0/6 Multiphase Readings Taken
								["provider"] = { "i", 35233 },	-- Multiphase Spectrographic Goggles
								["coord"] = { 36, 66, NAGRAND },
							}),
						},
					})),
					q(10917, {  -- The Outcast's Plight
						["qg"] = 22429,	-- Vekax
						["coord"] = { 47.7, 18.8, SHATTRATH_CITY },
						["cost"] = { { "i", 25719, 30 } },	-- 30x Arakkoa Feather
						["groups"] = {
							i(31800, {  -- Outcasts Cache
								i(28495),	-- Windwalker's Sash
								i(28496),	-- Talonite's Belt
								i(28497),	-- Dreadhawk's Girdle
								i(28498),	-- Ravenguard's Baldric
								i(28491),	-- Windwalker's Footwraps
								i(28493),	-- Dreadhawk's Schynbald
								i(28492),	-- Talonite's Boots
								i(28494),	-- Ravenguard's Greaves
							}),
						},
					}),
					q(10883, {	-- The Tempest Key
						["qg"] = 18166,	-- Archmage Khadgar
						["sourceQuest"] = 10588,	-- The Cipher of Damnation
						["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
					}),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11096, {	-- Threat from Above
						["qg"] = 23449,	-- Yuula
						["coord"] = { 64.0, 42.0, SHATTRATH_CITY },
					})),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11098, {	-- To Skettis!
						["qg"] = 23449,	-- Yuula
						["sourceQuest"] = 11096,	-- Threat From Above
						["coord"] = { 64.0, 42.0, SHATTRATH_CITY },
					})),
					q(10553, {	-- Voren'thal the Seer
						["qg"] = 18166,	-- Archmage Khadgar
						["sourceQuest"] = 10552,	-- Allegiance to the Scryers
						["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					}),
					q(10024, {	-- Voren'thal's Visions
						["qg"] = 18596,	-- Arcanist Adyria
						["description"] = "If you want to switch from Aldor to Scryers, use this quest to regain lost Scryers reputation.",
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 25744, 8 } },	-- Dampscale Basilisk Eye
						["coord"] = { 54.8, 22.6, SHATTRATH_CITY },
					}),
					q(11369, {	-- WANTED: A Black Stalker Egg
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { COILFANG_RESERVOIR_UNDERBOG },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/1 Black Stalker Egg
								["provider"] = { "i", 33826 },	-- Black Stalker Egg
							}),
						},
					}),
					q(11384, {	-- WANTED: A Warp Splinter Clipping
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { TEMPEST_KEEP_BOTANICA },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/1 Warp Splinter Clipping
								["provider"] = { "i", 33859 },	-- Warp Splinter Clipping
							}),
						},
					}),
					q(11382, {	-- WANTED: Aeonus's Hourglass
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { CAVERNS_OF_TIME_BLACK_MORASS },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/1 Aeonus' Hourglass
								["provider"] = { "i", 33858 },	-- Aeonus' Hourglass
							}),
						},
					}),
					q(11389, {	-- WANTED: Arcatraz Sentinels
						["qg"] = 24370,	-- Nether-Stalker Mah'duun
						["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
						["maps"] = { TEMPEST_KEEP_ARCATRAZ },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/5 Arcatraz Sentinel slain
								["provider"] = { "n", 20869 },	-- Arcatraz Sentinel
							}),
							i(29460),	-- Ethereum Prison Key
						},
					}),
					q(11363, {	-- WANTED: Bladefist's Seal
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { HELLFIRE_CITADEL_SHATTERED_HALLS },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/1 Bladefist's Seal
								["provider"] = { "i", 33815 },	-- Bladefist's Seal
							}),
						},
					}),
					q(11371, {	-- WANTED: Coilfang Myrmidons
						["qg"] = 24370,	-- Nether-Stalker Mah'duun
						["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
						["maps"] = { COILFANG_RESERVOIR_STEAMVAULT },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/14 Coilfang Myrmidon slain
								["provider"] = { "n", 17800 },	-- Coilfang Myrmidon
							}),
							i(29460),	-- Ethereum Prison Key
						},
					}),
					q(11362, {	-- WANTED: Keli'dan's Feathered Stave
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { HELLFIRE_CITADEL_BLOOD_FURNACE },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/1 Keli'dan's Feathered Stave
								["provider"] = { "i", 33814 },	-- Keli'dan's Feathered Stave
							}),
						},
					}),
					q(11376, {	-- WANTED: Malicious Instructors
						["qg"] = 24370,	-- Nether-Stalker Mah'duun
						["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
						["maps"] = { AUCHINDOUN_SHADOW_LABYRINTH },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/3 Malicious Instructor slain
								["provider"] = { "n", 18848 },	-- Malicious Instructor
							}),
							i(29460),	-- Ethereum Prison Key
						},
					}),
					q(11375, {	-- WANTED: Murmur's Whisper
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { AUCHINDOUN_SHADOW_LABYRINTH },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/1 Murmur's Whisper
								["provider"] = { "i", 33840 },	-- Murmur's Whisper
							}),
						},
					}),
					q(11354, {	-- WANTED: Nazan's Riding Crop
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { HELLFIRE_CITADEL_RAMPARTS },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/1 Nazan's Riding Crop
								["provider"] = { "i", 33833 },	-- Nazan's Riding Crop
							}),
						},
					}),
					q(11386, {	-- WANTED: Pathaleon's Projector
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { TEMPEST_KEEP_MECHANAR },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/1 Pathaleon's Projector
								["provider"] = { "i", 33860 },	-- Pathaleon's Projector
							}),
						},
					}),
					q(11383, {	-- WANTED: Rift Lords
						["qg"] = 24370,	-- Nether-Stalker Mah'duun
						["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
						["maps"] = { CAVERNS_OF_TIME_BLACK_MORASS },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/4 Rift Lord slain
								["provider"] = { "n", 17839 },	-- Rift Lord
							}),
							i(29460),	-- Ethereum Prison Key
						},
					}),
					q(11373, {	-- WANTED: Shaffar's Wondrous Pendant
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { AUCHINDOUN_MANA_TOMBS },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/1 Shaffar's Wondrous Amulet
								["provider"] = { "i", 33835 },	-- Shaffar's Wondrous Amulet
							}),
						},
					}),
					q(11364, {	-- WANTED: Shattered Hand Centurions
						["qg"] = 24370,	-- Nether-Stalker Mah'duun
						["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
						["maps"] = { HELLFIRE_CITADEL_SHATTERED_HALLS },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/4 Shattered Hand Centurion slain
								["provider"] = { "n", 17465 },	-- Shattered Hand Centurion
							}),
							i(29460),	-- Ethereum Prison Key
						},
					}),
					applyclassicphase(TBC_PHASE_FIVE, q(11500, {	-- WANTED: Sisters of Torment
						["qg"] = 24370,	-- Nether-Stalker Mah'duun
						["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
						["maps"] = { MAGISTERS_TERRACE },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/4 Sister of Torment slain
								["provider"] = { "n", 24697 },	-- Sister of Torment
							}),
							i(29460),	-- Ethereum Prison Key
						},
					})),
					q(11385, {	-- WANTED: Sunseeker Channelers
						["qg"] = 24370,	-- Nether-Stalker Mah'duun
						["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
						["maps"] = { TEMPEST_KEEP_BOTANICA },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/6 Sunseeker Channeler slain
								["provider"] = { "n", 19505 },	-- Sunseeker Channeler
							}),
							i(29460),	-- Ethereum Prison Key
						},
					}),
					q(11387, {	-- WANTED: Tempest-Forge Destroyers
						["qg"] = 24370,	-- Nether-Stalker Mah'duun
						["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
						["maps"] = { TEMPEST_KEEP_MECHANAR },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/5 Tempest-Forge Destroyer slain
								["provider"] = { "n", 19735 },	-- Tempest-Forge Destroyer
							}),
							i(29460),	-- Ethereum Prison Key
						},
					}),
					q(11378, {	-- WANTED: The Epoch Hunter's Head
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { CAVERNS_OF_TIME_OLD_HILLSBRAD_FOOTHILLS },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/1 Epoch Hunter's Head
								["provider"] = { "i", 33847 },	-- Epoch Hunter's Head
							}),
						},
					}),
					q(11374, {	-- WANTED: The Exarch's Soul Gem
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { AUCHINDOUN_AUCHENAI_CRYPTS },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/1 The Exarch's Soul Gem
								["provider"] = { "i", 33836 },	-- The Exarch's Soul Gem
							}),
						},
					}),
					q(11372, {	-- WANTED: The Headfeathers of Ikiss
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { AUCHINDOUN_SETHEKK_HALLS },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/1 The Headfeathers of Ikiss
								["provider"] = { "i", 33834 },	-- The Headfeathers of Ikiss
							}),
						},
					}),
					q(11368, {	-- WANTED: The Heart of Quagmirran
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { COILFANG_RESERVOIR_SLAVE_PENS },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/1 The Heart of Quagmirran
								["provider"] = { "i", 33821 },	-- The Heart of Quagmirran
							}),
						},
					}),
					q(11388, {	-- WANTED: The Scroll of Skyriss
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { TEMPEST_KEEP_ARCATRAZ },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/1 The Scroll of Skyriss
								["provider"] = { "i", 33861 },	-- The Scroll of Skyriss
							}),
						},
					}),
					applyclassicphase(TBC_PHASE_FIVE, q(11499, {	-- WANTED: The Signet Ring of Prince Kael'thas
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { MAGISTERS_TERRACE },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/1 The Signet Ring of Prince Kael'thas
								["provider"] = { "i", 34160 },	-- The Signet Ring of Prince Kael'thas
							}),
						},
					})),
					q(11370, {	-- WANTED: The Warlord's Treatise
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { COILFANG_RESERVOIR_STEAMVAULT },
						["isDaily"] = true,
						["lvl"] = lvlsquish(70, 70, 30),
						["groups"] = {
							objective(1, {	-- 0/1 The Warlord's Treatise
								["provider"] = { "i", 33827 },	-- The Warlord's Treatise
							}),
						},
					}),
					q(10231, {	-- What Book? I Don't See Any Book.
						["qg"] = 19715,	-- Ezekiel
						["sourceQuest"] = 10228,	-- Ezekiel
						["coord"] = { 59.3, 35.6, SHATTRATH_CITY },
						["description"] = "Walks around the |cFFFFD700Terrace of Light|r.",
						["groups"] = {
							objective(1, {	-- Beat Down "Dirty" Larry and Get Information
								["provider"] = { "n", 19720 },	-- "Dirty" Larry <Ruffian>
								["coord"] = { 43.6, 29.6, SHATTRATH_CITY },
							}),
						},
					}),
				}),
				n(REWARDS, bubbleDownSelf({ ["timeline"] = { ADDED_2_3_0 } }, {
					i(33844, {	-- Barrel of Fish
						i(33869),	-- Recipe: Broiled Bloodfin (RECIPE!)
						i(34834, {	-- Recipe: Captain Rumsey's Lager (RECIPE!)
							["timeline"] = { ADDED_3_2_0 },
						}),
						i(33925),	-- Recipe: Delicious Chocolate Cake (RECIPE!)
						i(33875),	-- Recipe: Kibler's Bits (RECIPE!)
						i(33870),	-- Recipe: Skullfish Soup (RECIPE!)
						i(33871),	-- Recipe: Stormchops (RECIPE!)
					}),
					i(33857, {	-- Crate of Meat
						i(34834, {	-- Recipe: Captain Rumsey's Lager (RECIPE!)
							["timeline"] = { ADDED_3_2_0 },
						}),
						i(33925),	-- Recipe: Delicious Chocolate Cake (RECIPE!)
						i(33875),	-- Recipe: Kibler's Bits (RECIPE!)
						i(33873),	-- Recipe: Spicy Hot Talbuk (RECIPE!)
						i(33871),	-- Recipe: Stormchops (RECIPE!)
						i(33855),	-- Tarnished Silver Ring
					}),
				})),
				n(VENDORS, {
					n(19662, {	-- Aaron Hollman <Blacksmithing Supplies>
						["coord"] = { 64.0, 71.8, SHATTRATH_CITY },
						["minReputation"] = { FACTION_LOWER_CITY, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(23591, {	-- Plans: Adamantite Cleaver (RECIPE!)
								["isLimited"] = true,
							}),
							i(23592, {	-- Plans: Adamantite Dagger (RECIPE!)
								["isLimited"] = true,
							}),
							i(23590, {	-- Plans: Adamantite Maul (RECIPE!)
								["isLimited"] = true,
							}),
							i(23593, {	-- Plans: Adamantite Rapier (RECIPE!)
								["isLimited"] = true,
							}),
							i(25846, {	-- Plans: Adamantite Rod (RECIPE!)
								["isLimited"] = true,
								["timeline"] = { ADDED_2_0_1, REMOVED_5_0_4 },
							}),
						},
					}),
					n(33630, {	-- Aelthin <Alchemy Trainer>
						["coord"] = { 38.6, 71.8, SHATTRATH_CITY },
						["sym"] = {{"select","itemID",
							4565,    -- Simple Dagger
						}},
					}),
					n(19043, {	-- Ahemen <Staff Vendor>
						["coord"] = { 34.2, 20.0, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["sym"] = {{"select", "itemID",
							2527,	-- Battle Staff
							2535,	-- War Staff
						}},
						["groups"] = {
							i(12251, {	-- Big Stick
								["isLimited"] = true,
							}),
						},
					}),
					n(33674, {	-- Alchemist  Kanhu  <Alchemy Trainer>
						["coord"] = { 38.6, 30.0, SHATTRATH_CITY },
						["sym"] = {{"select","itemID",
							4565,    -- Simple Dagger
						}},
					}),
					n(21432, {	-- Almaador <Sha'tari Quartermaster>
						["coord"] = { 51.6, 41.6, SHATTRATH_CITY },
						["groups"] = bubbleDownClassicRep(FACTION_THE_SHATAR, {
							{		-- Neutral
							}, {	-- Friendly
								i(25904),	-- Design: Insightful Earthstorm Diamond (RECIPE!)
							}, {	-- Honored
								applyclassicphase(TBC_PHASE_TWO, i(35404)),	-- Crusader's Ornamented Headguard
								applyclassicphase(TBC_PHASE_TWO, i(35416)),	-- Crusader's Scaled Shoulders
								i(33155),	-- Design: Kailee's Rose (RECIPE!)
								i(30826),	-- Design: Ring of Arcane Shielding (RECIPE!)
								i(29195, {	-- Glyph of Arcane Warding
									["timeline"] = { REMOVED_5_0_4 },
								}),
								applyclassicphase(TBC_PHASE_TWO, i(35362)),	-- Kodohide Helm
								applyclassicphase(TBC_PHASE_TWO, i(35333)),	-- Mooncloth Cowl
								applyclassicphase(TBC_PHASE_TWO, i(35368)),	-- Opportunist's Leather Legguards
								i(29717),	-- Pattern: Drums of Battle (RECIPE!)
								-- #if ANYCLASSIC
								applyclassicphase(TBC_PHASE_FOUR, i(185926)),	-- Pattern: Greater Drums of Battle (RECIPE!)
								-- #endif
								applyclassicphase(TBC_PHASE_TWO, i(35341)),	-- Satin Mantle
								applyclassicphase(TBC_PHASE_TWO, i(35407)),	-- Savage Plate Chestpiece
								applyclassicphase(TBC_PHASE_TWO, i(35381)),	-- Seer's Linked Armor
								applyclassicphase(TBC_PHASE_TWO, i(35388)),	-- Seer's Mail Helm
								applyclassicphase(TBC_PHASE_TWO, i(35395)),	-- Seer's Ringmail Shoulderpads
								applyclassicphase(TBC_PHASE_TWO, i(35380)),	-- Stalker's Chain Spaulders
								applyclassicphase(TBC_PHASE_TWO, i(35375)),	-- Wyrmhide Robe
							}, {	-- Revered
								i(29180),	-- Blessed Scale Girdle
								i(33159),	-- Design: Blood of Amber (RECIPE!)
								i(24182),	-- Design: Talasite Owl (RECIPE!)
								applyclassicphase(TBC_PHASE_TWO, i(35359)),	-- Dragonhide Spaulders
								applyclassicphase(TBC_PHASE_TWO, i(35330)),	-- Dreadweave Leggings
								applyclassicphase(TBC_PHASE_TWO, i(35345)),	-- Evoker's Silk Handguards
								i(28273),	-- Formula: Enchant Gloves - Major Healing (RECIPE!)
								i(22537, {["timeline"]={ADDED_2_0_1,REMOVED_6_0_2}}),	-- Formula: Enchant Ring - Healing Power (RECIPE!)
								i(28281),	-- Formula: Enchant Weapon - Major Healing (RECIPE!)
								i(29191, {	-- Glyph of Power
									["timeline"] = { REMOVED_5_0_4 },
								}),
								i(13517),	-- Recipe: Alchemist Stone (RECIPE!)
								i(22915),	-- Recipe: Transmute Primal Air to Fire (RECIPE!)
								i(30634, {	-- Warpforged Key
									["timeline"] = { REMOVED_4_2_0 },
									-- #if ANYCLASSIC
									-- Blizzard added "Honored" versions of this key for TBC Classic... BLIZZARD.
									["OnTooltip"] = [[function(t, tooltipInfo)
										local tooltip = _.ShowItemCompareTooltips(t.otherItemID);
										if _.Settings:GetUnobtainableFilter(]] .. TBC_PHASE_FOUR .. [[) then
											tooltip:AddLine("This is now available at Honored reputation.", 0.4, 0.8, 1, 1);
										else
											tooltip:AddLine("This will be available at Honored reputation after TBC Phase 4.", 0.4, 0.8, 1, 1);
										end
										tooltip:Show();
									end]],
									["OnInit"] = [[function(t)
										t.otherItemID = 185692;
										t.GetItemCount = function(t) return ]] .. WOWAPI_GetItemCount("t.itemID") .. [[ + ]] .. WOWAPI_GetItemCount("t.otherItemID") .. [[; end
										return t;
									end]],
									-- #endif
								}),
								i(29179),	-- Xi'ri's Gift
							}, {	-- Exalted
								i(29177),	-- Adal's Command
								i(29176),	-- Crest of the Sha'tar
								i(33153, {["timeline"]={ADDED_2_2_0}}),	-- Formula: Enchant Gloves - Threat (RECIPE!)
								i(29175),	-- Gavel of Pure Light
								i(31354),	-- Recipe: Flask of the Titans (RECIPE!)
								i(31781),	-- Sha'tar Tabard
							},
						}),
					}),
					n(22212, {	-- Andrion Darkspinner <Shadoweave Tailoring Specialist>
						["coord"] = { 66.6, 68.6, SHATTRATH_CITY },
						["minReputation"] = { FACTION_LOWER_CITY, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(21915),	-- Pattern: Ebon Shadowbag (RECIPE!)
							i(21914),	-- Pattern: Frozen Shadoweave Boots (RECIPE!)
							i(21913),	-- Pattern: Frozen Shadoweave Robe (RECIPE!)
							i(21912),	-- Pattern: Frozen Shadoweave Shoulders (RECIPE!)
							i(30483),	-- Pattern: Shadowcloth (RECIPE!)
						},
					}),
					applyclassicphase(TBC_PHASE_FIVE, n(27667, {	-- Anwehu <Weapons & Armorsmith>
						["coord"] = { 48.8, 42.8, SHATTRATH_CITY },
						["minReputation"] = { FACTION_SHATTERED_SUN_OFFENSIVE, NEUTRAL },	-- Shattered Sun Offensive, Neutral.
						["groups"] = {
							i(34925),	-- Adorned Supernal Legwraps
							i(34935),	-- Aftershock Waistguard
							i(34887),	-- Angelista's Revenge
							i(34890),	-- Anveena's Touch
							i(34904),	-- Barbed Gloves of the Sage
							i(34929),	-- Belt of the Silent Path
							i(34894),	-- Blade of Serration
							i(34947),	-- Blue's Greaves of the Righteous Guardian
							i(34919),	-- Boots of Incantations
							i(34942),	-- Breastplate of Ire
							i(34939),	-- Chestplate of Stoicism
							i(34932),	-- Clutch of the Soothing Breeze
							i(34937),	-- Corrupted Soulcloth Pantaloons
							i(34892),	-- Crossbow of Relentless Strikes
							i(34905),	-- Crystalwind Leggings
							i(34921),	-- Ecclesiastical Cuirass
							i(34906),	-- Embrace of Everlasting Prowess
							i(34903),	-- Embrace of Starlight
							i(34938),	-- Enslaved Doomguard Soulgrips
							i(34889),	-- Fused Nethergon Band
							i(34916),	-- Gauntless of Rapidity
							i(34896),	-- Gavel of Naaru Blessings
							i(34944),	-- Girdle of Seething Rage
							i(34941),	-- Girdle of the Fearless
							i(34924),	-- Gown of Spiritual Wonder
							i(34922),	-- Greaves of Pacification
							i(34901),	-- Grovewalker's Leggings
							i(34911),	-- Handwraps of the Aggressor
							i(34933),	-- Hauberk of Whirling Fury
							i(34946),	-- Inscribed Legplates of the Aldor
							i(34914),	-- Leggings of the Pursuit
							i(34943),	-- Legplates of the Unending Fury
							i(34918),	-- Legwraps of Sweltering Flame
							i(34902),	-- Oakleaf-Spun Handguards
							i(34888),	-- Ring of the Stalwart Protector
							i(34931),	-- Runed Scales of Antiquity
							i(34934),	-- Rushing Storm Kilt
							i(34912),	-- Scaled Drakeskin Chestguard
							i(34895),	-- Scryer's Blade of Focus
							i(34945),	-- Shattrah Protectorate's Breastplate
							i(34900),	-- Shroud of Nature's Harmony
							i(34917),	-- Shroud of the Lore`nial
							i(34926),	-- Slippers of Dutiful Mending
							i(34898),	-- Staff of the Forest Lord
							i(34940),	-- Sunguard Legplates
							i(34949),	-- Swift Blade of Uncertainty
							i(34910),	-- Tameless Breeches
							i(34891),	-- The Blade of Harbingers
							i(34952),	-- The Mutilator
							i(34936),	-- Tormented Demonsoul Robes
							i(34928),	-- Trousers of the Scryers' Retainer
							i(34927),	-- Tunic of the Dark Hour
							i(34893),	-- Vanir's Fist of Brutality
							i(34951),	-- Vanir's Fist of Carnage
							i(34950),	-- Vanir's Fist of Savagery
							i(34923),	-- Waistguard of Reparation
							i(34930),	-- Wave of Life Chestguard
						},
					})),
					n(23483, {	-- Arcanist Xorith
						["coord"] = { 60.6, 63.6, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							i(35717, {	-- Shattrath Flask of Blinding Light
								["cost"] = { { "i", 32897, 1 }, },	-- 1x Mark of the Illidari
							}),
							i(32898, {	-- Shattrath Flask of Fortification
								["cost"] = { { "i", 32897, 1 }, },	-- 1x Mark of the Illidari
							}),
							i(32899, {	-- Shattrath Flask of Mighty Restoration
								["cost"] = { { "i", 32897, 1 }, },	-- 1x Mark of the Illidari
							}),
							i(35716, {	-- Shattrath Flask of Pure Death
								["cost"] = { { "i", 32897, 1 }, },	-- 1x Mark of the Illidari
							}),
							i(32901, {	-- Shattrath Flask of Relentless Assault
								["cost"] = { { "i", 32897, 1 }, },	-- 1x Mark of the Illidari
							}),
							i(32900, {	-- Shattrath Flask of Supreme Power
								["cost"] = { { "i", 32897, 1 }, },	-- 1x Mark of the Illidari
							}),
						},
					}),
					-- #if BEFORE CATA
					n(25196, {	-- Archer Delvinar <Specialty Ammunition Vendor>
						["coord"] = { 41.4, 63.4, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							i(32883, {	-- Felbane Slugs
								["timeline"] = { REMOVED_4_0_1 },
								["races"] = ALLIANCE_ONLY,
							}),
							i(32882, {	-- Hellfire Shot
								["timeline"] = { REMOVED_4_0_1 },
								["races"] = HORDE_ONLY,
							}),
							applyclassicphase(TBC_PHASE_THREE, i(34581, {	-- Mysterious Arrow
								["timeline"] = { REMOVED_4_0_1 },
							})),
							applyclassicphase(TBC_PHASE_THREE, i(34582, {	-- Mysterious Shell
								["timeline"] = { REMOVED_4_0_1 },
							})),
							applyclassicphase(TBC_PHASE_THREE, i(31737, {	-- Timeless Arrow
								["timeline"] = { REMOVED_4_0_1 },
							})),
							applyclassicphase(TBC_PHASE_THREE, i(31735, {	-- Timeless Shell
								["timeline"] = { REMOVED_4_0_1 },
							})),
							i(31949, {	-- Warden's Arrow
								["timeline"] = { REMOVED_4_0_1 },
							}),
						},
					}),
					-- #endif
					n(20613, {	-- Arodis Sunblade <Keeper of Sha'tari Artifacts>
						["coord"] = { 42.6, 90.6, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = TIER_FOUR_GROUPS,
					}),
					n(20616, {	-- Asuur <Keeper of Sha'tari Artifacts>
						["coord"] = { 23.6, 32.6, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = TIER_FOUR_GROUPS,
					}),
					n(19196, {	-- Cro Threadstrong <Leatherworking Supplies>
						["coord"] = { 67.2, 67.6, SHATTRATH_CITY },
						["minReputation"] = { FACTION_LOWER_CITY, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(25720, {	-- Pattern: Heavy Knothide Leather
								["timeline"] = { REMOVED_3_2_0},
								["requireSkill"] = LEATHERWORKING,
								["isLimited"] = true,
								["f"] = RECIPES,
							}),
						},
					}),
					n(19213, {	-- Eiin <Specialty Tailoring Supplies>
						["coord"] = { 66.2, 68.8, SHATTRATH_CITY },
						["minReputation"] = { FACTION_LOWER_CITY, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(21892),	-- Pattern: Bolt of Imbued Netherweave (RECIPE!)
							i(21893),	-- Pattern: Imbued Netherweave Bag (RECIPE!)
							i(21896),	-- Pattern: Netherweave Robe (RECIPE!)
							i(21897),	-- Pattern: Netherweave Tunic (RECIPE!)
						},
					}),
					n(33633, {	-- Enchantress Andiala <Enchanting Trainer>
						["coord"] = { 56.2, 74.4, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["timeline"] = { ADDED_3_1_0 },
						["groups"] = ZURII_YURIAL_GROUPS,
					}),
					n(19678, {	-- Fantei <Reagents>
						["coord"] = { 64.6, 70.6, SHATTRATH_CITY },
						["groups"] = {
							i(30823),	-- Demon Warding Totem
						},
					}),
					n(18525, {	-- G'eras
						["coord"] = { 50.8, 42.4, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_SHATAR, NEUTRAL },	-- The Sha'tar, Neutral.
						["groups"] = {
							applyclassicphase(TBC_PHASE_FOUR, i(33585)),	-- Achromic Trousers of the Naaru
							applyclassicphase(TBC_PHASE_FOUR, i(33810)),	-- Amani Mask of Death
							applyclassicphase(TBC_PHASE_FOUR, i(33578)),	-- Armwraps of the Kaldorei Protector
							applyclassicphase(TBC_PHASE_ONE, i(29266)),	-- Azure-Shield of Coldarra
							applyclassicphase(TBC_PHASE_ONE, i(29373)),	-- Band of Halos
							applyclassicphase(TBC_PHASE_FOUR, i(33580)),	-- Band of the Swift Paw
							applyclassicphase(TBC_PHASE_FOUR, i(35326)),	-- Battlemaster's Alacrity
							applyclassicphase(TBC_PHASE_FOUR, i(34049)),	-- Battlemaster's Audacity
							applyclassicphase(TBC_PHASE_FOUR, i(34163)),	-- Battlemaster's Cruelty
							applyclassicphase(TBC_PHASE_FOUR, i(34162)),	-- Battlemaster's Depravity
							applyclassicphase(TBC_PHASE_FOUR, i(33832)),	-- Battlemaster's Determination
							applyclassicphase(TBC_PHASE_FOUR, i(34050)),	-- Battlemaster's Perseverance
							applyclassicphase(TBC_PHASE_ONE, i(29375)),	-- Bishop's Cloak
							applyclassicphase(TBC_PHASE_FOUR, i(33566)),	-- Blessed Elunite Coverings
							applyclassicphase(TBC_PHASE_ONE, i(29382)),	-- Blood Knight War Cloak
							applyclassicphase(TBC_PHASE_ONE, i(29383)),	-- Bloodlust Brooch
							applyclassicphase(TBC_PHASE_FOUR, i(33501)),	-- Bloodthirster's Wargreaves
							applyclassicphase(TBC_PHASE_FOUR, i(33517)),	-- Bonefist Gauntlets
							applyclassicphase(TBC_PHASE_FOUR, i(33516)),	-- Bracers of the Ancient Phalanx
							applyclassicphase(TBC_PHASE_FOUR, i(33296)),	-- Brooch of Deftness
							applyclassicphase(TBC_PHASE_FOUR, i(33192)),	-- Carved Witch Doctor's Stick
							applyclassicphase(TBC_PHASE_FOUR, i(33331)),	-- Chain of Unleashed Rage
							applyclassicphase(TBC_PHASE_FOUR, i(33522)),	-- Chestguard of the Stoic Guardian
							applyclassicphase(TBC_PHASE_ONE, i(29381)),	-- Choker of Vile Intent
							applyclassicphase(TBC_PHASE_FOUR, i(35321)),	-- Cloak of Arcane Alacrity
							applyclassicphase(TBC_PHASE_FOUR, i(33304)),	-- Cloak of Subjugated Power
							applyclassicphase(TBC_PHASE_FOUR, i(35324)),	-- Cloak of Swift Reprieve
							applyclassicphase(TBC_PHASE_ONE, i(32088)),	-- Cowl of Beastly Rage
							applyclassicphase(TBC_PHASE_ONE, i(32090)),	-- Cowl of Naaru Blessings
							applyclassicphase(TBC_PHASE_FOUR, i(33484)),	-- Dory's Embrace
							applyclassicphase(TBC_PHASE_FOUR, i(33535)),	-- Earthquake Bracers
							applyclassicphase(TBC_PHASE_ONE, i(29376)),	-- Essence of the Martyr
							applyclassicphase(TBC_PHASE_FOUR, i(33513)),	-- Eternium Rage-Shackles
							applyclassicphase(TBC_PHASE_ONE, i(29390, {	-- Everbloom Idol
								["timeline"] = { REMOVED_5_0_4 },
							})),
							applyclassicphase(TBC_PHASE_ONE, i(32083)),	-- Faceguard of Domination
							applyclassicphase(TBC_PHASE_ONE, i(29385)),	-- Farstrider Defender's Cloak
							applyclassicphase(TBC_PHASE_FOUR, i(33334)),	-- Fetish of the Primal Gods
							applyclassicphase(TBC_PHASE_ONE, i(29270)),	-- Flametongue Seal
							applyclassicphase(TBC_PHASE_FOUR, i(33582)),	-- Footwraps of Wild Encroachment
							applyclassicphase(TBC_PHASE_FOUR, i(33512)),	-- Furious Deathgrips
							applyclassicphase(TBC_PHASE_FOUR, i(33557)),	-- Gargon's Bracers of Peaceful Slumber
							applyclassicphase(TBC_PHASE_FOUR, i(33528)),	-- Gauntlets of Sniping
							applyclassicphase(TBC_PHASE_FOUR, i(33524)),	-- Girdle of the Protector
							applyclassicphase(TBC_PHASE_FOUR, i(33532)),	-- Gleaming Earthen Bracers
							applyclassicphase(TBC_PHASE_FOUR, i(33287)),	-- Gnarled Ironwood Pauldrons
							applyclassicphase(TBC_PHASE_ONE, i(29387)),	-- Gnomeregan Auto-Dodger 600
							applyclassicphase(TBC_PHASE_FOUR, i(33974)),	-- Grasp of the Moonkin
							applyclassicphase(TBC_PHASE_FOUR, i(33534)),	-- Grips of Nature's Wrath
							applyclassicphase(TBC_PHASE_FOUR, i(33519)),	-- Handguards of the Templar
							applyclassicphase(TBC_PHASE_FOUR, i(33965)),	-- Hauberk of the Furious Elements
							applyclassicphase(TBC_PHASE_ONE, i(32084)),	-- Helmet of the Steadfast Champion
							applyclassicphase(TBC_PHASE_FOUR, i(33518)),	-- High Justicar's Legplates
							applyclassicphase(TBC_PHASE_ONE, i(29370)),	-- Icon of the Silver Crescent
							applyclassicphase(TBC_PHASE_FOUR, i(33508, {	-- Idol of Budding Life
								["timeline"] = { REMOVED_5_0_4 },
							})),
							applyclassicphase(TBC_PHASE_FOUR, i(33509, {	-- Idol of Terror
								["timeline"] = { REMOVED_5_0_4 },
							})),
							applyclassicphase(TBC_PHASE_FOUR, i(33510, {	-- Idol of the Unseen Moon
								["timeline"] = { REMOVED_5_0_4 },
							})),
							applyclassicphase(TBC_PHASE_FOUR, i(33207)),	-- Implacable Guardian Sabatons
							applyclassicphase(TBC_PHASE_ONE, i(30770)),	-- Inferno Forged Boots
							applyclassicphase(TBC_PHASE_ONE, i(30774)),	-- Inferno Forged Gloves
							applyclassicphase(TBC_PHASE_ONE, i(30773)),	-- Inferno Forged Hauberk
							applyclassicphase(TBC_PHASE_ONE, i(30772)),	-- Inferno Forged Leggings
							applyclassicphase(TBC_PHASE_ONE, i(30779)),	-- Inferno Hardened Boots
							applyclassicphase(TBC_PHASE_ONE, i(30776)),	-- Inferno Hardened Chestguard
							applyclassicphase(TBC_PHASE_ONE, i(30780)),	-- Inferno Hardened Gloves
							applyclassicphase(TBC_PHASE_ONE, i(30778)),	-- Inferno Hardened Leggings
							applyclassicphase(TBC_PHASE_ONE, i(30768)),	-- Inferno Tempered Boots
							applyclassicphase(TBC_PHASE_ONE, i(30769)),	-- Inferno Tempered Chestguard
							applyclassicphase(TBC_PHASE_ONE, i(30767)),	-- Inferno Tempered Gauntlets
							applyclassicphase(TBC_PHASE_ONE, i(30766)),	-- Inferno Tempered Leggings
							applyclassicphase(TBC_PHASE_ONE, i(30763)),	-- Infernoweave Boots
							applyclassicphase(TBC_PHASE_ONE, i(30764)),	-- Infernoweave Gloves
							applyclassicphase(TBC_PHASE_ONE, i(30761)),	-- Infernoweave Leggings
							applyclassicphase(TBC_PHASE_ONE, i(30762)),	-- Infernoweave Robe
							applyclassicphase(TBC_PHASE_FOUR, i(33279)),	-- Iron-Tusk Girdle
							applyclassicphase(TBC_PHASE_ONE, i(29273)),	-- Khadgar's Knapsack
							applyclassicphase(TBC_PHASE_FOUR, i(33333)),	-- Kharmaa's Shroud of Hope
							applyclassicphase(TBC_PHASE_FOUR, i(33503, {	-- Libram of Divine Judgement
								["timeline"] = { REMOVED_5_0_4 },
							})),
							applyclassicphase(TBC_PHASE_FOUR, i(33504, {	-- Libram of Divine Purpose
								["timeline"] = { REMOVED_5_0_4 },
							})),
							applyclassicphase(TBC_PHASE_FOUR, i(33502, {	-- Libram of Mending
								["timeline"] = { REMOVED_5_0_4 },
							})),
							applyclassicphase(TBC_PHASE_ONE, i(29388, {	-- Libram of Repentance
								["timeline"] = { REMOVED_5_0_4 },
							})),
							applyclassicphase(TBC_PHASE_ONE, i(29267)),	-- Light-Bearer's Faith Shield
							applyclassicphase(TBC_PHASE_FOUR, i(33587)),	-- Light-Blessed Bonds
							applyclassicphase(TBC_PHASE_FOUR, i(33386)),	-- Man'kin'do's Belt
							applyclassicphase(TBC_PHASE_ONE, i(32089)),	-- Mana-Binders Cowl
							applyclassicphase(TBC_PHASE_ONE, i(29368)),	-- Manasurge Pendant
							applyclassicphase(TBC_PHASE_FOUR, i(33972)),	-- Mask of Primal Power
							applyclassicphase(TBC_PHASE_ONE, i(32087)),	-- Mask of the Deceiver
							applyclassicphase(TBC_PHASE_FOUR, i(33540)),	-- Master Assassin Wristwraps
							applyclassicphase(TBC_PHASE_ONE, i(29268)),	-- Mazthoril Honor Shield
							applyclassicphase(TBC_PHASE_FOUR, i(33577)),	-- Moon-Walkers
							applyclassicphase(TBC_PHASE_FOUR, i(33530)),	-- Natural Life Leggings
							applyclassicphase(TBC_PHASE_ONE, i(29374)),	-- Necklace of Eternal Hope
							applyclassicphase(TBC_PHASE_ONE, i(29386)),	-- Necklace of the Juggernaut
							applyclassicphase(TBC_PHASE_FOUR, i(30183)),	-- Nether Vortex
							applyclassicphase(TBC_PHASE_FOUR, i(33222)),	-- Nyn'jah's Tabi Boots
							applyclassicphase(TBC_PHASE_ONE, i(29272)),	-- Orb of the Soul-Eater
							applyclassicphase(TBC_PHASE_FOUR, i(33584)),	-- Pantaloons of Arcane Annihilation
							applyclassicphase(TBC_PHASE_FOUR, i(33552)),	-- Pants of Splendid Recovery
							applyclassicphase(TBC_PHASE_FOUR, i(33514)),	-- Pauldrons of Gruesome Fate
							applyclassicphase(TBC_PHASE_FOUR, i(33970)),	-- Pauldrons of the Furious Elements
							applyclassicphase(TBC_PHASE_FOUR, i(33973)),	-- Pauldrons of Tribal Fury
							applyclassicphase(TBC_PHASE_FOUR, i(33531)),	-- Polished Waterscale Gloves
							applyclassicphase(TBC_PHASE_FOUR, i(23572)),	-- Primal Nether
							applyclassicphase(TBC_PHASE_ONE, i(29379)),	-- Ring of Arathi Warlords
							applyclassicphase(TBC_PHASE_ONE, i(29367)),	-- Ring of Cryptic Dreams
							applyclassicphase(TBC_PHASE_ONE, i(29384)),	-- Ring of Unyielding Force
							applyclassicphase(TBC_PHASE_FOUR, i(33588)),	-- Runed Spell-Cuffs
							applyclassicphase(TBC_PHASE_FOUR, i(33523)),	-- Sabatons of the Righteous Defender
							applyclassicphase(TBC_PHASE_ONE, i(29269)),	-- Sapphiron's Wing Bone
							applyclassicphase(TBC_PHASE_ONE, i(29275)),	-- Searing Sunblade
							applyclassicphase(TBC_PHASE_FOUR, i(33538)),	-- Shallow-Grave Trousers
							applyclassicphase(TBC_PHASE_ONE, i(29369)),	-- Shawl of Shifting Probabilities
							applyclassicphase(TBC_PHASE_FOUR, i(33527)),	-- Shifting Camouflage Pants
							applyclassicphase(TBC_PHASE_FOUR, i(33506, {	-- Skycall Totem
								["timeline"] = { REMOVED_5_0_4 },
							})),
							applyclassicphase(TBC_PHASE_FOUR, i(33593)),	-- Slikk's Cloak of Placation
							applyclassicphase(TBC_PHASE_FOUR, i(33559)),	-- Starfire Waistband
							applyclassicphase(TBC_PHASE_FOUR, i(33529)),	-- Steadying Bracers
							applyclassicphase(TBC_PHASE_FOUR, i(33507, {	-- Stonebreaker's Totem
								["timeline"] = { REMOVED_5_0_4 },
							})),
							applyclassicphase(TBC_PHASE_ONE, i(32086)),	-- Storm Master's Helmet
							applyclassicphase(TBC_PHASE_FOUR, i(33536)),	-- Stormwrap
							applyclassicphase(TBC_PHASE_FOUR, i(33586)),	-- Studious Wraps
							applyclassicphase(TBC_PHASE_ONE, i(29271)),	-- Talisman of Kalecgos
							applyclassicphase(TBC_PHASE_ONE, i(29274)),	-- Tears of Heaven
							applyclassicphase(TBC_PHASE_FOUR, i(33505, {	-- Totem of Living Water
								["timeline"] = { REMOVED_5_0_4 },
							})),
							applyclassicphase(TBC_PHASE_ONE, i(29389, {	-- Totem of the Pulsing Earth
								["timeline"] = { REMOVED_5_0_4 },
							})),
							applyclassicphase(TBC_PHASE_FOUR, i(33537)),	-- Treads of Booming Thunder
							applyclassicphase(TBC_PHASE_FOUR, i(33324)),	-- Treads of the Life Path
							applyclassicphase(TBC_PHASE_FOUR, i(33539)),	-- Trickster's Stickyfingers
							applyclassicphase(TBC_PHASE_FOUR, i(33515)),	-- Unwavering Legguards
							applyclassicphase(TBC_PHASE_FOUR, i(33520)),	-- Vambraces of the Naaru
							applyclassicphase(TBC_PHASE_FOUR, i(33579)),	-- Vestments of Hibernation
							applyclassicphase(TBC_PHASE_FOUR, i(33325)),	-- Voodoo Shaker
							applyclassicphase(TBC_PHASE_FOUR, i(33291)),	-- Voodoo-Woven Belt
							applyclassicphase(TBC_PHASE_FOUR, i(33583)),	-- Waistguard of the Great Beast
							applyclassicphase(TBC_PHASE_FOUR, i(33280)),	-- War-Feathered Loop
							applyclassicphase(TBC_PHASE_ONE, i(32085)),	-- Warpstalker Helm
							applyclassicphase(TBC_PHASE_FOUR, i(33589)),	-- Wristguards of Tranquil Thought
						},
					}),
					n(22213, {	-- Gidge Spellweaver <Spellfire Tailoring Specialist>
						["coord"] = { 66.6, 68.6, SHATTRATH_CITY },
						["minReputation"] = { FACTION_LOWER_CITY, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(24316),	-- Pattern: Spellcloth (RECIPE!)
							i(21911),	-- Pattern: Spellfire Bag (RECIPE!)
							i(21908),	-- Pattern: Spellfire Belt (RECIPE!)
							i(21909),	-- Pattern: Spellfire Gloves (RECIPE!)
							i(21910),	-- Pattern: Spellfire Robe (RECIPE!)
						},
					}),
					n(19227, {	-- Griftah
						i(27982),	-- Charm of Potent and Powerful Passions
						i(27941),	-- Compassionate Critter's Friend
						i(33014, {	-- Fine Poking Stick
							["timeline"] = { ADDED_2_2_0, REMOVED_2_3_0 },
						}),
						i(34249),	-- Hula Girl Doll
						i(27992),	-- Infallible Tikbalang Ward
						i(27940),	-- Marvelous Madstone of Immortality
						i(27976),	-- Polished Pendant of Edible Energy
						i(74918),	-- Problem Solving Pendant
						i(27945),	-- Shark's Tooth of Bona Fide Fluidic Mobility
						i(27978),	-- Soap on a Rope
						i(27979),	-- Stone of Stupendous Springing Strides
						i(27944),	-- Talisman of True Treasure Tracking
						i(33012, {	-- Terokkar Lilac
							["timeline"] = { ADDED_2_2_0, REMOVED_2_3_0 },
						}),
						i(156726, {	-- Yellow Crystal Monocle
							["sourceQuest"] = 50183,	-- Star-Touched Chest
							["timeline"] = { ADDED_8_1_0 },
						}),
						-- TODO: presumably other monocles can be re-purchased here once having been obtained via the secret
					}),
					n(23484, {	-- Haldor the Compulsive
						["coord"] = { 48.0, 26.8, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							i(35717, {	-- Shattrath Flask of Blinding Light
								["cost"] = { { "i", 32897, 1 }, },	-- Mark of the Illidari
							}),
							i(32898, {	-- Shattrath Flask of Fortification
								["cost"] = { { "i", 32897, 1 }, },	-- Mark of the Illidari
							}),
							i(32899, {	-- Shattrath Flask of Mighty Restoration
								["cost"] = { { "i", 32897, 1 }, },	-- Mark of the Illidari
							}),
							i(35716, {	-- Shattrath Flask of Pure Death
								["cost"] = { { "i", 32897, 1 }, },	-- Mark of the Illidari
							}),
							i(32901, {	-- Shattrath Flask of Relentless Assault
								["cost"] = { { "i", 32897, 1 }, },	-- Mark of the Illidari
							}),
							i(32900, {	-- Shattrath Flask of Supreme Power
								["cost"] = { { "i", 32897, 1 }, },	-- Mark of the Illidari
							}),
						},
					}),
					n(18756, {	-- Haris Pilton <Socialite>
						["coord"] = { 75.6, 30.6, SHATTRATH_CITY },
						["groups"] = {
							ach(1165, {	-- My Storage is "Gigantique"
								["provider"] = { "i", 38082 },	-- "Gigantique" Bag
							}),
							i(38082, {	-- "Gigantique" Bag
								["cost"] = 12000000,	-- 1,200g
							}),
							i(134007, {	-- Eternal Black Diamond Ring (TOY!)
								["cost"] = 50000000,	-- 5,000g
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(134004, {	-- Noble's Eternal Elementium Signet (TOY!)
								["cost"] = 30000000,	-- 3,000g
								["timeline"] = { ADDED_7_0_3 },
							}),
							applyclassicphase(WRATH_PHASE_FOUR, i(51809, {	-- Portable Hole
								["cost"] = 30000000,	-- 3,000g
								["timeline"] = { ADDED_3_3_0 },
							})),
							i(71037, {	-- Black Diamond Ring
								["cost"] = 35000000,	-- 3,500g
								["timeline"] = { ADDED_4_1_0 },
							}),
							i(38091, {	-- Gold Eternium Band
								["cost"] = 30000000,	-- 3,000g
							}),
							i(37934, {	-- Noble's Elementium Signet
								["cost"] = 24000000,	-- 2,400g
							}),
							i(38089, {	-- Ruby Shades
								["timeline"] = { REMOVED_3_0_8 },
								["cost"] = 20000000,	-- 2,000g
							}),
							i(38090, {	-- Sapphire Pinky Ring
								["cost"] = 6000000,	-- 600g
							}),
						},
					}),
					-- #if AFTER WRATH
					n(19065, {	-- Inessera <Jewelcrafting Supplies Vendor>
						["coord"] = { 35.6, 19.8, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["sym"] = {
							{"sub", "common_recipes_vendor", 28701},	-- Timothy Jones <Jewelcrafting Trainer>
						},
					}),
					-- #endif
					n(19195, {	-- Jim Saltit <Cooking Supplies>
						["coord"] = { 63.4, 68.6, SHATTRATH_CITY },
						["minReputation"] = { FACTION_LOWER_CITY, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
							i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
						},
					}),
					n(19049, {	-- Karokka  <Alchemy Trainer>
						["coord"] = { 45.6, 19.8, SHATTRATH_CITY },
						["sym"] = {{"select","itemID",
							4565,    -- Simple Dagger
						}},
					}),
					n(21906, {	-- Kelara <Keeper of Sha'tari Heirlooms>
						["coord"] = { 24.8, 27.0, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = TIER_FIVE_GROUPS,
					}),
					n(23699, bubbleDownSelf({ ["timeline"] = { ADDED_2_2_0 } }, {	-- Kevin Browning <Coffee Aficionado>
						["coord"] = { 70.6, 51.8, SHATTRATH_CITY },
						["groups"] = {
							i(33042),	-- Black Coffee
						},
					})),
					-- #if AFTER WRATH
					n(33637, {	-- Kirembri Silvermane <Jewelcrafting Trainer>
						["coord"] = { 58.6, 75.2, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["sym"] = {
							{"sub", "common_recipes_vendor", 28701},	-- Timothy Jones <Jewelcrafting Trainer>
						},
					}),
					-- #endif
					n(19186, {	-- Kylene <Barmaid>
						["description"] = "Speak to her and tell her she's quite the cook to learn these recipes.",
						["coord"] = { 75.6, 32.6, SHATTRATH_CITY },
						["groups"] = applyclassicphase(TBC_PHASE_TWO, sharedData({ ["requireSkill"] = COOKING, ["timeline"] = { ADDED_2_1_2, REMOVED_4_0_1} }, {
							recipe(42302),	-- Fisherman's Feast (RECIPE!)
							recipe(42305),	-- Hot Buttered Trout (RECIPE!)
							recipe(42296),	-- Stewed Trout (RECIPE!)
						})),
					}),
					n(19047, {	-- Lissaf
						["coord"] = { 51.8, 17.8, SHATTRATH_CITY },
						["sym"] = {{"select", "itemID",
							15905,	-- Brass Knuckles
							2520,	-- Broadsword
							15904,	-- Deadly fist blades
							2528,	-- Falchion
							2521,	-- Flamberge
							2526,	-- Main Gauche
							2534,	-- Rondel
							15903,	-- Slicing Claw
							2529,	-- Zweihander
						}},
						["groups"] = {
							i(15906, {	-- Left-Handed Brass Knuckles
								["timeline"] = { REMOVED_6_0_2 },
							}),
							i(15909, {	-- Left-Handed Blades
								["timeline"] = { REMOVED_6_0_2 },
							}),
							i(15907, {	-- Left-Handed Claw
								["timeline"] = { REMOVED_6_0_2 },
							}),
						},
					}),
					-- #if AFTER CATA
					n(52278, {	-- Linsa <Tabard Vendor>
						["coord"] = { 58.8, 46.4, SHATTRATH_CITY },
						["sym"] = {
							{"sub", "common_vendor", 28776},	-- Elizabeth Ross <Tabard Vendor>
						},
					}),
					-- #endif
					n(115546, {	-- Lunelli <Keeper of Lost Recipes>
						["description"] = "She will only sell these recipes to those who have completed the quests that reward them.",
						["coord"] = { 64.2, 71.4, SHATTRATH_CITY },
						["timeline"] = { ADDED_7_1_0 },
						["groups"] = sharedData({ ["timeline"] = { ADDED_7_1_5} }, {
							i(142287),	-- Plans: Great Earthforged Hammer (RECIPE!)
							i(142286),	-- Plans: Lavaforged Warhammer (RECIPE!)
							i(142283),	-- Plans: Skyforged Great Axe (RECIPE!)
							i(142284),	-- Plans: Stoneforged Claymore (RECIPE!)
							i(142282),	-- Plans: Stormforged Axe (RECIPE!)
							i(142279),	-- Plans: Windforged Rapier (RECIPE!)
						}),
					}),
					n(19663, {	-- Madame Ruby <Enchanting Supplies>
						["coord"] = { 63.6, 70.0, SHATTRATH_CITY },
						["minReputation"] = { FACTION_LOWER_CITY, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = MADAME_RUBY_GROUPS,
					}),
					-- #if BEFORE CATA
					n(25195, {	-- Marksman Bova <Specialty Ammunition Vendor>
						["coord"] = { 37.6, 27.8, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							i(32883, {	-- Felbane Slugs
								["timeline"] = { REMOVED_4_0_1 },
								["races"] = ALLIANCE_ONLY,
							}),
							i(32882, {	-- Hellfire Shot
								["timeline"] = { REMOVED_4_0_1 },
								["races"] = HORDE_ONLY,
							}),
							applyclassicphase(TBC_PHASE_THREE, i(34581, {	-- Mysterious Arrow
								["timeline"] = { REMOVED_4_0_1 },
							})),
							applyclassicphase(TBC_PHASE_THREE, i(34582, {	-- Mysterious Shell
								["timeline"] = { REMOVED_4_0_1 },
							})),
							applyclassicphase(TBC_PHASE_THREE, i(31737, {	-- Timeless Arrow
								["timeline"] = { REMOVED_4_0_1 },
							})),
							applyclassicphase(TBC_PHASE_THREE, i(31735, {	-- Timeless Shell
								["timeline"] = { REMOVED_4_0_1 },
							})),
							i(31949, {	-- Warden's Arrow
								["timeline"] = { REMOVED_4_0_1 },
							}),
						},
					}),
					-- #endif
					n(19239, {	-- Mahir Redstroke
						["coord"] = { 54.6, 82.6, SHATTRATH_CITY },
						["sym"] = {{"select", "itemID",
							2526,	-- Main Gauche
							2534,	-- Rondel
							4565,	-- Simple Dagger
						}},
					}),
					n(21655, {	-- Nakodu <Lower City Quartermaster>
						["coord"] = { 62.6, 69.0, SHATTRATH_CITY },
						["groups"] = bubbleDownClassicRep(FACTION_LOWER_CITY, {
							{		-- Neutral
							}, {	-- Friendly
								i(23138),	-- Design: Potent Flame Spessarite (RECIPE!)
							}, {	-- Honored
								applyclassicphase(TBC_PHASE_TWO, i(35405)),	-- Crusader's Ornamented Leggings
								applyclassicphase(TBC_PHASE_TWO, i(35412)),	-- Crusader's Scaled Chestpiece
								applyclassicphase(TBC_PHASE_TWO, i(35357)),	-- Dragonhide Helm
								applyclassicphase(TBC_PHASE_TWO, i(35331)),	-- Dreadweave Mantle
								applyclassicphase(TBC_PHASE_TWO, i(35344)),	-- Evoker's Silk Cowl
								applyclassicphase(TBC_PHASE_THREE, i(22538, {["timeline"]={ADDED_2_0_1,REMOVED_6_0_2}})),	-- Formula: Enchant Ring - Stats (RECIPE!)
								i(29199, {	-- Glyph of Shadow Warding
									["timeline"] = { REMOVED_5_0_4 },
								}),
								applyclassicphase(TBC_PHASE_TWO, i(35361)),	-- Kodohide Gloves
								applyclassicphase(TBC_PHASE_TWO, i(35335)),	-- Mooncloth Mitts
								applyclassicphase(TBC_PHASE_TWO, i(35370)),	-- Opportunist's Leather Tunic
								i(30833),	-- Pattern: Cloak of Arcane Evasion (RECIPE!)
								applyclassicphase(TBC_PHASE_TWO, i(35340)),	-- Satin Leggings
								applyclassicphase(TBC_PHASE_TWO, i(35411)),	-- Savage Plate Shoulders
								applyclassicphase(TBC_PHASE_TWO, i(35382)),	-- Seer's Linked Gauntlets
								applyclassicphase(TBC_PHASE_TWO, i(35389)),	-- Seer's Mail Leggings
								applyclassicphase(TBC_PHASE_TWO, i(35391)),	-- Seer's Ringmail Chestguard
								applyclassicphase(TBC_PHASE_TWO, i(35378)),	-- Stalker's Chain Helm
								applyclassicphase(TBC_PHASE_TWO, i(35373)),	-- Wyrmhide Legguards
							}, {	-- Revered
								i(30633, {	-- Auchenai Key
									["timeline"] = { REMOVED_4_2_0 },
									-- #if ANYCLASSIC
									-- Blizzard added "Honored" versions of this key for TBC Classic... BLIZZARD.
									["OnTooltip"] = [[function(t, tooltipInfo)
										local tooltip = _.ShowItemCompareTooltips(t.otherItemID);
										if _.Settings:GetUnobtainableFilter(]] .. TBC_PHASE_FOUR .. [[) then
											tooltip:AddLine("This is now available at Honored reputation.", 0.4, 0.8, 1, 1);
										else
											tooltip:AddLine("This will be available at Honored reputation after TBC Phase 4.", 0.4, 0.8, 1, 1);
										end
										tooltip:Show();
									end]],
									["OnInit"] = [[function(t)
										t.otherItemID = 185691;
										t.GetItemCount = function(t) return ]] .. WOWAPI_GetItemCount("t.itemID") .. [[ + ]] .. WOWAPI_GetItemCount("t.otherItemID") .. [[; end
										return t;
									end]],
									-- #endif
								}),
								i(33157),	-- Design: Falling Star (RECIPE!)
								i(24179),	-- Design: Felsteel Boar (RECIPE!)
								i(24175),	-- Design: Pendant of Thawing (RECIPE!)
								i(30846, {	-- Glyph of the Outcast
									["timeline"] = { REMOVED_5_0_4 },
								}),
								i(30836),	-- Leggings of the Skettis Exile
								i(30841),	-- Lower City Prayerbook
								applyclassicphase(TBC_PHASE_THREE, i(34200, {	-- Pattern: Quiver of a Thousand Feathers (RECIPE!)
									["timeline"] = { ADDED_2_3_0, REMOVED_4_0_1 },
								})),
								i(22910),	-- Recipe: Elixir of Major Shadow Power (RECIPE!)
								i(30835),	-- Salvager's Hauberk
							}, {	-- Exalted
								i(33148, {["timeline"]={ADDED_2_2_0}}),	-- Formula: Enchant Cloak - Dodge (RECIPE!)
								i(30832),	-- Gavel of Unearthed Secrets
								i(31778),	-- Lower City Tabard
								i(31357, {	-- Recipe: Flask of Chromatic Resistance (RECIPE!)
									["timeline"] = { REMOVED_5_0_4 },
								}),
								i(30834),	-- Shapeshifter's Signet
								i(30830),	-- Trident of the Outcast Tribe
							},
						}),
					}),
					n(22208, {	-- Nasmara Moonsong <Mooncloth Tailoring Specialist>
						["coord"] = { 66.4, 69.0, SHATTRATH_CITY },
						["minReputation"] = { FACTION_LOWER_CITY, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(21895),	-- Pattern: Primal Mooncloth (RECIPE!)
							i(21919),	-- Pattern: Primal Mooncloth Bag (RECIPE!)
							i(21916),	-- Pattern: Primal Mooncloth Belt (RECIPE!)
							i(21917),	-- Pattern: Primal Mooncloth Robe (RECIPE!)
							i(21918),	-- Pattern: Primal Mooncloth Shoulders (RECIPE!)
						},
					}),
					-- #if AFTER WRATH
					n(33680, {	-- Nemiha <Jewelcrafting Trainer>
						["coord"] = { 36.2, 47.0, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["sym"] = {
							{"sub", "common_recipes_vendor", 28701},	-- Timothy Jones <Jewelcrafting Trainer>
						},
					}),
					-- #endif
					applyclassicphase(TBC_PHASE_FIVE, n(27666, {	-- Ontuvo <Jewelcrafting Supplies>
						["coord"] = { 48.8, 41.8, SHATTRATH_CITY },
						["sym"] = {{"sub","common_vendor",25950}},	-- Shaani <Jewelcrafting Supplies>
					})),
					n(19321, {	-- Quartermaster Endarin <Aldor Quartermaster>
						["coord"] = { 48.0, 26.6, SHATTRATH_CITY },
						["groups"] = bubbleDownClassicRep(FACTION_THE_ALDOR, {
							{		-- Neutral
							}, {	-- Friendly
								-- #if BEFORE CATA
								i(23149),	-- Design: Gleaming Golden Draenite [TBC] / Design: Smooth Golden Draenite [CATA+] (RECIPE!)
								-- #else
								i(23149),	-- Design: Smooth Golden Draenite [CATA+] / Design: Gleaming Golden Draenite [TBC] (RECIPE!)
								-- #endif
								i(30842),	-- Pattern: Flameheart Bracers (RECIPE!)
								i(23601),	-- Plans: Flamebane Bracers (RECIPE!)
							}, {	-- Honored
								i(29129),	-- Anchorite's Robes
								-- #if AFTER CATA
								i(23145),	-- Design: Purified Shadow Draenite [CATA+] / Design: Royal Shadow Draenite [TBC] (RECIPE!)
								-- #else
								i(23145),	-- Design: Royal Shadow Draenite [TBC] / Design: Purified Shadow Draenite [CATA+] (RECIPE!)
								-- #endif
								i(29704),	-- Pattern: Blastguard Belt (RECIPE!)
								i(30843),	-- Pattern: Flameheart Gloves (RECIPE!)
								i(29693),	-- Pattern: Flamescale Belt (RECIPE!)
								i(24293),	-- Pattern: Silver Spellthread (RECIPE!)
								i(23603),	-- Plans: Flamebane Gloves (RECIPE!)
							}, {	-- Revered
								i(29130),	-- Auchenai Staff
								i(24177),	-- Design: Pendant of Shadow's End (RECIPE!)
								i(29128),	-- Lightwarden's Band
								i(29703),	-- Pattern: Blastguard Boots (RECIPE!)
								i(29691),	-- Pattern: Flamescale Boots (RECIPE!)
								i(25721),	-- Pattern: Vindicator's Armor Kit (RECIPE!)
								i(23604),	-- Plans: Flamebane Breastplate (RECIPE!)
								i(29127),	-- Vindicator's Hauberk
							}, {	-- Exalted
								i(31779),	-- Aldor Tabard
								i(29123),	-- Medallion of the Lightbearer
								i(29702),	-- Pattern: Blastguard Pants (RECIPE!)
								i(30844),	-- Pattern: Flameheart Vest (RECIPE!)
								i(29689),	-- Pattern: Flamescale Leggings (RECIPE!)
								i(24295),	-- Pattern: Golden Spellthread (RECIPE!)
								i(23602),	-- Plans: Flamebane Helm (RECIPE!)
								i(29124),	-- Vindicator's Brand
							},
						}),
					}),
					n(19331, {	-- Quartermaster Enuril <Scryer Quartermaster>
						["coord"] = { 60.6, 64.2, SHATTRATH_CITY },
						["g"] = bubbleDownClassicRep(FACTION_THE_SCRYERS, {
							{		-- Neutral
							}, {	-- Friendly
								-- #if BEFORE CATA
								i(23133),	-- Design: Runed Blood Garnet [TBC] / Design: Brilliant Blood Garnet [CATA+] (RECIPE!)
								-- #else
								i(23133),	-- Design: Brilliant Blood Garnet [CATA+] / Design: Runed Blood Garnet [TBC] (RECIPE!)
								-- #endif
								i(23597),	-- Plans: Enchanted Adamantite Belt (RECIPE!)
							}, {	-- Honored
								-- #if BEFORE CATA
								i(23143, {	-- Design: Dazzling Deep Peridot [TBC] / Design: Purified Shadow Draenite [CATA+] (RECIPE!)
									["timeline"] = { REMOVED_4_0_1 },
								}),
								-- #else
								i(23143, {	-- Design: Purified Shadow Draenite [CATA+] / Design: Dazzling Deep Peridot [TBC] (RECIPE!)
									["timeline"] = { REMOVED_4_0_1 },
								}),
								-- #endif
								i(29701),	-- Pattern: Enchanted Clefthoof Boots (RECIPE!)
								i(29682),	-- Pattern: Enchanted Felscale Gloves (RECIPE!)
								i(24292),	-- Pattern: Mystic Spellthread (RECIPE!)
								i(23598),	-- Plans: Enchanted Adamantite Boots (RECIPE!)
							}, {	-- Revered
								i(24176),	-- Design: Pendant of Withering
								i(29134),	-- Gauntlets of the Chosen
								i(29700),	-- Pattern: Enchanted Clefthoof Gloves (RECIPE!)
								i(29684),	-- Pattern: Enchanted Felscale Boots (RECIPE!)
								i(25722),	-- Pattern: Magister's Armor Kit (RECIPE!)
								i(23599),	-- Plans: Enchanted Adamantite Breastplate (RECIPE!)
								i(22908),	-- Recipe: Elixir of Major Firepower (RECIPE!)
								i(29131),	-- Retainer's Leggings
								i(29132),	-- Scryer's Bloodgem
								i(29133),	-- Seer's Cane
							}, {	-- Exalted
								i(29698),	-- Pattern: Enchanted Clefthoof Leggings (RECIPE!)
								i(29677),	-- Pattern: Enchanted Felscale Leggings (RECIPE!)
								i(24294),	-- Pattern: Runic Spellthread (RECIPE!)
								i(23600),	-- Plans: Enchanted Adamantite Leggings (RECIPE!)
								i(29125),	-- Retainer's Blade
								i(31780),	-- Scryers Tabard
								i(29126),	-- Seer's Signet
							},
						}),
					}),
					n(19236, {	-- Quelama Lightblade
						["coord"] = { 44.6, 76.0, SHATTRATH_CITY },
						["sym"] = {{"select", "itemID",
							5239,	-- Blackbone Wand
							5210,	-- Burning Wand
							5236,	-- Combustible Wand
							5211,	-- Dusk Wand
							5209,	-- Gloom Wand
							5347,	-- Pestilent Wand
							5238,	-- Pitchwood Wand
							5208,	-- Smoldering Wand
						}},
					}),
					n(20807, {	-- Scribe Saalyn <Aldor Inscriptions>
						["coord"] = { 48.6, 26.6, SHATTRATH_CITY },
						["groups"] = bubbleDownClassicRep(FACTION_THE_ALDOR, {
							{		-- Neutral
							}, {	-- Friendly
							}, {	-- Honored
								i(28881, {	-- Inscription of Discipline
									["cost"] = { { "i", 29735, 2 }, },	-- 2x Holy Dust
								}),
								i(28878, {	-- Inscription of Faith
									["cost"] = { { "i", 29735, 2 }, },	-- 2x Holy Dust
								}),
								i(28885, {	-- Inscription of Vengeance
									["cost"] = { { "i", 29735, 2 }, },	-- 2x Holy Dust
								}),
								i(28882, {	-- Inscription of Warding
									["cost"] = { { "i", 29735, 2 }, },	-- 2x Holy Dust
								}),
							}, {	-- Revered
							}, {	-- Exalted
								i(28886, {	-- Greater Inscription of Discipline
									["cost"] = { { "i", 29735, 8 }, },	-- 8x Holy Dust
								}),
								i(28887, {	-- Greater Inscription of Faith
									["cost"] = { { "i", 29735, 8 }, },	-- 8x Holy Dust
								}),
								i(28888, {	-- Greater Inscription of Vengeance
									["cost"] = { { "i", 29735, 8 }, },	-- 8x Holy Dust
								}),
								i(28889, {	-- Greater Inscription of Warding
									["cost"] = { { "i", 29735, 8 }, },	-- 8x Holy Dust
								}),
							},
						}),
					}),
					n(20808, {	-- Scribe Veredis <Scryer Inscriptions>
						["coord"] = { 60.0, 64.6, SHATTRATH_CITY },
						["groups"] = bubbleDownClassicRep(FACTION_THE_SCRYERS, {
							{		-- Neutral
							}, {	-- Friendly
							}, {	-- Honored
								i(28907, {	-- Inscription of the Blade
									["cost"] = { { "i", 29736, 2 }, },	-- 2x Arcane Rune
								}),
								i(28908, {	-- Inscription of the Knight
									["cost"] = { { "i", 29736, 2 }, },	-- 2x Arcane Rune
								}),
								i(28904, {	-- Inscription of the Oracle
									["cost"] = { { "i", 29736, 2 }, },	-- 2x Arcane Rune
								}),
								i(28903, {	-- Inscription of the Orb
									["cost"] = { { "i", 29736, 2 }, },	-- 2x Arcane Rune
								}),
							}, {	-- Revered
							}, {	-- Exalted
								i(28910, {	-- Greater Inscription of the Blade
									["cost"] = { { "i", 29736, 8 }, },	-- 8x Arcane Rune
								}),
								i(28911, {	-- Greater Inscription of the Knight
									["cost"] = { { "i", 29736, 8 }, },	-- 8x Arcane Rune
								}),
								i(28912, {	-- Greater Inscription of the Oracle
									["cost"] = { { "i", 29736, 8 }, },	-- 8x Arcane Rune
								}),
								i(28909, {	-- Greater Inscription of the Orb
									["cost"] = { { "i", 29736, 8 }, },	-- 8x Arcane Rune
								}),
							},
						}),
					}),
					n(19240, {	-- Selanam the Blade
						["coord"] = { 42.0, 75.2, SHATTRATH_CITY },
						["sym"] = {{"select", "itemID",
							2520,	-- Boardsword
							2528,	-- Falchion
							2521,	-- Flamberge
							2526,	-- Main Gauche
							2534,	-- Rondel
							2529,	-- Zweihander
						}},
					}),
					n(19074, {	-- Skreah <Alchemy Supplies>
						["coord"] = { 45.8, 20.8, SHATTRATH_CITY },
						["minReputation"] = { FACTION_LOWER_CITY, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(23574, {	-- Recipe: Transmute Primal Might (RECIPE!)
								["isLimited"] = true,
							}),
						},
					}),
					n(19238, {	-- Urumir Stavebright <Staff Vendor>
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["coord"] = { 49.6, 79.0, SHATTRATH_CITY },
						["sym"] = {{"select", "itemID",
							2527,	-- Battle Staff
							2030,	-- Gnarled Staff
							928,	-- Long Staff
							854,	-- Quarter Staff
							12252,	-- Staff Of Protection
							2495,	-- Walking Stick
							2535,	-- War Staff
						}},
						["groups"] = {
							i(12252, {	-- Staff of Protection
								["isLimited"] = true,
							}),
						},
					}),
					n(19661, {	-- Viggz Shinesparked <Engineering Supplies>
						["coord"] = { 64.8, 69.6, SHATTRATH_CITY },
						["minReputation"] = { FACTION_LOWER_CITY, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(23799, {	-- Schematic: Adamantite Rifle (RECIPE!)
								["isLimited"] = true,
							}),
							i(32381, {	-- Schematic: Fused Wiring (RECIPE!)
								["timeline"] = { ADDED_2_1_0, REMOVED_5_0_4 },
								["isLimited"] = true,
							}),
						},
					}),
					n(21905, {	-- Veynna Dawnstar <Keeper of Sha'tari Heirlooms>
						["coord"] = {44.8, 91.6, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = TIER_FIVE_GROUPS,
					}),
					n(18484, {	-- Wind Trader Lathrai
						["coord"] = { 72.6, 31.6, SHATTRATH_CITY },
						["groups"] = {
							applyclassicphase(TBC_PHASE_TWO, i(23815, {	-- Schematic: Adamantite Shell Machine (RECIPE!)
								["isLimited"] = true,
								["timeline"] = { REMOVED_4_0_1 },
							})),
							i(23816, {	-- Schematic: Fel Iron Toolbox (RECIPE!)
								["isLimited"] = true,
							}),
							i(23811, {	-- Schematic: White Smoke Flare (RECIPE!)
								["isLimited"] = true,
							}),
						},
					}),
					n(19234, {	-- Yurial Soulwater <Enchanting Supplies>
						["coord"] = { 44.6, 96.8, SHATTRATH_CITY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = ZURII_YURIAL_GROUPS,
					}),
					n(33676, {	-- Zurii <Enchanting Trainer>
						["coord"] = { 36.4, 44.6, SHATTRATH_CITY },
						["timeline"] = { ADDED_3_1_0 },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = ZURII_YURIAL_GROUPS,
					}),
				}),
			},
		})),
	})),
});

-- Add in the items that aren't locked by phase.
local COMMON_ENCHANTING_RECIPES = {
	i(20753),	-- Formula: Lesser Wizard Oil (RECIPE!)
	i(20752),	-- Formula: Minor Mana Oil (RECIPE!)
	i(20758),	-- Formula: Minor Wizard Oil (RECIPE!)
	i(22307),	-- Pattern: Enchanted Mageweave Pouch
};
appendGroups(COMMON_ENCHANTING_RECIPES, ZURII_YURIAL_GROUPS);
appendGroups(COMMON_ENCHANTING_RECIPES, MADAME_RUBY_GROUPS);

-- Add in Classic specific sources of PVP Gear.
-- #if ANYCLASSIC
local KARYNNA_GROUPS = {
	cl(WARRIOR, {
		i(24545, {	-- Gladiator's Plate Helm
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(24546, {	-- Gladiator's Plate Shoulders
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(24544, {	-- Gladiator's Plate Chestpiece
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(24549, {	-- Gladiator's Plate Gauntlets
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(24547, {	-- Gladiator's Plate Legguards
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),
	}),
	cl(PALADIN, {
		i(27704, {	-- Gladiator's Lamellar Helm
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(27706, {	-- Gladiator's Lamellar Shoulders
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(27702, {	-- Gladiator's Lamellar Chestpiece
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(27703, {	-- Gladiator's Lamellar Gauntlets
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(27705, {	-- Gladiator's Lamellar Legguards
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),

		i(31616, {	-- Gladiator's Ornamented Headcover
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(31619, {	-- Gladiator's Ornamented Spaulders
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(31613, {	-- Gladiator's Ornamented Chestguard
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(31614, {	-- Gladiator's Ornamented Gloves
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(31618, {	-- Gladiator's Ornamented Legplates
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),

		i(27881, {	-- Gladiator's Scaled Helm
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(27883, {	-- Gladiator's Scaled Shoulders
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(27879, {	-- Gladiator's Scaled Chestpiece
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(27880, {	-- Gladiator's Scaled Gauntlets
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(27882, {	-- Gladiator's Scaled Legguards
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),
	}),
	cl(HUNTER, {
		i(28331, {	-- Gladiator's Chain Helm
			["cost"] = { { "i", 29759, 1 }, },	-- Helm of the Fallen Hero
		}),
		i(28333, {	-- Gladiator's Chain Spaulders
			["cost"] = { { "i", 29762, 1 }, },	-- Pauldrons of the Fallen Hero
		}),
		i(28334, {	-- Gladiator's Chain Armor
			["cost"] = { { "i", 29755, 1 }, },	-- Chestguard of the Fallen Hero
		}),
		i(28335, {	-- Gladiator's Chain Gauntlets
			["cost"] = { { "i", 29756, 1 }, },	-- Gloves of the Fallen Hero
		}),
		i(28332, {	-- Gladiator's Chain Leggings
			["cost"] = { { "i", 29765, 1 }, },	-- Leggings of the Fallen Hero
		}),
	}),
	cl(ROGUE, {
		i(25830, {	-- Gladiator's Leather Helm
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(25832, {	-- Gladiator's Leather Spaulders
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(25831, {	-- Gladiator's Leather Tunic
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(25834, {	-- Gladiator's Leather Gloves
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(25833, {	-- Gladiator's Leather Legguards
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),
	}),
	cl(PRIEST, {
		i(31410, {	-- Gladiator's Mooncloth Hood
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(31412, {	-- Gladiator's Mooncloth Mantle
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(31413, {	-- Gladiator's Mooncloth Robe
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(31409, {	-- Gladiator's Mooncloth Gloves
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(31411, {	-- Gladiator's Mooncloth Leggings
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),

		i(27708, {	-- Gladiator's Satin Hood
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(27710, {	-- Gladiator's Satin Mantle
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(27711, {	-- Gladiator's Satin Robe
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(27707, {	-- Gladiator's Satin Gloves
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(27709, {	-- Gladiator's Satin Leggings
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),
	}),
	cl(SHAMAN, {
		i(25998, {	-- Gladiator's Linked Helm
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(25999, {	-- Gladiator's Linked Spaulders
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(25997, {	-- Gladiator's Linked Armor
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(26000, {	-- Gladiator's Linked Gauntlets
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(26001, {	-- Gladiator's Linked Leggings
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),

		i(27471, {	-- Gladiator's Mail Helm
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(27473, {	-- Gladiator's Mail Spaulders
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(27469, {	-- Gladiator's Mail Armor
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(27470, {	-- Gladiator's Mail Gauntlets
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(27472, {	-- Gladiator's Mail Leggings
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),

		i(31400, {	-- Gladiator's Ringmail Helm
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(31407, {	-- Gladiator's Ringmail Spaulders
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(31396, {	-- Gladiator's Ringmail Armor
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(31397, {	-- Gladiator's Ringmail Gauntlets
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(31406, {	-- Gladiator's Ringmail Leggings
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),
	}),
	cl(MAGE, {
		i(25855, {	-- Gladiator's Silk Cowl
			["cost"] = { { "i", 29759, 1 }, },	-- Helm of the Fallen Hero
		}),
		i(25854, {	-- Gladiator's Silk Amice
			["cost"] = { { "i", 29762, 1 }, },	-- Pauldrons of the Fallen Hero
		}),
		i(25856, {	-- Gladiator's Silk Raiment
			["cost"] = { { "i", 29755, 1 }, },	-- Chestguard of the Fallen Hero
		}),
		i(25857, {	-- Gladiator's Silk Handguards
			["cost"] = { { "i", 29756, 1 }, },	-- Gloves of the Fallen Hero
		}),
		i(25858, {	-- Gladiator's Silk Trousers
			["cost"] = { { "i", 29765, 1 }, },	-- Leggings of the Fallen Hero
		}),
	}),
	cl(WARLOCK, {
		i(24553, {	-- Gladiator's Dreadweave Hood
			["cost"] = { { "i", 29759, 1 }, },	-- Helm of the Fallen Hero
		}),
		i(24554, {	-- Gladiator's Dreadweave Mantle
			["cost"] = { { "i", 29762, 1 }, },	-- Pauldrons of the Fallen Hero
		}),
		i(24552, {	-- Gladiator's Dreadweave Robe
			["cost"] = { { "i", 29755, 1 }, },	-- Chestguard of the Fallen Hero
		}),
		i(24556, {	-- Gladiator's Dreadweave Gloves
			["cost"] = { { "i", 29756, 1 }, },	-- Gloves of the Fallen Hero
		}),
		i(24555, {	-- Gladiator's Dreadweave Leggings
			["cost"] = { { "i", 29765, 1 }, },	-- Leggings of the Fallen Hero
		}),

		i(30187, {	-- Gladiator's Felweave Cowl
			["cost"] = { { "i", 29759, 1 }, },	-- Helm of the Fallen Hero
		}),
		i(30186, {	-- Gladiator's Felweave Amice
			["cost"] = { { "i", 29762, 1 }, },	-- Pauldrons of the Fallen Hero
		}),
		i(30200, {	-- Gladiator's Felweave Raiment
			["cost"] = { { "i", 29755, 1 }, },	-- Chestguard of the Fallen Hero
		}),
		i(30188, {	-- Gladiator's Felweave Handguards
			["cost"] = { { "i", 29756, 1 }, },	-- Gloves of the Fallen Hero
		}),
		i(30201, {	-- Gladiator's Felweave Trousers
			["cost"] = { { "i", 29765, 1 }, },	-- Leggings of the Fallen Hero
		}),
	}),
	cl(DRUID, {
		i(28127, {	-- Gladiator's Dragonhide Helm
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(28129, {	-- Gladiator's Dragonhide Spaulders
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(28130, {	-- Gladiator's Dragonhide Tunic
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(28126, {	-- Gladiator's Dragonhide Gloves
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(28128, {	-- Gladiator's Dragonhide Legguards
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),

		i(31376, {	-- Gladiator's Kodohide Helm
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(31378, {	-- Gladiator's Kodohide Spaulders
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(31379, {	-- Gladiator's Kodohide Tunic
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(31375, {	-- Gladiator's Kodohide Gloves
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(31377, {	-- Gladiator's Kodohide Legguards
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),

		i(28137, {	-- Gladiator's Wyrmhide Helm
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(28136, {	-- Gladiator's Wyrmhide Gloves
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(28139, {	-- Gladiator's Wyrmhide Spaulders
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(28140, {	-- Gladiator's Wyrmhide Tunic
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(28138, {	-- Gladiator's Wyrmhide Legguards
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),
	}),
};
for i,o in ipairs(KARYNNA_GROUPS) do
	if o.groups then
		for j,p in ipairs(o.groups) do applyclassicphase(TBC_PHASE_THREE, p); end
	end
	table.insert(TIER_FOUR_GROUPS, o);
end

local OLUS_GROUPS = {	-- This was also from Olus on the Isle of Quel'Danas
	cl(WARRIOR, {
		i(30488, {	-- Merciless Gladiator's Plate Helm
			["cost"] = { { "i", 30243, 1, } },	-- 1x Helm of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(30490, {	-- Merciless Gladiator's Plate Shoulders
			["cost"] = { { "i", 30249, 1, } },	-- 1x Pauldrons of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(30486, {	-- Merciless Gladiator's Plate Chestpiece
			["cost"] = { { "i", 30237, 1, } },	-- 1x Chestguard of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(30487, {	-- Merciless Gladiator's Plate Gauntlets
			["cost"] = { { "i", 30240, 1, } },	-- 1x Gloves of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(30489, {	-- Merciless Gladiator's Plate Legguards
			["cost"] = { { "i", 30246, 1, } },	-- 1x Leggings of the Vanquished Defender [Warrior, Priest, Druid]
		}),
	}),
	cl(PALADIN, {
		i(31997, {	-- Merciless Gladiator's Lamellar Helm
			["cost"] = { { "i", 30242, 1, } },	-- 1x Helm of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(31996, {	-- Merciless Gladiator's Lamellar Shoulders
			["cost"] = { { "i", 30248, 1, } },	-- 1x Pauldrons of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(31992, {	-- Merciless Gladiator's Lamellar Chestpiece
			["cost"] = { { "i", 30236, 1, } },	-- 1x Chestguard of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(31993, {	-- Merciless Gladiator's Lamellar Gauntlets
			["cost"] = { { "i", 30239, 1, } },	-- 1x Gloves of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(31995, {	-- Merciless Gladiator's Lamellar Legguards
			["cost"] = { { "i", 30245, 1, } },	-- 1x Leggings of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),

		i(32022, {	-- Merciless Gladiator's Ornamented Headcover
			["cost"] = { { "i", 30242, 1, } },	-- 1x Helm of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32024, {	-- Merciless Gladiator's Ornamented Spaulders
			["cost"] = { { "i", 30248, 1, } },	-- 1x Pauldrons of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32020, {	-- Merciless Gladiator's Ornamented Chestguard
			["cost"] = { { "i", 30236, 1, } },	-- 1x Chestguard of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32021, {	-- Merciless Gladiator's Ornamented Gloves
			["cost"] = { { "i", 30239, 1, } },	-- 1x Gloves of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32023, {	-- Merciless Gladiator's Ornamented Legplates
			["cost"] = { { "i", 30245, 1, } },	-- 1x Leggings of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),

		i(32041, {	-- Merciless Gladiator's Scaled Helm
			["cost"] = { { "i", 30242, 1, } },	-- 1x Helm of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32043, {	-- Merciless Gladiator's Scaled Shoulders
			["cost"] = { { "i", 30248, 1, } },	-- 1x Pauldrons of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32039, {	-- Merciless Gladiator's Scaled Chestpiece
			["cost"] = { { "i", 30236, 1, } },	-- 1x Chestguard of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32040, {	-- Merciless Gladiator's Scaled Gauntlets
			["cost"] = { { "i", 30239, 1, } },	-- 1x Gloves of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32042, {	-- Merciless Gladiator's Scaled Legguards
			["cost"] = { { "i", 30245, 1, } },	-- 1x Leggings of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
	}),
	cl(HUNTER, {
		i(31962, {	-- Merciless Gladiator's Chain Helm
			["cost"] = { { "i", 30244, 1, } },	-- 1x Helm of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
		i(31964, {	-- Merciless Gladiator's Chain Spaulders
			["cost"] = { { "i", 30250, 1, } },	-- 1x Pauldrons of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
		i(31960, {	-- Merciless Gladiator's Chain Armor
			["cost"] = { { "i", 30238, 1, } },	-- 1x Chestguard of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
		i(31961, {	-- Merciless Gladiator's Chain Gauntlets
			["cost"] = { { "i", 30241, 1, } },	-- 1x Gloves of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
		i(31963, {	-- Merciless Gladiator's Chain Leggings
			["cost"] = { { "i", 30247, 1, } },	-- 1x Leggings of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
	}),
	cl(ROGUE, {
		i(31999, {	-- Merciless Gladiator's Leather Helm
			["cost"] = { { "i", 30242, 1, } },	-- 1x Helm of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32001, {	-- Merciless Gladiator's Leather Spaulders
			["cost"] = { { "i", 30248, 1, } },	-- 1x Pauldrons of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32002, {	-- Merciless Gladiator's Leather Tunic
			["cost"] = { { "i", 30236, 1, } },	-- 1x Chestguard of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(31998, {	-- Merciless Gladiator's Leather Gloves
			["cost"] = { { "i", 30239, 1, } },	-- 1x Gloves of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32000, {	-- Merciless Gladiator's Leather Legguards
			["cost"] = { { "i", 30245, 1, } },	-- 1x Leggings of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
	}),
	cl(PRIEST, {
		i(32016, {	-- Merciless Gladiator's Mooncloth Hood
			["cost"] = { { "i", 30243, 1, } },	-- 1x Helm of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(32018, {	-- Merciless Gladiator's Mooncloth Mantle
			["cost"] = { { "i", 30249, 1, } },	-- 1x Pauldrons of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(32019, {	-- Merciless Gladiator's Mooncloth Robe
			["cost"] = { { "i", 30237, 1, } },	-- 1x Chestguard of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(32015, {	-- Merciless Gladiator's Mooncloth Gloves
			["cost"] = { { "i", 30240, 1, } },	-- 1x Gloves of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(32017, {	-- Merciless Gladiator's Mooncloth Leggings
			["cost"] = { { "i", 30246, 1, } },	-- 1x Leggings of the Vanquished Defender [Warrior, Priest, Druid]
		}),

		i(32035, {	-- Merciless Gladiator's Satin Hood
			["cost"] = { { "i", 30243, 1, } },	-- 1x Helm of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(32037, {	-- Merciless Gladiator's Satin Mantle
			["cost"] = { { "i", 30249, 1, } },	-- 1x Pauldrons of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(32038, {	-- Merciless Gladiator's Satin Robe
			["cost"] = { { "i", 30237, 1, } },	-- 1x Chestguard of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(32034, {	-- Merciless Gladiator's Satin Gloves
			["cost"] = { { "i", 30240, 1, } },	-- 1x Gloves of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(32036, {	-- Merciless Gladiator's Satin Leggings
			["cost"] = { { "i", 30246, 1, } },	-- 1x Leggings of the Vanquished Defender [Warrior, Priest, Druid]
		}),
	}),
	cl(SHAMAN, {
		i(32006, {	-- Merciless Gladiator's Linked Helm
			["cost"] = { { "i", 30242, 1, } },	-- 1x Helm of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32008, {	-- Merciless Gladiator's Linked Spaulders
			["cost"] = { { "i", 30248, 1, } },	-- 1x Pauldrons of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32004, {	-- Merciless Gladiator's Linked Armor
			["cost"] = { { "i", 30236, 1, } },	-- 1x Chestguard of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32005, {	-- Merciless Gladiator's Linked Gauntlets
			["cost"] = { { "i", 30239, 1, } },	-- 1x Gloves of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32007, {	-- Merciless Gladiator's Linked Leggings
			["cost"] = { { "i", 30245, 1, } },	-- 1x Leggings of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),

		i(32011, {	-- Merciless Gladiator's Mail Helm
			["cost"] = { { "i", 30242, 1, } },	-- 1x Helm of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32013, {	-- Merciless Gladiator's Mail Spaulders
			["cost"] = { { "i", 30248, 1, } },	-- 1x Pauldrons of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32009, {	-- Merciless Gladiator's Mail Armor
			["cost"] = { { "i", 30236, 1, } },	-- 1x Chestguard of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32010, {	-- Merciless Gladiator's Mail Gauntlets
			["cost"] = { { "i", 30239, 1, } },	-- 1x Gloves of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32012, {	-- Merciless Gladiator's Mail Leggings
			["cost"] = { { "i", 30245, 1, } },	-- 1x Leggings of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),

		i(32031, {	-- Merciless Gladiator's Ringmail Helm
			["cost"] = { { "i", 30242, 1, } },	-- 1x Helm of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32033, {	-- Merciless Gladiator's Ringmail Spaulders
			["cost"] = { { "i", 30248, 1, } },	-- 1x Pauldrons of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32029, {	-- Merciless Gladiator's Ringmail Armor
			["cost"] = { { "i", 30236, 1, } },	-- 1x Chestguard of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32030, {	-- Merciless Gladiator's Ringmail Gauntlets
			["cost"] = { { "i", 30239, 1, } },	-- 1x Gloves of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
		i(32032, {	-- Merciless Gladiator's Ringmail Leggings
			["cost"] = { { "i", 30245, 1, } },	-- 1x Leggings of the Vanquished Champion [Paladin, Rogue, Shaman]
		}),
	}),
	cl(MAGE, {
		i(32048, {	-- Merciless Gladiator's Silk Cowl
			["cost"] = { { "i", 30244, 1, } },	-- 1x Helm of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
		i(32047, {	-- Merciless Gladiator's Silk Amice
			["cost"] = { { "i", 30250, 1, } },	-- 1x Pauldrons of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
		i(32050, {	-- Merciless Gladiator's Silk Raiment
			["cost"] = { { "i", 30238, 1, } },	-- 1x Chestguard of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
		i(32049, {	-- Merciless Gladiator's Silk Handguards
			["cost"] = { { "i", 30241, 1, } },	-- 1x Gloves of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
		i(32051, {	-- Merciless Gladiator's Silk Trousers
			["cost"] = { { "i", 30247, 1, } },	-- 1x Leggings of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
	}),
	cl(WARLOCK, {
		i(31974, {	-- Merciless Gladiator's Dreadweave Hood
			["cost"] = { { "i", 30244, 1, } },	-- 1x Helm of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
		i(31976, {	-- Merciless Gladiator's Dreadweave Mantle
			["cost"] = { { "i", 30250, 1, } },	-- 1x Pauldrons of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
		i(31977, {	-- Merciless Gladiator's Dreadweave Robe
			["cost"] = { { "i", 30238, 1, } },	-- 1x Chestguard of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
		i(31973, {	-- Merciless Gladiator's Dreadweave Gloves
			["cost"] = { { "i", 30241, 1, } },	-- 1x Gloves of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
		i(31975, {	-- Merciless Gladiator's Dreadweave Leggings
			["cost"] = { { "i", 30247, 1, } },	-- 1x Leggings of the Vanquished Hero [Hunter, Mage, Warlock]
		}),

		i(31980, {	-- Merciless Gladiator's Felweave Cowl
			["cost"] = { { "i", 30244, 1, } },	-- 1x Helm of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
		i(31979, {	-- Merciless Gladiator's Felweave Amice
			["cost"] = { { "i", 30250, 1, } },	-- 1x Pauldrons of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
		i(31982, {	-- Merciless Gladiator's Felweave Raiment
			["cost"] = { { "i", 30238, 1, } },	-- 1x Chestguard of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
		i(31981, {	-- Merciless Gladiator's Felweave Handguards
			["cost"] = { { "i", 30241, 1, } },	-- 1x Gloves of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
		i(31983, {	-- Merciless Gladiator's Felweave Trousers
			["cost"] = { { "i", 30247, 1, } },	-- 1x Leggings of the Vanquished Hero [Hunter, Mage, Warlock]
		}),
	}),
	cl(DRUID, {
		i(31968, {	-- Merciless Gladiator's Dragonhide Helm
			["cost"] = { { "i", 30243, 1, } },	-- 1x Helm of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(31971, {	-- Merciless Gladiator's Dragonhide Spaulders
			["cost"] = { { "i", 30249, 1, } },	-- 1x Pauldrons of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(31972, {	-- Merciless Gladiator's Dragonhide Tunic
			["cost"] = { { "i", 30237, 1, } },	-- 1x Chestguard of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(31967, {	-- Merciless Gladiator's Dragonhide Gloves
			["cost"] = { { "i", 30240, 1, } },	-- 1x Gloves of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(31969, {	-- Merciless Gladiator's Dragonhide Legguards
			["cost"] = { { "i", 30246, 1, } },	-- 1x Leggings of the Vanquished Defender [Warrior, Priest, Druid]
		}),

		i(31988, {	-- Merciless Gladiator's Kodohide Helm
			["cost"] = { { "i", 30243, 1, } },	-- 1x Helm of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(31990, {	-- Merciless Gladiator's Kodohide Spaulders
			["cost"] = { { "i", 30249, 1, } },	-- 1x Pauldrons of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(31991, {	-- Merciless Gladiator's Kodohide Tunic
			["cost"] = { { "i", 30237, 1, } },	-- 1x Chestguard of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(31987, {	-- Merciless Gladiator's Kodohide Gloves
			["cost"] = { { "i", 30240, 1, } },	-- 1x Gloves of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(31989, {	-- Merciless Gladiator's Kodohide Legguards
			["cost"] = { { "i", 30246, 1, } },	-- 1x Leggings of the Vanquished Defender [Warrior, Priest, Druid]
		}),

		i(32057, {	-- Merciless Gladiator's Wyrmhide Helm
			["cost"] = { { "i", 30243, 1, } },	-- 1x Helm of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(32059, {	-- Merciless Gladiator's Wyrmhide Spaulders
			["cost"] = { { "i", 30249, 1, } },	-- 1x Pauldrons of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(32060, {	-- Merciless Gladiator's Wyrmhide Tunic
			["cost"] = { { "i", 30237, 1, } },	-- 1x Chestguard of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(32056, {	-- Merciless Gladiator's Wyrmhide Gloves
			["cost"] = { { "i", 30240, 1, } },	-- 1x Gloves of the Vanquished Defender [Warrior, Priest, Druid]
		}),
		i(32058, {	-- Merciless Gladiator's Wyrmhide Legguards
			["cost"] = { { "i", 30246, 1, } },	-- 1x Leggings of the Vanquished Defender [Warrior, Priest, Druid]
		}),
	}),
};
for i,o in ipairs(OLUS_GROUPS) do
	if o.groups then
		for j,p in ipairs(o.groups) do applyclassicphase(TBC_PHASE_THREE, p); end
	end
	table.insert(TIER_FIVE_GROUPS, o);
end
-- #endif