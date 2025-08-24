---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(SURAMAR, {
			n(VENDORS, {
				n(115710, {	-- Chief Telemancer Oculeth
					["coord"] = { 37.0, 46.6, SURAMAR },
					["groups"] = {
						i(140324),	-- Mobile Telemancy Beacon (TOY!)
					},
				}),
				n(112064, {	-- Dolse Shimmersong <Souvenirs>
					["coord"] = { 51.2, 49.8, SURAMAR },
					["groups"] = {
						--[[ No use yet, potential pets/toys?
						i(140670),	-- Souvenir Elekk
						i(141205),	-- Souvenir Murloc
						i(140671),	-- Souvenir Raptor
						--]]
						i(130151, {	-- The "Devilsaur" Lunchbox (TOY!)
							["cost"] = { { "c", 1155, 1000 }, },	-- 1,000x Ancient Mana
						}),
					},
				}),
				n(115736, {	-- First Arcanist Thalyssra
					["coord"] = { 36.4, 46.8, SURAMAR },
					["groups"] = bubbleDownClassicRep(FACTION_THE_NIGHTFALLEN, {
						{		-- Neutral
						}, {	-- Friendly
							i(139979, {	-- Footpads of the Nightrunners
								["cost"] = 5000000,	-- 500g
							}),
							i(121738, {	-- Irongrove Refugee Boots
								["cost"] = 5000000,	-- 500g
							}),
							i(121736, {	-- Nightfall Slipeprs
								["cost"] = 5000000,	-- 500g
							}),
							i(140015, {	-- Scavenged Felsoul Sabatons
								["cost"] = 5000000,	-- 500g
							}),
						}, {	-- Honored
							i(139683, {	-- Battlelord's Gauntlets
								["classes"] = { WARRIOR },
								["cost"] = 5000000,	-- 500g
							}),
							i(140218, {	-- Boon of the Manaseeker
								["cost"] = 1000000,	-- 100g
								["groups"] = {
									i(140226),	-- Mana-Tinged Pack
								},
							}),
							i(139600, {	-- Braided Manastring Cinch
								["cost"] = 10000000,	-- 1,000g
							}),
							i(139675, {	-- Deathlord's Gauntlets
								["classes"] = { DEATHKNIGHT },
								["cost"] = 5000000,	-- 500g
							}),
							i(139700, {	-- Farseer's Gauntlets
								["classes"] = { SHAMAN },
								["cost"] = 5000000,	-- 500g
							}),
							i(139692, {	-- Gauntlets of the Silver Hand
								["classes"] = { PALADIN },
								["cost"] = 5000000,	-- 500g
							}),
							i(139764, {	-- Gloves of the Black Harvest
								["classes"] = { WARLOCK },
								["cost"] = 5000000,	-- 500g
							}),
							i(139725, {	-- Gloves of the Dreamgrove
								["classes"] = { DRUID },
								["cost"] = 5000000,	-- 500g
							}),
							i(139756, {	-- Gloves of the High Priest
								["classes"] = { PRIEST },
								["cost"] = 5000000,	-- 500g
							}),
							i(139717, {	-- Gloves of the Shattered Abyss
								["classes"] = { DEMONHUNTER },
								["cost"] = 5000000,	-- 500g
							}),
							i(139741, {	-- Gloves of the Uncrowned
								["classes"] = { ROGUE },
								["cost"] = 5000000,	-- 500g
							}),
							i(139748, {	-- Gloves of Tirisgarde
								["classes"] = { MAGE },
								["cost"] = 5000000,	-- 500g
							}),
							i(139733, {	-- Grandmaster's Palms
								["classes"] = { MONK },
								["cost"] = 5000000,	-- 500g
							}),
							i(139709, {	-- Grips of the Unseen Path
								["classes"] = { HUNTER },
								["cost"] = 5000000,	-- 500g
							}),
							i(140324),	-- Mobile Telemancy Beacon (TOY!)
							i(140746, {	-- Treasure Map: Suramar
								["filterID"] = CONSUMABLES,
							}),
						}, {	-- Revered
							i(136899, {	-- Extinguished Eye (PET!)
								["cost"] = 5000000,	-- 500g
							}),
							i(140325, {	-- Home Made Party Mask (TOY!)
								["cost"] = 5000000,	-- 500g
							}),
							i(139604, {	-- Mana-Soaked Amethyst Pendant
								["cost"] = 50000000,	-- 5,000g
							}),
							i(142120, {	-- Recipe: Potion of Prolonged Power [Rank 2] (RECIPE!)
								["cost"] = 20000000,	-- 2,000g
								["timeline"] = { ADDED_7_1_0 },
							}),
						}, {	-- Exalted
							i(139768, {	-- Amice of the Black Harvest
								["classes"] = { WARLOCK },
								["cost"] = 5000000,	-- 500g
							}),
							i(139728, {	-- Amice of the Dreamgrove
								["classes"] = { DRUID },
								["cost"] = 5000000,	-- 500g
							}),
							i(139686, {	-- Battlelord's Pauldrons
								["classes"] = { WARRIOR },
								["cost"] = 5000000,	-- 500g
							}),
							i(139678, {	-- Deathlord's Mantle
								["classes"] = { DEATHKNIGHT },
								["cost"] = 5000000,	-- 500g
							}),
							i(137850, {	-- Design: Subtle Shadowruby Pendant [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(139703, {	-- Farseer's Shoulderguards
								["classes"] = { SHAMAN },
								["cost"] = 5000000,	-- 500g
							}),
							i(128609, {	-- Formula: Enchant Cloak - Binding of Intellect [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(128600, {	-- Formula: Enchant Ring - Binding of Critical Strike [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(128602, {	-- Formula: Enchant Ring - Binding of Mastery [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(128603, {	-- Formula: Enchant Ring - Binding of Versatility [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(139736, {	-- Grandmaster's Shoulderguards
								["classes"] = { MONK },
								["cost"] = 5000000,	-- 500g
							}),
							i(139752, {	-- Mantle of Tirisgarde
								["classes"] = { MAGE },
								["cost"] = 5000000,	-- 500g
							}),
							i(140575),	-- Nightfallen Tabard
							i(137973, {	-- Pattern: Imbued Silkweave Bracers [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(137976, {	-- Pattern: Imbued Silkweave Pantaloons [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(137979, {	-- Pattern: Imbued Silkweave Slippers [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(139744, {	-- Shoulderblades of the Uncrowned
								["classes"] = { ROGUE },
								["cost"] = 5000000,	-- 500g
							}),
							i(139760, {	-- Spaulders of the High Priest
								["classes"] = { PRIEST },
								["cost"] = 5000000,	-- 500g
							}),
							i(139720, {	-- Spaulders of the Shattered Abyss
								["classes"] = { DEMONHUNTER },
								["cost"] = 5000000,	-- 500g
							}),
							i(139695, {	-- Spaulders of the Silver Hand
								["classes"] = { PALADIN },
								["cost"] = 5000000,	-- 500g
							}),
							i(139712, {	-- Spaulders of the Unseeen Path
								["classes"] = { ROGUE },
								["cost"] = 5000000,	-- 500g
							}),
						},
					}),
				}),
				n(107467, {	-- Jacin
					["coord"] = { 49.0, 81.6, SURAMAR },
					["groups"] = {
						i(137467),	-- Shimmerfield Crystal
					},
				}),
				n(113843, {	-- Kieule <Souvenirs>
					["coord"] = { 50.4, 53.0, SURAMAR },
					["groups"] = {
						--[[ No use yet, potential pets/toys?
						i(140670),	-- Souvenir Elekk
						i(140671),	-- Souvenir Raptor
						--]]
						i(130151, {	-- The "Devilsaur" Lunchbox (TOY!)
							["cost"] = { { "c", 1155, 1000 }, },	-- 1,000x Ancient Mana
						}),
					},
				}),
				n(93971, {	-- Leyweaver Inondra
					["coord"] = { 40.2, 69.6, SURAMAR },
					["groups"] = {
						i(127277, {	-- Imbued Silkweave Cover [Rank 1] (RECIPE!)
							["cost"] = { { "i", 124437, 100 }, },	-- 100x Shal'dorei Silk
						}),
						i(127278, {	-- Imbued Silkweave Drape [Rank 1] (RECIPE!)
							["cost"] = { { "i", 124437, 100 }, },	-- 100x Shal'dorei Silk
						}),
						i(127280, {	-- Imbued Silkweave Flourish [Rank 1] (RECIPE!)
							["cost"] = { { "i", 124437, 100 }, },	-- 100x Shal'dorei Silk
						}),
						i(127279, {	-- Imbued Silkweave Shade [Rank 1] (RECIPE!)
							["cost"] = { { "i", 124437, 100 }, },	-- 100x Shal'dorei Silk
						}),
					},
				}),
				n(93979, {	-- Leyweaver Jorjana
					["coord"] = { 49.4, 75.8, SURAMAR },
					["groups"] = {
						i(127025, {	-- Imbued Silkweave Hood [Rank 1] (RECIPE!)
							["cost"] = { { "i", 124437, 100 }, },	-- 100x Shal'dorei Silk
						}),
					},
				}),
				n(112226, {	-- Markus Hjolbruk
					["coord"] = { 71.6, 48.8, SURAMAR },
					["groups"] = {
						i(133819),	-- Recipe: Koi-Scented Stormray [Rank 1] (RECIPE!)
					},
				}),
				n(112059, {	-- Sasunne Dameuse <Souvenirs>
					["coord"] = { 51.2, 50.0, SURAMAR },
					["groups"] = {
						--[[ No use yet, potential pets/toys?
						i(140670),	-- Souvenir Elekk
						i(141205),	-- Souvenir Murloc
						i(140671),	-- Souvenir Raptor
						--]]
						i(130151, {	-- The "Devilsaur" Lunchbox (TOY!)
							["cost"] = { { "c", 1155, 1000 }, },	-- 1,000x Ancient Mana
						}),
					},
				}),
				n(98969, {	-- Stalriss Dawnrunner <Leatherworking Trainer>
					["coord"] = { 26.6, 71.6, SURAMAR },
					["groups"] = {
						i(140637, {	-- Pattern: Dreadleather Belt [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 124113, 20 },	-- 20x Stonehide Leather
								{ "i", 124439, 20 },	-- 20x Unbroken Tooth
							},
						}),
						i(140642, {	-- Pattern: Dreadleather Footpads [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 124113, 20 },	-- 20x Stonehide Leather
								{ "i", 124438, 20 },	-- 20x Unbroken Claw
							},
						}),
						i(140641, {	-- Pattern: Dreadleather Gloves [Rank 1] (RECIPE!)
							["cost"] = { { "i", 124113, 100 }, },	-- 100x Stonehide Leather
						}),
						i(140643, {	-- Pattern: Dreadleather Jerkin [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 124113, 20 },	-- 20x Stonehide Leather
								{ "i", 123918, 20 },	-- 20x Leystone Ore
							},
						}),
						i(140640, {	-- Pattern: Dreadleather Mask [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 124113, 20 },	-- 20x Stonehide Leather
								{ "i", 130180, 5 },		-- 5x  Dawnlight
							},
						}),
						i(140639, {	-- Pattern: Dreadleather Pants [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 124113, 20 },	-- 20x Stonehide Leather
								{ "i", 124437, 20 },	-- 20x Shal'dorei Silk
							},
						}),
						i(140638, {	-- Pattern: Dreadleather Shoulderguard [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 124113, 20 },	-- 20x Stonehide Leather
								{ "i", 124440, 20 },	-- 20x Arkhana
							},
						}),
						i(140645, {	-- Pattern: Gravenscale Girdle [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 124115, 20 },	-- 20x Stormscale
								{ "i", 124439, 20 },	-- 20x Unbroken Tooth
							},
						}),
						i(140649, {	-- Pattern: Gravenscale Grips [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 124115, 20 },	-- 20x Stormscale
								{ "i", 124113, 20 },	-- 20x Stonehide Leather
							},
						}),
						i(140651, {	-- Pattern: Gravenscale Hauberk [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 124115, 20 },	-- 20x Stormscale
								{ "i", 123918, 20 },	-- 20x Leystone Ore
							},
						}),
						i(140647, {	-- Pattern: Gravenscale Leggings [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 124115, 20 },	-- 20x Stormscale
								{ "i", 124437, 20 },	-- 20x Shal'dorei Silk
							},
						}),
						i(140646, {	-- Pattern: Gravenscale Spaulders [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 124115, 20 },	-- 20x Stormscale
								{ "i", 124440, 20 },	-- 20x Arkhana
							},
						}),
						i(140650, {	-- Pattern: Gravenscale Treads [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 124115, 20 },	-- 20x Stormscale
								{ "i", 124438, 20 },	-- 20x Unbroken Claw
							},
						}),
						i(140648, {	-- Pattern: Gravenscale Warhelm [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 124115, 20 },	-- 20x Stormscale
								{ "i", 130182, 5 },		-- 5x  Maelstrom Sapphire
							},
						}),
					},
				}),
				n(109562, {	-- Sundries Merchant
					["coord"] = { 50.0, 77.3, SURAMAR },
					["description"] = "You must complete the Suramar quest chain starting with |cffffff00Magic Message|r up to completing |cffffff00Masquerade|r in order to interact with this merchant.",
					["groups"] = {
						i(147768, {	-- Suramarian Sapphire (QI!)
							["b"] = 1,	-- Force BoP since this is only available as a quest item
							["classes"] = { PALADIN },
							["cost"] = {
								{ "c", 1155, 500 },	-- 500x Ancient Mana
							},
						}),
					},
				}),
				n(92265, {	-- Urael <Nal'ryssa's Minion>
					["coord"] = { 30.0, 53.2, SURAMAR },
					["groups"] = {
						i(123920, {	-- Plans: Demonsteel Armguards [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 123919, 20 },	-- 20x Felslate
								{ "i", 124115, 20 },	-- 20x Stormscale
							},
						}),
						i(123926, {	-- Plans: Demonsteel Boots [Rank 1] (RECIPE!)
								["cost"] = {
								{ "i", 123919, 20 },	-- 20x Felslate
								{ "i", 124438, 20 },	-- 20x Unbroken Claw
							},
						}),
						i(123927, {	-- Plans: Demonsteel Breastplate [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 123919, 20 },	-- 20x Felslate
								{ "i", 123918, 20 },	-- 20x Leystone Ore
							},
						}),
						i(123925, {	-- Plans: Demonsteel Gauntlets [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 123919, 20 },	-- 20x Felslate
								{ "i", 124113, 20 },	-- 20x Stonehide Leather
							},
						}),
						i(123923, {	-- Plans: Demonsteel Greaves [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 123919, 20 },	-- 20x Felslate
								{ "i", 124437, 20 },	-- 20x Shal'dorei Silk
							},
						}),
						i(123924, {	-- Plans: Demonsteel Helm [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 123919, 20 },	-- 20x Felslate
								{ "i", 130179, 5 },		-- 5x Eye of Prophecy
							},
						}),
						i(123922, {	-- Plans: Demonsteel Pauldrons [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 123919, 20 },	-- 20x Felslate
								{ "i", 124440, 20 },	-- 20x Arkhana
							},
						}),
						i(123921, {	-- Plans: Demonsteel Waistguard [Rank 1] (RECIPE!)
							["cost"] = {
								{ "i", 123919, 20 },	-- 20x Felslate
								{ "i", 124439, 20 },	-- 20x Unbroken Tooth
							},
						}),
					},
				}),
			}),
		}),
	}),
});
