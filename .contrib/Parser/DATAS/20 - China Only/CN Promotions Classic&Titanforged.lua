-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------

TITANFORGED_PROMOTIONS = createHeader({
	readable = "Titanforged Promotions",
	icon = [[~_.asset("Expansion_MN")]],
	text = {
		en = "Titanforged Promotions",
		-- TODO: de = "",
	--	es = "Promociones temporada Midnight",
	--	mx = "Promociones temporada Midnight",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
	--	ru = "Промо Midnight",
		cn = "泰坦重铸促销",
	--	tw = "《至暗之夜》季節性促銷",
	},
	description = {
	--	en = "These promotions happened during the time Midnight was the most recent expansion.\n\nThey are listed in the order of their first appearance.",
	--	es = "Estas promociones tuvieron lugar durante el tiempo en que Midnight era la expansión más reciente.\n\nSe enumeran en el orden en que aparecieron por primera vez.",
	--	mx = "Estas promociones sucedieron durante el tiempo en que Midnight era la expansión más reciente.\n\nSe listan en el orden en que aparecieron por primera vez.",
	--	cn = "这些促销活动均发生在《至暗之夜》作为最新资料片的时期。以下按活动首次出现的时间顺序列出",
	},
});
CN_PROMOTIONS_CLASSIC = createHeader({
	readable = "CN Promotions (Classic)",
	icon = [[~_.asset("Expansion_WOTLK")]],
	text = {
		en = "CN Promotions (Classic)",
		-- TODO: de = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		cn = "中国促销（经典）",
	},
	description = {
		en = "These promotions are limited to the Classic & Titanforged Chinese Realms.",
		cn = "这些促销活动仅限于经典与泰坦重铸中国服务器。",
	},
});
root(ROOTS.Promotions, {
	cnONLY(n(CN_PROMOTIONS_CLASSIC, {
		cnONLY(i(33225, {	-- Reins of the Swift Spectral Tiger (MOUNT!)
			["description"] = "Obtained if you paid 267$ to set up a 6 Month WoW Subscription between 25th January 2022 until 25th July 2022.",
			["u"] = REMOVED_FROM_GAME,
		})),
		cnONLY(mount(471440, {	-- Skybound Spectral Tiger (MOUNT!)
			["timeline"] = { ADDED_3_4_3, "removed 3.4.5", "added 5.5.2", "removed 5.5.10" },
			["description"] = "Can be bought for ¥1888 ($265 USD) or a discounted price of ¥588 ($82 USD) for owners of the original from October 2024 to 7 January 2025 in the Ingame Shop. The bundle returned for 2026.",
		})),
		n(TREASURE_OF_AZEROTH, sharedDataSelf({
			["timeline"] = { "added 3.80.0", "removed 3.80.10", "added 5.5.0", "removed 5.5.10" },
			["u"] = REAL_MONEY,
		}, {
			["groups"] = {
				i(265944),	-- Ashened Cataclysm (MOUNT!)
				-- #if AFTER 5.5.0
				i(79769),	-- Demon Hunter's Aspect (TOY!) (MoP Classic only)
				i(72134),	-- Grell Moss (PET!) (MoP Classic only)
				-- #endif
				i(76889),	-- Spectral Gryphon (MOUNT!)
				i(76902),	-- Spectral Wind Rider (MOUNT!)
				i(72159),	-- Magical Ogre Idol (TOY!)
				i(71726),	-- Murky's Little Soulstone (PET!)
				i(264986),	-- Reins of Inarius' Charger (MOUNT!)
				i(76755),	-- Tyrael's Charger (MOUNT!)
				--	10x Sands of Time -> feeds QUICKSAND_SECRET_TREASURE_VAULT (see that node)
				--i(ITEMID_TODO),	-- Satchel of Exotic Mysteries (ITEM!) (MoP Classic only)
			},
		})),
		n(QUICKSAND_SECRET_TREASURE_VAULT, sharedDataSelf({
			["timeline"] = { "added 3.80.0", "removed 3.80.10", "added 5.5.0", "removed 5.5.10" },
		}, {
			["groups"] = {
				i(38576),	-- Big Battle Bear (MOUNT!)
				i(49704),	-- Carved Ogre Idol (TOY!)
				i(63125),	-- Dark Phoenix (MOUNT!) (August 2026)
				i(226812),	-- Harmonious Greetings Bear (PET!)
				i(78924),	-- Heart of the Aspects (MOUNT!)
				i(257515),	-- Lil' Coalee (PET!) (August 2026)
				i(23720),	-- Riding Turtle (MOUNT!)
				i(38312),	-- Tabard of Brilliance (COSMETIC!) (August 2026)
			},
		}));
		n(DELUXEBUNDLE2025CLASSIC, sharedDataSelf({
			["timeline"] = { "added 3.80.0", "removed 3.80.10", "added 5.5.0", "removed 5.5.10" },
			["u"] = REAL_MONEY,
		}, {
			["groups"] = {
				--	i(247848),	-- "Quietwater Angler" Title (Classic)
				i(248263),	-- Azure Sea Boat (TOY!) (Classic)
				i(109013),	-- Reins of the Dread Raven (MOUNT!) (Classic)
				-- 12-Month Subscription Bundle
				mount(463045),	-- Lava Drake (MOUNT!) (Classic and Titan)
				i(258883),	-- Sha-scarred Drake (MOUNT!) (Classic and Titan)
				-- 6-Month Subscription Bundle
				i(231312),	-- Timbered Air Snakelet (PET!) (Classic and Titan)
				i(266129),	-- Sa'bak's Favored (PET!) (Classic) (Only Classic?)
				i(267301),	-- Smoldering Courage (PET!) (Classic) (Only Classic?)
			},
		})),
		n(LUNARNEWYEAR, sharedDataSelf({
			["timeline"] = { "added 3.80.0", "removed 3.80.10", "added 5.5.0", "removed 5.5.10" },
			["u"] = REAL_MONEY,
		}, {
			["groups"] = {
				i(267279),	-- Embers of Al'ar (TOY!)
				i(268924),	-- Scorching Imperial Quilen (MOUNT!)
				i(254735, {	-- Thunderhoof Celestial (MOUNT!)
					i(258136),	-- Azure Thunder Coil Pillar (TOY)
				}),
			},
		})),
		n(CRIMSONTIDE_TREASURETROVE, sharedDataSelf({
			["timeline"] = { "added 3.80.0", "removed 3.80.10", "added 5.5.0", "removed 5.5.10" },
			["u"] = REAL_MONEY,
		}, {
			["groups"] = {
				i(272312),	-- Crimson Bloodwater (TOY!)
				i(45037),	-- Epic Purple Shirt
				mount(457485),	-- Grizzly Hills Packmaster (MOUNT!)
				i(273849, { -- Landro's Sha-Touched Loot Box
					["description"] = "1.25% chance for any of the following:",
					["groups"] = {
						i(273021),	-- Sha-Warped Hippogryph Hatchling (PET!)
						i(269640),	-- Sha-Warped Owl (MOUNT!)
						i(269012),	-- Sha-Warped Riding Wolf (MOUNT!)
						i(54860),	-- X-53 Touring Rocket (MOUNT!)
					},
				}),
				i(269590),	-- Lorewalker's Curio Crate (MoP Classic)
				i(25535),	-- Netherwhelp's Collar (PET!)
				--	i(ITEMID_TODO),	-- Northrend Adventuring Supplies (Titan Reforged)
				i(183107),	-- Pile of Ashen Dust (PET!)
				i(262344),	-- Scarlet Lady (MOUNT!)
				--	--i(ITEMID_TODO),	-- Stable Shard (CURRENCY!)
				i(269659),	-- The Sire's Palanquin (MOUNT!)
				i(271652),	-- The Sire's Ghastly Screecher (PET!)
				n(TOP_TIER_CNONLY, {
					["groups"] = {
						mount(423869),	-- Avatar of Flame (MOUNT!)
						mount(457485), 	-- Grizzly Hills Packmaster (MOUNT!)
						i(83086),		-- Heart of the Nightwing (MOUNT!)
						i(262344), 		-- Scarlet Lady (MOUNT!)
						i(269659), 		-- The Sire's Palanquin (MOUNT!)
					},
				}),
				n(FIRST_TIER_CNONLY, {
					["groups"] = {
						i(54069),	-- Blazing Hippogryph (MOUNT!)
						i(272312),	-- Crimson Bloodwater (TOY!)
						i(201699),	-- Festering Emerald Drake (MOUNT!)
						mount(463045),	--	Lava Drake (MOUNT!)
						i(207097),	-- Nightmarish Emerald Drake (MOUNT!)
						i(76889),	-- Spectral Gryphon (MOUNT!)
						i(76902),	-- Spectral Wind Rider (MOUNT!)
					},
				}),
				n(SECOND_TIER_CNONLY, {
					["groups"] = {
						i(49704),	-- Carved Ogre Idol (TOY!)
						i(45037),	-- Epic Purple Shirt
						i(33223),	-- Fishing Chair (DECOR!)
						i(209945),	-- Lil' Wrathion (PET!) [WotLK Classic id]
						i(71726),	-- Murky's Little Soulstone (PET!)
						i(25535),	-- Netherwhelp's Collar
						i(34499),	-- Paper Flying Machine Kit (TOY!)
						i(49343),	-- Spectral Tiger Cub (PET!)
						i(271652),	-- The Sire's Ghastly Screecher (PET!)
					},
				}),
				n(THIRD_TIER_CNONLY, {
					["groups"] = {
						i(38301),	-- D.I.S.C.O. (TOY!)
						i(49664),	-- Enchanted Purple Jade (TOY!)
						i(33219),	-- Goblin Gumbo Kettle (TOY!)
						i(67097),	-- Grim Campfire (TOY!)
						i(23713),	-- Hippogryph Hatchling (PET!)
						i(32542),	-- Imp in a Ball (TOY!)
						i(54212),	-- Instant Statue Pedestal (TOY!)
						i(23714),	-- Perpetual Purple Firework (TOY!)
						i(32566),	-- Picnic Basket (TOY!)
						i(34519),	-- Silver Pig Coin (TOY!)
						i(72161),	-- Spurious Sarcophagus (TOY!)
					},
				}),
			},
		})),
		n(LUCKY_BAMBOO_TILES, sharedDataSelf({
			["timeline"] = { "added 3.80.0", "removed 3.80.10", "added 5.5.0", "removed 5.5.10" },
		}, {
			["groups"] = {
				i(98550),	-- Blossoming Ancient (PET!)
				i(170206),	-- Crown of Infinite Prosperity (COSMETIC!)
				i(273849, { -- Landro's Sha-Touched Loot Box
					["description"] = "1.25% chance for any of the following:",
					["groups"] = {
						i(273021),	-- Sha-Warped Hippogryph Hatchling (PET!)
						i(269640),	-- Sha-Warped Owl (MOUNT!)
						i(269012),	-- Sha-Warped Riding Wolf (MOUNT!)
						i(54860),	-- X-53 Touring Rocket (MOUNT!)
					},
				}),
				i(275818),	-- Pinky (PET!)
				i(272920),	-- Spring Panda (MOUNT!)
				-- #if AFTER 3.80.0
				-- #if BEFORE 3.80.10
			--	i(ITEMID_TODO),	-- Northrend Adventuring Supplies (Titan Reforged)
				-- #endif
				-- #endif
				-- #if AFTER 5.5.0
				-- #if BEFORE 5.5.10
				i(269590),	-- Lorewalker's Curio Crate (MoP Classic)
				-- #endif
				-- #endif
			},
		}));
		n(DELUXEBUNDLE2026, sharedDataSelf({
			["timeline"] = { ADDED_12_1_0, REMOVED_12_1_5 },
			["u"] = REAL_MONEY,
		}, {
			["groups"] = {
				i(258883),	-- Sha-scarred Drake (MOUNT!)
				i(267301),	-- Smoldering Courage (PET!)
				i(277193),	-- Sunflutter Driftmoth (PET!)
				i(274967),	-- Varian's Dragon Spirit (TOY!)
				i(274967),	-- Varian's Dragon Throne (TOY!)
				-- Duplicate Reward Program (6 August to 31 October 2026)
				i(85872),  -- Lashtail Hatchling (PET!) [Classic/Titan]
				i(85870),  -- Reins of the Guardian Quilen (MOUNT!) [Classic/Titan]
			},
		})),
		n(AZURESPAN_TREASURETROVE, sharedDataSelf({
			["timeline"] = { "added 3.80.0", "removed 3.80.10", "added 5.5.0", "removed 5.5.10" },
			["u"] = REAL_MONEY,
		}, {
			["groups"] = {
				i(193837),	-- Backswimmer Timbertooth (PET!)
				i(200882),	-- Big Kinook's Spare Ladle (COSMETIC!)
				--	i(ITEMID_TODO),	-- Death Knight toy item (TOY!)
				i(274925),	-- Delta (PET!)
				i(252194),	-- Fishmonger May (PET!)
				i(198428),	-- Tuskarr Dinghy (TOY!)
				i(274037),	-- Tuskarr Hermit Crab (MOUNT!)
				i(274730),	-- Tuskarr Ice Fishing Tent (TOY!)
				i(273849, { -- Landro's Sha-Touched Loot Box
					["description"] = "1.25% chance for any of the following:",
					["groups"] = {
						i(273021),	-- Sha-Warped Hippogryph Hatchling (PET!)
						i(269640),	-- Sha-Warped Owl (MOUNT!)
						i(269012),	-- Sha-Warped Riding Wolf (MOUNT!)
						i(54860),	-- X-53 Touring Rocket (MOUNT!)
					},
				}),
				i(269590),	-- Lorewalker's Curio Crate (MoP Classic)
			--	i(ITEMID_TODO),	-- Northrend Adventuring Supplies (Titan Reforged)
			--	--i(ITEMID_TODO),	-- Treasure Shard (CURRENCY!)
				n(TOP_TIER_CNONLY, {
					["groups"] = {
						mount(423869),	-- Avatar of Flame (MOUNT!)
						--	i(ITEMID_TODO),	-- Death Knight toy item (TOY!)
						i(83086),	-- Heart of the Nightwing (MOUNT!)
						i(274037),	-- Tuskarr Hermit Crab (MOUNT!)
					},
				}),
				n(FIRST_TIER_CNONLY, {
					["groups"] = {
						i(54069),	-- Blazing Hippogryph (MOUNT!)
						i(201699),	-- Festering Emerald Drake (MOUNT!)
						mount(463045),	-- Lava Drake (MOUNT!)
						i(207097),	-- Nightmarish Emerald Drake (MOUNT!)
						i(76889),	-- Spectral Gryphon (MOUNT!)
						i(76902),	-- Spectral Wind Rider (MOUNT!)
						i(198428),	-- Tuskarr Dinghy (TOY!)
					},
				}),
				n(SECOND_TIER_CNONLY, {
					["groups"] = {
						i(193837),	-- Backswimmer Timbertooth (PET!)
						i(49704),	-- Carved Ogre Idol (TOY!)
						i(274925),	-- Delta (PET!)
						i(33223),	-- Fishing Chair (DECOR!)
						i(252194),	-- Fishmonger May (PET!)
						i(209945),	-- Lil' Wrathion (PET!) [WotLK Classic id]
						i(71726),	-- Murky's Little Soulstone (PET!)
						i(49343),	-- Spectral Tiger Cub (PET!)
						i(274730),	-- Tuskarr Ice Fishing Tent (TOY!)
					},
				}),
				n(THIRD_TIER_CNONLY, {
					["groups"] = {
						i(38301),	-- D.I.S.C.O. (TOY!)
						i(49664),	-- Enchanted Purple Jade (TOY!)
						i(33219),	-- Goblin Gumbo Kettle (TOY!)
						i(67097),	-- Grim Campfire (TOY!)
						i(23713),	-- Hippogryph Hatchling (PET!)
						i(32542),	-- Imp in a Ball (TOY!)
						i(54212),	-- Instant Statue Pedestal (TOY!)
						i(23714),	-- Perpetual Purple Firework (TOY!)
						i(32566),	-- Picnic Basket (TOY!)
						i(34519),	-- Silver Pig Coin (TOY!)
						i(72161),	-- Spurious Sarcophagus (TOY!)
					},
				}),
			},
		})),
		n(CN_WOW_ANNIVERSARY_TWENTYONE, sharedDataSelf({	-- Yes CN is 1year Behind and celebrates 21st Bday 2026
			["timeline"] = { "added 3.80.0", "removed 3.80.10", "added 5.5.0", "removed 5.5.10" },
		}, {
			["groups"] = {
				-- Login giveaway
				i(95059),	-- Clutch of Ji-Kun (MOUNT!)
				i(273150),	-- Voidfeather Dragonhawk (MOUNT!)
				-- Deluxe Collector's Annual Pass Bundle
				i(281681),	-- Varian's Dragon Spirit (TOY!)
			},
		})),
	})),
	cnONLY(n(TITANFORGED_PROMOTIONS, {
		["timeline"] = { "added 3.80.0", "removed 3.80.10" },
		["groups"] = {
			mount(1280400, {	-- Reforged Invincible (MOUNT!)
				["description"] = "This red version of the iconic Invincible mount has so far only been available in China. We don't know if or when it'll become available in the rest of the world. It was obtainable only through a special event on China's Titan Reforged servers in September-November 2025, awarded to players who defeated the Lich King in Icecrown Citadel on any difficulty.",
			}),
		},
	})),
});

--https://warcraft.wiki.gg/wiki/Titan_Reforged_-_Chrono
