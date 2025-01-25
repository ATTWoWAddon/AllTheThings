-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local CHRONICLE_OF_LOST_MEMORIES = i(184665, {	-- Chronicle of Lost Memories
	["sym"] = {
		{ "select", "headerID", LEGENDARIES },	-- Legendary header
		{ "extract", "runeforgepowerID" },	-- extract all Legendaries into a direct list
		{ "exclude", "itemID",
			190584,	-- Memory of Unity (DK)
			190587,	-- Memory of Unity (DH)
			190588,	-- Memory of Unity (DRUID)
			199552,	-- Memory of Unity (EVOKER)
			190589,	-- Memory of Unity (HUNTER)
			190590,	-- Memory of Unity (MAGE)
			190591,	-- Memory of Unity (MONK)
			190592,	-- Memory of Unity (PALADIN)
			190593,	-- Memory of Unity (PRIEST)
			190594,	-- Memory of Unity (ROGUE)
			190595,	-- Memory of Unity (SHAMAN)
			190596,	-- Memory of Unity (WARLOCK)
			190598,	-- Memory of Unity (WARRIOR)
		},
	},
	["cost"] = {
		{ "c", GRATEFUL, 35 },
	},
});
local MEMORY_OF_A_VITAL_SACRIFICE = i(183249, {	-- Memory of a Vital Sacrifice
	["cost"] = { { "c", ANIMA, 250 } },	-- 250x Reservoir Anima
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_KYR" }, {
	n(KYRIAN, {
		n(REWARDS, {
			i(183701, {	-- Cleansing Rite Materials
				["description"] = "Only Obtainable via Pelagos Soulbind.",
			}),
		}),
		n(VENDORS, {
			n(174937, {	-- Adjutant Galos <Renown Quartermaster>
				["coord"] = { 63.3, 30.6, SANCTUM_OF_BINDING },
				["g"] = {
					i(186485, {	-- Ascendant's Aquilon (MOUNT!)
						["cost"] = { { "c", ANIMA, 7500 } },
					}),
					CHRONICLE_OF_LOST_MEMORIES,
					i(180762, {	-- Phalynx of Humility (MOUNT!)
						["cost"] = {
							{ "c", ANIMA, 5000 },
							{ "c", GRATEFUL, 100 },
						},
					}),
					i(180764, {	-- Phalynx of Purity (MOUNT!)
						["cost"] = { { "c", ANIMA, 5000 } },
					}),
					i(184353, {	-- Kyrian Hearthstone (TOY!)
						["cost"] = { { "c", ANIMA, 750 } },
					}),
					i(184350, {	-- Ruffle (PET!)
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(184352, {	-- Illusion: Transcendent Soul (ILLUSION!)
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					MEMORY_OF_A_VITAL_SACRIFICE,
					iensemble(186516, {	-- Ensemble: Devoted Aspirant's Regalia
						["cost"] = { { "c", ANIMA, 10000 } },
					}),
					i(181288, {	-- Halo of the Harmonious
						["cost"] = { { "c", ANIMA, 3500 } },
					}),
					i(177197, {	-- Harmonious Bearer's Chestplate
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(177220, {	-- Harmonious Bearer's Cloak
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(177199, {	-- Harmonious Bearer's Gauntlets
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(177202, {	-- Harmonious Bearer's Girdle
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(184545, {	-- Harmonious Bearer's Halberd
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(177196, {	-- Harmonious Bearer's Helm
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(177200, {	-- Harmonious Bearer's Legguards
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(177864, {	-- Harmonious Bearer's Poniard
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(177201, {	-- Harmonious Bearer's Shoulders
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(177198, {	-- Harmonious Bearer's Warboots
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(184240, {	-- Harmonious Bearer's Warglaive
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(177203, {	-- Harmonious Bearer's Wristwraps
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(184541, {	-- Harmonious Collector's Battleaxe
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(174314, {	-- Harmonious Collector's Bulwark
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(177667, {	-- Harmonious Collector's Chestplate
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(177674, {	-- Harmonious Collector's Cloak
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(177669, {	-- Harmonious Collector's Gauntlets
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(177672, {	-- Harmonious Collector's Girdle
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(180316, {	-- Harmonious Collector's Greatmaul
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(177666, {	-- Harmonious Collector's Helm
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(177848, {	-- Harmonious Collector's Kopis
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(177670, {	-- Harmonious Collector's Legguards
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(177671, {	-- Harmonious Collector's Shoulders
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(177668, {	-- Harmonious Collector's Warboots
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(177673, {	-- Harmonious Collector's Wristwraps
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(179955, {	-- Harmonious Forgelite's Belt
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(184542, {	-- Harmonious Forgelite's Blade
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(179950, {	-- Harmonious Forgelite's Boots
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(177859, {	-- Harmonious Forgelite's Bow
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(179953, {	-- Harmonious Forgelite's Breeches
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(174303, {	-- Harmonious Forgelite's Carver
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(179957, {	-- Harmonious Forgelite's Cloak
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(179951, {	-- Harmonious Forgelite's Gloves
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(179952, {	-- Harmonious Forgelite's Helm
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(179954, {	-- Harmonious Forgelite's Spaulders
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(179949, {	-- Harmonious Forgelite's Vest
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(179956, {	-- Harmonious Forgelite's Wristwraps
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(184543, {	-- Harmonious Watcher's Barb
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(178180, {	-- Harmonious Watcher's Chestplate
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(178187, {	-- Harmonious Watcher's Cloak
						["cost"] = {
							{ "c", ANIMA, 1500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(178182, {	-- Harmonious Watcher's Gauntlets
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(178185, {	-- Harmonious Watcher's Girdle
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(177869, {	-- Harmonious Watcher's Guiding Light
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(178179, {	-- Harmonious Watcher's Helm
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(178183, {	-- Harmonious Watcher's Legguards
						["cost"] = {
							{ "c", ANIMA, 3000 },
							{ "c", GRATEFUL, 25 },
						},
					}),
					i(178184, {	-- Harmonious Watcher's Shoulders
						["cost"] = {
							{ "c", ANIMA, 4000 },
							{ "c", GRATEFUL, 30 },
						},
					}),
					i(177854, {	-- Harmonious Watcher's Spellsword
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(178974, {	-- Harmonious Watcher's Vesperstaff
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 50 },
						},
					}),
					i(178181, {	-- Harmonious Watcher's Warboots
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(178186, {	-- Harmonious Watcher's Wristwraps
						["cost"] = {
							{ "c", ANIMA, 2000 },
							{ "c", GRATEFUL, 15 },
						},
					}),
					i(181294, {	-- Harmonious Wings of the Ascended
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 40 },
						},
					}),
				},
			}),
			n(175521, {	-- Alisius <Normal Nathrian Weaponsmith>
				["coord"] = { 56.1, 84.5, ARCHONS_RISE },
				["g"] = bubbleDown({ ["modID"] = 3 }, {	-- Normal
					i(177872, {	-- Archon's Guiding Glaive
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(184272, {	-- Ascended Gladius of Glory
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(175254, {	-- Burning Beacon of Hope
						["cost"] = {
							{ "i", modItemId(183888,03), 1 },	-- Normal Apogee Anima Bead - 200
							{ "i", modItemId(183889,03), 1 },	-- Normal Thaumaturgic Anima Bead - 200
						},
					}),
					i(174315, {	-- Chyrus's Crest of Hope
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183895,82), 1 },	-- Normal Apogee Anima Bead - 207
							{ "i", modItemId(183894,82), 1 },	-- Normal Thaumaturgic Anima Bead - 207
						},
					}),
					i(184270, {	-- Disciple's Peacebound Poniard
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(174298, {	-- Dutiful Disciple's Cleaver
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(174310, {	-- Elysian Sentinel's Aegis
						["cost"] = {
							{ "i", modItemId(183888,03), 1 },	-- Normal Apogee Anima Bead - 200
							{ "i", modItemId(183889,03), 1 },	-- Normal Thaumaturgic Anima Bead - 200
						},
					}),
					i(177865, {	-- Faithful Sidearm
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(175251, {	-- Forked Blade of Fortitude
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(180312, {	-- Guarding Cudgel of the Goliath
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(174302, {	-- Labrys of the Loyal Larion
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(175279, {	-- Lost Soul Xiphos
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(177850, {	-- Meditation's Muse
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(184230, {	-- Pike of the Honored Peltast
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(180315, {	-- Polemarch's Scepter of Faith
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(184243, {	-- Praetorian Wingblade
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(184273, {	-- Puremind Piercer
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(184274, {	-- Reaver of Renewed Resolve
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(184275, {	-- Sacred Sparrer's Edge
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(177860, {	-- Silvered Recurve of Reconciliation
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(177849, {	-- Soulbearer's Blade of Salvation
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(177855, {	-- Spellblade of Antiquity
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(178973, {	-- Symphonic Chimekeeper
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(177870, {	-- Thenios's Beacon of Foresight
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183895,82), 1 },	-- Normal Apogee Anima Bead - 207
							{ "i", modItemId(183894,82), 1 },	-- Normal Thaumaturgic Anima Bead - 207
						},
					}),
					i(176098, {	-- Truthseeker Longbow
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(178975, {	-- Vesiphone's Vesper of Reflection
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
					i(184236, {	-- Warglaive of Devoted Might
						["cost"] = {
							{ "i", modItemId(183893,03), 1 },	-- Normal Abominable Anima Spherule - 200
							{ "i", modItemId(183892,03), 1 },	-- Normal Mystic Anima Spherule - 200
							{ "i", modItemId(183891,03), 1 },	-- Normal Venerated Anima Spherule - 200
							{ "i", modItemId(183890,03), 1 },	-- Normal Zenith Anima Spherule - 200
						},
					}),
					i(184271, {	-- Xandria's Kopis of Courage
						["modID"] = 82,
						["cost"] = {
							{ "i", modItemId(183896,82), 1 },	-- Normal Abominable Anima Spherule - 207
							{ "i", modItemId(183897,82), 1 },	-- Normal Mystic Anima Spherule - 207
							{ "i", modItemId(183898,82), 1 },	-- Normal Venerated Anima Spherule - 207
							{ "i", modItemId(183899,82), 1 },	-- Normal Zenith Anima Spherule - 207
						},
					}),
				}),
			}),
			n(175524, {	-- Battlemaster Endios <Mythic Nathrian Weaponsmith>
				["coord"] = { 58.0, 81.4, ARCHONS_RISE },
				["g"] = bubbleDown({ ["modID"] = 6 }, {	-- Mythic
					i(177872, {	-- Archon's Guiding Glaive
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(184272, {	-- Ascended Gladius of Glory
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(175254, {	-- Burning Beacon of Hope
						["cost"] = {
							{ "i", modItemId(183888,06), 1 },	-- Mythic Apogee Anima Bead - 226
							{ "i", modItemId(183889,06), 1 },	-- Mythic Thaumaturgic Anima Bead - 226
						},
					}),
					i(174315, {	-- Chyrus's Crest of Hope
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183895,85), 1 },	-- Mythic Apogee Anima Bead - 233
							{ "i", modItemId(183894,85), 1 },	-- Mythic Thaumaturgic Anima Bead - 233
						},
					}),
					i(184270, {	-- Disciple's Peacebound Poniard
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(174298, {	-- Dutiful Disciple's Cleaver
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(174310, {	-- Elysian Sentinel's Aegis
						["cost"] = {
							{ "i", modItemId(183888,06), 1 },	-- Mythic Apogee Anima Bead - 226
							{ "i", modItemId(183889,06), 1 },	-- Mythic Thaumaturgic Anima Bead - 226
						},
					}),
					i(177865, {	-- Faithful Sidearm
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(175251, {	-- Forked Blade of Fortitude
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(180312, {	-- Guarding Cudgel of the Goliath
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(174302, {	-- Labrys of the Loyal Larion
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(175279, {	-- Lost Soul Xiphos
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(177850, {	-- Meditation's Muse
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(184230, {	-- Pike of the Honored Peltast
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(180315, {	-- Polemarch's Scepter of Faith
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(184243, {	-- Praetorian Wingblade
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(184273, {	-- Puremind Piercer
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(184274, {	-- Reaver of Renewed Resolve
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(184275, {	-- Sacred Sparrer's Edge
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(177860, {	-- Silvered Recurve of Reconciliation
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(177849, {	-- Soulbearer's Blade of Salvation
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(177855, {	-- Spellblade of Antiquity
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(178973, {	-- Symphonic Chimekeeper
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(177870, {	-- Thenios's Beacon of Foresight
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183895,85), 1 },	-- Mythic Apogee Anima Bead - 233
							{ "i", modItemId(183894,85), 1 },	-- Mythic Thaumaturgic Anima Bead - 233
						},
					}),
					i(176098, {	-- Truthseeker Longbow
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(178975, {	-- Vesiphone's Vesper of Reflection
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
					i(184236, {	-- Warglaive of Devoted Might
						["cost"] = {
							{ "i", modItemId(183893,06), 1 },	-- Mythic Abominable Anima Spherule - 226
							{ "i", modItemId(183892,06), 1 },	-- Mythic Mystic Anima Spherule - 226
							{ "i", modItemId(183891,06), 1 },	-- Mythic Venerated Anima Spherule - 226
							{ "i", modItemId(183890,06), 1 },	-- Mythic Zenith Anima Spherule - 226
						},
					}),
					i(184271, {	-- Xandria's Kopis of Courage
						["modID"] = 85,
						["cost"] = {
							{ "i", modItemId(183896,85), 1 },	-- Mythic Abominable Anima Spherule - 233
							{ "i", modItemId(183897,85), 1 },	-- Mythic Mystic Anima Spherule - 233
							{ "i", modItemId(183898,85), 1 },	-- Mythic Venerated Anima Spherule - 233
							{ "i", modItemId(183899,85), 1 },	-- Mythic Zenith Anima Spherule - 233
						},
					}),
				}),
			}),
			n(175823, {	-- Forgelite Neptira <Kyrian Armorsmith>
				["coord"] = { 56.9, 30.9, SANCTUM_OF_BINDING },
				["sym"] = { { "select", "itemID",
					-- These items are only purchasable after you complete the covenant campaign.
					-- Doing the Campaign also rewards all those items, so no need to list 2 sources per item.
					178155,	-- Selfless Watcher's Warboots
					177058,	-- Selfless Bearer's Cloak
					177053,	-- Selfless Bearer's Hands
					177050,	-- Selfless Bearer's Head
					177054,	-- Selfless Bearer's Legs
					177055,	-- Selfless Bearer's Shoulders
					177056,	-- Selfless Bearer's Waist
					177057,	-- Selfless Bearer's Wrists
					174292,	-- Selfless Collector's Gauntlets
					174295,	-- Selfless Collector's Girdle
					174297,	-- Selfless Collector's Greatcloak
					174289,	-- Selfless Collector's GreatHelm
					174293,	-- Selfless Collector's Legguards
					174294,	-- Selfless Collector's Spaulders
					174296,	-- Selfless Collector's Wristguards
					179946,	-- Selfless Forgelite's Belt
					179944,	-- Selfless Forgelite's Breeches
					179948,	-- Selfless Forgelite's Drape
					179942,	-- Selfless Forgelite's Gloves
					179943,	-- Selfless Forgelite's Helm
					179945,	-- Selfless Forgelite's Spaulders
					179947,	-- Selfless Forgelite's Wristwraps
					178161,	-- Selfless Watcher's Cloak
					178156,	-- Selfless Watcher's Gauntlets
					178159,	-- Selfless Watcher's Girdle
					178153,	-- Selfless Watcher's Helm
					178157,	-- Selfless Watcher's Legguards
					178158,	-- Selfless Watcher's Shoulders
					178160,	-- Selfless Watcher's Wristwraps
				}},
				["g"] = {
					i(175248, {	-- Selfless Bearer's Blade
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(177051, {	-- Selfless Bearer's Chest
						["cost"] = { { "c", ANIMA, 250 } },
					}),
					i(177052, {	-- Selfless Bearer's Feet
						["cost"] = { { "c", ANIMA, 250 } },
					}),
					i(174301, {	-- Selfless Bearer's Labrys
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(184239, {	-- Selfless Bearer's Warglaive
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(177868, {	-- Selfless Bearer's Waylight
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(174290, {	-- Selfless Collector's Chestplate
						["cost"] = { { "c", ANIMA, 250 } },
					}),
					i(180311, {	-- Selfless Collector's Cudgel
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(175249, {	-- Selfless Collector's Javelin
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(174291, {	-- Selfless Collector's Warboots
						["cost"] = { { "c", ANIMA, 250 } },
					}),
					i(174313, {	-- Selfless Collector's Ward
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(179941, {	-- Selfless Forgelite's Boots
						["cost"] = { { "c", ANIMA, 250 } },
					}),
					i(184537, {	-- Selfless Forgelite's Falchion
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(184535, {	-- Selfless Forgelite's Hatchet
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(177858, {	-- Selfless Forgelite's Longbow
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(179940, {	-- Selfless Forgelite's Vest
						["cost"] = { { "c", ANIMA, 250 } },
					}),
					i(178154, {	-- Selfless Watcher's Chestplate
						["cost"] = { { "c", ANIMA, 250 } },
					}),
					i(184536, {	-- Selfless Watcher's Edge
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(177863, {	-- Selfless Watcher's Sidearm
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(177853, {	-- Selfless Watcher's Spellsword
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
					i(178970, {	-- Selfless Watcher's Spire
						["cost"] = {
							{ "c", ANIMA, 3500 },
							{ "c", GRATEFUL, 10 },
						},
					}),
				},
			}),
			n(175522, {	-- Kelli Hoo <Raid Finder Nathrian Weaponsmith>
				["coord"] = { 55.0, 82.9, ARCHONS_RISE },
				["g"] = bubbleDown({ ["modID"] = 4 }, {	-- LFR
					i(177872, {	-- Archon's Guiding Glaive
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(184272, {	-- Ascended Gladius of Glory
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(175254, {	-- Burning Beacon of Hope
						["cost"] = {
							{ "i", modItemId(183888,04), 1 },	-- LFR Apogee Anima Bead - 187
							{ "i", modItemId(183889,04), 1 },	-- LFR Thaumaturgic Anima Bead - 187
						},
					}),
					i(174315, {	-- Chyrus's Crest of Hope
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183895,04), 1 },	-- LFR Apogee Anima Bead - 194
							{ "i", modItemId(183894,04), 1 },	-- LFR Thaumaturgic Anima Bead - 194
						},
					}),
					i(184270, {	-- Disciple's Peacebound Poniard
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(174298, {	-- Dutiful Disciple's Cleaver
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(174310, {	-- Elysian Sentinel's Aegis
						["cost"] = {
							{ "i", modItemId(183888,04), 1 },	-- LFR Apogee Anima Bead - 187
							{ "i", modItemId(183889,04), 1 },	-- LFR Thaumaturgic Anima Bead - 187
						},
					}),
					i(177865, {	-- Faithful Sidearm
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(175251, {	-- Forked Blade of Fortitude
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(180312, {	-- Guarding Cudgel of the Goliath
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(174302, {	-- Labrys of the Loyal Larion
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(175279, {	-- Lost Soul Xiphos
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(177850, {	-- Meditation's Muse
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(184230, {	-- Pike of the Honored Peltast
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(180315, {	-- Polemarch's Scepter of Faith
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(184243, {	-- Praetorian Wingblade
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(184273, {	-- Puremind Piercer
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(184274, {	-- Reaver of Renewed Resolve
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(184275, {	-- Sacred Sparrer's Edge
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(177860, {	-- Silvered Recurve of Reconciliation
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(177849, {	-- Soulbearer's Blade of Salvation
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(177855, {	-- Spellblade of Antiquity
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(178973, {	-- Symphonic Chimekeeper
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(177870, {	-- Thenios's Beacon of Foresight
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183895,04), 1 },	-- LFR Apogee Anima Bead - 194
							{ "i", modItemId(183894,04), 1 },	-- LFR Thaumaturgic Anima Bead - 194
						},
					}),
					i(176098, {	-- Truthseeker Longbow
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(178975, {	-- Vesiphone's Vesper of Reflection
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
					i(184236, {	-- Warglaive of Devoted Might
						["cost"] = {
							{ "i", modItemId(183893,04), 1 },	-- LFR Abominable Anima Spherule - 187
							{ "i", modItemId(183892,04), 1 },	-- LFR Mystic Anima Spherule - 187
							{ "i", modItemId(183891,04), 1 },	-- LFR Venerated Anima Spherule - 187
							{ "i", modItemId(183890,04), 1 },	-- LFR Zenith Anima Spherule - 187
						},
					}),
					i(184271, {	-- Xandria's Kopis of Courage
						["modID"] = 83,
						["cost"] = {
							{ "i", modItemId(183896,83), 1 },	-- LFR Abominable Anima Spherule - 194
							{ "i", modItemId(183897,83), 1 },	-- LFR Mystic Anima Spherule - 194
							{ "i", modItemId(183898,83), 1 },	-- LFR Venerated Anima Spherule - 194
							{ "i", modItemId(183899,83), 1 },	-- LFR Zenith Anima Spherule - 194
						},
					}),
				}),
			}),
			n(175523, {	-- Provisioner Prothos <Heroic Nathrian Weaponsmith>
				["coord"] = { 57.0, 79.8, ARCHONS_RISE },
				["g"] = bubbleDown({ ["modID"] = 5 }, {	-- Heroic
					i(177872, {	-- Archon's Guiding Glaive
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(184272, {	-- Ascended Gladius of Glory
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(175254, {	-- Burning Beacon of Hope
						["cost"] = {
							{ "i", modItemId(183888,05), 1 },	-- Heroic Apogee Anima Bead - 213
							{ "i", modItemId(183889,05), 1 },	-- Heroic Thaumaturgic Anima Bead - 213
						},
					}),
					i(174315, {	-- Chyrus's Crest of Hope
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183895,84), 1 },	-- Heroic Apogee Anima Bead - 220
							{ "i", modItemId(183894,84), 1 },	-- Heroic Thaumaturgic Anima Bead - 220
						},
					}),
					i(184270, {	-- Disciple's Peacebound Poniard
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(174298, {	-- Dutiful Disciple's Cleaver
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(174310, {	-- Elysian Sentinel's Aegis
						["cost"] = {
							{ "i", modItemId(183888,05), 1 },	-- Heroic Apogee Anima Bead - 213
							{ "i", modItemId(183889,05), 1 },	-- Heroic Thaumaturgic Anima Bead - 213
						},
					}),
					i(177865, {	-- Faithful Sidearm
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(175251, {	-- Forked Blade of Fortitude
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(180312, {	-- Guarding Cudgel of the Goliath
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(174302, {	-- Labrys of the Loyal Larion
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(175279, {	-- Lost Soul Xiphos
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(177850, {	-- Meditation's Muse
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(184230, {	-- Pike of the Honored Peltast
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(180315, {	-- Polemarch's Scepter of Faith
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(184243, {	-- Praetorian Wingblade
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(184273, {	-- Puremind Piercer
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(184274, {	-- Reaver of Renewed Resolve
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(184275, {	-- Sacred Sparrer's Edge
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(177860, {	-- Silvered Recurve of Reconciliation
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(177849, {	-- Soulbearer's Blade of Salvation
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(177855, {	-- Spellblade of Antiquity
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(178973, {	-- Symphonic Chimekeeper
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(177870, {	-- Thenios's Beacon of Foresight
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183895,84), 1 },	-- Heroic Apogee Anima Bead - 220
							{ "i", modItemId(183894,84), 1 },	-- Heroic Thaumaturgic Anima Bead - 220
						},
					}),
					i(176098, {	-- Truthseeker Longbow
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(178975, {	-- Vesiphone's Vesper of Reflection
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
						},
					}),
					i(184236, {	-- Warglaive of Devoted Might
						["cost"] = {
							{ "i", modItemId(183893,05), 1 },	-- Heroic Abominable Anima Spherule - 213
							{ "i", modItemId(183892,05), 1 },	-- Heroic Mystic Anima Spherule - 213
							{ "i", modItemId(183891,05), 1 },	-- Heroic Venerated Anima Spherule - 213
							{ "i", modItemId(183890,05), 1 },	-- Heroic Zenith Anima Spherule - 213
						},
					}),
					i(184271, {	-- Xandria's Kopis of Courage
						["modID"] = 84,
						["cost"] = {
							{ "i", modItemId(183896,84), 1 },	-- Heroic Abominable Anima Spherule - 220
							{ "i", modItemId(183897,84), 1 },	-- Heroic Mystic Anima Spherule - 220
							{ "i", modItemId(183898,84), 1 },	-- Heroic Venerated Anima Spherule - 220
							{ "i", modItemId(183899,84), 1 },	-- Heroic Zenith Anima Spherule - 220
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

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(KYRIAN, {
		n(VENDORS, {
			q(60595),	-- unlocking 12 Kyrian sets, no idea why they all have the same TrackingQuestID: https://wow.tools/dbc/?dbc=transmogset&build=9.1.5.40944#page=1&colFilter[3]=60595
		}),
	}),
})));