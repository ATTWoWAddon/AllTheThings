-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local CHRONICLE_OF_LOST_MEMORIES = ChronicleOfLostMemories({["cost"] = { { "c", GRATEFUL, 35 } }})	-- Chronicle of Lost Memories
local MEMORY_OF_A_VITAL_SACRIFICE = i(183249, {	-- Memory of a Vital Sacrifice
	["cost"] = { { "c", ANIMA, 250 } },	-- 250x Reservoir Anima
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_VEN" }, {
	n(VENTHYR, {
		n(REWARDS, {
			i(183699, {	-- Exquisite Ingredients
				["description"] = "Only Obtainable from Theotar Soulbind.",
			}),
		}),
		n(VENDORS, {
			n(174710, {	-- Chachi the Artiste <Renown Quartermaster>
				["coord"] = { 54.0, 25.6, SINFALL_REACHES },
				["g"] = {
					CHRONICLE_OF_LOST_MEMORIES,
					MEMORY_OF_A_VITAL_SACRIFICE,
					i(182332, {	-- Gravestone Battle Gargon (MOUNT!)
						["cost"] = {
							{ "c", ANIMA, 100 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(180461, {	-- Horrid Dredwing (MOUNT!)
						["cost"] = {
							{ "c", ANIMA, 5000 },
							{ "c", GRATEFUL, 100 },
						},
					}),
					i(186478, {	-- Obsidian Gravewing (MOUNT!)
						["cost"] = { { "c", ANIMA, 7500 } },
					}),
					i(183715, {	-- Sinfall Gargon (MOUNT!)
						["cost"] = { { "c", ANIMA, 5000 } },
					}),
					i(181555, {	-- Sinheart (PET!)
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(183716, {	-- Venthyr Sinstone (TOY!)
						["cost"] = { { "c", ANIMA, 750 } },
					}),
					i(182204, {	-- Illusion: Sinwrath (ILLUSION!)
						["cost"] = { { "c", ANIMA, 2500 } },
					}),
					i(182433, {	-- Barbedged Dredblade
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(182429, {	-- Claw of the Gilded Stoneborn
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(181046, {	-- Crimson Death Shroud Belt
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(181047, {	-- Crimson Death Shroud Bindings
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(181041, {	-- Crimson Death Shroud Boots
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(181044, {	-- Crimson Death Shroud Breeches
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(181042, {	-- Crimson Death Shroud Gloves
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(181043, {	-- Crimson Death Shroud Hood
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(181045, {	-- Crimson Death Shroud Spaulders
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(181040, {	-- Crimson Death Shroud Vest
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(181048, {	-- Crimson Death Shroud Wrap
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(182436, {	-- Crimson Dredwing Glaive
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(182434, {	-- Crimson-Edged Wingblade
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(182435, {	-- Crimsonbarbed Sinbreaker
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(181005, {	-- Dread Sentinel's Crimson Chestplate
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(181012, {	-- Dread Sentinel's Crimson Cloak
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(181010, {	-- Dread Sentinel's Crimson Girdle
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(181006, {	-- Dread Sentinel's Crimson Greatboots
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(181007, {	-- Dread Sentinel's Crimson Grips
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(181004, {	-- Dread Sentinel's Crimson Headgear
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(181008, {	-- Dread Sentinel's Crimson Legguards
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(181009, {	-- Dread Sentinel's Crimson Spaulders
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(181011, {	-- Dread Sentinel's Crimson Vambraces
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					iensemble(186508, {	-- Ensemble: Court Inquisitor's Vestments
						["cost"] = { { "c", ANIMA, 10000 } },
					}),
					iensemble(186510, {	-- Ensemble: Sinful Inquisitor's Vestments
						["cost"] = { { "c", ANIMA, 10000 } },
					}),
					iensemble(186509, {	-- Ensemble: Sinful Venthyr Attire
						["cost"] = { { "c", ANIMA, 10000 } },
					}),
					i(181073, {	-- Fearstalker's Crimson Belt
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(181074, {	-- Fearstalker's Crimson Bracers
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(181075, {	-- Fearstalker's Crimson Cloak
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(181069, {	-- Fearstalker's Crimson Gauntlets
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(181067, {	-- Fearstalker's Crimson Hauberk
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(181070, {	-- Fearstalker's Crimson Helm
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(181071, {	-- Fearstalker's Crimson Leggings
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(181072, {	-- Fearstalker's Crimson Monnion
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(181068, {	-- Fearstalker's Crimson Sabatons
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(182432, {	-- Gilded Sentry Stave
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(182431, {	-- Gilded Sineater's Staff
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(182428, {	-- Gilded Sinfall Bastard Sword
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(183712, {	-- Gleaming Crypt Keeper's Mantle
						["cost"] = { { "c", ANIMA, 3500 } },
					}),
					i(183705, {	-- Mantle of Crimson Blades
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 40 },
						},
					}),
					i(182437, {	-- Screecher's Crimson Spinethrower
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(183975, {	-- Sinfall Ceremonial Blade
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(182438, {	-- Sinfall Gilded Bulwark
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(182427, {	-- Sinfall Heartpiercer
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(182439, {	-- Sinheart Spell Foci
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(182430, {	-- Sinseeker's Dredwing Gavel
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(181102, {	-- Soulbreaker's Crimson Drape
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(181096, {	-- Soulbreaker's Crimson Handwraps
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(181097, {	-- Soulbreaker's Crimson Hood
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(181098, {	-- Soulbreaker's Crimson Leggings
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(181099, {	-- Soulbreaker's Crimson Mantle
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(181100, {	-- Soulbreaker's Crimson Sash
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(181095, {	-- Soulbreaker's Crimson Slippers
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(181094, {	-- Soulbreaker's Crimson Vestments
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(181101, {	-- Soulbreaker's Crimson Wraps
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
				},
			}),
			n(175406, {	-- Gregor the Pallidblade <Sinfall Quartermaster>
				["coord"] = { 70.6, 27.3, SINFALL_DEPTHS },
				["sym"] = { { "select", "itemID",
					-- These items are only purchasable after you complete the covenant campaign.
					-- Doing the Campaign also rewards all those items, so no need to list 2 sources per item.
					180902, -- Dread Sentinel's Ebony Chestplate
					180921, -- Dread Sentinel's Ebony Spaulders
					180938,	-- Dread Sentinel's Ebony Cloak
					180924,	-- Dread Sentinel's Ebony Girdle
					180905,	-- Dread Sentinel's Ebony Greatboots
					180910,	-- Dread Sentinel's Ebony Grips
					180900,	-- Dread Sentinel's Ebony Headgear
					180916,	-- Dread Sentinel's Ebony Legguards
					180929,	-- Dread Sentinel's Ebony Vambraces
					180920,	-- Ebony Death Shroud Spaulders
					180904,	-- Ebony Death Shroud Vest
					180927,	-- Ebony Death Shroud Belt
					180931,	-- Ebony Death Shroud Bindings
					180908,	-- Ebony Death Shroud Boots
					180919,	-- Ebony Death Shroud Breeches
					180936,	-- Ebony Death Shroud Cloak
					180909,	-- Ebony Death Shroud Gloves
					180915,	-- Ebony Death Shroud Hood
					180903,	-- Fearstalker's Ebony Hauberk
					180923,	-- Fearstalker's Ebony Monnion
					180926,	-- Fearstalker's Ebony Belt
					180930,	-- Fearstalker's Ebony Bracers
					180937,	-- Fearstalker's Ebony Cloak
					180912,	-- Fearstalker's Ebony Gauntlets
					180914,	-- Fearstalker's Ebony Helm
					180918,	-- Fearstalker's Ebony Leggings
					180907,	-- Fearstalker's Ebony Sabatons
					180922,	-- Soulbreaker's Ebony Mantle
					180901,	-- Soulbreaker's Ebony Vestments
					180934,	-- Soulbreaker's Ebony Drape
					180911,	-- Soulbreaker's Ebony Handwraps
					180913,	-- Soulbreaker's Ebony Hood
					180917,	-- Soulbreaker's Ebony Leggings
					180925,	-- Soulbreaker's Ebony Sash
					180906,	-- Soulbreaker's Ebony Slippers
					180928,	-- Soulbreaker's Ebony Wraps
				}},
				["g"] = {
					i(181143, {	-- Claw of the Stoneborn Executioner
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(181142, {	-- Dark Blade of the Repentant
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(181154, {	-- Dark Bulwark of Death's Vigil
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(181149, {	-- Dredbat's Dark Guile
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(181152, {	-- Dredwing's Ebon Edge
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(181153, {	-- Ebony Dredspine Repeater
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(181141, {	-- Ebony Soul Piercer
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(181144, {	-- Gavel of Dark Diviniaton
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(181150, {	-- Sin's Ebon Edge
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(181146, {	-- Singed Soul Spire
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(181156, {	-- Sinstealer's Dark Foci
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(181151, {	-- Souleater's Ebony Barb
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(181148, {	-- Stave of Dark Passions
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
				},
			}),
			n(175407, {	-- Lord Afanas <Normal Nathrian Weaponsmith>
				["coord"] = { 55.2, 54.1, SINFALL_DEPTHS },
				["g"] = bubbleDown({ ["modID"] = 3 }, {	-- Normal
					i(182421, {	-- Barbed-Edge of the Stone Legion
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(182425, {	-- Bulwark of the Stone Legion
						["cost"] = {
							{ "i", modItemId(183888,03), 1 },	-- Normal Apogee Anima Bead - 200
							{ "i", modItemId(183889,03), 1 },	-- Normal Thaumaturgic Anima Bead - 200
						},
					}),
					i(182416, {	-- Claws of the Stone Generals
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(182414, {	-- Crimson Court Backstabber
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(182422, {	-- Dread Inquisitor's Spine
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(182424, {	-- Dredbat Repeating Crossbow
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(182398, {	-- Dredfang Ironspitter
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(182394, {	-- Dredwing Barbed Swordbreaker
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(182396, {	-- Hungering Ritualist's Animablade
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(182397, {	-- Legion General's Glaivewing
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(182417, {	-- Mace of Enveloping Sins
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(182400, {	-- Master Stonewright's Chisel
						["cost"] = {
							{ "i", modItemId(183895,82), 1 },	-- Normal Apogee Anima Bead - 207
							{ "i", modItemId(183894,82), 1 },	-- Normal Thaumaturgic Anima Bead - 207
						},
					}),
					i(182388, {	-- Nathrian Assassin's Backbiter
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(182389, {	-- Nathrian Crusader's Bastard Sword
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(182420, {	-- Nathrian Duelist's Fleshrender
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(182419, {	-- Nathrian Torchbearer's Stave
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(182393, {	-- Rod of the Stone Sentinels
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(182392, {	-- Sinbearer's Absolution Staff
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(182391, {	-- Sinstealer's Sentencing Gavel
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(182415, {	-- Stoneborn Goliath's Cleaver
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(182395, {	-- Stoneborn Terrorblade
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(182426, {	-- Stonewright's Infused Stonecarver
						["cost"] = {
							{ "i", modItemId(183888,03), 1 },	-- Normal Apogee Anima Bead - 200
							{ "i", modItemId(183889,03), 1 },	-- Normal Thaumaturgic Anima Bead - 200
						},
					}),
					i(182399, {	-- Stonewrought Gargoyles Barrier
						["cost"] = {
							{ "i", modItemId(183895,82), 1 },	-- Normal Apogee Anima Bead - 207
							{ "i", modItemId(183894,82), 1 },	-- Normal Thaumaturgic Anima Bead - 207
						},
					}),
					i(182390, {	-- Talons of the Legion Generals
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(182418, {	-- Torch of Fiery Atonement
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(182423, {	-- Wingdancer's Warglaive
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
				}),
			}),
			n(178176, {	-- Night Guardian Jethraasa <Raid Finder Nathrian Weaponsmith>
				["coord"] = { 55.1, 46.1, SINFALL_DEPTHS },
				["cr"] = 174183,	-- Solivane <Raid Finder Nathrian Weaponsmith> (no longer the vendor for anyone who has progressed through Chapter 5/9 of Chains of Domination)
				["g"] = bubbleDown({ ["modID"] = 4, ["ItemAppearanceModifierID"] = 0, }, {	-- LFR
					i(182421, {	-- Barbed-Edge of the Stone Legion
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(182425, {	-- Bulwark of the Stone Legion
						["cost"] = {
							{ "i", modItemId(183888,04), 1 },	-- LFR Apogee Anima Bead - 187
							{ "i", modItemId(183889,04), 1 },	-- LFR Thaumaturgic Anima Bead - 187
						},
					}),
					i(182416, {	-- Claws of the Stone Generals
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(182414, {	-- Crimson Court Backstabber
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(182422, {	-- Dread Inquisitor's Spine
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(182424, {	-- Dredbat Repeating Crossbow
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(182398, {	-- Dredfang Ironspitter
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(182394, {	-- Dredwing Barbed Swordbreaker
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(182396, {	-- Hungering Ritualist's Animablade
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(182397, {	-- Legion General's Glaivewing
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(182417, {	-- Mace of Enveloping Sins
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(182400, {	-- Master Stonewright's Chisel
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183895,83), 1 },	-- LFR Apogee Anima Bead - 194
							{ "i", modItemId(183894,83), 1 },	-- LFR Thaumaturgic Anima Bead - 194
						},
					}),
					i(182388, {	-- Nathrian Assassin's Backbiter
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(182389, {	-- Nathrian Crusader's Bastard Sword
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(182420, {	-- Nathrian Duelist's Fleshrender
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(182419, {	-- Nathrian Torchbearer's Stave
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(182393, {	-- Rod of the Stone Sentinels
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(182392, {	-- Sinbearer's Absolution Staff
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(182391, {	-- Sinstealer's Sentencing Gavel
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(182415, {	-- Stoneborn Goliath's Cleaver
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(182395, {	-- Stoneborn Terrorblade
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(182426, {	-- Stonewright's Infused Stonecarver
						["cost"] = {
							{ "i", modItemId(183888,04), 1 },	-- LFR Apogee Anima Bead - 187
							{ "i", modItemId(183889,04), 1 },	-- LFR Thaumaturgic Anima Bead - 187
						},
					}),
					i(182399, {	-- Stonewrought Gargoyles Barrier
						["cost"] = {
							{ "i", modItemId(183895,83), 1 },	-- LFR Apogee Anima Bead - 194
							{ "i", modItemId(183894,83), 1 },	-- LFR Thaumaturgic Anima Bead - 194
						},
					}),
					i(182390, {	-- Talons of the Legion Generals
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(182418, {	-- Torch of Fiery Atonement
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(182423, {	-- Wingdancer's Warglaive
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
				}),
			}),
			n(174709, {	-- Stoneweaver McConnell <Heroic Nathrian Weaponsmith>
				["coord"] = { 45.4, 65.0, SINFALL_DEPTHS },
				["g"] = bubbleDown({ ["modID"] = 5, ["ItemAppearanceModifierID"] = 0, }, {	-- Heroic
					i(182421, {	-- Barbed-Edge of the Stone Legion
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(182425, {	-- Bulwark of the Stone Legion
						["cost"] = {
							{ "i", modItemId(183888,05), 1 },	-- Heroic Apogee Anima Bead - 213
							{ "i", modItemId(183889,05), 1 },	-- Heroic Thaumaturgic Anima Bead - 213
						},
					}),
					i(182416, {	-- Claws of the Stone Generals
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(182414, {	-- Crimson Court Backstabber
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(182422, {	-- Dread Inquisitor's Spine
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(182424, {	-- Dredbat Repeating Crossbow
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(182398, {	-- Dredfang Ironspitter
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(182394, {	-- Dredwing Barbed Swordbreaker
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(182396, {	-- Hungering Ritualist's Animablade
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(182397, {	-- Legion General's Glaivewing
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(182417, {	-- Mace of Enveloping Sins
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(182400, {	-- Master Stonewright's Chisel
						["cost"] = {
							{ "i", modItemId(183895,84), 1 },	-- Heroic Apogee Anima Bead - 220
							{ "i", modItemId(183894,84), 1 },	-- Heroic Thaumaturgic Anima Bead - 220
						},
					}),
					i(182388, {	-- Nathrian Assassin's Backbiter
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(182389, {	-- Nathrian Crusader's Bastard Sword
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(182420, {	-- Nathrian Duelist's Fleshrender
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(182419, {	-- Nathrian Torchbearer's Stave
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(182393, {	-- Rod of the Stone Sentinels
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(182392, {	-- Sinbearer's Absolution Staff
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(182391, {	-- Sinstealer's Sentencing Gavel
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(182415, {	-- Stoneborn Goliath's Cleaver
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(182395, {	-- Stoneborn Terrorblade
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(182426, {	-- Stonewright's Infused Stonecarver
						["cost"] = {
							{ "i", modItemId(183888,05), 1 },	-- Heroic Apogee Anima Bead - 213
							{ "i", modItemId(183889,05), 1 },	-- Heroic Thaumaturgic Anima Bead - 213
						},
					}),
					i(182399, {	-- Stonewrought Gargoyles Barrier
						["cost"] = {
							{ "i", modItemId(183895,84), 1 },	-- Heroic Apogee Anima Bead - 220
							{ "i", modItemId(183894,84), 1 },	-- Heroic Thaumaturgic Anima Bead - 220
						},
					}),
					i(182390, {	-- Talons of the Legion Generals
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(182418, {	-- Torch of Fiery Atonement
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(182423, {	-- Wingdancer's Warglaive
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
				}),
			}),
			n(175369, {	-- Vorpalia <Mythic Nathrian Weaponsmith>
				["coord"] = { 40.3, 46.1, SINFALL_DEPTHS },
				["g"] = bubbleDown({ ["modID"] = 6 }, {	-- Mythic
					i(182421, {	-- Barbed-Edge of the Stone Legion
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(182425, {	-- Bulwark of the Stone Legion
						["cost"] = {
							{ "i", modItemId(183888,06), 1 },	-- Mythic Apogee Anima Bead - 226
							{ "i", modItemId(183889,06), 1 },	-- Mythic Thaumaturgic Anima Bead - 226
						},
					}),
					i(182416, {	-- Claws of the Stone Generals
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(182414, {	-- Crimson Court Backstabber
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(182422, {	-- Dread Inquisitor's Spine
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(182424, {	-- Dredbat Repeating Crossbow
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(182398, {	-- Dredfang Ironspitter
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(182394, {	-- Dredwing Barbed Swordbreaker
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(182396, {	-- Hungering Ritualist's Animablade
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(182397, {	-- Legion General's Glaivewing
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(182417, {	-- Mace of Enveloping Sins
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(182400, {	-- Master Stonewright's Chisel
						["cost"] = {
							{ "i", modItemId(183895,85), 1 },	-- Mythic Apogee Anima Bead - 233
							{ "i", modItemId(183894,85), 1 },	-- Mythic Thaumaturgic Anima Bead - 233
						},
					}),
					i(182388, {	-- Nathrian Assassin's Backbiter
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(182389, {	-- Nathrian Crusader's Bastard Sword
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(182420, {	-- Nathrian Duelist's Fleshrender
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(182419, {	-- Nathrian Torchbearer's Stave
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(182393, {	-- Rod of the Stone Sentinels
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(182392, {	-- Sinbearer's Absolution Staff
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(182391, {	-- Sinstealer's Sentencing Gavel
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(182415, {	-- Stoneborn Goliath's Cleaver
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(182395, {	-- Stoneborn Terrorblade
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(182426, {	-- Stonewright's Infused Stonecarver
						["cost"] = {
							{ "i", modItemId(183888,06), 1 },	-- Mythic Apogee Anima Bead - 226
							{ "i", modItemId(183889,06), 1 },	-- Mythic Thaumaturgic Anima Bead - 226
						},
					}),
					i(182399, {	-- Stonewrought Gargoyles Barrier
						["cost"] = {
							{ "i", modItemId(183895,85), 1 },	-- Mythic Apogee Anima Bead - 233
							{ "i", modItemId(183894,85), 1 },	-- Mythic Thaumaturgic Anima Bead - 233
						},
					}),
					i(182390, {	-- Talons of the Legion Generals
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(182418, {	-- Torch of Fiery Atonement
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(182423, {	-- Wingdancer's Warglaive
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
				}),
			}),
		}),
	}),
})));

for _,t in ipairs({CHRONICLE_OF_LOST_MEMORIES, MEMORY_OF_A_VITAL_SACRIFICE}) do
	t.customCollect = nil;
end

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(VENTHYR, bubbleDown({ ["customCollect"] = "SL_COV_VEN" }, {
		q(62021),	-- unlocking Dread Sentinel's Crimson Battleplate set (TransmogSetID 2078, Dread Sentinel's Crimson items)
		q(62039),	-- unlocking Soulbreaker's Crimson Vestments set (TransmogSetID 2063, Soulbreaker's Crimson items)
		q(62033),	-- unlocking Soulbreaker's Ebony Vestments set (TransmogSetID 2066, Soulbreaker's Ebony items)
		q(62032),	-- unlocking Crimson Death Shroud Armor set (TransmogSetID 2067, Crimson Death Shroud items)
		q(62029),	-- unlocking Ebony Death Shroud Armor set (TransmogSetID 2070, Ebony Death Shroud items)
		q(62024),	-- unlocking Fearstalker's Ebony Battlegear set (TransmogSetID 2071, Fearstalker's Ebony items)
		q(62027),	-- unlocking Fearstalker's Crimson Battlegear set (TransmogSetID 2074, Fearstalker's Crimson items)
		q(62016),	-- unlocking Dread Sentinel's Ebony Battleplate set (TransmogSetID 2075, Dread Sentinel's Ebony items)
	})),
})));