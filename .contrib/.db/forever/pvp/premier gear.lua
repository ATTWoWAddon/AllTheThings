-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, {
	n(PREMIER_PVP_GEAR, {
		timeline = { TIMELINE.ADDED_1_60_1 },
		groups = {
			n(FACTION_HEADER_ALLIANCE, {
				symselector=SymSelector.PREMIER_PVP_ALLIANCE,
				races = ALLIANCE_ONLY,
				groups = {
					n(WEAPONS, {
						i(272838),	-- Premier Grand Marshal's Aegis
						i(278468),	-- Premier Grand Marshal's Barricade
						i(272848),	-- Premier Grand Marshal's Battle Hammer
						i(272841),	-- Premier Grand Marshal's Bullseye
						i(272851),	-- Premier Grand Marshal's Claymore
						i(272858),	-- Premier Grand Marshal's Demolisher
						i(272843),	-- Premier Grand Marshal's Dirk
						i(272849),	-- Premier Grand Marshal's Glaive
						i(272846),	-- Premier Grand Marshal's Hand Cannon
						i(272839),	-- Premier Grand Marshal's Handaxe
						i(272845),	-- Premier Grand Marshal's Left Hand Blade
						i(272693),	-- Premier Grand Marshal's Longsword
						i(272856),	-- Premier Grand Marshal's Mageblade
						i(272847),	-- Premier Grand Marshal's Punisher
						i(272842),	-- Premier Grand Marshal's Repeater
						i(272844),	-- Premier Grand Marshal's Right Hand Blade
						i(272850),	-- Premier Grand Marshal's Stave
						i(272840),	-- Premier Grand Marshal's Sunderer
						i(272859),	-- Premier Grand Marshal's Swiftblade
						i(278158),	-- Premier Grand Marshal's Tome of Power
						i(278157),	-- Premier Grand Marshal's Tome of Restoration
						i(272857),	-- Premier Grand Marshal's Warhammer
					}),
					cl(DRUID, bubbleDownSelf({ classes = { DRUID } }, {
						-- Epic set: Field Marshal's Refuge
						i(273402),	-- Premier Field Marshal's Dreamhide Helmet
						i(273400),	-- Premier Marshal's Dreamhide Spaulders
						i(273403),	-- Premier Field Marshal's Dreamhide Breastplate
						i(273399),	-- Premier Lieutenant Commander's Dreamhide Gauntlets
						i(273401),	-- Premier Marshal's Dreamhide Legguards
						i(273404),	-- Premier Knight-Champion's Dreamhide Boots
						i(273397),	-- Premier Knight-Captain's Dreamhide Bracers
						i(273398),	-- Premier Knight-Captain's Dreamhide Waistguard

						-- Rare set: Lieutenant Commander's Refuge
						i(273374),	-- Premier Dreamhide Headguard
						i(273375),	-- Premier Dreamhide Shoulders
						i(273380),	-- Premier Dreamhide Tunic
						i(273377),	-- Premier Dreamhide Gloves
						i(273373),	-- Premier Dreamhide Leggings
						i(273379),	-- Premier Dreamhide Footwraps
						i(272834),	-- Premier Dreamhide Armsplints
						i(273378),	-- Premier Dreamhide Girdle

						-- Epic set: Field Marshal's Sanctuary
						i(272760),	-- Premier Field Marshal's Beasthide Helmet
						i(272758),	-- Premier Marshal's Beasthide Spaulders
						i(272761),	-- Premier Field Marshal's Beasthide Breastplate
						i(272757),	-- Premier Lieutenant Commander's Beasthide Gauntlets
						i(272759),	-- Premier Marshal's Beasthide Legguards
						i(272768),	-- Premier Knight-Champion's Beasthide Boots
						i(272754),	-- Premier Knight-Captain's Beasthide Bracers
						i(272756),	-- Premier Knight-Captain's Beasthide Waistguard

						-- Rare set: Lieutenant Commander's Sanctuary
						i(272733),	-- Premier Beasthide Shroud
						i(272732),	-- Premier Beasthide Epaulets
						i(272730),	-- Premier Beasthide Tunic
						i(272709),	-- Premier Beasthide Gloves
						i(272731),	-- Premier Beasthide Leggings
						i(272705),	-- Premier Beasthide Footwraps
						i(272707),	-- Premier Beasthide Armsplints
						i(272711),	-- Premier Beasthide Girdle

						-- Epic set: Field Marshal's Wildhide
						i(273394),	-- Premier Field Marshal's Lunarhide Helmet
						i(273392),	-- Premier Marshal's Lunarhide Spaulders
						i(273395),	-- Premier Field Marshal's Lunarhide Breastplate
						i(273391),	-- Premier Lieutenant Commander's Lunarhide Gauntlets
						i(273393),	-- Premier Marshal's Lunarhide Legguards
						i(273396),	-- Premier Knight-Champion's Lunarhide Boots
						i(273389),	-- Premier Knight-Captain's Lunarhide Bracers
						i(273390),	-- Premier Knight-Captain's Lunarhide Waistguard

						-- Rare set: Lieutenant Commander's Wildhide
						i(272669),	-- Premier Lunarhide Headguard
						i(272670),	-- Premier Lunarhide Shoulders
						i(273371),	-- Premier Lunarhide Tunic
						i(273368),	-- Premier Lunarhide Gloves
						i(272656),	-- Premier Lunarhide Leggings
						i(273370),	-- Premier Lunarhide Footwraps
						i(272835),	-- Premier Lunarhide Armsplints
						i(273369),	-- Premier Lunarhide Girdle
					})),
					cl(HUNTER, bubbleDownSelf({ classes = { HUNTER } }, {
						-- Epic set: Field Marshal's Pursuit
						i(272774),	-- Premier Field Marshal's Chainmail Helm
						i(272777),	-- Premier Marshal's Chainmail Spaulders
						i(272775),	-- Premier Field Marshal's Chainmail Breastplate
						i(272772),	-- Premier Lieutenant Commander's Chainmail Grips
						i(272776),	-- Premier Marshal's Chainmail Legguards
						i(272771),	-- Premier Knight-Champion's Chainmail Boots
						i(272770),	-- Premier Knight-Captain's Chainmail Bracers
						i(272773),	-- Premier Knight-Captain's Chainmail Girdle

						-- Rare set: Lieutenant Commander's Pursuit
						i(272737),	-- Premier Chainmail Helmet
						i(272736),	-- Premier Chainmail Pauldrons
						i(272734),	-- Premier Chainmail Hauberk
						i(272715),	-- Premier Chainmail Gauntlets
						i(272735),	-- Premier Chainmail Leggings
						i(272713),	-- Premier Chainmail Boots
						i(272830),	-- Premier Chainmail Armguards
						i(272712),	-- Premier Chainmail Girdle
					})),
					cl(MAGE, bubbleDownSelf({ classes = { MAGE } }, {
						-- Epic set: Field Marshal's Regalia
						i(272750),	-- Premier Field Marshal's Silk Coronet
						i(272753),	-- Premier Marshal's Silk Spaulders
						i(272752),	-- Premier Field Marshal's Silk Vestments
						i(272749),	-- Premier Lieutenant Commander's Silk Gloves
						i(272751),	-- Premier Marshal's Silk Leggings
						i(272746),	-- Premier Knight-Champion's Silk Footwraps
						i(272747),	-- Premier Knight-Captain's Silk Bracers
						i(272748),	-- Premier Knight-Captain's Silk Sash

						-- Rare set: Lieutenant Commander's Regalia
						i(272725),	-- Premier Silk Crown
						i(272724),	-- Premier Silk Spaulders
						i(272722),	-- Premier Silk Raiment
						i(272703),	-- Premier Silk Gloves
						i(272723),	-- Premier Silk Leggings
						i(272701),	-- Premier Silk Boots
						i(272702),	-- Premier Silk Cuffs
						i(272700),	-- Premier Silk Sash
					})),
					cl(PALADIN, bubbleDownSelf({ classes = { PALADIN } }, {
						-- Epic set: Field Marshal's Aegis
						i(273332),	-- Premier Field Marshal's Luminous Faceguard
						i(273334),	-- Premier Marshal's Luminous Pauldrons
						i(273331),	-- Premier Field Marshal's Luminous Chestplate
						i(273329),	-- Premier Lieutenant Commander's Luminous Gloves
						i(273333),	-- Premier Marshal's Luminous Legplates
						i(273330),	-- Premier Knight-Champion's Luminous Boots
						i(273327),	-- Premier Knight-Captain's Luminous Armguards
						i(273328),	-- Premier Knight-Captain's Luminous Belt

						-- Rare set: Lieutenant Commander's Aegis
						i(272854),	-- Premier Luminous Headguard
						i(272855),	-- Premier Luminous Shoulders
						i(272852),	-- Premier Luminous Breastplate
						i(273363),	-- Premier Luminous Gauntlets
						i(272853),	-- Premier Luminous Leggings
						i(273365),	-- Premier Luminous Sabatons
						i(273364),	-- Premier Luminous Armsplints
						i(273366),	-- Premier Luminous Cinch

						-- Epic set: Field Marshal's Vindication
						i(272783),	-- Premier Field Marshal's Chevalier Faceguard
						i(272785),	-- Premier Marshal's Chevalier Pauldrons
						i(272782),	-- Premier Field Marshal's Chevalier Chestplate
						i(272780),	-- Premier Lieutenant Commander's Chevalier Gloves
						i(272784),	-- Premier Marshal's Chevalier Legplates
						i(272781),	-- Premier Knight-Champion's Chevalier Boots
						i(272778),	-- Premier Knight-Captain's Chevalier Armguards
						i(272779),	-- Premier Knight-Captain's Chevalier Belt

						-- Rare set: Lieutenant Commander's Vindication
						i(272743),	-- Premier Chevalier Headguard
						i(272745),	-- Premier Chevalier Shoulders
						i(272742),	-- Premier Chevalier Breastplate
						i(272719),	-- Premier Chevalier Gauntlets
						i(272744),	-- Premier Chevalier Leggings
						i(272718),	-- Premier Chevalier Sabatons
						i(272721),	-- Premier Chevalier Armsplints
						i(272720),	-- Premier Chevalier Cinch
					})),
					cl(PRIEST, bubbleDownSelf({ classes = { PRIEST } }, {
						-- Epic set: Field Marshal's Investiture
						i(273421),	-- Premier Field Marshal's Mooncloth Headdress
						i(273423),	-- Premier Marshal's Mooncloth Mantle
						i(273424),	-- Premier Field Marshal's Mooncloth Vestments
						i(273427),	-- Premier Lieutenant Commander's Mooncloth Gloves
						i(273422),	-- Premier Marshal's Mooncloth Pants
						i(273426),	-- Premier Knight-Champion's Mooncloth Sandals
						i(273425),	-- Premier Knight-Captain's Mooncloth Bracers
						i(273428),	-- Premier Knight-Captain's Mooncloth Sash

						-- Rare set: Lieutenant Commander's Investiture
						i(272677),	-- Premier Mooncloth Hood
						i(272678),	-- Premier Mooncloth Mantle
						i(273448),	-- Premier Mooncloth Robes
						i(273445),	-- Premier Mooncloth Gloves
						i(273447),	-- Premier Mooncloth Leggings
						i(273443),	-- Premier Mooncloth Boots
						i(273444),	-- Premier Mooncloth Cuffs
						i(273449),	-- Premier Mooncloth Cord

						-- Epic set: Field Marshal's Raiment
						i(272818),	-- Premier Field Marshal's Voidcloth Headdress
						i(272820),	-- Premier Marshal's Voidcloth Mantle
						i(272821),	-- Premier Field Marshal's Voidcloth Vestments
						i(272824),	-- Premier Lieutenant Commander's Voidcloth Gloves
						i(272819),	-- Premier Marshal's Voidcloth Pants
						i(272823),	-- Premier Knight-Champion's Voidcloth Sandals
						i(272822),	-- Premier Knight-Captain's Voidcloth Bracers
						i(272825),	-- Premier Knight-Captain's Voidcloth Sash

						-- Rare set: Lieutenant Commander's Raiment
						i(272814),	-- Premier Voidcloth Diadem
						i(272817),	-- Premier Voidcloth Amice
						i(272816),	-- Premier Voidcloth Robes
						i(272812),	-- Premier Voidcloth Gloves
						i(272815),	-- Premier Voidcloth Leggings
						i(272810),	-- Premier Voidcloth Boots
						i(272811),	-- Premier Voidcloth Cuffs
						i(272813),	-- Premier Voidcloth Cord
					})),
					cl(ROGUE, bubbleDownSelf({ classes = { ROGUE } }, {
						-- Epic set: Field Marshal's Vestments
						i(272764),	-- Premier Field Marshal's Leather Mask
						i(272766),	-- Premier Marshal's Leather Epaulets
						i(272762),	-- Premier Field Marshal's Leather Chestpiece
						i(272763),	-- Premier Lieutenant Commander's Leather Handgrips
						i(272765),	-- Premier Marshal's Leather Leggings
						i(272755),	-- Premier Knight-Champion's Leather Footguards
						i(272769),	-- Premier Knight-Captain's Leather Armsplints
						i(272767),	-- Premier Knight-Captain's Leather Cinch

						-- Rare set: Lieutenant Commander's Vestments
						i(272727),	-- Premier Leather Veil
						i(272729),	-- Premier Leather Spaulders
						i(272726),	-- Premier Leather Armor
						i(272708),	-- Premier Leather Gauntlets
						i(272728),	-- Premier Leather Legguards
						i(272704),	-- Premier Leather Boots
						i(272706),	-- Premier Leather Bracers
						i(272710),	-- Premier Leather Belt
					})),
					cl(SHAMAN, bubbleDownSelf({ classes = { SHAMAN } }, {
						-- Epic set: Field Marshal's Earthshaker
						i(274188),	-- Premier Field Marshal's Flatmail Helm
						i(274190),	-- Premier Marshal's Flatmail Spaulders
						i(274187),	-- Premier Field Marshal's Flatmail Armor
						i(274184),	-- Premier Lieutenant Commander's Flatmail Gauntlets
						i(274189),	-- Premier Marshal's Flatmail Leggings
						i(274183),	-- Premier Knight-Champion's Flatmail Boots
						i(274186),	-- Premier Knight-Captain's Flatmail Bracers
						i(274185),	-- Premier Knight-Captain's Flatmail Waistband

						-- Rare set: Lieutenant Commander's Earthshaker
						i(274196),	-- Premier Flatmail Headguard
						i(274181),	-- Premier Flatmail Shoulders
						i(274194),	-- Premier Flatmail Hauberk
						i(274177),	-- Premier Flatmail Grips
						i(274180),	-- Premier Flatmail Leggings
						i(274192),	-- Premier Flatmail Greaves
						i(274182),	-- Premier Flatmail Wristguards
						i(274214),	-- Premier Flatmail Girdle

						-- Epic set: Field Marshal's Thunderfist
						i(274203),	-- Premier Field Marshal's Scalemail Helm
						i(274205),	-- Premier Marshal's Scalemail Spaulders
						i(274202),	-- Premier Field Marshal's Scalemail Armor
						i(274199),	-- Premier Lieutenant Commander's Scalemail Gauntlets
						i(274204),	-- Premier Marshal's Scalemail Leggings
						i(274198),	-- Premier Knight-Champion's Scalemail Boots
						i(274201),	-- Premier Knight-Captain's Scalemail Bracers
						i(274200),	-- Premier Knight-Captain's Scalemail Waistband

						-- Rare set: Lieutenant Commander's Thunderfist
						i(274178),	-- Premier Scalemail Helm
						i(274197),	-- Premier Scalemail Pauldrons
						i(274179),	-- Premier Scalemail Chestpiece
						i(274193),	-- Premier Scalemail Vices
						i(274195),	-- Premier Scalemail Legguards
						i(274176),	-- Premier Scalemail Walkers
						i(274215),	-- Premier Scalemail Wristguards
						i(274225),	-- Premier Scalemail Girdle

						-- Epic set: Field Marshal's Wartide
						i(274211),	-- Premier Field Marshal's Linkmail Helm
						i(274213),	-- Premier Marshal's Linkmail Spaulders
						i(274210),	-- Premier Field Marshal's Linkmail Armor
						i(274207),	-- Premier Lieutenant Commander's Linkmail Gauntlets
						i(274212),	-- Premier Marshal's Linkmail Leggings
						i(274206),	-- Premier Knight-Champion's Linkmail Boots
						i(274209),	-- Premier Knight-Captain's Linkmail Bracers
						i(274208),	-- Premier Knight-Captain's Linkmail Waistband

						-- Rare set: Lieutenant Commander's Wartide
						i(274218),	-- Premier Linkmail Helm
						i(274222),	-- Premier Linkmail Pauldrons
						i(274219),	-- Premier Linkmail Chestpiece
						i(274220),	-- Premier Linkmail Vices
						i(274221),	-- Premier Linkmail Legguards
						i(274217),	-- Premier Linkmail Walkers
						i(274223),	-- Premier Linkmail Wristguards
						i(274224),	-- Premier Linkmail Girdle
					})),
					cl(WARLOCK, bubbleDownSelf({ classes = { WARLOCK } }, {
						-- Epic set: Field Marshal's Threads
						i(272802),	-- Premier Field Marshal's Dreadweave Coronal
						i(272804),	-- Premier Marshal's Dreadweave Shoulders
						i(272805),	-- Premier Field Marshal's Dreadweave Robe
						i(272808),	-- Premier Lieutenant Commander's Dreadweave Gloves
						i(272803),	-- Premier Marshal's Dreadweave Leggings
						i(272807),	-- Premier Knight-Champion's Dreadweave Boots
						i(272806),	-- Premier Knight-Captain's Dreadweave Cuffs
						i(272809),	-- Premier Knight-Captain's Dreadweave Sash

						-- Rare set: Lieutenant Commander's Threads
						i(272671),	-- Premier Dreadweave Cowl
						i(272801),	-- Premier Dreadweave Mantle
						i(272800),	-- Premier Dreadweave Robe
						i(272796),	-- Premier Dreadweave Gloves
						i(272657),	-- Premier Dreadweave Legguards
						i(272794),	-- Premier Dreadweave Boots
						i(272795),	-- Premier Dreadweave Bracers
						i(272797),	-- Premier Dreadweave Belt
					})),
					cl(WARRIOR, bubbleDownSelf({ classes = { WARRIOR } }, {
						-- Epic set: Field Marshal's Battlegear
						i(272787),	-- Premier Field Marshal's Plate Helm
						i(272789),	-- Premier Marshal's Plate Shoulderguards
						i(272786),	-- Premier Field Marshal's Plate Armor
						i(272793),	-- Premier Lieutenant Commander's Plate Gauntlets
						i(272788),	-- Premier Marshal's Plate Legguards
						i(272792),	-- Premier Knight-Champion's Plate Boots
						i(272790),	-- Premier Knight-Captain's Plate Bracers
						i(272791),	-- Premier Knight-Captain's Plate Girdle

						-- Rare set: Lieutenant Commander's Battlegear
						i(272738),	-- Premier Plate Helm
						i(272741),	-- Premier Plate Pauldrons
						i(272739),	-- Premier Plate Chestguard
						i(272717),	-- Premier Plate Gauntlets
						i(272740),	-- Premier Plate Leggings
						i(272716),	-- Premier Plate Boots
						i(272828),	-- Premier Plate Wristguards
						i(273325),	-- Premier Plate Girdle
					})),

					-- TODO: confirm which faction sells which Sergeant's Cape/Cloak pair (assumed from the item ID range)
					i(272699),	-- Premier Sergeant's Cape
					i(272698),	-- Premier Sergeant's Cloak
					i(274969),	-- Premier Master Sergeant's Insignia
				},
			}),
			n(FACTION_HEADER_HORDE, {
				symselector=SymSelector.PREMIER_PVP_HORDE,
				races = HORDE_ONLY,
				groups = {
					n(WEAPONS, {
						i(278469),	-- Premier High Warlord's Barricade
						i(272593),	-- Premier High Warlord's Battle Axe
						i(272681),	-- Premier High Warlord's Battle Mace
						i(272452),	-- Premier High Warlord's Blade
						i(272600),	-- Premier High Warlord's Bludgeon
						i(272592),	-- Premier High Warlord's Cleaver
						i(272595),	-- Premier High Warlord's Crossbow
						i(272682),	-- Premier High Warlord's Destroyer
						i(272604),	-- Premier High Warlord's Greatsword
						i(272598),	-- Premier High Warlord's Left Claw
						i(272602),	-- Premier High Warlord's Pig Sticker
						i(272601),	-- Premier High Warlord's Pulverizer
						i(272684),	-- Premier High Warlord's Quickblade
						i(272596),	-- Premier High Warlord's Razor
						i(272594),	-- Premier High Warlord's Recurve
						i(272597),	-- Premier High Warlord's Right Claw
						i(272591),	-- Premier High Warlord's Shield Wall
						i(272683),	-- Premier High Warlord's Spellblade
						i(272599),	-- Premier High Warlord's Street Sweeper
						i(272685),	-- Premier High Warlord's Tome of Destruction
						i(272686),	-- Premier High Warlord's Tome of Mending
						i(272603),	-- Premier High Warlord's War Staff
					}),
					cl(DRUID, bubbleDownSelf({ classes = { DRUID } }, {
						-- Epic set: Warlord's Refuge
						i(273414),	-- Premier Warlord's Kodohide Helmet
						i(273415),	-- Premier General's Kodohide Epaulets
						i(273413),	-- Premier Warlord's Kodohide Hauberk
						i(273419),	-- Premier Champion's Kodohide Gloves
						i(273416),	-- Premier General's Kodohide Leggings
						i(273418),	-- Premier Centurion's Kodohide Boots
						i(273417),	-- Premier Legionnaire's Kodohide Bracers
						i(273420),	-- Premier Legionnaire's Kodohide Belt

						-- Rare set: Champion's Refuge
						i(272641),	-- Premier Kodohide Headguard
						i(272642),	-- Premier Kodohide Shoulders
						i(272626),	-- Premier Kodohide Chestpiece
						i(272464),	-- Premier Kodohide Gauntlets
						i(272627),	-- Premier Kodohide Leggings
						i(272606),	-- Premier Kodohide Treads
						i(272461),	-- Premier Kodohide Armguards
						i(273367),	-- Premier Kodohide Waistband

						-- Epic set: Warlord's Sanctuary
						i(272515),	-- Premier Warlord's Dragonhide Helmet
						i(272516),	-- Premier General's Dragonhide Epaulets
						i(272514),	-- Premier Warlord's Dragonhide Hauberk
						i(272520),	-- Premier Champion's Dragonhide Gloves
						i(272517),	-- Premier General's Dragonhide Leggings
						i(272519),	-- Premier Centurion's Dragonhide Boots
						i(272518),	-- Premier Legionnaire's Dragonhide Bracers
						i(272521),	-- Premier Legionnaire's Dragonhide Belt

						-- Rare set: Champion's Sanctuary
						i(272471),	-- Premier Dragonhide Helm
						i(272469),	-- Premier Dragonhide Spaulders
						i(272472),	-- Premier Dragonhide Breastplate
						i(272614),	-- Premier Dragonhide Grips
						i(272470),	-- Premier Dragonhide Trousers
						i(272462),	-- Premier Dragonhide Boots
						i(272582),	-- Premier Dragonhide Armguards
						i(272463),	-- Premier Dragonhide Waistband

						-- Epic set: Warlord's Wildhide
						i(273406),	-- Premier Warlord's Wyrmhide Helmet
						i(273407),	-- Premier General's Wyrmhide Epaulets
						i(273405),	-- Premier Warlord's Wyrmhide Hauberk
						i(273411),	-- Premier Champion's Wyrmhide Gloves
						i(273408),	-- Premier General's Wyrmhide Leggings
						i(273410),	-- Premier Centurion's Wyrmhide Boots
						i(273409),	-- Premier Legionnaire's Wyrmhide Bracers
						i(273412),	-- Premier Legionnaire's Wyrmhide Belt

						-- Rare set: Champion's Wildhide
						i(273386),	-- Premier Wyrmhide Headguard
						i(273387),	-- Premier Wyrmhide Shoulders
						i(273384),	-- Premier Wyrmhide Chestpiece
						i(273382),	-- Premier Wyrmhide Gauntlets
						i(273385),	-- Premier Wyrmhide Leggings
						i(273383),	-- Premier Wyrmhide Treads
						i(273381),	-- Premier Wyrmhide Armguards
						i(273388),	-- Premier Wyrmhide Waistband
					})),
					cl(HUNTER, bubbleDownSelf({ classes = { HUNTER } }, {
						-- Epic set: Warlord's Pursuit
						i(272531),	-- Premier Warlord's Chain Helmet
						i(272533),	-- Premier General's Chain Shoulders
						i(272530),	-- Premier Warlord's Chain Chestpiece
						i(272536),	-- Premier Champion's Chain Gloves
						i(272532),	-- Premier General's Chain Legguards
						i(272534),	-- Premier Centurion's Chain Sabatons
						i(272535),	-- Premier Legionnaire's Chain Wristguards
						i(272537),	-- Premier Legionnaire's Chain Girdle

						-- Rare set: Champion's Pursuit
						i(272640),	-- Premier Chain Shoulders
						i(272490),	-- Premier Chain Breastplate
						i(272495),	-- Premier Chain Gauntlets
						i(272492),	-- Premier Chain Leggings
						i(272496),	-- Premier Chain Boots
						i(272483),	-- Premier Chain Bracers
						i(272494),	-- Premier Chain Girdle
					})),
					cl(MAGE, bubbleDownSelf({ classes = { MAGE } }, {
						-- Epic set: Warlord's Regalia
						i(272498),	-- Premier Warlord's Magus Cowl
						i(272501),	-- Premier General's Magus Amice
						i(272500),	-- Premier Warlord's Magus Raiment
						i(272505),	-- Premier Champion's Magus Handguards
						i(272499),	-- Premier General's Magus Trousers
						i(272504),	-- Premier Centurion's Magus Boots
						i(272503),	-- Premier Legionnaire's Magus Cuffs
						i(272502),	-- Premier Legionnaire's Magus Sash

						-- Rare set: Champion's Regalia
						i(272457),	-- Premier Magus Hood
						i(272680),	-- Premier Magus Mantle
						i(272459),	-- Premier Magus Robes
						i(272455),	-- Premier Magus Gloves
						i(272458),	-- Premier Magus Pants
						i(272453),	-- Premier Magus Footwraps
						i(272454),	-- Premier Magus Cuffs
						i(272456),	-- Premier Magus Belt
					})),
					cl(PALADIN, bubbleDownSelf({ classes = { PALADIN } }, {
						-- Epic set: Warlord's Aegis
						i(274253),	-- Premier Warlord's Lamellar Faceguard
						i(274255),	-- Premier General's Lamellar Pauldrons
						i(274252),	-- Premier Warlord's Lamellar Chestplate
						i(274250),	-- Premier Champion's Lamellar Gloves
						i(274254),	-- Premier General's Lamellar Legplates
						i(274251),	-- Premier Centurion's Lamellar Boots
						i(274248),	-- Premier Legionnaire's Lamellar Armguards
						i(274249),	-- Premier Legionnaire's Lamellar Belt

						-- Rare set: Champion's Aegis
						i(274246),	-- Premier Lamellar Headguard
						i(274247),	-- Premier Lamellar Shoulders
						i(274244),	-- Premier Lamellar Breastplate
						i(274256),	-- Premier Lamellar Gauntlets
						i(274245),	-- Premier Lamellar Leggings
						i(274258),	-- Premier Lamellar Sabatons
						i(274257),	-- Premier Lamellar Armsplints
						i(274259),	-- Premier Lamellar Cinch

						-- Epic set: Warlord's Vindication
						i(274239),	-- Premier Warlord's Scaled Faceguard
						i(274241),	-- Premier General's Scaled Pauldrons
						i(274238),	-- Premier Warlord's Scaled Chestplate
						i(274236),	-- Premier Champion's Scaled Gloves
						i(274240),	-- Premier General's Scaled Legplates
						i(274237),	-- Premier Centurion's Scaled Boots
						i(274234),	-- Premier Legionnaire's Scaled Armguards
						i(274235),	-- Premier Legionnaire's Scaled Belt

						-- Rare set: Champion's Vindication
						i(274231),	-- Premier Scaled Headguard
						i(274233),	-- Premier Scaled Shoulders
						i(274230),	-- Premier Scaled Breastplate
						i(274227),	-- Premier Scaled Gauntlets
						i(274232),	-- Premier Scaled Leggings
						i(274226),	-- Premier Scaled Sabatons
						i(274229),	-- Premier Scaled Armsplints
						i(274228),	-- Premier Scaled Cinch
					})),
					cl(PRIEST, bubbleDownSelf({ classes = { PRIEST } }, {
						-- Epic set: Warlord's Investiture
						i(273434),	-- Premier Warlord's Silken Cowl
						i(273433),	-- Premier General's Silken Mantle
						i(273435),	-- Premier Warlord's Silken Robes
						i(273431),	-- Premier Champion's Silken Gloves
						i(273436),	-- Premier General's Silken Leggings
						i(273429),	-- Premier Centurion's Silken Boots
						i(273430),	-- Premier Legionnaire's Silken Bracers
						i(273432),	-- Premier Legionnaire's Silken Cinch

						-- Rare set: Champion's Investiture
						i(272649),	-- Premier Silken Hood
						i(272650),	-- Premier Silken Mantle
						i(272634),	-- Premier Silken Tunic
						i(272619),	-- Premier Silken Handwraps
						i(272663),	-- Premier Silken Legguards
						i(272611),	-- Premier Silken Walkers
						i(273450),	-- Premier Silken Cuffs
						i(275437),	-- Premier Silken Sash

						-- Epic set: Warlord's Raiment
						i(272575),	-- Premier Warlord's Satin Cowl
						i(272574),	-- Premier General's Satin Mantle
						i(272576),	-- Premier Warlord's Satin Robes
						i(272572),	-- Premier Champion's Satin Gloves
						i(272577),	-- Premier General's Satin Leggings
						i(272570),	-- Premier Centurion's Satin Boots
						i(272571),	-- Premier Legionnaire's Satin Bracers
						i(272573),	-- Premier Legionnaire's Satin Cinch

						-- Rare set: Champion's Raiment
						i(272562),	-- Premier Satin Cowl
						i(272565),	-- Premier Satin Shoulderpads
						i(272564),	-- Premier Satin Vestments
						i(272569),	-- Premier Satin Gloves
						i(272563),	-- Premier Satin Trousers
						i(272568),	-- Premier Satin Boots
						i(272567),	-- Premier Satin Cuffs
						i(272566),	-- Premier Satin Sash
					})),
					cl(ROGUE, bubbleDownSelf({ classes = { ROGUE } }, {
						-- Epic set: Warlord's Vestments
						i(272526),	-- Premier Warlord's Shadowhide Helm
						i(272527),	-- Premier General's Shadowhide Spaulders
						i(272528),	-- Premier Warlord's Shadowhide Breastplate
						i(272525),	-- Premier Champion's Shadowhide Mitts
						i(272529),	-- Premier General's Shadowhide Legguards
						i(272523),	-- Premier Centurion's Shadowhide Treads
						i(272524),	-- Premier Legionnaire's Shadowhide Armsplints
						i(272522),	-- Premier Legionnaire's Shadowhide Girdle

						-- Rare set: Champion's Vestments
						i(272474),	-- Premier Shadowhide Headguard
						i(272475),	-- Premier Shadowhide Mantle
						i(272473),	-- Premier Shadowhide Hauberk
						i(272467),	-- Premier Shadowhide Vices
						i(272476),	-- Premier Shadowhide Leggings
						i(272608),	-- Premier Shadowhide Walkers
						i(272465),	-- Premier Shadowhide Armguards
						i(272468),	-- Premier Shadowhide Girdle
					})),
					cl(SHAMAN, bubbleDownSelf({ classes = { SHAMAN } }, {
						-- Epic set: Warlord's Earthshaker
						i(272543),	-- Premier Warlord's Linked Helm
						i(272545),	-- Premier General's Linked Spaulders
						i(272542),	-- Premier Warlord's Linked Armor
						i(272539),	-- Premier Champion's Linked Gauntlets
						i(272544),	-- Premier General's Linked Leggings
						i(272538),	-- Premier Centurion's Linked Boots
						i(272541),	-- Premier Legionnaire's Linked Bracers
						i(272540),	-- Premier Legionnaire's Linked Waistband

						-- Rare set: Champion's Earthshaker
						i(272647),	-- Premier Linked Headguard
						i(272489),	-- Premier Linked Shoulders
						i(272625),	-- Premier Linked Hauberk
						i(272485),	-- Premier Linked Grips
						i(272488),	-- Premier Linked Leggings
						i(272609),	-- Premier Linked Greaves
						i(272497),	-- Premier Linked Wristguards
						i(273352),	-- Premier Linked Girdle

						-- Epic set: Warlord's Thunderfist
						i(273341),	-- Premier Warlord's Mail Helm
						i(273343),	-- Premier General's Mail Spaulders
						i(273340),	-- Premier Warlord's Mail Armor
						i(273337),	-- Premier Champion's Mail Gauntlets
						i(273342),	-- Premier General's Mail Leggings
						i(273336),	-- Premier Centurion's Mail Boots
						i(273339),	-- Premier Legionnaire's Mail Bracers
						i(273338),	-- Premier Legionnaire's Mail Waistband

						-- Rare set: Champion's Thunderfist
						i(272486),	-- Premier Mail Helm
						i(272648),	-- Premier Mail Pauldrons
						i(272487),	-- Premier Mail Chestpiece
						i(272617),	-- Premier Mail Vices
						i(272636),	-- Premier Mail Legguards
						i(272484),	-- Premier Mail Walkers
						i(273353),	-- Premier Mail Wristguards
						i(273372),	-- Premier Mail Girdle

						-- Epic set: Warlord's Wartide
						i(273349),	-- Premier Warlord's Ringmail Helm
						i(273351),	-- Premier General's Ringmail Spaulders
						i(273348),	-- Premier Warlord's Ringmail Armor
						i(273345),	-- Premier Champion's Ringmail Gauntlets
						i(273350),	-- Premier General's Ringmail Leggings
						i(273344),	-- Premier Centurion's Ringmail Boots
						i(273347),	-- Premier Legionnaire's Ringmail Bracers
						i(273346),	-- Premier Legionnaire's Ringmail Waistband

						-- Rare set: Champion's Wartide
						i(273356),	-- Premier Ringmail Helm
						i(273360),	-- Premier Ringmail Pauldrons
						i(273357),	-- Premier Ringmail Chestpiece
						i(273358),	-- Premier Ringmail Vices
						i(273359),	-- Premier Ringmail Legguards
						i(273355),	-- Premier Ringmail Walkers
						i(273361),	-- Premier Ringmail Wristguards
						i(273362),	-- Premier Ringmail Girdle
					})),
					cl(WARLOCK, bubbleDownSelf({ classes = { WARLOCK } }, {
						-- Epic set: Warlord's Threads
						i(272559),	-- Premier Warlord's Felweave Hood
						i(272558),	-- Premier General's Felweave Mantle
						i(272560),	-- Premier Warlord's Felweave Robe
						i(272556),	-- Premier Champion's Felweave Gloves
						i(272561),	-- Premier General's Felweave Pants
						i(272554),	-- Premier Centurion's Felweave Boots
						i(272555),	-- Premier Legionnaire's Felweave Bracers
						i(272557),	-- Premier Legionnaire's Felweave Belt

						-- Rare set: Champion's Threads
						i(272643),	-- Premier Felweave Cowl
						i(272549),	-- Premier Felweave Shoulders
						i(272548),	-- Premier Felweave Robe
						i(272553),	-- Premier Felweave Gloves
						i(272630),	-- Premier Felweave Legguards
						i(272552),	-- Premier Felweave Boots
						i(272551),	-- Premier Felweave Bracers
						i(272550),	-- Premier Felweave Belt
					})),
					cl(WARRIOR, bubbleDownSelf({ classes = { WARRIOR } }, {
						-- Epic set: Warlord's Battlegear
						i(272507),	-- Premier Warlord's Mortarplate Headpiece
						i(272509),	-- Premier General's Mortarplate Shoulders
						i(272506),	-- Premier Warlord's Mortarplate Armor
						i(272513),	-- Premier Champion's Mortarplate Gauntlets
						i(272508),	-- Premier General's Mortarplate Leggings
						i(272510),	-- Premier Centurion's Mortarplate Boots
						i(272511),	-- Premier Legionnaire's Mortarplate Armguards
						i(272512),	-- Premier Legionnaire's Mortarplate Girdle

						-- Rare set: Champion's Battlegear
						i(272480),	-- Premier Mortarplate Headguard
						i(272637),	-- Premier Mortarplate Shoulders
						i(272479),	-- Premier Mortarplate Armor
						i(272478),	-- Premier Mortarplate Gloves
						i(272481),	-- Premier Mortarplate Legguards
						i(272477),	-- Premier Mortarplate Boots
						i(272579),	-- Premier Mortarplate Bracers
						i(273324),	-- Premier Mortarplate Girdle
					})),

					-- TODO: confirm which faction sells which Sergeant's Cape/Cloak pair (assumed from the item ID range)
					i(272589),	-- Premier Sergeant's Cape
					i(272578),	-- Premier Sergeant's Cloak
					i(274968),	-- Premier Senior Sergeant's Insignia
				},
			}),
		},
	}),
});
