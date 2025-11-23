-------------------------------------------------------------------
--     B L A C K   M A R K E T   A U C T I O N   H O U S E       --
-------------------------------------------------------------------
-- Sources:
-- 8.2.5: https://www.wowhead.com/news/new-black-market-auction-house-listings-in-8-2-5-revealed-tusks-of-mannoroth-295182
BLACK_MARKET_AUCTION_HOUSE = createHeader({
	readable = "Black Market Auction House",
	icon = [[~_.asset("Category_Blackmarket")]],
	constant = "BLACK_MARKET_AUCTION_HOUSE",
	text = {
		en = [[~BLACK_MARKET_AUCTION_HOUSE]],
	},
	description = {
		-- #if BEFORE TWW
		en = "Instead of buying items from other players like the regular Auction House, items on the Black Market are generated and listed by NPCs. The items are listed for one day only. The items for sale vary from items that were made unobtainable, to rare drops and TCG items. All items are listed infrequently, so it should not be seen as a reliable way to farm rarities.\n\n  Mount bids start at 20,000g, with some exceptions.\n  Companion bids start between 1g and 20,000g, depending on the original source and how hard it is to get.\n  Vanity/misc items start between 10,000g and 15,000g.\n\nBidding works like the regular Auction House. There is no buyout price. The sky (or the gold cap) is the limit when competing with other players for the final bid. With a successful purchase, the item is sent in the mail. Normal Bind on Pickup rules apply, so you must bid on the correct character.\n\nThe supply of items is realm-based. Each realm will have different items for sale at any one time and prices are likely to vary wildly from server to server.\n\nIf empty, the item window will list \"There are no items at this time. Please check back later.\"",
		-- #else
		en = "Instead of buying items from other players like the regular Auction House, items on the Black Market are generated and listed by NPCs. The items are listed for one day only. The items for sale vary from items that were made unobtainable, to rare drops and TCG items. All items are listed infrequently, so it should not be seen as a reliable way to farm rarities.\n\n  Mount bids start at 20,000g, with some exceptions.\n  Companion bids start between 1g and 20,000g, depending on the original source and how hard it is to get.\n  Vanity/misc items start between 10,000g and 15,000g.\n\nBidding works like the regular Auction House. There is no buyout price. The sky (or the gold cap) is the limit when competing with other players for the final bid. With a successful purchase, the item is sent in the mail. \n\nThe supply of items is realm-based. Each realm will have different items for sale at any one time and prices are likely to vary wildly from server to server.\n\nIf empty, the item window will list \"There are no items at this time. Please check back later.\"",
		-- #endif
	},
});
root(ROOTS.BlackMarket, n(BLACK_MARKET_AUCTION_HOUSE, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 }, ["u"] = BLACK_MARKET }, {
	-- #if NOT RETAIL_STYLE_FILL_ENABLED
	-- BMAH content is being loaded properly by the Madam X NPCs who are mapped into the zone. With these maps, the BMAH was loading
	-- into the zone, then also symlinking all included versions of the NPC into the zone from the mapped group
	["maps"] = {
		-- #if BEFORE WOD
		THE_VEILED_STAIR,
		-- #elseif BEFORE LEGION
		DRAENOR_NAGRAND,
		-- #elseif BEFORE BFA
		626,	-- [Rogue Class Hall]
		LEGION_THE_UNDERBELLY,
		-- #elseif BEFORE SL
		BORALUS,
		ZULDAZAR,
		-- #elseif BEFORE DF
		REVENDRETH,
		-- #elseif BEFORE TWW
		VALDRAKKEN,
		-- #elseif BEFORE MID
		DORNOGAL,
		LEGION_THE_UNDERBELLY,
		-- #elseif BEFORE TLT
		SILVERMOON_CITY_MID,
		-- #endif
	},
	-- #endif
	["groups"] = {
		n(ARMOR, {
			header(HEADERS.NPC, 72057, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_5 }, }, {	-- Ordos
				-- Head
				i(105804),	-- Aladya's Spiritfire Greathelm
				i(105810),	-- Buc-Zakai Burning Hood
				i(105806),	-- Circlet of the Panser
				i(105809),	-- Crest of Burning Deeds
				i(105808),	-- Damien's Ice-Vein Mask
				i(105805),	-- Dominik's Casque of Raging Flame
				i(105807),	-- Magdalena's Murderous Crown
				i(105811),	-- Olivia's Graceful Gaze
				i(105803),	-- Stickney's Grey-Shade Hood
				-- Neck
				i(105766),	-- Anafielle's Spiked Choker
				i(105765),	-- Bladeforger Necklace
				i(105763),	-- Penate's Perilous Pendant
				i(105764),	-- Rising New Moon Talisman
				i(105762),	-- Smoldering Eye
				-- Shoulder
				i(105795),	-- Bo He Me's Deathwind Mantle
				i(105800),	-- Firearrow Shoulderpads
				i(105798),	-- Flame Healer's Shoulderguards
				i(105799),	-- Fleshsmoke Chain Shoulders
				i(105796),	-- Rossi's Rosin-Soaked Shoulderplates
				i(105797),	-- Shay-Nii's Popping Shoulderpads
				i(105801),	-- Spaulders of Dominating Dreams
				i(105794),	-- Starry Spaulders of Durability
				i(105802),	-- Yaungol Deathcult Shoulderguards
				-- Chest
				i(105774),	-- Catia's Flowing Robes
				i(105771),	-- Chestguard of Pyrrhic Immolation
				i(105775),	-- Gleaming Eye Spellplate
				i(105767),	-- Hoodrych's Bloodied Chestplate
				i(105772),	-- Moonhee's Mean Vest
				i(105769),	-- Omegal's Crushing Carapace
				i(105768),	-- Pamela's Muuscat Wrap
				i(105773),	-- Ulmaas' Robes of Crushing Magma
				i(105770),	-- Zoo-Per's Superior Chestguard
				-- Wrists
				i(105789),	-- Bjam's Blasting Bracers
				i(105792),	-- Bowflight Wristguard
				i(105793),	-- Bracers of Simmering Fury
				i(105791),	-- Bracers of Unquestioning Belief
				i(105787),	-- Burnseal Bracers
				i(105790),	-- Firetotem Bracers
				i(105786),	-- Ordosian Cultist's Bracers
				i(105788),	-- Paululum's Doodled Wraps
				i(105785),	-- Vanguard's Burly Bracers
				-- Waist
				i(105782),	-- Belt of Glowing Embers
				i(105776),	-- Belt of the Burning Soul
				i(105784),	-- Binkenstein's Burnished Belt
				i(105778),	-- Derevka's Gleaming Girdle
				i(105783),	-- Greatbelt of the Crendor
				i(105779),	-- Light Kindler Waistguard
				i(105777),	-- Remnar's Ruinous Girdle
				i(105781),	-- Venruki's Venerable Sash
				i(105780),	-- Windflame Girdle
				-- Legs
				i(105758),	-- Arielle's Ancient Legwraps
				i(105754),	-- Desirae's Dashing Leggings
				i(105760),	-- Hamlet's Wind-Whipped Leggings
				i(105759),	-- Magmaplates of Jian Wu Xi Feng
				i(105755),	-- Moshne's Keen Kilt
				i(105761),	-- Partik's Purified Legplates
				i(105756),	-- Poxleitner's Leggings of Lights
				i(105757),	-- Shipley's Shady Silks
			})),
		}),
		n(ARMOR, bubbleDown({
			-- #if BEFORE 6.0.2
			["description"] = "Only available on the BMAH for a limited time!",
			["IgnoreWarnings"] = true,
			-- #endif
			["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
		}, {
			-- Heart of Fear Heroic Trash Drops. Only where available from the BMAH while HoF was current Content.
			i(86993),	-- Darting Damselfly Cuffs
			i(86994),	-- Gleaming Moth Cuffs
			i(86999),	-- Inlaid Cricket Bracers
			i(86997),	-- Jagged Hornet Bracers
			i(86998),	-- Luminescent Firefly Wristguards
			i(86996),	-- Pearlescent Butterfly Wristbands
			i(87000),	-- Plated Locust Bracers
			i(87001),	-- Serrated Wasp Bracers
			i(86992),	-- Shining Cicada Bracers
			i(86995),	-- Smooth Beetle Wristbands
		})),
		n(ARMOR, {
			-- #if AFTER 6.0.2
			i(105751, {	-- Kor'kron Shaman's Treasure
				i(105745),	-- Kor'kron Dark Shaman Cowl
				i(105747),	-- Kor'kron Dark Shaman Shoulder
				i(105743),	-- Kor'kron Dark Shaman Vestment
				i(105748),	-- Kor'kron Dark Shaman Bracers
				i(105744),	-- Kor'kron Dark Shaman Glovesfs
				i(105741),	-- Kor'kron Dark Shaman Belt
				i(105746),	-- Kor'kron Dark Shaman Kilt
				i(105742),	-- Kor'kron Dark Shaman Treads
			}),
			-- #endif
			i(211259, {	-- Regal Gryphon Rider's Headgear
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(142000, {	-- Rhinestone Sunglasses
				["timeline"] = { ADDED_8_2_5 },	-- https://warcraft.wiki.gg/wiki/Rhinestone_Sunglasses
			}),
			i(112935, {	-- Tusks of Mannoroth
				["ItemAppearanceModifierID"] = 1,
				["timeline"] = { ADDED_8_2_5 },	-- https://www.icy-veins.com/forums/topic/45843-new-black-market-auction-house-items-available-in-patch-825/
			}),
			i(141006, {	-- The First Satyr's Spaulders
				["ItemAppearanceModifierID"] = 1,
				["timeline"] = { ADDED_8_2_5 },	-- https://www.icy-veins.com/forums/topic/45843-new-black-market-auction-house-items-available-in-patch-825/
			}),
			i(211295, {	-- Wrathful Crusader's Helm
				["timeline"] = { ADDED_11_0_5 },
			}),
		}),
		-- #if AFTER 9.1.0
		filter(BAGS, {
			i(183634, {	-- Papa's Mint Condition Bag (9.1)
				["timeline"] = { ADDED_9_1_0 },	-- https://www.wowhead.com/item=183634/papas-mint-condition-bag#comments
			}),
		}),
		-- #endif
		filter(BATTLE_PETS, {
			i(44984),	-- Ammen Vale Lashling (PET!)
			i(34535),	-- Azure Whelpling (PET!)
			i(32588),	-- Bananas (PET!)
			i(104158, {	-- Blackfuse Bombling (PET!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(29960),	-- Firefly (PET!)
			i(8491),	-- Black Tabby Cat (PET!)
			i(8485),	-- Bombay Cat (PET!)
			i(8490),	-- Siamese Cat (PET!)
			i(97960, {	-- Viscous Horror (PET!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(10822),	-- Dark Whelpling (PET!)
			i(48112),	-- Darting Hatchling (PET!)
			i(48114),	-- Deviate Hatchling (PET!)
			i(20769),	-- Disgusting Oozeling (PET!)
			i(34493),	-- Dragon Kite (PET!)
			i(104162, {	-- Droplet of Y'Shaarj (PET!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(44970),	-- Dun Morogh Cub (PET!)
			i(44973),	-- Durotar Scorpion (PET!)
			i(44974),	-- Elwynn Lamb (PET!)
			i(8498),	-- Emerald Whelpling (PET!)
			i(44982),	-- Enchanted Broom (PET!)
			i(43698),	-- Giant Sewer Rat (PET!)
			i(104163, {	-- Gooey Sha-ling (PET!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(48116),	-- Gundrak Hatchling (PET!)
			i(23713),	-- Hippogryph Hatchling (PET!)
			i(94835, {	-- Ji-Kun Hatchling (PET!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(104165, {	-- Kovok (PET!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(48118),	-- Leaping Hatchling (PET!)
			i(172016, {	-- Lil' Nefarian (PET!)
				["timeline"] = { ADDED_9_0_1 },
			}),
			i(94125, {	-- Living Sandling (PET!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(45002),	-- Mechanopeep (PET!)
			i(44980),	-- Mulgore Hatchling (PET!)
			i(48120),	-- Obsidian Hatchling (PET!)
			i(8492),	-- Green Wing Macaw (PET!)
			i(8494),	-- Hyacinth Macaw (PET!)
			i(35504),	-- Phoenix Hatchling (PET!)
			i(44721),	-- Proto-Drake Whelp (PET!)
			i(183621, {	-- Putrid Geist (PET!)
				["timeline"] = { ADDED_9_0_1 },
			}),
			i(94574, {	-- Pygmy Direhorn (PET!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(97959, {	-- Living Fluid (PET!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(48124),	-- Razormaw Hatchling (PET!)
			i(48126),	-- Razzashi Hatchling (PET!)
			i(34492),	-- Rocket Chicken (PET!)
			i(45606),	-- Sen'jin Fetish (PET!)
			i(69992, {	-- Shimmering Wyrmling (PET!)
				["description"] = "Can also be bought from the Wrath of the Lich King Argent Tournament Vendor.\n\nBlizzard made 3 different Items which all learn the same pet.",
			}),
			i(94152, {	-- Son of Animus (PET!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(38050),	-- Ethereal Soul-Trader (PET!)
			i(49343),	-- Spectral Tiger Cub (PET!)
			i(44965),	-- Teldrassil Sproutling (PET!)
			i(85513, {	-- Thundering Serpent Hatchling (PET!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(8499),	-- Crimson Whelping (PET!)
			i(69991),	-- Tiny Sporebat (PET!)
			i(44971),	-- Tirisfal Batling (PET!)
			i(49287),	-- Tuskarr Kite (PET!)
		}),
		-- #if AFTER 6.0.2
		filter(CONSUMABLES, {
			i(128312, {	-- Elixir of the Rapid Mind
				["timeline"] = { ADDED_7_0_3, DELETED_9_0_1 },
			}),
			TempForceMisc(i(110672, {	-- Grimoire of the Four Winds
				["timeline"] = { ADDED_6_0_2, REMOVED_7_3_5 },
			})),
		}),
		-- #endif
		-- #if AFTER 6.2.5
		filter(ILLUSIONS, {
			i(138838, {	-- Illusion: Deathfrost (ILLUSION!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(118572, {	-- Illusion: Flame of Ragnaros (ILLUSION!)
				["timeline"] = { ADDED_6_2_0 },	-- https://www.wowhead.com/item=118572/illusion-flames-of-ragnaros#comments
			}),
			i(128649, {	-- Illusion: Winter's Grasp (ILLUSION!)
				["timeline"] = { ADDED_8_2_5 },
			}),
		}),
		-- #endif
		filter(MOUNTS, {
			i(143643, {	-- Abyss Worm (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(168830, {	-- Aerial Unit R-21/X
				["timeline"] = { ADDED_10_1_5 },
			}),
			i(94230, {	-- Amber Primordial Direhorn (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(68823, {	-- Armored Razzashi Raptor (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(32458),	-- Ashes of Al'ar (MOUNT!)
			i(87777, {	-- Astral Cloud Serpent (MOUNT!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(43952),	-- Azure Drake (MOUNT!)
			i(77067),	-- Blazing Drake (MOUNT!)
			i(43953),	-- Blue Drake (MOUNT!)
			i(44151),	-- Blue Proto-Drake (MOUNT!)
			i(95059, {	-- Clutch of Ji-Kun (MOUNT!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(94228, {	-- Cobalt Primordial Direhorn (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(115484, {	-- Core Hound (MOUNT!)
				["timeline"] = { ADDED_6_2_0 },
			}),
			i(63040),	-- Drake of the North Wind (MOUNT!)
			i(63041),	-- Drake of the South Wind (MOUNT!)
			i(78919, {	-- Experiment 12-B (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(137574, {	-- Felblaze Infernal (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(123890, {	-- Felsteel Annihilator (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(30480),	-- Fiery Warhorse (MOUNT!)
			i(71665),	-- Flametalon of Alysrazor (MOUNT!)
			i(211084, {	-- Golden Regal Scarab (MOUNT!)
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(166705, {	-- Glacial Tidestorm
				["timeline"] = { ADDED_10_1_5 },
			}),
			i(166518, {	-- GMOD
				["timeline"] = { ADDED_10_1_5 },
			}),
			i(43959, {	-- Grand Black War Mammoth (A) (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(44083, {	-- Grand Black War Mammoth (H) (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(44707),	-- Green Proto-Drake (MOUNT!)
			i(87771, {	-- Heavenly Onyx Cloud Serpent (MOUNT!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(94231, {	-- Jade Primordial Direhorn (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(50818),	-- Invincible (MOUNT!)
			i(116660, {	-- Ironhoof Destroyer (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(104253, {	-- Kor'kron Juggernaut (MOUNT!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(143764, {	-- Leywoven Flying Carpet (MOUNT!)
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(77069, {	-- Life-Binder's Handmaiden (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(168826, {	-- Mechagon Peacekeeper
				["timeline"] = { ADDED_10_1_5 },
			}),
			i(163042, {	-- Mighty Caravan Brutosaur (MOUNT!)
				["timeline"] = { ADDED_9_0_1 },
			}),
			i(45693),	-- Mimiron's Head (MOUNT!)
			i(159921, {	-- Mummified Raptor Skull
				["timeline"] = { ADDED_10_1_5 },
			}),
			i(174872, {	-- Ny'alotha Allseer
				["timeline"] = { ADDED_10_1_5 },
			}),
			i(172012, {	-- Obsidian Worldbreaker (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(49636),	-- Onyxian Drake (MOUNT!)
			i(44175),	-- Plagued Proto-Drake (MOUNT!)
			i(69224),	-- Pureblood Fire Hawk (MOUNT!)
			i(94229, {	-- Slate Primordial Direhorn (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(159842, {	-- Sharkbait
				["timeline"] = { ADDED_10_1_5 },
			}),
			i(32768),	-- Raven Lord (MOUNT!)
			i(23720),	-- Riding Turtle (MOUNT!)
			i(13335),	-- Rivendare's Deathcharger (MOUNT!)
			i(45802),	-- Rusted Proto-Drake (MOUNT!)
			i(152789, {	-- Shackled Ur'zul (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(116771, {	-- Solar Spirehawk (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(89783, {	-- Son of Galleon (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(93666, {	-- Spawn of Horridon (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(19872, {	-- Swift Razzashi Raptor (MOUNT!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(68824),	-- Swift Zulian Panther (MOUNT!)
			i(35513),	-- Swift White Hawkstrider (MOUNT!)
			i(19902, {	-- Swift Zulian Tiger (MOUNT!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(95057, {	-- Thundering Cobalt Cloud Serpent (MOUNT!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(104269, {	-- Thundering Onyx Cloud Serpent (MOUNT!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(90655, {	-- Thundering Ruby Cloud Serpent (MOUNT!)
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(160829, {	-- Underrot Crawg Harness
				["timeline"] = { ADDED_10_1_5 },
			}),
			i(147805, {	-- Valarjar Stormwing (MOUNT!)
				["timeline"] = { ADDED_9_0_1 },
			}),
			i(63043),	-- Vitreous Stone Drake (MOUNT!)
			i(152790, {	-- Vile Fiend (MOUNT!)
				["timeline"] = { ADDED_8_2_5 },
			}),
			i(43962),	-- White Polar Bear (MOUNT!)
			i(54068),	-- Wooly White Rhino (MOUNT!)
			i(49286),	-- X-51 Nether-Rocket X-TREME (MOUNT!)
		}),
		filter(QUEST_ITEMS, {
			i(50379),	-- Battered Hilt (Alliance)
			i(50380),	-- Battered Hilt (Horde)
			i(110678, {	-- Darkmoon Ticket Fanny Pack
				["description"] = "Contains 250-500 Darkmoon Faire Tickets",
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					currency(515),	-- Darkmoon Prize Ticket [Cataclysm Version]
				},
			}),
		}),
		filter(RECIPES, {
			i(86238),	-- Pattern: Chestguard of Nemeses (RECIPE!)
			i(86272),	-- Pattern: Fists of Lightning (RECIPE!)
			i(86380),	-- Pattern: Imperial Silk Gloves (RECIPE!)
			i(86381),	-- Pattern: Legacy of the Emperor (RECIPE!)
			i(86279),	-- Pattern: Liferuned Leather Gloves (RECIPE!)
			i(86280),	-- Pattern: Murderer's Gloves (RECIPE!)
			i(86281),	-- Pattern: Nightfire Robe (RECIPE!)
			i(86283),	-- Pattern: Raiment of Blood and Bone (RECIPE!)
			i(86284),	-- Pattern: Raven Lord's Gloves (RECIPE!)
			i(86379),	-- Pattern: Robe of Eternal Rule (RECIPE!)
			i(86297),	-- Pattern: Stormbreaker Chestguard (RECIPE!)
			i(86382),	-- Pattern: Touch of the Light (RECIPE!)
			i(87411),	-- Plans: Bloodforged Warfists (RECIPE!)
			i(87412),	-- Plans: Chestplate of Limitless Faith (RECIPE!)
			i(87409),	-- Plans: Gauntlets of Battle Command (RECIPE!)
			i(87413),	-- Plans: Gauntlets of Unbound Devotion (RECIPE!)
			i(87410),	-- Plans: Ornate Battleplate of the Master (RECIPE!)
			i(87408),	-- Plans: Unyielding Bloodplate (RECIPE!)
		}),
		filter(SHIRTS, {
			i(45037),	-- Epic Purple Shirt
			i(14617, {	-- Sawbones Shirt
				["timeline"] = { ADDED_6_0_2 },	-- https://warcraft.wiki.gg/wiki/Sawbones_Shirt
			}),
		}),
		filter(TABARDS, {
			i(38312),	-- Tabard of Brilliance
			i(23705),	-- Tabard of Flame
			i(23709),	-- Tabard of Frost
			i(38313),	-- Tabard of Fury
			i(38309),	-- Tabard of Nature
			i(38310),	-- Tabard of the Arcane
			i(38314),	-- Tabard of the Defender
			i(38311),	-- Tabard of the Void
		}),
		n(TIER_THREE_SETS, {
			ach(11744, {	-- Drop Dead, Gorgeous
				["timeline"] = { ADDED_7_2_0 },
			}),
			gs(355, {	-- Vestments of Faith
				i(22514),	-- Circlet of Faith
				i(22515),	-- Shoulderpads of Faith
				i(22512),	-- Robe of Faith
				i(22519),	-- Bindings of Faith
				i(22517),	-- Gloves of Faith
				i(22518),	-- Belt of Faith
				i(22513),	-- Leggings of Faith
				i(22516),	-- Sandals of Faith
			}),
			gs(907, {	-- Frostfire Regalia
				i(22498),	-- Frostfire Circlet
				i(22499),	-- Frostfire Shoulderpads
				i(22496),	-- Frostfire Robe
				i(22503),	-- Frostfire Bindings
				i(22501),	-- Frostfire Gloves
				i(22502),	-- Frostfire Belt
				i(22497),	-- Frostfire Leggings
				i(22500),	-- Frostfire Sandals
			}),
			gs(865, {	-- Plagueheart Raiment
				i(22506),	-- Plagueheart Circlet
				i(22507),	-- Plagueheart Shoulderpads
				i(22504),	-- Plagueheart Robe
				i(22511),	-- Plagueheart Bindings
				i(22509),	-- Plagueheart Gloves
				i(22510),	-- Plagueheart Belt
				i(22505),	-- Plagueheart Leggings
				i(22508),	-- Plagueheart Sandals
			}),
			gs(924, {	-- Dreamwalker Raiment
				i(22490),	-- Dreamwalker Headpiece
				i(22491),	-- Dreamwalker Spaulders
				i(22488),	-- Dreamwalker Tunic
				i(22495),	-- Dreamwalker Wristguards
				i(22493),	-- Dreamwalker Handguards
				i(22494),	-- Dreamwalker Girdle
				i(22489),	-- Dreamwalker Legguards
				i(22492),	-- Dreamwalker Boots
			}),
			gs(891, {	-- Bonescythe Armor
				i(22478),	-- Bonescythe Helmet
				i(22479),	-- Bonescythe Pauldrons
				i(22476),	-- Bonescythe Breastplate
				i(22483),	-- Bonescythe Bracers
				i(22481),	-- Bonescythe Gauntlets
				i(22482),	-- Bonescythe Waistguard
				i(22477),	-- Bonescythe Legplates
				i(22480),	-- Bonescythe Sabatons
			}),
			gs(914, {	-- Cryptstalker Armor
				i(22438),	-- Cryptstalker Headpiece
				i(22439),	-- Cryptstalker Spaulders
				i(22436),	-- Cryptstalker Tunic
				i(22443),	-- Cryptstalker Wristguards
				i(22441),	-- Cryptstalker Handguards
				i(22442),	-- Cryptstalker Girdle
				i(22437),	-- Cryptstalker Legguards
				i(22440),	-- Cryptstalker Boots
			}),
			gs(873, {	-- The Earthshatter
				i(22466),	-- Earthshatter Headpiece
				i(22467),	-- Earthshatter Spaulders
				i(22464),	-- Earthshatter Tunic
				i(22471),	-- Earthshatter Wristguards
				i(22469),	-- Earthshatter Handguards
				i(22470),	-- Earthshatter Girdle
				i(22465),	-- Earthshatter Legguards
				i(22468),	-- Earthshatter Boots
			}),
			gs(899, {	-- Redemption  Armor
				i(22428),	-- Redemption Headpiece
				i(22429),	-- Redemption Spaulders
				i(22425),	-- Redemption Tunic
				i(22424),	-- Redemption Wristguards
				i(22426),	-- Redemption Handguards
				i(22431),	-- Redemption Girdle
				i(22427),	-- Redemption Legguards
				i(22430),	-- Redemption Boots
			}),
			gs(850, {	-- Dreadnaught's Battlegear
				i(22418),	-- Dreadnaught Helmet
				i(22419),	-- Dreadnaught Pauldrons
				i(22416),	-- Dreadnaught Breastplate
				i(22423),	-- Dreadnaught Bracers
				i(22421),	-- Dreadnaught Gauntlets
				i(22422),	-- Dreadnaught Waistguard
				i(22417),	-- Dreadnaught Legplates
				i(22420),	-- Dreadnaught Sabatons
			}),
		}),
		filter(TOYS, {
			i(33223),	-- Fishing Chair (TOY!)
			i(45063),	-- Foam Sword Rack (TOY!)
			i(33219),	-- Goblin Gumbo Kettle (TOY!)
			i(35227),	-- Goblin Weather Machine - Prototype 01-B (TOY!)
			i(32542),	-- Imp in a Ball (TOY!)
			i(46780),	-- Ogre Pinata (TOY!)
			i(34499),	-- Paper Flying Machine Kit (TOY!)
			i(32566),	-- Picnic Basket (TOY!)
			i(38578),	-- The Flag of Ownership (TOY!)
		}),
		n(WEAPONS, {
			i(39769),	-- Arcanite Ripper
			iensemble(211300, {	-- Arsenal: Whispering Temple Blades
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(90176),	-- Flintlocke's Blasthammer
			i(211097, {	-- Gilded Crown Splitter
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(211099, {	-- Gilded Scarab Bulwark
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(211096, {	-- Gold-Plated Witchhunter's Carbine
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(211294, {	-- Marauder King's Body Carver
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(211145, {	-- Royal Witch Doctor's Trophies
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(211159, {	-- Royal Witch Doctor's Guard
				["timeline"] = { ADDED_11_0_5 },
			}),
			i(44924),	-- Sun-Lute of the Phoenix King
		}),
		applyclassicphase(MOP_PHASE_LANDFALL, i(93194, {	-- Blood-Soaked Invitation (A)
			["races"] = ALLIANCE_ONLY,
			["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
		})),
		applyclassicphase(MOP_PHASE_LANDFALL, i(93227, {	-- Blood-Soaked Invitation (H)
			["races"] = HORDE_ONLY,
			["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
		})),
		i(169430, {	-- Unclaimed Black Market Container [8.2.5+]
			["timeline"] = { ADDED_8_2_5 },
			["skipFill"] = true,
			["sym"] = {
				{"select", "headerID", BLACK_MARKET_AUCTION_HOUSE },		-- Select BMAH header
				{"pop"},							-- Pop the header
				{"exclude", "headerID", VENDORS },	-- Not the Vendor Header
				{"not", "itemID", 169430, 141995, 127995, 110592, 102137, 97565 },	-- Unclaimed Black Market Containers
			},
		}),
		i(141995, {	-- Unclaimed Black Market Container [7.0.3+]
			["timeline"] = { ADDED_7_0_3, REMOVED_8_2_5 },
			-- #if BEFORE 8.2.5
			["skipFill"] = true,
			["sym"] = {
				{"select", "headerID", BLACK_MARKET_AUCTION_HOUSE },		-- Select BMAH header
				{"pop"},							-- Pop the header
				{"exclude", "headerID", VENDORS },	-- Not the Vendor Header
				{"not", "itemID", 141995, 127995, 110592, 102137, 97565 },	-- Unclaimed Black Market Containers
			},
			-- #endif
		}),
		i(127995, {	-- Unclaimed Black Market Container [6.2.0+]
			["timeline"] = { ADDED_6_2_0, REMOVED_7_0_3 },
			-- #if BEFORE 7.0.3
			["skipFill"] = true,
			["sym"] = {
				{"select", "headerID", BLACK_MARKET_AUCTION_HOUSE },		-- Select BMAH header
				{"pop"},							-- Pop the header
				{"exclude", "headerID", VENDORS },	-- Not the Vendor Header
				{"not", "itemID", 127995, 110592, 102137, 97565 },	-- Unclaimed Black Market Containers
			},
			-- #endif
		}),
		i(110592, {	-- Unclaimed Black Market Container [6.0.2+]
			["timeline"] = { ADDED_6_0_2, REMOVED_6_2_0 },
			-- #if BEFORE 6.2.0
			["skipFill"] = true,
			["sym"] = {
				{"select", "headerID", BLACK_MARKET_AUCTION_HOUSE },		-- Select BMAH header
				{"pop"},							-- Pop the header
				{"exclude", "headerID", VENDORS },	-- Not the Vendor Header
				{"not", "itemID", 110592, 102137, 97565 },	-- Unclaimed Black Market Containers
			},
			-- #endif
		}),
		i(102137, {	-- Unclaimed Black Market Container [5.4.0+]
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
			-- #if BEFORE 6.0.2
			["skipFill"] = true,
			["sym"] = {
				{"select", "headerID", BLACK_MARKET_AUCTION_HOUSE },		-- Select BMAH header
				{"pop"},							-- Pop the header
				{"exclude", "headerID", VENDORS },	-- Not the Vendor Header
				{"not", "itemID", 102137, 97565 },	-- Unclaimed Black Market Containers
			},
			-- #endif
		}),
		i(97565, {	-- Unclaimed Black Market Container [5.3.0+]
			["timeline"] = { ADDED_5_3_0, REMOVED_5_4_0 },
			-- #if BEFORE 5.4.0
			["skipFill"] = true,
			["sym"] = {
				{"select", "headerID", BLACK_MARKET_AUCTION_HOUSE },		-- Select BMAH header
				{"pop"},							-- Pop the header
				{"exclude", "headerID", VENDORS },	-- Not the Vendor Header
				{"not", "itemID", 97565 },	-- Unclaimed Black Market Containers
			},
			-- #endif
		}),
		n(VENDORS, bubbleDown({
			["sym"] = {
				{"select", "headerID", BLACK_MARKET_AUCTION_HOUSE },		-- Select BMAH header
				{"pop"},							-- Pop the header
				{"exclude", "headerID", VENDORS },	-- Not the Vendor Header
			},
		},{
			-- #if BEFORE WOD
			n(62943, {	-- Madam Goya [Veiled Stair]
				["coord"] = { 63.8, 75.8, THE_VEILED_STAIR },
			}),
			-- #elseif BEFORE LEGION
			n(83867, {	-- Madam Goya [Nagrand]
				["coord"] = { 53.8, 15.0, DRAENOR_NAGRAND },
			}),
			-- #elseif BEFORE BFA
			n(103791, {	-- Madam Gosu [Rogue Class Hall]
				["coord"] = { 57.91, 46.28, 626 },
			}),
			n(100986, {	-- Madam Goya [Underbelly]
				["coord"] = { 71.37, 17.93, LEGION_THE_UNDERBELLY },
			}),
			-- #elseif BEFORE SL
			n(142062, {	-- Madam Gosu [Boralus - Alliance]
				["coord"] = { 56.71, 46.32, BORALUS },
			}),
			n(135709, {	-- Madam Goya [Dazar'alor - Horde]
				["coord"] = { 63.54, 62.68, ZULDAZAR },
			}),
			-- #elseif BEFORE DF
			n(160081, {	-- Ta'xera <Matron of the Market>
				["coord"] = { 52.40, 83.80, REVENDRETH },
			}),
			-- #elseif BEFORE TWW
			n(189676, {	-- Madam Goya [Valdrakken]
				["coord"] = { 20.2, 49.1, VALDRAKKEN },
			}),
			-- #elseif BEFORE MID
			n(219055, {	-- Madam Goya [Dornogal]
				["coord"] = { 64.8, 52.7, DORNOGAL },
			}),
			n(100986, {	-- Madam Goya [Underbelly]
				["coord"] = { 71.37, 17.93, LEGION_THE_UNDERBELLY },
			}),
			-- #endif
			-- #if AFTER WOD
			n(94829, {	-- Zhang Yeoh [Garrison]
				["aqd"] = {
					["coord"] = { 37.2, 35.8, LUNARFALL },
				},
				["hqd"] = {
					["coord"] = { 44.96, 50.07, FROSTWALL },
				},
			}),
			-- #endif
		})),
	},
})));
