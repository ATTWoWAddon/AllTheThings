---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(BROKEN_ISLES, {
	m(STORMHEIM, {
		n(VENDORS, {
			n(98367, {	-- Tigrid the Charmer <Enchantress>
				["coord"] = { 39.4, 42.6, STORMHEIM },
				["groups"] = sharedData({ ["cost"] = { { "i", 124440, 50 }, }, ["sourceQuest"] = 39904 }, {	-- 50xArkhana, Halls of Valor: Revenge of the Enchantress
					i(128617),	-- Formula: Enchant Gloves - Legion Herbalism (RECIPE!)
					i(128618),	-- Formula: Enchant Gloves - Legion Mining (RECIPE!)
					i(128619),	-- Formula: Enchant Gloves - Legion Skinning (RECIPE!)
					i(128620),	-- Formula: Enchant Gloves - Legion Surveying (RECIPE!)
					i(128621),	-- Formula: Enchanted Cauldron (RECIPE!)
					i(128622),	-- Formula: Enchanted Torch (RECIPE!)
				}),
			}),
			n(90866, {	-- Tinkmaster Overspark <Chief Architect of Gnomish Engineering>
				["coord"] = { 33.6, 50.8, STORMHEIM },
				["groups"] = {
					i(23799, {	-- Schematic: Adamantite Rifle (RECIPE!)
						["isLimited"] = true,
					}),
					i(23807, {	-- Schematic: Adamantite Scope (RECIPE!)
						["isLimited"] = true,
					}),
					i(23803, {	-- Schematic: Cogspinner Goggles (RECIPE!)
						["isLimited"] = true,
					}),
					i(23816, {	-- Schematic: Fel Iron Toolbox (RECIPE!)
						["isLimited"] = true,
					}),
					i(23805, {	-- Schematic: Ultra-Spectropic Detection Goggles (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(106904, {	-- Valdemar Stormseeker <Valarjar Emissary>
				["coord"] = { 60.2, 51.2, STORMHEIM },
				["groups"] = bubbleDownClassicRep(FACTION_VALAJAR, {
					{		-- Neutral
					}, {	-- Friendly
					}, {	-- Honored
						i(129367),	-- Vrykul Toy Boat Kit (TOY!)
						i(137915, {	-- Pattern: Battlebound Hauberk [Rank 3] (RECIPE!)
							["cost"] = 5500000,	-- 550g
						}),
						i(137910, {	-- Pattern: Battlebound Warhelm [Rank 3] (RECIPE!)
							["cost"] = 5500000,	-- 550g
						}),
						i(136698, {	-- Plans: Consecrated Spike (RECIPE!)
							["cost"] = 5500000,	-- 550g
						}),
						i(140743, {	-- Treasure Map: Stormheim
							["filterID"] = CONSUMABLES,
						}),
					}, {	-- Revered
						i(140225, {	-- Boon of the Salvager
							["cost"] = 1275000,	-- 127,5g
							["groups"] = {
								i(140225),	-- Salvaged Armor
							},
						}),
						i(129149, {	-- Death's Door Charm (TOY!)
							["cost"] = 5000000,	-- 500g
						}),
						i(139602, {	-- Valarjar Runepriest's Vesture
							["cost"] = 10000000,	-- 1,000g
						}),
						i(136920, {	-- Sunborne Val'kyr (PET!)
							["cost"] = 5000000,	-- 500g
						}),
					}, {	-- Exalted
						i(139598, {	-- Legplates of Forgotten Myth
							["cost"] = 50000000,	-- 5,000g
						}),
						i(137927, {	-- Pattern: Gravenscale Leggings [Rank 3] (RECIPE!)
							["cost"] = 30000000,	-- 3,000g
						}),
						i(137928, {	-- Pattern: Gravenscale Warhelm [Rank 3] (RECIPE!)
							["cost"] = 30000000,	-- 3,000g
						}),
						i(123954, {	-- Plans: Demonsteel Boots [Rank 3] (RECIPE!)
							["cost"] = 30000000,	-- 3,000g
						}),
						i(123951, {	-- Plans: Demonsteel Greaves [Rank 3] (RECIPE!)
							["cost"] = 30000000,	-- 3,000g
						}),
						i(123952, {	-- Plans: Demonsteel Helm [Rank 3] (RECIPE!)
							["cost"] = 30000000,	-- 3,000g
						}),
						i(140656, {	-- Rod of the Ascended - Priest Artifact Appearance item
							["cost"] = 20000000,	-- 2,000g
						}),
						i(140579),	-- Valarjar Tabard
					},
				}),
			}),
		}),
	}),
}));
