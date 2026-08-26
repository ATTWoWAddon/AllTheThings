---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local CORROSIVE_COIN = 3448;

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
			n(VENDORS, {
				n(262880, {	-- Er'inye <Venom Scholar>
					["coord"] = { 51.2, 62.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					["groups"] = {
						i(281223, {	-- Satchel of Corrosive Coins
							["cost"] = { { "i", 273000, 1 } },	-- 1x Corrosive Soul
							["groups"] = { currency(CORROSIVE_COIN) },
						}),
					},
				}),
				n(272751, {	-- Skull of Er'inye <Venomous Goods>
					["coord"] = { 51.2, 62.4, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					["groups"] = {
						iensemble(279358, {	-- Arsenal: Venom-Cursed Arms (COSMETIC!)
							["cost"] = { { "c", CORROSIVE_COIN, 25000 } },
						}),
						iensemble(279230, {	-- Ensemble: Venom-Cursed Bear's Guard (COSMETIC!)
							["cost"] = { { "c", CORROSIVE_COIN, 10000 } },
						}),
						iensemble(279224, {	-- Ensemble: Venom-Cursed Dragonhawk's Raiment (COSMETIC!)
							["cost"] = { { "c", CORROSIVE_COIN, 10000 } },
						}),
						iensemble(279228, {	-- Ensemble: Venom-Cursed Eagle's Scales (COSMETIC!)
							["cost"] = { { "c", CORROSIVE_COIN, 10000 } },
						}),
						iensemble(279227, {	-- Ensemble: Venom-Cursed Lynx's Garb (COSMETIC!)
							["cost"] = { { "c", CORROSIVE_COIN, 10000 } },
						}),
						i(279922, {	-- Altar of Corrosion (DECOR!)
							["sourceAchievement"] = 63636,	-- Fully Corroded
							["cost"] = { { "c", CORROSIVE_COIN, 2500 } },
						}),
						i(275628, {	-- Cauldron of Ula'tek (DECOR!)
							["cost"] = { { "c", CORROSIVE_COIN, 1000 } },
						}),
						i(275654, {	-- Caustic Venomfang (MOUNT!)
							["cost"] = { { "c", CORROSIVE_COIN, 10000 } },
						}),
						i(271358, {	-- Clutch of Ula'tek (DECOR!)
							["cost"] = { { "c", CORROSIVE_COIN, 1000 } },
						}),
						i(281620, {	-- Corrosive Cache (DECOR!)
							["cost"] = { { "c", CORROSIVE_COIN, 2500 } },
						}),
						i(275631, {	-- Corrosive Writhling (PET!)
							["cost"] = { { "c", CORROSIVE_COIN, 5000 } },
						}),
						i(271604, {	-- Egg of Ula'tek (DECOR!)
							["cost"] = { { "c", CORROSIVE_COIN, 750 } },
						}),
						i(271888, {	-- Recipe: Liquid Luster (RECIPE!)
							["cost"] = {
								{ "c", CORROSIVE_COIN, 5000 },
								{ "c", ARTISAN_MOXIE.ALCHEMY, 150 },
							},
						}),
						i(269637, {	-- Serpent-Caller Spike (DECOR!)
							["cost"] = { { "c", CORROSIVE_COIN, 1000 } },
						}),
						i(266169, {	-- Soulcoiler Canopy (DECOR!)
							["cost"] = { { "c", CORROSIVE_COIN, 1000 } },
						}),
						i(279919, {	-- Soulcoiler Jaw (DECOR!)
							["cost"] = { { "c", CORROSIVE_COIN, 2500 } },
						}),
						i(275578, {	-- Soulcoiler Sconce (DECOR!)
							["cost"] = { { "c", CORROSIVE_COIN, 750 } },
						}),
						i(279917, {	-- Soulcoiler Skull (DECOR!)
							["cost"] = { { "c", CORROSIVE_COIN, 2500 } },
						}),
						i(253473, {	-- Unearthed Amani Sarcophagus Base (DECOR!)
							["cost"] = { { "c", CORROSIVE_COIN, 1000 } },
						}),
						i(253455, {	-- Unearthed Amani Sarcophagus Lid (DECOR!)
							["cost"] = { { "c", CORROSIVE_COIN, 750 } },
						}),
						i(267378, {	-- Venom Scholar's Focus (DECOR!)
							["cost"] = { { "c", CORROSIVE_COIN, 750 } },
						}),
						i(272362, {	-- Venombound Ropes (DECOR!)
							["cost"] = { { "c", CORROSIVE_COIN, 1000 } },
						}),
						i(280764, {	-- Venomous Defender's Barricade (DECOR!)
							["cost"] = { { "c", CORROSIVE_COIN, 1000 } },
						}),
						i(281577, {	-- Venomous Globule (DECOR!)
							["cost"] = { { "c", CORROSIVE_COIN, 750 } },
						}),
						i(271850, {	-- Venomous Tendril (DECOR!)
							["cost"] = { { "c", CORROSIVE_COIN, 750 } },
						}),
						i(281573, {	-- Venomous Thread (DECOR!)
							["cost"] = { { "c", CORROSIVE_COIN, 750 } },
						}),
						i(275632, {	-- Volatile Venomfang (PET!)
							["cost"] = { { "c", CORROSIVE_COIN, 5000 } },
						}),
					},
				}),
			}),
		}),
	}),
}));
