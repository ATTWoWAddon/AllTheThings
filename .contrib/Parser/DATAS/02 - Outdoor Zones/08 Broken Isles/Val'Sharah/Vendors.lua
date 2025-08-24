---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(BROKEN_ISLES, bubbleDown({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	m(VALSHARAH, {
		n(VENDORS, {
			n(93974, {	-- Leyweaver Erenyi
				["coord"] = { 70.4, 46.6, VALSHARAH },
				["groups"] = {
					i(127022, {	-- Pattern: Imbued Silkweave Cinch [Rank 1] (RECIPE!)
						["cost"] = { { "i", 124437, 100 }, },	-- 100x Shal'dorei Silk
					}),
				},
			}),
			n(106901, {	-- Sylvia Hartshorn <Dreamweaver Emissary>
				["coord"] = { 54.6, 73.2, VALSHARAH },
				["groups"] = bubbleDownClassicRep(FACTION_THE_DREAMWEAVERS, {
					{		-- Neutral
					}, {	-- Friendly
						i(130158, {	-- Path of Elothir (TOY!)
							["cost"] = 1000000,	-- 100g
						}),
					}, {	-- Honored
						i(140214, {	-- Boon of the Harvester
							["cost"] = 800000,	-- 80
							["groups"] = {
								i(140222),	-- Harvested Goods
							},
						}),
						i(128599, {	-- Formula: Enchant Ring - Word of Versatility [Rank 3] (RECIPE!)
							["cost"] = 5500000,	-- 550g
						}),
						i(137883, {	-- Pattern: Warhide Jerkin [Rank 3] (RECIPE!)
							["cost"] = 5500000,	-- 550g
						}),
						i(130170, {	-- Tear of the Green Aspect (TOY!)
							["cost"] = 3000000,	-- 300g
						}),
						i(187932, {	-- Technique: Mark of the Duskwing Raven (RECIPE!)
							["cost"] = 5500000,	-- 550g
							["timeline"] = { ADDED_9_1_5 },
						}),
						i(140745, {	-- Treasure Map: Val'sharah
							["cost"] = 200000,	-- 20g
						}),
					}, {	-- Revered
						i(23712, {	-- Ash'ana (PET!)
							["cost"] = 5000000,	-- 500g
						}),
						i(130232, {	-- Moonfeather Statue (TOY!)
							["cost"] = 5000000,	-- 500g
						}),
						i(139605, {	-- Pendant of the Moon Temple
							["cost"] = 10000000,	-- 1,000g
						}),
					}, {	-- Exalted
						i(140578, {	-- Dreamweaver Initiate's Tabard
							["cost"] = 3000000,	-- 300g
						}),
						i(128608, {	-- Formula: Enchant Cloak - Binding of Agility [Rank 3] (RECIPE!)
							["cost"] = 30000000,	-- 3,000g
						}),
						i(128593, {	-- Formula: Enchant Neck - Mark of the Claw [Rank 2] (RECIPE!)
							["cost"] = 15000000,	-- 1,500g
						}),
						i(128601, {	-- Formula: Enchant Ring - Binding of Haste [Rank 3] (RECIPE!)
							["cost"] = 30000000,	-- 3,000g
						}),
						i(137898, {	-- Pattern: Dreadleather Footpads [Rank 3] (RECIPE!)
							["cost"] = 30000000,	-- 3,000g
						}),
						i(137896, {	-- Pattern: Dreadleather Mask [Rank 3] (RECIPE!)
							["cost"] = 30000000,	-- 3,000g
						}),
						i(137895, {	-- Pattern: Dreadleather Pants [Rank 3] (RECIPE!)
							["cost"] = 30000000,	-- 3,000g
						}),
						i(139596, {	-- Pauldrons of Entwined Roots
							["cost"] = 50000000,	-- 5,000g
						}),
						i(140652, {	-- Seed of Solar Fire - Druid Artifact Skin
							["cost"] = 20000000,	-- 2,000g
						}),
						i(140667, {	-- Tabard of the Dreamweavers
							["cost"] = 6000000,	-- 600g
						}),
					},
				}),
			}),
		}),
	}),
})));
