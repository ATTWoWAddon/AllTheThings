---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
root(ROOTS.Craftables, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	i(173381),	-- Crafter's Mark I
	i(173382),	-- Crafter's Mark II
	i(173383, {["timeline"] = {ADDED_9_1_0}}),	-- Crafter's Mark III
	i(187741, {["timeline"] = {ADDED_9_2_0}}),	-- Crafter's Mark IV
	i(173384, {["timeline"] = {ADDED_9_1_0}}),	-- Crafter's Mark of the Chained Isle
	i(187742, {["timeline"] = {ADDED_9_2_0}}),	-- Crafter's Mark of the First Ones
	i(183942),	-- Novice Crafter's Mark
	i(185960, {["timeline"] = {ADDED_9_1_0}}),	-- Vestige of Origins
	i(187784, {["timeline"] = {ADDED_9_2_0}}),	-- Vestige of the Eternal
	prof(ALCHEMY, {
		filter(CONSUMABLES, {
			i(187802, {["timeline"] = {ADDED_9_2_0}}),	-- Cosmic Healing Potion
			i(171286),	-- Embalmer's Oil
			i(171284, {	-- Eternal Cauldron
				i(171280),	-- Eternal Flask
			}),
			i(171351),	-- Potion of Deathly Fixation
			i(171350),	-- Potion of Divine Awakening
			i(171352),	-- Potion of Empowered Exorcisms
			i(171271),	-- Potion of Hardened Shadows
			i(171349),	-- Potion of Phantom Fire
			i(176811),	-- Potion of Sacrificial Anima
			i(171264),	-- Potion of Shaded Sight
			i(171263),	-- Potion of Soul Purity
			i(171370),	-- Potion of Specter Swiftness
			i(171270),	-- Potion of Spectral Agility
			i(171273),	-- Potion of Spectral Intellect
			i(171274),	-- Potion of Spectral Stamina
			i(171275),	-- Potion of Spectral Strength
			i(171272),	-- Potion of Spiritual Clarity
			i(171266),	-- Potion of the Hidden Spirit
			i(184090),	-- Potion of the Psychopomp's Speed
			i(183823),	-- Potion of Unhindered Passing
			i(171285),	-- Shadowcore Oil
			i(171276),	-- Spectral Flask of Power
			i(171278),	-- Spectral Flask of Stamina
			i(171301),	-- Spiritual Anti-Venom
			i(171267),	-- Spiritual Healing Potion
			i(171268),	-- Spiritual Mana Potion
			i(171269),	-- Spiritual Rejuvenation Potion
		}),
		filter(COSMETIC, {
			i(180751),	-- Red Noggin Candle
		}),
		filter(MISC, sharedDataSelf({ ["timeline"] = { ADDED_9_1_0 } }, {
			i(186697),	-- Blossom Burst
			i(186701),	-- Glory Burst
			i(187827, {["timeline"] = {ADDED_9_2_0}}),	-- Infusion: Corpse Purification
			i(186700),	-- Marrow Burst
			i(186694),	-- Shaded Bag of Ore
			i(187850, {["timeline"] = {ADDED_9_2_0}}),	-- Sustaining Armor Polish
			i(186698),	-- Torch Burst
			i(186699),	-- Widow Burst
		})),
		filter(REAGENTS, {
			i(171287),	-- Ground Death Blossom
			i(171290),	-- Ground Marrowroot
			i(171292),	-- Ground Nightshade
			i(171291),	-- Ground Rising Glory
			i(171288),	-- Ground Vigil's Torch
			i(171289),	-- Ground Widowbloom
			i(180457),	-- Shadestone
			i(171428),	-- Shadowghast Ingot
		}),
		filter(TRINKET_F, {
			i(171323),	-- Spiritual Alchemy Stone
		}),
	}),
	prof(BLACKSMITHING, {
		n(DISCOVERY, {
			spell(307705, {	-- Shadowghast Armguards [Rank 1]
				r(332006),	-- Shadowghast Armguards [Rank 2] (RECIPE!)
				r(332041),	-- Shadowghast Armguards [Rank 3] (RECIPE!)
				r(338976),	-- Shadowghast Armguards [Rank 4] (RECIPE!)
			}),
			spell(307712, {	-- Shadowghast Breastplate [Rank 1]
				r(332013),	-- Shadowghast Breastplate [Rank 2] (RECIPE!)
				r(332048),	-- Shadowghast Breastplate [Rank 3] (RECIPE!)
				r(338968),	-- Shadowghast Breastplate [Rank 4] (RECIPE!)
			}),
			spell(307710, {	-- Shadowghast Gauntlets [Rank 1]
				r(332011),	-- Shadowghast Gauntlets [Rank 2] (RECIPE!)
				r(332046),	-- Shadowghast Gauntlets [Rank 3] (RECIPE!)
				r(338970),	-- Shadowghast Gauntlets [Rank 4] (RECIPE!)
			}),
			spell(307708, {	-- Shadowghast Greaves [Rank 1]
				r(332009),	-- Shadowghast Greaves [Rank 2] (RECIPE!)
				r(332044),	-- Shadowghast Greaves [Rank 3] (RECIPE!)
				r(338972),	-- Shadowghast Greaves [Rank 4] (RECIPE!)
			}),
			spell(307709, {	-- Shadowghast Helm [Rank 1]
				r(332010),	-- Shadowghast Helm [Rank 2] (RECIPE!)
				r(332045),	-- Shadowghast Helm [Rank 3] (RECIPE!)
				r(338971),	-- Shadowghast Helm [Rank 4] (RECIPE!)
			}),
			spell(307707, {	-- Shadowghast Pauldrons [Rank 1]
				r(332008),	-- Shadowghast Pauldrons [Rank 2] (RECIPE!)
				r(332043),	-- Shadowghast Pauldrons [Rank 3] (RECIPE!)
				r(338974),	-- Shadowghast Pauldrons [Rank 4] (RECIPE!)
			}),
			spell(307711, {	-- Shadowghast Sabatons [Rank 1]
				r(332012),	-- Shadowghast Sabatons [Rank 2] (RECIPE!)
				r(332047),	-- Shadowghast Sabatons [Rank 3] (RECIPE!)
				r(338969),	-- Shadowghast Sabatons [Rank 4] (RECIPE!)
			}),
			spell(307706, {	-- Shadowghast Waistguard [Rank 1]
				r(332007),	-- Shadowghast Waistguard [Rank 2] (RECIPE!)
				r(332042),	-- Shadowghast Waistguard [Rank 3] (RECIPE!)
				r(338975),	-- Shadowghast Waistguard [Rank 4] (RECIPE!)
			}),
		}),
		n(ARMOR, {
			i(171381),	-- Ceremonious Armguards
			i(171374),	-- Ceremonious Breastplate
			i(171376),	-- Ceremonious Gauntlets
			i(171378),	-- Ceremonious Greaves
			i(171377),	-- Ceremonious Helm
			i(171379),	-- Ceremonious Pauldrons
			i(171375),	-- Ceremonious Sabatons
			i(171380),	-- Ceremonious Waistguard
			i(171419),	-- Shadowghast Armguards
			i(171412),	-- Shadowghast Breastplate
			i(171414),	-- Shadowghast Gauntlets
			i(171416),	-- Shadowghast Greaves
			i(171415),	-- Shadowghast Helm
			i(171417),	-- Shadowghast Pauldrons
			i(171413),	-- Shadowghast Sabatons
			i(171418),	-- Shadowghast Waistguard
			i(171449),	-- Shadowsteel Armguards
			i(171442),	-- Shadowsteel Breastplate
			i(171444),	-- Shadowsteel Gauntlets
			i(171446),	-- Shadowsteel Greaves
			i(171445),	-- Shadowsteel Helm
			i(171447),	-- Shadowsteel Pauldrons
			i(171443),	-- Shadowsteel Sabatons
			i(171448),	-- Shadowsteel Waistguard
		}),
		filter(MISC, {
			i(171441),	-- Laestrite Skeleton Key
			i(171436),	-- Porous Sharpening Stone
			i(171438),	-- Porous Weightstone
			i(171437),	-- Shaded Sharpening Stone
			i(171439),	-- Shaded Weightstone
		}),
		filter(REAGENTS, {
			i(171428),	-- Shadowghast Ingot
		}),
		n(WEAPONS, {
			i(171388),	-- Ceremonious Axe
			i(171390),	-- Ceremonious Blade
			i(171383),	-- Ceremonious Claymore
			i(171387),	-- Ceremonious Mace
			i(171382),	-- Ceremonious Rapier
			i(171389),	-- Ceremonious Reaper
			i(171385),	-- Ceremonious Shanker
			i(171391),	-- Ceremonious Shield
			i(171384),	-- Ceremonious Smasher
			i(171386),	-- Ceremonious Spear
			i(171392),	-- Ceremonious Warglaive
		}),
	}),
	prof(COOKING, {
		i(172069),	-- Banana Beef Pudding
		i(172046),	-- Biscuits and Caviar
		i(186725, {["timeline"] = {ADDED_9_1_0}}),	-- Bonemeal Bread
		i(172040),	-- Butterscotch Marinated Ribs
		i(172047),	-- Candied Amberjack Cakes
		i(172044),	-- Cinnamon Bonefish Stew
		i(187648, {["timeline"] = {ADDED_9_2_0}}),	-- Empty Kettle of Stone Soup
		i(172043),	-- Feast of Gluttonous Hedonism
		i(172063),	-- Fried Bonefish
		i(172049),	-- Iridescent Ravioli with Apple Sauce
		i(172048),	-- Meaty Apple Dumplings
		i(172068),	-- Pickled Meat Smoothie
		i(186726, {["timeline"] = {ADDED_9_1_0}}),	-- Porous Rock Candy
		i(172061),	-- Seraph Tenders
		i(172062),	-- Smothered Shank
		i(172041),	-- Spinefin Souffle and Fries
		i(172051),	-- Steak a la Mode
		i(172042),	-- Surprisingly Palatable Feast
		i(172050),	-- Sweet Silvergill Sausages
		i(172045),	-- Tenebrous Crown Roast Aspic
		i(186704, {["timeline"] = {ADDED_9_1_0}}),	-- Twilight Tea
	}),
	prof(ENCHANTING, {
		spell(13262, {	-- Disenchant
			i(172232),	-- Eternal Crystal
			i(172231),	-- Sacred Shard
			i(172230),	-- Soul Dust
		}),
		n(ARMOR_ENCHANTMENTS, {
			i(177715),	-- Enchant Chest - Eternal Bounds
			i(172418),	-- Enchant Chest - Eternal Bulwark
			i(183738),	-- Enchant Chest - Eternal Insight
			i(177659),	-- Enchant Chest - Eternal Skirmish
			i(177962),	-- Enchant Chest - Eternal Stats
			i(177716),	-- Enchant Chest - Sacred Stats
			i(172411),	-- Enchant Cloak - Fortified Avoidance
			i(172412),	-- Enchant Cloak - Fortified Leech
			i(172410),	-- Enchant Cloak - Fortified Speed
			i(177660),	-- Enchant Cloak - Soul Vitality
			i(172415),	-- Enchant Bracers - Eternal Intellect
			i(172414),	-- Enchant Bracers - Illuminated Soul
			i(172416),	-- Enchant Bracers - Shaded Hearthing
			i(172413),	-- Enchant Boots - Agile Soulwalker
			i(172419),	-- Enchant Boots - Eternal Agility
			i(177661),	-- Enchant Boots - Soul Treads
			i(172408),	-- Enchant Gloves - Eternal Strength
			i(172406),	-- Enchant Gloves - Shadowlands Gathering
			i(172407),	-- Enchant Gloves - Strength of Soul
			i(172357),	-- Enchant Ring - Bargain of Critical Strike
			i(172358),	-- Enchant Ring - Bargain of Haste
			i(172359),	-- Enchant Ring - Bargain of Mastery
			i(172360),	-- Enchant Ring - Bargain of Versatility
			i(172361),	-- Enchant Ring - Tenet of Critical Strike
			i(172362),	-- Enchant Ring - Tenet of Haste
			i(172363),	-- Enchant Ring - Tenet of Mastery
			i(172364),	-- Enchant Ring - Tenet of Versatility
		}),
		filter(MISC, sharedDataSelf({ ["timeline"] = { ADDED_9_2_0 } }, {
			i(187825),	-- Cosmic Protoweave
			i(187823),	-- Magically Regulated Automa Core
		})),
		filter(REAGENTS, {
			i(172437),	-- Enchanted Elethium Bar
			i(172438),	-- Enchanted Heavy Callous Hide
			i(172439),	-- Enchanted Lightless Silk
		}),
		filter(TOYS, sharedDataSelf({ ["timeline"] = { ADDED_9_1_0 } }, {
			i(186973),	-- Anima-ted Leash (TOY!)
		})),
		n(WEAPON_ENCHANTMENTS, {
			i(172365),	-- Enchant Weapon - Ascended Vigor
			i(172366),	-- Enchant Weapon - Celestial Guidance
			i(172367),	-- Enchant Weapon - Eternal Grace
			i(172370),	-- Enchant Weapon - Lightless Force
			i(172368),	-- Enchant Weapon - Sinful Revelation
		}),
		n(WEAPONS, {
			i(172462),	-- Enchanted Twilight Wand
		}),
	}),
	prof(ENGINEERING, {
		n(ARMOR, {
			i(172907),	-- Articulated Ectoplasmic Specs
			i(172905),	-- Flexible Ectoplasmic Specs
			i(172906),	-- Grounded Ectoplasmic Specs
			i(172908),	-- Reinforced Ectoplasmic Specs
		}),
		filter(BATTLE_PETS, {
			i(180208),	-- PHA7-YNX (PET!)
		}),
		filter(MISC, {
			i(172915),	-- 50UL-TR4P
			i(172902),	-- Bomb Bola Launcher
			i(184308),	-- Disposable Spectrophasic Reanimator
			i(187836, {["timeline"] = {ADDED_9_2_0}}),	-- Erratic Genesis Matrix
			i(172914),	-- Gravimetric Scrambler Cannon
			i(172934),	-- Handful of Laestrite Bolts
			i(172921),	-- Infra-green Reflex Sight
			i(172912),	-- Momentum Redistributor Boots
			i(172936),	-- Mortal Coiled Spring
			i(172903),	-- Nutcracker Grenade
			i(172920),	-- Optical Target Embiggener
			i(172935),	-- Porous Polishing Abrasive
			i(187831, {["timeline"] = {ADDED_9_2_0}}),	-- Pure-Air Sail Extensions
			i(172904),	-- Shadow Land Mine
			i(172937),	-- Wormfed Gear Assembly
		}),
		filter(TOYS, {
			i(172924)	-- Wormhole Generator: Shadowlands (TOY!)
		}),
		n(WEAPONS, {
			i(172923)	-- Precision Lifeforce Inverter
		}),
	}),
	prof(FISHING, {
		i(187877, {	-- Frog Soul
			["description"] = "Fish anywhere in the Shadowlands to receive this soul.",
			["customCollect"] = { "SL_COV_NFA" },	-- Night Fae
			["maps"] = {
				ARDENWEALD,
				BASTION,
				REVENDRETH,
				MALDRAXXUS,
			},
			["timeline"] = { ADDED_9_1_5 },
		}),
		i(173037),	-- Elysian Thade
		i(173033),	-- Iridescent Amberjack
		i(173032),	-- Lost Sole
		i(173035),	-- Pocked Bonefish
		i(187702, {["timeline"] = {ADDED_9_2_0}}),	-- Precursor Placoderm
		i(173034),	-- Silvergill Pike
		i(173036),	-- Spinefin Piranha
		filter(RECIPES, {
			i(34109, {	-- Weather-Beaten Journal (RECIPE!)
				["description"] = "Can be fished from schools.",
			}),
		}),
	}),
	prof(HERBALISM, {
		spell(2366, {	-- Herb Gathering
			i(169701),	-- Death Blossom
			i(169700),	-- Death Blossom Petal
			i(187699, {["timeline"] = {ADDED_9_2_0}}),	-- First Flower
			i(168589),	-- Marrowroot
			i(168591),	-- Marrowroot Petal
			i(171315),	-- Nightshade
			i(169697),	-- Nightshade Petal
			i(168586),	-- Rising Glory
			i(169550),	-- Rising Glory Petal
			i(170554),	-- Vigil's Torch
			i(169699),	-- Vigil's Torch Petal
			i(168583),	-- Widowbloom
			i(169698),	-- Widowbloom Petal
		}),
	}),
	prof(INSCRIPTION, {
		spell(311418, {	-- Mass Mill Nightshade
			i(173057),	-- Luminous Pigment
			i(175788),	-- Tranquil Pigment
			i(173056),	-- Umbral Pigment
		}),
		filter(COSMETIC, {
			i(180755),	-- Fae Revel Masque
		}),
		filter(GLYPHS, sharedDataSelf({ ["timeline"] = { ADDED_9_1_5 } }, {
			i(190378, {["timeline"] = {ADDED_9_2_0}}),	-- Glyph of the Spectral Lupine
			i(190380, {["timeline"] = {ADDED_9_2_0}}),	-- Glyph of the Spectral Vulpine
			i(188164),	-- Glyph of the Wild Mushroom
			i(187887),	-- Mark of the Gloomstalker Dredbat (CI!)
			i(187934),	-- Mark of the Midnight Runestag (CI!)
			i(187931),	-- Mark of the Regal Dredbat (CI!)
			i(187936),	-- Mark of the Sable Ardenmoth (CI!)
			i(187888),	-- Mark of the Shimmering Ardenmoth (CI!)
			i(187884),	-- Mark of the Twilight Runestag (CI!)
		})),
		filter(MISC, {
			i(173048),	-- Codex of the Still Mind
			i(173062),	-- Contract: Court of Harvesters
			i(186522, {["timeline"] = {ADDED_9_1_0}}),	-- Contract: Death's Advance
			i(187796, {["timeline"] = {ADDED_9_2_0}}),	-- Contract: The Enlightened
			i(173051),	-- Contract: The Ascended
			i(175924),	-- Contract: The Undying Army
			i(173053),	-- Contract: The Wild Hunt
			i(173161),	-- Missive of Critical Strike
			i(173160),	-- Missive of Haste
			i(173162),	-- Missive of Mastery
			i(173163),	-- Missive of Versatility
			i(173049),	-- Tome of the Still Mind
			i(173067),	-- Vantus Rune: Castle Nathria
			i(186662, {["timeline"] = {ADDED_9_1_0}}),	-- Vantus Rune: Sanctum of Domination
			i(187805, {["timeline"] = {ADDED_9_2_0}}),	-- Vantus Rune: Sepulcher of the First Ones
			i(173065),	-- Writ of Grave Robbing
		}),
		filter(REAGENTS, {
			i(173059),	-- Luminous Ink
			i(175970),	-- Tranquil Ink
			i(173058),	-- Umbral Ink
			i(177843),	-- Blank Card of Putrescence
			i(173070),	-- Ace of Putrescence
			i(173071),	-- Two of Putrescence
			i(173072),	-- Three of Putrescence
			i(173073),	-- Four of Putrescence
			i(173074),	-- Five of Putrescence
			i(173075),	-- Six of Putrescence
			i(173076),	-- Seven of Putrescence
			i(173077),	-- Eight of Putrescence
			i(177842),	-- Blank Card of Repose
			i(173079),	-- Ace of Repose
			i(173080),	-- Two of Repose
			i(173081),	-- Three of Repose
			i(173082),	-- Four of Repose
			i(173083),	-- Five of Repose
			i(173084),	-- Six of Repose
			i(173085),	-- Seven of Repose
			i(173086),	-- Eight of Repose
			i(177840),	-- Blank Card of the Indomitable
			i(173097),	-- Ace of the Indomitable
			i(173098),	-- Two of the Indomitable
			i(173099),	-- Three of the Indomitable
			i(173100),	-- Four of the Indomitable
			i(173101),	-- Five of the Indomitable
			i(173102),	-- Six of the Indomitable
			i(173103),	-- Seven of the Indomitable
			i(173104),	-- Eight of the Indomitable
			i(177841),	-- Blank Card of Voracity
			i(173088),	-- Ace of Voracity
			i(173089),	-- Two of Voracity
			i(173090),	-- Three of Voracity
			i(173091),	-- Four of Voracity
			i(173092),	-- Five of Voracity
			i(173093),	-- Six of Voracity
			i(173094),	-- Seven of Voracity
			i(173095),	-- Eight of Voracity
		}),
		filter(TRINKET_F, {
			i(173087),	-- Darkmoon Deck: Voracity
			i(173069),	-- Darkmoon Deck: Putrescence
			i(173096),	-- Darkmoon Deck: Indomitable
			i(173078),	-- Darkmoon Deck: Repose
		}),
		n(WEAPONS, {
			i(173050),	-- Newly Departed Codex
			i(173428),	-- Soul Keeper's Column
			i(173054),	-- Soul Keeper's Spire
		}),
	}),
	prof(JEWELCRAFTING, {
		spell(325248, {	-- Shadowlands Prospecting
			i(173109),	-- Angerseye
			i(173170),	-- Essence of Rebirth
			i(173172),	-- Essence of Servitude
			i(173171),	-- Essence of Torment
			i(173173),	-- Essence of Valor
			i(173108),	-- Oriblase
			i(173110),	-- Umbryl
		}),
		n(DISCOVERY, {
			spell(327921, {	-- Shadowghast Necklace [Rank 1]
				r(332040),	-- Shadowghast Necklace [Rank 2]
				r(332075),	-- Shadowghast Necklace [Rank 3]
				r(338977),	-- Shadowghast Necklace [Rank 4]
			}),
			spell(327920, {	-- Shadowghast Ring [Rank 1]
				r(332039),	-- Shadowghast Ring [Rank 2]
				r(332074),	-- Shadowghast Ring [Rank 3]
				r(338978),	-- Shadowghast Ring [Rank 4]
			}),
		}),
		filter(COSMETIC, {
			i(180760),	-- Crown of the Righteous
		}),
		filter(FINGER_F, {
			i(173138),	-- Deadly Laestrite Band
			i(173134),	-- Deadly Sinvyr Ring
			i(173136),	-- Masterful Laestrite Band
			i(173132),	-- Masterful Phaedrum Ring
			i(173137),	-- Quick Laestrite Band
			i(173133),	-- Quick Oxxein Ring
			i(178926),	-- Shadowghast Ring
			i(173135),	-- Versatile Laestrite Band
			i(173131),	-- Versatile Solenium Ring
		}),
		filter(GEMS, {
			i(173127),	-- Deadly Jewel Cluster
			i(173121),	-- Deadly Jewel Doublet
			i(173130),	-- Masterful Jewel Cluster
			i(173124),	-- Masterful Jewel Doublet
			i(173128),	-- Quick Jewel Cluster
			i(173122),	-- Quick Jewel Doublet
			i(173125),	-- Revitalizing Jewel Doublet
			i(173126),	-- Straddling Jewel Doublet
			i(173129),	-- Versatile Jewel Cluster
			i(173123),	-- Versatile Jewel Doublet
		}),
		filter(NECK_F, {
			i(173143),	-- Deadly Laestrite Choker
			i(173147),	-- Deadly Sinvyr Necklace
			i(173141),	-- Masterful Laestrite Choker
			i(173145),	-- Masterful Phaedrum Necklace
			i(173142),	-- Quick Laestrite Choker
			i(173146),	-- Quick Oxxein Necklace
			i(178927),	-- Shadowghast Necklace
			i(173140),	-- Versatile Laestrite Choker
			i(173144),	-- Versatile Solenium Necklace
		}),
		filter(MISC, {
			i(187829, {["timeline"] = {ADDED_9_2_0}}),	-- Aealic Harmonizing Stone
			i(187849, {["timeline"] = {ADDED_9_2_0}}),	-- Devourer Essence Stone
			i(186981, {["timeline"] = {ADDED_9_1_0}}),	-- Porous Stone Statue
			i(186982, {["timeline"] = {ADDED_9_1_0}}),	-- Shaded Stone Statue
		}),
	}),
	prof(LEATHERWORKING, {
		n(DISCOVERY, {
			spell(309213, {	-- Boneshatter Armguards [Rank 1]
				r(332029),	-- Boneshatter Armguards [Rank 2] (RECIPE!)
				r(332064),	-- Boneshatter Armguards [Rank 3] (RECIPE!)
				r(338994),	-- Boneshatter Armguards [Rank 4] (RECIPE!)
			}),
			spell(309208, {	-- Boneshatter Gauntlets [Rank 1]
				r(332024),	-- Boneshatter Gauntlets [Rank 2] (RECIPE!)
				r(332059),	-- Boneshatter Gauntlets [Rank 3] (RECIPE!)
				r(338989),	-- Boneshatter Gauntlets [Rank 4] (RECIPE!)
			}),
			spell(309210, {	-- Boneshatter Greaves [Rank 1]
				r(332026),	-- Boneshatter Greaves [Rank 2] (RECIPE!)
				r(332061),	-- Boneshatter Greaves [Rank 3] (RECIPE!)
				r(338991),	-- Boneshatter Greaves [Rank 4] (RECIPE!)
			}),
			spell(309209, {	-- Boneshatter Helm [Rank 1]
				r(332025),	-- Boneshatter Helm [Rank 2] (RECIPE!)
				r(332060),	-- Boneshatter Helm [Rank 3] (RECIPE!)
				r(338990),	-- Boneshatter Helm [Rank 4] (RECIPE!)
			}),
			spell(309211, {	-- Boneshatter Pauldrons [Rank 1]
				r(332027),	-- Boneshatter Pauldrons [Rank 2] (RECIPE!)
				r(332062),	-- Boneshatter Pauldrons [Rank 3] (RECIPE!)
				r(338992),	-- Boneshatter Pauldrons [Rank 4] (RECIPE!)
			}),
			spell(309206, {	-- Boneshatter Treads [Rank 1]
				r(332022),	-- Boneshatter Treads [Rank 2] (RECIPE!)
				r(332057),	-- Boneshatter Treads [Rank 3] (RECIPE!)
				r(338988),	-- Boneshatter Treads [Rank 4] (RECIPE!)
			}),
			spell(309207, {	-- Boneshatter Vest [Rank 1]
				r(332023),	-- Boneshatter Vest [Rank 2] (RECIPE!)
				r(332058),	-- Boneshatter Vest [Rank 3] (RECIPE!)
				r(338987),	-- Boneshatter Vest [Rank 4] (RECIPE!)
			}),
			spell(309212, {	-- Boneshatter Waistguard [Rank 1]
				r(332028),	-- Boneshatter Waistguard [Rank 2] (RECIPE!)
				r(332063),	-- Boneshatter Waistguard [Rank 3] (RECIPE!)
				r(338993),	-- Boneshatter Waistguard [Rank 4] (RECIPE!)
			}),
			spell(309205, {	-- Umbrahide Armguards [Rank 1]
				r(332021),	-- Umbrahide Armguards [Rank 2] (RECIPE!)
				r(332056),	-- Umbrahide Armguards [Rank 3] (RECIPE!)
				r(338986),	-- Umbrahide Armguards [Rank 4] (RECIPE!)
			}),
			spell(309200, {	-- Umbrahide Gauntlets [Rank 1]
				r(332016),	-- Umbrahide Gauntlets [Rank 2] (RECIPE!)
				r(332051),	-- Umbrahide Gauntlets [Rank 3] (RECIPE!)
				r(338981),	-- Umbrahide Gauntlets [Rank 4] (RECIPE!)
			}),
			spell(309201, {	-- Umbrahide Helm [Rank 1]
				r(332017),	-- Umbrahide Helm [Rank 2] (RECIPE!)
				r(332052),	-- Umbrahide Helm [Rank 3] (RECIPE!)
				r(338982),	-- Umbrahide Helm [Rank 4] (RECIPE!)
			}),
			spell(309202, {	-- Umbrahide Leggings [Rank 1]
				r(332018),	-- Umbrahide Leggings [Rank 2] (RECIPE!)
				r(332053),	-- Umbrahide Leggings [Rank 3] (RECIPE!)
				r(338983),	-- Umbrahide Leggings [Rank 4] (RECIPE!)
			}),
			spell(309203, {	-- Umbrahide Pauldrons [Rank 1]
				r(332019),	-- Umbrahide Pauldrons [Rank 2] (RECIPE!)
				r(332054),	-- Umbrahide Pauldrons [Rank 3] (RECIPE!)
				r(338984),	-- Umbrahide Pauldrons [Rank 4] (RECIPE!)
			}),
			spell(309198, {	-- Umbrahide Treads [Rank 1]
				r(332014),	-- Umbrahide Treads [Rank 2] (RECIPE!)
				r(332049),	-- Umbrahide Treads [Rank 3] (RECIPE!)
				r(338980),	-- Umbrahide Treads [Rank 4] (RECIPE!)
			}),
			spell(309199, {	-- Umbrahide Vest [Rank 1]
				r(332015),	-- Umbrahide Vest [Rank 2] (RECIPE!)
				r(332050),	-- Umbrahide Vest [Rank 3] (RECIPE!)
				r(338979),	-- Umbrahide Vest [Rank 4] (RECIPE!)
			}),
			spell(309204, {	-- Umbrahide Waistguard [Rank 1]
				r(332020),	-- Umbrahide Waistguard [Rank 2] (RECIPE!)
				r(332055),	-- Umbrahide Waistguard [Rank 3] (RECIPE!)
				r(338985),	-- Umbrahide Waistguard [Rank 4] (RECIPE!)
			}),
		}),
		n(ARMOR, {
			filter(LEATHER, {
				i(172241),	-- Desolate Leather Armguards
				i(172236),	-- Desolate Leather Gauntlets
				i(172237),	-- Desolate Leather Helm
				i(172238),	-- Desolate Leather Leggings
				i(172239),	-- Desolate Leather Pauldrons
				i(172235),	-- Desolate Leather Treads
				i(172234),	-- Desolate Leather Vest
				i(172240),	-- Desolate Leather Waistguard
				i(172257),	-- Shadebound Armguards
				i(172252),	-- Shadebound Gauntlets
				i(172254),	-- Shadebound Greaves
				i(172253),	-- Shadebound Helm
				i(172255),	-- Shadebound Pauldrons
				i(172251),	-- Shadebound Treads
				i(172250),	-- Shadebound Vest
				i(172256),	-- Shadebound Waistguard
				i(172321),	-- Umbrahide Armguards
				i(172316),	-- Umbrahide Gauntlets
				i(172317),	-- Umbrahide Helm
				i(172318),	-- Umbrahide Leggings
				i(172319),	-- Umbrahide Pauldrons
				i(172315),	-- Umbrahide Treads
				i(172314),	-- Umbrahide Vest
				i(172320),	-- Umbrahide Waistguard
			}),
			filter(MAIL, {
				i(172329),	-- Boneshatter Armguards
				i(172324),	-- Boneshatter Gauntlets
				i(172326),	-- Boneshatter Greaves
				i(172325),	-- Boneshatter Helm
				i(172327),	-- Boneshatter Pauldrons
				i(172323),	-- Boneshatter Treads
				i(172322),	-- Boneshatter Vest
				i(172328),	-- Boneshatter Waistguard
				i(172249),	-- Desolate Scale Armguards
				i(172244),	-- Desolate Scale Gauntlets
				i(172246),	-- Desolate Scale Greaves
				i(172245),	-- Desolate Scale Helm
				i(172247),	-- Desolate Scale Pauldrons
				i(172243),	-- Desolate Scale Treads
				i(172242),	-- Desolate Scale Vest
				i(172248),	-- Desolate Scale Waistguard
				i(172265),	-- Shadowscale Armguards
				i(172260),	-- Shadowscale Gauntlets
				i(172262),	-- Shadowscale Greaves
				i(172261),	-- Shadowscale Helm
				i(172263),	-- Shadowscale Pauldrons
				i(172259),	-- Shadowscale Treads
				i(172258),	-- Shadowscale Vest
				i(172264),	-- Shadowscale Waistguard
			}),
		}),
		filter(MISC, {
			i(168419),	-- Comfortable Rider's Barding
			i(172346),	-- Desolate Armor Kit
			i(172233),	-- Drums of Deathly Ferocity
			i(172347),	-- Heavy Desolate Armor Kit
		}),
		filter(REAGENTS, {
			i(172089),	-- Desolate Leather
			i(172097),	-- Heavy Callous Hide
			i(172096),	-- Heavy Desolate Leather
		}),
		filter(TOYS, sharedDataSelf({ ["timeline"] = { ADDED_9_1_0 } }, {
			i(186985),	-- Elusive Pet Treat (TOY!)
			i(186702),	-- Pallid Bone Flute (TOY!)
			i(186686),	-- Pallid Oracle Bones (TOY!)
		})),
		n(WEAPONS, {
			i(172349),	-- Bone Bound Knuckles
			i(172350),	-- Composite Bow
			i(172351),	-- Composite Crossbow
			i(172348),	-- Desolate Leather Cestus
		}),
	}),
	prof(MINING, {
		spell(2575, {	-- Mining
			i(171839),	-- Elethium Nugget
			i(171833),	-- Elethium Ore
			i(171834),	-- Laestrite Nugget
			i(171828),	-- Laestrite Ore
			i(171836),	-- Oxxein Nugget
			i(171830),	-- Oxxein Ore
			i(171837),	-- Phaedrum Nugget
			i(171831),	-- Phaedrum Ore
			i(171840),	-- Porous Stone
			i(187700, {["timeline"] = {ADDED_9_2_0}}),	-- Progenium Ore
			i(171841),	-- Shaded Stone
			i(171838),	-- Sinvyr Nugget
			i(171832),	-- Sinvyr Ore
			i(171835),	-- Solenium Nugget
			i(171829),	-- Solenium Ore
			i(177061),	-- Twilight Bark
		}),
	}),
	prof(SKINNING, {
		spell(8613, {	-- Skinning
			i(172094),	-- Callous Hide
			i(172095),	-- Callous Hide Scraps
			i(172089),	-- Desolate Leather
			i(172093),	-- Desolate Leather Scraps
			i(172097),	-- Heavy Callous Hide
			i(172096),	-- Heavy Desolate Leather
			i(172092),	-- Pallid Bone
			i(187701, {["timeline"] = {ADDED_9_2_0}}),	-- Protogenic Pelt
		}),
	}),
	prof(TAILORING, {
		n(DISCOVERY, {
			spell(310885, {	-- Grim-Veiled Belt [Rank 1]
				r(332037),	-- Grim-Veiled Belt [Rank 2]
				r(332072),	-- Grim-Veiled Belt [Rank 3]
				r(339003),	-- Grim-Veiled Belt [Rank 4]
			}),
			spell(310886, {	-- Grim-Veiled Bracers [Rank 1]
				r(332038),	-- Grim-Veiled Bracers [Rank 2]
				r(332073),	-- Grim-Veiled Bracers [Rank 3]
				r(339004),	-- Grim-Veiled Bracers [Rank 4]
			}),
			spell(310880, {	-- Grim-Veiled Cape [Rank 1]
				r(332032),	-- Grim-Veiled Cape [Rank 2]
				r(332067),	-- Grim-Veiled Cape [Rank 3]
				r(338995),	-- Grim-Veiled Cape [Rank 4]
			}),
			spell(310882, {	-- Grim-Veiled Hood [Rank 1]
				r(332034),	-- Grim-Veiled Hood [Rank 2]
				r(332069),	-- Grim-Veiled Hood [Rank 3]
				r(339000),	-- Grim-Veiled Hood [Rank 4]
			}),
			spell(310881, {	-- Grim-Veiled Mittens [Rank 1]
				r(332033),	-- Grim-Veiled Mittens [Rank 2]
				r(332068),	-- Grim-Veiled Mittens [Rank 3]
				r(338998),	-- Grim-Veiled Mittens [Rank 4]
			}),
			spell(310883, {	-- Grim-Veiled Pants [Rank 1]
				r(332035),	-- Grim-Veiled Pants [Rank 2]
				r(332070),	-- Grim-Veiled Pants [Rank 3]
				r(339001),	-- Grim-Veiled Pants [Rank 4]
			}),
			spell(310879, {	-- Grim-Veiled Robe [Rank 1]
				r(332031),	-- Grim-Veiled Robe [Rank 2]
				r(332066),	-- Grim-Veiled Robe [Rank 3]
				r(338996),	-- Grim-Veiled Robe [Rank 4]
			}),
			spell(310878, {	-- Grim-Veiled Sandals [Rank 1]
				r(332030),	-- Grim-Veiled Sandals [Rank 2]
				r(332065),	-- Grim-Veiled Sandals [Rank 3]
				r(338997),	-- Grim-Veiled Sandals [Rank 4]
			}),
			spell(310884, {	-- Grim-Veiled Spaulders [Rank 1]
				r(332036),	-- Grim-Veiled Spaulders [Rank 2]
				r(332071),	-- Grim-Veiled Spaulders [Rank 3]
				r(339002),	-- Grim-Veiled Spaulders [Rank 4]
			}),
		}),
		n(ARMOR, {
			i(173248),	-- Grim-Veiled Belt
			i(173249),	-- Grim-Veiled Bracers
			i(173242),	-- Grim-Veiled Cape
			i(173245),	-- Grim-Veiled Hood
			i(173244),	-- Grim-Veiled Mittens
			i(173246),	-- Grim-Veiled Pants
			i(173241),	-- Grim-Veiled Robe
			i(173243),	-- Grim-Veiled Sandals
			i(173247),	-- Grim-Veiled Spaulders
			i(173215),	-- Shadowlace Cloak
			i(173221),	-- Shadowlace Cord
			i(173218),	-- Shadowlace Cowl
			i(173222),	-- Shadowlace Cuffs
			i(173216),	-- Shadowlace Footwraps
			i(173217),	-- Shadowlace Handwraps
			i(173220),	-- Shadowlace Mantle
			i(173219),	-- Shadowlace Trousers
			i(173214),	-- Shadowlace Tunic
			i(173200),	-- Shrouded Cloth Belt
			i(173201),	-- Shrouded Cloth Bracers
			i(173194),	-- Shrouded Cloth Cape
			i(173197),	-- Shrouded Cloth Hood
			i(173196),	-- Shrouded Cloth Mittens
			i(173198),	-- Shrouded Cloth Pants
			i(173193),	-- Shrouded Cloth Robe
			i(173195),	-- Shrouded Cloth Sandals
			i(173199),	-- Shrouded Cloth Spaulders
		}),
		filter(COSMETIC, {
			i(180752),	-- Pink Party Hat
		}),
		filter(MISC, {
			i(173191),	-- Heavy Shrouded Cloth Bandage
			i(184480),	-- Lightless Silk Pouch
			i(184479),	-- Shrouded Cloth Bag
			i(173192),	-- Shrouded Cloth Bandage
			i(186975, {["timeline"] = {ADDED_9_1_0}}),	-- Shrouded Hand Towel
		}),
	}),
})));
