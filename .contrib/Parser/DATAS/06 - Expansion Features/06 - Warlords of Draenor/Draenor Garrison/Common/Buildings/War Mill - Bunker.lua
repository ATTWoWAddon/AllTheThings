-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(BUILDINGS, {
				garrisonBuilding(10, {	-- War Mill (rank 1: 8, rank 2: 9, rank 3: 10)
					n(QUESTS, {
						q(38175, {	-- Scrap Meltdown
							["provider"] = { "n", 77377 },	-- Kristen Stoneforge
							["races"] = ALLIANCE_ONLY,
							["isDaily"] = true,
							["groups"] = {
								i(120301),	-- Armor Enhancement Token
								i(120302),	-- Weapon Enhancement Token
							},
						}),
						q(38188, {	-- Scrap Meltdown
							["provider"] = { "n", 79815 },	-- Gun'lek
							["races"] = HORDE_ONLY,
							["isDaily"] = true,
							["groups"] = {
								i(120301),	-- Armor Enhancement Token
								i(120302),	-- Weapon Enhancement Token
							},
						}),
						q(37092, {	-- Scraps of Iron
							["provider"] = { "n", 77377 },	-- Kristen Stoneforge
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(118365),	-- Stormwind Tabard
							},
						}),
						q(37043, {	-- Scraps of Iron
							["provider"] = { "n", 79815 },	-- Gun'lek
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(118372),	-- Orgrimmar Tabard
							},
						}),
					}),
					n(VENDORS, {
						n(77377, {	-- Kristen Stoneforge <Quartermaster>
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(113807, {	-- Blackrock Chestplate
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(113808, {	-- Blackrock Gauntlets
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113805, {	-- Blackrock Girth
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113822, 1 },					-- Ravaged Iron Horde Belt
									},
								}),
								i(113809, {	-- Blackrock Greathelm
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113821, 1 },					-- Battered Iron Horde Helmet
									},
								}),
								i(113806, {	-- Blackrock Greaves
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113810, {	-- Blackrock Legplates
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(113811, {	-- Blackrock Pauldrons
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113823, 1 },					-- Crusted Iron Horde Pauldrons
									},
								}),
								i(113812, {	-- Blackrock Wristguards
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113804, {	-- Shadowmoon Bracers
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113801, {	-- Shadowmoon Cowl
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113821, 1 },					-- Battered Iron Horde Helmet
									},
								}),
								i(113800, {	-- Shadowmoon Grips
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113802, {	-- Shadowmoon Leggings
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(113799, {	-- Shadowmoon Robes
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(113797, {	-- Shadowmoon Sash
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113822, 1 },					-- Ravaged Iron Horde Belt
									},
								}),
								i(113803, {	-- Shadowmoon Shoulderguards
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113823, 1 },					-- Crusted Iron Horde Pauldrons
									},
								}),
								i(113798, {	-- Shadowmoon Treads
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(117410, {	-- Stormwind Belt
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113822, 1 },					-- Ravaged Iron Horde Belt
									},
								}),
								i(117412, {	-- Stormwind Boots
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(117408, {	-- Stormwind Chestguard
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(117409, {	-- Stormwind Grips
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(117406, {	-- Stormwind Helm
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113821, 1 },					-- Battered Iron Horde Helmet
									},
								}),
								i(117411, {	-- Stormwind Leggings
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(117413, {	-- Stormwind Shield
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(117407, {	-- Stormwind Shoulderguards
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113823, 1 },					-- Crusted Iron Horde Pauldrons
									},
								}),
								i(113796, {	-- Thunderlord Bracers
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113791, {	-- Thunderlord Chestguard
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(113789, {	-- Thunderlord Girdle
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113822, 1 },					-- Ravaged Iron Horde Belt
									},
								}),
								i(113792, {	-- Thunderlord Gloves
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113793, {	-- Thunderlord Helm
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113821, 1 },					-- Battered Iron Horde Helmet
									},
								}),
								i(113794, {	-- Thunderlord Leggings
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(113790, {	-- Thunderlord Sabatons
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113795, {	-- Thunderlord Shoulderguards
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113823, 1 },					-- Crusted Iron Horde Pauldrons
									},
								}),
								i(113814, {	-- Warsong Boots
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113820, {	-- Warsong Bracers
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113813, {	-- Warsong Cord
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113822, 1 },					-- Ravaged Iron Horde Belt
									},
								}),
								i(113816, {	-- Warsong Gloves
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113817, {	-- Warsong Hood
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113821, 1 },					-- Battered Iron Horde Helmet
									},
								}),
								i(113818, {	-- Warsong Leggings
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(113819, {	-- Warsong Spaulders
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113823, 1 },					-- Crusted Iron Horde Pauldrons
									},
								}),
								i(113815, {	-- Warsong Wraps
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
							},
						}),
						n(79815, {	-- Grun'lek - Quartermaster	-- War Mill
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(113807, {	-- Blackrock Chestplate
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(113808, {	-- Blackrock Gauntlets
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113805, {	-- Blackrock Girth
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113822, 1 },					-- Ravaged Iron Horde Belt
									},
								}),
								i(113809, {	-- Blackrock Greathelm
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113821, 1 },					-- Battered Iron Horde Helmet
									},
								}),
								i(113806, {	-- Blackrock Greaves
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113810, {	-- Blackrock Legplates
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(113811, {	-- Blackrock Pauldrons
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113823, 1 },					-- Crusted Iron Horde Pauldrons
									},
								}),
								i(113812, {	-- Blackrock Wristguards
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(118400, {	-- Orgrimmar Axe
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(118369, {	-- Orgrimmar Belt
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113822, 1 },					-- Ravaged Iron Horde Belt
									},
								}),
								i(118371, {	-- Orgrimmar Boots
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(118367, {	-- Orgrimmar Chestguard
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(118368, {	-- Orgrimmar Gloves
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(118370, {	-- Orgrimmar Leggings
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(118366, {	-- Orgrimmar Spaulders
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113823, 1 },					-- Crusted Iron Horde Pauldrons
									},
								}),
								i(113804, {	-- Shadowmoon Bracers
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113801, {	-- Shadowmoon Cowl
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113821, 1 },					-- Battered Iron Horde Helmet
									},
								}),
								i(113800, {	-- Shadowmoon Grips
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113802, {	-- Shadowmoon Leggings
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(113799, {	-- Shadowmoon Robes
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(113797, {	-- Shadowmoon Sash
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113822, 1 },					-- Ravaged Iron Horde Belt
									},
								}),
								i(113803, {	-- Shadowmoon Shoulderguards
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113823, 1 },					-- Crusted Iron Horde Pauldrons
									},
								}),
								i(113798, {	-- Shadowmoon Treads
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113796, {	-- Thunderlord Bracers
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113791, {	-- Thunderlord Chestguard
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(113789, {	-- Thunderlord Girdle
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113822, 1 },					-- Ravaged Iron Horde Belt
									},
								}),
								i(113792, {	-- Thunderlord Gloves
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113793, {	-- Thunderlord Helm
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113821, 1 },					-- Battered Iron Horde Helmet
									},
								}),
								i(113794, {	-- Thunderlord Leggings
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(113790, {	-- Thunderlord Sabatons
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113795, {	-- Thunderlord Shoulderguards
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113823, 1 },					-- Crusted Iron Horde Pauldrons
									},
								}),
								i(113814, {	-- Warsong Boots
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113820, {	-- Warsong Bracers
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113813, {	-- Warsong Cord
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113822, 1 },					-- Ravaged Iron Horde Belt
									},
								}),
								i(113816, {	-- Warsong Gloves
									["cost"] = { { "i", 113681, 50 }, },	-- 50x Iron Horde Scraps
								}),
								i(113817, {	-- Warsong Hood
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113821, 1 },					-- Battered Iron Horde Helmet
									},
								}),
								i(113818, {	-- Warsong Leggings
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
								i(113819, {	-- Warsong Spaulders
									["cost"] = {
										{ "i", 113681, 50 },				-- 50x Iron Horde Scraps
										{ "i", 113823, 1 },					-- Crusted Iron Horde Pauldrons
									},
								}),
								i(113815, {	-- Warsong Wraps
									["cost"] = { { "i", 113681, 80 }, },	-- 80x Iron Horde Scraps
								}),
							},
						}),
					}),
				}),
			}),
		})),
	})
);

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	n(GARRISONS, {
		n(BUILDINGS, {	-- Buildings
			garrisonBuilding(10, {	-- War Mill / Bunker
				q(36058),	-- Seal of Tempered Fate: Armory
			}),
		}),
	}),
})));
