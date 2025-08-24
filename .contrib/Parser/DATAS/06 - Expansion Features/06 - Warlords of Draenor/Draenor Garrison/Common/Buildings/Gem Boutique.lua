-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(BUILDINGS, {
				garrisonBuilding(132, {	-- Gem Boutique (rank 1: 96, rank 2: 131, rank 3: 132)
					n(QUESTS, {
						q(37320, {	-- Jewelcrafting Special Order: A Fine Choker
							["provider"] = { "n", 88545 },	-- Jewelcrafting Follower - Alliance
							["isDaily"] = true,
						}),
						q(37321, {	-- Jewelcrafting Special Order: A Yellow Brighter Than Gold
							["provider"] = { "n", 88545 },	-- Jewelcrafting Follower - Alliance
							["isDaily"] = true,
						}),
						q(37323, {	-- Jewelcrafting Special Order: Blue the Shade of Sky and Sea
							["provider"] = { "n", 88545 },	-- Jewelcrafting Follower - Alliance
							["isDaily"] = true,
						}),
						q(37319, {	-- Jewelcrafting Special Order: Wedding Bands
							["provider"] = { "n", 88545 },	-- Jewelcrafting Follower - Alliance
							["isDaily"] = true,
						}),
						q(37324, {	-- Out of Stock: Blackrock Ore
							["provider"] = { "n", 88545 },	-- Jewelcrafting Follower - Alliance
							["isDaily"] = true,
						}),
						q(37325, {	-- Out of Stock: True Iron Ore
							["provider"] = { "n", 88545 },	-- Jewelcrafting Follower - Alliance
							["isDaily"] = true,
						}),
						q(36644, {	-- Your First Jewelcrafting Work Order
							["provider"] = { "n", 77356 },	-- Costan Highwall
							["races"] = ALLIANCE_ONLY,
						}),
						q(37573, {	-- Your First Jewelcrafting Work Order
							["provider"] = { "n", 79832 },	-- Dorogarr
							["races"] = HORDE_ONLY,
						}),
					}),
					n(VENDORS, {
						TempForceMisc(i(115359, {	-- Draenor Jewelcrafting
							r(170709),	-- Whispering Iron Choker
							r(170706),	-- Whispering Iron Band
							r(170712),	-- Whispering Blackrock Band
							r(170708),	-- Shifting Iron Choker
							r(170705),	-- Shifting Iron Band
							r(170711),	-- Shifting Blackrock Band
							r(170707),	-- Glowing Iron Choker
							r(170704),	-- Glowing Iron Band
							r(170710),	-- Glowing Blackrock Band
							r(176087),	-- Secrets of Draenor Jewelcrafting
							r(170700),	-- Taladite Crystal
						})),
						i(116096, {	-- Design: Critical Strike Taladite
							["cost"] = { { "i", 118723, 1 }, },	-- 1x Secret of Draenor Jewelcrafting
						}),
						i(116093, {	-- Design: Glowing Taladite Pendant
							["cost"] = { { "i", 118723, 1 }, },	-- 1x Secret of Draenor Jewelcrafting
						}),
						i(116090, {	-- Design: Glowing Taladite Ring
							["cost"] = { { "i", 118723, 1 }, },	-- 1x Secret of Draenor Jewelcrafting
						}),
						i(116102, {	-- Design: Greater Critical Strike Taladite
							["cost"] = { { "i", 118723, 5 }, },	-- 5x Secret of Draenor Jewelcrafting
						}),
						i(116103, {	-- Design: Greater Haste Taladite
							["cost"] = { { "i", 118723, 5 }, },	-- 5x Secret of Draenor Jewelcrafting
						}),
						i(116104, {	-- Design: Greater Mastery Taladite
							["cost"] = { { "i", 118723, 5 }, },	-- 5x Secret of Draenor Jewelcrafting
						}),
						i(116107, {	-- Design: Greater Stamina Taladite
							["cost"] = { { "i", 118723, 5 }, },	-- 5x Secret of Draenor Jewelcrafting
						}),
						i(116106, {	-- Design: Greater Versatility Taladite
							["cost"] = { { "i", 118723, 5 }, },	-- 5x Secret of Draenor Jewelcrafting
						}),
						i(116097, {	-- Design: Haste Taladite
							["cost"] = { { "i", 118723, 1 }, },	-- 1x Secret of Draenor Jewelcrafting
						}),
						i(116098, {	-- Design: Mastery Taladite
							["cost"] = { { "i", 118723, 1 }, },	-- 1x Secret of Draenor Jewelcrafting
						}),
						i(116109, {	-- Design: Prismatic Focusing Lens
							["cost"] = { { "i", 118723, 3 }, },	-- 3x Secret of Draenor Jewelcrafting
						}),
						i(116108, {	-- Design: Reflecting Prism
							["cost"] = { { "i", 118723, 3 }, },	-- 3x Secret of Draenor Jewelcrafting
						}),
						i(116094, {	-- Design: Shifting Taladite Pendant
							["cost"] = { { "i", 118723, 1 }, },	-- 1x Secret of Draenor Jewelcrafting
						}),
						i(116091, {	-- Design: Shifting Taladite Ring
							["cost"] = { { "i", 118723, 1 }, },	-- 1x Secret of Draenor Jewelcrafting
						}),
						i(116101, {	-- Design: Stamina Taladite
							["cost"] = { { "i", 118723, 1 }, },	-- 1x Secret of Draenor Jewelcrafting
						}),
						i(116079, {	-- Design: Taladite Amplifier
							["collectible"] = false,
							["description"] = "The item is still in game but you can't learn the recipe from it anymore (recipe removed in 9.0.1)",
							["cost"] = { { "i", 118723, 5 }, },	-- 5x Secret of Draenor Jewelcrafting
						}),
						i(116078, {	-- Design: Taladite Recrystalizer
							["cost"] = { { "i", 118723, 1 }, },	-- 1x Secret of Draenor Jewelcrafting
						}),
						i(116100, {	-- Design: Versatility Taladite
							["cost"] = { { "i", 118723, 1 }, },	-- 1x Secret of Draenor Jewelcrafting
						}),
						i(116095, {	-- Design: Whispering Taladite Pendant
							["cost"] = { { "i", 118723, 1 }, },	-- 1x Secret of Draenor Jewelcrafting
						}),
						i(116092, {	-- Design: Whispering Taladite Ring
							["cost"] = { { "i", 118723, 1 }, },	-- 1x Secret of Draenor Jewelcrafting
						}),
						n(77356, {	-- Costan Highwall <Jewelcrafter>
							["races"] = ALLIANCE_ONLY,
							["sym"] = {{"select","garrisonbuildingID",132},{"pop"},
									{"where","headerID",VENDORS},{"pop"},
									{"isnt","npcID"}},	-- Gem Boutique / Vendor
						}),
						n(79832, {	-- Dorogarr <Jewelcrafter>
							["races"] = HORDE_ONLY,
							["sym"] = {{"select","garrisonbuildingID",132},{"pop"},
									{"where","headerID",VENDORS},{"pop"},
									{"isnt","npcID"}},	-- Gem Boutique / Vendor
						}),
					}),
				}),
			}),
		})),
	})
);
