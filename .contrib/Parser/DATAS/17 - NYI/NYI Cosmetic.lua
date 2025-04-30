---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, filter(COSMETIC, {
	expansion(EXPANSION.CLASSIC, {
		-- 1.x.x
		n(P1xx, {
			i(6834),	-- Black Tuxedo
		}),
	}),
	expansion(EXPANSION.CATA, {
		-- 4.0.3
		expansion(EXPANSION.CATA, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_3 } }, {
			i(52488),	-- Jeweler's Sapphire Monocle
		})),
	}),
	expansion(EXPANSION.MOP, {
		-- 5.0.1
		expansion(EXPANSION.MOP, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_5_0_4 } }, {
			i(73240),	-- Sedge Hat of the Enlightened
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
			i(147379),	-- Wooden Toy Axe [H] used to apply the mog
			i(147378),	-- Wooden Toy Sword [A] (Visual usage for toy weapon set)
			--
			i(146306),	-- Green Winter Clothes
			i(146305),	-- Green Winter Hat
			i(146307),	-- Winter Boots
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
			i(182306),	-- Monster Mantle
		})),

		-- 9.1.0
		expansion(EXPANSION.SL, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_1_0 } }, {
			iensemble(186500),	-- Ensemble: Garb of the Twilight Grove (questID 63596)
			iensemble(186518),	-- Ensemble: Forsworn Aspirant's Regalia (questID 63600)
			iensemble(186505),	-- Ensemble: Rogue Necromancer's Vestments (questID 63629)
			iensemble(186513),	-- Ensemble: Radiant Court Attire (questID 63632)
			iensemble(186514),	-- Ensemble: Redeemed Inquisitor's Vestments (questID 63636)
			i(185774),	-- PH Green Head Candle
			i(186093),	-- Shaded Spectacles
		})),

		-- 9.1.5
		expansion(EXPANSION.SL, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_9_1_5 } }, {
			i(187914),	-- Captain Noteo's Unused Eye Patch
		})),
	}),
	expansion(EXPANSION.DF, {
		-- 10.0.0
		expansion(EXPANSION.DF, patch(0,01), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
			i(194318),	-- Book of Ancient Lore
			i(193069),	-- Climber's Pack
			i(198385),	-- Draconian Garden Pick
			i(194329),	-- Elaborate Reliquary Candelabra
			i(198386),	-- Gardener's Tilling Spork
			i(194314),	-- Light of the Enlightened
			i(194331),	-- Pristine Research Journal
			i(194316),	-- Tome of Forgotten Legends
			i(198342),	-- Tuskarr Expedition Pack
			i(191647),	-- Tuskarr Fishing Pole
			i(199666),	-- Spiked Azure Spaulders
			i(199667),	-- Spiked Bronze Spaulders
			i(199668),	-- Spiked Emerald Spaulders
			i(199665),	-- Spiked Obsidian Spaulders

				------ TRADING POST ------
			n(SETS, {
				------ Honored Valarjar Set [Mail] ------
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
				i(190919),	-- Breastplate of the Honored Valarjar
				i(190915),	-- Gardbrace of the Honored Valarjar
				i(190914),	-- Greatbelt of the Honored Valarjar
				i(190911),	-- Greatcloak of the Honored Valarjar
				i(190916),	-- Greaves of the Honored Valarjar
				i(190918),	-- Handguards of the Honored Valarjar
				i(190917),	-- Helm of the Honored Valarjar
				i(190913),	-- Vambraces of the Honored Valarjar
				i(190912),	-- Warboots of the Honored Valarjar

				------ Nightmare Forest Set ------
				i(190229),	-- Nightmare Forest Bindings
				i(190224),	-- Nightmare Forest Grips
				i(190223),	-- Nightmare Forest Jerkin
				i(190226),	-- Nightmare Forest Leggings
				i(190228),	-- Nightmare Forest Mantle
				i(190225),	-- Nightmare Forest Mask
				i(190227),	-- Nightmare Forest Raiment
				i(190222),	-- Nightmare Forest Sandals
				i(190221),	-- Nightmare Forest Waistwrap

				------ Slumbering Caldera Set ------
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
		})),

		-- 10.0.5
		expansion(EXPANSION.DF, patch(0,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_5 } }, {
				------ TRADING POST ------
			n(ARMOR, {
				i(190672),	-- Deathguard Acolyte's Cloak
				i(189869),	-- Distinguished Warcloak
			}),
			n(SETS, {
				i(190575),	-- Ensemble: Chains of the Honored Valarjar
				i(190165),	-- Ensemble: Twisted Arcanum Regalia
				i(190772),	-- Ensemble: Vestments of the Nightmare Forest

				------ Highborne Scholar Set ------
				i(190435),	-- Highborne Scholar's Belt
				i(190437),	-- Highborne Scholar's Collar
				i(190787),	-- Highborne Scholar's Cuffs
				i(190815),	-- Highborne Scholar's Leggings
				i(190555),	-- Highborne Scholar's Robe
				i(190868),	-- Highborne Scholar's Scrollmantle
				i(190809),	-- Highborne Scholar's Slippers

				------ Tidecaller's Set ------
				i(190700),	-- Tidecaller's Boots
				i(190432),	-- Tidecaller's Bracers
				i(190440),	-- Tidecaller's Crown
				i(190067),	-- Tidecaller's Grips
				i(190072),	-- Tidecaller's Hauberk
				i(190556),	-- Tidecaller's Legguards
				i(190709),	-- Tidecaller's Pauldrons

				------ Val'Sharah Protector Set ------
				i(190547),	-- Val'Sharah Protector's Bracers
				i(190897),	-- Val'Sharah Protector's Crown
				i(190213),	-- Val'sharah Protector's Cuirass
				i(190676),	-- Val'Sharah Protector's Gauntlets
				i(190861),	-- Val'Sharah Protector's Girdle
				i(189881),	-- Val'sharah Protector's Greaves
				i(190069),	-- Val'sharah Protector's Sabatons
				i(190074),	-- Val'sharah Protector's Spaulders

				------ Void-Bound Set [Cloth] ------
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
				------ TRADING POST ------
			n(SETS, {
				i(190796),	-- Ensemble: Slumbering Caldera Regalia
			}),
			n(WEAPONS, {
				i(190077),	-- Scarlet Zealot's Heater Shield
				i(189885),	-- The Battlespoon
			}),
		})),

		-- 10.1.5
		expansion(EXPANSION.DF, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_1_5 } }, {
			i(206800),	-- Arcane Detection Rod
			i(206806),	-- Part Dislocator
				------ TRADING POST ------
			n(ARMOR, {
				i(190559),	-- Helm of the Swift
			}),
			n(SETS, {
				iensemble(200917),	-- Ensemble: Tidecaller's Chainmail

				------ Vagabond's Grassy Threads ------
				iensemble(206329),	-- Ensemble: Vagabond's Grassy Threads
				i(206285),	-- Vagabond's Grassy Cape
				i(206296),	-- Vagabond's Grassy Hood

				------ Vagabond's Plum Threads ------
				iensemble(206323),	-- Ensemble: Vagabond's Plum Threads
				i(206279),	-- Vagabond's Plum Cape
				i(206290),	-- Vagabond's Plum Hood

				------ Wanderer's Grassy Trappings ------
				iensemble(206340),	-- Ensemble: Wanderer's Grassy Trappings
				i(206318),	-- Wanderer's Grassy Cloak
				i(206307),	-- Wanderer's Grassy Scarf

				------ Wanderer's Plum Trappings ------
				iensemble(206334),	-- Ensemble: Wanderer's Plum Trappings
				i(206312),	-- Wanderer's Plum Cloak
				i(206301),	-- Wanderer's Plum Scarf
			}),
			n(WEAPONS, {
				i(190561),	-- Crystalblade of Shifting Magic
			}),
		})),

		-- 10.2.0
		expansion(EXPANSION.DF, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_0 } }, {
				------ Trading Post ------
			n(ARMOR, {
				i(210856),	-- Trader's Faded Sarong
				i(210851),	-- Trader's Grassy Sarong
				i(210859),	-- Trader's Plum Sarong
			}),
			n(WEAPONS, {
				i(190875),	-- Chilled Touch of the Condemned
			}),
		})),

		-- 10.2.5
		expansion(EXPANSION.DF, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_5 } }, {
			i(212338),	-- DNT - Hearthstone - Loot - Hat (Needs Art)
			i(212532),	-- Reno's Hat
			i(211926),	-- Riders of Azeroth Tabard
				------ Trading Post ------
			n(ARMOR, {
				i(190807),	-- Artisan's Work Shirt
				i(190669),	-- Burnished Helm of Righteousness
				i(190692),	-- Champion's Battle Standard
				i(190847),	-- Deathmantle Assassin's Barb
				i(190090),	-- Dessicated Bouquet
				i(212625),	-- Dueler's Grassy Shoulder Cape
				i(212618),	-- Dueler's Plum Shoulder Cape
				i(190893),	-- Jeweled Valkyrion Cape
				i(190688),	-- Silvered Helm of Righteousness
				i(212705),	-- Spring Reveler's Cornsilk Attire
				i(212706),	-- Spring Reveler's Cornsilk Belt
				i(212707),	-- Spring Reveler's Cornsilk Boots
				i(212713),	-- Spring Reveler's Cornsilk Dress
				i(212987),	-- Spring Reveler's Cornsilk Pants
				i(212717),	-- Spring Reveler's Cornsilk Sun Hat
				i(212610),	-- Wings of the Emerald Monarch
			}),
			n(SETS, {
				i(190924),	-- Arsenal: Ruby Felfire Armaments
				iensemble(190920),	-- Ensemble: Battleplate of the Honored Valarjar
				iensemble(200910),	-- Ensemble: Val'sharah Protector's Battleplate
				iensemble(200918),	-- Ensemble: Void-Bound Raiment
				iensemble(200924),	-- Ensemble: Void-Bound Battlegear
				iensemble(201000),	-- Ensemble: Void-Bound Chains
				iensemble(201001),	-- Ensemble: Void-Bound Warplate
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

		-- 10.2.5
		expansion(EXPANSION.DF, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_5 } }, {
			i(213155),	-- Dark Ranger General's Quiver
		})),

		-- 10.2.6
		expansion(EXPANSION.DF, patch(2,6), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_6 } }, {
			i(217635),	-- Dream Raider's Azure Razor

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

			------ Single Pieces ------
			i(217373),	-- Frenzied Hat of the Dark Depths
		})),

		-- 10.2.7
		expansion(EXPANSION.DF, patch(2,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_7 } }, {
			n(SETS, {
				i(223243),	-- Ensemble: Blue Diver Suit
				i(221541),	-- Ensemble: Blue Tropical
				q(82138),	-- Ensemble: Blue Tropical
				i(223246),	-- Ensemble: Copper Diver Suit
				q(82270),	-- Ensemble: Copper Diver Suit
				i(222959),	-- Ensemble: Tropical Sunrise Swimwear
				q(82231),	-- Ensemble: Tropical Sunrise Swimwear
				------ Black Tropical Set ------
				i(221540),	-- Ensemble: Black Tropical
				q(82137),	-- Ensemble: Black Tropical
				i(221847),	-- Ensemble: Black Tropical Swimwear
				q(82198),	-- Ensemble: Black Tropical Swimwear
				i(221826),	-- Black Tropical Airy Sandals
				i(221825),	-- Black Tropical Beads
				i(221524),	-- Black Tropical Floater
				i(221822),	-- Black Tropical Halter Top
				i(221523),	-- Black Tropical Sandals
				i(221827),	-- Black Tropical Sash
				i(221520),	-- Black Tropical Shirt
				i(221824),	-- Black Tropical Skirt
				i(221828),	-- Black Tropical Sunshade
				i(221521),	-- Black Tropical Trunks
				i(221522),	-- Black Tropical Wristwraps

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

				------ Pink Tropical Set ------
				i(221543),	-- Ensemble: Pink Tropical
				i(222960),	-- Ensemble: Pink Tropical Swimwear
			}),
			n(WEAPONS, {
				------ Single Pieces ------
				i(220690),	-- Water Blaster P.R.
				i(220691),	-- Water Blaster Y.L.
			}),
		})),
	}),
	expansion(EXPANSION.TWW, {
		-- 11.0.0
		expansion(EXPANSION.TWW, patch(0,01), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
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
		expansion(EXPANSION.TWW, patch(0,5), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
			n(SETS, {
				------ Prowler's Aquatic Set ------
				i(230181),	-- Ensemble: Prowler's Aquatic Headgear
				i(230071),	-- Prowler's Aquatic Cowl
				i(230091),	-- Prowler's Aquatic Mask
				i(230050),	-- Prowler's Aquatic Shoulder Cape

				------ Prowler's Brick Set ------
				i(230171),	-- Ensemble: Prowler's Brick Headgear
				i(230061),	-- Prowler's Brick Cowl
				i(230081),	-- Prowler's Brick Mask
				i(230039),	-- Prowler's Brick Shoulder Cape

				------ Prowler's Cloudy Set ------
				i(230168),	-- Ensemble: Prowler's Cloudy Headgear
				i(230058),	-- Prowler's Cloudy Cowl
				i(230078),	-- Prowler's Cloudy Mask
				i(230037),	-- Prowler's Cloudy Shoulder Cape

				------ Prowler's Grassy Set ------
				i(230167),	-- Ensemble: Prowler's Grassy Headgear
				i(230057),	-- Prowler's Grassy Cowl
				i(230077),	-- Prowler's Grassy Mask
				i(230036),	-- Prowler's Grassy Shoulder Cape

				------ Prowler's Lively Set ------
				i(230172),	-- Ensemble: Prowler's Lively Headgear
				i(230062),	-- Prowler's Lively Cowl
				i(230082),	-- Prowler's Lively Mask
				i(230041),	-- Prowler's Lively Shoulder Cape

				------ Prowler's Midnight Set ------
				i(230152),	-- Ensemble: Prowler's Midnight Headgear
				i(230054),	-- Prowler's Midnight Cowl
				i(230074),	-- Prowler's Midnight Mask
				i(230033),	-- Prowler's Midnight Shoulder Cape

				------ Prowler's Plum Set ------
				i(230178),	-- Ensemble: Prowler's Plum Headgear
				i(230068),	-- Prowler's Plum Cowl
				i(230088),	-- Prowler's Plum Mask
				i(230047),	-- Prowler's Plum Shoulder Cape

				------ Prowler's Rosy Set ------
				i(230177),	-- Ensemble: Prowler's Rosy Headgear
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
				i(233183),	-- Banded Aquatic War Slippers
				i(233166),	-- Banded Aquatic War Wraps
				i(233170),	-- Banded Azure War Slippers
				i(233176),	-- Banded Brick War Slippers
				i(233159),	-- Banded Brick War Wraps
				i(233179),	-- Banded Carrot War Slippers
				i(233162),	-- Banded Carrot War Wraps
				i(233173),	-- Banded Cloudy War Slippers
				i(233156),	-- Banded Cloudy War Wraps
				i(233178),	-- Banded Faded War Slippers
				i(233161),	-- Banded Faded War Wraps
				i(233172),	-- Banded Grassy War Slippers
				i(233155),	-- Banded Grassy War Wraps
				i(233177),	-- Banded Lively War Slippers
				i(233160),	-- Banded Lively War Wraps
				i(233169),	-- Banded Midnight War Slippers
				i(233152),	-- Banded Midnight War Wraps
				i(233180),	-- Banded Rosy War Slippers
				i(233163),	-- Banded Rosy War Wraps
				i(233184),	-- Banded Snowy War Slippers
				i(233167),	-- Banded Snowy War Wraps
				i(234710),	-- Earthen Artisan Kilt
				i(234712),	-- Earthen Explorer's Kilt
				i(234711),	-- Earthen Peacekeeper Warkilt
				i(234709),	-- Earthen Travel Kilt
				i(234758),	-- Korkron Spaulders
				i(233237),	-- Lively Pack of Lunar Explosives
				i(233110),	-- Long Aquatic War Skirt
				i(233149),	-- Long Aquatic War Skirt and Leg Wraps
				i(233103),	-- Long Brick War Skirt
				i(233142),	-- Long Brick War Skirt and Leg Wraps
				i(233106),	-- Long Carrot War Skirt
				i(233145),	-- Long Carrot War Skirt and Leg Wraps
				i(233100),	-- Long Cloudy War Skirt
				i(233139),	-- Long Cloudy War Skirt and Leg Wraps
				i(233105),	-- Long Faded War Skirt
				i(233144),	-- Long Faded War Skirt and Leg Wraps
				i(233099),	-- Long Grassy War Skirt
				i(233138),	-- Long Grassy War Skirt and Leg Wraps
				i(233104),	-- Long Lively War Skirt
				i(233143),	-- Long Lively War Skirt and Leg Wraps
				i(233096),	-- Long Midnight War Skirt
				i(233135),	-- Long Midnight War Skirt and Leg Wraps
				i(233107),	-- Long Rosy War Skirt
				i(233146),	-- Long Rosy War Skirt and Leg Wraps
				i(233111),	-- Long Snowy War Skirt
				i(233150),	-- Long Snowy War Skirt and Leg Wraps
				i(233109),	-- Long Violet War Skirt
				i(234059),	-- Lunar Festival Attire - Purple
				i(234060),	-- Lunar Festival Attire - Teal
				i(234043),	-- Lunar Festival Belt - Purple
				i(234044),	-- Lunar Festival Belt - Teal
				i(234055),	-- Lunar Festival Crown - Purple
				i(234056),	-- Lunar Festival Crown - Teal
				i(234047),	-- Lunar Festival Robe - Purple
				i(234048),	-- Lunar Festival Robe - Teal
				i(234039),	-- Lunar Festival Slippers - Purple
				i(234040),	-- Lunar Festival Slippers - Teal
				i(234051),	-- Lunar Festival Spaulders - Purple
				i(234052),	-- Lunar Festival Spaulders - Teal
				i(232924),	-- Sailor's Belt
				i(233093),	-- Short Aquatic War Skirt
				i(233132),	-- Short Aquatic War Skirt and Leg Wraps
				i(233086),	-- Short Brick War Skirt
				i(233125),	-- Short Brick War Skirt and Leg Wraps
				i(233089),	-- Short Carrot War Skirt
				i(233128),	-- Short Carrot War Skirt and Leg Wraps
				i(233083),	-- Short Cloudy War Skirt
				i(233122),	-- Short Cloudy War Skirt and Leg Wraps
				i(233088),	-- Short Faded War Skirt
				i(233127),	-- Short Faded War Skirt and Leg Wraps
				i(233082),	-- Short Grassy War Skirt
				i(233121),	-- Short Grassy War Skirt and Leg Wraps
				i(233087),	-- Short Lively War Skirt
				i(233126),	-- Short Lively War Skirt and Leg Wraps
				i(233079),	-- Short Midnight War Skirt
				i(233116),	-- Short Midnight War Skirt and Leg Wraps
				i(233090),	-- Short Rosy War Skirt
				i(233129),	-- Short Rosy War Skirt and Leg Wraps
				i(233094),	-- Short Snowy War Skirt
				i(233133),	-- Short Snowy War Skirt and Leg Wraps
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
				i(233327),	-- Cobalt Clockwork Attire
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
				i(233330),	-- Violet Clockwork Attire
				i(233313),	-- Violet Clockwork Belt
				i(233325),	-- Violet Clockwork Boots
				i(233317),	-- Violet Clockwork Bracer
				i(233294),	-- Violet Clockwork Cap
				i(233280),	-- Violet Clockwork Defender
				i(233321),	-- Violet Clockwork Glove
				i(233309),	-- Violet Clockwork Leggings
				i(233301),	-- Violet Clockwork Pauldrons
				i(233305),	-- Violet Clockwork Uniform
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
		expansion(EXPANSION.TWW, patch(1,0), bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
			n(ARMOR, {
				i(231559),	-- [DNT] Experimental Gobbo-Flyer v3
				i(235034),	-- Vigilante's Aquatic Mask
				i(235026),	-- Vigilante's Brick Mask
				i(235023),	-- Vigilante's Cloudy Mask
				i(235028),	-- Vigilante's Faded Mask
				i(235022),	-- Vigilante's Grassy Mask
				i(235027),	-- Vigilante's Lively Mask
				i(235019),	-- Vigilante's Midnight Mask
				i(235030),	-- Vigilante's Rosy Mask
				i(235035),	-- Vigilante's Snowy Mask
				i(235036),	-- Vigilante's Sunny Mask
				i(234601),	-- Wings of the Icy Rose Monarch
			}),
			n(SETS, {

				------ Forest Dweller's Butterfly Set ------
				i(235593),	-- Ensemble: Forest Dweller's Butterfly Attire
				i(235589),	-- Forest Dweller's Butterfly Belt
				i(235568),	-- Forest Dweller's Butterfly Boots
				i(235576),	-- Forest Dweller's Butterfly Cap
				i(235572),	-- Forest Dweller's Butterfly Glove
				i(235585),	-- Forest Dweller's Butterfly Mantle
				i(235580),	-- Forest Dweller's Butterfly Pants
				i(235564),	-- Forest Dweller's Butterfly Tunic

				------ Forest Dweller's Garden Set ------
				i(235592),	-- Ensemble: Forest Dweller's Garden Attire
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
				i(235214),	-- Spring Butterfly Belt
				i(235150),	-- Spring Butterfly Helm
				i(235212),	-- Spring Butterfly Pauldrons

				------ Topsy Turvy Mask Set ------
				i(235340),	-- Topsy Turvy Fool's Mask
				i(235343),	-- Topsy Turvy Joker's Mask

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
	}),
}));