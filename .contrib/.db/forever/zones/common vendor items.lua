---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, n(COMMON_VENDOR_ITEMS, {
	description = "Sold by vendors all over Azeroth: ammunition by most General Goods and General Supplies vendors, Bowyers and Gunsmiths, thrown weapons by most General Goods and General Supplies vendors and Thrown Weapons Merchants, quivers by Bowyers and Fletchers, and basic armor sets by armor and clothing merchants.",
	groups = {
		filter(AMMO, {
			i(11284),	-- Accurate Slugs
			i(2519),	-- Heavy Shot
			i(11285),	-- Jagged Arrow
			i(2516),	-- Light Shot
			i(3030),	-- Razor Arrow
			i(2512),	-- Rough Arrow
			i(2515),	-- Sharp Arrow
			i(3033),	-- Solid Shot
		}),
		filter(BAGS, {
			i(4498),	-- Brown Leather Satchel
			i(4497),	-- Heavy Brown Bag
			i(4499),	-- Huge Brown Sack
			i(2101),	-- Light Quiver
			i(11362),	-- Medium Quiver
			i(4496),	-- Small Brown Pouch
			i(5439),	-- Small Quiver
		}),
		filter(CLOTH, {
			header(HEADERS.Item, 2435, {	-- Embroidered Armor
				symselector = SymSelector.VENDOR_EMBROIDERED,
				groups = {
					i(3892),	-- Embroidered Hat
					i(2435),	-- Embroidered Armor
					i(3588),	-- Embroidered Bracers
					i(2440),	-- Embroidered Gloves
					i(3587),	-- Embroidered Belt
					i(2437),	-- Embroidered Pants
					i(2438),	-- Embroidered Boots
				},
			}),
			header(HEADERS.Item, 837, {	-- Heavy Weave Armor
				symselector = SymSelector.VENDOR_HEAVY_WEAVE,
				groups = {
					i(837),	-- Heavy Weave Armor
					i(3590),	-- Heavy Weave Bracers
					i(839),	-- Heavy Weave Gloves
					i(3589),	-- Heavy Weave Belt
					i(838),	-- Heavy Weave Pants
					i(840),	-- Heavy Weave Shoes
				},
			}),
			header(HEADERS.Item, 795, {	-- Knitted Tunic
				symselector = SymSelector.VENDOR_KNITTED,
				groups = {
					i(795),	-- Knitted Tunic
					i(3603),	-- Knitted Bracers
					i(793),	-- Knitted Gloves
					i(3602),	-- Knitted Belt
					i(794),	-- Knitted Pants
					i(792),	-- Knitted Sandals
				},
			}),
			header(HEADERS.Item, 2160, {	-- Padded Armor
				symselector = SymSelector.VENDOR_PADDED,
				groups = {
					i(2160),	-- Padded Armor
					i(3592),	-- Padded Bracers
					i(2158),	-- Padded Gloves
					i(3591),	-- Padded Belt
					i(2159),	-- Padded Pants
					i(2156),	-- Padded Boots
				},
			}),
			header(HEADERS.Item, 2429, {	-- Russet Vest
				symselector = SymSelector.VENDOR_RUSSET,
				groups = {
					i(3889),	-- Russet Hat
					i(2429),	-- Russet Vest
					i(3594),	-- Russet Bracers
					i(2434),	-- Russet Gloves
					i(3593),	-- Russet Belt
					i(2431),	-- Russet Pants
					i(2432),	-- Russet Boots
				},
			}),
			header(HEADERS.Item, 193, {	-- Tattered Cloth Vest
				symselector = SymSelector.VENDOR_TATTERED_CLOTH,
				groups = {
					i(193),	-- Tattered Cloth Vest
					i(3596),	-- Tattered Cloth Bracers
					i(711),	-- Tattered Cloth Gloves
					i(3595),	-- Tattered Cloth Belt
					i(194),	-- Tattered Cloth Pants
					i(195),	-- Tattered Cloth Boots
				},
			}),
			header(HEADERS.Item, 200, {	-- Thick Cloth Vest
				symselector = SymSelector.VENDOR_THICK_CLOTH,
				groups = {
					i(200),	-- Thick Cloth Vest
					i(3598),	-- Thick Cloth Bracers
					i(203),	-- Thick Cloth Gloves
					i(3597),	-- Thick Cloth Belt
					i(201),	-- Thick Cloth Pants
					i(202),	-- Thick Cloth Shoes
				},
			}),
			header(HEADERS.Item, 2121, {	-- Thin Cloth Armor
				symselector = SymSelector.VENDOR_THIN_CLOTH,
				groups = {
					i(2121),	-- Thin Cloth Armor
					i(3600),	-- Thin Cloth Bracers
					i(2119),	-- Thin Cloth Gloves
					i(3599),	-- Thin Cloth Belt
					i(2120),	-- Thin Cloth Pants
					i(2117),	-- Thin Cloth Shoes
				},
			}),
			header(HEADERS.Item, 2364, {	-- Woven Vest
				symselector = SymSelector.VENDOR_WOVEN,
				groups = {
					i(2364),	-- Woven Vest
					i(3607),	-- Woven Bracers
					i(2369),	-- Woven Gloves
					i(3606),	-- Woven Belt
					i(2366),	-- Woven Pants
					i(2367),	-- Woven Boots
				},
			}),
			header(HEADERS.Item, 277098, {	-- Zephrali Vest
				symselector = SymSelector.VENDOR_ZEPHRALI_CLOTH,
				groups = {
					i(277098),	-- Zephrali Vest
					i(277099),	-- Zephrali Cuffs
					i(277100),	-- Zephrali Handwraps
					i(277101),	-- Zephrali Cord
					i(277102),	-- Zephrali Leggings
					i(277103),	-- Zephrali Shoes
				},
			}),
		}),
		filter(LEATHER, {
			header(HEADERS.Item, 2372, {	-- Battered Leather Pants
				symselector = SymSelector.VENDOR_BATTERED_LEATHER,
				groups = {
					i(2374),	-- Battered Leather Bracers
					i(2375),	-- Battered Leather Gloves
					i(2371),	-- Battered Leather Belt
					i(2372),	-- Battered Leather Pants
					i(2373),	-- Battered Leather Boots
				},
			}),
			header(HEADERS.Item, 2127, {	-- Cracked Leather Vest
				symselector = SymSelector.VENDOR_CRACKED_LEATHER,
				groups = {
					i(2127),	-- Cracked Leather Vest
					i(2124),	-- Cracked Leather Bracers
					i(2125),	-- Cracked Leather Gloves
					i(2122),	-- Cracked Leather Belt
					i(2126),	-- Cracked Leather Pants
					i(2123),	-- Cracked Leather Boots
				},
			}),
			header(HEADERS.Item, 2141, {	-- Cuirboulli Vest
				symselector = SymSelector.VENDOR_CUIRBOULLI,
				groups = {
					i(2141),	-- Cuirboulli Vest
					i(2144),	-- Cuirboulli Bracers
					i(2145),	-- Cuirboulli Gloves
					i(2142),	-- Cuirboulli Belt
					i(2146),	-- Cuirboulli Pants
					i(2143),	-- Cuirboulli Boots
				},
			}),
			header(HEADERS.Item, 236, {	-- Cured Leather Armor
				symselector = SymSelector.VENDOR_CURED_LEATHER,
				groups = {
					i(236),	-- Cured Leather Armor
					i(1850),	-- Cured Leather Bracers
					i(239),	-- Cured Leather Gloves
					i(1849),	-- Cured Leather Belt
					i(237),	-- Cured Leather Pants
					i(238),	-- Cured Leather Boots
				},
			}),
			header(HEADERS.Item, 85, {	-- Dirty Leather Vest
				symselector = SymSelector.VENDOR_DIRTY_LEATHER,
				groups = {
					i(85),	-- Dirty Leather Vest
					i(1836),	-- Dirty Leather Bracers
					i(714),	-- Dirty Leather Gloves
					i(1835),	-- Dirty Leather Belt
					i(209),	-- Dirty Leather Pants
					i(210),	-- Dirty Leather Boots
				},
			}),
			header(HEADERS.Item, 2470, {	-- Reinforced Leather Vest
				symselector = SymSelector.VENDOR_REINFORCED_LEATHER,
				groups = {
					i(3893),	-- Reinforced Leather Cap
					i(2470),	-- Reinforced Leather Vest
					i(2474),	-- Reinforced Leather Bracers
					i(2475),	-- Reinforced Leather Gloves
					i(2471),	-- Reinforced Leather Belt
					i(2472),	-- Reinforced Leather Pants
					i(2473),	-- Reinforced Leather Boots
				},
			}),
			header(HEADERS.Item, 799, {	-- Rough Leather Vest
				symselector = SymSelector.VENDOR_ROUGH_LEATHER,
				groups = {
					i(799),	-- Rough Leather Vest
					i(1840),	-- Rough Leather Bracers
					i(797),	-- Rough Leather Gloves
					i(1839),	-- Rough Leather Belt
					i(798),	-- Rough Leather Pants
					i(796),	-- Rough Leather Boots
				},
			}),
			header(HEADERS.Item, 2465, {	-- Studded Pants
				symselector = SymSelector.VENDOR_STUDDED,
				groups = {
					i(3890),	-- Studded Hat
					i(2468),	-- Studded Bracers
					i(2469),	-- Studded Gloves
					i(2464),	-- Studded Belt
					i(2465),	-- Studded Pants
					i(2467),	-- Studded Boots
				},
			}),
			header(HEADERS.Item, 846, {	-- Tanned Leather Jerkin
				symselector = SymSelector.VENDOR_TANNED_LEATHER,
				groups = {
					i(846),	-- Tanned Leather Jerkin
					i(1844),	-- Tanned Leather Bracers
					i(844),	-- Tanned Leather Gloves
					i(1843),	-- Tanned Leather Belt
					i(845),	-- Tanned Leather Pants
					i(843),	-- Tanned Leather Boots
				},
			}),
			header(HEADERS.Item, 277092, {	-- Zephrali Jerkin
				symselector = SymSelector.VENDOR_ZEPHRALI_LEATHER,
				groups = {
					i(277092),	-- Zephrali Jerkin
					i(277087),	-- Zephrali Bracers
					i(277088),	-- Zephrali Gloves
					i(277089),	-- Zephrali Belt
					i(277096),	-- Zephrali Pants
					i(277090),	-- Zephrali Trousers
					i(277091),	-- Zephrali Boots
					i(277097),	-- Zephrali Footwraps
				},
			}),
		}),
		filter(MAIL, {
			header(HEADERS.Item, 2417, {	-- Augmented Chain Vest
				symselector = SymSelector.VENDOR_AUGMENTED_CHAIN,
				groups = {
					i(3891),	-- Augmented Chain Helm
					i(2417),	-- Augmented Chain Vest
					i(2421),	-- Augmented Chain Bracers
					i(2422),	-- Augmented Chain Gloves
					i(2419),	-- Augmented Chain Belt
					i(2418),	-- Augmented Chain Leggings
					i(2420),	-- Augmented Chain Boots
				},
			}),
			header(HEADERS.Item, 2423, {	-- Brigandine Vest
				symselector = SymSelector.VENDOR_BRIGANDINE,
				groups = {
					i(3894),	-- Brigandine Helm
					i(2423),	-- Brigandine Vest
					i(2427),	-- Brigandine Bracers
					i(2428),	-- Brigandine Gloves
					i(2424),	-- Brigandine Belt
					i(2425),	-- Brigandine Leggings
					i(2426),	-- Brigandine Boots
				},
			}),
			header(HEADERS.Item, 847, {	-- Chainmail Armor
				symselector = SymSelector.VENDOR_CHAINMAIL,
				groups = {
					i(847),	-- Chainmail Armor
					i(1846),	-- Chainmail Bracers
					i(850),	-- Chainmail Gloves
					i(1845),	-- Chainmail Belt
					i(848),	-- Chainmail Pants
					i(849),	-- Chainmail Boots
				},
			}),
			header(HEADERS.Item, 2398, {	-- Light Chain Armor
				symselector = SymSelector.VENDOR_LIGHT_CHAIN,
				groups = {
					i(2398),	-- Light Chain Armor
					i(2402),	-- Light Chain Bracers
					i(2403),	-- Light Chain Gloves
					i(2399),	-- Light Chain Belt
					i(2400),	-- Light Chain Leggings
					i(2401),	-- Light Chain Boots
				},
			}),
			header(HEADERS.Item, 2392, {	-- Light Mail Armor
				symselector = SymSelector.VENDOR_LIGHT_MAIL,
				groups = {
					i(2392),	-- Light Mail Armor
					i(2396),	-- Light Mail Bracers
					i(2397),	-- Light Mail Gloves
					i(2393),	-- Light Mail Belt
					i(2394),	-- Light Mail Leggings
					i(2395),	-- Light Mail Boots
				},
			}),
			header(HEADERS.Item, 2153, {	-- Polished Scale Vest
				symselector = SymSelector.VENDOR_POLISHED_SCALE,
				groups = {
					i(2153),	-- Polished Scale Vest
					i(2150),	-- Polished Scale Bracers
					i(2151),	-- Polished Scale Gloves
					i(2148),	-- Polished Scale Belt
					i(2152),	-- Polished Scale Leggings
					i(2149),	-- Polished Scale Boots
				},
			}),
			header(HEADERS.Item, 2386, {	-- Rusted Chain Vest
				symselector = SymSelector.VENDOR_RUSTED_CHAIN,
				groups = {
					i(2386),	-- Rusted Chain Vest
					i(2390),	-- Rusted Chain Bracers
					i(2391),	-- Rusted Chain Gloves
					i(2387),	-- Rusted Chain Belt
					i(2388),	-- Rusted Chain Leggings
					i(2389),	-- Rusted Chain Boots
				},
			}),
			header(HEADERS.Item, 285, {	-- Scalemail Vest
				symselector = SymSelector.VENDOR_SCALEMAIL,
				groups = {
					i(285),	-- Scalemail Vest
					i(1852),	-- Scalemail Bracers
					i(718),	-- Scalemail Gloves
					i(1853),	-- Scalemail Belt
					i(286),	-- Scalemail Pants
					i(287),	-- Scalemail Boots
				},
			}),
			header(HEADERS.Item, 2379, {	-- Tarnished Chain Vest
				symselector = SymSelector.VENDOR_TARNISHED_CHAIN,
				groups = {
					i(2379),	-- Tarnished Chain Vest
					i(2384),	-- Tarnished Chain Bracers
					i(2385),	-- Tarnished Chain Gloves
					i(2380),	-- Tarnished Chain Belt
					i(2381),	-- Tarnished Chain Leggings
					i(2383),	-- Tarnished Chain Boots
				},
			}),
			header(HEADERS.Item, 277084, {	-- Zephrali Legguards
				symselector = SymSelector.VENDOR_ZEPHRALI_MAIL,
				groups = {
					i(277081),	-- Zephrali Wristguards
					i(277082),	-- Zephrali Gauntlets
					i(277084),	-- Zephrali Legguards
					i(277085),	-- Zephrali Greaves
				},
			}),
		}),
		filter(PLATE, {
			header(HEADERS.Item, 8094, {	-- Platemail Armor
				symselector = SymSelector.VENDOR_PLATEMAIL,
				groups = {
					i(8092),	-- Platemail Helm
					i(8094),	-- Platemail Armor
					i(8090),	-- Platemail Bracers
					i(8091),	-- Platemail Gloves
					i(8088),	-- Platemail Belt
					i(8093),	-- Platemail Leggings
					i(8089),	-- Platemail Boots
				},
			}),
		}),
		filter(SHIELDS, {
			i(17187),	-- Banded Buckler
			i(2451),	-- Crested Heater Shield
			i(17183),	-- Dented Buckler
			i(1201),	-- Dull Heater Shield
			i(2448),	-- Heavy Pavise
			i(18826),	-- High Warlord's Shield Wall
			i(2446),	-- Kite Shield
			i(2445),	-- Large Metal Shield
			i(2129),	-- Large Round Shield
			i(1200),	-- Large Wooden Shield
			i(17189),	-- Metal Buckler
			i(17190),	-- Ornate Buckler
			i(17192),	-- Reinforced Targe
			i(17188),	-- Ringed Buckler
			i(17185),	-- Round Buckler
			i(17184),	-- Small Shield
			i(17186),	-- Small Targe
			i(1202),	-- Wall Shield
			i(2376),	-- Worn Heater Shield
		}),
		n(WEAPONS, {
			filter(DAGGERS, {
				i(2139),	-- Dirk
				i(2207),	-- Jambiya
				i(2209),	-- Kris
				i(2526),	-- Main Gauche
				i(2208),	-- Poniard
				i(2534),	-- Rondel
				i(2494),	-- Stiletto
				i(277108),	-- Zephrali Knife
			}),
			filter(FIST_WEAPONS, {
				i(15909),	-- Left-Handed Blades
				i(15906),	-- Left-Handed Brass Knuckles
				i(15907),	-- Left-Handed Claw
				i(15904),	-- Right-Handed Blades
				i(15905),	-- Right-Handed Brass Knuckles
				i(15903),	-- Right-Handed Claw
			}),
			filter(ONE_HANDED_AXES, {
				i(2029),	-- Cleaver
				i(2522),	-- Crescent Axe
				i(927),	-- Double Axe
				i(2530),	-- Francisca
				i(2134),	-- Hand Axe
				i(853),	-- Hatchet
				i(2490),	-- Tomahawk
			}),
			filter(ONE_HANDED_MACES, {
				i(2130),	-- Club
				i(2492),	-- Cudgel
				i(925),	-- Flail
				i(16769),	-- Furbolg Medicine Totem
				i(2028),	-- Hammer
				i(852),	-- Mace
				i(2532),	-- Morning Star
				i(2524),	-- Truncheon
				i(277107),	-- Zephrali Bludgeon
			}),
			filter(ONE_HANDED_SWORDS, {
				i(2520),	-- Broadsword
				i(851),	-- Cutlass
				i(2528),	-- Falchion
				i(2488),	-- Gladius
				i(923),	-- Longsword
				i(2027),	-- Scimitar
				i(2131),	-- Shortsword
				i(277105),	-- Zephrali Blade
			}),
			filter(TWO_HANDED_AXES, {
				i(926),	-- Battle Axe
				i(2025),	-- Bearded Axe
				i(2479),	-- Broad Axe
				i(2523),	-- Bullova
				i(2531),	-- Great Axe
				i(2491),	-- Large Axe
				i(1196),	-- Tabar
			}),
			filter(TWO_HANDED_MACES, {
				i(1197),	-- Giant Mace
				i(2480),	-- Large Club
				i(924),	-- Maul
				i(2026),	-- Rock Hammer
				i(2525),	-- War Hammer
				i(2533),	-- War Maul
				i(2493),	-- Wooden Mallet
				i(277106),	-- Zephrali Smasher
			}),
			filter(TWO_HANDED_SWORDS, {
				i(1194),	-- Bastard Sword
				i(1198),	-- Claymore
				i(922),	-- Dacian Falx
				i(2024),	-- Espadon
				i(2521),	-- Flamberge
				i(2489),	-- Two-handed Sword
				i(277104),	-- Zephrali Greatsword
				i(2529),	-- Zweihander
			}),
			filter(POLEARMS, {
				i(15811),	-- Heavy Spear
				i(15810),	-- Short Spear
			}),
			filter(STAVES, {
				i(2527),	-- Battle Staff
				i(2030),	-- Gnarled Staff
				i(928),	-- Long Staff
				i(854),	-- Quarter Staff
				i(2132),	-- Short Staff
				i(2495),	-- Walking Stick
				i(2535),	-- War Staff
				i(277109),	-- Zephrali Greatstaff
			}),
			filter(BOWS, {
				i(3027),	-- Heavy Recurve Bow
				i(2506),	-- Hornwood Recurve Bow
				i(2507),	-- Laminated Recurve Bow
				i(2505),	-- Polished Shortbow
				i(3026),	-- Reinforced Bow
				i(2504),	-- Worn Shortbow
				i(277110),	-- Zephrali Bow
			}),
			filter(CROSSBOWS, {
				i(15808),	-- Fine Light Crossbow
				i(15809),	-- Heavy Crossbow
				i(15807),	-- Light Crossbow
				i(277111),	-- Zephrali Crossbow
			}),
			filter(GUNS, {
				i(3024),	-- BKP 2700 "Enforcer"
				i(2511),	-- Hunter's Boomstick
				i(3023),	-- Large Bore Blunderbuss
				i(2509),	-- Ornate Blunderbuss
				i(2510),	-- Solid Blunderbuss
			}),
			filter(THROWN, {
				i(2946),	-- Balanced Throwing Dagger
				i(3137),	-- Deadly Throwing Axe
				i(15326),	-- Gleaming Throwing Axe
				i(3107),	-- Keen Throwing Knife
				i(3135),	-- Sharp Throwing Axe
				i(3131),	-- Weighted Throwing Axe
				i(15327),	-- Wicked Throwing Dagger
			}),
			filter(WANDS, {
				i(5239),	-- Blackbone Wand
				i(5210),	-- Burning Wand
				i(5236),	-- Combustible Wand
				i(5211),	-- Dusk Wand
				i(5209),	-- Gloom Wand
				i(5347),	-- Pestilent Wand
				i(5238),	-- Pitchwood Wand
				i(5208),	-- Smoldering Wand
			}),
			filter(MISC, {
				i(2901),	-- Mining Pick
			}),
		}),
	},
}));
