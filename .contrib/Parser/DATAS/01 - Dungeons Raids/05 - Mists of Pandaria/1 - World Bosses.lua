-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	n(WORLD_BOSSES, {
		["isRaid"] = true,
		["g"] = sharedData({
			["isRaid"] = true,
			["isWeekly"] = true,
		},{
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, e(814, bubbleDownSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Nalak, The Storm Lord
				["crs"] = { 69099 },	-- Nalak, the Storm Lord
				["questID"] = 32518,
				["coord"] = { 60.0, 37.7, ISLE_OF_THUNDER },
				["maps"] = {	-- all Isle of Thunder maps
					505,	-- Lightning Vein Mine
					506,	-- The Swollen Vault
					516,	-- Scenario [Phase 1]
					517,	-- Lightning Vein Mine
				},
				["g"] = {
					ach(8137),	-- Nalak Guild Run
					ach(8028),	-- Praise the Sun!
					-- Mounts, Caches, and Quest Items!
					i(95057),	-- Thundering Cobalt Cloud Serpent (MOUNT!)
					i(95602, {	-- Stormtouched Cache
						i(95972),	-- Abandoned Zandalari Arrowlinks
						i(95976),	-- Abandoned Zandalari Bucklebreaker
						i(95961),	-- Abandoned Zandalari Firecord
						i(95975),	-- Abandoned Zandalari Goreplate
						i(95974),	-- Abandoned Zandalari Greatbelt
						i(95971),	-- Abandoned Zandalari Moonstrap
						i(95962),	-- Abandoned Zandalari Shadowgirdle
						i(95970),	-- Abandoned Zandalari Silentbelt
						i(95973),	-- Abandoned Zandalari Waterchain
						i(95979),	-- Columnbreaker Stompers [Crieve got November 24, 2018 on stream]
						i(95966),	-- Deeproot Treads
						i(95965),	-- Home-Warding Slippers [Yunim - 2023-02-23]
						i(95978),	-- Locksmasher Greaves [Yunim - 2021-12-04]
						i(95963),	-- Silentflame Sandals
						i(95968),	-- Vaultwalker Sabatons [Yunim - 2023-02-xx]
						i(94295),	-- Primal Egg
					}),
					--[[
					i(95602, bubbleDown({ ["timeline"] = { ADDED_5_0_4, REMOVED_9_0_1 } }, {	-- Stormtouched Cache Pet Version -- Those Pets got removed, unknown when exactly.
						i(44984),	-- Ammen Vale Lashling
						i(54436),	-- Blue Clockwork Rocket Bot
						i(44970),	-- Dun Morogh Cub
						i(44973),	-- Durotar Scorpion
						i(67282),	-- Elementium Geode
						i(44974),	-- Elwynn Lamb
						i(44982),	-- Enchanted Broom
						i(64403),	-- Fox Kit
						i(43698),	-- Giant Sewer Rat
						i(45002),	-- Mechanopeep
						i(44980),	-- Mulgore Hatchling
						i(69992),	-- Shimmering Wyrmling
						i(44965),	-- Teldrassil Sproutling
						i(69991),	-- Tiny Sporebat
						i(44971),	-- Tirisfal Batling
						i(10360),	-- Black Kingsnake
						i(29960),	-- Captured Firefly
						i(8491),	-- Cat Carrier (Black Tabby)
						i(46398),	-- Cat Carrier (Calico Cat)
						i(8487),	-- Cat Carrier (Orange Tabby)
						i(8488),	-- Cat Carrier (Silver Tabby)
						i(10822),	-- Dark Whelpling
						i(29953),	-- Golden Dragonhawk Hatchling
						i(48116),	-- Gundrak Hatchling
						i(48118),	-- Leaping Hatchling
						i(48120),	-- Obsidian Hatchling
						i(8496),	-- Parrot Cage (Cockatiel)
						i(8492),	-- Parrot Cage (Green Wing Macaw)
						i(8495),	-- Parrot Cage (Senegal)
						i(48124),	-- Razormaw Hatchling
						i(48126),	-- Razzashi Hatchling
					})),
					--]]
					-- Necks
					i(91414),	-- Tyrannical Gladiator's Choker of Accuracy
					i(94354),	-- Tyrannical Gladiator's Choker of Accuracy
					i(91413),	-- Tyrannical Gladiator's Choker of Proficiency
					i(94465),	-- Tyrannical Gladiator's Choker of Proficiency
					i(91102),	-- Tyrannical Gladiator's Necklace of Proficiency
					i(94394),	-- Tyrannical Gladiator's Necklace of Proficiency
					i(91103),	-- Tyrannical Gladiator's Necklace of Prowess
					i(94395),	-- Tyrannical Gladiator's Necklace of Prowess
					i(91136),	-- Tyrannical Gladiator's Pendant of Alacrity
					i(94473),	-- Tyrannical Gladiator's Pendant of Alacrity
					i(91135),	-- Tyrannical Gladiator's Pendant of Cruelty
					i(94489),	-- Tyrannical Gladiator's Pendant of Cruelty
					i(91137),	-- Tyrannical Gladiator's Pendant of Meditation
					i(94452),	-- Tyrannical Gladiator's Pendant of Meditation
					-- Backs
					i(91100),	-- Tyrannical Gladiator's Cape of Cruelty
					i(94421),	-- Tyrannical Gladiator's Cape of Cruelty
					i(91101),	-- Tyrannical Gladiator's Cape of Prowess
					i(94355),	-- Tyrannical Gladiator's Cape of Prowess
					i(91411),	-- Tyrannical Gladiator's Cloak of Alacrity
					i(94485),	-- Tyrannical Gladiator's Cloak of Alacrity
					i(91412),	-- Tyrannical Gladiator's Cloak of Prowess
					i(94486),	-- Tyrannical Gladiator's Cloak of Prowess
					i(91124),	-- Tyrannical Gladiator's Drape of Cruelty
					i(94383),	-- Tyrannical Gladiator's Drape of Cruelty
					i(91126),	-- Tyrannical Gladiator's Drape of Meditation
					i(94472),	-- Tyrannical Gladiator's Drape of Meditation
					i(91125),	-- Tyrannical Gladiator's Drape of Prowess
					i(94488),	-- Tyrannical Gladiator's Drape of Prowess
					-- Wrists
					i(91357),	-- Tyrannical Gladiator's Armbands of Meditation
					i(94337),	-- Tyrannical Gladiator's Armbands of Meditation
					i(91356),	-- Tyrannical Gladiator's Armbands of Prowess
					i(94379),	-- Tyrannical Gladiator's Armbands of Prowess
					i(91306),	-- Tyrannical Gladiator's Armplates of Alacrity
					i(94487),	-- Tyrannical Gladiator's Armplates of Alacrity
					i(91305),	-- Tyrannical Gladiator's Armplates of Proficiency
					i(94418),	-- Tyrannical Gladiator's Armplates of Proficiency
					i(91246),	-- Tyrannical Gladiator's Armwraps of Accuracy
					i(94427),	-- Tyrannical Gladiator's Armwraps of Accuracy
					i(91339),	-- Tyrannical Gladiator's Armwraps of Alacrity
					i(94470),	-- Tyrannical Gladiator's Armwraps of Alacrity
					i(91171),	-- Tyrannical Gladiator's Bindings of Meditation
					i(94407),	-- Tyrannical Gladiator's Bindings of Meditation
					i(91188),	-- Tyrannical Gladiator's Bindings of Prowess
					i(94439),	-- Tyrannical Gladiator's Bindings of Prowess
					i(91286),	-- Tyrannical Gladiator's Bracers of Meditation
					i(94481),	-- Tyrannical Gladiator's Bracers of Meditation
					i(91285),	-- Tyrannical Gladiator's Bracers of Prowess
					i(94411),	-- Tyrannical Gladiator's Bracers of Prowess
					i(91121),	-- Tyrannical Gladiator's Cuffs of Accuracy
					i(94403),	-- Tyrannical Gladiator's Cuffs of Accuracy
					i(91123),	-- Tyrannical Gladiator's Cuffs of Meditation
					i(94380),	-- Tyrannical Gladiator's Cuffs of Meditation
					i(91122),	-- Tyrannical Gladiator's Cuffs of Prowess
					i(94449),	-- Tyrannical Gladiator's Cuffs of Prowess
					i(91221),	-- Tyrannical Gladiator's Wristguards of Accuracy
					i(94469),	-- Tyrannical Gladiator's Wristguards of Accuracy
					i(91220),	-- Tyrannical Gladiator's Wristguards of Alacrity
					i(94404),	-- Tyrannical Gladiator's Wristguards of Alacrity
					-- Hands
					i(95276),	-- Fire-Charm Gauntlets
					i(95266),	-- Fire-Charm Grips
					i(95270),	-- Fire-Charm Handwraps
					i(95226),	-- Gauntlets of the All-Consuming Maw
					i(95332),	-- Gauntlets of the Last Mogu
					i(95260),	-- Gloves of the Chromatic Hydra
					i(95300),	-- Gloves of the Exorcist
					i(95245),	-- Gloves of the Haunted Forest
					i(95325),	-- Gloves of the Thousandfold Hells
					i(95321),	-- Gloves of the Witch Doctor
					i(95236),	-- Grips of the Haunted Forest
					i(95316),	-- Grips of the Witch Doctor
					i(95231),	-- Handguards of the All-Consuming Maw
					i(95251),	-- Handguards of the Haunted Forest
					i(95336),	-- Handguards of the Last Mogu
					i(95295),	-- Handwraps of the Exorcist
					i(95240),	-- Handwraps of the Haunted Forest
					i(95311),	-- Handwraps of the Witch Doctor
					i(95281),	-- Lightning Emperor's Gauntlets
					i(95286),	-- Lightning Emperor's Gloves
					i(95291),	-- Lightning Emperor's Handguards
					i(95306),	-- Nine-Tailed Gloves
					i(95256),	-- Saurok Stalker's Gloves
					i(91224),	-- Tyrannical Gladiator's Chain Gauntlets
					i(94453),	-- Tyrannical Gladiator's Chain Gauntlets
					i(91257),	-- Tyrannical Gladiator's Copperskin Gloves
					i(94340),	-- Tyrannical Gladiator's Copperskin Gloves
					i(91157),	-- Tyrannical Gladiator's Dragonhide Gloves
					i(94455),	-- Tyrannical Gladiator's Dragonhide Gloves
					i(91149),	-- Tyrannical Gladiator's Dreadplate Gauntlets
					i(94364),	-- Tyrannical Gladiator's Dreadplate Gauntlets
					i(91420),	-- Tyrannical Gladiator's Felweave Handguards
					i(94441),	-- Tyrannical Gladiator's Felweave Handguards
					i(91247),	-- Tyrannical Gladiator's Ironskin Gloves
					i(94391),	-- Tyrannical Gladiator's Ironskin Gloves
					i(91172),	-- Tyrannical Gladiator's Kodohide Gloves
					i(94371),	-- Tyrannical Gladiator's Kodohide Gloves
					i(91342),	-- Tyrannical Gladiator's Leather Gloves
					i(94377),	-- Tyrannical Gladiator's Leather Gloves
					i(91370),	-- Tyrannical Gladiator's Linked Gauntlets
					i(94458),	-- Tyrannical Gladiator's Linked Gauntlets
					i(91382),	-- Tyrannical Gladiator's Mail Gauntlets
					i(94408),	-- Tyrannical Gladiator's Mail Gauntlets
					i(91309),	-- Tyrannical Gladiator's Mooncloth Gloves
					i(94328),	-- Tyrannical Gladiator's Mooncloth Gloves
					i(91289),	-- Tyrannical Gladiator's Ornamented Gloves
					i(94438),	-- Tyrannical Gladiator's Ornamented Gloves
					i(91432),	-- Tyrannical Gladiator's Plate Gauntlets
					i(94331),	-- Tyrannical Gladiator's Plate Gauntlets
					i(91360),	-- Tyrannical Gladiator's Ringmail Gauntlets
					i(94490),	-- Tyrannical Gladiator's Ringmail Gauntlets
					i(91319),	-- Tyrannical Gladiator's Satin Gloves
					i(94423),	-- Tyrannical Gladiator's Satin Gloves
					i(91269),	-- Tyrannical Gladiator's Scaled Gauntlets
					i(94343),	-- Tyrannical Gladiator's Scaled Gauntlets
					i(91232),	-- Tyrannical Gladiator's Silk Handguards
					i(94451),	-- Tyrannical Gladiator's Silk Handguards
					i(91189),	-- Tyrannical Gladiator's Wyrmhide Gloves
					i(94412),	-- Tyrannical Gladiator's Wyrmhide Gloves
					-- Waists
					i(91184),	-- Tyrannical Gladiator's Belt of Cruelty
					i(94410),	-- Tyrannical Gladiator's Belt of Cruelty
					i(91167),	-- Tyrannical Gladiator's Belt of Meditation
					i(94491),	-- Tyrannical Gladiator's Belt of Meditation
					i(91277),	-- Tyrannical Gladiator's Clasp of Cruelty
					i(94480),	-- Tyrannical Gladiator's Clasp of Cruelty
					i(91279),	-- Tyrannical Gladiator's Clasp of Meditation
					i(94464),	-- Tyrannical Gladiator's Clasp of Meditation
					i(91111),	-- Tyrannical Gladiator's Cord of Accuracy
					i(94376),	-- Tyrannical Gladiator's Cord of Accuracy
					i(91109),	-- Tyrannical Gladiator's Cord of Cruelty
					i(94400),	-- Tyrannical Gladiator's Cord of Cruelty
					i(91113),	-- Tyrannical Gladiator's Cord of Meditation
					i(94425),	-- Tyrannical Gladiator's Cord of Meditation
					i(91297),	-- Tyrannical Gladiator's Girdle of Accuracy
					i(94353),	-- Tyrannical Gladiator's Girdle of Accuracy
					i(91299),	-- Tyrannical Gladiator's Girdle of Prowess
					i(94440),	-- Tyrannical Gladiator's Girdle of Prowess
					i(91214),	-- Tyrannical Gladiator's Links of Accuracy
					i(94358),	-- Tyrannical Gladiator's Links of Accuracy
					i(91212),	-- Tyrannical Gladiator's Links of Cruelty
					i(94330),	-- Tyrannical Gladiator's Links of Cruelty
					i(91335),	-- Tyrannical Gladiator's Waistband of Accuracy
					i(94424),	-- Tyrannical Gladiator's Waistband of Accuracy
					i(91242),	-- Tyrannical Gladiator's Waistband of Cruelty
					i(94360),	-- Tyrannical Gladiator's Waistband of Cruelty
					i(91378),	-- Tyrannical Gladiator's Waistguard of Cruelty
					i(94393),	-- Tyrannical Gladiator's Waistguard of Cruelty
					i(91350),	-- Tyrannical Gladiator's Waistguard of Meditation
					i(94382),	-- Tyrannical Gladiator's Waistguard of Meditation
					-- Legs
					i(95253),	-- Breeches of the Haunted Forest
					i(95268),	-- Fire-Charm Leggings
					i(95278),	-- Fire-Charm Legguards
					i(95272),	-- Fire-Charm Legwraps
					i(95228),	-- Greaves of the All-Consuming Maw
					i(95323),	-- Kilt of the Witch Doctor
					i(95262),	-- Leggings of the Chromatic Hydra
					i(95302),	-- Leggings of the Exorcist
					i(95247),	-- Leggings of the Haunted Forest
					i(95327),	-- Leggings of the Thousandfold Hells
					i(95233),	-- Legguards of the All-Consuming Maw
					i(95238),	-- Legguards of the Haunted Forest
					i(95338),	-- Legguards of the Last Mogu
					i(95318),	-- Legguards of the Witch Doctor
					i(95333),	-- Legplates of the Last Mogu
					i(95297),	-- Legwraps of the Exorcist
					i(95242),	-- Legwraps of the Haunted Forest
					i(95313),	-- Legwraps of the Witch Doctor
					i(95288),	-- Lightning Emperor's Greaves
					i(95293),	-- Lightning Emperor's Legguards
					i(95283),	-- Lightning Emperor's Legplates
					i(95308),	-- Nine-Tailed Legguards
					i(95258),	-- Saurok Stalker's Legguards
					i(91228),	-- Tyrannical Gladiator's Chain Leggings
					i(94384),	-- Tyrannical Gladiator's Chain Leggings
					i(91261),	-- Tyrannical Gladiator's Copperskin Legguards
					i(94478),	-- Tyrannical Gladiator's Copperskin Legguards
					i(91161),	-- Tyrannical Gladiator's Dragonhide Legguards
					i(94368),	-- Tyrannical Gladiator's Dragonhide Legguards
					i(91153),	-- Tyrannical Gladiator's Dreadplate Legguards
					i(94365),	-- Tyrannical Gladiator's Dreadplate Legguards
					i(91424),	-- Tyrannical Gladiator's Felweave Trousers
					i(94471),	-- Tyrannical Gladiator's Felweave Trousers
					i(91251),	-- Tyrannical Gladiator's Ironskin Legguards
					i(94370),	-- Tyrannical Gladiator's Ironskin Legguards
					i(91176),	-- Tyrannical Gladiator's Kodohide Legguards
					i(94477),	-- Tyrannical Gladiator's Kodohide Legguards
					i(91346),	-- Tyrannical Gladiator's Leather Legguards
					i(94446),	-- Tyrannical Gladiator's Leather Legguards
					i(91374),	-- Tyrannical Gladiator's Linked Leggings
					i(94494),	-- Tyrannical Gladiator's Linked Leggings
					i(91386),	-- Tyrannical Gladiator's Mail Leggings
					i(94497),	-- Tyrannical Gladiator's Mail Leggings
					i(91313),	-- Tyrannical Gladiator's Mooncloth Leggings
					i(94420),	-- Tyrannical Gladiator's Mooncloth Leggings
					i(91293),	-- Tyrannical Gladiator's Ornamented Legplates
					i(94484),	-- Tyrannical Gladiator's Ornamented Legplates
					i(91436),	-- Tyrannical Gladiator's Plate Legguards
					i(94448),	-- Tyrannical Gladiator's Plate Legguards
					i(91364),	-- Tyrannical Gladiator's Ringmail Leggings
					i(94435),	-- Tyrannical Gladiator's Ringmail Leggings
					i(91323),	-- Tyrannical Gladiator's Satin Leggings
					i(94334),	-- Tyrannical Gladiator's Satin Leggings
					i(91273),	-- Tyrannical Gladiator's Scaled Legguards
					i(94496),	-- Tyrannical Gladiator's Scaled Legguards
					i(91236),	-- Tyrannical Gladiator's Silk Trousers
					i(94362),	-- Tyrannical Gladiator's Silk Trousers
					i(91193),	-- Tyrannical Gladiator's Wyrmhide Legguards
					i(94483),	-- Tyrannical Gladiator's Wyrmhide Legguards
					-- Feet
					i(91244),	-- Tyrannical Gladiator's Boots of Alacrity
					i(94432),	-- Tyrannical Gladiator's Boots of Alacrity
					i(91337),	-- Tyrannical Gladiator's Boots of Cruelty
					i(94374),	-- Tyrannical Gladiator's Boots of Cruelty
					i(91186),	-- Tyrannical Gladiator's Footguards of Alacrity
					i(94344),	-- Tyrannical Gladiator's Footguards of Alacrity
					i(91352),	-- Tyrannical Gladiator's Footguards of Alacrity
					i(94378),	-- Tyrannical Gladiator's Footguards of Alacrity
					i(91169),	-- Tyrannical Gladiator's Footguards of Meditation
					i(94476),	-- Tyrannical Gladiator's Footguards of Meditation
					i(91354),	-- Tyrannical Gladiator's Footguards of Meditation
					i(94336),	-- Tyrannical Gladiator's Footguards of Meditation
					i(91281),	-- Tyrannical Gladiator's Greaves of Alacrity
					i(94351),	-- Tyrannical Gladiator's Greaves of Alacrity
					i(91283),	-- Tyrannical Gladiator's Greaves of Meditation
					i(94352),	-- Tyrannical Gladiator's Greaves of Meditation
					i(91218),	-- Tyrannical Gladiator's Sabatons of Alacrity
					i(94359),	-- Tyrannical Gladiator's Sabatons of Alacrity
					i(91216),	-- Tyrannical Gladiator's Sabatons of Cruelty
					i(94445),	-- Tyrannical Gladiator's Sabatons of Cruelty
					i(91117),	-- Tyrannical Gladiator's Treads of Alacrity
					i(94333),	-- Tyrannical Gladiator's Treads of Alacrity
					i(91115),	-- Tyrannical Gladiator's Treads of Cruelty
					i(94402),	-- Tyrannical Gladiator's Treads of Cruelty
					i(91119),	-- Tyrannical Gladiator's Treads of Meditation
					i(94468),	-- Tyrannical Gladiator's Treads of Meditation
					i(91303),	-- Tyrannical Gladiator's Warboots of Alacrity
					i(94461),	-- Tyrannical Gladiator's Warboots of Alacrity
					i(91301),	-- Tyrannical Gladiator's Warboots of Cruelty
					i(94414),	-- Tyrannical Gladiator's Warboots of Cruelty
					-- Rings
					i(91139),	-- Tyrannical Gladiator's Band of Accuracy
					i(94363),	-- Tyrannical Gladiator's Band of Accuracy
					i(91138),	-- Tyrannical Gladiator's Band of Cruelty
					i(94390),	-- Tyrannical Gladiator's Band of Cruelty
					i(91140),	-- Tyrannical Gladiator's Band of Meditation
					i(94474),	-- Tyrannical Gladiator's Band of Meditation
					i(91106),	-- Tyrannical Gladiator's Ring of Accuracy
					i(94399),	-- Tyrannical Gladiator's Ring of Accuracy
					i(91105),	-- Tyrannical Gladiator's Ring of Cruelty
					i(94357),	-- Tyrannical Gladiator's Ring of Cruelty
					i(91417),	-- Tyrannical Gladiator's Signet of Accuracy
					i(94462),	-- Tyrannical Gladiator's Signet of Accuracy
					i(91416),	-- Tyrannical Gladiator's Signet of Cruelty
					i(94417),	-- Tyrannical Gladiator's Signet of Cruelty
				},
			}))),
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, e(826, bubbleDownSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Oondasta
				["questID"] = 32519,
				["coord"] = { 49.9, 56.8, ISLE_OF_GIANTS },
				["crs"] = { 69161 },	-- Oondasta
				["g"] = {
					ach(8123),	-- Millions of Years of Evolution vs. My Fist
					ach(8138),	-- Oondasta Guild Run
					i(94228),	-- Cobalt Primordial Direhorn (MOUNT!)
					i(95601, {	-- Shiny Pile of Refuse
						i(95972),	-- Abandoned Zandalari Arrowlinks
						i(95976),	-- Abandoned Zandalari Bucklebreaker
						i(95961),	-- Abandoned Zandalari Firecord
						i(95975),	-- Abandoned Zandalari Goreplate
						i(95974),	-- Abandoned Zandalari Greatbelt
						i(95971),	-- Abandoned Zandalari Moonstrap
						i(95962),	-- Abandoned Zandalari Shadowgirdle
						i(95970),	-- Abandoned Zandalari Silentbelt
						i(95973),	-- Abandoned Zandalari Waterchain
						i(95979),	-- Columnbreaker Stompers [Crieve got November 24, 2018 on stream]
						i(95966),	-- Deeproot Treads
						i(94295),	-- Primal Egg
						i(95965),	-- Home-Warding Slippers
						i(95978),	-- Locksmasher Greaves [Yunim - 2021-12-04]
						i(95958),	-- Necklace of the Terra-Cotta Archer
						i(95964),	-- Necklace of the Terra-Cotta Invoker
						i(95969),	-- Necklace of the Terra-Cotta Mender
						i(95980),	-- Necklace of the Terra-Cotta Protector
						i(95960),	-- Scalehide Spurs [Yunim - 2023-02-xx]
						i(95963),	-- Silentflame Sandals
						i(95959),	-- Spiderweb Tabi
						i(95967),	-- Spiritbound Boots
						i(95968),	-- Vaultwalker Sabatons
					}),

					-- Necks
					i(95181),	-- Amulet of the Titanorex
					i(95177),	-- Choker of Stygimolochy
					i(95178),	-- Lootraptor's Amulet
					i(95179),	-- Necklace of the Hazillosaurus
					i(95180),	-- Overcompensating Chain of the Alpha Male

					-- Chests
					i(95152),	-- Breastplate of the Iguanocolossus
					i(95147),	-- Fancifully Frilled Tunic
					i(95149),	-- Gorgoraptor Scale Chest
					i(95150),	-- Mail of the Mosschopper
					i(95182),	-- Robes of Zalmoxes
					i(95151),	-- Scorched Spiritfire Drape
					i(95153),	-- Tyrant King Battleplate
					i(95148),	-- Vest of the Bordomorono
					i(95183),	-- Waistband of Elder Falcarius

					-- Hands
					i(95199),	-- Carnotaur Battlegloves
					i(95196),	-- Gloves of Gastric Rumbling
					i(95194),	-- Gloves of Tyranomancy
					i(95195),	-- Gloves of Unliving Fossil
					i(95193),	-- Gloves of Varsoon the Greater
					i(95200),	-- Orndo Mando's Gloves
					i(95201),	-- Skullsmashing Gauntlets
					i(95197),	-- Therapsid Scale Gloves
					i(95198),	-- Vulcanodon Gauntlets

					-- Waists
					i(95186),	-- Belt of Crushed Dreams
					i(95188),	-- Belt of the Arch Avimimus
					i(95189),	-- Belt of the Dying Diemetradon
					i(95192),	-- Belt of the Tyrannotitan
					i(95184),	-- Girdle of Dimorphodontics
					i(95187),	-- Girdle of the Derrodoccus
					i(95185),	-- Terrorful Weave
					i(95191),	-- Voolar's Bloodied Belt
					i(95190),	-- Waistband of Furious Stomping

					-- Rings
					i(95165),	-- Achillobator Ring
					i(95164),	-- Eye of Oondasta
					i(95166),	-- Forzarra's Last Meal
					i(95167),	-- Ring of King Kangrom
					i(95163),	-- Ring of Shamuru
				},
			}))),
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, e(861, bubbleDownSelf({	-- Ordos, Fire-God of the Yaungol
				-- #if AFTER WOD
				["u"] = TEMP_MOP_LEGENDARY_CLOAK_PHASE,	-- Legendary Cloak Filter
				-- #endif
				["timeline"] = { ADDED_5_4_0 },
			}, {
				["sourceQuests"] = { 33104 },	-- A Pandaren Legend
				["questID"] = 33118,
				["coord"] = { 54.9, 17.3, TIMELESS_ISLE },
				["maps"] = {	-- all Timeless Isle maps
					555,	-- Cavern of Lost Spirits
				},
				["crs"] = { 72057 },	-- Ordos, Fire-God of the Yaungol
				["g"] = {
					ach(8533),	-- Ordos
					ach(8790),	-- Ordos Guild Run
					i(104273, {	-- Flame-Scarred Cache of Offerings
						["description"] = "Awarded if you fail your loot roll. Usually contains gold or crafting materials. May follow your actual spec instead of loot spec, please provide more information to ATT Discord.",
						["g"] = {
						--	NOTE FOR CONTRIBS: Only add items you receive to this if they are only currently obtainable from this container. The old listings on WoWHead may be inaccurate or out of date.
						--	it's likely that the commented items drop also.  if they get confirmed, uncomment them and adjust the unobtainable filter here + in Siege of Orgrimmar
							i(105838),	-- Aeth's Swiftcinder Cloak Normal
							i(105830),	-- Brave Niunai's Cloak Normal (confirmed to drop from Ordos cache on July 23, 2020)
							i(105826),	-- Cape of the Alpha Normal (confirmed to drop from Ordos cache on July 23, 2020)
							i(105832),	-- Crimson Gauntlets of Death Normal (confirmed to drop from Ordos cache on July 23, 2020)
							i(105829),	-- Drape of the Omega Normal (confirmed to drop from Ordos cache on July 23, 2020)
							i(105837),	-- Gauntlets of Discarded Time Normal (confirmed to drop from Ordos cache on November 28, 2021)
							i(105827),	-- Kalaena's Arcane Handwraps (confirmed to drop from Ordos cache on April 28, 2020)
							i(105833),	-- Keengrip Arrowpullers Normal (confirmed to drop from Ordos cache on November 14, 2019)
							i(105834),	-- Marco's Crackling Gloves Normal (confirmed to drop from Ordos cache on May 6, 2020)
							i(105835),	-- Romy's Reliable Grips Normal
							-- i(105828),	-- Seebo's Sainted Touch Normal
							i(105831),	-- Siid's Silent Stranglers Normal (confirmed to drop from Ordos cache on December 29, 2019)
							i(105839),	-- Turtleshell Greatcloak Normal (confirmed to drop from Ordos cache on May 5, 2020)
							i(105836),	-- Zoid's Molten Gauntlets Normal (confirmed to drop from Ordos cache on December 31, 2019)
							i(87522),	-- Star-Carrier Bracers (Discord - 2021-11-24), maybe symlink
						},
					}),
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
				},
			}))),
			applyclassicphase(MOP_PHASE_LANDFALL, e(725, {	-- Saylis's Warband [Galleon]
				["questID"] = 32098,
				["coord"] = { 70.79, 63.51, VALLEY_OF_THE_FOUR_WINDS },
				["maps"] = {	-- all Valley of the Four Winds maps
					377,	-- Cavern of Endless Echoes
				},
				["crs"] = { 62346 },	-- Galleon
				["g"] = {
					ach(6517),	-- Extinction Event
					ach(6708),	-- Salyis's Warband Guild Run
					i(89783),	-- Son of Galleon (MOUNT!)
					i(90840, {	-- Marauder's Gleaming Sack of Gold
						-- Belts
						i(86884),	-- Belt of Embodied Terror
						i(86900),	-- Binder's Chain of Unending Summer
						i(86895),	-- Healer's Belt of Final Winter
						i(86896),	-- Invoker's Belt of Final Winter
						i(86902),	-- Mender's Girdle of Endless Spring
						i(86904),	-- Patroller's Girdle of Endless Spring
						i(86903),	-- Protector's Girdle of Endless Spring
						i(86901),	-- Ranger's Chain of Unending Summer
						i(86897),	-- Sorcerer's Belt of Final Winter
						i(86899),	-- Stalker's Cord of Eternal Autumn
						i(86898),	-- Weaver's Cord of Eternal Autumn
						-- Bracers
						i(86850),	-- Darting Damselfly Cuffs
						i(86844),	-- Gleaming Moth Cuffs
						i(86846),	-- Inlaid Cricket Bracers
						i(86847),	-- Jagged Hornet Bracers
						i(86842),	-- Luminescent Firefly Wristguards
						i(86845),	-- Pearlescent Butterfly Wristbands
						i(86849),	-- Plated Locust Bracers
						i(86848),	-- Serrated Wasp Bracers
						i(86841),	-- Shining Cicada Bracers
						i(86843),	-- Smooth Beetle Wristbands
						-- Trinkets
						i(86772),	-- Jade Bandit Figurine
						i(86771),	-- Jade Charioteer Figurine
						i(86774),	-- Jade Courtesan Figurine
						i(86773),	-- Jade Magistrate Figurine
						i(86775),	-- Jade Warlord Figurine
						-- Pets
						i(94295),	-- Primal Egg
					}),
					--[[
					i(90840, bubbleDown({ ["timeline"] = { ADDED_5_0_4, REMOVED_9_0_1 } }, {	-- Marauder's Gleaming Sack of Gold Pet Version -- Those Pets got removed, unknown when exactly.
						i(44984),	-- Ammen Vale Lashling
						i(10360),	-- Black Kingsnake
						i(54436),	-- Blue Clockwork Rocket Bot
						i(29960),	-- Captured Firefly
						i(8491),	-- Cat Carrier (Black Tabby)
						i(46398),	-- Cat Carrier (Calico Cat)
						i(8487),	-- Cat Carrier (Orange Tabby)
						i(8488),	-- Cat Carrier (Silver Tabby)
						i(10822),	-- Dark Whelpling
						i(44970),	-- Dun Morogh Cub
						i(44973),	-- Durotar Scorpion
						i(67282),	-- Elementium Geode
						i(44974),	-- Elwynn Lamb
						i(44982),	-- Enchanted Broom
						i(64403),	-- Fox Kit
						i(43698),	-- Giant Sewer Rat
						i(29953),	-- Golden Dragonhawk Hatchling
						i(48116),	-- Gundrak Hatchling
						i(48118),	-- Leaping Hatchling
						i(45002),	-- Mechanopeep
						i(44980),	-- Mulgore Hatchling
						i(48120),	-- Obsidian Hatchling
						i(8496),	-- Parrot Cage (Cockatiel)
						i(8492),	-- Parrot Cage (Green Wing Macaw)
						i(8495),	-- Parrot Cage (Senegal)
						i(48124),	-- Razormaw Hatchling
						i(48126),	-- Razzashi Hatchling
						i(69992),	-- Shimmering Wyrmling
						i(44965),	-- Teldrassil Sproutling
						i(69991),	-- Tiny Sporebat
						i(44971),	-- Tirisfal Batling
					})),
					--]]
					i(90410),	-- Cap of Wandering Pride
					i(90413),	-- Crest of the Grand Warband
					i(90416),	-- Crown of Ranging Invasion
					i(90411),	-- Facemask of Unrepentant Banditry
					i(90408),	-- Free Spirit Hood
					i(90415),	-- Giantfoot Headguard
					i(90414),	-- Greathelm of the Monstrous Mushan
					i(90412),	-- Helm of Restoring Wind
					i(90409),	-- Sky-Sear Cowl
					i(90432),	-- Hellrider's Choker
					i(90433),	-- Mushan Rider's Collar
					i(90429),	-- Necklace of Imbued Fury
					i(90431),	-- Saddlebinder Links
					i(90430),	-- Stomphowl Pendant
					i(90422),	-- Armor of the Single Cloud
					i(90425),	-- Carapace of Crushed Conviction
					i(90421),	-- Chain of Unsiezed Skies
					i(90423),	-- Chestguard of the Unbowed Back
					i(90419),	-- Fireproofed Chestguard
					i(90420),	-- Flameshot Wrap
					i(90424),	-- Ravaging Warrior's Chestplate
					i(90417),	-- Robes of Blue Skies
					i(90418),	-- Robes of the Lightning Rider
					i(90449),	-- Belt of Detonation
					i(90451),	-- Cannoneer's Gunpowder Carrier
					i(90448),	-- Cannonfire Cord
					i(90450),	-- Carrot-Holder Belt
					i(90456),	-- Cord of Crazed Strength
					i(90454),	-- Girdle of the Galloping Giant
					i(90453),	-- Girdle of the Raging Rider
					i(90455),	-- Greatbelt of Livid Fury
					i(90452),	-- Sparkmaker Girdle
					i(90443),	-- Burnmender Boots
					i(90445),	-- Firerider Treads
					i(90442),	-- Flamefoot Tabi
					i(90439),	-- Open Steppe Sandals
					i(90446),	-- Silverspur Warboots
					i(90440),	-- Slippers of Fiery Retribution
					i(90441),	-- Stompdodger Boots
					i(90447),	-- Stompers of Vigorous Stomping
					i(90444),	-- Treads of Gentle Nudges
					i(90436),	-- Circle of Scaled Fury
					i(90437),	-- Hereditary Saurok Loop
					i(90435),	-- Ring of Wretched Flames
					i(90438),	-- Signet of the Bandit Lord
					i(90434),	-- Steaming Seal of Flame
				},
			})),
			applyclassicphase(MOP_PHASE_LANDFALL, e(691, {	-- Sha of Anger
				["questID"] = 32099,
				["coord"] = { 53.53, 65.26, KUN_LAI_SUMMIT },
				["maps"] = {	-- all Kun-Lai Summit maps
					380,	-- Howlingwind Cavern
					381,	-- Pranksters' Hollow
					382,	-- Knucklethump Hole
					383,	-- The Deeper (upper)
					384,	-- The Deeper (lower)
					385,	-- Tomb of Conquerors
					386,	-- Ruins of Korune (Upper Floor)
					387,	-- Ruins of Korune (Lower Floor)
					434,	-- The Ancient Passage
				},
				["crs"] = { 60491 },	-- Sha of Anger
				["g"] = {
					ach(6480),	-- Settle Down, Bro
					ach(6709),	-- Sha of Anger Guild Run
					crit(19136, {	-- Sha of Anger slain
						["achievementID"] = 6926,	-- Tranquil Master
					}),
					-- Mounts, Caches, and Quest Items!
					i(87771),	-- Heavenly Onyx Cloud Serpent (MOUNT!)
					i(89317),	-- Claw of Anger
					i(90839, {	-- Cache of Sha-Touched Gold
						i(86884),	-- Belt of Embodied Terror
						i(86900),	-- Binder's Chain of Unending Summer
						i(86850),	-- Darting Damselfly Cuffs
						i(86844),	-- Gleaming Moth Cuffs
						i(86895),	-- Healer's Belt of Final Winter
						i(86846),	-- Inlaid Cricket Bracers
						i(86896),	-- Invoker's Belt of Final Winter
						i(86772),	-- Jade Bandit Figurine
						i(86771),	-- Jade Charioteer Figurine
						i(86774),	-- Jade Courtesan Figurine
						i(86773),	-- Jade Magistrate Figurine
						i(86775),	-- Jade Warlord Figurine
						i(86847),	-- Jagged Hornet Bracers
						i(86842),	-- Luminescent Firefly Wristguards
						i(86902),	-- Mender's Girdle of Endless Spring
						i(86904),	-- Patroller's Girdle of Endless Spring
						i(86845),	-- Pearlescent Butterfly Wristbands
						i(86849),	-- Plated Locust Bracers
						i(86903),	-- Protector's Girdle of Endless Spring
						i(86901),	-- Ranger's Chain of Unending Summer
						i(86848),	-- Serrated Wasp Bracers
						i(86841),	-- Shining Cicada Bracers
						i(86843),	-- Smooth Beetle Wristbands
						i(86897),	-- Sorcerer's Belt of Final Winter
						i(86899),	-- Stalker's Cord of Eternal Autumn
						i(86898),	-- Weaver's Cord of Eternal Autumn
						i(94295),	-- Primal Egg
					}),
					--[[
					i(90839, bubbleDown({ ["timeline"] = { ADDED_5_0_4, REMOVED_9_0_1 } }, {	-- Cache of Sha-Touched Gold Pet Version -- Those Pets got removed, unknown when exactly.
						i(44984),	-- Ammen Vale Lashling
						i(10360),	-- Black Kingsnake
						i(54436),	-- Blue Clockwork Rocket Bot
						i(29960),	-- Captured Firefly
						i(8491),	-- Cat Carrier (Black Tabby)
						i(46398),	-- Cat Carrier (Calico Cat)
						i(8487),	-- Cat Carrier (Orange Tabby)
						i(8488),	-- Cat Carrier (Silver Tabby)
						i(10822),	-- Dark Whelpling
						i(44970),	-- Dun Morogh Cub
						i(44973),	-- Durotar Scorpion
						i(67282),	-- Elementium Geode
						i(44974),	-- Elwynn Lamb
						i(44982),	-- Enchanted Broom
						i(64403),	-- Fox Kit
						i(43698),	-- Giant Sewer Rat
						i(29953),	-- Golden Dragonhawk Hatchling
						i(48116),	-- Gundrak Hatchling
						i(48118),	-- Leaping Hatchling
						i(45002),	-- Mechanopeep
						i(44980),	-- Mulgore Hatchling
						i(48120),	-- Obsidian Hatchling
						i(8496),	-- Parrot Cage (Cockatiel)
						i(8492),	-- Parrot Cage (Green Wing Macaw)
						i(8495),	-- Parrot Cage (Senegal)
						i(48124),	-- Razormaw Hatchling
						i(48126),	-- Razzashi Hatchling
						i(69992),	-- Shimmering Wyrmling
						i(44965),	-- Teldrassil Sproutling
						i(69991),	-- Tiny Sporebat
						i(44971),	-- Tirisfal Batling
					})),
					--]]
					-- Necks
					i(84892),	-- Malevolent Gladiator's Choker of Accuracy
					i(84891),	-- Malevolent Gladiator's Choker of Proficiency
					i(84889),	-- Malevolent Gladiator's Necklace of Proficiency
					i(84890),	-- Malevolent Gladiator's Necklace of Prowess
					i(84886),	-- Malevolent Gladiator's Pendant of Alacrity
					i(84887),	-- Malevolent Gladiator's Pendant of Cruelty
					i(84888),	-- Malevolent Gladiator's Pendant of Meditation
					-- Back
					i(84804),	-- Malevolent Gladiator's Cape of Cruelty
					i(84805),	-- Malevolent Gladiator's Cape of Prowess
					i(84807),	-- Malevolent Gladiator's Cloak of Alacrity
					i(84806),	-- Malevolent Gladiator's Cloak of Prowess
					i(84801),	-- Malevolent Gladiator's Drape of Cruelty
					i(84802),	-- Malevolent Gladiator's Drape of Meditation
					i(84803),	-- Malevolent Gladiator's Drape of Prowess
					-- Wrists
					i(84984),	-- Malevolent Gladiator's Armbands of Meditation [Shaman]
					i(84983),	-- Malevolent Gladiator's Armbands of Prowess [Shaman]
					i(84986),	-- Malevolent Gladiator's Armplates of Alacrity [Warrior, Paladin, Death Knight]
					i(84985),	-- Malevolent Gladiator's Armplates of Proficiency [Warrior, Paladin, Death Knight]
					i(84973),	-- Malevolent Gladiator's Armwraps of Accuracy [Rogue, Monk, Druid]
					i(84972),	-- Malevolent Gladiator's Armwraps of Alacrity [Rogue, Monk, Druid]
					i(84976),	-- Malevolent Gladiator's Bindings of Meditation [Monk, Druid]
					i(84982),	-- Malevolent Gladiator's Bindings of Prowess [Monk, Druid]
					i(84975),	-- Malevolent Gladiator's Bracers of Meditation [Paladin]
					i(84974),	-- Malevolent Gladiator's Bracers of Prowess [Paladin]
					i(84977),	-- Malevolent Gladiator's Cuffs of Accuracy [Priest, Mage, Warlock]
					i(84979),	-- Malevolent Gladiator's Cuffs of Meditation [Priest, Mage, Warlock]
					i(84978),	-- Malevolent Gladiator's Cuffs of Prowess [Priest, Mage, Warlock]
					i(84981),	-- Malevolent Gladiator's Wristguards of Accuracy [Hunter, Shaman]
					i(84980),	-- Malevolent Gladiator's Wristguards of Alacrity [Hunter, Shaman]
					-- Hands
					i(85308),	-- Eternal Blossom Gloves
					i(85312),	-- Eternal Blossom Grips
					i(85380),	-- Eternal Blossom Handguards
					i(85358),	-- Eternal Blossom Handwraps
					i(85290),	-- Firebird's Gloves
					i(85287),	-- Firebird's Grips
					i(85352),	-- Firebird's Handwraps
					i(85331),	-- Gauntlets of Resounding Rings
					i(85337),	-- Gauntlets of the Lost Catacomb
					i(85378),	-- Gloves of the Burning Scroll
					i(85302),	-- Gloves of the Thousandfold Blades
					i(85364),	-- Guardian Serpent Gloves
					i(85363),	-- Guardian Serpent Handwraps
					i(85327),	-- Handguards of Resounding Rings
					i(85317),	-- Handguards of the Lost Catacomb
					i(84841),	-- Malevolent Gladiator's Chain Gauntlets
					i(84836),	-- Malevolent Gladiator's Copperskin Gloves
					i(84832),	-- Malevolent Gladiator's Dragonhide Gloves
					i(84835),	-- Malevolent Gladiator's Dreadplate Gauntlets
					i(84842),	-- Malevolent Gladiator's Felweave Handguards
					i(84839),	-- Malevolent Gladiator's Ironskin Gloves
					i(84833),	-- Malevolent Gladiator's Kodohide Gloves
					i(84830),	-- Malevolent Gladiator's Leather Gloves
					i(84844),	-- Malevolent Gladiator's Linked Gauntlets
					i(84845),	-- Malevolent Gladiator's Mail Gauntlets
					i(84846),	-- Malevolent Gladiator's Mooncloth Gloves
					i(84831),	-- Malevolent Gladiator's Ornamented Gloves
					i(84840),	-- Malevolent Gladiator's Plate Gauntlets
					i(84847),	-- Malevolent Gladiator's Ringmail Gauntlets
					i(84838),	-- Malevolent Gladiator's Satin Gloves
					i(84834),	-- Malevolent Gladiator's Scaled Gauntlets
					i(84837),	-- Malevolent Gladiator's Silk Handguards
					i(84843),	-- Malevolent Gladiator's Wyrmhide Gloves
					i(85387),	-- Red Crane Gauntlets
					i(85395),	-- Red Crane Grips
					i(85389),	-- Red Crane Handwraps
					i(85369),	-- Sha-Skin Gloves
					i(85342),	-- White Tiger Gauntlets
					i(85347),	-- White Tiger Gloves
					i(85322),	-- White Tiger Handguards
					i(85297),	-- Yaungol Slayer's Gloves
					-- Waists
					i(84960),	-- Malevolent Gladiator's Belt of Cruelty [Monk, Druid]
					i(84953),	-- Malevolent Gladiator's Belt of Meditation [Monk, Druid]
					i(84951),	-- Malevolent Gladiator's Clasp of Cruelty [Paladin]
					i(84952),	-- Malevolent Gladiator's Clasp of Meditation [Paladin]
					i(84955),	-- Malevolent Gladiator's Cord of Accuracy [Priest, Mage, Warlock]
					i(84954),	-- Malevolent Gladiator's Cord of Cruelty [Priest, Mage, Warlock]
					i(84956),	-- Malevolent Gladiator's Cord of Meditation [Priest, Mage, Warlock]
					i(84949),	-- Malevolent Gladiator's Girdle of Accuracy [Warrior, Paladin, Death Knight]
					i(84950),	-- Malevolent Gladiator's Girdle of Prowess [Warrior, Paladin, Death Knight]
					i(84957),	-- Malevolent Gladiator's Links of Accuracy [Hunter, Shaman]
					i(84958),	-- Malevolent Gladiator's Links of Cruelty [Hunter, Shaman]
					i(84948),	-- Malevolent Gladiator's Waistband of Accuracy [Rogue, Monk, Druid]
					i(84947),	-- Malevolent Gladiator's Waistband of Cruelty [Rogue, Monk, Druid]
					i(84959),	-- Malevolent Gladiator's Waistguard of Cruelty [Shaman]
					i(84946),	-- Malevolent Gladiator's Waistguard of Meditation [Shaman]
					-- Legs
					i(85382),	-- Eternal Blossom Breeches
					i(85306),	-- Eternal Blossom Leggings
					i(85310),	-- Eternal Blossom Legguards
					i(85356),	-- Eternal Blossom Legwraps
					i(85292),	-- Firebird's Kilt
					i(85285),	-- Firebird's Legguards
					i(85350),	-- Firebird's Legwraps
					i(85335),	-- Greaves of the Lost Catacomb
					i(85366),	-- Guardian Serpent Leggings
					i(85361),	-- Guardian Serpent Legwraps
					i(85376),	-- Leggings of the Burning Scroll
					i(85325),	-- Legguards of Resounding Rings
					i(85315),	-- Legguards of the Lost Catacomb
					i(85300),	-- Legguards of the Thousandfold Blades
					i(85330),	-- Legplates of Resounding Rings
					i(85397),	-- Red Crane Leggings
					i(85385),	-- Red Crane Legguards
					i(85391),	-- Red Crane Legwraps
					i(85371),	-- Sha-Skin Leggings
					i(85345),	-- White Tiger Greaves
					i(85320),	-- White Tiger Legguards
					i(85340),	-- White Tiger Legplates
					i(85295),	-- Yaungol Slayer's Legguards
					-- Feet
					i(84809),	-- Malevolent Gladiator's Boots of Alacrity [Rogue, Monk, Druid]
					i(84808),	-- Malevolent Gladiator's Boots of Cruelty [Rogue, Monk, Druid]
					i(84820),	-- Malevolent Gladiator's Footguards of Alacrity [Shaman]
					i(84819),	-- Malevolent Gladiator's Footguards of Alacrity [Monk, Druid]
					i(84821),	-- Malevolent Gladiator's Footguards of Meditation [Shaman]
					i(84813),	-- Malevolent Gladiator's Footguards of Meditation [Monk, Druid]
					i(84811),	-- Malevolent Gladiator's Greaves of Alacrity [Paladin]
					i(84812),	-- Malevolent Gladiator's Greaves of Meditation [Paladin]
					i(84818),	-- Malevolent Gladiator's Sabatons of Alacrity [Hunter, Shaman]
					i(84817),	-- Malevolent Gladiator's Sabatons of Cruelty [Hunter, Shaman]
					i(84815),	-- Malevolent Gladiator's Treads of Alacrity [Priest, Mage, Warlock]
					i(84814),	-- Malevolent Gladiator's Treads of Cruelty [Priest, Mage, Warlock]
					i(84816),	-- Malevolent Gladiator's Treads of Meditation [Priest, Mage, Warlock]
					i(84822),	-- Malevolent Gladiator's Warboots of Alacrity [Warrior, Paladin, Death Knight]
					i(84810),	-- Malevolent Gladiator's Warboots of Cruelty [Warrior, Paladin, Death Knight]
					-- Rings
					i(84824),	-- Malevolent Gladiator's Band of Accuracy
					i(84823),	-- Malevolent Gladiator's Band of Cruelty
					i(84825),	-- Malevolent Gladiator's Band of Meditation
					i(84827),	-- Malevolent Gladiator's Ring of Accuracy
					i(84826),	-- Malevolent Gladiator's Ring of Cruelty
					i(84829),	-- Malevolent Gladiator's Signet of Accuracy
					i(84828),	-- Malevolent Gladiator's Signet of Cruelty
				},
			})),
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, header(HEADERS.Achievement, 8535, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0 } }, {	-- Celestial Challenge
				["questID"] = 33117,
				["maps"] = {	-- all Timeless Isle maps
					555,	-- Cavern of Lost Spirits
				},
				["coord"] = { 38.87, 55.29, TIMELESS_ISLE },
				["crs"] = {
					71952,	-- Chi-Ji, The Red Crane
					71954,	-- Niuzao, The Black Ox
					71953,	-- Xuen, The White Tiger
					71955,	-- Yu'lon, The Jade Serpent
				},
				["g"] = {
					ach(8535, {	-- Celestial Challenge
						crit(23743, {	-- Chi-Ji slain
							["_encounter"] =  { 857, WORLD_BOSSES },
						}),
						crit(23745, {	-- Niuzao slain
							["_encounter"] =  { 859, WORLD_BOSSES },
						}),
						crit(23746, {	-- Xuen slain
							["_encounter"] =  { 860, WORLD_BOSSES },
						}),
						crit(23744, {	-- Yu'lon slain
							["_encounter"] =  { 858, WORLD_BOSSES },
						}),
					}),
					ach(8789),	-- Celestial Challenge Guild Run
					e(857, cr(71952, {	-- Chi-Ji, The Red Crane
						["isRaid"] = true,
					})),
					e(859, cr(71954, {	-- Niuzao, The Black Ox
						["isRaid"] = true,
					})),
					e(860, cr(71953, {	-- Xuen, The White Tiger
						["isRaid"] = true,
					})),
					e(858, cr(71955, {	-- Yu'lon, The Jade Serpent
						["isRaid"] = true,
					})),
					-- Caches / Boxes
					i(104272, {	-- Celestial Treasure Box
						i(105824),	-- Aeth's Swiftcinder Cloak
						i(105816),	-- Brave Niunai's Cloak
						i(105812),	-- Cape of the Alpha
						i(105818),	-- Crimson Gauntlets of Death
						i(105815),	-- Drape of the Omega
						i(105823),	-- Gauntlets of Discarded Time
						i(105813),	-- Kalaena's Arcane Handwraps
						i(105819),	-- Keengrip Arrowpullers
						i(105820),	-- Marco's Crackling Gloves
						i(105821),	-- Romy's Reliable Grips
						i(105814),	-- Seebo's Sainted Touch
						i(105817),	-- Siid's Silent Stranglers
						i(105825),	-- Turtleshell Greatcloak
						i(105822),	-- Zoid's Molten Gauntlets
					}),
					--[[
					i(104272, bubbleDown({ ["timeline"] = { ADDED_5_0_4, REMOVED_9_0_1 } }, {	-- Celestial Treasure Box Pet Version -- Those Pets got removed, unknown when exactly.
						i(44984),	-- Ammen Vale Lashling
						i(10360),	-- Black Kingsnake
						i(54436),	-- Blue Clockwork Rocket Bot
						i(29960),	-- Captured Firefly
						i(8491),	-- Cat Carrier (Black Tabby)
						i(46398),	-- Cat Carrier (Calico Cat)
						i(8487),	-- Cat Carrier (Orange Tabby)
						i(8488),	-- Cat Carrier (Silver Tabby)
						i(10822),	-- Dark Whelpling
						i(44970),	-- Dun Morogh Cub
						i(44973),	-- Durotar Scorpion
						i(67282),	-- Elementium Geode
						i(44974),	-- Elwynn Lamb
						i(44982),	-- Enchanted Broom
						i(64403),	-- Fox Kit
						i(43698),	-- Giant Sewer Rat
						i(29953),	-- Golden Dragonhawk Hatchling
						i(48116),	-- Gundrak Hatchling
						i(48118),	-- Leaping Hatchling
						i(45002),	-- Mechanopeep
						i(44980),	-- Mulgore Hatchling
						i(48120),	-- Obsidian Hatchling
						i(8496),	-- Parrot Cage (Cockatiel)
						i(8492),	-- Parrot Cage (Green Wing Macaw)
						i(8495),	-- Parrot Cage (Senegal)
						i(48124),	-- Razormaw Hatchling
						i(48126),	-- Razzashi Hatchling
						i(69992),	-- Shimmering Wyrmling
						i(44965),	-- Teldrassil Sproutling
						i(69991),	-- Tiny Sporebat
						i(44971),	-- Tirisfal Batling
					})),
					--]]
					-- Neck
					i(103515),	-- Prideful Gladiator's Choker of Accuracy
					i(102641),	-- Prideful Gladiator's Choker of Accuracy
					i(102749),	-- Prideful Gladiator's Choker of Proficiency
					i(103514),	-- Prideful Gladiator's Choker of Proficiency
					i(103345),	-- Prideful Gladiator's Necklace of Proficiency
					i(102678),	-- Prideful Gladiator's Necklace of Proficiency
					i(103346),	-- Prideful Gladiator's Necklace of Prowess
					i(102679),	-- Prideful Gladiator's Necklace of Prowess
					i(102757),	-- Prideful Gladiator's Pendant of Alacrity
					i(103368),	-- Prideful Gladiator's Pendant of Alacrity
					i(102773),	-- Prideful Gladiator's Pendant of Cruelty
					i(103367),	-- Prideful Gladiator's Pendant of Cruelty
					i(102736),	-- Prideful Gladiator's Pendant of Meditation
					i(103369),	-- Prideful Gladiator's Pendant of Meditation
					-- Back
					i(103343),	-- Prideful Gladiator's Cape of Cruelty
					i(102705),	-- Prideful Gladiator's Cape of Cruelty
					i(103344),	-- Prideful Gladiator's Cape of Prowess
					i(102642),	-- Prideful Gladiator's Cape of Prowess
					i(103512),	-- Prideful Gladiator's Cloak of Alacrity
					i(102769),	-- Prideful Gladiator's Cloak of Alacrity
					i(103513),	-- Prideful Gladiator's Cloak of Prowess
					i(102770),	-- Prideful Gladiator's Cloak of Prowess
					i(103360),	-- Prideful Gladiator's Drape of Cruelty
					i(102669),	-- Prideful Gladiator's Drape of Cruelty
					i(103362),	-- Prideful Gladiator's Drape of Meditation
					i(102756),	-- Prideful Gladiator's Drape of Meditation
					i(102772),	-- Prideful Gladiator's Drape of Prowess
					i(103361),	-- Prideful Gladiator's Drape of Prowess
					-- Wrists
					i(102624),	-- Prideful Gladiator's Armbands of Meditation
					i(103484),	-- Prideful Gladiator's Armbands of Meditation
					i(103483),	-- Prideful Gladiator's Armbands of Prowess
					i(102665),	-- Prideful Gladiator's Armbands of Prowess
					i(102771),	-- Prideful Gladiator's Armplates of Alacrity
					i(103460),	-- Prideful Gladiator's Armplates of Alacrity
					i(103459),	-- Prideful Gladiator's Armplates of Proficiency
					i(102702),	-- Prideful Gladiator's Armplates of Proficiency
					i(102711),	-- Prideful Gladiator's Armwraps of Accuracy
					i(103428),	-- Prideful Gladiator's Armwraps of Accuracy
					i(102754),	-- Prideful Gladiator's Armwraps of Alacrity
					i(103474),	-- Prideful Gladiator's Armwraps of Alacrity
					i(103388),	-- Prideful Gladiator's Bindings of Meditation
					i(102691),	-- Prideful Gladiator's Bindings of Meditation
					i(103397),	-- Prideful Gladiator's Bindings of Prowess
					i(102723),	-- Prideful Gladiator's Bindings of Prowess
					i(103449),	-- Prideful Gladiator's Bracers of Meditation
					i(102765),	-- Prideful Gladiator's Bracers of Meditation
					i(102695),	-- Prideful Gladiator's Bracers of Prowess
					i(103448),	-- Prideful Gladiator's Bracers of Prowess
					i(102687),	-- Prideful Gladiator's Cuffs of Accuracy
					i(103357),	-- Prideful Gladiator's Cuffs of Accuracy
					i(103359),	-- Prideful Gladiator's Cuffs of Meditation
					i(102666),	-- Prideful Gladiator's Cuffs of Meditation
					i(102733),	-- Prideful Gladiator's Cuffs of Prowess
					i(103358),	-- Prideful Gladiator's Cuffs of Prowess
					i(103415),	-- Prideful Gladiator's Wristguards of Accuracy
					i(102753),	-- Prideful Gladiator's Wristguards of Accuracy
					i(102688),	-- Prideful Gladiator's Wristguards of Alacrity
					i(103414),	-- Prideful Gladiator's Wristguards of Alacrity
					-- Hands
					i(99160),	-- Chronomancer Gloves
					i(99193),	-- Gauntlets of Cyclopean Dread
					i(99141),	-- Gauntlets of Seven Sacred Seals
					i(99198),	-- Gauntlets of the Prehistoric Marauder
					i(99137),	-- Gauntlets of Winged Triumph
					i(99092),	-- Gloves of Celestial Harmony
					i(99113),	-- Gloves of the Barbed Assassin
					i(99096),	-- Gloves of the Horned Nightmare
					i(99174),	-- Gloves of the Shattered Vale
					i(99121),	-- Gloves of the Ternion Glory
					i(99168),	-- Gloves of the Unblinking Vigil
					i(99134),	-- Gloves of Winged Triumph
					i(99102),	-- Grips of Celestial Harmony
					i(99155),	-- Grips of Seven Sacred Seals
					i(99181),	-- Grips of the Shattered Vale
					i(99189),	-- Handguards of Cyclopean Dread
					i(99202),	-- Handguards of the Prehistoric Marauder
					i(99163),	-- Handguards of the Shattered Vale
					i(99127),	-- Handguards of Winged Triumph
					i(99108),	-- Handwraps of Celestial Harmony
					i(99147),	-- Handwraps of Seven Sacred Seals
					i(99185),	-- Handwraps of the Shattered Vale
					i(99131),	-- Handwraps of the Ternion Glory
					i(103417),	-- Prideful Gladiator's Chain Gauntlets
					i(102737),	-- Prideful Gladiator's Chain Gauntlets
					i(102627),	-- Prideful Gladiator's Copperskin Gloves
					i(103434),	-- Prideful Gladiator's Copperskin Gloves
					i(102739),	-- Prideful Gladiator's Dragonhide Gloves
					i(103381),	-- Prideful Gladiator's Dragonhide Gloves
					i(103377),	-- Prideful Gladiator's Dreadplate Gauntlets
					i(102650),	-- Prideful Gladiator's Dreadplate Gauntlets
					i(102725),	-- Prideful Gladiator's Felweave Handguards
					i(103520),	-- Prideful Gladiator's Felweave Handguards
					i(103429),	-- Prideful Gladiator's Ironskin Gloves
					i(102675),	-- Prideful Gladiator's Ironskin Gloves
					i(103389),	-- Prideful Gladiator's Kodohide Gloves
					i(102657),	-- Prideful Gladiator's Kodohide Gloves
					i(102663),	-- Prideful Gladiator's Leather Gloves
					i(103476),	-- Prideful Gladiator's Leather Gloves
					i(103491),	-- Prideful Gladiator's Linked Gauntlets
					i(102742),	-- Prideful Gladiator's Linked Gauntlets
					i(102692),	-- Prideful Gladiator's Mail Gauntlets
					i(103497),	-- Prideful Gladiator's Mail Gauntlets
					i(102615),	-- Prideful Gladiator's Mooncloth Gloves
					i(103462),	-- Prideful Gladiator's Mooncloth Gloves
					i(102722),	-- Prideful Gladiator's Ornamented Gloves
					i(103451),	-- Prideful Gladiator's Ornamented Gloves
					i(102618),	-- Prideful Gladiator's Plate Gauntlets
					i(103526),	-- Prideful Gladiator's Plate Gauntlets
					i(103486),	-- Prideful Gladiator's Ringmail Gauntlets
					i(102774),	-- Prideful Gladiator's Ringmail Gauntlets
					i(102707),	-- Prideful Gladiator's Satin Gloves
					i(103467),	-- Prideful Gladiator's Satin Gloves
					i(102630),	-- Prideful Gladiator's Scaled Gauntlets
					i(103440),	-- Prideful Gladiator's Scaled Gauntlets
					i(102735),	-- Prideful Gladiator's Silk Handguards
					i(103421),	-- Prideful Gladiator's Silk Handguards
					i(103398),	-- Prideful Gladiator's Wyrmhide Gloves
					i(102696),	-- Prideful Gladiator's Wyrmhide Gloves
					-- Belts
					i(103395),	-- Prideful Gladiator's Belt of Cruelty
					i(102694),	-- Prideful Gladiator's Belt of Cruelty
					i(102775),	-- Prideful Gladiator's Belt of Meditation
					i(103386),	-- Prideful Gladiator's Belt of Meditation
					i(102764),	-- Prideful Gladiator's Clasp of Cruelty
					i(103444),	-- Prideful Gladiator's Clasp of Cruelty
					i(102748),	-- Prideful Gladiator's Clasp of Meditation
					i(103445),	-- Prideful Gladiator's Clasp of Meditation
					i(103352),	-- Prideful Gladiator's Cord of Accuracy
					i(102662),	-- Prideful Gladiator's Cord of Accuracy
					i(103351),	-- Prideful Gladiator's Cord of Cruelty
					i(102684),	-- Prideful Gladiator's Cord of Cruelty
					i(102709),	-- Prideful Gladiator's Cord of Meditation
					i(103353),	-- Prideful Gladiator's Cord of Meditation
					i(103455),	-- Prideful Gladiator's Girdle of Accuracy
					i(102640),	-- Prideful Gladiator's Girdle of Accuracy
					i(102724),	-- Prideful Gladiator's Girdle of Prowess
					i(103456),	-- Prideful Gladiator's Girdle of Prowess
					i(102645),	-- Prideful Gladiator's Links of Accuracy
					i(103411),	-- Prideful Gladiator's Links of Accuracy
					i(103410),	-- Prideful Gladiator's Links of Cruelty
					i(102617),	-- Prideful Gladiator's Links of Cruelty
					i(103472),	-- Prideful Gladiator's Waistband of Accuracy
					i(102708),	-- Prideful Gladiator's Waistband of Accuracy
					i(102647),	-- Prideful Gladiator's Waistband of Cruelty
					i(103426),	-- Prideful Gladiator's Waistband of Cruelty
					i(102677),	-- Prideful Gladiator's Waistguard of Cruelty
					i(103495),	-- Prideful Gladiator's Waistguard of Cruelty
					i(103480),	-- Prideful Gladiator's Waistguard of Meditation
					i(102668),	-- Prideful Gladiator's Waistguard of Meditation
					-- Legs
					i(99165),	-- Breeches of the Shattered Vale
					i(99162),	-- Chronomancer Leggings
					i(99186),	-- Greaves of Cyclopean Dread
					i(99124),	-- Greaves of Winged Triumph
					i(99094),	-- Leggings of Celestial Harmony
					i(99145),	-- Leggings of Seven Sacred Seals
					i(99098),	-- Leggings of the Horned Nightmare
					i(99176),	-- Leggings of the Shattered Vale
					i(99123),	-- Leggings of the Ternion Glory
					i(99104),	-- Legguards of Celestial Harmony
					i(99191),	-- Legguards of Cyclopean Dread
					i(99143),	-- Legguards of Seven Sacred Seals
					i(99115),	-- Legguards of the Barbed Assassin
					i(99195),	-- Legguards of the Prehistoric Marauder
					i(99183),	-- Legguards of the Shattered Vale
					i(99158),	-- Legguards of the Unblinking Vigil
					i(99129),	-- Legguards of Winged Triumph
					i(99199),	-- Legplates of the Prehistoric Marauder
					i(99139),	-- Legplates of Winged Triumph
					i(99099),	-- Legwraps of Celestial Harmony
					i(99149),	-- Legwraps of Seven Sacred Seals
					i(99171),	-- Legwraps of the Shattered Vale
					i(99118),	-- Legwraps of the Ternion Glory
					i(102670),	-- Prideful Gladiator's Chain Leggings
					i(103419),	-- Prideful Gladiator's Chain Leggings
					i(102762),	-- Prideful Gladiator's Copperskin Legguards
					i(103436),	-- Prideful Gladiator's Copperskin Legguards
					i(103383),	-- Prideful Gladiator's Dragonhide Legguards
					i(102654),	-- Prideful Gladiator's Dragonhide Legguards
					i(103379),	-- Prideful Gladiator's Dreadplate Legguards
					i(102651),	-- Prideful Gladiator's Dreadplate Legguards
					i(102755),	-- Prideful Gladiator's Felweave Trousers
					i(103522),	-- Prideful Gladiator's Felweave Trousers
					i(102656),	-- Prideful Gladiator's Ironskin Legguards
					i(103431),	-- Prideful Gladiator's Ironskin Legguards
					i(102761),	-- Prideful Gladiator's Kodohide Legguards
					i(103391),	-- Prideful Gladiator's Kodohide Legguards
					i(103478),	-- Prideful Gladiator's Leather Legguards
					i(102730),	-- Prideful Gladiator's Leather Legguards
					i(103493),	-- Prideful Gladiator's Linked Leggings
					i(102778),	-- Prideful Gladiator's Linked Leggings
					i(103499),	-- Prideful Gladiator's Mail Leggings
					i(102781),	-- Prideful Gladiator's Mail Leggings
					i(102704),	-- Prideful Gladiator's Mooncloth Leggings
					i(103464),	-- Prideful Gladiator's Mooncloth Leggings
					i(102768),	-- Prideful Gladiator's Ornamented Legplates
					i(103453),	-- Prideful Gladiator's Ornamented Legplates
					i(103528),	-- Prideful Gladiator's Plate Legguards
					i(102732),	-- Prideful Gladiator's Plate Legguards
					i(102719),	-- Prideful Gladiator's Ringmail Leggings
					i(103488),	-- Prideful Gladiator's Ringmail Leggings
					i(102621),	-- Prideful Gladiator's Satin Leggings
					i(103469),	-- Prideful Gladiator's Satin Leggings
					i(103442),	-- Prideful Gladiator's Scaled Legguards
					i(102780),	-- Prideful Gladiator's Scaled Legguards
					i(102648),	-- Prideful Gladiator's Silk Trousers
					i(103423),	-- Prideful Gladiator's Silk Trousers
					i(102767),	-- Prideful Gladiator's Wyrmhide Legguards
					i(103400),	-- Prideful Gladiator's Wyrmhide Legguards
					-- Feet
					i(103427),	-- Prideful Gladiator's Boots of Alacrity
					i(102716),	-- Prideful Gladiator's Boots of Alacrity
					i(102660),	-- Prideful Gladiator's Boots of Cruelty
					i(103473),	-- Prideful Gladiator's Boots of Cruelty
					i(103481),	-- Prideful Gladiator's Footguards of Alacrity
					i(102664),	-- Prideful Gladiator's Footguards of Alacrity
					i(103396),	-- Prideful Gladiator's Footguards of Alacrity
					i(102631),	-- Prideful Gladiator's Footguards of Alacrity
					i(103482),	-- Prideful Gladiator's Footguards of Meditation
					i(103387),	-- Prideful Gladiator's Footguards of Meditation
					i(102623),	-- Prideful Gladiator's Footguards of Meditation
					i(102760),	-- Prideful Gladiator's Footguards of Meditation
					i(102638),	-- Prideful Gladiator's Greaves of Alacrity
					i(103446),	-- Prideful Gladiator's Greaves of Alacrity
					i(102639),	-- Prideful Gladiator's Greaves of Meditation
					i(103447),	-- Prideful Gladiator's Greaves of Meditation
					i(103413),	-- Prideful Gladiator's Sabatons of Alacrity
					i(102646),	-- Prideful Gladiator's Sabatons of Alacrity
					i(102729),	-- Prideful Gladiator's Sabatons of Cruelty
					i(103412),	-- Prideful Gladiator's Sabatons of Cruelty
					i(102620),	-- Prideful Gladiator's Treads of Alacrity
					i(103355),	-- Prideful Gladiator's Treads of Alacrity
					i(102686),	-- Prideful Gladiator's Treads of Cruelty
					i(103354),	-- Prideful Gladiator's Treads of Cruelty
					i(102752),	-- Prideful Gladiator's Treads of Meditation
					i(103356),	-- Prideful Gladiator's Treads of Meditation
					i(103458),	-- Prideful Gladiator's Warboots of Alacrity
					i(102745),	-- Prideful Gladiator's Warboots of Alacrity
					i(103457),	-- Prideful Gladiator's Warboots of Cruelty
					i(102698),	-- Prideful Gladiator's Warboots of Cruelty
					-- Rings
					i(103371),	-- Prideful Gladiator's Band of Accuracy
					i(102649),	-- Prideful Gladiator's Band of Accuracy
					i(103370),	-- Prideful Gladiator's Band of Cruelty
					i(102674),	-- Prideful Gladiator's Band of Cruelty
					i(103372),	-- Prideful Gladiator's Band of Meditation
					i(102758),	-- Prideful Gladiator's Band of Meditation
					i(102683),	-- Prideful Gladiator's Ring of Accuracy
					i(103349),	-- Prideful Gladiator's Ring of Accuracy
					i(102644),	-- Prideful Gladiator's Ring of Cruelty
					i(103348),	-- Prideful Gladiator's Ring of Cruelty
					i(102746),	-- Prideful Gladiator's Signet of Accuracy
					i(103518),	-- Prideful Gladiator's Signet of Accuracy
					i(102701),	-- Prideful Gladiator's Signet of Cruelty
					i(103517),	-- Prideful Gladiator's Signet of Cruelty
				},
			}))),
		}),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0 } }, {
	m(PANDARIA, {
		m(ISLE_OF_GIANTS, {
			n(WORLD_BOSSES, {
				q(32922),	-- Short-Supply Reward - Oondasta bonus roll
			}),
		}),
		m(ISLE_OF_THUNDER, {
			n(WORLD_BOSSES, {
				q(32919),	-- Short-Supply Reward - Nalak bonus roll
				q(33109),	-- Short-Supply Reward - Nalak secondary killID
			}),
		}),
		m(KUN_LAI_SUMMIT, {
			n(WORLD_BOSSES, {
				q(32924),	-- Short-Supply Reward - Sha of Anger bonus roll
			}),
		}),
		m(TIMELESS_ISLE, {
			n(WORLD_BOSSES, {
				q(33226),	-- Short-Supply Reward - Celestials bonus roll
				q(33225),	-- Short-Supply Reward - Ordos bonus roll
			}),
		}),
		m(VALLEY_OF_THE_FOUR_WINDS, {
			n(WORLD_BOSSES, {
				q(32923),	-- Short-Supply Reward - Galleon bonus roll
			}),
		}),
	}),
})));