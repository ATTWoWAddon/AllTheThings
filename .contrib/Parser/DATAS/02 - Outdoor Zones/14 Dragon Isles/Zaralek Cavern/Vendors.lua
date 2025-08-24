---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local COVETED_BAUBLE = 204727;
local UNEARTHED_FRAGRANT_COIN = 204715;
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	m(ZARALEK_CAVERN, {
		n(VENDORS, {
			n(203301, {	-- Bottles <Food and Drink>
				["coord"] = {  58.1, 55.1, ZARALEK_CAVERN },
				["groups"] = {
					i(205417),	-- Fungishine
				},
			}),
			n(204373, {	-- Cenka <Resourceful Chef>
				i(205794),	-- Beetle Juice
				i(205793),	-- Skitter Souf-fly
			}),
			n(201004, {	-- Explorer Bezzert <Intrepid Pet Trainer>
				["coord"] = { 52.4, 66.0, ZARALEK_CAVERN },
				["groups"] = {
					i(205052, {	-- Miloh (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 2500 } },
					}),
				},
			}),
			n(203293, {	-- Floressa <Innkeeper>
				["coord"] = { 56.2, 56.3, ZARALEK_CAVERN },
				["groups"] = {
					i(204729),	-- Freshly Squeezed Mosswater
					i(204730),	-- Grub Grub
					i(204791),	-- Squishy Snack
					i(204790),	-- Strong Sniffin' Soup Niffen
				},
			}),
			n(204860, {	-- Lyssa
				["coord"] = { 56.8, 56.4, ZARALEK_CAVERN },
				["groups"] = {
					i(204728),	-- Friendship Censer
					i(205936),	-- New Niffen No-Sniffin' Tonic (TOY!)
				},
			}),
			n(205676, bubbleDown({ ["timeline"] = { REMOVED_11_0_0 } }, {	-- Norzko the Proud
				["coord"] = { 52.0, 25.6, ZARALEK_CAVERN },
				["groups"] = bubbleDownFiltered({
					["cost"] = {{ "i", 204843, 1 }},	-- Draconic Mark of Mastery
					["bonusID"] = 7532,
				},FILTERFUNC_itemID,{
					cl(DEATHKNIGHT, {
						i(205810),	-- Lingering Phantom's Dreadhorns
						i(205811),	-- Lingering Phantom's Gauntlets
						i(205812),	-- Lingering Phantom's Plackart
						i(205809),	-- Lingering Phantom's Schynbalds
						i(205808),	-- Lingering Phantom's Shoulderplates
					}),
					cl(DEMONHUNTER, {
						i(205846),	-- Kinslayer's Bloodstained Grips
						i(205845),	-- Kinslayer's Hood
						i(205844),	-- Kinslayer's Legguards
						i(205843),	-- Kinslayer's Tainted Spaulders
						i(205847),	-- Kinslayer's Vest
					}),
					cl(DRUID, {
						i(205840),	-- Bough of the Autumn Blaze
						i(205842),	-- Chestroots of the Autumn Blaze
						i(205841),	-- Handguards of the Autumn Blaze
						i(205838),	-- Mantle of the Autumn Blaze
						i(205839),	-- Pants of the Autumn Blaze
					}),
					cl(EVOKER, {
						i(205824),	-- Chausses of Obsidian Secrets
						i(205826),	-- Claws of Obsidian Secrets
						i(205825),	-- Crown of Obsidian Secrets
						i(205827),	-- Hauberk of Obsidian Secrets
						i(205823),	-- Wingspan of Obsidian Secrets
					}),
					cl(HUNTER, {
						i(205820),	-- Ashen Predator's Faceguard
						i(205819),	-- Ashen Predator's Poleyns
						i(205821),	-- Ashen Predator's Skinners
						i(205822),	-- Ashen Predator's Sling Vest
						i(205818),	-- Ashen Predator's Trophy
					}),
					cl(MAGE, {
						i(205860),	-- Underlight Conjurer's Arcanocowl
						i(205858),	-- Underlight Conjurer's Aurora
						i(205861),	-- Underlight Conjurer's Gloves
						i(205859),	-- Underlight Conjurer's Trousers
						i(205862),	-- Underlight Conjurer's Vestment
					}),
					cl(MONK, {
						i(205835),	-- Cover of the Vermillion Forge
						i(205837),	-- Cuirass of the Vermillion Forge
						i(205836),	-- Fists of the Vermillion Forge
						i(205834),	-- Pantaloons of the Vermillion Forge
						i(205833),	-- Spines of the Vermillion Forge
					}),
					cl(PALADIN, {
						i(205807),	-- Heartfire Sentinel's Brigandine
						i(205804),	-- Heartfire Sentinel's Faulds
						i(205805),	-- Heartfire Sentinel's Forgehelm
						i(205806),	-- Heartfire Sentinel's Protectors
						i(205803),	-- Heartfire Sentinel's Steelwings
					}),
					cl(PRIEST, {
						i(205854),	-- Breeches of the Furnace Seraph
						i(205857),	-- Command of the Furnace Seraph
						i(205853),	-- Devotion of the Furnace Seraph
						i(205856),	-- Grasp of the Furnace Seraph
						i(205855),	-- Mask of the Furnace Seraph
					}),
					cl(ROGUE, {
						i(205832),	-- Lurking Specter's Brigandine
						i(205831),	-- Lurking Specter's Handgrips
						i(205828),	-- Lurking Specter's Shoulderblades
						i(205829),	-- Lurking Specter's Tights
						i(205830),	-- Lurking Specter's Visage
					}),
					cl(SHAMAN, {
						i(205817),	-- Adornments of the Cinderwolf
						i(205814),	-- Braies of the Cinderwolf
						i(205816),	-- Knuckles of the Cinderwolf
						i(205815),	-- Spangenhelm of the Cinderwolf
						i(205813),	-- Thunderpads of the Cinderwolf
					}),
					cl(WARLOCK, {
						i(205848),	-- Amice of the Sinister Savant
						i(205852),	-- Cursed Robes of the Sinister Savant
						i(205850),	-- Grimhorns of the Sinister Savant
						i(205851),	-- Grips of the Sinister Savant
						i(205849),	-- Leggings of the Sinister Savant
					}),
					cl(WARRIOR, {
						i(205802),	-- Battlechest of the Onyx Crucible
						i(205801),	-- Handguards  of the Onyx Crucible
						i(205799),	-- Legplates of the Onyx Crucible
						i(205798),	-- Pauldrons of the Onyx Crucible
						i(205800),	-- Thraexhelm of the Onyx Crucible
					}),
				}),
			})),
			n(203615, {	-- Saccratros
				["coord"] = { 55.9, 55.4, ZARALEK_CAVERN },
				["groups"] = {
					i(205118, {	-- Diamondshell (PET!)
						["cost"] = { { "i", COVETED_BAUBLE, 50 } },
					}),
					i(205197, {	-- Igneous Shalewing (MOUNT!)
						["cost"] = { { "i", COVETED_BAUBLE, 400 } },
					}),
					i(191838, {	-- Subterranean Magmammoth (MOUNT!)
						["cost"] = { { "i", COVETED_BAUBLE, 100 } },
					}),
				},
			}),
			n(204371, {	-- Sniktak <Enterprising Mycologist>
				["groups"] = {
					i(205696),	-- Amethyst Deceiver Mushroom
					i(205417),	-- Fungishine
					i(205693),	-- Latticed Stinkhorn
					i(205692),	-- Stellaviatori Soup
				},
			}),
			n(203602, {	-- Spinsoa
				["coord"] = { 55.9, 55.5, ZARALEK_CAVERN },
				["groups"] = {
					i(204726, {	-- Drake's Bountiful Chest
						["questID"] = 75329,
						["isWeekly"] = true,
						["cost"] = { { "i", UNEARTHED_FRAGRANT_COIN, 15 } },
						["groups"] = {
							i(204076),	-- Drake's Shadowflame Crest Fragment x15
						}
					}),
					i(204725, {	-- Drake's Hefty Chest
						["questID"] = 75328,
						["isWeekly"] = true,
						["cost"] = { { "i", UNEARTHED_FRAGRANT_COIN, 10 } },
						["groups"] = {
							i(204076),	-- Drake's Shadowflame Crest Fragment x10
						}
					}),
					i(204724, {	-- Drake's Small Chest
						["questID"] = 75327,
						["isWeekly"] = true,
						["cost"] = { { "i", UNEARTHED_FRAGRANT_COIN, 5 } },
						["groups"] = {
							i(204076),	-- Drake's Shadowflame Crest Fragment x5
						}
					}),
					i(204722, {	-- Whelpling's Bountiful Chest
						["questID"] = 75323,
						["isWeekly"] = true,
						["cost"] = { { "i", UNEARTHED_FRAGRANT_COIN, 10 } },
						["groups"] = {
							i(204075),	-- Whelpling's Shadowflame Crest Fragment x15
						}
					}),
					i(204723, {	-- Whelpling's Hefty Chest
						["questID"] = 75324,
						["isWeekly"] = true,
						["cost"] = { { "i", UNEARTHED_FRAGRANT_COIN, 4 } },
						["groups"] = {
							i(204075),	-- Whelpling's Shadowflame Crest Fragment x10
						}
					}),
					i(204721, {	-- Whelpling's Small Chest
						["questID"] = 75306,
						["isWeekly"] = true,
						["cost"] = { { "i", UNEARTHED_FRAGRANT_COIN, 2 } },
						["groups"] = {
							i(204075),	-- Whelpling's Shadowflame Crest Fragment x5
						}
					}),
					i(COVETED_BAUBLE, {
						["cost"] = { { "i", UNEARTHED_FRAGRANT_COIN, 1 } },
					}),
					i(206270, {	-- Volcanic Equipment Chest
						["cost"] = {{ "c", 2245, 250 }},
						["timeline"] = { ADDED_10_1_5, REMOVED_10_2_0 },
					}),
				},
			}),
		}),
	}),
})));
