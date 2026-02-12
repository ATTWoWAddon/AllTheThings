-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } }, {
		n(BUILDINGS, {
			garrisonBuilding(126, {	-- Enchanter's Study (rank 1: 93, rank 2: 125, rank 3: 126)
				n(QUESTS, {
					q(38290, {	-- Some Dust
						["qgs"] = {
							91020,	-- Enchantress Ismae
							91029,	-- Rath'thul Moonvale
						},
						["cost"] = { { "i", 109693, 50 } },	-- 50x Draenic Dust
						["isDaily"] = true,
					}),
					q(36310, {	-- The Arakkoan Enchanter [A]
						["sourceQuest"] = 36308,	-- Enchanted Highmaul Bracer
						["qg"] = 83491,	-- Eileese Shadowsong
						["coord"] = { 45.4, 53.4, LUNARFALL },
						["requireSkill"] = ENCHANTING,
						["races"] = ALLIANCE_ONLY,
						["groups"] = { i(115350) },	-- Enchanted Highmaul Bracer (QI!)
					}),
					q(36256, {	-- The Arakkoan Enchanter [H]
						["sourceQuest"] = 36255,	-- Enchanted Highmaul Bracer
						["qg"] = 83482,	-- Yu'rina the Mystic
						["coord"] = { 47.6, 38.7, FROSTWALL },
						["requireSkill"] = ENCHANTING,
						["races"] = HORDE_ONLY,
						["groups"] = { i(115350) },	-- Enchanted Highmaul Bracer (QI!)
					}),
					q(36645, {	-- Your First Enchanting Work Order
						["qg"] = 77354,	-- Ayada the White
						["cost"] = { { "i", 109693, 5 } },	-- 5x Draenic Dust
						["races"] = ALLIANCE_ONLY,
					}),
					q(37570, {	-- Your First Enchanting Work Order
						["qg"] = 79821,	-- Yukla Greenshadow
						["cost"] = { { "i", 109693, 5 } },	-- 5x Draenic Dust
						["races"] = HORDE_ONLY,
					}),
				}),
				filter(RECIPES, {
					["crs"] = {
						88612,	-- Enchanting Follower [A]
						88611,	-- Enchanting Follower [H]
					},
					["groups"] = sharedData({ ["u"] = TRAINING }, {
						r(173716),	-- Illusion: Agility
						r(173717),	-- Illusion: Battlemaster
						r(173718),	-- Illusion: Berserking
						r(174979),	-- Illusion: Blood Draining
						r(173720),	-- Illusion: Crusader
						r(175076, {	-- Illusion: Earthliving
							["classes"] = { SHAMAN },
						}),
						r(173721),	-- Illusion: Elemental Force
						r(173722),	-- Illusion: Executioner
						r(173723),	-- Illusion: Fiery Weapon
						r(175072, {	-- Illusion: Flametongue
							["classes"] = { SHAMAN },
						}),
						r(175071, {	-- Illusion: Frostbrand
							["classes"] = { SHAMAN },
						}),
						r(173719),	-- Illusion: Greater Spellpower
						r(173724),	-- Illusion: Hidden
						r(175070),	-- Illusion: Jade Spirit
						r(173725),	-- Illusion: Landslide
						r(173726),	-- Illusion: Lifestealing
						r(175085),	-- Illusion: Mending
						r(173727),	-- Illusion: Mongoose
						r(173728, {	-- Illusion: Poisoned
							["classes"] = { ROGUE },
						}),
						r(173729),	-- Illusion: Power Torrent
						r(175086),	-- Illusion: River's Song
						r(175078, {	-- Illusion: Rockbiter
							["classes"] = { SHAMAN },
						}),
						r(173730),	-- Illusion: Spellsurge
						r(173731),	-- Illusion: Striking
						r(173732),	-- Illusion: Unholy
						r(175074, {	-- Illusion: Windfury
							["classes"] = { SHAMAN },
						}),
						r(177355),	-- Remove Illusion
					}),
				}),
				n(VENDORS, {
					n(77354, {	-- Ayada the White [Alliance]
						["races"] = ALLIANCE_ONLY,
						["sym"] = {{"sub", "common_vendor", 87022}},	-- Bob <Enchanting Recipes>
					}),
					n(79821, {	-- Yukla Greenshadow [Horde]
						["races"] = HORDE_ONLY,
						["sym"] = {{"sub", "common_vendor", 86045}},	-- Ged'kah <Enchanting Recipes>
					}),
				}),
			}),
		}),
	})),
})));
