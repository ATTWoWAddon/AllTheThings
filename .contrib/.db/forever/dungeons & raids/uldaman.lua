-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
-- These are for the outdoor section of Uldaman before the instance. (rather than listing them in Badlands...)
local OUTDOOR_ULDAMAN_CRS = {
	4846,	-- Shadowforge Digger
	4845,	-- Shadowforge Ruffian
	4844,	-- Shadowforge Surveyor
};
instanceroot(239, {	-- Uldaman
	lore = "Uldaman is an ancient Titan vault buried deep within the Khaz Mountains, accessible from the Badlands. Partially excavated, it has since fallen into the hands of the Dark Iron dwarves who seek to corrupt its riches for their master, Ragnaros.",
	icon = 136363,
	zoneTextAreaID = 1337,	-- Uldaman
	mapID = MAP.ULDAMAN,
	coords = {
		{ 36.6, 29.4, MAP.ULDAMAN_OUTDOORS },	-- Uldaman [Front], Uldaman [Badlands]
		{ 64.0, 44.0, MAP.BADLANDS },	-- Uldaman [Side]
	},
	lvl = 35,
	groups = {
		n(PROFESSIONS, {
			prof(ENCHANTING, {
				n(11073, {	-- Annora <Master Enchanter>
					description = "To get the Annora to spawn, you'll have to kill all scorpions first.",
					groups = ENCHANTING_RECIPES.ARTISAN,
				}),
			}),
		}),
		n(QUESTS, {
			q(2964, {	-- A Future Task [Alliance]
				sourceQuest = 2977,	-- Return to Ironforge
				qg = 2916,	-- Historian Karnik
				coord = { 77.2, 11.8, MAP.IRONFORGE },
				races = ALLIANCE_ONLY,
				lvl = 45,
				groups = {
				},
			}),
			q(2968, {	-- A Future Task [Horde]
				sourceQuest = 2967,	-- Return to Thunder Bluff
				qg = 3978,	-- Sage Truthseeker
				coord = { 34.4, 46.9, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				lvl = 45,
				groups = {
				},
			}),
			q(2200, {	-- Back to Uldaman
				sourceQuest = 2199,	-- Lore for a Price
				qg = 6826,	-- Talvash del Kissel
				coord = { 36.4, 3.6, MAP.IRONFORGE },
				races = ALLIANCE_ONLY,
				lvl = 37,
				groups = {
					i(7667),	-- Talvash's Phial of Scrying
				},
			}),
			q(2340, {	-- Deliver the Gems
				sourceQuest = 2339,	-- Find the Gems and Power Source
				providers = {
					{ "n", 6868 },	-- Jarkal Mossmeld
					{ "i", 7887 },	-- Necklace and Gem Salvage
				},
				coord = { 2.6, 46.0, MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 37,
			}),
			q(2201, {	-- Find the Gems
				sourceQuest = 2200,	-- Back to Uldaman
				providers = {
					{ "n", 6912 },	-- Remains of a Paladin
					{ "i", 7668 },	-- Bloodstained Journal
				},
				races = ALLIANCE_ONLY,
				lvl = 37,
				groups = {
					objective(1, {	-- 0/1 Shattered Necklace Ruby
						provider = { "i", 7669 },	-- Shattered Necklace Ruby
					}),
					objective(2, {	-- 0/1 Shattered Necklace Sapphire
						provider = { "i", 7670 },	-- Shattered Necklace Sapphire
					}),
					objective(3, {	-- 0/1 Shattered Necklace Topaz
						provider = { "i", 7671 },	-- Shattered Necklace Topaz
					}),
				},
			}),
			q(2339, {	-- Find the Gems and Power Source
				sourceQuest = 2338,	-- Translating the Journal
				providers = {
					{ "n", 6868 },	-- Jarkal Mossmeld
					{ "i", 7668 },	-- Bloodstained Journal
				},
				coord = { 2.6, 46.0, MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 37,
				groups = {
					objective(1, {	-- 0/1 Shattered Necklace Ruby
						provider = { "i", 7669 },	-- Shattered Necklace Ruby
					}),
					objective(2, {	-- 0/1 Shattered Necklace Sapphire
						provider = { "i", 7670 },	-- Shattered Necklace Sapphire
					}),
					objective(3, {	-- 0/1 Shattered Necklace Topaz
						provider = { "i", 7671 },	-- Shattered Necklace Topaz
					}),
					objective(4, {	-- 0/1 Shattered Necklace Power Source
						provider = { "i", 7672 },	-- Shattered Necklace Power Source
					}),
				},
			}),
			q(2199, {	-- Lore for a Price
				sourceQuest = 2198,	-- The Shattered Necklace
				qg = 6826,	-- Talvash del Kissel
				coord = { 36.4, 3.6, MAP.IRONFORGE },
				cost = { { "i", 2842, 5 } },	-- Silver Bar (x5)
				races = ALLIANCE_ONLY,
				lvl = 37,
			}),
			q(2283, {	-- Necklace Recovery
				qg = 6986,	-- Dran Droffers <Droffers and Son Salvage>
				coord = { 59.4, 36.8, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = 37,
				groups = {
					objective(1, {	-- 0/1 Shattered Necklace
						provider = { "i", 7666 },	-- Shattered Necklace
					}),
				},
			}),
			q(2284, {	-- Necklace Recovery, Take 2
				sourceQuest = 2283,	-- Necklace Recovery
				qg = 6986,	-- Dran Droffers <Droffers and Son Salvage>
				coord = { 59.4, 36.8, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = 37,
			}),
			q(2341, {	-- Necklace Recovery, Take 3
				sourceQuest = 2340,	-- Deliver the Gems
				qg = 6986,	-- Dran Droffers <Droffers and Son Salvage>
				coord = { 59.4, 36.8, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = 37,
				groups = {
					i(7888),	-- Jarkal's Enhancing Necklace
				},
			}),
			q(2963, {	-- Portents of Uldum [Alliance]
				sourceQuest = 2439,	-- The Platinum Discs (3/3) [Alliance]
				qg = 5387,	-- High Explorer Magellas
				coord = { 69.8, 18.4, MAP.IRONFORGE },
				races = ALLIANCE_ONLY,
				lvl = 45,
			}),
			q(2965, {	-- Portents of Uldum [Horde]
				sourceQuest = 2440,	-- The Platinum Discs (3/3) [Horde]
				qg = 3978,	-- Sage Truthseeker
				coord = { 34.6, 47.2, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				lvl = 45,
			}),
			q(1956, {	-- Power in Uldaman
				sourceQuest = 1955,	-- The Exorcism
				qg = 6546,	-- Tabetha
				coord = { 46.0, 57.0, MAP.DUSTWALLOW_MARSH },
				classes = { MAGE },
				lvl = 35,
				groups = {
					objective(1, {	-- 0/1 Obsidian Power Source
						provider = { "i", 8053 },	-- Obsidian Power Source
					}),
				},
			}),
			q(3375, {	-- Replacement Phial
				sourceQuest = 2199,	-- Lore for a Price
				qg = 6826,	-- Talvash del Kissel
				coord = { 36.4, 3.6, MAP.IRONFORGE },
				cost = {
					{ "i", 3827, 1 },	-- Mana Potion
					{ "i", 3857, 1 },	-- Coal
					{ "i", 1708, 1 },	-- Sweet Nectar
				},
				races = ALLIANCE_ONLY,
				lvl = 37,
				repeatable = true,
				groups = {
					i(7667),	-- Talvash's Phial of Scrying
				},
			}),
			q(2204, {	-- Restoring the Necklace (1/2)
				sourceQuest = 2201,	-- Find the Gems
				provider = { "i", 7667 },	-- Talvash's Phial of Scrying
				races = ALLIANCE_ONLY,
				lvl = 37,
				groups = {
					objective(1, {	-- 0/1 Shattered Necklace Power Source
						provider = { "i", 7672 },	-- Shattered Necklace Power Source
					}),
				},
			}),
			q(2361, {	-- Restoring the Necklace (2/2)
				sourceQuest = 2204,	-- Restoring the Necklace (1/2)
				qg = 6826,	-- Talvash del Kissel
				coord = { 36.4, 3.6, MAP.IRONFORGE },
				races = ALLIANCE_ONLY,
				lvl = 37,
				groups = {
					i(7673),	-- Talvash's Enhancing Necklace
				},
			}),
			q(2977, {	-- Return to Ironforge
				sourceQuest = 2954,	-- The Stone Watcher
				providers = {
					{ "o", 142343 },	-- Uldum Pedestal
					{ "i", 6064 },	-- Miniature Platinum Discs
				},
				coord = { 37.7, 81.5, MAP.TANARIS },
				maps = { MAP.IRONFORGE },
				races = ALLIANCE_ONLY,
				lvl = 45,
			}),
			q(2967, {	-- Return to Thunder Bluff
				sourceQuest = 2954,	-- The Stone Watcher
				providers = {
					{ "o", 142343 },	-- Uldum Pedestal
					{ "i", 6064 },	-- Miniature Platinum Discs
				},
				coord = { 37.7, 81.5, MAP.TANARIS },
				maps = { MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				lvl = 45,
			}),
			q(2946, {	-- Seeing What Happens [Alliance]
				sourceQuest = 2963,	-- Portents of Uldum [Alliance]
				providers = {
					{ "n", 2916 },	-- Historian Karnik
					{ "i", 6064 },	-- Miniature Platinum Discs
				},
				coord = { 77.2, 11.8, MAP.IRONFORGE },
				races = ALLIANCE_ONLY,
				lvl = 45,
			}),
			q(2966, {	-- Seeing What Happens [Horde]
				sourceQuest = 2965,	-- Portents of Uldum [Horde]
				providers = {
					{ "n", 5770 },	-- Nara Wildmane
					{ "i", 6064 },	-- Miniature Platinum Discs
				},
				coord = { 75.6, 31.2, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				lvl = 45,
			}),
			q(2240, {	-- The Hidden Chamber
				sourceQuest = 2398,	-- The Lost Dwarves
				qg = 6906,	-- Baelog
				races = ALLIANCE_ONLY,
				lvl = 35,
				groups = {
					i(9626),	-- Dwarven Charge
					i(9627),	-- Explorers' League Lodestar
				},
			}),
			q(2398, {	-- The Lost Dwarves
				qg = 1356,	-- Prospector Stormpike
				coord = { 74.6, 11.7, MAP.IRONFORGE },
				races = ALLIANCE_ONLY,
				lvl = 35,
				isBreadcrumb = true,
			}),
			q(1139, {	-- The Lost Tablets of Will
				sourceQuest = 762,	-- An Ambassador of Evil
				qg = 2918,	-- Advisor Belgrum
				coord = { 77.3, 9.7, MAP.IRONFORGE },
				races = ALLIANCE_ONLY,
				lvl = 35,
				groups = {
					objective(1, {	-- 0/1 Tablet of Will
						provider = { "i", 5824 },	-- Tablet of Will
					}),
					i(6723),	-- Medal of Courage
				},
			}),
			q(2278, {	-- The Platinum Discs (1/3)
				description = "Right click on The Discs of Norgannon after defeating Archaedas to start this quest.",
				provider = { "o", 131474 },	-- The Discs of Norgannon
				lvl = 40,
			}),
			q(2279, {	-- The Platinum Discs (2/3) [Alliance]
				provider = { "i", 6064 },	-- Miniature Platinum Discs
				races = ALLIANCE_ONLY,
				lvl = 40,
			}),
			-- apparently there used to be A/H versions of these quests, then changed to one shared version in Cata?
			q(2280, {	-- The Platinum Discs (2/3) [Horde]
				provider = { "i", 6064 },	-- Miniature Platinum Discs
				races = HORDE_ONLY,
				lvl = 40,
			}),
			q(2439, {	-- The Platinum Discs (3/3) [Alliance]
				sourceQuest = 2279,	-- The Platinum Discs (2/3) [Alliance]
				qg = 5387,	-- High Explorer Magellas <Explorers' League>
				coord = { 69.9, 18.6, MAP.IRONFORGE },
				cost = { { "i", 8070, 1 } },	-- Reward Voucher
				races = ALLIANCE_ONLY,
				lvl = 40,
				groups = {
					i(9587),	-- Thawpelt Sack
				},
			}),
			q(2440, {	-- The Platinum Discs (3/3) [Horde]
				sourceQuest = 2280,	-- The Platinum Discs (2/3) [Horde]
				qg = 3978,	-- Sage Truthseeker
				coord = { 34.6, 47.2, MAP.THUNDER_BLUFF },
				cost = { { "i", 8070, 1 } },	-- Reward Voucher
				races = HORDE_ONLY,
				lvl = 40,
				groups = {
					i(9587),	-- Thawpelt Sack
				},
			}),
			q(2198, {	-- The Shattered Necklace
				provider = { "i", 7666 },	-- Shattered Necklace
				races = ALLIANCE_ONLY,
				lvl = 37,
			}),
			q(2954, {	-- The Stone Watcher
				sourceQuests = {
					2946,	-- Seeing What Happens [Ironforge]
					2966,	-- Seeing What Happens [Thunder Bluff]
				},
				provider = { "o", 142343 },	-- Uldum Pedestal
				coord = { 37.7, 81.5, MAP.TANARIS },
				lvl = 45,
			}),
			q(2318, {	-- Translating the Journal (1/2)
				sourceQuest = 2284,	-- Necklace Recovery, Take 2
				providers = {
					{ "n", 6912 },	-- Remains of a Paladin
					{ "i", 7886 },	-- Untranslated Journal
				},
				races = HORDE_ONLY,
				lvl = 37,
			}),
			q(2338, {	-- Translating the Journal (2/2)
				sourceQuest = 2318,	-- Translating the Journal
				providers = {
					{ "n", 6868 },	-- Jarkal Mossmeld
					{ "i", 7886 },	-- Untranslated Journal
				},
				coord = { 2.6, 46.0, MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 37,
			}),
		}),
		n(ZONE_DROPS, {
			i(7666),	-- Shattered Necklace
			i(9420),	-- Adventurer's Pith Helmet
			i(9392),	-- Annealed Blade
			i(9393, {	-- Beacon of Hope
				crs = OUTDOOR_ULDAMAN_CRS,
			}),
			i(9465),	-- Digmaster 5000
			i(9381),	-- Earthen Rod
			i(9397),	-- Energy Cloak
			i(9386, {	-- Excavator's Brand
				crs = OUTDOOR_ULDAMAN_CRS,
			}),
			i(9424),	-- Ginn-Su Sword
			i(9396),	-- Legguards of the Vault
			i(9429),	-- Miner's Hat of the Deep
			i(9426),	-- Monolithic Bow
			i(9383),	-- Obsidian Cleaver
			i(9431),	-- Papal Fez
			i(9425),	-- Pendulum of Doom
			i(9422),	-- Shadowforge Bushmaster
			i(9432),	-- Skullplate Bracers
			i(9430),	-- Spaulders of a Lost Age
			i(9406, {	-- Spirewind Fetter
				crs = OUTDOOR_ULDAMAN_CRS,
			}),
			i(9427),	-- Stonevault Bonebreaker
			i(9384, {	-- Stonevault Shiv
				crs = OUTDOOR_ULDAMAN_CRS,
			}),
			i(9423),	-- The Jackhammer
			i(9391, {	-- The Shoveler
				crs = OUTDOOR_ULDAMAN_CRS,
			}),
			i(9428, {	-- Unearthed Bands
				crs = OUTDOOR_ULDAMAN_CRS,
			}),
		}),
		n(RARES, {
			n(7057, {	-- Digmaster Shovelphlange
				description =
					"This guy spawns outside of the instance in the cave leading to the instance.",
				groups = {
					i(9378),	-- Shovelphlange's Mining Axe
					i(9375),	-- Expert Goldminer's Helmet
					i(9382),	-- Tromping Miner's Boots
				},
			}),
		}),
		n(TREASURES, {
			o(141979, {	-- Ancient Treasure
				description = "Found in the Hall of the Crafters after you defeat Archaedas. Contains 2-3 items.",
				modelScale = 3,
				sym = { { "select","itemID",	-- Since this is basically a source for any classic world drops, we will only list drops where the Ancient Treasure appears to be the best chance
					8029,	-- Plans: Wicked Mithril Blade
				} },
			}),
			o(123329, {	-- Baelog's Chest
				i(7740, {	-- Gni'kiv Medallion
					description = "Use this item along with the Shaft of Tsol to create the Staff of Prehistoria required to open the door to Ironaya.\n\nYou should ask whoever loots the Shaft of Tsol from Revelosh to trade it to you.",
				}),
			}),
			o(125477, {	-- Conspicuous Urn
				description = "In the room with the Lost Dwarves next to the sealed door opposite to the dwarves on top of the stairs. You will need to kill some stealthed Troggs to get there.",
				groups = {
					i(7671),	-- Shattered Necklace Topaz
				},
			}),
			o(113757, {	-- Shadowforge Cache
				description = "WARNING: Defeat the Galgann Firehammer first as looting this chest will spawn two dwarven Ambushers.\n\nNOTE: This trigger only occurs once per instance lockout.",
				groups = {
					i(7669),	-- Shattered Necklace Ruby
				},
			}),
			i(7733, {	-- Staff of Prehistoria
				description = "Use this on the Keystone in the digsite that has the miniature city to open the door to Ironaya.\n\nThis is a reference to the Raiders of the Lost Ark.",
				cost = {
					{ "i", 7740, 1 },	-- Gni'kiv Medallion
					{ "i", 7741, 1 },	-- The Shaft of Tsol
				},
			}),
			o(142088, {	-- Tablet of Will
				description = "Located in the same room as Galgann Firehammer.",
				groups = {
					i(5824),	-- Tablet of Will
				},
			}),
			o(131474, {	-- The Discs of Norgannon
				description = "Talk to the Lore Keeper until he has finished talking and then pick up the quest from The Discs of Norgannon again.",
				modelScale = 3,
				groups = {
					i(6064),	-- Miniature Platinum Discs
				},
			}),
		}),
		n(6906, {	-- Baelog
			description = "This dwarf is named after the French Archiologist, René Belloq, from the Raiders of the Lost Ark.",
			races = HORDE_ONLY,
			groups = {
				i(9399),	-- Precision Arrow
				i(9401),	-- Nordic Longshank
				i(9400),	-- Baelog's Shortbow
			},
		}),
		n(6907, {	-- Eric "The Swift"
			races = HORDE_ONLY,
			groups = {
				i(9394),	-- Horned Viking Helmet
				i(9398),	-- Worn Running Boots
				i(2459),	-- Swiftness Potion
			},
		}),
		n(6908, {	-- Olaf
			races = HORDE_ONLY,
			groups = {
				i(9404),	-- Olaf's All Purpose Shield
				i(9403),	-- Battered Viking Shield
				i(1177),	-- Oil of Olaf
			},
		}),
		n(6912, {	-- Remains of a Paladin
			groups = {
				i(7886),	-- Untranslated Journal
			},
		}),
		e(467, {	-- Revelosh
			creatureID = 6910,
			groups = {
				i(7741, {	-- The Shaft of Tsol
					description = "Use this item along with the Gni'kiv Medallion to create the Staff of Prehistoria required to open the door to Ironaya.\n\nYou should trade this to the person that looted the Gni'kiv Medallion.",
				}),
				i(9389),	-- Revelosh's Spaulders
				i(9388),	-- Revelosh's Armguards
				i(9390),	-- Revelosh's Gloves
				i(9387),	-- Revelosh's Boots
			},
		}),
		o(124371, {	-- Keystone
			coord = { 50.7, 73.9, MAP.ULDAMAN },
			cost = { { "i", 7733, 1 } },	-- Staff of Prehistoria
			groups = {
				objective(1, {	-- Explore the Hidden Chamber
					questID = 2240,	-- The Hidden Chamber
					races = ALLIANCE_ONLY,
				}),
				e(469, {	-- Ironaya
					creatureID = 7228,
					groups = {
						i(9408),	-- Ironshod Bludgeon
						i(9409),	-- Ironaya's Bracers
						i(9407),	-- Stoneweaver Leggings
					},
				}),
			},
		}),
		e(748, {	-- Obsidian Sentinel
			creatureID = 7023,
			groups = {
				i(8053),	-- Obsidian Power Source
			},
		}),
		e(470, {	-- Ancient Stone Keeper
			creatureID = 7206,
			groups = {
				i(9411),	-- Rockshard Pauldrons
				i(9410),	-- Cragfists
			},
		}),
		e(471, {	-- Galgann Firehammer
			creatureID = 7291,
			groups = {
				i(9419),	-- Galgann's Firehammer
				i(9412),	-- Galgann's Fireblaster
				i(11310),	-- Flameseer Mantle
				i(11311),	-- Emberscale Cape
			},
		}),
		e(472, {	-- Grimlok
			creatureID = 4854,
			groups = {
				i(7670),	-- Shattered Necklace Sapphire
				i(9416),	-- Grimlock's Charge
				i(9415),	-- Grimlock's Tribal Vestments
				i(9414),	-- Oilskin Leggings
			},
		}),
		e(473, {	-- Archaedas
			creatureID = 2748,
			groups = {
				i(7672),	-- Shattered Necklace Power Source
				i(9418),	-- Stoneslayer
				i(9413),	-- The Rockpounder
				i(11118),	-- Archaedic Stone
			},
		}),
	},
});