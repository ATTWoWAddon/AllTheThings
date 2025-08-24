----------------------------------------------
--   P E T    B A T T L E    M O D U L E    --
----------------------------------------------
root(ROOTS.PetBattles, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	n(VENDORS, {
		--[[
		["crs"] = {
			85418,	-- Lio the Lioness <Battle Pet Master>
			79858,	-- Serr'ah <Battle Pet Master>
			-- #if AFTER BFA
			142065, -- Dana Pull
			131734,	-- Zununu the Undefeated <Pet Supplies>
			-- #if AFTER SL
			156769, -- Keeper Ta'hult <Pet Vendor>
			-- #if AFTER DF
			193029, -- Lysindra <Pet Supplies>
			-- #endif
			-- #endif
			-- #endif
		},
		["coords"] = {
			{ 29.2, 40.4, LUNARFALL },
			{ 32.6, 42.6, FROSTWALL },
			-- #if AFTER BFA
			{ 50.8, 46.0, BORALUS },
			{ 56.8, 34.6, DAZARALOR },
			-- #if AFTER SL
			{ 64.8, 67.6, ORIBOS },
			-- #if AFTER DF
			{ 48.2, 82.6, VALDRAKKEN },
			-- #endif
			-- #endif
			-- #endif
		},
		["groups"] = {
			i(86143, {	-- Battle Pet Bandage
				["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
			}),
			i(116429, {	-- Flawless Battle Training Stone
				["cost"] = { { "i", POLISHED_PET_CHARM, 3 } },
			}),
			i(98112, {	-- Lesser Pet Treat
				["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
			}),
			i(89906, {	-- Magical Mini-Treat
				["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
			}),
			i(98715, {	-- Marked Flawless Battle Stone
				["cost"] = { { "i", POLISHED_PET_CHARM, 15 } },
			}),
			i(120321, {	-- Mystery Bag
				["cost"] = { { "i", POLISHED_PET_CHARM, 2 } },
				["groups"] = {
					i(116424),	-- Aquatic Battle Training Stone
					i(116374),	-- Beast Battle Training Stone
					i(116418),	-- Critter Battle Training Stone
					i(116419),	-- Dragonkin Battle Training Stone
					i(116420),	-- Elemental Battle Training Stone
					i(116421),	-- Flying Battle Training Stone
					i(116416),	-- Humanoid Battle Training Stone
					i(116422),	-- Magic Battle Training Stone
					i(116417),	-- Mechanical Battle Training Stone
					i(116423),	-- Undead Battle Training Stone
				},
			}),
			i(98114, {	-- Pet Treat
				["cost"] = { { "i", POLISHED_PET_CHARM, 10 } },
			}),
			i(122457, {	-- Ultimate Battle-Training Stone
				["cost"] = { { "i", POLISHED_PET_CHARM, 35 } },
			}),
		},
		--]]
		n(98725, {	-- Lio the Lioness <Battle Pet Master>
			["coord"] = { 59.2, 39.6, LEGION_DALARAN },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				i(86143, {	-- Battle Pet Bandage
					["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
					["description"] = "You can also buy 25 Bandages for 5 Polished Pet Charms from most Battle Pet Vendors.",
				}),
				i(116429, {	-- Flawless Battle Training Stone
					["cost"] = { { "i", POLISHED_PET_CHARM, 3 } },
				}),
				i(98112, {	-- Lesser Pet Treat
					["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
				}),
				i(89906, {	-- Magical Mini-Treat
					["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
				}),
				i(98715, {	-- Marked Flawless Battle Stone
					["cost"] = { { "i", POLISHED_PET_CHARM, 15 } },
				}),
				i(120321, {	-- Mystery Bag
					["cost"] = { { "i", POLISHED_PET_CHARM, 2 } },
					["groups"] = {
						i(116424),	-- Aquatic Battle Training Stone
						i(116374),	-- Beast Battle Training Stone
						i(116418),	-- Critter Battle Training Stone
						i(116419),	-- Dragonkin Battle Training Stone
						i(116420),	-- Elemental Battle Training Stone
						i(116421),	-- Flying Battle Training Stone
						i(116416),	-- Humanoid Battle Training Stone
						i(116422),	-- Magic Battle Training Stone
						i(116417),	-- Mechanical Battle Training Stone
						i(116423),	-- Undead Battle Training Stone
					},
				}),
				i(98114, {	-- Pet Treat
					["cost"] = { { "i", POLISHED_PET_CHARM, 10 } },
				}),
				i(122457, {	-- Ultimate Battle-Training Stone
					["cost"] = { { "i", POLISHED_PET_CHARM, 35 } },
				}),
			},
		}),
		n(115287, {	-- Serr'ah <Battle Pet Master>
			["coord"] = { 58.6, 38.0, LEGION_DALARAN },
			["races"] = HORDE_ONLY,
			["groups"] = {
				i(86143, {	-- Battle Pet Bandage
					["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
					["description"] = "You can also buy 25 Bandages for 5 Polished Pet Charms from most Battle Pet Vendors.",
				}),
				i(116429, {	-- Flawless Battle Training Stone
					["cost"] = { { "i", POLISHED_PET_CHARM, 3 } },
				}),
				i(98112, {	-- Lesser Pet Treat
					["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
				}),
				i(89906, {	-- Magical Mini-Treat
					["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
				}),
				i(98715, {	-- Marked Flawless Battle Stone
					["cost"] = { { "i", POLISHED_PET_CHARM, 15 } },
				}),
				i(120321, {	-- Mystery Bag
					["cost"] = { { "i", POLISHED_PET_CHARM, 2 } },
					["groups"] = {
						i(116424),	-- Aquatic Battle Training Stone
						i(116374),	-- Beast Battle Training Stone
						i(116418),	-- Critter Battle Training Stone
						i(116419),	-- Dragonkin Battle Training Stone
						i(116420),	-- Elemental Battle Training Stone
						i(116421),	-- Flying Battle Training Stone
						i(116416),	-- Humanoid Battle Training Stone
						i(116422),	-- Magic Battle Training Stone
						i(116417),	-- Mechanical Battle Training Stone
						i(116423),	-- Undead Battle Training Stone
					},
				}),
				i(98114, {	-- Pet Treat
					["cost"] = { { "i", POLISHED_PET_CHARM, 10 } },
				}),
				i(122457, {	-- Ultimate Battle-Training Stone
					["cost"] = { { "i", POLISHED_PET_CHARM, 35 } },
				}),
			},
		}),
	}),
}));
