-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------

-- #if ANYCLASSIC
-- Wouter NOTE: level 85 boosts became available in Classic shortly after the launch of Dragon Soul, with the Sha-Infused Epic Pack for MoP
root(ROOTS.Character, n(CLASS_TRIAL, {
	expansion(EXPANSION.MOP, bubbleDown({ ["u"] = REAL_MONEY, ["timeline"] = { ADDED_4_4_2 } }, {
		header(HEADERS.Achievement, 4826, {
			["groups"] = {
				cl(DEATHKNIGHT, {
					i(92110),	-- Scourgeheart Blade
					i(92354),	-- Scourgeheart Hammer
					i(92353),	-- Scourgeheart Maul
					i(92243),	-- Scourgeheart Faceguard
					i(92242),	-- Scourgeheart Helm
					i(92209),	-- Scourgeheart Amulet
					i(92207),	-- Scourgeheart Pendant
					i(92178),	-- Scourgeheart Pauldrons
					i(92179),	-- Scourgeheart Shoulderguards
					i(92343),	-- Scourgeheart Cloak of Battle
					i(92342),	-- Scourgeheart Cloak of Stoicism
					i(92367),	-- Scourgeheart Breastplate
					i(92366),	-- Scourgeheart Chestguard
					i(92076),	-- Scourgeheart Armguards
					i(92075),	-- Scourgeheart Vambraces
					i(92262),	-- Scourgeheart Gauntlets
					i(92263),	-- Scourgeheart Handguards
					i(92130),	-- Scourgeheart Girdle
					i(92131),	-- Scourgeheart Waistband
					i(92223),	-- Scourgeheart Legguards
					i(92222),	-- Scourgeheart Legplates
					i(92322),	-- Scourgeheart Greaves
					i(92323),	-- Scourgeheart Sabatons
					i(92303),	-- Scourgeheart Band of Might
					i(92302),	-- Scourgeheart Ring of Might
					i(92306),	-- Scourgeheart Band of Stoicism
					i(92307),	-- Scourgeheart Ring of Stoicism
					i(92135),	-- Scourgeheart Defender Idol
					i(92134),	-- Scourgeheart Defender Stone
					i(92167),	-- Scourgeheart Idol of Battle
					i(92168),	-- Scourgeheart Stone of Battle
				}),
				cl(DRUID, {
					i(92356),	-- Naturalist Spear
					i(92358),	-- Naturalist Staff
					i(92355),	-- Naturalist Stave
					i(92245),	-- Naturalist Headpiece
					i(92244),	-- Naturalist Helm
					i(92246),	-- Naturalist Hood
					i(92208),	-- Naturalist Choker
					i(92210),	-- Naturalist Medallion
					i(92211),	-- Naturalist Necklace
					i(92152),	-- Naturalist Pauldrons
					i(92181),	-- Naturalist Shoulders
					i(92180),	-- Naturalist Spaulders
					i(92345),	-- Naturalist Cloak of Destruction
					i(92344),	-- Naturalist Cloak of Rage
					i(92346),	-- Naturalist Cloak of Wisdom
					i(92370),	-- Naturalist Jerkin
					i(92369),	-- Naturalist Tunic
					i(92368),	-- Naturalist Vest
					i(92080),	-- Naturalist Bindings
					i(92077),	-- Naturalist Bracers
					i(92078),	-- Naturalist Cuffs
					i(92266),	-- Naturalist Gloves
					i(92265),	-- Naturalist Grips
					i(92264),	-- Naturalist Handguards
					i(92132),	-- Naturalist Belt
					i(92094),	-- Naturalist Cord
					i(92096),	-- Naturalist Waistband
					i(92226),	-- Naturalist Britches
					i(92225),	-- Naturalist Leggings
					i(92224),	-- Naturalist Legguards
					i(92326),	-- Naturalist Boots
					i(92324),	-- Naturalist Footpads
					i(92325),	-- Naturalist Treads
					i(92308),	-- Naturalist Band of Destruction
					i(92309),	-- Naturalist Ring of Destruction
					i(92305),	-- Naturalist Band of Onslaught
					i(92304),	-- Naturalist Ring of Onslaught
					i(92310),	-- Naturalist Band of Wisdom
					i(92311),	-- Naturalist Ring of Wisdom
					i(92137),	-- Naturalist Idol of Destruction
					i(92136),	-- Naturalist Stone of Destruction
					i(92133),	-- Naturalist Idol of Rage
					i(92138),	-- Naturalist Stone of Rage
					i(92140),	-- Naturalist Idol of Wisdom
					i(92139),	-- Naturalist Stone of Wisdom
				}),
				cl(HUNTER, {
					i(92193),	-- Forestwalker Rifle
					i(92357, { ["timeline"] = { ADDED_4_4_2, REMOVED_5_5_0 } }),	-- Forestwalker Spear
					i(92247),	-- Forestwalker Helm
					i(92153),	-- Forestwalker Spaulders
					i(92213),	-- Forestwalker Choker
					i(92347),	-- Forestwalker Cloak of Rage
					i(92371),	-- Forestwalker Vest
					i(92079),	-- Forestwalker Bracers
					i(92267),	-- Forestwalker Gauntlets
					i(92095),	-- Forestwalker Belt
					i(92227),	-- Forestwalker Legguards
					i(92327),	-- Forestwalker Greaves
					i(92313),	-- Forestwalker Band of Onslaught
					i(92312),	-- Forestwalker Ring of Onslaught
					i(92142),	-- Forestwalker Idol of Rage
					i(92141),	-- Forestwalker Stone of Rage
				}),
				cl(MAGE, {
					i(92359),	-- Enlightened Staff
					i(92194),	-- Enlightened Wand
					i(92249),	-- Enlightened Hood
					i(92212),	-- Enlightened Medallion
					i(92154),	-- Enlightened Shoulderpads
					i(92348),	-- Enlightened Cloak of Destruction
					i(92169),	-- Enlightened Robe
					i(92081),	-- Enlightened Wristwraps
					i(92269),	-- Enlightened Handwraps
					i(92097),	-- Enlightened Cord
					i(92228),	-- Enlightened Leggings
					i(92329),	-- Enlightened Sandals
					i(92275),	-- Enlightened Band of Destruction
					i(92276),	-- Enlightened Ring of Destruction
					i(92144),	-- Enlightened Idol of Destruction
					i(92143),	-- Enlightened Stone of Destruction
				}),
				cl(MONK, bubbleDownSelf({ ["timeline"] = { ADDED_5_5_0 } }, {
					i(92372),	-- Waterdancer Spire
					i(92373),	-- Waterdancer Staff
					i(92405),	-- Waterdancer Sword
					i(92389),	-- Waterdancer Helm
					i(92388),	-- Waterdancer Hood
					i(92394),	-- Waterdancer Amulet
					i(92392),	-- Waterdancer Choker
					i(92393),	-- Waterdancer Necklace
					i(92396),	-- Waterdancer Pauldrons
					i(92395),	-- Waterdancer Shoulders
					i(92377),	-- Waterdancer Cloak of Rage
					i(92376),	-- Waterdancer Cloak of Wisdom
					i(92374),	-- Waterdancer Jerkin
					i(92375),	-- Waterdancer Vest
					i(92406),	-- Waterdancer Bindings
					i(92407),	-- Waterdancer Cuffs
					i(92386),	-- Waterdancer Gloves
					i(92387),	-- Waterdancer Handguards
					i(92404),	-- Waterdancer Cord
					i(92403),	-- Waterdancer Waistband
					i(92390),	-- Waterdancer Britches
					i(92391),	-- Waterdancer Legguards
					i(92378),	-- Waterdancer Boots
					i(92379),	-- Waterdancer Footpads
					i(92380),	-- Waterdancer Band of Onslaught
					i(92381),	-- Waterdancer Ring of Onslaught
					i(92384),	-- Waterdancer Band of Stoicism
					i(92385),	-- Waterdancer Ring of Stoicism
					i(92383),	-- Waterdancer Band of Wisdom
					i(92382),	-- Waterdancer Ring of Wisdom
					i(92399),	-- Waterdancer Defender Idol
					i(92398),	-- Waterdancer Defender Stone
					i(92401),	-- Waterdancer Idol of Rage
					i(92400),	-- Waterdancer Stone of Rage
					i(92397),	-- Waterdancer Idol of Wisdom
					i(92402),	-- Waterdancer Stone of Wisdom
				})),
				cl(PALADIN, {
					i(92173),	-- Partisan Bulwark
					i(92360),	-- Partisan Greatsword
					i(92202),	-- Partisan Scepter
					i(92174),	-- Partisan Shield
					i(92111),	-- Partisan Sword
					i(92251),	-- Partisan Faceguard
					i(92250),	-- Partisan Headpiece
					i(92248),	-- Partisan Helm
					i(92215),	-- Partisan Amulet
					i(92214),	-- Partisan Necklace
					i(92182),	-- Partisan Pendant
					i(92156),	-- Partisan Pauldrons
					i(92157),	-- Partisan Shoulderguards
					i(92155),	-- Partisan Spaulders
					i(92351),	-- Partisan Cloak of Battle
					i(92350),	-- Partisan Cloak of Stoicism
					i(92349),	-- Partisan Cloak of Wisdom
					i(92333),	-- Partisan Battleplate
					i(92334),	-- Partisan Breastplate
					i(92335),	-- Partisan Chestguard
					i(92084),	-- Partisan Armguards
					i(92082),	-- Partisan Armplates
					i(92083),	-- Partisan Vambraces
					i(92268),	-- Partisan Gauntlets
					i(92270),	-- Partisan Gloves
					i(92271),	-- Partisan Handguards
					i(92098),	-- Partisan Belt
					i(92099),	-- Partisan Girdle
					i(92100),	-- Partisan Waistband
					i(92229),	-- Partisan Leggings
					i(92231),	-- Partisan Legguards
					i(92230),	-- Partisan Legplates
					i(92330),	-- Partisan Boots
					i(92331),	-- Partisan Greaves
					i(92328),	-- Partisan Sabatons
					i(92280),	-- Partisan Band of Might
					i(92279),	-- Partisan Ring of Might
					i(92284),	-- Partisan Band of Stoicism
					i(92283),	-- Partisan Ring of Stoicism
					i(92278),	-- Partisan Band of Wisdom
					i(92277),	-- Partisan Ring of Wisdom
					i(92147),	-- Partisan Defender Idol
					i(92114),	-- Partisan Defender Stone
					i(92148),	-- Partisan Idol of Battle
					i(92149),	-- Partisan Stone of Battle
					i(92146),	-- Partisan Idol of Wisdom
					i(92145),	-- Partisan Stone of Wisdom
				}),
				cl(PRIEST, {
					i(92362),	-- Deliverer Staff
					i(92361),	-- Deliverer Stave
					i(92195),	-- Deliverer Wand
					i(92253),	-- Deliverer Cowl
					i(92252),	-- Deliverer Hood
					i(92184),	-- Deliverer Medallion
					i(92183),	-- Deliverer Necklace
					i(92158),	-- Deliverer Mantle
					i(92159),	-- Deliverer Shoulderpads
					i(92315),	-- Deliverer Cloak of Destruction
					i(92352),	-- Deliverer Cloak of Wisdom
					i(92170),	-- Deliverer Robe
					i(92171),	-- Deliverer Vestments
					i(92085),	-- Deliverer Bindings
					i(92086),	-- Deliverer Wristwraps
					i(92273),	-- Deliverer Gloves
					i(92272),	-- Deliverer Handwraps
					i(92102),	-- Deliverer Cord
					i(92101),	-- Deliverer Sash
					i(92232),	-- Deliverer Leggings
					i(92233),	-- Deliverer Pants
					i(92294),	-- Deliverer Boots
					i(92332),	-- Deliverer Sandals
					i(92281),	-- Deliverer Band of Destruction
					i(92282),	-- Deliverer Ring of Destruction
					i(92285),	-- Deliverer Band of Wisdom
					i(92286),	-- Deliverer Ring of Wisdom
					i(92113),	-- Deliverer Idol of Destruction
					i(92151),	-- Deliverer Stone of Destruction
					i(92150),	-- Deliverer Idol of Wisdom
					i(92115),	-- Deliverer Stone of Wisdom
				}),
				cl(ROGUE, {
					i(92204),	-- Darkwalker Dagger
					i(92192),	-- Darkwalker Shiv
					i(92203),	-- Darkwalker Sword
					i(92254),	-- Darkwalker Hood
					i(92186),	-- Darkwalker Choker
					i(92160),	-- Darkwalker Shoulders
					i(92314),	-- Darkwalker Cloak of Rage
					i(92336),	-- Darkwalker Jerkin
					i(92087),	-- Darkwalker Bindings
					i(92274),	-- Darkwalker Gloves
					i(92103),	-- Darkwalker Waistband
					i(92234),	-- Darkwalker Britches
					i(92295),	-- Darkwalker Boots
					i(92287),	-- Darkwalker Band of Onslaught
					i(92288),	-- Darkwalker Ring of Onslaught
					i(92118),	-- Darkwalker Idol of Rage
					i(92117),	-- Darkwalker Stone of Rage
				}),
				cl(SHAMAN, {
					i(92175),	-- Thundercaller Aegis
					i(92205),	-- Thundercaller Gavel
					i(92112),	-- Thundercaller Mace
					i(92206),	-- Thundercaller Scepter
					i(92176),	-- Thundercaller Shield
					i(92216),	-- Thundercaller Coif
					i(92219),	-- Thundercaller Cowl
					i(92217),	-- Thundercaller Helm
					i(92185),	-- Thundercaller Choker
					i(92187),	-- Thundercaller Medallion
					i(92188),	-- Thundercaller Necklace
					i(92161),	-- Thundercaller Pauldrons
					i(92162),	-- Thundercaller Shoulderguards
					i(92164),	-- Thundercaller Spaulders
					i(92317),	-- Thundercaller Cloak of Destruction
					i(92316),	-- Thundercaller Cloak of Rage
					i(92318),	-- Thundercaller Cloak of Wisdom
					i(92339),	-- Thundercaller Chestguard
					i(92337),	-- Thundercaller Tunic
					i(92338),	-- Thundercaller Vest
					i(92088),	-- Thundercaller Armbands
					i(92089),	-- Thundercaller Armguard
					i(92090),	-- Thundercaller Bracers
					i(92236),	-- Thundercaller Gloves
					i(92239),	-- Thundercaller Grips
					i(92237),	-- Thundercaller Handguards
					i(92104),	-- Thundercaller Belt
					i(92106),	-- Thundercaller Girdle
					i(92105),	-- Thundercaller Waistguard
					i(92199),	-- Thundercaller Leggings
					i(92197),	-- Thundercaller Legguards
					i(92235),	-- Thundercaller Legwraps
					i(92296),	-- Thundercaller Boots
					i(92297),	-- Thundercaller Greaves
					i(92299),	-- Thundercaller Sabatons
					i(92289),	-- Thundercaller Band of Destruction
					i(92290),	-- Thundercaller Ring of Destruction
					i(92291),	-- Thundercaller Band of Onslaught
					i(92292),	-- Thundercaller Ring of Onslaught
					i(92293),	-- Thundercaller Band of Wisdom
					i(92255),	-- Thundercaller Ring of Wisdom
					i(92120),	-- Thundercaller Idol of Destruction
					i(92119),	-- Thundercaller Stone of Destruction
					i(92116),	-- Thundercaller Idol of Rage
					i(92121),	-- Thundercaller Stone of Rage
					i(92123),	-- Thundercaller Idol of Wisdom
					i(92122),	-- Thundercaller Stone of Wisdom
				}),
				cl(WARLOCK, {
					i(92365),	-- Soulseizer Staff
					i(92196),	-- Soulseizer Wand
					i(92218),	-- Soulseizer Cowl
					i(92189),	-- Soulseizer Medallion
					i(92163),	-- Soulseizer Shoulderpads
					i(92320),	-- Soulseizer Cloak of Destruction
					i(92172),	-- Soulseizer Robe
					i(92092),	-- Soulseizer Wristwraps
					i(92238),	-- Soulseizer Handwraps
					i(92108),	-- Soulseizer Cord
					i(92198),	-- Soulseizer Leggings
					i(92298),	-- Soulseizer Sandals
					i(92256),	-- Soulseizer Band of Destruction
					i(92257),	-- Soulseizer Ring of Destruction
					i(92125),	-- Soulseizer Idol of Destruction
					i(92124),	-- Soulseizer Stone of Destruction
				}),
				cl(WARRIOR, {
					i(92177),	-- Martial Bulwark
					i(92364),	-- Martial Greatsword
					i(92363),	-- Martial Maul
					i(92074),	-- Martial Sword
					i(92221),	-- Martial Faceguard
					i(92220),	-- Martial Helm
					i(92191),	-- Martial Amulet
					i(92190),	-- Martial Pendant
					i(92165),	-- Martial Pauldrons
					i(92166),	-- Martial Shoulderguards
					i(92319),	-- Martial Cloak of Battle
					i(92321),	-- Martial Cloak of Stoicism
					i(92340),	-- Martial Breastplate
					i(92341),	-- Martial Chestguard
					i(92093),	-- Martial Armguards
					i(92091),	-- Martial Vambraces
					i(92240),	-- Martial Gauntlets
					i(92241),	-- Martial Handguards
					i(92107),	-- Martial Girdle
					i(92109),	-- Martial Waistband
					i(92201),	-- Martial Legguards
					i(92200),	-- Martial Legplates
					i(92301),	-- Martial Greaves
					i(92300),	-- Martial Sabatons
					i(92258),	-- Martial Band of Might
					i(92261),	-- Martial Ring of Might
					i(92260),	-- Martial Band of Stoicism
					i(92259),	-- Martial Ring of Stoicism
					i(92127),	-- Martial Defender Idol
					i(92126),	-- Martial Defender Stone
					i(92128),	-- Martial Idol of Battle
					i(92129),	-- Martial Stone of Battle
				}),
			},
		}),
	})),
}));
-- #endif
