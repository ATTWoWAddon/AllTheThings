---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, filter(COSMETIC, {
	expansion(EXPANSION.CLASSIC, {
		-- 1.x.x
		n(P1xx, {
			i(6834),	-- Black Tuxedo
			i(7996),	-- Worn Fishing Hat
		}),
	}),
	expansion(EXPANSION.WRATH, {
		-- 3.x.x
		n(P3xx, {
			i(34718),	-- Black Leather Shoes
			i(45860),	-- Crystal Tiara
		}),
	}),
	expansion(EXPANSION.CATA, {
		-- 4.0.3
		expansion(EXPANSION.CATA, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_3 } }, {
			i(62058),	-- Irradiated Bandages
			i(52488),	-- Jeweler's Sapphire Monocle
		})),
	}),
	expansion(EXPANSION.MOP, {
		-- 5.0.1
		expansion(EXPANSION.MOP, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_5_0_4 } }, {
			i(73240),	-- Sedge Hat of the Enlightened
		})),

		-- 5.1.0
		expansion(EXPANSION.MOP, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_1_0 } }, {
			i(92553),	-- Gnomish X-Ray Specs Visual
			i(90986),	-- Ruby Bracelet
		})),
	}),
	expansion(EXPANSION.WOD, {
		-- 6.0.1
		expansion(EXPANSION.WOD, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
			i(116399),	-- Emerald Sunglasses
		})),
	}),
	expansion(EXPANSION.LEGION, {
		-- 7.0.3
		expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_7_0_3 } }, {
			i(92894),	-- Art Template Generic Head - Helm_Misc_StarPartyHat_A_01
			i(81862),	-- Art Template Robe Dress_B_03 - Blue
			i(133996),	-- Burgy Blackheart's Handsome Hat
			i(134013),	-- Chef's Hat [Likely the cosmetic effect from when you use the toy]
			i(134012),	-- X-52 Rocket Helmet [Might be the transmog it applies when you use the toy itself.]
		})),

		-- 7.2.0
		expansion(EXPANSION.LEGION, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_2_0 } }, {
			i(146306),	-- Green Winter Clothes
			i(146305),	-- Green Winter Hat
			i(146307),	-- Winter Boots
			i(147379),	-- Wooden Toy Axe [H] used to apply the mog
			i(147378),	-- Wooden Toy Sword [A] (Visual usage for toy weapon set)
		})),
	}),
	expansion(EXPANSION.BFA, {
		-- 8.0.1
		expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
			i(162641),	-- Alliance Toy Cape (used from Winter Veil 2018 Toy, but its just used to attach the look to you, you actually never get the item)
			i(162640),	-- Horde Toy Cape (used from Winter Veil 2018 Toy, but its just used to attach the look to you, you actually never get the item)
			i(163922),	-- Kobold Candle Helm
			i(163923),	-- Kobold Candle Helm
			i(162638),	-- Wooden Toy Helm [H] (used from Winter Veil 2018 Toy, but its just used to attach the look to you, you actually never get the item)
			i(162639),	-- Wooden Toy Helm [A] (used from Winter Veil 2018 Toy, but its just used to attach the look to you, you actually never get the item)
		})),

		-- 8.1.5
		expansion(EXPANSION.BFA, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_8_1_5 } }, {
			i(168004),	-- Gift of N'Zoth
		})),
	}),
	expansion(EXPANSION.SL, {
		-- 9.0.1
		expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
			n(ARMOR, {
				i(182306),	-- Monster Mantle
			}),
		})),

		-- 9.1.0
		expansion(EXPANSION.SL, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_1_0 } }, {
			n(ARMOR, {
				i(185774),	-- PH Green Head Candle
				i(186093),	-- Shaded Spectacles
			}),
			n(SETS, {
				i(186500),	-- Ensemble: Garb of the Twilight Grove
				q(63596),	--Ensemble: Garb of the Twilight Grove
				i(186518),	-- Ensemble: Forsworn Aspirant's Regalia
				q(63600),	--Ensemble: Forsworn Aspirant's Regalia
				i(186505),	-- Ensemble: Rogue Necromancer's Vestments
				q(63629),	--Ensemble: Rogue Necromancer's Vestments
				i(186513),	-- Ensemble: Radiant Court Attire
				q(63632),	--Ensemble: Radiant Court Attire
				i(186514),	-- Ensemble: Redeemed Inquisitor's Vestments
				q(63636),	--Ensemble: Redeemed Inquisitor's Vestments
			}),
		})),

		-- 9.1.5
		expansion(EXPANSION.SL, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_9_1_5 } }, {
			n(ARMOR, {
				i(187914),	-- Captain Noteo's Unused Eye Patch
			}),
		})),
	}),
	expansion(EXPANSION.DF, {
		-- 10.0.0
		expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
			n(ARMOR, {
				i(193069),	-- Climber's Pack
				i(199666),	-- Spiked Azure Spaulders
				i(199667),	-- Spiked Bronze Spaulders
				i(199668),	-- Spiked Emerald Spaulders
				i(199665),	-- Spiked Obsidian Spaulders
			}),
			n(SETS, {
				------ Honored Valarjar Set [Mail] ------
				i(190575),	-- Ensemble: Chains of the Honored Valarjar
				q(65676),	-- Ensemble: Chains of the Honored Valarjar
				i(190563),	-- Armbands of the Honored Valarjar
				i(190564),	-- Cape of the Honored Valarjar
				i(190568),	-- Coif of the Honored Valarjar
				i(190567),	-- Cuirass of the Honored Valarjar
				i(190566),	-- Gauntlets of the Honored Valarjar
				i(190565),	-- Girdle of the Honored Valarjar
				i(190570),	-- Legguards of the Honored Valarjar
				i(190571),	-- Pauldrons of the Honored Valarjar
				i(190569),	-- Sabatons of the Honored Valarjar

				------ Honored Valarjar Set [Plate] ------
				i(190920),	-- Ensemble: Battleplate of the Honored Valarjar
				q(65734),	-- Ensemble: Battleplate of the Honored Valarjar
				i(190919),	-- Breastplate of the Honored Valarjar
				i(190915),	-- Gardbrace of the Honored Valarjar
				i(190914),	-- Greatbelt of the Honored Valarjar
				i(190911),	-- Greatcloak of the Honored Valarjar
				i(190916),	-- Greaves of the Honored Valarjar
				i(190918),	-- Handguards of the Honored Valarjar
				i(190917),	-- Helm of the Honored Valarjar
				i(190913),	-- Vambraces of the Honored Valarjar
				i(190912),	-- Warboots of the Honored Valarjar

				------ Slumbering Caldera Set ------
				i(190796),	-- Ensemble: Slumbering Caldera Regalia
				q(65718),	-- Ensemble: Slumbering Caldera Regalia
				i(190781),	-- Slumbering Caldera Bracers
				i(190780),	-- Slumbering Caldera Crown
				i(190775),	-- Slumbering Caldera Gauntlets
				i(190776),	-- Slumbering Caldera Girdle
				i(190782),	-- Slumbering Caldera Hauberk
				i(190778),	-- Slumbering Caldera Legguards
				i(190777),	-- Slumbering Caldera Pauldrons
				i(190774),	-- Slumbering Caldera Robe
				i(190779),	-- Slumbering Caldera Sabatons

				------ Twisted Arcanum Set ------
				i(190165),	-- Ensemble: Twisted Arcanum Regalia
				q(65569),	-- Ensemble: Twisted Arcanum Regalia
				i(190162),	-- Twisted Arcanum Bindings
				i(190159),	-- Twisted Arcanum Cowl
				i(190158),	-- Twisted Arcanum Grips
				i(190161),	-- Twisted Arcanum Mantle
				i(190163),	-- Twisted Arcanum Robe
				i(190156),	-- Twisted Arcanum Sash
				i(190157),	-- Twisted Arcanum Slippers
				i(190160),	-- Twisted Arcanum Trousers
				i(190193),	-- Twisted Arcanum Tunic
			}),
			n(WEAPONS, {
				i(194318),	-- Book of Ancient Lore
				i(198385),	-- Draconian Garden Pick
				i(194329),	-- Elaborate Reliquary Candelabra
				i(198386),	-- Gardener's Tilling Spork
				i(194314),	-- Light of the Enlightened
				i(194331),	-- Pristine Research Journal
				i(194316),	-- Tome of Forgotten Legends
				i(198342),	-- Tuskarr Expedition Pack
				i(191647),	-- Tuskarr Fishing Pole
			}),
		})),

		-- 10.0.5
		expansion(EXPANSION.DF, patch(0,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_5 } }, {
			n(ARMOR, {
				i(190672),	-- Deathguard Acolyte's Cloak
				i(189869),	-- Distinguished Warcloak
			}),
			n(SETS, {
				------ Tidecaller's Chainmail ------
				i(200917),	-- Ensemble: Tidecaller's Chainmail

				------ Val'Sharah Protector Set ------
				i(200910),	-- Ensemble: Val'sharah Protector's Battleplate
				i(190547),	-- Val'Sharah Protector's Bracers
				i(190897),	-- Val'Sharah Protector's Crown
				i(190213),	-- Val'sharah Protector's Cuirass
				i(190676),	-- Val'Sharah Protector's Gauntlets
				i(190861),	-- Val'Sharah Protector's Girdle
				i(189881),	-- Val'sharah Protector's Greaves
				i(190069),	-- Val'sharah Protector's Sabatons
				i(190074),	-- Val'sharah Protector's Spaulders

				------ Void-Bound Set [Cloth] ------
				i(200918),	-- Ensemble: Void-Bound Raiment
				q(72087),	-- Ensemble: Void-Bound Raiment
				i(190679),	-- Void-Bound Cord
				i(190839),	-- Void-Bound Crown
				i(190834),	-- Void-Bound Cuffs
				i(200923),	-- Void-Bound Drape
				i(190680),	-- Void-Bound Gloves
				i(190683),	-- Void-Bound Mantle
				i(190838),	-- Void-Bound Robe
				i(190835),	-- Void-Bound Slippers
				i(190684),	-- Void-Bound Trousers

				------ Void-Bound Set [Leather] ------
				i(200924),	-- Ensemble: Void-Bound Battlegear
				q(72088),	-- Ensemble: Void-Bound Battlegear
				i(190863),	-- Void-Bound Belt
				i(190862),	-- Void-Bound Bracers
				i(200920),	-- Void-Bound Cloak
				i(190704),	-- Void-Bound Handguards
				i(200919),	-- Void-Bound Leggings
				i(190879),	-- Void-Bound Mask
				i(190708),	-- Void-Bound Shoulderguards
				i(190703),	-- Void-Bound Striders
				i(190707),	-- Void-Bound Vest

				------ Void-Bound Set [Mail] ------
				i(201000),	-- Ensemble: Void-Bound Chains
				q(72123),	-- Ensemble: Void-Bound Chains
				i(190677),	-- Void-Bound Boots
				i(190678),	-- Void-Bound Chain
				i(190682),	-- Void-Bound Circlet
				i(190837),	-- Void-Bound Grips
				i(190840),	-- Void-Bound Hauberk
				i(200922),	-- Void-Bound Shroud
				i(190841),	-- Void-Bound Spaulders
				i(190681),	-- Void-Bound Tassets
				i(190836),	-- Void-Bound Wristguards

				------ Void-Bound Set [Plate] ------
				i(201001),	-- Ensemble: Void-Bound Warplate
				q(72124),	-- Ensemble: Void-Bound Warplate
				i(190866),	-- Void-Bound Breastplate
				i(190865),	-- Void-Bound Gauntlets
				i(190701),	-- Void-Bound Girdle
				i(200921),	-- Void-Bound Greatcloak
				i(190706),	-- Void-Bound Greathelm
				i(190705),	-- Void-Bound Greaves
				i(190867),	-- Void-Bound Pauldrons
				i(190864),	-- Void-Bound Sabatons
				i(190702),	-- Void-Bound Vambraces
			}),
			n(WEAPONS, {
				i(190715),	-- Anodized Sniper Rifle
				i(190675),	-- Arborcidal Peon's Chopper
				i(190711),	-- Arcanist's Barbed Baton
				i(190446),	-- Blazing Forgehammer
				i(190131),	-- Brick-on-a-Stick
				i(190714),	-- Gorian Pulverizer
				i(190442),	-- Illidari Bladeward
				i(190713),	-- Imperator's Command
				i(189883),	-- Lordaeron Sentry's Bulwark
				i(189886),	-- Might of the Titanforged
				i(190687),	-- Painted Warblade
				i(190148),	-- Ravencrest's Razor
				i(189872),	-- Shattered Krokul Edge
				i(190079),	-- Smoldering Forgeblade
				i(190691),	-- Twisted Guardian's Profane Barrier
				i(189884),	-- Vengeful Nemesis Warblades
			}),
		})),

		-- 10.1.0
		expansion(EXPANSION.DF, patch(1,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_0 } }, {
			n(WEAPONS, {
				i(190077),	-- Scarlet Zealot's Heater Shield
				i(189885),	-- The Battlespoon
			}),
		})),

		-- 10.1.5
		expansion(EXPANSION.DF, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_5 } }, {
			n(ARMOR, {
				i(190559),	-- Helm of the Swift
			}),
			n(SETS, {
				------ Vagabond's Grassy Threads ------
				i(206329),	-- Ensemble: Vagabond's Grassy Threads
				q(76237),	-- Ensemble: Vagabond's Grassy Threads
				i(206285),	-- Vagabond's Grassy Cape
				i(206296),	-- Vagabond's Grassy Hood

				------ Wanderer's Grassy Trappings ------
				i(206340),	-- Ensemble: Wanderer's Grassy Trappings
				q(76226),	-- Ensemble: Wanderer's Grassy Trappings
				i(206318),	-- Wanderer's Grassy Cloak
				i(206307),	-- Wanderer's Grassy Scarf
			}),
			n(WEAPONS, {
				i(206800),	-- Arcane Detection Rod
				i(190561),	-- Crystalblade of Shifting Magic
				i(206806),	-- Part Dislocator
			}),
		})),

		-- 10.2.0
		expansion(EXPANSION.DF, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_0 } }, {
			n(ARMOR, {
				i(210856),	-- Trader's Faded Sarong
				i(210851),	-- Trader's Grassy Sarong
			}),
			n(WEAPONS, {
				i(190875),	-- Chilled Touch of the Condemned
			}),
		})),

		-- 10.2.5
		expansion(EXPANSION.DF, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_5 } }, {
			n(ARMOR, {
				i(190807),	-- Artisan's Work Shirt
				i(190669),	-- Burnished Helm of Righteousness
				i(190692),	-- Champion's Battle Standard
				i(190847),	-- Deathmantle Assassin's Barb
				i(190090),	-- Dessicated Bouquet
				i(212338),	-- DNT - Hearthstone - Loot - Hat (Needs Art)
				i(212625),	-- Dueler's Grassy Shoulder Cape
				i(190893),	-- Jeweled Valkyrion Cape
				i(212532),	-- Reno's Hat
				i(211926),	-- Riders of Azeroth Tabard
				i(190688),	-- Silvered Helm of Righteousness
				i(212705),	-- Spring Reveler's Cornsilk Attire
				i(212706),	-- Spring Reveler's Cornsilk Belt
				i(212707),	-- Spring Reveler's Cornsilk Boots
				i(212713),	-- Spring Reveler's Cornsilk Dress
				i(212987),	-- Spring Reveler's Cornsilk Pants
				i(212717),	-- Spring Reveler's Cornsilk Sun Hat
				i(212610),	-- Wings of the Emerald Monarch
			}),
			n(WEAPONS, {
				i(190848),	-- [DNT] Do not use
				i(213162),	-- Blessed Bow of the Windseeker
				i(190908),	-- Devourer's Skullscythe
				i(190816),	-- Forgehand's "Stable" Fuel Cell
				i(213107),	-- Gladiator's Ragged Greatsword
				i(213077),	-- Lavender Bow-quet
				i(190822),	-- Mo'arg Enforcer's Halberd
				i(213063),	-- Paradise's Ruby Axe
				i(190900),	-- Prototype Farstrider Sniper Rifle
				i(190820),	-- Restless Void Handaxe
				i(213066),	-- Rosy Floral Edge
				i(213069),	-- Rosy Floral Stalk
				i(213072),	-- Ruby Floral Staff
				i(190891),	-- Shabby Battleaxe
				i(190903),	-- Soulburner Warscythe
				i(190902),	-- Will of the Titanforged
				i(190889),	-- Woodsman's Hatchet
			}),
		})),

		-- 10.2.6
		expansion(EXPANSION.DF, patch(2,6), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_6 } }, {
			n(SETS, {
				------ Dragonriding Cup ------
				i(212686),	-- Azure Riders of Azeroth Tabard
				i(212874),	-- Drake Racer's Azure Jersey
				i(212875),	-- Drake Racer's Azure Handwraps
				i(212876),	-- Drake Racer's Azure Belt
				i(212877),	-- Drake Racer's Azure Leggings
				i(212878),	-- Drake Racer's Azure Boots
				i(212879),	-- Drake Racer's Azure Scarf
				i(212880),	-- Drake Racer's Azure Shoulderpads
				i(212881),	-- Drake Racer's Azure Helmet
			}),
			n(WEAPONS, {
				i(217635),	-- Dream Raider's Azure Razor
			}),
		})),

		-- 10.2.7
		expansion(EXPANSION.DF, patch(2,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_7 } }, {
			n(ARMOR, {
				i(223769),	-- Eternal Aspirant's Cape
			}),
			n(SETS, {
				i(223243),	-- Ensemble: Blue Diver Suit
				i(221541),	-- Ensemble: Blue Tropical
				q(82138),	-- Ensemble: Blue Tropical
				i(223246),	-- Ensemble: Copper Diver Suit
				q(82270),	-- Ensemble: Copper Diver Suit
				i(222959),	-- Ensemble: Tropical Sunrise Swimwear
				q(82231),	-- Ensemble: Tropical Sunrise Swimwear

				------ Green Diver Set ------
				i(223245),	-- Ensemble: Green Diver Suit
				q(82269),	-- Ensemble: Green Diver Suit
				i(223226),	-- Green Diver's Belt
				i(223223),	-- Green Diver's Bonnet
				i(223228),	-- Green Diver's Boots
				i(223225),	-- Green Diver's Corselet
				i(223229),	-- Green Diver's Gloves
				i(223227),	-- Green Diver's Greaves
				i(223224),	-- Green Diver's Pauldrons
				i(223253),	-- Green Diver's Tank
				i(223259),	-- Green Diver's Wrist Seal
			}),
			n(WEAPONS, {
				i(220690),	-- Water Blaster P.R.
				i(220691),	-- Water Blaster Y.L.
			}),
		})),
	}),
	expansion(EXPANSION.TWW, {
		-- 11.0.0
		expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
			n(ARMOR, {
				i(224869),	-- Earthen Drape
				i(224169),	-- Stonebound Tabard
			}),
			n(SETS, {
				i(226000),	-- Ensemble: Earthen Adventurer's Copper Drapery
				i(218911),	-- [DNT] EarthenCivilian Robe Copper
				i(218912),	-- [DNT] EarthenCivilian Robe Dark
				i(218913),	-- [DNT] EarthenCivilian Robe Gold
				i(218914),	-- [DNT] EarthenCivilian Robe Silver
				i(218915),	-- [DNT] EarthenCivilian Robe Skardyn
				i(218916),	-- [DNT] EarthenCivilian Robe White
				i(219095),	-- [DNT] Ensemble: CivilianAdventurer
				i(219096),	-- [DNT] Ensemble: CivilianAdventurer
				i(219097),	-- [DNT] Ensemble: CivilianAdventurer
				i(219098),	-- [DNT] Ensemble: CivilianAdventurer
				i(219099),	-- [DNT] Ensemble: CivilianAdventurer
				i(219090),	-- [DNT] Ensemble: CivilianCraftsperson
				i(219091),	-- [DNT] Ensemble: CivilianCraftsperson
				i(219092),	-- [DNT] Ensemble: CivilianCraftsperson
				i(219093),	-- [DNT] Ensemble: CivilianCraftsperson
				i(219094),	-- [DNT] Ensemble: CivilianCraftsperson
				i(219085),	-- [DNT] Ensemble: CivilianLaborer
				i(219086),	-- [DNT] Ensemble: CivilianLaborer
				i(219087),	-- [DNT] Ensemble: CivilianLaborer
				i(219088),	-- [DNT] Ensemble: CivilianLaborer
				i(219089),	-- [DNT] Ensemble: CivilianLaborer
				i(219080),	-- [DNT] Ensemble: CivilianMerchant
				i(219081),	-- [DNT] Ensemble: CivilianMerchant
				i(219082),	-- [DNT] Ensemble: CivilianMerchant
				i(219083),	-- [DNT] Ensemble: CivilianMerchant
				i(219084),	-- [DNT] Ensemble: CivilianMerchant
				i(219075),	-- [DNT] Ensemble: CivilianNoble
				i(219076),	-- [DNT] Ensemble: CivilianNoble
				i(219077),	-- [DNT] Ensemble: CivilianNoble
				i(219078),	-- [DNT] Ensemble: CivilianNoble
				i(219079),	-- [DNT] Ensemble: CivilianNoble
				i(219070),	-- [DNT] Ensemble: CivilianPeasant
				i(219071),	-- [DNT] Ensemble: CivilianPeasant
				i(219072),	-- [DNT] Ensemble: CivilianPeasant
				i(219073),	-- [DNT] Ensemble: CivilianPeasant
				i(219074),	-- [DNT] Ensemble: CivilianPeasant
				i(219065),	-- [DNT] Ensemble: CivilianScholar
				i(219066),	-- [DNT] Ensemble: CivilianScholar
				i(219067),	-- [DNT] Ensemble: CivilianScholar
				i(219068),	-- [DNT] Ensemble: CivilianScholar
				i(219069),	-- [DNT] Ensemble: CivilianScholar

				------ Battered Harvest Golem Set ------
				i(226483),	-- Ensemble: Battered Harvest Golem
				q(84002),	-- Ensemble: Battered Harvest Golem (same ID)
				i(226452),	-- Battered Harvest Golem's Belt
				i(226451),	-- Battered Harvest Golem's Boots
				i(226438),	-- Battered Harvest Golem's Chest
				i(226450),	-- Battered Harvest Golem's Gloves
				i(226691),	-- Battered Harvest Golem's Head
				i(226449),	-- Battered Harvest Golem's Pants
				i(226448),	-- Battered Harvest Golem's Pauldrons
				i(226439),	-- Battered Harvest Golem's Post

				------ Grimy Harvest Golem Set ------
				i(226482),	-- Ensemble: Grimy Harvest Golem
				q(84002),	-- Ensemble: Grimy Harvest Golem (same ID)
				i(226470),	-- Grimy Harvest Golem's Belt
				i(226469),	-- Grimy Harvest Golem's Boots
				i(226468),	-- Grimy Harvest Golem's Chest
				i(226467),	-- Grimy Harvest Golem's Gloves
				i(226689),	-- Grimy Harvest Golem's Head
				i(226466),	-- Grimy Harvest Golem's Pants
				i(226465),	-- Grimy Harvest Golem's Pauldrons
				i(226464),	-- Grimy Harvest Golem's Post

				------ Patched Harvest Golem Set ------
				i(226471),	-- Ensemble: Patched Harvest Golem
				q(84000),	-- Ensemble: Patched Harvest Golem
			}),
			n(WEAPONS, {
				i(225495),	-- Brilliant Beacon
				i(226425),	-- Harvester's Claw
				i(226426),	-- Harvester's Claw
				i(217706),	-- Learn Warglaives Test Item (DNT)
				i(225496),	-- Unhinged Vault-Hatch
			}),
		})),

		-- 11.0.5
		expansion(EXPANSION.TWW, patch(0,5), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_5 } }, {
			n(SETS, {
				------ Prowler's Aquatic Set ------
				i(230050),	-- Prowler's Aquatic Shoulder Cape

				------ Prowler's Cloudy Set ------
				i(230168),	-- Ensemble: Prowler's Cloudy Headgear
				q(85122),	-- Ensemble: Prowler's Cloudy Headgear
				i(230058),	-- Prowler's Cloudy Cowl
				i(230078),	-- Prowler's Cloudy Mask
				i(230037),	-- Prowler's Cloudy Shoulder Cape

				------ Prowler's Grassy Set ------
				i(230167),	-- Ensemble: Prowler's Grassy Headgear
				q(85121),	-- Ensemble: Prowler's Grassy Headgear
				i(230057),	-- Prowler's Grassy Cowl
				i(230077),	-- Prowler's Grassy Mask
				i(230036),	-- Prowler's Grassy Shoulder Cape

				------ Prowler's Lively Set ------
				i(230172),	-- Ensemble: Prowler's Lively Headgear
				q(85126),	-- Ensemble: Prowler's Lively Headgear
				i(230062),	-- Prowler's Lively Cowl
				i(230082),	-- Prowler's Lively Mask
				i(230041),	-- Prowler's Lively Shoulder Cape

				------ Prowler's Midnight Set ------
				i(230152),	-- Ensemble: Prowler's Midnight Headgear
				q(85118),	-- Ensemble: Prowler's Midnight Headgear
				i(230054),	-- Prowler's Midnight Cowl
				i(230074),	-- Prowler's Midnight Mask
				i(230033),	-- Prowler's Midnight Shoulder Cape

				------ Prowler's Plum Set ------
				i(230178),	-- Ensemble: Prowler's Plum Headgear
				q(85137),	-- Ensemble: Prowler's Plum Headgear
				i(230068),	-- Prowler's Plum Cowl
				i(230088),	-- Prowler's Plum Mask
				i(230047),	-- Prowler's Plum Shoulder Cape

				------ Prowler's Rosy Set ------
				i(230177),	-- Ensemble: Prowler's Rosy Headgear
				q(85136),	-- Ensemble: Prowler's Rosy Headgear
				i(230067),	-- Prowler's Rosy Cowl
				i(230087),	-- Prowler's Rosy Mask
				i(230046),	-- Prowler's Rosy Shoulder Cape
			}),
		})),

		-- 11.0.7
		expansion(EXPANSION.TWW, patch(0,07), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_7 } }, {
			n(ARMOR, {
				i(233976),	-- [PH] Cloak
				i(233913),	-- [PH] Shield
				i(233934),	-- [PH] Shield
				i(233931),	-- [PH] Shoulder
				i(233933),	-- [PH] Tabard
				i(233238),	-- Azure Pack of Lunar Explosives
				i(233173),	-- Banded Cloudy War Slippers
				i(233156),	-- Banded Cloudy War Wraps
				i(233172),	-- Banded Grassy War Slippers
				i(233155),	-- Banded Grassy War Wraps
				i(233177),	-- Banded Lively War Slippers
				i(233160),	-- Banded Lively War Wraps
				i(233180),	-- Banded Rosy War Slippers
				i(233163),	-- Banded Rosy War Wraps
				i(234758),	-- Korkron Spaulders
				i(233237),	-- Lively Pack of Lunar Explosives
				i(233100),	-- Long Cloudy War Skirt
				i(233139),	-- Long Cloudy War Skirt and Leg Wraps
				i(233099),	-- Long Grassy War Skirt
				i(233138),	-- Long Grassy War Skirt and Leg Wraps
				i(233104),	-- Long Lively War Skirt
				i(233143),	-- Long Lively War Skirt and Leg Wraps
				i(233107),	-- Long Rosy War Skirt
				i(233146),	-- Long Rosy War Skirt and Leg Wraps
				i(232924),	-- Sailor's Belt
				i(233083),	-- Short Cloudy War Skirt
				i(233122),	-- Short Cloudy War Skirt and Leg Wraps
				i(233082),	-- Short Grassy War Skirt
				i(233121),	-- Short Grassy War Skirt and Leg Wraps
				i(233087),	-- Short Lively War Skirt
				i(233126),	-- Short Lively War Skirt and Leg Wraps
				i(233090),	-- Short Rosy War Skirt
				i(233129),	-- Short Rosy War Skirt and Leg Wraps
				i(234982),	-- Spare Sailor's Short-Sleeved Tunic
				i(233272),	-- Steam-Powered Cobalt Clock Cloak
				i(233275),	-- Steam-Powered Violet Clock Cloak
				i(235330),	-- Steam-Pressed Cobalt Cloak
				i(235333),	-- Steam-Pressed Violet Cloak
				i(233239),	-- Sunny Pack of Lunar Explosives
				i(232910),	-- Vivid Heartfelt Shoulder Cape
				i(232916),	-- Vivid Heartfelt Spaulders
			}),
			n(SETS, {
				------ Cobalt Clockwork Set ------
				i(233327),	-- Ensemble: Cobalt Clockwork Attire
				q(86333),	-- Ensemble: Cobalt Clockwork Attire
				i(233310),	-- Cobalt Clockwork Belt
				i(233322),	-- Cobalt Clockwork Boots
				i(233314),	-- Cobalt Clockwork Bracer
				i(233291),	-- Cobalt Clockwork Cap
				i(233278),	-- Cobalt Clockwork Defender
				i(233256),	-- Cobalt Clockwork Doomfist
				i(233318),	-- Cobalt Clockwork Glove
				i(233306),	-- Cobalt Clockwork Leggings
				i(233295),	-- Cobalt Clockwork Pauldrons
				i(233302),	-- Cobalt Clockwork Uniform

				------ Violet Clockwork Set ------
				i(233330),	-- Ensemble: Violet Clockwork Attire
				q(86336),	-- Ensemble: Violet Clockwork Attire
				i(233313),	-- Violet Clockwork Belt
				i(233325),	-- Violet Clockwork Boots
				i(233317),	-- Violet Clockwork Bracer
				i(233294),	-- Violet Clockwork Cap
				i(233280),	-- Violet Clockwork Defender
				i(233321),	-- Violet Clockwork Glove
				i(233309),	-- Violet Clockwork Leggings
				i(233301),	-- Violet Clockwork Pauldrons
				i(233305),	-- Violet Clockwork Uniform

				------  Ornate Violet Lunar Festival Set ------
				i(234059),	-- Ensemble: Ornate Violet Lunar Festival Attire
				q(86421),	-- Ensemble: Ornate Violet Lunar Festival Attire
				i(234043),	-- Ornate Violet Lunar Belt
				i(234055),	-- Ornate Violet Lunar Crown
				i(234047),	-- Ornate Violet Lunar Robe
				i(234039),	-- Ornate Violet Lunar Slippers
				i(234051),	-- Ornate Violet Lunar Spaulders

				------  Ornate Teal Lunar Festival Set ------
				i(234060),	-- Ensemble: Ornate Teal Lunar Festival Attire
				q(86422),	-- Ensemble: Ornate Teal Lunar Festival Attire
				i(234044),	-- Ornate Teal Lunar Belt
				i(234056),	-- Ornate Teal Lunar Crown
				i(234048),	-- Ornate Teal Lunar Robe
				i(234040),	-- Ornate Teal Lunar Slippers
				i(234052),	-- Ornate Teal Lunar Spaulders
			}),
			n(WEAPONS, {
				i(233233),	-- Azure Lunar Firewhacker
				i(233219),	-- Azure Lunar Lantern
				i(233254),	-- Blue Clockwork Mace
				i(233225),	-- Cobalt Lunar Blade
				i(233227),	-- Gold Lunar Blade
				i(233230),	-- Gold Lunar Polearm
				i(233234),	-- Lively Lunar Firewhacker
				i(233220),	-- Lively Lunar Lantern
				i(233269),	-- Long-Range Cobalt Clockstopper
				i(233268),	-- Long-Range Violet Clockstopper
				i(233224),	-- Obsidian Lunar Blade
				i(233259),	-- Purple Clockwork Doomfist
				i(233253),	-- Purple Clockwork Mace
				i(233229),	-- Silver Lunar Polearm
				i(233231),	-- Steel Lunar Polearm
				i(233235),	-- Violet Lunar Firewhacker
				i(233221),	-- Violet Lunar Lantern
			}),
		})),

		-- 11.1.0
		expansion(EXPANSION.TWW, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_0 } }, {
			n(ARMOR, {
				i(231559),	-- [DNT] Experimental Gobbo-Flyer v3
				i(238243),	-- Hidden Boots
				i(235034),	-- Vigilante's Aquatic Mask
				i(235023),	-- Vigilante's Cloudy Mask
				i(235022),	-- Vigilante's Grassy Mask
				i(235027),	-- Vigilante's Lively Mask
				i(235030),	-- Vigilante's Rosy Mask
				i(235036),	-- Vigilante's Sunny Mask
				i(234601),	-- Wings of the Icy Rose Monarch
			}),
			n(PVP, {
				i(232890),	-- Arsenal: Algari Warmonger's Weapons
				i(232886),	-- Ensemble: Algari Warmonger's Cloth Armor
				i(232887),	-- Ensemble: Algari Warmonger's Leather Armor
				i(232888),	-- Ensemble: Algari Warmonger's Mail Armor
				i(232889),	-- Ensemble: Algari Warmonger's Plate Armor
			}),
			n(SETS, {
				------ Forest Dweller's Butterfly Set ------
				i(235593),	-- Ensemble: Forest Dweller's Butterfly Attire
				q(86875),	-- Ensemble: Forest Dweller's Butterfly Attire
				i(235589),	-- Forest Dweller's Butterfly Belt
				i(235568),	-- Forest Dweller's Butterfly Boots
				i(235576),	-- Forest Dweller's Butterfly Cap
				i(235572),	-- Forest Dweller's Butterfly Glove
				i(235585),	-- Forest Dweller's Butterfly Mantle
				i(235580),	-- Forest Dweller's Butterfly Pants
				i(235564),	-- Forest Dweller's Butterfly Tunic

				------ Forest Dweller's Garden Set ------
				i(235592),	-- Ensemble: Forest Dweller's Garden Attire
				q(86871),	-- Ensemble: Forest Dweller's Garden Attire
				i(235588),	-- Forest Dweller's Garden Belt
				i(235567),	-- Forest Dweller's Garden Boots
				i(235575),	-- Forest Dweller's Garden Cap
				i(235571),	-- Forest Dweller's Garden Glove
				i(235584),	-- Forest Dweller's Garden Mantle
				i(235579),	-- Forest Dweller's Garden Pants
				i(235563),	-- Forest Dweller's Garden Tunic

				------ Midnight Butterfly Set ------
				i(235229),	-- Ensemble: Ornaments of the Midnight Butterfly
				i(235215),	-- Midnight Butterfly Belt
				i(235153),	-- Midnight Butterfly Helm
				i(235155),	-- Midnight Butterfly Pauldrons

				------ Spring Butterfly Set ------
				i(235227),	-- Ensemble: Ornaments of the Spring Butterfly
				q(86726),	-- Ensemble: Ornaments of the Spring Butterfly
				i(235214),	-- Spring Butterfly Belt
				i(235150),	-- Spring Butterfly Helm
				i(235212),	-- Spring Butterfly Pauldrons

				------ Topsy Turvy Mask Set ------
				i(235340),	-- Topsy Turvy Fool's Mask

				-- Old Delve Sets
				------ Myconic Set ------
				i(234347),	-- Myconic Chausses
				i(234345),	-- Myconic Clutches
				i(234343),	-- Myconic Frock
				i(234346),	-- Myconic Hood
				i(234348),	-- Myconic Shoulderstrap
				i(234349),	-- Myconic Strap
				i(234344),	-- Myconic Waders
				i(234333),	-- Myconic Wrap
				i(234350),	-- Myconic Wristbands

				------ Hidden Stars Set ------
				i(234335),	-- Amice of Hidden Stars
				i(234365),	-- Charmbelt of Hidden Stars
				i(234361),	-- Fists of Hidden Stars
				i(234366),	-- Handguards of Hidden Stars
				i(234363),	-- Legplates of Hidden Stars
				i(234364),	-- Pauldrons of Hidden Stars
				i(234359),	-- Raiment of Hidden Stars
				i(234360),	-- Sollerets of Hidden Stars

				------ Stygian Sea Set ------
				i(234354),	-- Bascinet of the Stygian Sea
				i(234353),	-- Grasps of the Stygian Sea
				i(234351),	-- Hauberk of the Stygian Sea
				i(234355),	-- Poleyns of the Stygian Sea
				i(234357),	-- Sash of the Stygian Sea
				i(234334),	-- Serape of the Stygian Sea
				i(234356),	-- Spaulders of the Stygian Sea
				i(234352),	-- Treads of the Stygian Sea
				i(234358),	-- Wrist Bindings of the Stygian Sea

				------ Unkindled Waxweave Set ------
				i(234341),	-- Unkindled Waxweave Belt
				i(234339),	-- Unkindled Waxweave Buskins
				i(234342),	-- Unkindled Waxweave Clasps
				i(234336),	-- Unkindled Waxweave Garb
				i(234331),	-- Unkindled Waxweave Mitts
				i(234332),	-- Unkindled Waxweave Mozzetta
				i(234340),	-- Unkindled Waxweave Shoulderpads
				i(234337),	-- Unkindled Waxweave Slippers
				i(234338),	-- Unkindled Waxweave Veil
			}),
			n(WEAPONS, {
				i(234374),	-- Arathi Holy Standard
				i(234611),	-- Double-Bladed Butterfly Garden Trowel
				i(234609),	-- Double-Bladed Forest Garden Trowel
				i(234370),	-- Flame-Bearing Crozier
				i(238775, {["sourceID"] = 287817}),	-- Gallagio Raider's Venture Co. Blasthammer
				i(238775, {["sourceID"] = 287819}),	-- Gallagio Raider's Venture Co. Blasthammer
				i(238775, {["sourceID"] = 287820}),	-- Gallagio Raider's Venture Co. Blasthammer
				i(234371),	-- Hand of Piety
				i(234373),	-- Imperial Flarebolt
				i(234375),	-- Lamplighter's Mercy
				i(235654),	-- Midnight Butterfly Longbow
				i(235271),	-- Midnight Butterfly Mace
				i(235400),	-- Midnight Butterfly Polearm
				i(235292),	-- Midnight Butterfly Sword
				i(235296),	-- Midnight Butterfly Wand
				i(234369),	-- Pyretic Star
				i(234378),	-- Radiant Steelglaives
				i(234367),	-- Sanctifier's Startierce
				i(234372),	-- Shooting Starquebus
				i(235653),	-- Spring Butterfly Longbow
				i(235269),	-- Spring Butterfly Mace
				i(235399),	-- Spring Butterfly Polearm
				i(235289),	-- Spring Butterfly Sword
				i(235293),	-- Spring Butterfly Wand
				i(234572),	-- Topsy Turvy Fool's Blade
				i(234727),	-- Topsy Turvy Fool's Cleaver
				i(235640),	-- Topsy Turvy Fool's Die
				i(234577),	-- Topsy Turvy Joker's Blade
				i(234726),	-- Topsy Turvy Joker's Cleaver
				i(235643),	-- Topsy Turvy Joker's Die
				i(234377),	-- Unscathed Rampart
				i(234376),	-- Vessel of Sacred Flame
				i(234362),	-- Visage of Hidden Stars
				i(234368),	-- Worshipper's Poniard
			}),
		})),

		-- 11.1.5
		expansion(EXPANSION.TWW, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_5 } }, {
			n(ARMOR, {
				i(239003),	-- Feathered Mantle of the Guardian
				i(235986),	-- Evil King's Half Shell
				i(238949),	-- Inferno Helm
			}),
			n(SETS, {
				------ Lavaborn Citrine Set ------
				i(238447),	-- Ensemble: Lavaborn Citrine Attire
				q(88991),	-- Ensemble: Lavaborn Citrine Attire
				i(238445),	-- Lavaborn Citrine Bracer
				i(238444),	-- Lavaborn Citrine Chestguard
				i(238439),	-- Lavaborn Citrine Cinch
				i(238446),	-- Lavaborn Citrine Cloak
				i(238443),	-- Lavaborn Citrine Glove
				i(238442),	-- Lavaborn Citrine Helm
				i(238440),	-- Lavaborn Citrine Mantle
				i(238441),	-- Lavaborn Citrine Pants
				i(238448),	-- Lavaborn Citrine Treads

				------ Woodland Gilneas Fox Set ------
				i(237225),	-- Ensemble: Woodland Attire of the Gilneas Fox
				q(87526),	-- Ensemble: Woodland Attire of the Gilneas Fox
				i(237220),	-- Woodland Belt of the Gilneas Fox
				i(237198),	-- Woodland Boots of the Gilneas Fox
				i(237229),	-- Woodland Cloak of the Gilneas Fox
				i(237208),	-- Woodland Cowl of the Gilneas Fox
				i(237203),	-- Woodland Gloves of the Gilneas Fox
				i(237216),	-- Woodland Mantle of the Gilneas Fox
				i(237212),	-- Woodland Pants of the Gilneas Fox
				i(237193),	-- Woodland Vestments of the Gilneas Fox

				------ Woodland Grey Wolf Set ------
				i(237223),	-- Ensemble: Woodland Attire of the Grey Wolf
				q(87524),	-- Ensemble: Woodland Attire of the Grey Wolf
				i(237218),	-- Woodland Belt of the Grey Wolf
				i(237195),	-- Woodland Boots of the Grey Wolf
				i(237227),	-- Woodland Cloak of the Grey Wolf
				i(237206),	-- Woodland Cowl of the Grey Wolf
				i(237201),	-- Woodland Gloves of the Grey Wolf
				i(237214),	-- Woodland Mantle of the Grey Wolf
				i(237210),	-- Woodland Pants of the Grey Wolf
				i(237191),	-- Woodland Vestments of the Grey Wolf

				------ Stormstout's Set ------
				i(237379),	-- Ensemble: Stormstout's Collection
				q(87671),	-- Ensemble: Stormstout's Collection
				i(237376),	-- Stormstout's Belt
				i(237378),	-- Stormstout's Boots
				i(237375),	-- Stormstout's Hat
				i(237377),	-- Stormstout's Pants
				i(237374),	-- Stormstout's Tunic
			}),
			n(WEAPONS, {
				i(238621),	-- Blackwater Pinchzapper
				i(238620),	-- Darkfuse Pinchzapper
				i(238957),	-- Deathwarder's Great Grove Blade
				i(238958),	-- Deathwarder's Great Twilight Blade
				i(236628),	-- Deathwarder's Grove Blade
				i(237181),	-- Deathwarder's Grove Fetish
				i(237177),	-- Deathwarder's Grove Fist
				i(236403),	-- Deathwarder's Grove Stave
				i(236629),	-- Deathwarder's Twilight Blade
				i(237182),	-- Deathwarder's Twilight Fetish
				i(237178),	-- Deathwarder's Twilight Fist
				i(236404),	-- Deathwarder's Twilight Stave
				i(238952),	-- Green Flame Burner
				i(238895),	-- Lavaborn Citrine Blade
				i(238400),	-- Lavaborn Citrine Chopper
				i(238893),	-- Lavaborn Emerald Blade
				i(238398),	-- Lavaborn Emerald Chopper
				i(237855),	-- Shadowmoon Flame's Bardiche
				i(238622),	-- Steamweedle Pinchzapper
				i(237857),	-- Sunwell Flame's Bardiche
				i(238623),	-- Undermine City Pinchzapper
				i(238955),	-- Yellow Flame Burner
			}),
		})),

		-- 11.1.7
		expansion(EXPANSION.TWW, patch(1,7), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_5 } }, {
			n(SETS, {
				------ Banshee's Chilling Set ------
				i(244223),	-- Ensemble: Banshee's Chilling Collection
				q(90926),	-- Ensemble: Banshee's Chilling Collection
				i(244206),	-- Banshee's Chilling Chestplate
				i(244198),	-- Banshee's Chilling Grip
				i(244180),	-- Banshee's Chilling Veil
				i(244202),	-- Banshee's Chilling Vestment
				i(244215),	-- Chilling Banshee Boots
				i(244219),	-- Chilling Banshee Cinch
				i(244184),	-- Chilling Epaulets of the Banshee
				i(244188),	-- Chilling Leggings of the Banshee
				i(244210),	-- Chilling Shroud of the Banshee

				------ Banshee's Sickly Set ------
				i(244227),	-- Ensemble: Banshee's Sickly Collection
				q(90929),	-- Ensemble: Banshee's Sickly Collection
				i(244209),	-- Banshee's Sickly Chestplate
				i(244201),	-- Banshee's Sickly Grip
				i(244183),	-- Banshee's Sickly Veil
				i(244205),	-- Banshee's Sickly Vestment
				i(244218),	-- Sickly Banshee Boots
				i(244222),	-- Sickly Banshee Cinch
				i(244187),	-- Sickly Epaulets of the Banshee
				i(244191),	-- Sickly Leggings of the Banshee
				i(244213),	-- Sickly Shroud of the Banshee

				------ Brick Sweatsuit Set ------
				i(242462),	-- Ensemble: Brick Sweatsuit
				q(90646),	-- Ensemble: Brick Sweatsuit
				i(242443),	-- Brick Sweatpants
				i(242414),	-- Brick Sweatshirt

				------ Camo Sweatsuit Set ------
				i(242461),	-- Ensemble: Camo Sweatsuit
				q(90645),	-- Ensemble: Camo Sweatsuit
				i(242442),	-- Camo Sweatpants
				i(242413),	-- Camo Sweatshirt

				------ Cloudy Sweatsuit Set ------
				i(242459),	-- Ensemble: Cloudy Sweatsuit
				q(90643),	-- Ensemble: Cloudy Sweatsuit
				i(242440),	-- Cloudy Sweatpants
				i(242411),	-- Cloudy Sweatshirt

				------ Deep Sweatsuit Set ------
				i(242460),	-- Ensemble: Deep Sweatsuit
				q(90644),	-- Ensemble: Deep Sweatsuit
				i(242441),	-- Deep Sweatpants
				i(242412),	-- Deep Sweatshirt

				------ Grandmaster's Deep Set ------
				i(243268),	-- Ensemble: Grandmaster's Deep Attire
				q(90855),	-- Ensemble: Grandmaster's Deep Attire
				i(243260),	-- Grandmaster's Deep Belt
				i(243259),	-- Grandmaster's Deep Cloak
				i(243265),	-- Grandmaster's Deep Boots
				i(243264),	-- Grandmaster's Deep Gloves
				i(243263),	-- Grandmaster's Deep Helm
				i(243261),	-- Grandmaster's Deep Mantle
				i(243262),	-- Grandmaster's Deep Pants
				i(243267),	-- Grandmaster's Deep Tunic

				------ Grandmaster's Smoke Set ------
				i(243286),	-- Ensemble: Grandmaster's Smoke Attire
				q(90857),	-- Ensemble: Grandmaster's Deep Attire
				i(243279),	-- Grandmaster's Smoke Belt
				i(243278),	-- Grandmaster's Smoke Cloak
				i(243284),	-- Grandmaster's Smoke Boots
				i(243283),	-- Grandmaster's Smoke Gloves
				i(243282),	-- Grandmaster's Smoke Helm
				i(243280),	-- Grandmaster's Smoke Mantle
				i(243281),	-- Grandmaster's Smoke Pants
				i(243285),	-- Grandmaster's Smoke Tunic

				------ Grassy Sweatsuit Set ------
				i(242458),	-- Ensemble: Grassy Sweatsuit
				q(90642),	-- Ensemble: Grassy Sweatsuit
				i(242439),	-- Grassy Sweatpants
				i(242410),	-- Grassy Sweatshirt

				------ Rosy Sweatsuit Set ------
				i(242471),	-- Ensemble: Rosy Sweatsuit
				q(90651),	-- Ensemble: Rosy Sweatsuit
				i(242447),	-- Rosy Sweatpants
				i(242418),	-- Rosy Sweatshirt

				------ Sepia Sweatsuit Set ------
				i(242457),	-- Ensemble: Sepia Sweatsuit
				q(90641),	-- Ensemble: Sepia Sweatsuit
				i(242438),	-- Sepia Sweatpants
				i(242409),	-- Sepia Sweatshirt

				------ Sunny Sweatsuit Set ------
				i(242492),	-- Ensemble: Sunny Sweatsuit
				q(90657),	-- Ensemble: Sunny Sweatsuit
				i(242453),	-- Sunny Sweatpants
				i(242424),	-- Sunny Sweatshirt
			}),
			n(WEAPONS, {
				i(242521),	-- Chiling Forsaken Cauldron
				i(242627),	-- Chilling Forsaken Blade
				i(242631),	-- Chilling Forsaken Great Blade
				i(242376),	-- Chilling Forsaken Longbow
				i(242348),	-- Chilling Forsaken Mace
				i(242381),	-- Chilling Forsaken Quiver
				i(242385),	-- Chilling Forsaken Wand
				i(242352),	-- Chilling Forsaken Warglaives
				i(242526),	-- Grandmaster's Blue Axe
				i(242373),	-- Grandmaster's Blue Bulwark
				i(242540),	-- Grandmaster's Blue Mace
				i(242358),	-- Grandmaster's Blue Stave
				i(242528),	-- Grandmaster's White Axe
				i(242375),	-- Grandmaster's White Bulwark
				i(242542),	-- Grandmaster's White Mace
				i(242360),	-- Grandmaster's White Stave
				i(242524),	-- Sickening Forsaken Cauldron
				i(242630),	-- Sickly Forsaken Blade
				i(242634),	-- Sickly Forsaken Great Blade
				i(242379),	-- Sickly Forsaken Longbow
				i(242351),	-- Sickly Forsaken Mace
				i(242384),	-- Sickly Forsaken Quiver
				i(242389),	-- Sickly Forsaken Wand
				i(242355),	-- Sickly Forsaken Warglaives
			}),
		})),

		-- 11.2.0
		expansion(EXPANSION.TWW, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_11_2_0 } }, {
			n(ARMOR, {
				i(245526),	-- Bloodmarked Phasebound Visor
				i(244806),	-- Renowned Explorer's Versatile Vest
				i(245951),	-- Wildhammer's Portable Forge
			}),
			n(SETS, {
				------ Dark Iron's Ceremonial Set ------
				i(248327),	-- Ensemble: Dark Iron's Ceremonial Collection
				q(91818),	-- Ensemble: Dark Iron's Ceremonial Collection

				------ Felreaver's Hellfire Set ------
				i(246981),	-- Ensemble: Felreaver's Hellfire Attire
				q(91637),	-- Ensemble: Felreaver's Hellfire Attire
				i(246976),	-- Felreaver's Hellfire Belt
				i(246974),	-- Felreaver's Hellfire Gauntlets
				i(246979),	-- Felreaver's Hellfire Helm
				i(246977),	-- Felreaver's Hellfire Jacket
				i(246975),	-- Felreaver's Hellfire Legguards
				i(246978),	-- Felreaver's Hellfire Shoulderguards
				i(246980),	-- Felreaver's Hellfire Treads

				------ Felreaver's Legion Set ------
				i(246973),	-- Ensemble: Fashion of the Fanatic Felcyclist
				q(91636),	-- Ensemble: Fashion of the Fanatic Felcyclist
				i(246968),	-- Felreaver's Legion Belt
				i(246966),	-- Felreaver's Legion Gauntlets
				i(246971),	-- Felreaver's Legion Helm
				i(246969),	-- Felreaver's Legion Jacket
				i(246967),	-- Felreaver's Legion Legguards
				i(246970),	-- Felreaver's Legion Shoulderguards
				i(246972),	-- Felreaver's Legion Treads

				------ Stillwater Fisher Set ------
				i(244231),	-- Ensemble: Stillwater Fisher Attire
				q(90930),	-- Ensemble: Stillwater Fisher Attire
				i(244229),	-- Angler's Mantle
				i(244352),	-- Cloak of the Veiled Paws
				i(244228),	-- Sash of the Tipsy Sage
				i(244230),	-- Strawhat of Frosted Currents

				------ The Horseman's Burning Set ------
				i(247982),	-- Ensemble: The Horseman's Burning Collection
				q(91773),	-- Ensemble: The Horseman's Burning Collection
				i(247976),	-- The Horseman's Burning Breastplate
				i(247977),	-- The Horseman's Burning Cinch
				i(247981),	-- The Horseman's Burning Cloak
				i(250707),	-- The Horseman's Burning Cowl
				i(247978),	-- The Horseman's Burning Greaves
				i(247980),	-- The Horseman's Burning Grips
				i(247974),	-- The Horseman's Burning Helm
				i(247975),	-- The Horseman's Burning Mantle
				i(247979),	-- The Horseman's Burning Treads

				------ The Horseman's Chilling Set ------
				i(247906),	-- Ensemble: The Horseman's Chilling Collection
				q(91761),	-- Ensemble: The Horseman's Chilling Collection
				i(247899),	-- The Horseman's Chilling Breastplate
				i(247900),	-- The Horseman's Chilling Cinch
				i(247905),	-- The Horseman's Chilling Cloak
				i(250709),	-- The Horseman's Chilling Cowl
				i(247901),	-- The Horseman's Chilling Greaves
				i(247904),	-- The Horseman's Chilling Grips
				i(247897),	-- The Horseman's Chilling Helm
				i(247898),	-- The Horseman's Chilling Mantle
				i(247903),	-- The Horseman's Chilling Treads

				------ The Horseman's Ghoulish Set ------
				i(247973),	-- Ensemble: The Horseman's Ghoulish Collection
				q(91771),	-- Ensemble: The Horseman's Ghoulish Collection

				------ Void's Binding Set ------
				i(246898),	-- Ensemble: Void's Binding Swimwear
				q(91625),	-- Ensemble: Void's Binding Swimwear
				i(246896),	-- Void's Binding Anklets
				i(246893),	-- Void's Binding Briefs
				i(246897),	-- Void's Binding Halter Top
				i(246895),	-- Void's Binding Sash
				i(246894),	-- Void's Binding Shade
				i(246892),	-- Void's Binding Wraps

				------ Wildhammer's Ceremonial Set ------
				i(248318),	-- Ensemble: Wildhammer's Ceremonial Collection
				q(91817),	-- Ensemble: Wildhammer's Ceremonial Collection
				i(248313),	-- Wildhammer's Ceremonial Belt
				i(248314),	-- Wildhammer's Ceremonial Boots
				i(248312),	-- Wildhammer's Ceremonial Chestplate
				i(248317),	-- Wildhammer's Ceremonial Cloak
				i(248310),	-- Wildhammer's Ceremonial Crown
				i(248316),	-- Wildhammer's Ceremonial Gauntlets
				i(248311),	-- Wildhammer's Ceremonial Mantle
				i(248315),	-- Wildhammer's Ceremonial Legguards
				i(248395),	-- Wildhammer's Ritualistic Mantle
			}),
			n(WEAPONS, {
				i(246785),	-- Coldsnap Felblade
				i(246790),	-- Coldsnap Feldirk
				i(246990),	-- Felreaver's Azure Staff
				i(246996),	-- Felreaver's Azure Wand
				i(246994),	-- Felreaver's Hellfire Staff
				i(246998),	-- Felreaver's Hellfire Wand
				i(246319),	-- Festering Scythe
				i(246787),	-- Hellfire Felblade
				i(246791),	-- Hellfire Feldirk
				i(237853),	-- Soulweave Bulwark
				i(237389),	-- Soulweave Great Blade
				i(238510),	-- Soulweave Longbow
				i(237477),	-- Soulweave Staff
				i(247707),	-- The Horseman's Burning Blade
				i(247716),	-- The Horseman's Burning Bulwark
				i(247711),	-- The Horseman's Burning Great Blade
				i(247705),	-- The Horseman's Chilling Blade
				i(247714),	-- The Horseman's Chilling Bulwark
				i(247709),	-- The Horseman's Chilling Great Blade
				i(246783),	-- Wildhammer's Ancient Crusher
				i(245954),	-- Wildhammer's Ceremonial Mace
				i(245958),	-- Wildhammer's Crystal Ward
				i(246800),	-- Wildhammer's Mighty Crossbow
			}),
		})),

		-- 11.2.5
		expansion(EXPANSION.TWW, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_11_2_5 } }, {
			n(ARMOR, {
				i(252750),	-- Aquatic Winter Toque
				i(251670),	-- Battered Wearable Pot Lid
				i(252742),	-- Brick Winter Toque
				i(249718),	-- Bronze Food Fanatic Backpack
				i(252741),	-- Camo Winter Toque
				i(252714),	-- Cloudy Winter Toque
				i(252715),	-- Deep Winter Toque
				i(252744),	-- Faded Winter Toque
				i(249719),	-- Fine Food Fanatic Backpack
				i(235903),	-- Gold Lightforged Chestguard
				i(249717),	-- Golden Food Fanatic Backpack
				i(252713),	-- Grassy Winter Toque
				i(250291),	-- Hot and Fresh Portable Bakery
				i(252743),	-- Lively Winter Toque
				i(252710),	-- Midnight Winter Toque
				i(252747),	-- Plum Winter Toque
				i(250293),	-- Red Hot Portable Bakery
				i(252746),	-- Rosy Winter Toque
				i(252712),	-- Sepia Winter Toque
				i(252751),	-- Snowy Winter Toque
				i(251669),	-- Sturdy Wearable Pot Lid
				i(252752),	-- Sunny Winter Toque
				i(251985),	-- Trapper's Black Quiver
				i(251986),	-- Trapper's Blue Quiver
				i(251987),	-- Trapper's Brown Quiver
				i(251988),	-- Trapper's Dark Brown Quiver
				i(251990),	-- Trapper's Light Brown Quiver
				i(251991),	-- Trapper's Red Quiver
				i(251992),	-- Trapper's Purple Quiver
				i(251672),	-- Used Wearable Pot Lid
				i(252749),	-- Violet Winter Toque
			}),
			n(SETS, {

				------ The Kirin Tor Winter Set ------
				i(249763),	-- Ensemble: The Kirin Tor Winter Collection
				q(92098),	-- Ensemble: The Kirin Tor Winter Collection
				i(249758),	-- Kirin Tor Winter Belt
				i(249760),	-- Kirin Tor Winter Boots
				i(249762),	-- Kirin Tor Winter Cloak
				i(249761),	-- Kirin Tor Winter Gloves
				i(249755),	-- Kirin Tor Winter Hood
				i(249759),	-- Kirin Tor Winter Leggings
				i(249756),	-- Kirin Tor Winter Pauldrons
				i(249864),	-- Kirin Tor Winter Spaulders
				i(249757),	-- Kirin Tor Winter Tunic

				------ The Seafarer's Winter Set ------
				i(249745),	-- Ensemble: The Seafarer's Winter Collection
				q(92096),	-- Ensemble: The Seafarer's Winter Collection
				i(249740),	-- Seafarer's Winter Belt
				i(249742),	-- Seafarer's Winter Boots
				i(249744),	-- Seafarer's Winter Cloak
				i(249743),	-- Seafarer's Winter Gloves
				i(249737),	-- Seafarer's Winter Hood
				i(249741),	-- Seafarer's Winter Leggings
				i(249738),	-- Seafarer's Winter Pauldrons
				i(249862),	-- Seafarer's Winter Spaulders
				i(249739),	-- Seafarer's Winter Tunic

				------ Villager's Forest Set 1 ------
				i(250888),	-- Ensemble: Villager's Forest Collection
				q(92367),	-- Ensemble: Villager's Forest Collection
				i(250885),	-- Villager's Forest Belt
				i(250884),	-- Villager's Forest Blouse
				i(250883),	-- Villager's Forest Bonnet
				i(250890),	-- Villager's Forest Gloves
				i(250887),	-- Villager's Forest Sabatons
				i(250886),	-- Villager's Forest Skirt

				------ Villager's Forest Set 2 ------
				i(249917),	-- Ensemble: Villager's Forest Attire
				q(92112),	-- Ensemble: Villager's Forest Attire
				i(249916),	-- Villager's Forest Boots
				i(249910),	-- Villager's Forest Buckle
				i(249906),	-- Villager's Forest Cap
				i(249908),	-- Villager's Forest Handwraps
				i(249911),	-- Villager's Forest Pants
				i(249909),	-- Villager's Forest Tunic

				------ Villager's Seaside Set 1 ------
				i(249932),	-- Ensemble: Villager's Seaside Attire
				q(92115),	-- Ensemble: Villager's Seaside Attire
				i(249931),	-- Villager's Seaside Boots
				i(249929),	-- Villager's Seaside Buckle
				i(249926),	-- Villager's Seaside Cap
				i(249927),	-- Villager's Seaside Handwraps
				i(249930),	-- Villager's Seaside Pants
				i(249928),	-- Villager's Seaside Tunic

				------ Villager's Seaside Set 2 ------
				i(250897),	-- Ensemble: Villager's Seaside Collection
				q(92368),	-- Ensemble: Villager's Seaside Collection
				i(250894),	-- Villager's Seaside Belt
				i(250893),	-- Villager's Seaside Blouse
				i(250891),	-- Villager's Seaside Bonnet
				i(250892),	-- Villager's Seaside Gloves
				i(250896),	-- Villager's Seaside Sabatons
				i(250895),	-- Villager's Seaside Skirt

				------ Unused duplicated Ensembles ------
				i(241600),	-- Ensemble: Chains of the Chosen Dead
				i(241602),	-- Ensemble: Chains of the Chosen Dead
				i(248093),	-- Ensemble: Dreadlord's Shadowsbane Regalia
				i(241595),	-- Ensemble: Funerary Plate of the Chosen Dead
				i(241598),	-- Ensemble: Funerary Plate of the Chosen Dead
				i(241605),	-- Ensemble: Garb of the Chosen Dead
				i(241606),	-- Ensemble: Garb of the Chosen Dead
				i(259454),	-- Ensemble: Regalia of Shackled Elements
				i(241609),	-- Ensemble: Regalia of the Chosen Dead
				i(241610),	-- Ensemble: Regalia of the Chosen Dead
				i(248094),	-- Ensemble: Waveborne Diplomat's Regalia
			}),
			n(WEAPONS, {
				i(248735),	-- Arcane Dirk of the Ice Queen
				i(248817),	-- Arcane Wand of the Ice Queen
				i(248829),	-- Arcane Great Axe of the Frost
				i(248914),	-- Arcane Warglaives of the Nort
				i(248728),	-- Bacon-Wrapped Smoked Ribs
				i(250085),	-- Battered Pot Lid
				i(248832),	-- Big Bronze Fork
				i(248839),	-- Big Iron Fork
				i(248841),	-- Big Silver Fork
				i(249721),	-- Big Steel Spoon
				i(249722),	-- Big Blue Spoon
				i(249723),	-- Big Fancy Spoon
				i(250780),	-- Bronze Food Fanatic Shield
				i(251657),	-- Bunch of Pink Carrots
				i(251658),	-- Bunch of Purple Carrots
				i(251659),	-- Bunch of Yellow Carrotsts
				i(251855),	-- Bunch of Orange Chilets
				i(251856),	-- Bunch of Red Chile
				i(251857),	-- Bunch of Yellow Chile
				i(248739),	-- Dull Great Steak Knife
				i(251797),	-- Ears of Orange Corn
				i(251798),	-- Ears of Purple Corn
				i(251799),	-- Ears of White Corn
				i(248734),	-- Fiery Dirk of the Ice Queen
				i(248816),	-- Fiery Wand of the Ice Queen
				i(248828),	-- Fiery Great Axe of the Frostw
				i(248913),	-- Fiery Warglaives of the North
				i(250781),	-- Fine Food Fanatic Shield
				i(248736),	-- Glowing Dirk of the Ice Queen
				i(248818),	-- Glowing Wand of the Ice Queen
				i(248830),	-- Glowing Great Axe of the Fros
				i(248915),	-- Glowing Warglaives of the Nor
				i(250779),	-- Golden Food Fanatic Shield
				i(245663),	-- Holy Golden Greatsword
				i(245664),	-- Holy Hologem Greatsword
				i(248925),	-- Months Old Rye Bread
				i(251660),	-- Offhand Bunch of Yellow Carro
				i(251661),	-- Offhand Bunch of Purple Carro
				i(251662),	-- Offhand Bunch of Pink Carrots
				i(251801),	-- Offhand Ears of Orange Corn
				i(251802),	-- Offhand Ears of Purple Corn
				i(251803),	-- Offhand Ears of White Cornolf
				i(251870),	-- Offhand Bunch of Orange Chilewolf
				i(251872),	-- Offhand Bunch of Red Chiletwolf
				i(251873),	-- Offhand Bunch of Yellow Chile
				i(248725),	-- Smoked Rib Surprise
				i(248727),	-- Smoked Rib Leftovers
				i(248924),	-- Stale Mulgore Spice Bread
				i(248729),	-- Steaming Pot of Stewh
				i(248732),	-- Stolen Pot of Stewth
				i(250084),	-- Sturdy Pot Lid
				i(248923),	-- Unfathomably Stale Bread
				i(248738),	-- Used Great Steak Knife
				i(250087),	-- Used Pot Lid
				i(248730),	-- Weathered Pot of Stew
				i(248737),	-- Well-Used Great Steak Knife
			}),
		})),
	}),
}));
