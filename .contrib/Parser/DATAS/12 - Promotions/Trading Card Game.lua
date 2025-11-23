-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
TRADING_CARD_GAME = createHeader({
	readable = "Trading Card Game",
	-- #if AFTER CATA
	icon = 418250,
	-- #else
	icon = 134493,
	-- #endif
	text = {
		en = [[~BATTLE_PET_SOURCE_9]],
	},
});
root(ROOTS.Promotions, n(TRADING_CARD_GAME,
	bubbleDown({
		-- #if ANYCLASSIC
		["u"] = REMOVED_FROM_GAME,
		-- #else
		["u"] = TCG,
		-- #endif
	}, {
	["timeline"] = { "created 1.13.0", ADDED_2_0_1 },
	["groups"] = {
		filter(BATTLE_PETS, {
			i(50301, {	-- Landro's Pet Box [TODO: SYMLINK]
				["timeline"] = { ADDED_3_3_0 },
				["groups"] = {
					i(46779, {	-- Path of Cenarius
						["timeline"] = { ADDED_3_2_0 },
					}),
					i(35223, {	-- Papa Hummel's Old-Fashioned Pet Biscuit
						["timeline"] = { ADDED_2_4_0 },
					}),
					i(45047, {	-- Sandbox Tiger
						["timeline"] = { ADDED_3_1_0 },
					}),
					i(32588, {	-- Bananas (PET!)
						["timeline"] = { ADDED_2_0_1 },
					}),
					i(34493, {	-- Dragon Kite (PET!)
						["timeline"] = { ADDED_2_3_0 },
					}),
					i(38050, {	-- Ethereal Soul-Trader (PET!)
						["timeline"] = { ADDED_2_4_2 },
					}),
				},
			}),
			i(32588, {	-- Bananas (PET!)
				["timeline"] = { ADDED_2_0_1 },
			}),
			i(34493, {	-- Dragon Kite (PET!)
				["timeline"] = { ADDED_2_3_0 },
			}),
			i(79744, {	-- Eye of the Legion (PET!)
				["timeline"] = { ADDED_4_3_2 },
			}),
			i(72134, {	-- Gregarious Grell (PET!)
				["timeline"] = { ADDED_4_3_0 },
			}),
			i(93669, {	-- Gusting Grimoire (PET!)
				["timeline"] = { ADDED_5_2_0 },
			}),
			i(23713, {	-- Hippogryph Hatchling (PET!)
				["timeline"] = { "created 1.13.0", ADDED_2_0_1 },
			}),
			i(68840, {	-- Landro's Lichling (PET!)
				["timeline"] = { ADDED_4_1_0 },
			}),
			i(67128, {	-- Landro's Lil' XT (PET!)
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(68841, {	-- Nightsaber Cub (PET!)
				["timeline"] = { ADDED_4_1_0 },
			}),
			i(71624, {	-- Purple Puffer (PET!)
				["timeline"] = { ADDED_4_3_0 },
			}),
			i(34492, {	-- Rocket Chicken (PET!)
				["timeline"] = { ADDED_2_3_0 },
			}),
			i(72153, {	-- Sand Scarab (PET!)
				["timeline"] = { ADDED_4_3_0 },
			}),
			i(38050, {	-- Ethereal Soul-Trader (PET!)
				["timeline"] = { ADDED_2_4_2 },
				["groups"] = {
					i(38186, {	-- Ethereal Credit
						["description"] = "To obtain this, summon your Soul-Trader pet and kill players or NPCs which are no less than 8 levels below you.",
					}),
					i(38291, {	-- Ethereal Mutagen
						["cost"] = { { "i", 38186, 100 } },	-- 100x Ethereal Credit
					}),
					i(38300, {	-- Diluted Ethereum Essence
						["cost"] = { { "i", 38186, 50 } },	-- 50 Ethereal Credit
					}),
					i(38160, {	-- Soul-Trader's Bindings
						["cost"] = { { "i", 38186, 1000 } },	-- 1000x Ethereal Credit
					}),
					i(38162, {	-- Soul-Trader's Boots
						["cost"] = { { "i", 38186, 250 } },	-- 250x Ethereal Credit
					}),
					i(38161, {	-- Soul-Trader's Gloves
						["cost"] = { { "i", 38186, 250 } },	-- 250x Ethereal Credit
					}),
					i(38163, {	-- Soul-Trader's Head Wrap
						["cost"] = { { "i", 38186, 100 } },	-- 100x Ethereal Credit
					}),
					i(38286, {	-- Soul-Trader's Pauldrons
						["cost"] = { { "i", 38186, 500 } },	-- 500x Ethereal Credit
					}),
					i(38285, {	-- Soul-Trader's Waistband
						["cost"] = { { "i", 38186, 100 } },	-- 100x Ethereal Credit
					}),
				},
			}),
			i(49343, {	-- Spectral Tiger Cub (PET!)
				["timeline"] = { ADDED_3_2_2 },
			}),
			i(49287, {	-- Tuskarr Kite (PET!)
				["timeline"] = { ADDED_3_2_2 },
			}),
		}),
		filter(MISC, {
			i(49288, {	-- Little Ivory Raptor
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(49289, {	-- Little White Stallion
				["timeline"] = { ADDED_3_2_0 },
			}),
		}),
		filter(MOUNTS, {
			i(68825, {	-- Amani Dragonhawk (MOUNT!)
				["timeline"] = { ADDED_4_1_0 },
			}),
			i(38576, {	-- Big Battle Bear (MOUNT!) BOP
				["timeline"] = { ADDED_2_4_2, REMOVED_3_2_0 },
			}),
			i(49282, {	-- Big Battle Bear (MOUNT!) BOE
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(54069, {	-- Blazing Hippogryph (MOUNT!)
				["timeline"] = { ADDED_3_3_3, REMOVED_4_3_0 },
			}),
			i(74269, {	-- Blazing Hippogryph (MOUNT!)
				["timeline"] = { ADDED_4_3_0 },
			}),
			i(72582, {	-- Corrupted Hippogryph (MOUNT!)
				["timeline"] = { ADDED_4_3_0 },
			}),
			i(79771, {	-- Feldrake (MOUNT!)
				["timeline"] = { ADDED_4_3_2 },
			}),
			i(93671, {	-- Ghastly Charger (MOUNT!)
				["timeline"] = { ADDED_5_2_0 },
			}),
			i(46778, {	-- Magic Rooster Egg (MOUNT!) [BoP]
				["timeline"] = { ADDED_3_2_0, REMOVED_3_2_0 },
			}),
			i(49290, {	-- Magic Rooster Egg (MOUNT!) [BoE]
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(68008, {	-- Mottled Drake (MOUNT!)
				["timeline"] = { ADDED_4_0_3 },
			}),
			i(33224, {	-- Spectral Tiger (MOUNT!) BOP
				["timeline"] = { ADDED_2_1_3, REMOVED_3_2_0 },
			}),
			i(49283, {	-- Spectral Tiger (MOUNT!) BOE
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(33225, {	-- Swift Spectral Tiger (MOUNT!) BOP
				["timeline"] = { ADDED_2_1_3, REMOVED_3_2_0 },
			}),
			i(49284, {	-- Swift Spectral Tiger (MOUNT!) BOE
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(23720, {	-- Riding Turtle (MOUNT!)
				["timeline"] = { "created 1.13.0", ADDED_2_0_1 },
			}),
			i(69228, {	-- Savage Raptor (MOUNT!)
				["timeline"] = { ADDED_4_1_0 },
			}),
			i(71718, {	-- Swift Shorestrider (MOUNT!)
				["timeline"] = { ADDED_4_3_0 },
			}),
			i(72575, {	-- White Riding Camel (MOUNT!)
				["timeline"] = { ADDED_4_3_0 },
			}),
			i(54068, {	-- Wooly White Rhino (MOUNT!)
				["timeline"] = { ADDED_3_3_5 },
			}),
			i(35225, {	-- X-51 Nether-Rocket (MOUNT!) BOP
				["timeline"] = { ADDED_2_4_0, REMOVED_3_2_0 },
			}),
			i(49285, {	-- X-51 Nether-Rocket (MOUNT!) BOE
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(35226, {	-- X-51 Nether-Rocket X-TREME (MOUNT!) BOP
				["timeline"] = { ADDED_2_4_0, REMOVED_3_2_0 },
			}),
			i(49286, {	-- X-51 Nether-Rocket X-TREME (MOUNT!) BOE
				["timeline"] = { ADDED_3_2_0 },
			}),
		}),
		filter(SHIRTS, {
			["timeline"] = { ADDED_3_1_0 },
			["groups"] = {
				i(45037, {	-- Epic Purple Shirt
					["timeline"] = { ADDED_3_1_0 },
				}),
			}
		}),
		filter(TABARDS, {
			i(38312, {	-- Tabard of Brilliance
				["timeline"] = { ADDED_2_4_3 },
			}),
			i(23705, {	-- Tabard of Flame
				["timeline"] = { "created 1.13.0", ADDED_2_0_1 },
			}),
			i(23709, {	-- Tabard of Frost
				["timeline"] = { "created 1.13.0", ADDED_2_0_1 },
			}),
			i(38313, {	-- Tabard of Fury
				["timeline"] = { ADDED_2_4_3 },
			}),
			i(38309, {	-- Tabard of Nature
				["timeline"] = { ADDED_2_4_3 },
			}),
			i(38310, {	-- Tabard of the Arcane
				["timeline"] = { ADDED_2_4_3 },
			}),
			i(38314, {	-- Tabard of the Defender
				["timeline"] = { ADDED_2_4_3 },
			}),
			i(38311, {	-- Tabard of the Void
				["timeline"] = { ADDED_2_4_3 },
			}),
		}),
		filter(TOYS, {
			i(23716, {	-- Carved Ogre Idol
				["timeline"] = { "created 1.13.0", ADDED_2_2_3 },
			}),
			i(49704, {	-- Carved Ogre Idol (TOY!)
				["timeline"] = { ADDED_3_2_2 },
			}),
			i(93672, {	-- Dark Portal (TOY!)
				["model"] = 803615,
				["modelScale"] = 5,
				["timeline"] = { ADDED_5_2_0 },
			}),
			i(79769, {	-- Demon Hunter's Aspect (TOY!)
				["timeline"] = { ADDED_4_3_2 },
			}),
			i(38301, {	-- D.I.S.C.O. (TOY!)
				["model"] = 201182,
				["modelScale"] = 3,
				["timeline"] = { ADDED_2_4_2 },
			}),
			i(54452, {	-- Ethereal Portal (TOY!)
				["timeline"] = { ADDED_3_3_5 },
			}),
			i(33223, {	-- Fishing Chair (TOY!)
				["timeline"] = { ADDED_2_2_0 },
			}),
			i(45063, {	-- Foam Sword Rack (TOY!)
				["model"] = 253206,
				["timeline"] = { ADDED_3_1_0 },
				["groups"] = {
					i(45061, {	-- Foam Sword
						["collectible"] = false,
					}),
					i(45176, {	-- Foam Sword
						["collectible"] = false,
					}),
					i(45177, {	-- Foam Sword
						["collectible"] = false,
					}),
					i(45178, {	-- Foam Sword
						["collectible"] = false,
					}),
					i(45179, {	-- Foam Sword
						["collectible"] = false,
					}),
				},
			}),
			i(69227, {	-- Fool's Gold (TOY!)
				["timeline"] = { ADDED_4_1_0 },
			}),
			i(33219, {	-- Goblin Gumbo Kettle (TOY!)
				["timeline"] = { ADDED_2_1_3 },
			}),
			i(35227, {	-- Goblin Weather Machine - Prototype 01-B (TOY!)
				["model"] = 166247,
				["timeline"] = { ADDED_2_4_0 },
			}),
			i(67097, {	-- Grim Campfire (TOY!)
				["timeline"] = { ADDED_4_0_1 },
			}),
			i(32542, {	-- Imp in a Ball (TOY!)
				["timeline"] = { ADDED_2_1_0 },
			}),
			i(54212, {	-- Instant Statue Pedestal (TOY!)
				["timeline"] = { ADDED_3_3_3 },
			}),
			i(72159, {	-- Magical Ogre Idol (TOY!)
				["timeline"] = { ADDED_4_3_0 },
			}),
			i(46780, {	-- Ogre Pinata (TOY!)
				["model"] = 306851,	-- Candypile = 306864
				["modelScale"] = 9,
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(34499, {	-- Paper Flying Machine Kit (TOY!)
				["timeline"] = { ADDED_2_3_0 },
			}),
			i(23714, {	-- Perpetual Purple Firework
				["timeline"] = { "created 1.13.0", ADDED_2_2_3 },
			}),
			i(49703, {	-- Perpetual Purple Firework (TOY!)
				["timeline"] = { ADDED_3_2_2 },
			}),
			i(32566, {	-- Picnic Basket (TOY!)
				["timeline"] = { ADDED_2_1_0 },
			}),
			i(71628, {	-- Sack of Starfish (TOY!)
				["timeline"] = { ADDED_4_3_0 },
			}),
			i(72161, {	-- Spurious Sarcophagus (TOY!)
				["timeline"] = { ADDED_4_3_0 },
			}),
			i(38578, {	-- The Flag of Ownership (TOY!)
				["model"] = 200314,
				["modelScale"] = 2,
				["timeline"] = { ADDED_2_5_1 },
			}),
			i(69215, {	-- War Party Hitching Post (TOY!)
				["timeline"] = { ADDED_4_1_0 },
			}),
		}),
	},
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, {
	n(TRADING_CARD_GAME, {
		q(83005, name(HEADERS.Item, 79769)),	-- Redeemed Demon Hunter's Aspect
		q(83013, name(HEADERS.Item, 69227)),	-- Redeemed Fool's Gold
		q(83004, name(HEADERS.Item, 72161)),	-- Redeemed Spurious Sarcophagus
		q(83012, name(HEADERS.Item, 69215)),	-- Redeemed War Party Hitching Post
	}),
}));
