---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(ZONE_DROPS, {	-- Drops available from pretty much anywhere in Dragon Isles
		["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS },
		["groups"] = {
			i(202071),	-- Elemental Mote
			i(202070),	-- Exceptional Pelt
		},
	}),
	n(ZONE_REWARDS, {
		-- DF open world supplies
		i(200691),	-- Claw Thistle Barbs
		i(200700),	-- Cuppressa Berries
		o(382031, {	-- Oily Dropcap
			i(200554),	-- Dropcap Head
		}),
		i(200695),	-- Fangtooth Petals
		i(200555),	-- Inferno Seeds
		i(200699),	-- Milkweed Fibers
		i(200690),	-- Ritherem Petals
		i(200694),	-- River Bell Bulbs
		i(200693),	-- Terata Leaves
		i(200703),	-- Vine Flower Fibers
		i(200222),	-- White Bell Pigment
		--
		i(199197, {	-- Bottled Essence x5
			i(190453),	-- Spark of Ingenuity
		}),
		i(191784),	-- Dragon Shard of Knowledge
		i(198058),	-- Titan Training Matrix III
		i(205423, {	-- Shadowflame Residue Sack
			["timeline"] = { ADDED_10_1_0 },
		}),
		i(205682, {	-- Large Shadowflame Residue Sack
			["timeline"] = { ADDED_10_1_0 },
		}),
		i(209837, {	-- Faint Whispers of Dreaming
			["timeline"] = { ADDED_10_2_0 },
		}),
		i(209839, {	-- Tangible Whispers of Dreaming
			["timeline"] = { ADDED_10_2_0 },
		}),
		i(217243, {	-- Awakening Ruby Wing
			["timeline"] = { ADDED_10_2_6_SEASON_FOUR },
		}),
		i(217242, {	-- Awakening Stone WingDreaming
			["timeline"] = { ADDED_10_2_6_SEASON_FOUR },
		}),
		i(215362, {	-- Cache of Storms
			["description"] = "Rewarded from any 'Awakened' Zone Activity",
			["timeline"] = { ADDED_10_2_6_SEASON_FOUR },
			["sym"] = {
				-- DF > Zone Rewards (Armors)
				{"select","mapID",DRAGON_ISLES},{"pop"},{"where","headerID",ZONE_REWARDS},{"pop"},
					{"whereany","filterID",CLOTH,LEATHER,MAIL,PLATE,TRINKET_F},{"finalize"},
				-- DF > Zone Rewards (Weapons)
				{"select","mapID",DRAGON_ISLES},{"pop"},{"where","headerID",ZONE_REWARDS},{"pop"},
					{"where","headerID",WEAPONS},{"finalize"},
				-- World Drops > DF
				{"select","expansionID",EXPANSION.DF},{"pop"},{"where","headerID",WEAPONS},
			},
			["groups"] = {
				i(202172),	-- Overflowing Satchel of Coins
			},
		}),
		filter(CLOTH, {
			i(191989),	-- Cobalt Watcher's Cord
			i(191987),	-- Cobalt Watcher's Cowl
			i(191990),	-- Cobalt Watcher's Cuffs
			i(191986),	-- Cobalt Watcher's Handwraps
			i(191988),	-- Cobalt Watcher's Leggings
			i(191984),	-- Cobalt Watcher's Sandals
			i(192015),	-- Cobalt Watcher's Shoulderpads
			i(191983),	-- Cobalt Watcher's Vestment
		}),
		filter(LEATHER, {
			i(191996),	-- Ottuk Hide Bindings
			i(191994),	-- Ottuk Hide Breeches
			i(192014),	-- Ottuk Hide Epaulets
			i(191992),	-- Ottuk Hide Grips
			i(191993),	-- Ottuk Hide Helm
			i(191995),	-- Ottuk Hide Sash
			i(192013),	-- Ottuk Hide Vest
			i(191991),	-- Ottuk Hide Waders
		}),
		filter(MAIL, {
			i(192037),	-- Ohn'ahran Falconer's Belt
			i(192004),	-- Ohn'ahran Falconer's Bracers
			i(191997),	-- Ohn'ahran Falconer's Chainmail
			i(192003),	-- Ohn'ahran Falconer's Cinch
			i(192000),	-- Ohn'ahran Falconer's Coif
			i(192001),	-- Ohn'ahran Falconer's Greaves
			i(191999),	-- Ohn'ahran Falconer's Grips
			i(192002),	-- Ohn'ahran Falconer's Shoulderguards
			i(191998),	-- Ohn'ahran Falconer's Striders
		}),
		filter(PLATE, {
			i(192012),	-- Wyrmforged Armplates
			i(192006),	-- Wyrmforged Breastplate
			i(192008),	-- Wyrmforged Gauntlets
			i(192011),	-- Wyrmforged Girdle
			i(192005),	-- Wyrmforged Helm
			i(192009),	-- Wyrmforged Legguards
			i(192010),	-- Wyrmforged Mantle
			i(192007),	-- Wyrmforged Sabatons
		}),
		filter(TRINKET_F, {
			i(197934),	-- Ancestral Protector's Stone
			i(198407),	-- Azure Arcanic Amplifier
			i(193477),	-- Battle-Scarred Scale
			i(198627),	-- Blood of the Khansguard
			i(198695),	-- Bottomless Reliquary Satchel
			i(198539),	-- Breath of the Plains
			i(198490),	-- Bushwhacker's Compass
			i(198081),	-- Caregiver's Charm
			i(198489),	-- Dreamscape Prism
			i(192797),	-- Gral's Discarded Tooth
			i(193568),	-- Engraved Spearhead
			i(198451),	-- Lifeflame Ampoule
			i(198542),	-- Shikaari Huntress' Arrowhead
			i(198532),	-- The Cartographer's Calipers
			i(198529),	-- Wayfarer's Iron Torch
		}),
		n(WEAPONS, {
			i(197953),	-- Ancient Protector's Broadsword
			i(197926),	-- Billowing Magmathrower's Cudgel
			i(197923),	-- Bloodcharger's Skewer
			i(197925),	-- Burning Club of the Wallclimbers
			i(192019),	-- Calibrated Hand Cannon
			i(197922),	-- Cavalry's Charging Lance
			i(192020),	-- Ceremonial Ohn'ir Dagger
			i(197932),	-- Chipped Reef Hacker
			i(197944),	-- Deepsea Hunter's Crossbow
			i(192030),	-- Dexterous War Pole
			i(197927),	-- Djaradin Bludgeoning Hammer
			i(192024),	-- Dragonflayer's Seething Shortsword
			i(192016),	-- Drakescale Heater Shield
			i(197943),	-- Elder's Bioluminous Quarterstaff
			i(197956),	-- Empowered Shortsword of Insight
			i(197945),	-- Gnarled Thorn Bow
			i(197940),	-- Hefty Iskaaran Anchor
			i(197937),	-- Intricate Scaling Knife
			i(197941),	-- Iskaaran Mystic's Tideshear
			i(192023),	-- Lava-Forged Decapitator
			i(192034),	-- Marauder's Singing Blade
			i(192033),	-- Maruuk Battle Standard
			i(192028),	-- Metalshaper's Obsidian Mace
			i(197947),	-- Molten Pugilist's Fist
			i(192031),	-- Nokhud Impaling Halberd
			i(192018),	-- Piercing Shikaar Thrust
			i(192022),	-- Plumed Outrunner's Dirk
			i(192021),	-- Qalashi Crustshaper's Greatmace
			i(197939),	-- Razortooth Harpoon
			i(197935),	-- Seafarer's Hatchet
			i(192032),	-- Searing Wyvern Brand
			i(197936),	-- Serrated Deboning Knife
			i(197948),	-- Stone Sentinel's Greatsword
			i(192029),	-- Swift Dragonbone Mace
			i(197955),	-- Sword of the Eternal Guard
			i(192017),	-- Thrumming Celestial Arrangement
			i(197957),	-- Timeless Watcher's Saber
			i(197942),	-- Tuskarr Navigator's Staff
			i(197938),	-- Uktulut Whaling Spear
			i(197931),	-- Waking Shores Cleaver
			i(192025),	-- World Breaker's Maul
			i(197924),	-- Wyrm Poacher's Emberblade
		}),
		filter(COSMETIC, {
			i(201447),	-- Primalist Tomorrow's Breezeblade
			i(201444),	-- Primalist Tomorrow's Earthblade
			i(201445),	-- Primalist Tomorrow's Emberblade
			i(201446),	-- Primalist Tomorrow's Firewall
			i(201442),	-- Primalist Tomorrow's Frostblade
			i(201443),	-- Primalist Tomorrow's Icewall
			i(201448),	-- Primalist Tomorrow's Windwall
		}),
	}),
})));
