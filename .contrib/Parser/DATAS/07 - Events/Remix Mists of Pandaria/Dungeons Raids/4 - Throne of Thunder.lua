-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_MOP, n(REMIX_MOP, bubbleDown({ ["timeline"] = { ADDED_10_2_7, REMOVED_MOP_REMIX_END } }, {
	n(RAIDS, {
		inst(362, {	-- Throne of Thunder
			["isRaid"] = true,
			["coord"] = { 63.4, 32.6, ISLE_OF_THUNDER },	-- Throne of Thunder
			["maps"] = {
				508,	-- Overgrown Statuary
				509,	-- Royal Amphitheater
				510,	-- Forgotten Depths
				511,	-- Roost of Ji-Kun
				512,	-- Halls of Flesh-Shaping
				513,	-- Hall of Kings
				514,	-- Pinnacle of Storms
				515,	-- Hidden Cell
			},
			["g"] = {
				n(ACHIEVEMENTS, {
					ach(19955, {	-- Raid Finder: Throne of Thunder
						crit(65724, {	-- Jin'rokh the Breaker
							["_encounter"] = { 827, DIFFICULTY.LEGACY_RAID.FINDER },
						}),
						crit(65725, {	-- Horridon
							["_encounter"] = { 819, DIFFICULTY.LEGACY_RAID.FINDER },
						}),
						crit(65726, {	-- Council of Elders
							["_encounter"] = { 816, DIFFICULTY.LEGACY_RAID.FINDER },
						}),
						crit(65727, {	-- Tortos
							["_encounter"] = { 825, DIFFICULTY.LEGACY_RAID.FINDER },
						}),
						crit(65728, {	-- Megaera
							["_encounter"] = { 821, DIFFICULTY.LEGACY_RAID.FINDER },
						}),
						crit(65729, {	-- Ji-Kun
							["_encounter"] = { 828, DIFFICULTY.LEGACY_RAID.FINDER },
						}),
						crit(65730, {	-- Durumu the Forgotten
							["_encounter"] = { 818, DIFFICULTY.LEGACY_RAID.FINDER },
						}),
						crit(65731, {	-- Primordius
							["_encounter"] = { 820, DIFFICULTY.LEGACY_RAID.FINDER },
						}),
						crit(65732, {	-- Dark Animus
							["_encounter"] = { 824, DIFFICULTY.LEGACY_RAID.FINDER },
						}),
						crit(65733, {	-- Iron Qon
							["_encounter"] = { 817, DIFFICULTY.LEGACY_RAID.FINDER },
						}),
						crit(65734, {	-- Twin Empyreans
							["_encounter"] = { 829, DIFFICULTY.LEGACY_RAID.FINDER },
						}),
						crit(65735, {	-- Lei Shen
							["_encounter"] = { 832, DIFFICULTY.LEGACY_RAID.FINDER },
						}),
					}),
					ach(19956, {	-- Throne of Thunder
						crit(65736, {	-- Jin'rokh the Breaker
							["_encounter"] = { 827, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(65737, {	-- Horridon
							["_encounter"] = { 819, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(65738, {	-- Council of Elders
							["_encounter"] = { 816, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(65739, {	-- Tortos
							["_encounter"] = { 825, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(65740, {	-- Megaera
							["_encounter"] = { 821, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(65741, {	-- Ji-Kun
							["_encounter"] = { 828, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(65742, {	-- Durumu the Forgotten
							["_encounter"] = { 818, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(65743, {	-- Primordius
							["_encounter"] = { 820, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(65744, {	-- Dark Animus
							["_encounter"] = { 824, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(65745, {	-- Iron Qon
							["_encounter"] = { 817, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(65746, {	-- Twin Empyreans
							["_encounter"] = { 829, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(65747, {	-- Lei Shen
							["_encounter"] = { 832, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
					}),
					ach(19957, {	-- Heroic: Throne of Thunder
						crit(65748, {	-- Jin'rokh the Breaker
							["_encounter"] = { 827, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(65749, {	-- Horridon
							["_encounter"] = { 819, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(65750, {	-- Council of Elders
							["_encounter"] = { 816, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(65751, {	-- Tortos
							["_encounter"] = { 825, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(65752, {	-- Megaera
							["_encounter"] = { 821, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(65753, {	-- Ji-Kun
							["_encounter"] = { 828, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(65754, {	-- Durumu the Forgotten
							["_encounter"] = { 818, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(65755, {	-- Primordius
							["_encounter"] = { 820, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(65756, {	-- Dark Animus
							["_encounter"] = { 824, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(65757, {	-- Iron Qon
							["_encounter"] = { 817, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(65758, {	-- Twin Empyreans
							["_encounter"] = { 829, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(65759, {	-- Lei Shen
							["_encounter"] = { 832, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(65760, {	-- Ra-den
							["_encounter"] = { 831, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
					}),
					ach(19921),		-- Shado-Pan Assault
				}),
				d(DIFFICULTY.LEGACY_RAID.FINDER, {
					n(ARMOR, bubbleDown({ ["modID"] = 0 }, {
						filter(CLOTH, {
							-- PRIEST
							i(213874),	-- Bracers of the Exorcist
							i(213873),	-- Cord of the Exorcist
							i(213875),	-- Cuffs of the Exorcist
							i(213869),	-- Gloves of the Exorcist
							i(213870),	-- Hood of the Exorcist
							i(213871),	-- Leggings of the Exorcist
							i(213868),	-- Sandals of the Exorcist
							i(213872),	-- Shoulderpads of the Exorcist
							-- MAGE
							i(213803),	-- Raiment of the Chromatic Hydra
							i(213804),	-- Treads of the Chromatic Hydra
							i(213805),	-- Handwraps of the Chromatic Hydra
							i(213806),	-- Cowl of the Chromatic Hydra
							i(213807),	-- Pants of the Chromatic Hydra
							i(213808),	-- Amice of the Chromatic Hydra
							i(213809),	-- Belt of the Chromatic Hydra
							i(213810),	-- Cuffs of the Chromatic Hydra
							-- WARLOCK
							i(213939),	-- Bracers of the Thousandfold Hells
							i(213940),	-- Cord of the Thousandfold Hells
							i(213941),	-- Shoulderpads of the Thousandfold Hells
							i(213942),	-- Leggings of the Thousandfold Hells
							i(213943),	-- Hood of the Thousandfold Hells
							i(213944),	-- Gloves of the Thousandfold Hells
							i(213945),	-- Sandals of the Thousandfold Hells
							i(213946),	-- Robe of the Thousandfold Hells
						}),
						filter(LEATHER, {
							-- DRUID
							i(214174),	-- Bindings of the Haunted Forest
							i(214175),	-- Vest of the Haunted Forest
							i(214176),	-- Footguards of the Haunted Forest
							i(214177),	-- Cover of the Haunted Forest
							i(214178),	-- Grips of the Haunted Forest
							i(214179),	-- Waistband of the Haunted Forest
							i(214180),	-- Spaulders of the Haunted Forest
							i(214181),	-- Legguards of the Haunted Forest
							-- MONK
							i(214275),	-- Fire-Charm Wraps
							i(214276),	-- Fire-Charm Jerkin
							i(214277),	-- Fire-Charm Treads
							i(214278),	-- Fire-Charm Cap
							i(214279),	-- Fire-Charm Handguards
							i(214280),	-- Fire-Charm Cinch
							i(214281),	-- Fire-Charm Mantle
							i(214282),	-- Fire-Charm Pants
							-- ROGUE
							i(214339),	-- Nine-Tailed Bindings
							i(214340),	-- Nine-Tailed Vest
							i(214341),	-- Nine-Tailed Footguards
							i(214342),	-- Nine-Tailed Cover
							i(214343),	-- Nine-Tailed Grips
							i(214344),	-- Nine-Tailed Waistband
							i(214345),	-- Nine-Tailed Spaulders
							i(214346),	-- Nine-Tailed Legguards
						}),
						filter(MAIL, {
							-- HUNTER
							i(214596),	-- Saurok Stalker's Bracers
							i(214598),	-- Saurok Stalker's Hauberk
							i(214599),	-- Saurok Stalker's Boots
							i(214600),	-- Saurok Stalker's Helm
							i(214601),	-- Saurok Stalker's Gauntlets
							i(214602),	-- Saurok Stalker's Belt
							i(214603),	-- Saurok Stalker's Spaulders
							i(214604),	-- Saurok Stalker's Leggings
							-- SHAMAN
							i(214675),	-- Belt of the Witch Doctor
							i(214678),	-- Boots of the Witch Doctor
							i(214680),	-- Bracers of the Witch Doctor
							i(214676),	-- Gauntlets of the Witch Doctor
							i(214679),	-- Hauberk of the Witch Doctor
							i(214677),	-- Helm of the Witch Doctor
							i(214673),	-- Leggings of the Witch Doctor
							i(214674),	-- Spaulders of the Witch Doctor
							-- Wtf?
							i(213867),	-- Robe of the Exorcist (dropped for Myrhial as shaman)
						}),
						filter(PLATE, {
							-- DEATH KNIGHT
							i(214849),	-- Greaves of the All-Consuming Maw
							i(214850),	-- Shoulderguards of the All-Consuming Maw
							i(214851),	-- Waistguard of the All-Consuming Maw
							i(214852),	-- Grasp of the All-Consuming Maw
							i(214853),	-- Warhelm of the All-Consuming Maw
							i(214854),	-- Greatboots of the All-Consuming Maw
							i(214855),	-- Armguards of the All-Consuming Maw
							i(214856),	-- Chestguard of the All-Consuming Maw
							-- PALADIN
							i(214929),	-- Lightning Emperor's Girdle
							i(214930),	-- Lightning Emperor's Pauldrons
							i(214931),	-- Lightning Emperor's Gauntlets
							i(214932),	-- Lightning Emperor's Breastplate
							i(214933),	-- Lightning Emperor's Helm
							i(214934),	-- Lightning Emperor's Legguards
							i(214935),	-- Lightning Emperor's Bracers
							i(214936),	-- Lightning Emperor's Sabatons
							-- WARRIOR
							i(215001),	-- Sabatons of the Last Mogu
							i(215002),	-- Bracers of the Last Mogu
							i(215003),	-- Legguards of the Last Mogu
							i(215004),	-- Helm of the Last Mogu
							i(215005),	-- Breastplate of the Last Mogu
							i(215006),	-- Grasp of the Last Mogu
							i(215007),	-- Pauldrons of the Last Mogu
							i(215008),	-- Girdle of the Last Mogu
						}),
					})),
					n(WEAPONS, bubbleDown({ ["modID"] = 0 }, {
						i(216425),	-- Acid-Spine Bonebreaker
						i(216427),	-- Acid-Spine Bonebreaker
						i(215652),	-- Amun-Thoth, Sul's Spiritrender
						i(215655),	-- Amun-Thoth, Sul's Spiritrender
						i(216404),	-- Blade of the Sanguine Ritual
						i(216407),	-- Blade of the Sanguine Ritual
						i(216593),	-- Bulwark of Twinned Despair
						i(216458),	-- Caduceus of Pure Moods
						i(216461),	-- Caduceus of Pure Moods
						i(216462),	-- Dinomancer's Spire
						i(216463),	-- Dinomancer's Spire
						i(215561),	-- Durumu's Gaze
						i(215564),	-- Durumu's Gaze
						i(215687),	-- Eye of the Hydra
						i(215689),	-- Eye of the Hydra
						i(216597),	-- Eyes of the Doomed
						i(216409),	-- Fyn's Dagger
						i(216411),	-- Fyn's Dagger
						i(216434),	-- Hammer of the Dawn
						i(216437),	-- Hammer of the Dawn
						i(216412),	-- Iron Qon's Knife
						i(216415),	-- Iron Qon's Knife
						i(215899),	-- Jalak's Spirit Staff
						i(215901),	-- Jalak's Spirit Staff
						i(215769),	-- Jerthud, Hand of the Savior
						i(215787),	-- Kazra'jin's Maul
						i(215790),	-- Kazra'jin's Maul
						i(215498),	-- Kura-Kura, Kazra'jin's Headtaker
						i(215500),	-- Kura-Kura, Kazra'jin's Headtaker
						i(215766),	-- Mace of Dark Animus
						i(215768),	-- Mace of Dark Animus
						i(215625),	-- Megaera's Fang
						i(215627),	-- Megaera's Fang
						i(215546),	-- Miracoran, the Dissonant Chord
						i(215708),	-- Roar of the Quillen
						i(215711),	-- Roar of the Quillen
						i(215811),	-- Shan-Dun, Breaker of Courage
						i(215814),	-- Shan-Dun, Breaker of Courage
						i(216016),	-- Shellsplitter Battleaxe
						i(216586),	-- Shield of the Gloaming
						i(216588),	-- Shield of the Gloaming
						i(215965),	-- Soulblade of the Storm
						i(215886),	-- Soulwood Spire
						i(216014),	-- Shellsplitter Battleaxe
						i(216446),	-- Sphere of Arcing Lightning
						i(216449),	-- Sphere of Arcing Lightning
						i(216017),	-- Stormbreaker's Waraxe
						i(216020),	-- Stormbreaker's Waraxe
						i(216466),	-- Suen-Wo, Spire of the Rising Sun
						i(216469),	-- Suen-Wo, Spire of the Rising Sun
						i(216400),	-- Tia-Tia, the Spinning Star
						i(216403),	-- Tia-Tia, the Spinning Star
						i(216428),	-- Torall, the Emperor's Scepter
						i(216431),	-- Torall, the Emperor's Scepter (ToT LFR (1st wing))
						i(215542),	-- Tortoiseshell Longbow (Sisters)
						i(215545),	-- Tortoiseshell Longbow
						i(216592),	-- Tortos' Shell
						i(215517),	-- Uroe, Harbinger of Fear
						i(215519),	-- Uroe, Harbinger of Fear
						i(216010),	-- Venomlord's Skull Wand
						i(216012),	-- Venomlord's Skull Wand
						i(215961),	-- Qon's Iron Decree
						i(215964),	-- Qon's Iron Decree
						i(216589),	-- Tortos' Shell
						i(215773),	-- Zeeg's Ancient Kegbreaker (ToT LFR (2nd wing))
						i(215991),	-- Zerat, Soulburner's Greatsword
						i(215993),	-- Zerat, Soulburner's Greatsword
					})),
					header(HEADERS.Achievement, 8069, {	-- Last Stand of the Zandalari
						e(827, {	-- Jin'rokh the Breaker
							["crs"] = { 69465 },	-- Jin'rokh the Breaker
						}),
						e(819, {	-- Horridon
							["crs"] = { 68476 },	-- Horridon
						}),
						e(816, {	-- Council of Elders
							["crs"] = {
								69131,	-- Frost King Malakk
								69132,	-- High Priestess Mar'li
								69134,	-- Kazra'jin
								69078,	-- Sul the Sandrawler
							},
						}),
					}),
					header(HEADERS.Achievement, 8070, {	-- Forgotten Depths
						e(825, {	-- Tortos
							["crs"] = { 67977 },	-- Tortos
						}),
						e(821, {	-- Megaera
							["crs"] = {
								70252,	-- Arcane Head <Head of Megaera>
								70212,	-- Flaming Head <Head of Megaera>
								70235,	-- Frozen Head <Head of Megaera>
								70247,	-- Venomous Head <Head of Megaera>
							},
						}),
						e(828, {	-- Ji-Kun
							["crs"] = { 69712 },	-- Ji-Kun
						}),
					}),
					header(HEADERS.Achievement, 8071, {	-- Halls of Flesh-Shaping
						e(818, {	-- Durumu the Forgotten
							["crs"] = { 68036 },	-- Durumu the Forgotten
						}),
						e(820, {	-- Primordius
							["crs"] = { 69017 },	-- Primordius
						}),
						e(824, {	-- Dark Animus
							["crs"] = {
								69756,	-- Anima Orb
								69427,	-- Dark Animus
							},
						}),
					}),
					header(HEADERS.Achievement, 8072, {	-- Pinnacle of Storms
						e(817, {	-- Iron Qon
							["crs"] = {
								68081,	-- Dam'ren <The Frozen Sage>
								68078,	-- Iron Qon <Mastern of Quilen>
								68080,	-- Quet'zal <The Stormcaller>
								68079,	-- Ro'shak <The Molten Flare>
							},
						}),
						e(829, {	-- Twin Empyreans
							["crs"] = {
								68904,	-- Suen <Mistress of Anger>
								68905,	-- Lu'lin <Mistress of Solitude>
							},
						}),
						e(832, {	-- Lei Shen
							["crs"] = { 68397 },	-- Lei Shen
						}),
					}),
				}),
				d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, {
					n(ARMOR, bubbleDown({ ["modID"] = 0 }, {
						filter(CLOTH, {
							-- MAGE
							i(213811),	-- Wristwraps of the Chromatic Hydra
							i(213812),	-- Sash of the Chromatic Hydra
							i(213813),	-- Mantle of the Chromatic Hydra
							i(213814),	-- Trousers of the Chromatic Hydra
							i(213815),	-- Crown of the Chromatic Hydra
							i(213816),	-- Mitts of the Chromatic Hydra
							i(213817),	-- Slippers of the Chromatic Hydra
							i(213818),	-- Vestment of the Chromatic Hydra
							-- PRIEST
							i(213875),	-- Cuffs of the Exorcist
							i(213876),	-- Belt of the Exorcist
							i(213877),	-- Amice of the Exorcist
							i(213878),	-- Pants of the Exorcist
							i(213879),	-- Cowl of the Exorcist
							i(213880),	-- Handwraps of the Exorcist
							i(213881),	-- Treads of the Exorcist
							i(213882),	-- Raiment of the Exorcist
							-- WARLOCK
							i(213955),	-- Wristwraps of the Thousandfold Hells
							i(213956),	-- Sash of the Thousandfold Hells
							i(213957),	-- Mantle of the Thousandfold Hells
							i(213958),	-- Trousers of the Thousandfold Hells
							i(213959),	-- Crown of the Thousandfold Hells
							i(213960),	-- Mitts of the Thousandfold Hells
							i(213961),	-- Slippers of the Thousandfold Hells
							i(213962),	-- Vestment of the Thousandfold Hells
						}),
						filter(LEATHER, {
							-- DRUID
							i(214182),	-- Pants of the Haunted Forest
							i(214183),	-- Mantle of the Haunted Forest
							i(214184),	-- Cinch of the Haunted Forest
							i(214185),	-- Handguards of the Haunted Forest
							i(214186),	-- Cap of the Haunted Forest
							i(214187),	-- Treads of the Haunted Forest
							i(214188),	-- Jerkin of the Haunted Forest
							i(214189),	-- Wraps of the Haunted Forest
							-- MONK
							i(214259),	-- Fire-Charm Bracers
							i(214260),	-- Fire-Charm Tunic
							i(214261),	-- Fire-Charm Boots
							i(214262),	-- Fire-Charm Helm
							i(214263),	-- Fire-Charm Gloves
							i(214264),	-- Fire-Charm Belt
							i(214265),	-- Fire-Charm Shoulderpads
							i(214266),	-- Fire-Charm Leggings
							-- ROGUE
							i(214331),	-- Nine-Tailed Leggings
							i(214332),	-- Nine-Tailed Shoulderpads
							i(214333),	-- Nine-Tailed Belt
							i(214334),	-- Nine-Tailed Gloves
							i(214335),	-- Nine-Tailed Helm
							i(214336),	-- Nine-Tailed Boots
							i(214337),	-- Nine-Tailed Tunic
							i(214338),	-- Nine-Tailed Bracers
						}),
						filter(MAIL, {
							-- HUNTER
							i(214587),	-- Saurok Stalker's Legwraps
							i(214588),	-- Saurok Stalker's Mantle
							i(214589),	-- Saurok Stalker's Girdle
							i(214590),	-- Saurok Stalker's Grips
							i(214591),	-- Saurok Stalker's Helmet
							i(214592),	-- Saurok Stalker's Footguards
							i(214593),	-- Saurok Stalker's Breastplate
							i(214594),	-- Saurok Stalker's Wristguards
							-- SHAMAN
							i(214664),	-- Armbands of the Witch Doctor
							i(214659),	-- Chain of the Witch Doctor
							i(214660),	-- Gloves of the Witch Doctor
							i(214661),	-- Headguard of the Witch Doctor
							i(214657),	-- Legguards of the Witch Doctor
							i(214658),	-- Pauldrons of the Witch Doctor
							i(214663),	-- Robeguard of the Witch Doctor
							i(214662),	-- Sabatons of the Witch Doctor
						}),
						filter(PLATE, {
							-- DEATH KNIGHT
							i(214857),	-- Breastplate of the All-Consuming Maw
							i(214858),	-- Bracers of the All-Consuming Maw
							i(214859),	-- Sabatons of the All-Consuming Maw
							i(214860),	-- Helm of the All-Consuming Maw
							i(214861),	-- Gauntlets of the All-Consuming Maw
							i(214862),	-- Girdle of the All-Consuming Maw
							i(214863),	-- Pauldrons of the All-Consuming Maw
							i(214864),	-- Legguards of the All-Consuming Maw
							-- PALADIN
							i(214913),	-- Lightning Emperor's Greatbelt
							i(214914),	-- Lightning Emperor's Spaulders
							i(214915),	-- Lightning Emperor's Handguards
							i(214916),	-- Lightning Emperor's Battleplate
							i(214917),	-- Lightning Emperor's Greathelm
							i(214918),	-- Lightning Emperor's Legplates
							i(214919),	-- Lightning Emperor's Vambraces
							i(214920),	-- Lightning Emperor's Warboots
							-- WARRIOR
							i(215009),	-- Greatbelt of the Last Mogu
							i(215010),	-- Spaulders of the Last Mogu
							i(215011),	-- Gauntlets of the Last Mogu
							i(215012),	-- Battleplate of the Last Mogu
							i(215013),	-- Greathelm of the Last Mogu
							i(215014),	-- Legplates of the Last Mogu
							i(215015),	-- Vambraces of the Last Mogu
							i(215016),	-- Warboots of the Last Mogu
						}),
					})),
					n(WEAPONS, bubbleDown({ ["modID"] = 0 }, {
						i(216426),	-- Acid-Spine Bonebreaker
						i(215653),	-- Amun-Thoth, Sul's Spiritrender
						i(216405),	-- Blade of the Sanguine Ritual
						i(216596),	-- Bulwark of Twinned Despair
						i(216459),	-- Caduceus of Pure Moods
						i(216464),	-- Dinomancer's Spire
						i(215562),	-- Durumu's Gaze
						i(215688),	-- Eye of the Hydra
						i(216598),	-- Eyes of the Doomed
						i(216410),	-- Fyn's Dagger
						i(216435),	-- Hammer of the Dawn
						i(216413),	-- Iron Qon's Knife
						i(215900),	-- Jalak's Spirit Staff
						i(215770),	-- Jerthud, Hand of the Savior
						i(215788),	-- Kazra'jin's Maul
						i(215499),	-- Kura-Kura, Kazra'jin's Headtaker
						i(215767),	-- Mace of Dark Animus
						i(215626),	-- Megaera's Fang
						i(215547),	-- Miracoran, the Dissonant Chord
						i(215962),	-- Qon's Iron Decree
						i(215709),	-- Roar of the Quillen
						i(215812),	-- Shan-Dun, Breaker of Courage
						i(216015),	-- Shellsplitter Battleaxe
						i(216587),	-- Shield of the Gloaming
						i(215966),	-- Soulblade of the Storm
						i(215887),	-- Soulwood Spire
						i(216447),	-- Sphere of Arcing Lightning
						i(216018),	-- Stormbreaker's Waraxe
						i(216467),	-- Suen-Wo, Spire of the Rising Sun
						i(216401),	-- Tia-Tia, the Spinning Star
						i(216429),	-- Torall, the Emperor's Scepter
						i(215543),	-- Tortoiseshell Longbow
						i(216590),	-- Tortos' Shell
						i(215518),	-- Uroe, Harbinger of Fear
						i(216011),	-- Venomlord's Skull Wand
						i(215774),	-- Zeeg's Ancient Kegbreaker
						i(215992),	-- Zerat, Soulburner's Greatsword
					})),
					e(827, {	-- Jin'rokh the Breaker
						["crs"] = { 69465 },	-- Jin'rokh the Breaker
					}),
					e(819, {	-- Horridon
						["crs"] = { 68476 },	-- Horridon
					}),
					e(816, {	-- Council of Elders
						["crs"] = {
							69131,	-- Frost King Malakk
							69132,	-- High Priestess Mar'li
							69134,	-- Kazra'jin
							69078,	-- Sul the Sandrawler
						},
					}),
					e(825, {	-- Tortos
						["crs"] = { 67977 },	-- Tortos
					}),
					e(821, {	-- Megaera
						["crs"] = {
							70248,	-- Arcane Head <Head of Megaera>
							70212,	-- Flaming Head <Head of Megaera>
							70235,	-- Frozen Head <Head of Megaera>
							68065,	-- Megaera <Terror of the Depths>
							70247,	-- Venomous Head <Head of Megaera>
						},
					}),
					e(828, {	-- Ji-Kun
						["crs"] = { 69712 },	-- Ji-Kun
					}),
					e(818, {	-- Durumu the Forgotten
						["crs"] = { 68036 },	-- Durumu the Forgotten
					}),
					e(820, {	-- Primordius
						["crs"] = { 69017 },	-- Primordius
					}),
					e(824, {	-- Animus
						["crs"] = {
							69756,	-- Anima Orb
							69427,	-- Dark Animus
						},
					}),
					e(817, {	-- Iron Qon
						["crs"] = {
							68081,	-- Dam'ren <The Frozen Sage>
							68078,	-- Iron Qon <Mastern of Quilen>
							68080,	-- Quet'zal <The Stormcaller>
							68079,	-- Ro'shak <The Molten Flare>
						},
					}),
					e(829, {	-- Twin Empyreans
						["crs"] = {
							68904,	-- Suen <Mistress of Anger>
							68905,	-- Lu'lin <Mistress of Solitude>
						},
					}),
					e(832, {	-- Lei Shen
						["crs"] = { 68397 },	-- Lei Shen
					}),
				}),
				d(DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC, {
					n(ARMOR, bubbleDown({ ["modID"] = 0 }, {
						filter(CLOTH, {
							-- MAGE
							i(213794),	-- Bracers of the Chromatic Hydra
							i(213795),	-- Cord of the Chromatic Hydra
							i(213797),	-- Shoulderpads of the Chromatic Hydra
							i(213798),	-- Leggings of the Chromatic Hydra
							i(213799),	-- Hood of the Chromatic Hydra
							i(213800),	-- Gloves of the Chromatic Hydra
							i(213801),	-- Sandals of the Chromatic Hydra
							i(213802),	-- Robe of the Chromatic Hydra
							-- PRIEST
							i(213883),	-- Vestment of the Exorcist
							i(213884),	-- Slippers of the Exorcist
							i(213885),	-- Mitts of the Exorcist
							i(213886),	-- Crown of the Exorcist
							i(213887),	-- Trousers of the Exorcist
							i(213888),	-- Mantle of the Exorcist
							i(213889),	-- Sash of the Exorcist
							i(213890),	-- Wristwraps of the Exorcist
							-- WARLOCK
							i(213947),	-- Raiment of the Thousandfold Hells
							i(213948),	-- Treads of the Thousandfold Hells
							i(213949),	-- Handwraps of the Thousandfold Hells
							i(213950),	-- Cowl of the Thousandfold Hells
							i(213951),	-- Pants of the Thousandfold Hells
							i(213952),	-- Amice of the Thousandfold Hells
							i(213953),	-- Belt of the Thousandfold Hells
							i(213954),	-- Cuffs of the Thousandfold Hells
						}),
						filter(LEATHER, {
							-- DRUID
							i(214166),	-- Leggings of the Haunted Forest
							i(214167),	-- Shoulderpads of the Haunted Forest
							i(214168),	-- Belt of the Haunted Forest
							i(214169),	-- Gloves of the Haunted Forest
							i(214170),	-- Helm of the Haunted Forest
							i(214171),	-- Boots of the Haunted Forest
							i(214172),	-- Tunic of the Haunted Forest
							i(214173),	-- Bracers of the Haunted Forest
							-- MONK
							i(214267),	-- Fire-Charm Legguards
							i(214268),	-- Fire-Charm Spaulders
							i(214269),	-- Fire-Charm Waistband
							i(214270),	-- Fire-Charm Grips
							i(214271),	-- Fire-Charm Cover
							i(214272),	-- Fire-Charm Footguards
							i(214273),	-- Fire-Charm Vest
							i(214274),	-- Fire-Charm Bindings
							-- ROGUE
							i(214347),	-- Nine-Tailed Pants
							i(214348),	-- Nine-Tailed Mantle
							i(214349),	-- Nine-Tailed Cinch
							i(214350),	-- Nine-Tailed Handguards
							i(214351),	-- Nine-Tailed Cap
							i(214352),	-- Nine-Tailed Treads
							i(214353),	-- Nine-Tailed Jerkin
							i(214354),	-- Nine-Tailed Wraps
						}),
						filter(MAIL, {
							-- HUNTER
							i(214578),	-- Saurok Stalker's Armbands
							i(214579),	-- Saurok Stalker's Chestguard
							i(214580),	-- Saurok Stalker's Sabatons
							i(214582),	-- Saurok Stalker's Headguard
							i(214583),	-- Saurok Stalker's Gloves
							i(214584),	-- Saurok Stalker's Chain
							i(214585),	-- Saurok Stalker's Pauldrons
							i(214586),	-- Saurok Stalker's Legguards
							-- SHAMAN
							i(214666),	-- Breastplate of the Witch Doctor
							i(214667),	-- Footguards of the Witch Doctor
							i(214670),	-- Girdle of the Witch Doctor
							i(214669),	-- Grips of the Witch Doctor
							i(214668),	-- Helmet of the Witch Doctor
							i(214672),	-- Legwraps of the Witch Doctor
							i(214671),	-- Mantle of the Witch Doctor
							i(214665),	-- Wristguards of the Witch Doctor
						}),
						filter(PLATE, {
							-- DEATH KNIGHT
							i(214841),	-- Battleplate of the All-Consuming Maw
							i(214842),	-- Vambraces of the All-Consuming Maw
							i(214843),	-- Warboots of the All-Consuming Maw
							i(214844),	-- Greathelm of the All-Consuming Maw
							i(214845),	-- Handguards of the All-Consuming Maw
							i(214846),	-- Greatbelt of the All-Consuming Maw
							i(214847),	-- Spaulders of the All-Consuming Maw
							i(214848),	-- Legplates of the All-Consuming Maw
							-- PALADIN
							i(214921),	-- Lightning Emperor's Greatboots
							i(214922),	-- Lightning Emperor's Armguards
							i(214923),	-- Lightning Emperor's Greaves
							i(214924),	-- Lightning Emperor's Warhelm
							i(214925),	-- Lightning Emperor's Chestguard
							i(214926),	-- Lightning Emperor's Grasp
							i(214927),	-- Lightning Emperor's Shoulderguards
							i(214928),	-- Lightning Emperor's Waistguard
							-- WARRIOR
							i(214993),	-- Waistguard of the Last Mogu
							i(214994),	-- Shoulderguards of the Last Mogu
							i(214995),	-- Handguards of the Last Mogu
							i(214996),	-- Chestguard of the Last Mogu
							i(214997),	-- Warhelm of the Last Mogu
							i(214998),	-- Greaves of the Last Mogu
							i(214999),	-- Armguards of the Last Mogu
							i(215000),	-- Greatboots of the Last Mogu
						}),
					})),
					n(WEAPONS, bubbleDown({ ["modID"] = 0 }, {
						i(216432),	-- Acid-Spine Bonebreaker
						i(215654),	-- Amun-Thoth, Sul's Spiritrender
						i(216406),	-- Blade of the Sanguine Ritual
						i(216594),	-- Bulwark of Twinned Despair
						i(216460),	-- Caduceus of Pure Moods
						i(216465),	-- Dinomancer's Spire
						i(215563),	-- Durumu's Gaze (wowhead)
						i(215686),	-- Eye of the Hydra
						i(216599),	-- Eyes of the Doomed
						i(215771),	-- Jerthud, Hand of the Savior
						i(216408),	-- Fyn's Dagger
						i(216436),	-- Hammer of the Dawn
						i(216414),	-- Iron Qon's Knife
						i(215898),	-- Jalak's Spirit Staff
						i(215789),	-- Kazra'jin's Maul
						i(215497),	-- Kura-Kura, Kazra'jin's Headtaker
						i(215765),	-- Mace of Dark Animus
						i(215624),	-- Megaera's Fang
						i(215548),	-- Miracoran, the Dissonant Chord
						i(215963),	-- Qon's Iron Decree
						i(215710),	-- Roar of the Quillen
						i(215813),	-- Shan-Dun, Breaker of Courage
						i(216013),	-- Shellsplitter Battleaxe
						i(216585),	-- Shield of the Gloaming
						i(215967),	-- Soulblade of the Storm
						i(215888),	-- Soulwood Spire
						i(216448),	-- Sphere of Arcing Lightning
						i(216019),	-- Stormbreaker's Waraxe
						i(216468),	-- Suen-Wo, Spire of the Rising Sun
						i(216402),	-- Tia-Tia, the Spinning Star
						i(216430),	-- Torall, the Emperor's Scepter
						i(215544),	-- Tortoiseshell Longbow
						i(216591),	-- Tortos' Shell
						i(215516),	-- Uroe, Harbinger of Fear
						i(216009),	-- Venomlord's Skull Wand
						i(215775),	-- Zeeg's Ancient Kegbreaker
						i(215990),	-- Zerat, Soulburner's Greatsword
					})),
					e(827, {	-- Jin'rokh the Breaker
						["crs"] = { 69465 },	-- Jin'rokh the Breaker
					}),
					e(819, {	-- Horridon
						["crs"] = { 68476 },	-- Horridon
					}),
					e(816, {	-- Council of Elders
						["crs"] = {
							69131,	-- Frost King Malakk
							69132,	-- High Priestess Mar'li
							69134,	-- Kazra'jin
							69078,	-- Sul the Sandrawler
						},
					}),
					e(825, {	-- Tortos
						["crs"] = { 67977 },	-- Tortos
					}),
					e(821, {	-- Megaera
						["crs"] = {
							70248,	-- Arcane Head <Head of Megaera>
							70212,	-- Flaming Head <Head of Megaera>
							70235,	-- Frozen Head <Head of Megaera>
							68065,	-- Megaera <Terror of the Depths>
							70247,	-- Venomous Head <Head of Megaera>
						},
					}),
					e(828, {	-- Ji-Kun
						["crs"] = { 69712 },	-- Ji-Kun
					}),
					e(818, {	-- Durumu the Forgotten
						["crs"] = { 68036 },	-- Durumu the Forgotten
					}),
					e(820, {	-- Primordius
						["crs"] = { 69017 },	-- Primordius
					}),
					e(824, {	-- Animus
						["crs"] = {
							69756,	-- Anima Orb
							69427,	-- Dark Animus
						},
					}),
					e(817, {	-- Iron Qon
						["crs"] = {
							68081,	-- Dam'ren <The Frozen Sage>
							68078,	-- Iron Qon <Mastern of Quilen>
							68080,	-- Quet'zal <The Stormcaller>
							68079,	-- Ro'shak <The Molten Flare>
						},
					}),
					e(829, {	-- Twin Empyreans
						["crs"] = {
							68904,	-- Suen <Mistress of Anger>
							68905,	-- Lu'lin <Mistress of Solitude>
						},
					}),
					e(832, {	-- Lei Shen
						["crs"] = { 68397 },	-- Lei Shen
					}),
					e(831, {	-- Ra-den
						["crs"] = { 69473 },	-- Ra-den
					}),
				}),
			},
		}),
	}),
}))));