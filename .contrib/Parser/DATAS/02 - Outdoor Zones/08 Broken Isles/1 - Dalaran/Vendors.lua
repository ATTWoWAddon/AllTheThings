---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local function Sym_PvPSeasonRankSlots(SEASON, RANK, ...)
	return {
		{"sub", "pvp_gear_base", EXPANSION.LEGION, SEASON, RANK },
		{"merge"},
		{"extract","sourceID"},	-- Only Sources
		{"invtype", ... },
	}
end

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(LEGION_DALARAN, {
			n(VENDORS, {
				n(96778, {	-- Aemara <Bowyer>
					["coord"] = { 60.0, 52.6, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 28989},	-- Aemara <Bowyer> (Dalaran Northrend)
					},
				}),
				n(96780, {	-- Aerith Primrose
					["coord"] = { 57.2, 52.4, LEGION_DALARAN },
					["sym"] = {{"select","itemID",
						3422,	-- Beautiful Wildflowers
						3420,	-- Black Rose
						3424,	-- Bouquet Of Black Roses
						3423,	-- Bouquet Of White Roses
						3419,	-- Red Rose
						3421,	-- Simple Wildflowers
					}},
					["groups"] = {
						i(142498),	-- Purple Blossom
					},
				}),
				n(92936, {	-- Aimee <Pie, Pastry & Cakes>
					["coord"] = { 50.85, 29.09, LEGION_DALARAN },
					["groups"] = {
						i(42432),	-- Berry Pie Slice
						i(42436),	-- Chocolate Celebration Cake
						i(42431),	-- Dalaran Brownie
						i(42430),	-- Dalaran Doughnut
						i(128847),	-- Lovingly Crafted Carrot Cake
						i(124398),	-- Nightberry Truffle
						i(60378),	-- Plumpkin Pie
						i(42429),	-- Red Velvet Cupcake
					},
				}),
				n(93528, {	-- Angelique Butler <First Aid Supplies>
					["coord"] = { 36.6, 37.6, LEGION_DALARAN },
					["groups"] = {
						i(44694),	-- Antiseptic-Soaked Dressing
						i(44692),	-- Dalaran Nurse's Gown
						i(44693),	-- Wound Dressing
					},
				}),
				n(119486, {	-- Apothecary Lee <Legion Gladiator>
					["races"] = HORDE_ONLY,
					["coord"] = { 56.5, 28.1, LEGION_DALARAN },
					["groups"] = {
						filter(RECIPES, bubbleDown({ ["timeline"] = { ADDED_10_0_7 } }, {
							moh(3, i(137894)),	-- Pattern: Dreadleather Shoulderguard [Rank 3] (RECIPE!)
							moh(3, i(137926)),	-- Pattern: Gravenscale Spaulders [Rank 3] (RECIPE!)
							moh(3, i(137975)),	-- Pattern: Imbued Silkweave Epaulets [Rank 3] (RECIPE!)
							moh(3, i(123950)),	-- Plans: Demonsteel Pauldrons [Rank 3] (RECIPE!)
						})),
					},
				}),
				n(106655, {	-- Arcanomancer Vridiel <Blacksmithing Trainer>
					["coord"] = { 45.2, 29.1, LEGION_DALARAN },
					["groups"] = {
						i(154879, {	-- Awoken Titan Essence
							["description"] = "Unless you played during Legion and have legendaries still not at their maximum iLvl, this item is completely useless.",
						}),
						i(157796, {	-- Purified Titan Essence
							["u"] = REMOVED_FROM_GAME,
							["sym"] = {
								{ "select", "npcID", 106655 },	-- Arcanomancer Vridiel <Blacksmithing Trainer>
								{ "pop" },	-- Discard the header and acquire the children.
								{ "is", "itemID" },	-- Select the Items.
								{ "exclude", "itemID", 154879, 157796, 151709 },	-- Exclude the Purified Titan Essence, Awoken Titan Essence, and Recipe: Felslate Anchor
							},
						}),
						i(147294, {	-- Bone-Wrought Coffer of the Damned [Death Knight]
							["cost"] = { { "c", 1533, 1000 } },	-- 1,000x Wakening Essence
							["_drop"] = { "spellID" },
							["groups"] = {
								i(132459),	-- Perseverance of the Ebon Martyr
								i(144280),	-- Death March
								i(132444),	-- Prydaz, Xavric's Magnum Opus
								i(144281),	-- Skullflower's Haemostasis
								i(137075),	-- Tak'theritrix's Shoulderpads
								i(132376),	-- Acherus Drapes
								i(151796),	-- Cold Heart
								i(151795),	-- Soulflayer's Corruption
								i(132365),	-- Shackles of Brynadaor
								i(132448),	-- The Instructor's Fourth Lesson
								i(132458),	-- Toravon's Whiteout Bindings
								i(132441),	-- Draugr, Girdle of the Everlasting King
								i(132366),	-- Koltira's Newfound Will
								i(132367),	-- Service of Gorefiend
								i(144293),	-- Consort's Cold Core
								i(132453),	-- Rattlegore Bone Legplates
								i(132443),	-- Aggramar's Stride (Plate classes)
								i(133974),	-- Lana'thel's Lament
								i(137037),	-- Uvanimor, the Unbeautiful
								i(137223),	-- Seal of Necrofantasia
								i(151640),	-- Soul of the Deathlord
								i(132452),	-- Sephuz's Secret
								i(144249),	-- Archimonde's Hatred Reborn
								i(144259),	-- Kil'jaeden's Burning Wish
							},
						}),
						i(147301, {	-- Coffer of Twin Faiths [Priest]
							["cost"] = { { "c", 1533, 1000 } },	-- 1,000x Wakening Essence
							["_drop"] = { "spellID" },
							["groups"] = {
								i(144244),	-- Kam Xi'raff
								i(151787),	-- The Alabaster Lady
								i(133971),	-- Zenk'aram, Iridi's Anadem
								i(151786),	-- Inner Hallation
								i(132437),	-- Mother Shahraz's Seduction
								i(137109),	-- X'anshi, Shroud of Archbishop Benedictus
								i(144438),	-- Zeks Exterminatus
								i(132861),	-- Estel, Dejahna's Inspiration
								i(151814),	-- Heart of the Void
								i(132409),	-- Anund's Seared Shackles
								i(132450),	-- Muze's Unwavering Will
								i(132436),	-- Skjoldr, Sanctuary of Ivangont
								i(144247),	-- Rammal's Ulterior Motive
								i(132461),	-- Xalan the Feared's Clench
								i(132445),	-- Al'maiesh, the Cord of Hope
								i(133800),	-- Cord of Maiev, Priestess of the Moon
								i(132864),	-- Mangaza's Madness
								i(132447),	-- Entrancing Trousers of An'juna
								i(132455),	-- Norgannon's Foresight (Cloth classes)
								i(132452),	-- Sephuz's Secret
								i(144259),	-- Kil'jaeden's Burning Wish
								i(132444),	-- Prydaz, Xavric's Magnum Opus
								i(133973),	-- The Twins' Painful Touch
								i(137276),	-- N'ero, Band of Promises
								i(151646),	-- Soul of the High Priest
								i(144258),	-- Velen's Future Sight
								i(132449),	-- Phyrix's Embrace
							},
						}),
						i(147297, {	-- Deepwood Ranger's Quiver [Hunter]
							["cost"] = { { "c", 1533, 1000 } },	-- 1,000x Wakening Essence
							["_drop"] = { "spellID" },
							["groups"] = {
								i(137064),	-- The Shadow Hunter's Voodoo Mask
								i(144326),	-- The Mantle of Command
								i(151803),	-- Celerity of the Windrunnerszao
								i(151807),	-- Unseen Predator's Cloak
								i(144361),	-- Butcher's Bone Apron
								i(151805),	-- Parsel's Tongue
								i(137101),	-- Call of the Wild
								i(141353),	-- Magnetized Blasting Cap Launcher
								i(144303),	-- MKII  Gyroscopic Stabilizer
								i(137082),	-- Hellbrine, Rope of the Mist Marauder
								i(137080),	-- Roar of the Seven Lions
								i(137081),	-- War Belt of the Sentinel Army
								i(132466),	-- Roots of Shaladrassil (Mail classes)
								i(137034),	-- Nesingwary's Trapping Treads
								i(137227),	-- Qa'pla, Eredun War Order
								i(137033),	-- Ulr's Feather Snowshoes
								i(132452),	-- Sephuz's Secret
								i(144259),	-- Kil'jaeden's Burning Wish
								i(132444),	-- Prydaz, Xavric's Magnum Opus
								i(137043),	-- Frizzo's Fingertrap
								i(137055),	-- Zevrim's Hunger
								i(137382),	-- The Apex Predator's Claw
								i(151641),	-- Soul of the Huntmaster
							},
						}),
						i(147295, {	-- Demonslayer's Soul-Sealed Satchel [Demon Hunter]
							["cost"] = { { "c", 1533, 1000 } },	-- 1,000x Wakening Essence
							["_drop"] = { "spellID" },
							["groups"] = {
								i(137061),	-- Raddon's Cascading Eyes
								i(132444),	-- Prydaz, Xavric's Magnum Opus
								i(144279),	-- Delusions of Grandeur
								i(137071),	-- Runemaster's Pauldrons
								i(151798),	-- Chaos Theory
								i(137066),	-- Cloak of Fel Flames
								i(137014),	-- Achor, the Eternal Hunger
								i(137090),	-- Mo'arg Bionic Stabilizers
								i(137091),	-- The Defiler's Lost Vambraces
								i(144292),	-- Spirit of the Darkness Flame
								i(133976),	-- Cinidaria, the Symbiote (Leather classes)
								i(151799),	-- Obilivion's Embrace
								i(138949),	-- Kirel Narak
								i(137022),	-- Loramus Thalipedes' Sacrifice
								i(137038),	-- Anger of the Half-Giants
								i(138854),	-- Fragment of the Betrayer's Prison
								i(151639),	-- Soul of the Slayer
								i(132452),	-- Sephuz's Secret
								i(144249),	-- Archimonde's Hatred Reborn
								i(144259),	-- Kil'jaeden's Burning Wish
							},
						}),
						i(147303, {	-- Giant Elemental's Close Stone Fist [Shaman]
							["cost"] = { { "c", 1533, 1000 } },	-- 1,000x Wakening Essence
							["_drop"] = { "spellID" },
							["groups"] = {
								i(143732),	-- Uncertain Reminder
								i(137074),	-- Echoes of the Great Sundering
								i(137616),	-- Emalon's Charged Core
								i(151785),	-- Fire in the Deep
								i(137084),	-- Akainu's Absolute Justice
								i(137102),	-- Al'Akir's Acrimony
								i(137104),	-- Nobundo's Redemption
								i(137058),	-- Praetorian's Tidecallers
								i(151819),	-- Smoldering Heart
								i(137085),	-- Intact Nazjatar Molting
								i(137083),	-- Pristine Prot-Scale Girdle
								i(137103),	-- Storm Tempests
								i(132466),	-- Roots of Shaladrassil (Mail classes)
								i(137036),	-- Elemental Rebalancers
								i(138117),	-- Spiritual Journey
								i(137035),	-- The Deceiver's Blood Pact
								i(132452),	-- Sephuz's Secret
								i(144259),	-- Kil'jaeden's Burning Wish
								i(132444),	-- Prydaz, Xavric's Magnum Opus
								i(137050),	-- Eye of the Twisting Nether
								i(137051),	-- Focuser of Jonat, the Elder
								i(151647),	-- Soul of the Farseer
								i(144258),	-- Velen's Future Sight
							},
						}),
						i(147299, {	-- Hand-Carved Jade Puzzle Box [Monk]
							["cost"] = { { "c", 1533, 1000 } },	-- 1,000x Wakening Essence
							["_drop"] = { "spellID" },
							["groups"] = {
								i(137063),	-- Fundamental Observation
								i(151811),	-- The Wind Blows
								i(151788),	-- Stormstout's Last Gasp
								i(137073),	-- Unison Spaulders
								i(137019),	-- Cenedril, Reflector of Hatred
								i(151784),	-- Doorway to Nowhere
								i(144277),	-- Anvil-Hardened Wristwraps
								i(137097),	-- Drinking Horn Cover
								i(137057),	-- Hidden Master's Forbidden Touch
								i(137096),	-- Petrichor Lagniappe
								i(133976),	-- Cinidaria, the Symbiote (Leather classes)
								i(137079),	-- Gai Plin's Soothing Sash
								i(138879),	-- Ovyd's Winter Wrap
								i(137068),	-- Leggings of the Black Flame
								i(137028),	-- Ei'thas, Lunar Glides of Eramas
								i(137027),	-- Firestone Walkers
								i(137029),	-- Katsuo's Eclipse
								i(132452),	-- Sephuz's Secret
								i(144249),	-- Archimonde's Hatred Reborn
								i(144259),	-- Kil'jaeden's Burning Wish
								i(132444),	-- Prydaz, Xavric's Magnum Opus
								i(137044),	-- Jewel of the Lost Abbey
								i(137045),	-- Eye of Collidus the Warp-Watcher
								i(137220),	-- March of the Legion
								i(151643),	-- Soul of the Grandmaster
								i(144258),	-- Velen's Future Sight
								i(137016),	-- Sal'salabim's Lost Tunic
								i(144340),	-- Shelter of Rin
								i(144239),	-- The Emperor's Capacitor
							},
						}),
						i(147302, {	-- Hollow Skeleton Key [Rogue]
							["cost"] = { { "c", 1533, 1000 } },	-- 1,000x Wakening Essence
							["_drop"] = { "spellID" },
							["groups"] = {
								i(151815),	-- The Empty Crown
								i(144236),	-- Mantle of the Master Assassino
								i(151817),	-- The Curse of Restlessness
								i(137021),	-- The Dreadlord's Deceit
								i(137100),	-- Denial of the Half-Giants
								i(137099),	-- Greenskin's Waterlogged Wristcuffs
								i(137098),	-- Zoldyck Family Training Shackles
								i(141321),	-- Shivarran Symmetry
								i(151818),	-- The Fist of the Dead
								i(133976),	-- Cinidaria, the Symbiote (Leather classes)
								i(137069),	-- Will of Valeera
								i(137030),	-- Duskwalker's Footpads
								i(137032),	-- Shadow Satyr's Walk
								i(137031),	-- Thraxi's Tricksy Treads
								i(132452),	-- Sephuz's Secret
								i(144259),	-- Kil'jaeden's Burning Wish
								i(132444),	-- Prydaz, Xavric's Magnum Opus
								i(137049),	-- Insignia of Ravenholdt
								i(150936),	-- Soul of the Shadowblade
							},
						}),
						i(147300, {	-- Light-Bound Relinquary [Paladin]
							["cost"] = { { "c", 1533, 1000 } },	-- 1,000x Wakening Essence
							["_drop"] = { "spellID" },
							["groups"] = {
								i(137065),	-- Justice Gaze
								i(144275),	-- Saruan's Resolve
								i(151782),	-- The Topless Tower
								i(144358),	-- Ashes to Dust
								i(137076),	-- Obsidian Stone Spaulders
								i(151812),	-- Pillars of Inmost Light
								i(144273),	-- Maraad's Dying Breath
								i(137020),	-- Whisper  of the Nathrezim
								i(137017),	-- Breastplate of the Golden Val'kyr
								i(151813),	-- Scarlet Inquisitor's Expurgation
								i(140846),	-- Aegisjalmur, the Armguards of Awe
								i(137105),	-- Uther's Guard
								i(137059),	-- Tyr's Hand of Faith
								i(137086),	-- Chain of Thrayn
								i(137070),	-- Tyelca, Ferren Marcus's Stature
								i(132443),	-- Aggramar's Stride (Plate classes)
								i(132452),	-- Sephuz's Secret
								i(144249),	-- Archimonde's Hatred Reborn
								i(144259),	-- Kil'jaeden's Burning Wish
								i(132444),	-- Prydaz, Xavric's Magnum Opus
								i(137046),	-- Iterendi, Crown Jewel of Silvermoon
								i(137047),	-- Heathcliff's Immortality
								i(137048),	-- Liadrin's Fury Unleashed
								i(151644),	-- Soul of the Highlord
								i(144258),	-- Velen's Future Sight
							},
						}),
						i(147296, {	-- Living Root-Bound Cache [Druid]
							["cost"] = { { "c", 1533, 1000 } },	-- 1,000x Wakening Essence
							["_drop"] = { "spellID" },
							["groups"] = {
								i(151801),	-- Behemoth Headdress
								i(132444),	-- Prydaz, Xavric's Magnum Opus
								i(151783),	-- Chameleon Song
								i(144432),	-- Oakheart's Puny Quods
								i(137062),	-- The Emerald Dreamcatch
								i(137072),	-- Aman'Thul's Wisdom
								i(144295),	-- Lady and the Child
								i(151800),	-- Radiant Moonlight
								i(137015),	-- Ekowraith, Creator of Worlds
								i(137095),	-- Edraith, Bonds of Aglaya
								i(137056),	-- Luffa Wrappings
								i(137092),	-- Oneth's Intuition
								i(137094),	-- The Wildshaper's Clutch
								i(144242),	-- X'oni's Caress
								i(133976),	-- Cinidaria, the Symbiote (Leather classes)
								i(137078),	-- The Dark Titan's Advice
								i(137067),	-- Elize's Everlasting Encasement
								i(144354),	-- Fiery Red Maimers
								i(137024),	-- Ailuro Pouncers
								i(137026),	-- Essence of Infusion
								i(137023),	-- Promise of Elune, the Moon Goddess
								i(137025),	-- Skysec's Hold
								i(132452),	-- Sephuz's Secret
								i(144249),	-- Archimonde's Hatred Reborn
								i(144259),	-- Kil'jaeden's Burning Wish
								i(137039),	-- Impeccable Fel Essence
								i(137040),	-- Chatoyant Signet
								i(137041),	-- Dual Determination
								i(137042),	-- Tearstone of Elune
								i(151636),	-- Soul of the Archdruid
								i(144258),	-- Velen's Future Sight
								i(151802),	-- Fury of Nature
							},
						}),
						i(147304, {	-- Pocket Keystone to Abandoned World [Warlock]
							["cost"] = { { "c", 1533, 1000 } },	-- 1,000x Wakening Essence
							["_drop"] = { "spellID" },
							["groups"] = {
								i(132394),	-- Hood of Eternal Disdain
								i(144385),	-- Wakener's Loyalty
								i(144369),	-- Lessons of Space-Time
								i(132393),	-- Recurrent Ritual
								i(132375),	-- Odr, Shawl of the Ymirjar
								i(144364),	-- Reap and Sow
								i(151821),	-- The Master Harvester
								i(132407),	-- Magistrike Restraits
								i(132379),	-- Sin'dorei Spite
								i(132381),	-- Streten's Sleepless Shackles
								i(132456),	-- Feretory of Souls
								i(132374),	-- Kazzak's Final Curse
								i(132457),	-- Power Cord of Lethtendris
								i(132357),	-- Pillars of the Dark Portal
								i(132455),	-- Norgannon's Foresight (Cloth classes)
								i(132452),	-- Sephuz's Secret
								i(144259),	-- Kil'jaeden's Burning Wish
								i(132444),	-- Prydaz, Xavric's Magnum Opus
								i(132369),	-- Wilfred's Sigil of Superior Summoning
								i(132378),	-- Sacrolash's Dark Strike
								i(132460),	-- Alythess's Pyrogenics
								i(151649),	-- Soul of the Netherlord
							},
						}),
						i(147298, {	-- Spell-Secured Pocket of Infinite Depths [Mage]
							["cost"] = { { "c", 1533, 1000 } },	-- 1,000x Wakening Essence
							["_drop"] = { "spellID" },
							["groups"] = {
								i(132863),	-- Darckli's Dragonfire Diadem
								i(144274),	-- Gravity Seal
								i(151810),	-- Shattered Fragments of Sindragosa
								i(151809),	-- Contained Infernal Core
								i(144260),	-- Ice Time
								i(151808),	-- Mantle of the First Kirin Tor
								i(133977),	-- Belo'vir's Final Stand
								i(138140),	-- Magtheridon's Banished Bracers
								i(132406),	-- Marquee Bindings of the Sun King
								i(132413),	-- Rhonin's Assaulting Armwraps
								i(132411),	-- Lady Vashj's Grasp
								i(144355),	-- Pyrotex Ignition Cloth
								i(132442),	-- Cord of Infinity
								i(132454),	-- Koralon's Burning Touch
								i(133970),	-- Zann'esu Journey
								i(132451),	-- Mystic Kilt of the Rune Master
								i(132455),	-- Norgannon's Foresight (Cloth classes)
								i(132452),	-- Sephuz's Secret
								i(144259),	-- Kil'jaeden's Burning Wish
								i(132444),	-- Prydaz, Xavric's Magnum Opus
								i(132410),	-- Shard of the Exodar
								i(151642),	-- Soul of the Archmage
							},
						}),
						i(147305, {	-- Stalwart Champion's War Chest [Warrior]
							["cost"] = { { "c", 1533, 1000 } },	-- 1,000x Wakening Essence
							["_drop"] = { "spellID" },
							["groups"] = {
								i(137088),	-- Ceann-Ar Charger
								i(151823),	-- The Great Storm's Eye
								i(143728),	-- Timeless Stratagem
								i(137053),	-- Kazzalax, Fujieda's Furyn
								i(137018),	-- Destiny Driver
								i(137107),	-- Mannoroth's Bloodletting Manacles
								i(137060),	-- Archavon's Heavy Hand
								i(137108),	-- Kakushan's Stormscale Gauntlets
								i(137087),	-- Naj'entus's Vertebrae
								i(137089),	-- Thundergod's Vigor
								i(151822),	-- Ararat's Bloodmirror
								i(151824),	-- Valarjar Berserkers
								i(137077),	-- Weight of the Earth
								i(132443),	-- Aggramar's Stride (Plate classes)
								i(132452),	-- Sephuz's Secret
								i(144249),	-- Archimonde's Hatred Reborn
								i(144259),	-- Kil'jaeden's Burning Wish
								i(132444),	-- Prydaz, Xavric's Magnum Opus
								i(137052),	-- Ayala's Stone Heart
								i(151650),	-- Soul of the Battlelord
								i(137054),	-- The Walls Fell
							},
						}),
					},
				}),
				n(96979, {	-- Bragund Brightlink <Mail Armor Merchant>
					["coord"] = { 51.0, 73.5, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 29523},	-- Bragund Brightlink <Mail Armor Merchant> (Dalaran Northrend)
					},
				}),
				n(96479, {	-- Breanni <Pet Supplies>
					["coord"] = { 58.3, 39.4, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 28951},	-- Breanni <Pet Supplies> (Dalaran Northrend)
					},
				}),
				n(97339, {	-- Cho Ironpalm <Dagger & Fist Weapon Merchant>
					["coord"] = { 53.1, 62.8, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 29499},	-- Bartram Haller <Dagger & Fist Weapon Merchant>
					},
				}),
				n(96785, {	-- Christi Stockton <Wine Vendor>
					["coord"] = { 53.8, 32.6, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 32337},	-- Christi Stockton <Wine Vendor> (Dalaran Northrend)
					},
				}),
				n(96484, {	-- Clockwork Assistant <Jepetto's Companion>
					["coord"] = { 43.4, 45.7, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 29716},	-- Clockwork Assistant <Jepetto's Companion> (Dalaran Northrend)
					},
				}),
				n(96976, {	-- Cloth Merchant <Cloth Armor Merchant>
					["coord"] = { 37.3, 56.3, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 35496},	-- Rueben Lauren <Cloth Armor Merchant>
					},
				}),
				n(96812, {	-- Elizabeth Ross <Tabard Vendor>
					["coord"] = { 50.8, 55.6, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 28776},	-- Elizabeth Ross <Tabard Vendor>
					},
				}),
				n(96779, {	-- Dagna Flintlock <Gunsmith>
					["coord"] = { 59.8, 52.2, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 29476},	-- Dagna Flintlock <Gunsmith> (Dalaran Northrend)
					},
				}),
				n(107326, {	-- Draemus <Exotic Pet Supplier>
					["coord"] = { 58.7, 39.3, LEGION_DALARAN },
					["groups"] = {
						i(136910, {	-- Alarm-o-Bot (PET!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 200 },	-- 200x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 200 },
								-- #endif
							},
						}),
						i(118599, {	-- Autumnal Sproutling (PET!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 100 },	-- 100x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 100 },
								-- #endif
							},
						}),
						i(129760, {	-- Fel Piglet (PET!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 200 },	-- 200x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 200 },
								-- #endif
							},
						}),
						i(140231, {	-- Narcissa's Mirror (TOY!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 1000 },	-- 1000x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 1000 },
								-- #endif
							},
						}),
						i(129878, {	-- Nightwatch Swooper (PET!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 100 },	-- 100x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 100 },
								-- #endif
							},
						}),
						i(129798, {	-- Plump Jelly (PET!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 50 },	-- 50x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 500 },
								-- #endif
							},
						}),
						i(140274, {	-- River Calf (PET!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 50 },	-- 50x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 50 },
								-- #endif
							},
						}),
						i(144346, {	-- Boon of the Zookeeper
							i(144345, {	-- Pile of Pet Goodies
								i(116415, {	-- Shiny Pet Charm
									["timeline"] = { REMOVED_10_2_5 },
								}),
								-- #if AFTER 10.2.5
								i(163036),	-- Polished Pet Charm
								-- #endif
							}),
						}),
					},
				}),
				n(98724, {	-- Giada Goldleash <Exotic Pets and Accessories>
					["coord"] = { 58.3, 38.0, LEGION_DALARAN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(127704, {	-- Bloodthorn Hatchling (PET!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 50 },	-- 50x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 50 },
								-- #endif
							},
						}),
						i(127703, {	-- Dusty Sporewing (PET!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 50 },	-- 50x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 50 },
								-- #endif
							},
						}),
						i(127701, {	-- Glowing Sporebat (PET!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 100 },	-- 100x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 100 },
								-- #endif
							},
						}),
						i(127707, {	-- Indestructible Bone (TOY!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 50 },	-- 50x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 200 },
								-- #endif
							},
						}),
						i(127705, {	-- Lost Netherpup (PET!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 200 },	-- 200x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 200 },
								-- #endif
							},
						}),
						i(127696, {	-- Magic Pet Mirror (TOY!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 500 },	-- 500x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 500 },
								-- #endif
							},
						}),
						i(127695, {	-- Spirit Wand (TOY!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 100 },	-- 100x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 200 },
								-- #endif
							},
						}),
					},
				}),
				n(252043, {	-- Halenthos Brightstride <Decor Specialist>
					["coord"] = { 67.0, 33.6, LEGION_DALARAN },
					["races"] = HORDE_ONLY,
					["timeline"] = { ADDED_11_2_7 },
					["groups"] = {
						i(253251, {	-- Blightfire Candle (DECOR!)
							["cost"] = 2000000,	-- 200g
						}),
						i(245411, {	-- Dark Ship's Lantern (DECOR!)
							["cost"] = 20000000,	-- 2,000g
						}),
					},
				}),
				n(93539, {	-- Hobart Grapplehammer <Engineering Supplies>
					["coord"] = { 38.4, 24.7, LEGION_DALARAN },
					["groups"] = {
						i(136630),	-- "Twirling Bottom" Repeater
						i(144328, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_5 } }, {	-- Boon of the Builder
							i(144330, {	-- Sprocket Container
								i(136630),	-- "Twirling Bottom" Repeater
								i(136632),	-- Chaos Blaster
								i(132509),	-- Deployable Bullet Dispenser
								i(136629),	-- Felgibber Shotgun
								i(144337),	-- Schematic: Chain Skullblasters (RECIPE!)
								i(144338),	-- Schematic: Heavy Skullblasters (RECIPE!)
								i(144336),	-- Schematic: Rugged Skullblasters (RECIPE!)
								i(144335),	-- Schematic: Tailored Skullblasters (RECIPE!)
								i(136631),	-- Surface-to-Infernal Rocket Launcher
							}),
						})),
						i(136632),	-- Chaos Blaster
						i(139555, {	-- Designs of the Grand Architect
							["cost"] = 80000000,	-- 8,000g
							["groups"] = {
								artifact(918),	-- Titanstrike Hunter Hidden Appearance
							},
						}),
						i(136629),	-- Felgibber Shotgun
						i(136782),	-- Fireworks Instruction Manual (CI!)
						i(137709, {	-- Schematic: Auto-Hammer [Rank 2] (RECIPE!)
							["sourceQuests"] = { 40858 },	-- The Missing Pieces
						}),
						i(137705, {	-- Schematic: Deployable Bullet Dispenser [Rank 2] (RECIPE!)
							["sourceQuests"] = { 40861 },	-- In My Sights
						}),
						i(133673, {	-- Schematic: Double-Barreled Cranial Cannon [Rank 1] (RECIPE!)
							["sourceQuests"] = { 40882 },	-- Court of Stars: Revamping the Recoil
						}),
						i(137710, {	-- Schematic: Failure Detection Pylon [Rank 2] (RECIPE!)
							["sourceQuests"] = { 40875 },	-- Going to Waste
						}),
						i(137708, {	-- Schematic: Gunpack [Rank 2] (RECIPE!)
							["sourceQuests"] = { 40873 },	-- Keep Yer Powder Dry
						}),
						i(137691, {	-- Schematic: Intra-Dalaran Wormhole Generator
							["sourceQuests"] = { 40868 },	-- Wibbly-Wobbly, Timey-Wimey
						}),
						i(133674, {	-- Schematic: Ironsight Cranial Cannon [Rank 1] (RECIPE!)
							["sourceQuests"] = { 40882 },	-- Court of Stars: Revamping the Recoil
						}),
						i(137707, {	-- Schematic: Pump-Action Bandage Gun [Rank 2] (RECIPE!)
							["sourceQuests"] = { 40869 },	-- Fire and Forget
						}),
						i(141849, {	-- Schematic: Reaves Module: Bling Mode (RECIPE!)
							["sourceQuests"] = { 40881 },	-- Oil Rags to Riches
						}),
						i(133672, {	-- Schematic: Sawed-Off Cranial Cannon [Rank 1] (RECIPE!)
							["sourceQuests"] = { 40882 },	-- Court of Stars: Revamping the Recoil
						}),
						i(133671, {	-- Schematic: Semi-Automagic Cranial Cannon [Rank 1] (RECIPE!)
							["sourceQuests"] = { 40882 },	-- Court of Stars: Revamping the Recoil
						}),
						i(23817, {	-- Schematic: Titanium Toolbox (RECIPE!)
							["isLimited"] = true,
						}),
						i(136631),	-- Surface-to-Infernal Rocket Launcher
						i(141047),	-- Technique: Glyph of the Goblin Anti-Grav Flare (RECIPE!)
					},
				}),
				n(97331, {	-- Icks <Staves>
					["coord"] = { 49.0, 73.0, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 29494},	-- Shen Kang Cheng <Staves> (Dalaran Northrend)
					},
				}),
				n(93530, {	-- Ildine Sorrowspear <Enchanting Supplies>
					["coord"] = { 38.5, 41.2, LEGION_DALARAN },
					["groups"] = {
						i(139494),	-- Forgotten Formulas of the Broken Isles
						i(128591),	-- Formula: Enchant Cloak - Binding of Agility [Rank 2] (RECIPE!)
						i(128592),	-- Formula: Enchant Cloak - Binding of Intellect [Rank 2] (RECIPE!)
						i(128590),	-- Formula: Enchant Cloak - Binding of Strength [Rank 2] (RECIPE!)
						i(128588),	-- Formula: Enchant Cloak - Word of Agility [Rank 2] (RECIPE!)
						i(128589),	-- Formula: Enchant Cloak - Word of Intellect [Rank 2] (RECIPE!)
						i(128587),	-- Formula: Enchant Cloak - Word of Strength [Rank 2] (RECIPE!)
						i(128583),	-- Formula: Enchant Ring - Binding of Critical Strike [Rank 2] (RECIPE!)
						i(128584),	-- Formula: Enchant Ring - Binding of Haste [Rank 2] (RECIPE!)
						i(128585),	-- Formula: Enchant Ring - Binding of Mastery [Rank 2] (RECIPE!)
						i(128586),	-- Formula: Enchant Ring - Binding of Versatility [Rank 2] (RECIPE!)
						i(128579),	-- Formula: Enchant Ring - Word of Critical Strike [Rank 2] (RECIPE!)
						i(128580),	-- Formula: Enchant Ring - Word of Haste [Rank 2] (RECIPE!)
						i(128581),	-- Formula: Enchant Ring - Word of Mastery [Rank 2] (RECIPE!)
						i(128582),	-- Formula: Enchant Ring - Word of Versatility [Rank 2] (RECIPE!)
						i(140634),	-- Formula: Ley Shatter (RECIPE!)
					},
				}),
				n(92184, {	-- Imindril Spearsong <Blacksmithing Vendor>
					["coord"] = { 46.2, 27.2, LEGION_DALARAN },
					["groups"] = {
						i(123928),	-- Plans: Leystone Armguards [Rank 2] (RECIPE!)
						i(123934),	-- Plans: Leystone Boots [Rank 2] (RECIPE!)
						i(123935),	-- Plans: Leystone Breastplate [Rank 2] (RECIPE!)
						i(123933),	-- Plans: Leystone Gauntlets [Rank 2] (RECIPE!)
						i(137680),	-- Plans: Leystone Greaves [Rank 2] (RECIPE!)
						i(123932),	-- Plans: Leystone Helm [Rank 2] (RECIPE!)
						i(123930),	-- Plans: Leystone Pauldrons [Rank 2] (RECIPE!)
						i(123929),	-- Plans: Leystone Waistguard [Rank 2] (RECIPE!)
					},
				}),
				n(100500, {	-- Jabrul <Jewelcrafting Master>
					["sourceQuests"] = { 40547 },	-- To Dalaran, With Love
					["coord"] = { 39.6, 34.5, LEGION_DALARAN },
					["groups"] = {
						i(137809),	-- Design: Ancient Maelstrom Amulet [Rank 1] (RECIPE!)
						i(137794),	-- Design: Azsunite Loop [Rank 1] (RECIPE!)
						i(137797),	-- Design: Azsunite Pendant [Rank 1] (RECIPE!)
						i(137802),	-- Design: Blessed Dawnlight Medallion [Rank 1] (RECIPE!)
						i(138451),	-- Design: Deadly Deep Amber
						i(138454),	-- Design: Deadly Eye of Prophecy
						i(137792),	-- Design: Deep Amber Loop [Rank 1] (RECIPE!)
						i(137795),	-- Design: Deep Amber Pendant [Rank 1] (RECIPE!)
						i(137812),	-- Design: Grim Furystone Gorget [Rank 1] (RECIPE!)
						i(137808),	-- Design: Intrepid Necklace of Prophecy [Rank 1] (RECIPE!)
						i(138453),	-- Design: Masterful Queen's Opal
						i(138456),	-- Design: Masterful Shadowruby
						i(137859),	-- Design: Queen's Opal Loop [Rank 1] (RECIPE!)
						i(137860),	-- Design: Queen's Opal Pendant [Rank 1] (RECIPE!)
						i(138452),	-- Design: Quick Azsunite
						i(138455),	-- Design: Quick Dawnlight
						i(137811),	-- Design: Raging Furystone Gorget [Rank 1] (RECIPE!)
						i(137810),	-- Design: Righteous Dawnlight Medallion [Rank 1] (RECIPE!)
						i(137813),	-- Design: Saber's Eye
						i(137815),	-- Design: Saber's Eye of Agility
						i(137816),	-- Design: Saber's Eye of Intellect
						i(137814),	-- Design: Saber's Eye of Strength
						i(137861),	-- Design: Shadowruby Band [Rank 1] (RECIPE!)
						i(137793),	-- Design: Skystone Loop [Rank 1] (RECIPE!)
						i(137796),	-- Design: Skystone Pendant [Rank 1] (RECIPE!)
						i(137801),	-- Design: Sorcerous Shadowruby Pendant [Rank 1] (RECIPE!)
						i(137804),	-- Design: Subtle Shadowruby Pendant [Rank 1] (RECIPE!)
						i(137807),	-- Design: Sylvan Maelstrom Amulet [Rank 1] (RECIPE!)
						i(137805),	-- Design: Tranquil Necklace of Prophecy [Rank 1] (RECIPE!)
						i(137803),	-- Design: Twisted Pandemonite Choker [Rank 1] (RECIPE!)
						i(137806),	-- Design: Vindictive Pandemonite Choker [Rank 1] (RECIPE!)
					},
				}),
				n(93544, {	-- Jang Quillpaw <Inscription Supplies>
					["coord"] = { 41.4, 36.7, LEGION_DALARAN },
					["groups"] = {
						i(141042),	-- Technique: Glyph of Autumnal Bloom (RECIPE!)
						i(137733),	-- Technique: Glyph of Blackout (RECIPE!)
						i(141030),	-- Technique: Glyph of Cracked Ice (RECIPE!)
						i(137735),	-- Technique: Glyph of Crackling Crane Lightning (RECIPE!)
						i(141900),	-- Technique: Glyph of Falling Thunder (RECIPE!)
						i(141036),	-- Technique: Glyph of Fel-Enemies (RECIPE!)
						i(137730),	-- Technique: Glyph of Ghostly Fade (RECIPE!)
						i(141037),	-- Technique: Glyph of Mana Touched Souls (RECIPE!)
						i(137732),	-- Technique: Glyph of Sparkles (RECIPE!)
						i(137737),	-- Technique: Glyph of Stellar Flare (RECIPE!)
						i(141068),	-- Technique: Glyph of the Blazing Savior (RECIPE!)
						i(141033),	-- Technique: Glyph of the Crimson Shell (RECIPE!)
						i(141046),	-- Technique: Glyph of the Dire Stable (RECIPE!)
						i(141040),	-- Technique: Glyph of the Feral Chameleon (RECIPE!)
						i(141062),	-- Technique: Glyph of the Inquisitor's Eye (RECIPE!)
						i(137738),	-- Technique: Glyph of the Queen (RECIPE!)
						i(137734),	-- Technique: Glyph of the Sentinel (RECIPE!)
						i(137736),	-- Technique: Glyph of the Spectral Raptor (RECIPE!)
						i(141055),	-- Technique: Glyph of Yu'lon's Grace (RECIPE!)
						i(137731),	-- Technique: Grimoire of the Fel Imp (RECIPE!)
					},
				}),
				n(97009, {	-- Jawknee <Axe Merchant>
					["coord"] = { 53.8, 61.6, LEGION_DALARAN },
					["sym"] = {{"sub", "common_vendor", 29496}},	-- Kerta the Bold
				}),
				n(96483, {	-- Jepetto Joybuzz <Toymaker>
					["coord"] = { 43.6, 45.6, LEGION_DALARAN },
					["timeline"] = { ADDED_7_0_3 },
					["sym"] = {{"sub", "common_vendor", 29716}},	-- Clockwork Assistant <Jepetto's Companion> (Dalaran Northrend)
					["groups"] = {
						i(129057),	-- Dalaran Disc (TOY!)
						i(140309, {	-- Prismatic Bauble (TOY!)
							["timeline"] = { ADDED_10_1_0, REMOVED_10_1_5 },	-- During June 2023
							["cost"] = 2500000000,	-- 250,000g
						}),
					},
				}),
				n(97007, {	-- Kerta the Bold <Mace & Polearm Merchant>
					["coord"] = { 54.4, 63.0, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 29496},	-- Kerta the Bold <Axe & Polearm Merchant> (Dalaran Northrend)
					},
				}),
				n(93524, {	-- Lalla Brightweave <Tailoring Supplies>
					["coord"] = { 36.1, 33.3, LEGION_DALARAN },
					["groups"] = {
						i(137965),	-- Pattern: Imbued Silkweave Bracers [Rank 2] (RECIPE!)
						i(137967),	-- Pattern: Imbued Silkweave Epaulets [Rank 2] (RECIPE!)
						i(137970),	-- Pattern: Imbued Silkweave Gloves [Rank 2] (RECIPE!)
						i(137969),	-- Pattern: Imbued Silkweave Hood [Rank 2] (RECIPE!)
						i(137968),	-- Pattern: Imbued Silkweave Pantaloons [Rank 2] (RECIPE!)
						i(137972),	-- Pattern: Imbued Silkweave Robe [Rank 2] (RECIPE!)
						i(137971),	-- Pattern: Imbued Silkweave Slippers [Rank 2] (RECIPE!)
						i(137953),	-- Pattern: Silkweave Bracers [Rank 2] (RECIPE!)
						i(137957),	-- Pattern: Silkweave Hood [Rank 2] (RECIPE!)
						i(137955),	-- Pattern: Silkweave Epaulets [Rank 2] (RECIPE!)
						i(137958),	-- Pattern: Silkweave Gloves [Rank 2] (RECIPE!)
						i(137956),	-- Pattern: Silkweave Pantaloons [Rank 2] (RECIPE!)
						i(137960),	-- Pattern: Silkweave Robe [Rank 2] (RECIPE!)
						i(138011),	-- Pattern: Silkweave Satchel (RECIPE!)
						i(137959),	-- Pattern: Silkweave Slippers [Rank 2] (RECIPE!)
					},
				}),
				n(106930, {	-- Lieutenant Surtees <Legion Gladiator>
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 29.4, 75.6, LEGION_DALARAN },
					["groups"] = {
						filter(RECIPES, bubbleDown({ ["timeline"] = { ADDED_10_0_7 } }, {
							moh(3, i(137894)),	-- Pattern: Dreadleather Shoulderguard [Rank 3] (RECIPE!)
							moh(3, i(137926)),	-- Pattern: Gravenscale Spaulders [Rank 3] (RECIPE!)
							moh(3, i(137975)),	-- Pattern: Imbued Silkweave Epaulets [Rank 3] (RECIPE!)
							moh(3, i(123950)),	-- Plans: Demonsteel Pauldrons [Rank 3] (RECIPE!)
						})),
					},
				}),
				n(120906, {	-- Marshal Frazer <Gladiator Quartermaster>
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 33.4, 74.0, LEGION_DALARAN },
					["groups"] = {
						--[[
						currency(1356, {	-- Echoes of Battle
							["u"] = REMOVED_FROM_GAME,
							["groups"] = {
								i(149424, {	-- Helm of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_HEAD"),
								}),
								i(149427, {	-- Pauldrons of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_SHOULDER"),
								}),
								i(149432, {	-- Cloak of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_CLOAK"),
								}),
								i(149425, {	-- Chest of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_CHEST", "INVTYPE_ROBE"),
								}),
								i(149431, {	-- Bracers of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_WRIST"),
								}),
								i(149428, {	-- Gloves of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_HAND"),
								}),
								i(149429, {	-- Cinch of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_WAIST"),
								}),
								i(149426, {	-- Leggings of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_LEGS"),
								}),
								i(149430, {	-- Treads of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_FEET"),
								}),
								i(149406, {	-- Helm of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_HEAD"),
								}),
								i(149409, {	-- Pauldrons of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_SHOULDER"),
								}),
								i(149414, {	-- Cloak of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_CLOAK"),
								}),
								i(149407, {	-- Chest of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_CHEST", "INVTYPE_ROBE"),
								}),
								i(149413, {	-- Bracers of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_WRIST"),
								}),
								i(149410, {	-- Gloves of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_HAND"),
								}),
								i(149411, {	-- Cinch of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_WAIST"),
								}),
								i(149408, {	-- Leggings of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_LEGS"),
								}),
								i(149412, {	-- Treads of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_FEET"),
								}),
								i(149388, {	-- Helm of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_HEAD"),
								}),
								i(149391, {	-- Pauldrons of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_SHOULDER"),
								}),
								i(149396, {	-- Cloak of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_CLOAK"),
								}),
								i(149389, {	-- Chest of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_CHEST", "INVTYPE_ROBE"),
								}),
								i(149395, {	-- Bracers of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_WRIST"),
								}),
								i(149392, {	-- Gloves of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_HAND"),
								}),
								i(149393, {	-- Cinch of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_WAIST"),
								}),
								i(149390, {	-- Leggings of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_LEGS"),
								}),
								i(149394, {	-- Treads of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_FEET"),
								}),
							},
						}),
						currency(1357, {	-- Echoes of Domination
							["u"] = REMOVED_FROM_GAME,
							["groups"] = {
								i(149433, {	-- Helm of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_HEAD"),
								}),
								i(149436, {	-- Pauldrons of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_SHOULDER"),
								}),
								i(149441, {	-- Cloak of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_CLOAK"),
								}),
								i(149434, {	-- Chest of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_CHEST", "INVTYPE_ROBE"),
								}),
								i(149440, {	-- Bracers of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_WRIST"),
								}),
								i(149437, {	-- Gloves of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_HAND"),
								}),
								i(149438, {	-- Cinch of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_WAIST"),
								}),
								i(149435, {	-- Leggings of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_LEGS"),
								}),
								i(149439, {	-- Treads of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_FEET"),
								}),
								i(149415, {	-- Helm of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_HEAD"),
								}),
								i(149418, {	-- Pauldrons of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_SHOULDER"),
								}),
								i(149423, {	-- Cloak of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_CLOAK"),
								}),
								i(149416, {	-- Chest of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_CHEST", "INVTYPE_ROBE"),
								}),
								i(149422, {	-- Bracers of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_WRIST"),
								}),
								i(149419, {	-- Gloves of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_HAND"),
								}),
								i(149420, {	-- Cinch of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_WAIST"),
								}),
								i(149417, {	-- Leggings of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_LEGS"),
								}),
								i(149421, {	-- Treads of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_FEET"),
								}),
								i(149397, {	-- Helm of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_HEAD"),
								}),
								i(149400, {	-- Pauldrons of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_SHOULDER"),
								}),
								i(149405, {	-- Cloak of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_CLOAK"),
								}),
								i(149398, {	-- Chest of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_CHEST", "INVTYPE_ROBE"),
								}),
								i(149404, {	-- Bracers of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_WRIST"),
								}),
								i(149401, {	-- Gloves of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_HAND"),
								}),
								i(149402, {	-- Cinch of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_WAIST"),
								}),
								i(149399, {	-- Leggings of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_LEGS"),
								}),
								i(149403, {	-- Treads of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_FEET"),
								}),
							},
						}),
						--]]
					},
				}),
				n(96980, {	-- Matilda Brightlink <Mail Armor Merchant>
					["coord"] = { 51.3, 73.4, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 35500},	-- Matilda Brightlink <Mail Armor Merchant> (Dalaran Northrend)
					},
				}),
				n(92489, {	-- Mei Francis <Exotic Mounts>
					["coord"] = { 57.3, 42.4, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 32216},	-- Mei Francis <Exotic Mounts> (Dalaran Northrend)
					},
				}),
				n(96987, {	-- Norvin Alderman <Cloaks>
					["coord"] = { 36.9, 55.8, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 29495},	-- Norvin Alderman <Cloaks> (Dalaran Northrend)
					},
				}),
				n(97001, {	-- Orton Bennet <Offhand Offerings>
					["coord"] = { 51.5, 55.5, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 29527},	-- Orton Bennet <Offhand Offerings> (Dalaran Northrend)
					},
				}),
				n(96975, {	-- Paldesse <Cloth Armor Merchant>
					["coord"] = { 37.5, 56.1, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 28995},	-- Paldesse <Cloth Armor Merchant> (Dalaran Northrend)
					},
				}),
				n(92457, {	-- Patricia Egan <Alchemy Supplier>
					["coord"] = { 42.2, 32.3, LEGION_DALARAN },
					["groups"] = {
						i(127898, {	-- Recipe: Ancient Healing Potion [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39325 },	-- Get Your Mix On
						}),
						i(127917, {	-- Recipe: Ancient Healing Potion [Rank 2] (RECIPE!)
							["sourceQuests"] = { 39325 },	-- Get Your Mix On
						}),
						i(127899, {	-- Recipe: Ancient Mana Potion [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39325 },	-- Get Your Mix On
						}),
						i(127900, {	-- Recipe: Ancient Rejuvenation Potion [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39325 },	-- Get Your Mix On
						}),
						i(127903, {	-- Recipe: Avalanche Elixir [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39334 },	-- Thanks for Flasking
						}),
						i(127901, {	-- Recipe: Draught of Raw Magic [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39330 },	-- Ley Hunting
						}),
						i(127914, {	-- Recipe: Flask of Ten Thousand Scars [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39346 },	-- Testing the Calibration
						}),
						i(127913, {	-- Recipe: Flask of the Countless Armies [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39346 },	-- Testing the Calibration
						}),
						i(127912, {	-- Recipe: Flask of the Seventh Demon [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39346 },	-- Testing the Calibration
						}),
						i(127911, {	-- Recipe: Flask of the Whispered Pact [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39346 },	-- Testing the Calibration
						}),
						i(127906, {	-- Recipe: Infernal Alchemist Stone [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39341 },	-- Vault of the Wardens: Demon's Bile
						}),
						i(127910, {	-- Recipe: Leytorrent Potion [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39343 },	-- Vault of the Wardens: Bendy Glass Tubes
						}),
						i(127907, {	-- Recipe: Potion of Deadly Grace [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39343 },	-- Vault of the Wardens: Bendy Glass Tubes
						}),
						i(127908, {	-- Recipe: Potion of the Old War [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39343 },	-- Vault of the Wardens: Bendy Glass Tubes
						}),
						i(160664, {	-- Recipe: Silvery Salve (RECIPE!)
							["timeline"] = { ADDED_8_0_1 },
						}),
						i(127904, {	-- Recipe: Skaggldrynk [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39336 },	-- We Need More Powder!
						}),
						i(127905, {	-- Recipe: Skystep Potion [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39338 },	-- Return the Filter
						}),
						i(127915, {	-- Recipe: Spirit Cauldron [Rank 1] (RECIPE!)
							["sourceQuests"] = { 42081 },	-- In With the New
						}),
						i(127902, {	-- Recipe: Sylvan Elixir [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39332 },	-- Furbolg Firewater
						}),
						i(127909, {	-- Recipe: Unbending Potion [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39343 },	-- Vault of the Wardens: Bendy Glass Tubes
						}),
						i(128209, {	-- Recipe: Wild Transmutation [Rank 1] (RECIPE!)
							["sourceQuests"] = { 39338 },	-- Return the Filter
						}),
					},
				}),
				n(92195, {	-- Professor Pallin <Inscription Trainer>
					["coord"] = { 41.5, 37.3, LEGION_DALARAN },
					["groups"] = {
						i(137787),	-- Technique: Songs of Battle (RECIPE!)
					},
				}),
				n(96978, {	-- Rafael Langrom <Leather Armor Merchant>
					["coord"] = { 50.8, 72.0, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 35497},	-- Rafael Langrom <Leather Armor Merchant> (Dalaran Northrend)
					},
				}),
				n(93521, {	-- Ranid Glowergold <Leatherworking & Skinning Supplies>
					["coord"] = { 34.6, 28.6, LEGION_DALARAN },
					["groups"] = {
						i(137884),	-- Pattern: Dreadleather Bindings [Rank 2] (RECIPE!)
						i(137890),	-- Pattern: Dreadleather Footpads [Rank 2] (RECIPE!)
						i(137889),	-- Pattern: Dreadleather Gloves [Rank 2] (RECIPE!)
						i(137891),	-- Pattern: Dreadleather Jerkin [Rank 2] (RECIPE!)
						i(137888),	-- Pattern: Dreadleather Mask [Rank 2] (RECIPE!)
						i(137887),	-- Pattern: Dreadleather Pants [Rank 2] (RECIPE!)
						i(137886),	-- Pattern: Dreadleather Shoulderguard [Rank 2] (RECIPE!)
						i(142407, {	-- Pattern: Drums of the Mountain [Rank 1] (RECIPE!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						i(141850, {	-- Pattern: Elderhorn Riding Harness (RECIPE!)
							["description"] = "The vendor will only sell this recipe to those who have already completed the quest that rewards it. This is in case you deleted the recipe without learning it, or if you dropped Leatherworking after doing the quest and decided to relearn it later.",
						}),
						i(137916),	-- Pattern: Gravenscale Armbands [Rank 2] (RECIPE!)
						i(137921),	-- Pattern: Gravenscale Grips [Rank 2] (RECIPE!)
						i(137923),	-- Pattern: Gravenscale Hauberk [Rank 2] (RECIPE!)
						i(137919),	-- Pattern: Gravenscale Leggings [Rank 2] (RECIPE!)
						i(137918),	-- Pattern: Gravenscale Spaulders [Rank 2] (RECIPE!)
						i(137922),	-- Pattern: Gravenscale Treads [Rank 2] (RECIPE!)
						i(137920),	-- Pattern: Gravenscale Warhelm [Rank 2] (RECIPE!)
					},
				}),
				n(112716, {	-- Rasil Fireborne <Art Dealer>
					["coord"] = { 43.1, 49.1, LEGION_DALARAN },
					["groups"] = {
						i(246851, {	-- "Raising Your Eyes" Painting (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = 150000000,	-- 15,000g
						}),
					},
				}),
				n(97332, {	-- Richard Hatstock <Haberdasher>
					["coord"] = { 37.2, 55.6, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 29702},	-- Chameli Banaphash <Haberdasher> (Dalaran Northrend)
					},
				}),
				n(97342, {	-- Salan Sunthread <Clothier>
					["coord"] = { 37.7, 55.6, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 29491},	-- Karandonna <Clothier>
					},
				}),
				n(93543, {	-- Sminx Glasseye
					["coord"] = { 39.6, 35.1, LEGION_DALARAN },
					["groups"] = {
						i(139599, {	-- Empowered Ring of the Kirin Tor
							-- ["cost"] = 2500000000,	-- 250,000g
						}),
					},
				}),
				n(97529, {	-- The Amazing Zanzo
					["description"] = "Wanders around the city.",
					["groups"] = {
						{
							["recipeID"] = 28272,	-- Polymorph (Pig)
							["classes"] = { MAGE },
						},
					},
				}),
				n(108468, {	-- The Mad Merchant
					["description"] = "This vendor is not always present.",
					["coord"] = { 43.2, 46.6, LEGION_DALARAN },
					["groups"] = {
						i(137570, {	-- Bloodfang Widow (MOUNT!)
							["cost"] = 20000000000,	-- 2,000,000g
						}),
						i(136923, {	-- Celestial Calf (PET!)
							["cost"] = 10000000000,	-- 1,000,000g
						}),
						i(138300, {	-- Madman's Luggage
							["cost"] = 5000000000,	-- 500,000g
						}),
						i(140309, {	-- Prismatic Bauble (TOY!)
							["cost"] = 2500000000,	-- 250,000g
						}),
					},
				}),
				n(93526, {	-- Tiffany Cartier <Jewelcrafting Supplies>
					["coord"] = { 39.86, 34.77, LEGION_DALARAN },
					["groups"] = {
						i(137834),	-- Design: Ancient Maelstrom Amulet [Rank 2] (RECIPE!)
						i(137819),	-- Design: Azsunite Loop [Rank 2] (RECIPE!)
						i(137822),	-- Design: Azsunite Pendant [Rank 2] (RECIPE!)
						i(137827),	-- Design: Blessed Dawnlight Medallion [Rank 2] (RECIPE!)
						i(137817),	-- Design: Deep Amber Loop [Rank 2] (RECIPE!)
						i(137820),	-- Design: Deep Amber Pendant [Rank 2] (RECIPE!)
						i(137837),	-- Design: Grim Furystone Gorget [Rank 2] (RECIPE!)
						i(137833),	-- Design: Intrepid Necklace of Prophecy [Rank 2] (RECIPE!)
						i(137862),	-- Design: Queen's Opal Loop [Rank 2] (RECIPE!)
						i(137863),	-- Design: Queen's Opal Pendant [Rank 2] (RECIPE!)
						i(137836),	-- Design: Raging Furystone Gorget [Rank 2] (RECIPE!)
						i(137835),	-- Design: Righteous Dawnlight Medallion [Rank 2] (RECIPE!)
						i(137818),	-- Design: Skystone Loop [Rank 2] (RECIPE!)
						i(137821),	-- Design: Skystone Pendant [Rank 2] (RECIPE!)
						i(137832),	-- Design: Sylvan Maelstrom Amulet [Rank 2] (RECIPE!)
						i(137830),	-- Design: Tranquil Necklace of Prophecy [Rank 2] (RECIPE!)
					},
				}),
				n(98723, {	-- Tiffy Trapspring <Exotic Pets and Accessories>
					["coord"] = { 59.2, 39.9, LEGION_DALARAN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(127704, {	-- Bloodthorn Hatchling (PET!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 50 },	-- 50x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 50 },
								-- #endif
							},
						}),
						i(127703, {	-- Dusty Sporewing (PET!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 50 },	-- 50x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 50 },
								-- #endif
							},
						}),
						i(127701, {	-- Glowing Sporebat (PET!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 100 },	-- 100x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 100 },
								-- #endif
							},
						}),
						i(127707, {	-- Indestructible Bone (TOY!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 50 },	-- 50x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 50 },
								-- #endif
							},
						}),
						i(127705, {	-- Lost Netherpup (PET!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 200 },	-- 200x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 200 },
								-- #endif
							},
						}),
						i(127696, {	-- Magic Pet Mirror (TOY!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 500 },	-- 500x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 500 },
								-- #endif
							},
						}),
						i(127695, {	-- Spirit Wand (TOY!)
							["cost"] = {
								-- #if BEFORE 10.2.5
								{ "i", 116415, 100 },	-- 100x Shiny Pet Charm
								-- #else
								{ "i", POLISHED_PET_CHARM, 100 },
								-- #endif
							},
						}),
					},
				}),
				n(97011, {	-- Valaden Silverblade <Sword Merchant>
					["coord"] = { 54.1, 63.2, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 28991},	-- Valaden Silverblade <Sword Merchant> (Dalaran Northrend)
					},
				}),
				n(96977, {	-- Valerie Langrom <Leather Armor Merchant>
					["coord"] = { 51.1, 72.7, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 28992},	-- Valerie Langrom <Leather Armor Merchant> (Dalaran Northrend)
					},
				}),
				n(120687, {	-- Violet Shadowmend <Gladiator Quartermaster> -- Horde
					["races"] = HORDE_ONLY,
					["coord"] = { 59.6, 25.2, LEGION_DALARAN },
					["groups"] = {
						--[[
						currency(1356, {	-- Echoes of Battle
							["u"] = REMOVED_FROM_GAME,
							["groups"] = {
								i(149424, {	-- Helm of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_HEAD"),
								}),
								i(149427, {	-- Pauldrons of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_SHOULDER"),
								}),
								i(149432, {	-- Cloak of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_CLOAK"),
								}),
								i(149425, {	-- Chest of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_CHEST", "INVTYPE_ROBE"),
								}),
								i(149431, {	-- Bracers of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_WRIST"),
								}),
								i(149428, {	-- Gloves of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_HAND"),
								}),
								i(149429, {	-- Cinch of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_WAIST"),
								}),
								i(149426, {	-- Leggings of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_LEGS"),
								}),
								i(149430, {	-- Treads of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_GLADIATOR, "INVTYPE_FEET"),
								}),
								i(149406, {	-- Helm of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_HEAD"),
								}),
								i(149409, {	-- Pauldrons of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_SHOULDER"),
								}),
								i(149414, {	-- Cloak of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_CLOAK"),
								}),
								i(149407, {	-- Chest of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_CHEST", "INVTYPE_ROBE"),
								}),
								i(149413, {	-- Bracers of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_WRIST"),
								}),
								i(149410, {	-- Gloves of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_HAND"),
								}),
								i(149411, {	-- Cinch of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_WAIST"),
								}),
								i(149408, {	-- Leggings of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_LEGS"),
								}),
								i(149412, {	-- Treads of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_GLADIATOR, "INVTYPE_FEET"),
								}),
								i(149388, {	-- Helm of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_HEAD"),
								}),
								i(149391, {	-- Pauldrons of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_SHOULDER"),
								}),
								i(149396, {	-- Cloak of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_CLOAK"),
								}),
								i(149389, {	-- Chest of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_CHEST", "INVTYPE_ROBE"),
								}),
								i(149395, {	-- Bracers of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_WRIST"),
								}),
								i(149392, {	-- Gloves of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_HAND"),
								}),
								i(149393, {	-- Cinch of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_WAIST"),
								}),
								i(149390, {	-- Leggings of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_LEGS"),
								}),
								i(149394, {	-- Treads of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_GLADIATOR, "INVTYPE_FEET"),
								}),
							},
						}),
						currency(1357, {	-- Echoes of Domination
							["u"] = REMOVED_FROM_GAME,
							["groups"] = {
								i(149433, {	-- Helm of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_HEAD"),
								}),
								i(149436, {	-- Pauldrons of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_SHOULDER"),
								}),
								i(149441, {	-- Cloak of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_CLOAK"),
								}),
								i(149434, {	-- Chest of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_CHEST", "INVTYPE_ROBE"),
								}),
								i(149440, {	-- Bracers of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_WRIST"),
								}),
								i(149437, {	-- Gloves of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_HAND"),
								}),
								i(149438, {	-- Cinch of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_WAIST"),
								}),
								i(149435, {	-- Leggings of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_LEGS"),
								}),
								i(149439, {	-- Treads of the Demonic Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in BFA Season 1
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DEMONIC, PVP_ELITE, "INVTYPE_FEET"),
								}),
								i(149415, {	-- Helm of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_HEAD"),
								}),
								i(149418, {	-- Pauldrons of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_SHOULDER"),
								}),
								i(149423, {	-- Cloak of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_CLOAK"),
								}),
								i(149416, {	-- Chest of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_CHEST", "INVTYPE_ROBE"),
								}),
								i(149422, {	-- Bracers of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_WRIST"),
								}),
								i(149419, {	-- Gloves of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_HAND"),
								}),
								i(149420, {	-- Cinch of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_WAIST"),
								}),
								i(149417, {	-- Leggings of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_LEGS"),
								}),
								i(149421, {	-- Treads of the Dominant Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 7
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_DOMINANT, PVP_ELITE, "INVTYPE_FEET"),
								}),
								i(149397, {	-- Helm of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_HEAD"),
								}),
								i(149400, {	-- Pauldrons of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_SHOULDER"),
								}),
								i(149405, {	-- Cloak of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_CLOAK"),
								}),
								i(149398, {	-- Chest of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_CHEST", "INVTYPE_ROBE"),
								}),
								i(149404, {	-- Bracers of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_WRIST"),
								}),
								i(149401, {	-- Gloves of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_HAND"),
								}),
								i(149402, {	-- Cinch of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_WAIST"),
								}),
								i(149399, {	-- Leggings of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_LEGS"),
								}),
								i(149403, {	-- Treads of the Fierce Gladiator
									["u"] = REMOVED_FROM_GAME,	-- Removed in Legion Season 6
									["sym"] = Sym_PvPSeasonRankSlots(SEASON_FIERCE, PVP_ELITE, "INVTYPE_FEET"),
								}),
							},
						}),
						--]]
					},
				}),
				n(97012, {	-- Wanda Chanter <Wands>
					["coord"] = { 48.6, 73.8, LEGION_DALARAN },
					["sym"] = {
						{"sub", "common_vendor", 28994},	-- Wanda Chanter (Dalaran Northrend)
					},
				}),
				n(107109, {	-- Xur'ios <Vaultkeeper of the Void>
					["coord"] = { 48.8, 13.5, LEGION_DALARAN },
					["groups"] = {
						i(141713, {	-- Arcadian War Turtle (MOUNT!)
							["cost"] = { { "c", 1275, 150 } },	-- 150x Curious Coin
						}),
						i(136702, {	-- Formula: Soul Fibril (RECIPE!)
							["cost"] = { { "c", 1275, 1 } },	-- 1x Curious Coin
						}),
						i(141860, {	-- Ingram's Puzzle
							["cost"] = { { "c", 1275, 50 } },	-- 50x Curious Coin
						}),
						i(141862, {	-- Mote of Light (TOY!)
							["cost"] = { { "c", 1275, 50 } },	-- 50x Curious Coin
						}),
						i(136699, {	-- Plans: Flamespike (RECIPE!)
							["cost"] = { { "c", 1275, 1 } },	-- 1x Curious Coin
						}),
						i(137935, {	-- Pattern: Leather Love Seat (RECIPE!)
							["cost"] = { { "c", 1275, 1 } },	-- 1x Curious Coin
						}),
						i(137727, {	-- Schematic: Mecha-Bond Imprint Matrix (RECIPE!)
							["cost"] = { { "c", 1275, 1 } },	-- 1x Curious Coin
						}),
						i(136706, {	-- Technique: Straszan Mark (RECIPE!)
							["cost"] = { { "c", 1275, 1 } },	-- 1x Curious Coin
						}),
					},
				}),
			}),
		}),
	}),
});
