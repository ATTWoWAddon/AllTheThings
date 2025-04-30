-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local MEMORY_OF_A_VITAL_SACRIFICE = i(183249, {	-- Memory of a Vital Sacrifice
	["cost"] = { { "c", ANIMA, 250 } },	-- 250x Reservoir Anima
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_NFA" }, {
	n(NIGHT_FAE, {
		n(REWARDS, {
			i(183702, {	-- Nature's Splendor
				["description"] = "Only Obtainable from Niya Soulbind.",
			}),
		}),
		n(VENDORS, {
			n(175414, {	-- Adera <Normal Nathrian Weaponsmith>
				["coord"] = { 48.1, 53.5, THE_ROOTS },
				["g"] = bubbleDown({ ["modID"] = 3 }, {	-- Normal
					i(179544, {	-- Ashcarved Sledgehammer
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(179557, {	-- Baron's Oaken Scepter
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(179611, {	-- Bulwark of the Unbowed
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183895,82), 1 },	-- Normal Apogee Anima Bead - 207
							{ "i", modItemId(183894,82), 1 },	-- Normal Thaumaturgic Anima Bead - 207
						},
					}),
					i(179541, {	-- Colossal Sludgepounder
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(180260, {	-- Deathdancer's Warglaive
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(179610, {	-- Dredge-Giant's Warshield
						["cost"] = {
							{ "i", modItemId(183888,03), 1 },	-- Normal Apogee Anima Bead - 200
							{ "i", modItemId(183889,03), 1 },	-- Normal Thaumaturgic Anima Bead - 200
						},
					}),
					i(180258, {	-- Faeweald Fleshrender
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(179497, {	-- Fang of the Winged Sentry
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(179527, {	-- Gargon-Tamer's Spear
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(179570, {	-- Harp of the Sanguine Courts
						["cost"] = {
							{ "i", modItemId(183888,03), 1 },	-- Normal Apogee Anima Bead - 200
							{ "i", modItemId(183889,03), 1 },	-- Normal Thaumaturgic Anima Bead - 200
						},
					}),
					i(180073, {	-- Heartstalker's Longbow
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(179579, {	-- Jaws of the Hungerer
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(179492, {	-- Keepcrawler's Gutripper
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(179566, {	-- Lyre of Decadent Frivolity
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183895,82), 1 },	-- Normal Apogee Anima Bead - 207
							{ "i", modItemId(183894,82), 1 },	-- Normal Thaumaturgic Anima Bead - 207
						},
					}),
					i(182351, {	-- Mace of the Unburdened
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(179530, {	-- Nightwatch Eviscerator
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(180022, {	-- Rootbulb of the Sinless
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(179561, {	-- Rootspinner's Bloodbough
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(180071, {	-- Shrieking Sinseeker
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(180002, {	-- Spire of the Long Dark
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(180000, {	-- Staff of the Penitent
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(184241, {	-- Stone-Sentinel Breaker
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(179577, {	-- Stonesnap Mandibles
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(180023, {	-- Wand of Arboreal Artifice
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
				}),
			}),
			n(174914, {	-- Elwyn <Renown Quartermaster>
				["coord"] = { 60.2, 33.2, THE_TRUNK },
				["g"] = {
					i(186494, {	-- Autumnal Wilderling (MOUNT!)
						["cost"] = { { "c", ANIMA, 7500 } },
					}),
					i(180722, {	-- Enchanted Shadeleaf Runestag (MOUNT!)
						["cost"] = {
							{ "c", ANIMA, 100 },
							{ "c", GRATEFUL, 40 },
						},
					}),
					i(180413, {	-- Shadeleaf Runestag (MOUNT!)
						["cost"] = { { "c", ANIMA, 5000 } },
					}),
					i(180730, {	-- Wild Glimmerfur Prowler (MOUNT!)
						["cost"] = {
							{ "c", ANIMA, 5000 },
							{ "c", GRATEFUL, 75 },
						},
					}),
					i(180290, {	-- Night Fae Hearthstone (TOY!)
						["cost"] = { { "c", ANIMA, 750 } },
					}),
					i(182663, {	-- Trootie (PET!)
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 20 },
						},
					}),
					i(184164, {	-- Illusion: Wild Soul (ILLUSION!)
						["cost"] = { { "c", ANIMA, 2500 } },
					}),
					MEMORY_OF_A_VITAL_SACRIFICE,
					iensemble(186498, {	-- Ensemble: Garb of the Azure Dusk
						["cost"] = { { "c", ANIMA, 10000 } },
					}),
					i(179674, {	-- Night Courtier's Amice
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(179782, {	-- Night Courtier's Anklewraps
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(181925, {	-- Night Courtier's Armbands
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(179785, {	-- Night Courtier's Armguards
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(179608, {	-- Night Courtier's Barrier
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(179800, {	-- Night Courtier's Belt
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(179803, {	-- Night Courtier's Bracers
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(179791, {	-- Night Courtier's Britches
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(181926, {	-- Night Courtier's Buckle
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(181307, {	-- Night Courtier's Bulb
						["cost"] = { { "c", ANIMA, 3500 } },
					}),
					i(179628, {	-- Night Courtier's Cape
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(179776, {	-- Night Courtier's Chestguard
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(179910, {	-- Night Courtier's Chestplate
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(179634, {	-- Night Courtier's Cloak
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(179668, {	-- Night Courtier's Cowl
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(179788, {	-- Night Courtier's Crest
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(179680, {	-- Night Courtier's Cuffs
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(179624, {	-- Night Courtier's Drape
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(179494, {	-- Night Courtier's Fang
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(181931, {	-- Night Courtier's Footguards
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(179908, {	-- Night Courtier's Gauntlets
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(179904, {	-- Night Courtier's Girdle
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(181930, {	-- Night Courtier's Gloves
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(181879, {	-- Night Courtier's Greatcloak
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(179907, {	-- Night Courtier's Greathelm
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(179906, {	-- Night Courtier's Greaves
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(181929, {	-- Night Courtier's Guise
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(179665, {	-- Night Courtier's Handwraps
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(181932, {	-- Night Courtier's Hauberk
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(179581, {	-- Night Courtier's Jaws
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(179671, {	-- Night Courtier's Leggings
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(181928, {	-- Night Courtier's Legguards
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(179568, {	-- Night Courtier's Lyre
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(182352, {	-- Night Courtier's Mace
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(179797, {	-- Night Courtier's Mantle
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(179540, {	-- Night Courtier's Maul
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(181311, {	-- Night Courtier's Pack
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 40 },
						},
					}),
					i(179905, {	-- Night Courtier's Pauldrons
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(181941, {	-- Night Courtier's Raiment
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(179654, {	-- Night Courtier's Robes
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(179909, {	-- Night Courtier's Sabatons
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(179661, {	-- Night Courtier's Sandals
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(179677, {	-- Night Courtier's Sash
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(179558, {	-- Night Courtier's Scepter
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(181927, {	-- Night Courtier's Spaulders
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(180003, {	-- Night Courtier's Spire
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(179658, {	-- Night Courtier's Tunic
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(179903, {	-- Night Courtier's Vambraces
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(179794, {	-- Night Courtier's Vestment
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(180020, {	-- Night Courtier's Wand
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(180077, {	-- Night Courtier's Warbow
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(180257, {	-- Night Courtier's Warglaive
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(179528, {	-- Night Courtier's Warspear
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(182171, {	-- Hippogryph Soul
						["sourceQuest"] = 63682,	-- The Power of Elune
						["cost"] = {
							{ "c", ANIMA, 250 },
						},
					}),
				},
			}),
			n(175415, {	-- Harkoth <Heroic Nathrian Weaponsmith>
				["coord"] = { 49.4, 54.4, THE_ROOTS },
				["g"] = bubbleDown({ ["modID"] = 5, ["ItemAppearanceModifierID"] = 0, }, {	-- Heroic
					i(179544, {	-- Ashcarved Sledgehammer
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(179557, {	-- Baron's Oaken Scepter
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(179611, {	-- Bulwark of the Unbowed
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183895,84), 1 },	-- Heroic Apogee Anima Bead - 220
							{ "i", modItemId(183894,84), 1 },	-- Heroic Thaumaturgic Anima Bead - 220
						},
					}),
					i(179541, {	-- Colossal Sludgepounder
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(180260, {	-- Deathdancer's Warglaive
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(179610, {	-- Dredge-Giant's Warshield
						["cost"] = {
							{ "i", modItemId(183888,05), 1 },	-- Heroic Apogee Anima Bead - 213
							{ "i", modItemId(183889,05), 1 },	-- Heroic Thaumaturgic Anima Bead - 213
						},
					}),
					i(180258, {	-- Faeweald Fleshrender
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(179497, {	-- Fang of the Winged Sentry
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(179527, {	-- Gargon-Tamer's Spear
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(179570, {	-- Harp of the Sanguine Courts
						["cost"] = {
							{ "i", modItemId(183888,05), 1 },	-- Heroic Apogee Anima Bead - 213
							{ "i", modItemId(183889,05), 1 },	-- Heroic Thaumaturgic Anima Bead - 213
						},
					}),
					i(180073, {	-- Heartstalker's Longbow
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(179579, {	-- Jaws of the Hungerer
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(179492, {	-- Keepcrawler's Gutripper
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(179566, {	-- Lyre of Decadent Frivolity
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183895,84), 1 },	-- Heroic Apogee Anima Bead - 220
							{ "i", modItemId(183894,84), 1 },	-- Heroic Thaumaturgic Anima Bead - 220
						},
					}),
					i(182351, {	-- Mace of the Unburdened
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(179530, {	-- Nightwatch Eviscerator
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(180022, {	-- Rootbulb of the Sinless
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(179561, {	-- Rootspinner's Bloodbough
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(180071, {	-- Shrieking Sinseeker
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(180002, {	-- Spire of the Long Dark
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(180000, {	-- Staff of the Penitent
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(184241, {	-- Stone-Sentinel Breaker
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(179577, {	-- Stonesnap Mandibles
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(180023, {	-- Wand of Arboreal Artifice
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
				}),
			}),
			n(175418, {	-- Mar'lan <Night Fae Armor Trader>
				["coord"] = { 45.9, 56.4, THE_TRUNK },
				["sym"] = { { "select", "itemID",
					-- These items are only purchasable after you complete the covenant campaign.
					-- Doing the Campaign also rewards all those items, so no need to list 2 sources per item.
					175597,	-- Faewoven Amice
					175588,	-- Faewoven Cowl
					175603,	-- Faewoven Cuffs
					179623,	-- Faewoven Drape
					175586,	-- Faewoven Handwraps
					175592,	-- Faewoven Leggings
					175576,	-- Faewoven Raiment
					175581,	-- Faewoven Sandals
					175600,	-- Faewoven Sash
					179657,	-- Faewoven Tunic
					179766,	-- Oakheart Anklewraps
					179767,	-- Oakheart Armguards
					179771,	-- Oakheart Belt
					179772,	-- Oakheart Bracers
					179769,	-- Oakheart Britches
					179773,	-- Oakheart Cape
					179768,	-- Oakheart Crest
					179770,	-- Oakheart Mantle
					179765,	-- Oakheart Tunic
					179774,	-- Oakheart Vestment
					179888,	-- Queensguard Chestplate
					179620,	-- Queensguard Cloak
					179890,	-- Queensguard Gauntlets
					179893,	-- Queensguard Girdle
					179887,	-- Queensguard Greathelm
					179891,	-- Queensguard Greaves
					179892,	-- Queensguard Pauldrons
					179889,	-- Queensguard Sabatons
					179894,	-- Queensguard Vambraces
					181916,	-- Runewarden's Armguards
					181910,	-- Runewarden's Boots
					181915,	-- Runewarden's Buckle
					181911,	-- Runewarden's Gloves
					181877,	-- Runewarden's Greatcloak
					181912,	-- Runewarden's Guise
					181909,	-- Runewarden's Hauberk
					181913,	-- Runewarden's Legguards
					181914,	-- Runewarden's Spaulders
					181979,	-- Runewarden's Vestment
				}},
				["g"] = {
					i(179602, {	-- Bulwark of the Wild Hunt
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(179493, {	-- Fang of the Wild Hunt
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(179567, {	-- Harp of the Wild Hunt
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(179580, {	-- Jaws of the Wild Hunt
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(182319, {	-- Mace of the Wild Hunt
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(179560, {	-- Scepter of the Wild Hunt
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(180005, {	-- Staff of the Wild Hunt
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(180021, {	-- Wand of the Wild Hunt
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(180079, {	-- Warbow of the Wild Hunt
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(180259, {	-- Warglaive of the Wild Hunt
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(179529, {	-- Warspear of the Wild Hunt
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(179542, {	-- Warmaul of the Wild Hunt
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
				},
			}),
			n(175413, {	-- Sparklebreeze <Raid Finder Nathrian Weaponsmith>
				["coord"] = { 46.9, 54.3, THE_ROOTS },
				["g"] = bubbleDown({ ["modID"] = 4, ["ItemAppearanceModifierID"] = 0, }, {	-- LFR
					i(179544, {	-- Ashcarved Sledgehammer
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(179557, {	-- Baron's Oaken Scepter
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(179611, {	-- Bulwark of the Unbowed
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183895,83), 1 },	-- LFR Apogee Anima Bead - 194
							{ "i", modItemId(183894,83), 1 },	-- LFR Thaumaturgic Anima Bead - 194
						},
					}),
					i(179541, {	-- Colossal Sludgepounder
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(180260, {	-- Deathdancer's Warglaive
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(179610, {	-- Dredge-Giant's Warshield
						["cost"] = {
							{ "i", modItemId(183888,04), 1 },	-- LFR Apogee Anima Bead - 187
							{ "i", modItemId(183889,04), 1 },	-- LFR Thaumaturgic Anima Bead - 187
						},
					}),
					i(180258, {	-- Faeweald Fleshrender
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(179497, {	-- Fang of the Winged Sentry
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(179527, {	-- Gargon-Tamer's Spear
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(179570, {	-- Harp of the Sanguine Courts
						["cost"] = {
							{ "i", modItemId(183888,04), 1 },	-- LFR Apogee Anima Bead - 187
							{ "i", modItemId(183889,04), 1 },	-- LFR Thaumaturgic Anima Bead - 187
						},
					}),
					i(180073, {	-- Heartstalker's Longbow
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(179579, {	-- Jaws of the Hungerer
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(179492, {	-- Keepcrawler's Gutripper
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(179566, {	-- Lyre of Decadent Frivolity
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183895,83), 1 },	-- LFR Apogee Anima Bead - 194
							{ "i", modItemId(183894,83), 1 },	-- LFR Thaumaturgic Anima Bead - 194
						},
					}),
					i(182351, {	-- Mace of the Unburdened
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(179530, {	-- Nightwatch Eviscerator
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(180022, {	-- Rootbulb of the Sinless
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(179561, {	-- Rootspinner's Bloodbough
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(180071, {	-- Shrieking Sinseeker
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(180002, {	-- Spire of the Long Dark
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(180000, {	-- Staff of the Penitent
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(184241, {	-- Stone-Sentinel Breaker
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(179577, {	-- Stonesnap Mandibles
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(180023, {	-- Wand of Arboreal Artifice
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
				}),
			}),
			n(175417, {	-- Sulanoom <Mythic Nathrian Weaponsmith>
				["coord"] = { 49.4, 54.4, THE_ROOTS },
				["g"] = bubbleDown({ ["modID"] = 6, }, {	-- Mythic
					i(179544, {	-- Ashcarved Sledgehammer
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(179557, {	-- Baron's Oaken Scepter
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(179611, {	-- Bulwark of the Unbowed
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183895,85), 1 },	-- Mythic Apogee Anima Bead - 233
							{ "i", modItemId(183894,85), 1 },	-- Mythic Thaumaturgic Anima Bead - 233
						},
					}),
					i(179541, {	-- Colossal Sludgepounder
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(180260, {	-- Deathdancer's Warglaive
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(179610, {	-- Dredge-Giant's Warshield
						["cost"] = {
							{ "i", modItemId(183888,06), 1 },	-- Mythic Apogee Anima Bead - 226
							{ "i", modItemId(183889,06), 1 },	-- Mythic Thaumaturgic Anima Bead - 226
						},
					}),
					i(180258, {	-- Faeweald Fleshrender
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(179497, {	-- Fang of the Winged Sentry
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(179527, {	-- Gargon-Tamer's Spear
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(179570, {	-- Harp of the Sanguine Courts
						["cost"] = {
							{ "i", modItemId(183888,06), 1 },	-- Mythic Apogee Anima Bead - 226
							{ "i", modItemId(183889,06), 1 },	-- Mythic Thaumaturgic Anima Bead - 226
						},
					}),
					i(180073, {	-- Heartstalker's Longbow
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(179579, {	-- Jaws of the Hungerer
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(179492, {	-- Keepcrawler's Gutripper
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(179566, {	-- Lyre of Decadent Frivolity
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183895,85), 1 },	-- Mythic Apogee Anima Bead - 233
							{ "i", modItemId(183894,85), 1 },	-- Mythic Thaumaturgic Anima Bead - 233
						},
					}),
					i(182351, {	-- Mace of the Unburdened
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(179530, {	-- Nightwatch Eviscerator
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(180022, {	-- Rootbulb of the Sinless
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(179561, {	-- Rootspinner's Bloodbough
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(180071, {	-- Shrieking Sinseeker
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(180002, {	-- Spire of the Long Dark
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(180000, {	-- Staff of the Penitent
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(184241, {	-- Stone-Sentinel Breaker
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(179577, {	-- Stonesnap Mandibles
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(180023, {	-- Wand of Arboreal Artifice
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

MEMORY_OF_A_VITAL_SACRIFICE.customCollect = nil;

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(NIGHT_FAE,  bubbleDown({ ["customCollect"] = "SL_COV_NFA" }, {
		q(61901),	-- unlocking Faewoven Regalia/Oakheart Raiment sets (TransmogSetID 2047/2051, Faewoven/Oakheart items)
		q(61907),	-- unlocking Night Courtier's Regalia set (TransmogSetID 2048, Night Courtier's cloth items)
		q(61906),	-- unlocking Night Courtier's Raiment set (TransmogSetID 2054, Night Courtier's leather items)
		q(61902),	-- unlocking Runewarden's Guise set (TransmogSetID 2055, Runewarden's items)
		q(61905),	-- unlocking Night Courtier's Guise set (TransmogSetID 2057, Night Courtier's mail items)
		q(61903),	-- unlocking Queensguard Warbark set (TransmogSetID 2059, Queensguard items)
		q(61904),	-- unlocking Night Courtier's Warbark set (TransmogSetID 2060, Night Courtier's plate items)
		q(62410),	-- unlocking Night Courtier's Bulb
		q(62412),	-- unlocking Night Courtier's Pack
	})),
})));