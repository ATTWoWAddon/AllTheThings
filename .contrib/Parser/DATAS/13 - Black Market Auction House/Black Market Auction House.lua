-----------------------------------------------------
--     B L A C K   M A R K E T   M O D U L E       --
-----------------------------------------------------
root(ROOTS.BlackMarket, {
	n(VENDORS, bubbleDown({
			["sym"] = {
				{"select", "headerID", BLACK_MARKET_AUCTION_HOUSE },		-- Select BMAH header
				{"pop"},							-- Pop the header
				{"exclude", "headerID", VENDORS },	-- Not the Vendor Header
			},
		},{
		-- #IF BEFORE BFA
		n(103791, {	-- Madam Gosu [Rogue Class Hall]
			["coord"] = { 57.91, 46.28, 626 },
		}),
		n(100986, {	-- Madam Goya [Underbelly]
			["coord"] = { 71.37, 17.93, LEGION_THE_UNDERBELLY },
		}),
		-- #ENDIF
		-- #IF BEFORE SHADOWLANDS
		n(142062, {	-- Madam Gosu [Boralus - Alliance]
			["coord"] = { 56.71, 46.32, BORALUS },
		}),
		n(135709, {	-- Madam Goya [Dazar'alor - Horde]
			["coord"] = { 63.54, 62.68, ZULDAZAR },
		}),
		-- #ENDIF
		-- #IF BEFORE DF
		n(160081, {	-- Ta'xera <Matron of the Market>
			["coord"] = { 52.40, 83.80, REVENDRETH },
		}),
		-- #ENDIF
		-- #IF BEFORE TWW
		n(189676, {	-- Madam Goya
			["coord"] = { 20.2, 49.1, VALDRAKKEN },
		}),
		-- #ENDIF
		-- #IF AFTER TWW
		n(219055, {	-- Madam Goya
			["coord"] = { 64.8, 52.7, DORNOGAL },
		}),
		-- #ENDIF
		-- n(94829, {	-- Zhang Yeoh [Garrison]
		-- 	["coords"] = {
		-- 		{ 44.96, 50.07, FROSTWALL },
		-- 		{ 37.2, 35.8, LUNARFALL },
		-- 	},
		-- }),
	})),
});
root(ROOTS.BlackMarket, bubbleDown({ ["u"] = BLACK_MARKET, },{
	n(ACHIEVEMENTS, {
		ach(881, {	-- Swift Razzashi Raptor
			["provider"] = { "i", 19872 },	-- Swift Razzashi Raptor
		}),
		ach(880, {	-- Swift Zulian Tiger
			["provider"] = { "i", 19902 },	-- Swift Zulian Tiger
		}),
	}),
	filter(BAGS, {
		i(183634),	-- Papa's Mint Condition Bag (9.1)
	}),
	filter(ILLUSIONS, {
		i(138838),	-- Illusion: Deathfrost (ILLUSION!)
		i(118572),	-- Illusion: Flame of Ragnaros (ILLUSION!)
		i(128649),	-- Illusion: Winter's Grasp (ILLUSION!)
	}),
	filter(MOUNTS, {
		i(143643),	-- Abyss Worm (MOUNT!)
		i(168830, {	-- Aerial Unit R-21/X
			["timeline"] = { ADDED_10_1_5 },
		}),
		i(68823),	-- Armored Razzashi Raptor (MOUNT!)
		i(32458),	-- Ashes of Al'ar (MOUNT!)
		i(95059),	-- Clutch of Ji-Kun (MOUNT!)
		i(115484),	-- Core Hound (MOUNT!)
		i(78919),	-- Experiment 12-B (MOUNT!)
		i(123890),	-- Felsteel Annihilator (MOUNT!)
		i(30480),	-- Fiery Warhorse (MOUNT!)
		i(71665),	-- Flametalon of Alysrazor (MOUNT!)
		i(50818),	-- Invincible (MOUNT!)
		i(116660),	-- Ironhoof Destroyer (MOUNT!)
		i(104253),	-- Kor'kron Juggernaut (MOUNT!)
		i(143764),	-- Leywoven Flying Carpet (MOUNT!)
		i(77069),	-- Life-Binder's Handmaiden (MOUNT!)
		i(137574),	-- Felblaze Infernal (MOUNT!)
		i(45693),	-- Mimiron's Head (MOUNT!)
		i(172012),	-- Obsidian Worldbreaker (MOUNT!)
		i(94230),	-- Amber Primordial Direhorn (MOUNT!)
		i(87777),	-- Astral Cloud Serpent (MOUNT!)
		i(43952),	-- Azure Drake (MOUNT!)
		i(77067),	-- Blazing Drake (MOUNT!)
		i(43953),	-- Blue Drake (MOUNT!)
		i(44151),	-- Blue Proto-Drake (MOUNT!)
		i(94228),	-- Cobalt Primordial Direhorn (MOUNT!)
		i(63040),	-- Drake of the North Wind (MOUNT!)
		i(63041),	-- Drake of the South Wind (MOUNT!)
		i(211084, {	-- Golden Regal Scarab (MOUNT!)
			["timeline"] = { ADDED_11_0_5 },
		}),
		i(166705, {	-- Glacial Tidestorm
			["timeline"] = { ADDED_10_1_5 },
		}),
		i(166518, {	-- GMOD
			["timeline"] = { ADDED_10_1_5 },
		}),
		i(43959),	-- Grand Black War Mammoth (A) (MOUNT!)
		i(44083),	-- Grand Black War Mammoth (H) (MOUNT!)
		i(44707),	-- Green Proto-Drake (MOUNT!)
		i(87771),	-- Heavenly Onyx Cloud Serpent (MOUNT!)
		i(94231),	-- Jade Primordial Direhorn (MOUNT!)
		i(168826, {	-- Mechagon Peacekeeper
			["timeline"] = { ADDED_10_1_5 },
		}),
		i(163042),	-- Mighty Caravan Brutosaur (MOUNT!)
		i(159921, {	-- Mummified Raptor Skull
			["timeline"] = { ADDED_10_1_5 },
		}),
		i(174872, {	-- Ny'alotha Allseer
			["timeline"] = { ADDED_10_1_5 },
		}),
		i(49636),	-- Onyxian Drake (MOUNT!)
		i(44175),	-- Plagued Proto-Drake (MOUNT!)
		i(94229),	-- Slate Primordial Direhorn (MOUNT!)
		i(159842, {	-- Sharkbait
			["timeline"] = { ADDED_10_1_5 },
		}),
		i(32768),	-- Raven Lord (MOUNT!)
		i(45802),	-- Rusted Proto-Drake (MOUNT!)
		i(95057),	-- Thundering Cobalt Cloud Serpent (MOUNT!)
		i(104269),	-- Thundering Onyx Cloud Serpent (MOUNT!)
		i(90655),	-- Thundering Ruby Cloud Serpent (MOUNT!)
		i(63043),	-- Vitreous Stone Drake (MOUNT!)
		i(43962),	-- White Polar Bear (MOUNT!)
		i(23720),	-- Riding Turtle (MOUNT!)
		i(13335),	-- Rivendare's Deathcharger (MOUNT!)
		i(152789),	-- Shackled Ur'zul (MOUNT!)
		i(116771),	-- Solar Spirehawk (MOUNT!)
		i(93666),	-- Spawn of Horridon (MOUNT!)
		i(69224),	-- Pureblood Fire Hawk (MOUNT!)
		i(89783),	-- Son of Galleon (MOUNT!)
		i(19872),	-- Swift Razzashi Raptor (MOUNT!)
		i(68824),	-- Swift Zulian Panther (MOUNT!)
		i(35513),	-- Swift White Hawkstrider (MOUNT!)
		i(19902),	-- Swift Zulian Tiger (MOUNT!)
		i(54068),	-- Wooly White Rhino (MOUNT!)
		i(160829, {	-- Underrot Crawg Harness
			["timeline"] = { ADDED_10_1_5 },
		}),
		i(147805),	-- Valarjar Stormwing (MOUNT!)
		i(152790),	-- Vile Fiend (MOUNT!)
		i(49286),	-- X-51 Nether-Rocket X-TREME (MOUNT!)
	}),
	header(HEADERS.NPC, 72057, { -- Ordos
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
	}),
	filter(BATTLE_PETS, {
		i(44984),	-- Ammen Vale Lashling (PET!)
		i(34535),	-- Azure Whelpling (PET!)
		i(32588),	-- Bananas (PET!)
		i(104158),	-- Blackfuse Bombling (PET!)
		i(29960),	-- Firefly (PET!)
		i(8491),	-- Black Tabby Cat (PET!)
		i(8485),	-- Bombay Cat (PET!)
		i(8490),	-- Siamese Cat (PET!)
		i(97960),	-- Viscous Horror (PET!)
		i(10822),	-- Dark Whelpling (PET!)
		i(48112),	-- Darting Hatchling (PET!)
		i(48114),	-- Deviate Hatchling (PET!)
		i(20769),	-- Disgusting Oozeling (PET!)
		i(34493),	-- Dragon Kite (PET!)
		i(104162),	-- Droplet of Y'Shaarj (PET!)
		i(44970),	-- Dun Morogh Cub (PET!)
		i(44973),	-- Durotar Scorpion (PET!)
		i(44974),	-- Elwynn Lamb (PET!)
		i(8498),	-- Emerald Whelpling (PET!)
		i(44982),	-- Enchanted Broom (PET!)
		i(43698),	-- Giant Sewer Rat (PET!)
		i(104163),	-- Gooey Sha-ling (PET!)
		i(48116),	-- Gundrak Hatchling (PET!)
		i(23713),	-- Hippogryph Hatchling (PET!)
		i(94835),	-- Ji-Kun Hatchling (PET!)
		i(104165),	-- Kovok (PET!)
		i(48118),	-- Leaping Hatchling (PET!)
		i(172016),	-- Lil' Nefarian (PET!)
		i(94125),	-- Living Sandling (PET!)
		i(45002),	-- Mechanopeep (PET!)
		i(44980),	-- Mulgore Hatchling (PET!)
		i(48120),	-- Obsidian Hatchling (PET!)
		i(8492),	-- Green Wing Macaw (PET!)
		i(8494),	-- Hyacinth Macaw (PET!)
		i(35504),	-- Phoenix Hatchling (PET!)
		i(44721),	-- Proto-Drake Whelp (PET!)
		i(183621),	-- Putrid Geist (PET!)
		i(94574),	-- Pygmy Direhorn (PET!)
		i(97959),	-- Living Fluid (PET!)
		i(48124),	-- Razormaw Hatchling (PET!)
		i(48126),	-- Razzashi Hatchling (PET!)
		i(34492),	-- Rocket Chicken (PET!)
		i(45606),	-- Sen'jin Fetish (PET!)
		i(69992, {	-- Shimmering Wyrmling (PET!)
			["description"] = "Can also be bought from the Wrath of the Lich King Argent Tournament Vendor.\n\nBlizzard made 3 different Items which all learn the same pet.",
		}),
		i(94152),	-- Son of Animus (PET!)
		i(38050),	-- Ethereal Soul-Trader (PET!)
		i(49343),	-- Spectral Tiger Cub (PET!)
		i(44965),	-- Teldrassil Sproutling (PET!)
		i(85513),	-- Thundering Serpent Hatchling (PET!)
		i(8499),	-- Crimson Whelping (PET!)
		i(69991),	-- Tiny Sporebat (PET!)
		i(44971),	-- Tirisfal Batling (PET!)
		i(49287),	-- Tuskarr Kite (PET!)
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
		ach(11744),	-- Drop Dead, Gorgeous
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
	i(50379),	-- Battered Hilt (Alliance)
	i(50380),	-- Battered Hilt (Horde)
	i(110678, {	-- Darkmoon Ticket Fanny Pack
		["description"] = "Contains 250-500 Darkmoon Faire Tickets",
	}),
	un(REMOVED_FROM_GAME, i(128312)),	-- Elixir of the Rapid Mind
	i(45037),	-- Epic Purple Shirt
	TempForceMisc(i(110672, {	-- Grimoire of the Four Winds
		["u"] = REMOVED_FROM_GAME,
	})),
	-- Heart of Fear Heroic Trash Drops. Only where available from the BMAH while HoF was current Content.
	un(REMOVED_FROM_GAME, i(86993)),	-- Darting Damselfly Cuffs
	un(REMOVED_FROM_GAME, i(86994)),	-- Gleaming Moth Cuffs
	un(REMOVED_FROM_GAME, i(86999)),	-- Inlaid Cricket Bracers
	un(REMOVED_FROM_GAME, i(86997)),	-- Jagged Hornet Bracers
	un(REMOVED_FROM_GAME, i(86998)),	-- Luminescent Firefly Wristguards
	un(REMOVED_FROM_GAME, i(86996)),	-- Pearlescent Butterfly Wristbands
	un(REMOVED_FROM_GAME, i(87000)),	-- Plated Locust Bracers
	un(REMOVED_FROM_GAME, i(87001)),	-- Serrated Wasp Bracers
	un(REMOVED_FROM_GAME, i(86992)),	-- Shining Cicada Bracers
	un(REMOVED_FROM_GAME, i(86995)),	-- Smooth Beetle Wristbands
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
	i(211259, {	-- Regal Gryphon Rider's Headgear
		["timeline"] = { ADDED_11_0_5 },
	}),
	i(142000),	-- Rhinestone Sunglasses
	i(14617),	-- Sawbones Shirt
	i(112935, {	-- Tusks of Mannoroth
		["ItemAppearanceModifierID"] = 1,
	}),
	i(141006, {	-- The First Satyr's Spaulders
		["ItemAppearanceModifierID"] = 1,
	}),
	i(169430, {	--  Unclaimed Black Market Container
		["sym"] = {
			{"select", "headerID", BLACK_MARKET_AUCTION_HOUSE },		-- Select BMAH header
			{"pop"},							-- Pop the header
			{"exclude", "headerID", VENDORS },	-- Not the Vendor Header
			{"not", "itemID", 169430 },			-- Remove itself from the final list
			{"not", "itemID", 141995 },			-- Remove old version from the final list
		},
	}),
	i(211295, {	-- Wrathful Crusader's Helm
		["timeline"] = { ADDED_11_0_5 },
	}),
	un(REMOVED_FROM_GAME, i(141995)),	-- Unclaimed Black Market Container Pre 8.2.5 (they updated and added new items)
}));
