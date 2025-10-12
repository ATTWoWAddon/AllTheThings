---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
local function ClassicCost(cost)
	-- This data is provided by ReagentsDB in Retail
	-- #IF ANYCLASSIC
	return cost
	-- #ENDIF
end
local MAPS_FIELD = "maps"
-- #if RETAIL_STYLE_FILL_ENABLED
-- Filling allows users to 'chose' whether the Items dropped from Objects should show up in lists and potentially be Filled
MAPS_FIELD = "maps_disp"
-- #ENDIF
root(ROOTS.Craftables, expansion(EXPANSION.MOP, applyclassicphase(MOP_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	i(180055, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I
	i(180057, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II
	i(180058, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III
	i(180059, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV
	i(180060, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V
	prof(ALCHEMY, {
		n(DISCOVERY, {
			r(114774),	-- Darkwater Potion
			r(114761),	-- Desecrated Oil
			r(114763),	-- Elixir of Mirrors
			r(114764),	-- Elixir of Peace
			r(114762),	-- Elixir of Perfection
			r(114756),	-- Elixir of Weaponry
			r(114759),	-- Elixir of the Rapids
			r(114772),	-- Flask of Falling Leaves
			r(114769),	-- Flask of Spring Blossoms
			r(114770),	-- Flask of the Earth
			r(114771),	-- Flask of the Warm Sun
			r(114773),	-- Flask of Winter's Bite
			r(114754),	-- Mad Hozen Elixir
			r(114755),	-- Mantid Elixir
			r(114775),	-- Master Mana Potion
			r(114758),	-- Monk's Elixir
			r(114782),	-- Potion of Focus
			r(114760),	-- Potion of Mogu Power
			r(114779),	-- Potion of Luck
			r(114757),	-- Potion of the Jade Serpent
			r(114753),	-- Potion of the Mountains
			r(130326),	-- Riddle of Steel
			r(114777),	-- Transmute: Imperial Amethyst
			r(114780),	-- Transmute: Living Steel
			r(114781),	-- Transmute: Primal Diamond
			r(114784),	-- Transmute: Primordial Ruby
			r(114766),	-- Transmute: River's Heart
			r(114778),	-- Transmute: Sun's Radiance
			r(114783),	-- Transmute: Trillium Bar
			r(114776),	-- Transmute: Vermilion Onyx
			r(114767),	-- Transmute: Wild Jade
			r(114765),	-- Virmen's Bite
		}),
		filter(CONSUMABLES, {
			i(76094),	-- Alchemist's Rejuvenation
			i(76096),	-- Darkwater Potion
			i(76081),	-- Elixir of Mirrors
			i(76079),	-- Elixir of Peace
			i(76080),	-- Elixir of Perfection
			i(76077),	-- Elixir of Weaponry
			i(76078),	-- Elixir of the Rapids
			i(76086),	-- Flask of Falling Leaves
			i(76084),	-- Flask of Spring Blossoms
			i(76087),	-- Flask of the Earth
			i(76085),	-- Flask of the Warm Sun
			i(76088),	-- Flask of Winter's Bite
			i(76091, {["timeline"] = {ADDED_5_0_4, REMOVED_5_1_0}}),	-- Greater Potion of Luck[5.1.0+] // Potion of Luck
			i(76076),	-- Mad Hozen Elixir
			i(76075),	-- Mantid Elixir
			i(76097),	-- Master Healing Potion
			i(76098),	-- Master Mana Potion
			i(76083),	-- Monk's Elixir
			i(76092),	-- Potion of Focus
			i(76095),	-- Potion of Mogu Power
			i(93351, {["timeline"] = {ADDED_5_1_0}}),	-- Potion of Luck
			i(76093),	-- Potion of the Jade Serpent
			i(76090),	-- Potion of the Mountains
			i(76089),	-- Virmen's Bite
			-- #if ANYCLASSIC
			i(247802, {["timeline"] = { ADDED_5_5_0 }}),	-- Venerable Potion of Invisibility
			-- #endif
		}),
		filter(REAGENTS, {
			i(87872),	-- Desecrated Oil
			i(76141),	-- Imperial Amethyst
			i(72104),	-- Living Steel
			i(76132),	-- Primal Diamond
			i(76131),	-- Primordial Ruby
			i(76138),	-- River's Heart
			i(76142),	-- Sun's Radiance
			i(72095),	-- Trillium Bar
			i(76140),	-- Vermilion Onyx
			i(76139),	-- Wild Jade
		}),
		filter(TRINKET_F, {
			i(75274, {["timeline"] = {ADDED_5_2_0}}),	-- Zen Alchemist Stone
		}),
	}),
	prof(ARCHAEOLOGY, {
		i(95373, {["timeline"] = {ADDED_5_2_0}}),	-- Mantid Amber Sliver
		i(79869),	-- Mogu Statue Piece
		i(79868),	-- Pandaren Pottery Shard
		i(87399),	-- Restored Artifact
		header(HEADERS.Currency, ARCH_CURRENCY_MANTID, {
			["provider"] = { "o", 218950 },	-- Mantid Archaeology Find
			["maps"] = { TOWNLONG_STEPPES, DREAD_WASTES },
			["timeline"] = { ADDED_5_2_0 },
			["groups"] = {
				i(95376, {["cost"]={{"c",ARCH_CURRENCY_MANTID,50}}}),	-- Ancient Sap Feeder
				i(95375, {["cost"]={{"c",ARCH_CURRENCY_MANTID,50}}}),	-- Banner of the Mantid Empire
				i(95378, {["cost"]={{"c",ARCH_CURRENCY_MANTID,50}}}),	-- Inert Sound Beacon
				i(95382, {["cost"]={{"c",ARCH_CURRENCY_MANTID,50}}}),	-- Kypari Sap Container
				i(95380, {["cost"]={{"c",ARCH_CURRENCY_MANTID,50}}}),	-- Mantid Lamp
				i(95391, {["cost"]={{"c",ARCH_CURRENCY_MANTID,180}}}),	-- Mantid Sky Reaver
				i(95381, {["cost"]={{"c",ARCH_CURRENCY_MANTID,50}}}),	-- Pollen Collector
				i(95383, {["cost"]={{"c",ARCH_CURRENCY_MANTID,50}}}),	-- Pristine Banner of the Mantid Empire
				i(95384, {["cost"]={{"c",ARCH_CURRENCY_MANTID,50}}}),	-- Pristine Ancient Sap Feeder
				i(95385, {["cost"]={{"c",ARCH_CURRENCY_MANTID,50}}}),	-- Pristine Praying Mantid
				i(95386, {["cost"]={{"c",ARCH_CURRENCY_MANTID,50}}}),	-- Pristine Sound Beacon
				i(95387, {["cost"]={{"c",ARCH_CURRENCY_MANTID,50}}}),	-- Pristine Remains of a Paragon
				i(95388, {["cost"]={{"c",ARCH_CURRENCY_MANTID,50}}}),	-- Pristine Mantid Lamp
				i(95389, {["cost"]={{"c",ARCH_CURRENCY_MANTID,50}}}),	-- Pristine Pollen Collector
				i(95390, {["cost"]={{"c",ARCH_CURRENCY_MANTID,50}}}),	-- Pristine Kypari Sap Container
				i(95379, {["cost"]={{"c",ARCH_CURRENCY_MANTID,50}}}),	-- Remains of a Paragon
				i(95392, {["cost"]={{"c",ARCH_CURRENCY_MANTID,180}}}),	-- Sonic Pulse Generator
				i(95377, {["cost"]={{"c",ARCH_CURRENCY_MANTID,50}}}),	-- The Praying Mantid
			},
		}),
		header(HEADERS.Currency, ARCH_CURRENCY_MOGU, {
			["provider"] = { "o", 211174 },	-- Mogu Archaeology Find
			["maps"] = {
				DREAD_WASTES,
				KRASARANG_WILDS,
				KUN_LAI_SUMMIT,
				THE_JADE_FOREST,
				THE_VEILED_STAIR,
				TOWNLONG_STEPPES,
				VALE_OF_ETERNAL_BLOSSOMS,
				VALLEY_OF_THE_FOUR_WINDS,
			},
			["groups"] = {
				i(89614, {["cost"]={{"c",ARCH_CURRENCY_MOGU,180}}}),	-- Anatomical Dummy (TOY!)
				i(79909, {["cost"]={{"c",ARCH_CURRENCY_MOGU,50}}}),	-- Cracked Mogu Runestone
				i(79913, {["cost"]={{"c",ARCH_CURRENCY_MOGU,60}}}),	-- Edicts of the Thunder King
				i(79914, {["cost"]={{"c",ARCH_CURRENCY_MOGU,50}}}),	-- Iron Amulet
				i(79908, {["cost"]={{"c",ARCH_CURRENCY_MOGU,50}}}),	-- Manacles of Rebellion
				i(79916, {["cost"]={{"c",ARCH_CURRENCY_MOGU,30}}}),	-- Mogu Coin
				i(79911, {["cost"]={{"c",ARCH_CURRENCY_MOGU,50}}}),	-- Petrified Bone Whip
				i(89176, {["cost"]={{"c",ARCH_CURRENCY_MOGU,50}}}),	-- Pristine Branding Iron
				i(89174, {["cost"]={{"c",ARCH_CURRENCY_MOGU,60}}}),	-- Pristine Edicts of the Thunder King
				i(89175, {["cost"]={{"c",ARCH_CURRENCY_MOGU,50}}}),	-- Pristine Iron Amulet
				i(89169, {["cost"]={{"c",ARCH_CURRENCY_MOGU,50}}}),	-- Pristine Manacles of Rebellion
				i(85477, {["cost"]={{"c",ARCH_CURRENCY_MOGU,30}}}),	-- Pristine Mogu Coin
				i(89170, {["cost"]={{"c",ARCH_CURRENCY_MOGU,50}}}),	-- Pristine Mogu Runestone
				i(89209, {["cost"]={{"c",ARCH_CURRENCY_MOGU,50}}}),	-- Pristine Monument Ledger
				i(89172, {["cost"]={{"c",ARCH_CURRENCY_MOGU,50}}}),	-- Pristine Petrified Bone Whip
				i(89171, {["cost"]={{"c",ARCH_CURRENCY_MOGU,50}}}),	-- Pristine Terracotta Arm
				i(89173, {["cost"]={{"c",ARCH_CURRENCY_MOGU,50}}}),	-- Pristine Thunder King Insignia
				i(89611, {["cost"]={{"c",ARCH_CURRENCY_MOGU,180}}}),	-- Quilen Statuette
				i(79910, {["cost"]={{"c",ARCH_CURRENCY_MOGU,50}}}),	-- Terracotta Arm
				i(79912, {["cost"]={{"c",ARCH_CURRENCY_MOGU,50}}}),	-- Thunder King Insignia
				i(79915, {["cost"]={{"c",ARCH_CURRENCY_MOGU,50}}}),	-- Warlord's Branding Iron
				i(79917, {["cost"]={{"c",ARCH_CURRENCY_MOGU,50}}}),	-- Worn Monument Ledger
			},
		}),
		header(HEADERS.Currency, ARCH_CURRENCY_PANDAREN, {
			["provider"] = { "o", 211163 },	-- Pandaren Archaeology Find
			["maps"] = {
				KRASARANG_WILDS,
				KUN_LAI_SUMMIT,
				THE_JADE_FOREST,
				TOWNLONG_STEPPES,
				VALE_OF_ETERNAL_BLOSSOMS,
				VALLEY_OF_THE_FOUR_WINDS,
			},
			["groups"] = {
				i(79903, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,50}}}),	-- Apothecary Tins
				i(79901, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,50}}}),	-- Carved Bronze Mirror
				i(79900, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,50}}}),	-- Empty Keg
				i(79902, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,50}}}),	-- Gold-Inlaid Figurine
				i(79897, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,40}}}),	-- Pandaren Game Board
				i(79896, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,50}}}),	-- Pandaren Tea Set
				i(79904, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,60}}}),	-- Pearl of Yu'lon
				i(89183, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,50}}}),	-- Pristine Apothecary Tins
				i(89181, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,50}}}),	-- Pristine Carved Brone Mirror
				i(89180, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,50}}}),	-- Pristine Empty Keg
				i(85558, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,50}}}),	-- Pristine Game Board
				i(89182, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,50}}}),	-- Pristine Gold-Inlaid Figurine
				i(85557, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,50}}}),	-- Pristine Pandaren Tea Set
				i(89184, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,60}}}),	-- Pristine Pearl of Yu'lon
				i(89185, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,50}}}),	-- Pristine Standard of Niuzao
				i(89178, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,50}}}),	-- Pristine Twin Stein Set
				i(89179, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,50}}}),	-- Pristine Walking Cane
				i(89685, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,180}}}),	-- Spear of Xuen
				i(79905, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,50}}}),	-- Standard of Niuzao
				i(79898, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,50}}}),	-- Twin Stein Set
				i(89684, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,180}}}),	-- Umbrella of Chi-Ji
				i(79899, {["cost"]={{"c",ARCH_CURRENCY_PANDAREN,50}}}),	-- Walking Cane
			},
		}),
	}),
	prof(BLACKSMITHING, {
		n(DISCOVERY, {
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, spell(143255, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0 } }, {	-- Balanced Trillium Ingot
				["cost"] = ClassicCost({{ "i", 72095, 1 }}),	-- 1x Trillium Bar
				["groups"] = {
					r(142959),	-- Avenger's Trillium Legplates
					r(142968),	-- Avenger's Trillium Waistplate
					r(142963),	-- Blessed Trillium Belt
					r(142954),	-- Blessed Trillium Greaves
					r(143189),	-- Crafted Malevolent Gladiator's Armplates of Alacrity
					r(143188),	-- Crafted Malevolent Gladiator's Armplates of Proficiency
					r(143195),	-- Crafted Malevolent Gladiator's Barrier
					r(143178),	-- Crafted Malevolent Gladiator's Bracers of Meditation
					r(143177),	-- Crafted Malevolent Gladiator's Bracers of Prowess
					r(143173),	-- Crafted Malevolent Gladiator's Clasp of Cruelty
					r(143174),	-- Crafted Malevolent Gladiator's Clasp of Meditation
					r(143163),	-- Crafted Malevolent Gladiator's Dreadplate Chestpiece
					r(143164),	-- Crafted Malevolent Gladiator's Dreadplate Gauntlets
					r(143165),	-- Crafted Malevolent Gladiator's Dreadplate Helm
					r(143166),	-- Crafted Malevolent Gladiator's Dreadplate Legguards
					r(143167),	-- Crafted Malevolent Gladiator's Dreadplate Shoulders
					r(143184),	-- Crafted Malevolent Gladiator's Girdle of Accuracy
					r(143185),	-- Crafted Malevolent Gladiator's Girdle of Prowess
					r(143175),	-- Crafted Malevolent Gladiator's Greaves of Alacrity
					r(143176),	-- Crafted Malevolent Gladiator's Greaves of Meditation
					r(143179),	-- Crafted Malevolent Gladiator's Ornamented Chestguard
					r(143181),	-- Crafted Malevolent Gladiator's Ornamented Headcover
					r(143180),	-- Crafted Malevolent Gladiator's Ornamented Gloves
					r(143182),	-- Crafted Malevolent Gladiator's Ornamented Legplates
					r(143183),	-- Crafted Malevolent Gladiator's Ornamented Spaulders
					r(143190),	-- Crafted Malevolent Gladiator's Plate Chestpiece
					r(143191),	-- Crafted Malevolent Gladiator's Plate Gauntlets
					r(143192),	-- Crafted Malevolent Gladiator's Plate Helm
					r(143193),	-- Crafted Malevolent Gladiator's Plate Legguards
					r(143194),	-- Crafted Malevolent Gladiator's Plate Shoulders
					r(143196),	-- Crafted Malevolent Gladiator's Redoubt
					r(143168),	-- Crafted Malevolent Gladiator's Scaled Chestpiece
					r(143169),	-- Crafted Malevolent Gladiator's Scaled Gauntlets
					r(143170),	-- Crafted Malevolent Gladiator's Scaled Helm
					r(143171),	-- Crafted Malevolent Gladiator's Scaled Legguards
					r(143172),	-- Crafted Malevolent Gladiator's Scaled Shoulders
					r(143197),	-- Crafted Malevolent Gladiator's Shield Wall
					r(143187),	-- Crafted Malevolent Gladiator's Warboots of Alacrity
					r(143186),	-- Crafted Malevolent Gladiator's Warboots of Cruelty
					r(142958),	-- Protector's Trillium Legguards
					r(142967),	-- Protector's Trillium Waistguard
				},
			}))),
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, spell(138646, bubbleDownSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Lightning Steel Ingot
				["cost"] = ClassicCost({{ "i", 72096, 10 }}),	-- 10x Ghost Iron Bar
				["groups"] = {
					r(137792),	-- Crafted Dreadful Gladiator's Armplates of Alacrity
					r(137791),	-- Crafted Dreadful Gladiator's Armplates of Proficiency
					r(137781),	-- Crafted Dreadful Gladiator's Bracers of Meditation
					r(137780),	-- Crafted Dreadful Gladiator's Bracers of Prowess
					r(137776),	-- Crafted Dreadful Gladiator's Clasp of Cruelty
					r(137777),	-- Crafted Dreadful Gladiator's Clasp of Meditation
					r(140846),	-- Crafted Dreadful Gladiator's Dreadplate Chestpiece
					r(140845),	-- Crafted Dreadful Gladiator's Dreadplate Gauntlets
					r(140844),	-- Crafted Dreadful Gladiator's Dreadplate Helm
					r(140843),	-- Crafted Dreadful Gladiator's Dreadplate Legguards
					r(140842),	-- Crafted Dreadful Gladiator's Dreadplate Shoulders
					r(137787),	-- Crafted Dreadful Gladiator's Girdle of Accuracy
					r(137788),	-- Crafted Dreadful Gladiator's Girdle of Prowess
					r(137778),	-- Crafted Dreadful Gladiator's Greaves of Alacrity
					r(137779),	-- Crafted Dreadful Gladiator's Greaves of Meditation
					r(137782),	-- Crafted Dreadful Gladiator's Ornamented Chestguard
					r(137783),	-- Crafted Dreadful Gladiator's Ornamented Gloves
					r(137784),	-- Crafted Dreadful Gladiator's Ornamented Headcover
					r(137785),	-- Crafted Dreadful Gladiator's Ornamented Legplates
					r(137786),	-- Crafted Dreadful Gladiator's Ornamented Spaulders
					r(137793),	-- Crafted Dreadful Gladiator's Plate Chestpiece
					r(137794),	-- Crafted Dreadful Gladiator's Plate Gauntlets
					r(137795),	-- Crafted Dreadful Gladiator's Plate Helm
					r(137796),	-- Crafted Dreadful Gladiator's Plate Legguards
					r(137797),	-- Crafted Dreadful Gladiator's Plate Shoulders
					r(140841),	-- Crafted Dreadful Gladiator's Scaled Chestpiece
					r(137772),	-- Crafted Dreadful Gladiator's Scaled Gauntlets
					r(137773),	-- Crafted Dreadful Gladiator's Scaled Helm
					r(137774),	-- Crafted Dreadful Gladiator's Scaled Legguards
					r(137775),	-- Crafted Dreadful Gladiator's Scaled Shoulders
					r(137790),	-- Crafted Dreadful Gladiator's Warboots of Alacrity
					r(137789),	-- Crafted Dreadful Gladiator's Warboots of Cruelty
					r(137766),	-- Haunted Steel Greaves
					r(137769),	-- Haunted Steel Greathelm
					r(137767),	-- Haunted Steel Headcover
					r(137771),	-- Haunted Steel Headguard
					r(137768),	-- Haunted Steel Treads
					r(137770),	-- Haunted Steel Warboots
				},
			}))),
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, spell(138888, sharedDataSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Fireguard, Reborn
				r(138890),	-- Blazeguard, Reborn
			}))),
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, spell(138890, sharedDataSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Blazeguard, Reborn
				r(138892),	-- Blazefury, Reborn
			}))),
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, spell(138876, sharedDataSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- The Planar Edge, Reborn
				r(138878),	-- Black Planar Edge, Reborn
			}))),
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, spell(138878, sharedDataSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Black Planar Edge, Reborn
				r(138880),	-- Wicked Edge of the Planes, Reborn
			}))),
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, spell(138882, sharedDataSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Drakefist Hammer, Reborn
				r(138885),	-- Dragonmaw, Reborn
			}))),
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, spell(138885, sharedDataSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Dragonmaw, Reborn
				r(138886),	-- Dragonstrike, Reborn
			}))),
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, spell(138889, sharedDataSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Lionheart Blade, Reborn
				r(138891),	-- Lionheart Champion, Reborn
			}))),
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, spell(138891, sharedDataSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Lionheart Champion, Reborn
				r(138893),	-- Lionheart Executioner, Reborn
			}))),
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, spell(138877, sharedDataSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Lunar Crescent, Reborn
				r(138879),	-- Mooncleaver, Reborn
			}))),
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, spell(138879, sharedDataSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Mooncleaver, Reborn
				r(138881),	-- Bloodmoon, Reborn
			}))),
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, spell(138883, sharedDataSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Thunder, Reborn
				r(138884),	-- Deep Thunder, Reborn
			}))),
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, spell(138884, sharedDataSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Deep Thunder, Reborn
				r(138887),	-- Stormherald, Reborn
			}))),
		}),
		n(ARMOR, {
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98607, {["timeline"] = {ADDED_5_4_0}})),	-- Avenger's Trillium Legplates
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98616, {["timeline"] = {ADDED_5_4_0}})),	-- Avenger's Trillium Waistplate
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98611, {["timeline"] = {ADDED_5_4_0}})),	-- Blessed Trillium Belt
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98602, {["timeline"] = {ADDED_5_4_0}})),	-- Blessed Trillium Greaves
			i(87407),	-- Bloodforged Warfists
			i(82979),	-- Breastplate of Ancient Steel
			i(87403),	-- Chestplate of Limitless Faith
			i(82950),	-- Contender's Revenant Belt
			i(82949),	-- Contender's Revenant Boots
			i(82948),	-- Contender's Revenant Bracers
			i(82945),	-- Contender's Revenant Breastplate
			i(82946),	-- Contender's Revenant Gauntlets
			i(82943),	-- Contender's Revenant Helm
			i(82947),	-- Contender's Revenant Legplates
			i(82944),	-- Contender's Revenant Shoulders
			i(82958),	-- Contender's Spirit Belt
			i(82957),	-- Contender's Spirit Boots
			i(82956),	-- Contender's Spirit Bracers
			i(82953),	-- Contender's Spirit Breastplate
			i(82954),	-- Contender's Spirit Gauntlets
			i(82951),	-- Contender's Spirit Helm
			i(82955),	-- Contender's Spirit Legplates
			i(82952),	-- Contender's Spirit Shoulders
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93548, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Armplates of Alacrity
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93547, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Armplates of Proficiency
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93537, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Bracers of Meditation
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93536, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Bracers of Prowess
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93532, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Clasp of Cruelty
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93533, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Clasp of Meditation
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93453, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Dreadplate Chestpiece
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93454, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Dreadplate Gauntlets
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93455, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Dreadplate Helm
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93456, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Dreadplate Legguards
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93457, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Dreadplate Shoulders
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93543, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Girdle of Accuracy
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93544, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Girdle of Prowess
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93534, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Greaves of Alacrity
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93535, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Greaves of Meditation
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93538, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Ornamented Chestguard
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93539, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Ornamented Gloves
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93540, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Ornamented Headcover
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93541, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Ornamented Legplates
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93542, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Ornamented Spaulders
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93620, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Plate Chestpiece
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93621, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Plate Gauntlets
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93622, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Plate Helm
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93623, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Plate Legguards
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93624, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Plate Shoulders
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93527, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Scaled Chestpiece
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93528, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Scaled Gauntlets
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93529, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Scaled Helm
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93530, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Scaled Legguards
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93531, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Scaled Shoulders
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93546, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Warboots of Alacrity
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93545, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Warboots of Cruelty
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98864, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Armplates of Alacrity
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98863, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Armplates of Proficiency
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98853, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Bracers of Meditation
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98852, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Bracers of Prowess
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98848, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Clasp of Cruelty
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98849, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Clasp of Meditation
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98784, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Dreadplate Chestpiece
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98785, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Dreadplate Gauntlets
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98786, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Dreadplate Helm
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98787, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Dreadplate Legguards
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98788, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Dreadplate Shoulders
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98859, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Girdle of Accuracy
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98860, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Girdle of Prowess
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98850, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Greaves of Alacrity
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98851, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Greaves of Meditation
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98854, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Ornamented Chestguard
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98856, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Ornamented Headcover
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98855, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Ornamented Gloves
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98857, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Ornamented Legplates
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98858, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Ornamented Spaulders
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98926, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Plate Chestpiece
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98927, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Plate Gauntlets
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98928, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Plate Helm
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98929, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Plate Legguards
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98930, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Plate Shoulders
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98843, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Scaled Chestpiece
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98844, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Scaled Gauntlets
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98845, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Scaled Helm
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98846, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Scaled Legguards
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98847, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Scaled Shoulders
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98862, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Warboots of Alacrity
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98861, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Warboots of Cruelty
			i(82980),	-- Gauntlets of Ancient Steel
			i(87406),	-- Gauntlets of Battle Command
			i(87404),	-- Gauntlets of Unbound Devotion
			i(82975),	-- Ghost Reaver's Breastplate
			i(82976),	-- Ghost Reaver's Gauntlets
			i(82910),	-- Ghost-Forged Belt
			i(82934),	-- Ghost-Forged Belt
			i(82909),	-- Ghost-Forged Boots
			i(82933),	-- Ghost-Forged Boots
			i(82908),	-- Ghost-Forged Bracers
			i(82932),	-- Ghost-Forged Bracers
			i(82905),	-- Ghost-Forged Breastplate
			i(82929),	-- Ghost-Forged Breastplate
			i(82906),	-- Ghost-Forged Gauntlets
			i(82930),	-- Ghost-Forged Gauntlets
			i(82903),	-- Ghost-Forged Helm
			i(82927),	-- Ghost-Forged Helm
			i(82907),	-- Ghost-Forged Legplates
			i(82931),	-- Ghost-Forged Legplates
			i(82904),	-- Ghost-Forged Shoulders
			i(82928),	-- Ghost-Forged Shoulders
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94263, {["timeline"] = {ADDED_5_2_0}})),	-- Haunted Steel Greaves
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94266, {["timeline"] = {ADDED_5_2_0}})),	-- Haunted Steel Greathelm
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94264, {["timeline"] = {ADDED_5_2_0}})),	-- Haunted Steel Headcover
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94268, {["timeline"] = {ADDED_5_2_0}})),	-- Haunted Steel Headguard
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94265, {["timeline"] = {ADDED_5_2_0}})),	-- Haunted Steel Treads
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94267, {["timeline"] = {ADDED_5_2_0}})),	-- Haunted Steel Warboots
			i(82916, {["timeline"] = {CREATED_5_0_4, ADDED_7_3_5, REMOVED_10_0_2}}),	-- Lightsteel Bracers
			i(82977),	-- Living Steel Breastplate
			i(82978),	-- Living Steel Gauntlets
			i(87402),	-- Ornate Battleplate of the Master
			i(82926),	-- Masterwork Spiritguard Belt
			i(82925),	-- Masterwork Spiritguard Boots
			i(82924),	-- Masterwork Spiritguard Bracers
			i(82921),	-- Masterwork Spiritguard Breastplate
			i(82922),	-- Masterwork Spiritguard Gauntlets
			i(82919),	-- Masterwork Spiritguard Helm
			i(82923),	-- Masterwork Spiritguard Legplates
			i(82920),	-- Masterwork Spiritguard Shoulders
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98606, {["timeline"] = {ADDED_5_4_0}})),	-- Protector's Trillium Legguards
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98615, {["timeline"] = {ADDED_5_4_0}})),	-- Protector's Trillium Waistguard
			i(82900, {["timeline"] = {CREATED_5_0_4, ADDED_7_3_5, REMOVED_10_0_2}}),	-- Spiritguard Bracers
			i(87405),	-- Unyielding Bloodplate
		}),
		filter(MISC, {
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98717, {["timeline"] = {ADDED_5_4_0}})),	-- Balanced Trillium Ingot
			i(80431, {["timeline"] = {CREATED_5_0_4, ADDED_7_3_5, REMOVED_10_0_2}}),	-- Folded Ghost Iron
			i(86599),	-- Ghost Iron Shield Spike
			i(82960),	-- Ghostly Skeleton Key
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94111, {["timeline"] = {ADDED_5_2_0}})),	-- Lightning Steel Ingot
			i(90046),	-- Living Steel Belt Buckle
			i(86597),	-- Living Steel Weapon Chain
		}),
		n(WEAPONS, {
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94577, {["timeline"] = {ADDED_5_2_0}})),	-- Black Planar Edge, Reborn
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94591, {["timeline"] = {ADDED_5_2_0}})),	-- Blazefury, Reborn
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94589, {["timeline"] = {ADDED_5_2_0}})),	-- Blazeguard, Reborn
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94580, {["timeline"] = {ADDED_5_2_0}})),	-- Bloodmoon, Reborn
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98776, {["timeline"] = {ADDED_5_4_0}})),	-- Crafted Malevolent Gladiator's Barrier
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98810, {["timeline"] = {ADDED_5_4_0}})),	-- Crafted Malevolent Gladiator's Redoubt
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98920, {["timeline"] = {ADDED_5_4_0}})),	-- Crafted Malevolent Gladiator's Shield Wall
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94583, {["timeline"] = {ADDED_5_2_0}})),	-- Deep Thunder, Reborn
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94584, {["timeline"] = {ADDED_5_2_0}})),	-- Dragonmaw, Reborn
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94585, {["timeline"] = {ADDED_5_2_0}})),	-- Dragonstrike, Reborn
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94581, {["timeline"] = {ADDED_5_2_0}})),	-- Drakefist Hammer, Reborn
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94587, {["timeline"] = {ADDED_5_2_0}})),	-- Fireguard, Reborn
			i(82963),	-- Forgewire Axe
			i(82967),	-- Ghost Shard
			i(82964),	-- Ghost-Forged Blade
			i(82961),	-- Lightsteel Shield
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94588, {["timeline"] = {ADDED_5_2_0}})),	-- Lionheart Blade, Reborn
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94590, {["timeline"] = {ADDED_5_2_0}})),	-- Lionheart Champion, Reborn
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94592, {["timeline"] = {ADDED_5_2_0}})),	-- Lionheart Executioner, Reborn
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94576, {["timeline"] = {ADDED_5_2_0}})),	-- Lunar Crescent, Reborn
			i(82970),	-- Masterwork Forgewire Axe
			i(82974),	-- Masterwork Ghost Shard
			i(82971),	-- Masterwork Ghost-Forged Blade
			i(82968),	-- Masterwork Lightsteel Shield
			i(82972),	-- Masterwork Phantasmal Hammer
			i(82969),	-- Masterwork Spiritguard Shield
			i(82973),	-- Masterwork Spiritblade Decimator
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94578, {["timeline"] = {ADDED_5_2_0}})),	-- Mooncleaver, Reborn
			i(82965),	-- Phantasmal Hammer
			i(82966),	-- Spiritblade Decimator
			i(82962),	-- Spiritguard Shield
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94586, {["timeline"] = {ADDED_5_2_0}})),	-- Stormherald, Reborn
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94575, {["timeline"] = {ADDED_5_2_0}})),	-- The Planar Edge, Reborn
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94582, {["timeline"] = {ADDED_5_2_0}})),	-- Thunder, Reborn
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94579, {["timeline"] = {ADDED_5_2_0}})),	-- Wicked Edge of the Planes, Reborn
		}),
	}),
	prof(COOKING, {
		i(86432),	-- Banana-Infused Rum
		i(87246),	-- Banquet of the Brew
		i(87226),	-- Banquet of the Grill
		i(87242),	-- Banquet of the Oven
		i(87234),	-- Banquet of the Pot
		i(87238),	-- Banquet of the Steamer
		i(87230),	-- Banquet of the Wok
		i(74646),	-- Black Pepper Ribs and Shrimp
		i(81412),	-- Blanched Needle Mushrooms
		i(81405),	-- Boiled Silkworm Pupa
		i(74649),	-- Braised Turtle
		i(74642),	-- Charbroiled Tiger Steak
		i(74656),	-- Chun Tian Spring Rolls
		applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(101661, {["timeline"] = {ADDED_5_4_0}})),	-- Deluxe Noodle Cart Kit
		i(81404),	-- Dried Needle Mushrooms
		i(81403),	-- Dried Peaches
		i(74645),	-- Eternal Blossom Fish
		applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(101747, {["timeline"] = {ADDED_5_4_0}})),	-- Farmer's Delight
		i(74652),	-- Fire Spirit Salmon
		i(74641),	-- Fish Cake
		applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(101750, {["timeline"] = {ADDED_5_4_0}})),	-- Fluffy Silkfeather Omelet
		i(87264),	-- Four Senses Brew
		i(75026),	-- Ginseng Tea
		i(74636),	-- Golden Carp Consomme
		i(87248),	-- Great Banquet of the Brew
		i(87228),	-- Great Banquet of the Grill
		i(87244),	-- Great Banquet of the Oven
		i(87236),	-- Great Banquet of the Pot
		i(87240),	-- Great Banquet of the Steamer
		i(87232),	-- Great Banquet of the Wok
		i(75016),	-- Great Pandaren Banquet
		i(81410),	-- Green Curry Fish
		i(75037),	-- Jade Witch Brew
		i(85504),	-- Krasarang Fritters
		i(75038),	-- Mad Brewer's Breakfast
		applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(101745, {["timeline"] = {ADDED_5_4_0}})),	-- Mango Ice
		i(74650),	-- Mogu Fish Stew
		applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(101630, {["timeline"] = {ADDED_5_4_0}})),	-- Noodle Cart Kit
		i(74919),	-- Pandaren Banquet
		applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(101662, {["timeline"] = {ADDED_5_4_0}})),	-- Pandaren Treasure Noodle Cart Kit
		i(81411),	-- Peach Pie
		i(81414),	-- Pearl Milk Tea
		i(86026),	-- Perfectly Cooked Instant Noodles
		i(81400),	-- Pounded Rice Cake
		i(81408),	-- Red Bean Bun
		i(86069),	-- Rice Pudding
		i(81406),	-- Roasted Barley Tea
		i(74643),	-- Sauteed Carrots
		i(74648),	-- Sea Mist Rice Noodles
		applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(101746, {["timeline"] = {ADDED_5_4_0}})),	-- Seasoned Pomfruit Slices
		i(74651),	-- Shrimp Dumplings
		i(81413),	-- Skewered Peanut Chicken
		i(86057),	-- Sliced Peaches
		applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(101748, {["timeline"] = {ADDED_5_4_0}})),	-- Spiced Blossom Soup
		i(86073),	-- Spicy Salmon
		i(86074),	-- Spicy Vegetable Chips
		i(74653),	-- Steamed Crab Surprise
		applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(101749, {["timeline"] = {ADDED_5_4_0}})),	-- Stuffed Lushrooms
		i(74644),	-- Swirling Mist Soup
		i(81409),	-- Tangy Yogurt
		i(81402),	-- Toasted Fish Jerky
		i(74655),	-- Twin Fish Platter
		i(74647),	-- Valley Stir Fry
		i(85501),	-- Viseclaw Soup
		i(86070),	-- Wildfowl Ginseng Soup
		i(74654),	-- Wildfowl Roast
		i(81401),	-- Yak Cheese Curds
	}),
	prof(ENCHANTING, {
		spell(13262, {	-- Disenchant
			i(80433, {	-- Blood Spirit
				["description"] = "Can be obtained by disenchanting epics from Mogu'shan Vaults, Heart of Fear, or Terrace of the Eternal Spring",
			}),
			i(74247),	-- Ethereal Shard
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94289, {	-- Haunting Spirit
				["description"] = "Can be obtained by disenchanting epics from Throne of Thunder",
				["timeline"] = { ADDED_5_2_0 },
			})),
			i(74250),	-- Mysterious Essence
			i(74248),	-- Sha Crystal
			applyclassicphase(MOP_PHASE_LANDFALL, i(105718, {["timeline"] = {ADDED_5_4_0}})),	-- Sha Crystal Fragment
			i(74252),	-- Small Ethereal Shard
			i(74249),	-- Spirit Dust
		}),
		n(ARMOR_ENCHANTMENTS, {
			i(74717),	-- Enchant Boots - Blurred Speed
			i(74715),	-- Enchant Boots - Greater Haste
			i(74716),	-- Enchant Boots - Greater Precision
			i(74718),	-- Enchant Boots - Pandaren's Step
			i(74704),	-- Enchant Bracer - Exceptional Strength
			i(74705),	-- Enchant Bracer - Greater Agility
			i(74701),	-- Enchant Bracer - Major Dodge
			i(74700),	-- Enchant Bracer - Mastery
			i(74703),	-- Enchant Bracer - Super Intellect
			i(74708),	-- Enchant Chest - Glorious Stats
			i(74707),	-- Enchant Chest - Mighty Versatility
			i(74706),	-- Enchant Chest - Super Armor / MOP: Super Resilience
			i(74709),	-- Enchant Chest - Superior Stamina
			i(74710),	-- Enchant Cloak - Accuracy
			i(74711),	-- Enchant Cloak - Greater Protection
			i(74713),	-- Enchant Cloak - Superior Critical Strike
			i(74712),	-- Enchant Cloak - Superior Intellect
			i(74719),	-- Enchant Gloves - Greater Haste
			i(74721),	-- Enchant Gloves - Super Strength
			i(74720),	-- Enchant Gloves - Superior Haste
			i(74722),	-- Enchant Gloves - Superior Mastery
		}),
		filter(ILLUSIONS, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
			i(138793, {	-- Tome of Illusions: Pandaria
				ill(4441),	-- Windsong (ILLUSION!)
				ill(4443),	-- Elemental Force (ILLUSION!)
				ill(5868),	-- Breath of Yu'lon (ILLUSION!)
			}),
			i(138794, {	-- Tome of Illusions: Secrets of the Shado-Pan
				ill(4446),	-- River's Song (ILLUSION!)
				ill(4444),	-- Dancing Steel (ILLUSION!)
			}),
		})),
		n(WEAPON_ENCHANTMENTS, {
			i(74729),	-- Enchant Off-Hand - Major Intellect
			i(89737),	-- Enchant Shield - Greater Parry
			i(74727),	-- Enchant Weapon - Colossus
			i(74726),	-- Enchant Weapon - Dancing Steel
			i(74725),	-- Enchant Weapon - Elemental Force
			i(74724),	-- Enchant Weapon - Jade Spirit
			i(74728),	-- Enchant Weapon - River's Song
			i(74723),	-- Enchant Weapon - Windsong
		}),
	}),
	prof(ENGINEERING, {
		prof(GNOMISH_ENGINEERING, {
			["description"] = "These items can only be crafted by Engineers who have completed the Gnomish Engineering quest chain.",
			["groups"] = {
				filter(MOUNTS, {
					i(87251),	-- Geosynchronous World Spinner (MOUNT!)
				}),
			},
		}),
		prof(GOBLIN_ENGINEERING, {
			["description"] = "These items can only be crafted by Engineers who have completed the Goblin Engineering quest chain.",
			["groups"] = {
				filter(MOUNTS, {
					i(87250),	-- Depleted-Kyparium Rocket (MOUNT!)
				}),
			},
		}),
		n(ARMOR, {
			i(77534),	-- Agile Retinal Armor
			i(77535, {	-- Camouflage Retinal Armor
				-- #if BEFORE 7.3.0
				["classes"] = LEATHER_CLASSES_INTELLECT,
				-- #endif
			}),
			i(77536),	-- Deadly Retinal Armor
			i(77537, {	-- Energized Retinal Armor
				-- #if BEFORE 7.3.0
				["classes"] = { SHAMAN },
				-- #endif
			}),
			i(77533),	-- Lightweight Retinal Armor
			i(87213),	-- Mist-Piercing Goggles
			i(77539),	-- Reinforced Retinal Armor
			i(77538, {	-- Specialized Retinal Armor
				-- #if BEFORE 7.3.0
				["classes"] = { PALADIN },
				-- #endif
			}),
		}),
		filter(BATTLE_PETS, {
			i(87526),	-- Mechanical Pandaren Dragonling (PET!)
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(94903, {["timeline"] = {ADDED_5_4_0}})),	-- Pierre (PET!)
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(100905, {["timeline"] = {ADDED_5_4_0}})),	-- Rascal-Bot (PET!)
		}),
		filter(GEMS, {
			i(77544),	-- Flashing Tinker's Gear
			i(77547),	-- Fractured Tinker's Gear
			i(77543),	-- Precise Tinker's Gear
			i(77542),	-- Quick Tinker's Gear
			i(77545),	-- Rigid Tinker's Gear
			i(77541),	-- Smooth Tinker's Gear
			i(77546),	-- Sparkling Tinker's Gear
			i(77540),	-- Subtle Tinker's Gear
		}),
		filter(MISC, {
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(92747, {["timeline"] = {ADDED_5_4_0}})),	-- Advanced Refrigeration Unit
			i(89893),	-- Autumn Flower Firework
			i(88493),	-- Celestial Firework
			i(77589),	-- G91 Landshark
			i(86607),	-- Goblin Dragon Gun, Mark II
			i(88491),	-- Grand Celebration Firework
			i(89888),	-- Jade Blossom Firework
			i(77532),	-- Locksmith's Powderkeg
			i(87764),	-- Serpent's Heart Firework
			i(87216),	-- Thermal Anvil
		}),
		filter(MOUNTS, {
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(95416, {["timeline"] = {ADDED_5_4_0}})),	-- Sky Golem (MOUNT!)
		}),
		i(89991, {  -- Pandaria Fireworks
			i(89996),	-- Schematic: Autumn Flower Firework (RECIPE!)
			i(89994),	-- Schematic: Celestial Firework (RECIPE!)
			i(89993),	-- Schematic: Grand Celebration Firework (RECIPE!)
			i(89997),	-- Schematic: Jade Blossom Firework (RECIPE!)
			i(89992),	-- Schematic: Serpent's Heart Firework (RECIPE!)
		}),
		filter(REAGENTS, {
			i(77467),	-- Ghost Iron Bolts
			i(77468),	-- High-Explosive Gunpowder
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(94113, {["timeline"] = {ADDED_5_4_0}})),	-- Jard's Peculiar Energy Source
			i(90146),	-- Tinker's Kit
		}),
		filter(TOYS, {
			i(87214),	-- Blingtron 4000 (TOY!)
			i(87215),	-- Wormhole Generator: Pandaria (TOY!)
		}),
		filter(TRINKET_F, {
			i(77530),	-- Ghost Iron Dragonling
		}),
		n(WEAPONS, {
			i(77527),	-- Big Game Hunter
			i(77528),	-- Long-Range Trillium Sniper
		}),
		n(WEAPON_ENCHANTMENTS, {
			i(77529),	-- Lord Blastington's Scope of Doom
			i(77531),	-- Mirror Scope
		}),
	}),
	-- #if BEFORE BFA
	prof(FIRST_AID, {
		i(72986),	-- Heavy Windwool Bandage
		i(72985),	-- Windwool Bandage
	}),
	-- #endif
	prof(FISHING, {
		i(74859),	-- Emperor Salmon
		i(86542),	-- Flying Tiger Gourami
		i(74857),	-- Giant Mantis Shrimp
		i(74866),	-- Golden Carp
		i(74856),	-- Jade Lungfish
		i(74863),	-- Jewel Danio
		i(74865),	-- Krasarang Paddlefish
		i(86545),	-- Mimic Octopus
		i(74860),	-- Redbelly Mandarin
		i(74864),	-- Reef Octopus
		i(46109),	-- Sea Turtle (MOUNT!)
		i(86544),	-- Spinefish Alpha
		i(74861),	-- Tiger Gourami
		applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94933, {	-- Tiny Blue Carp (PET!)
			["timeline"] = { ADDED_5_2_0 },
			["description"] = "Can be fished from:\n\n|cFFFfffff— Schools:|r Jewel Danio & Redbelly Mandarin\n\n|cFFFfffff— Fish of the Day:|r Townlong Steppes & Vale of Eternal Blossoms\n\n|cFFFfffff— Inland open water:|r Townlong Steppes & Vale of Eternal Blossoms\n",
			[MAPS_FIELD] = {
				TIMELESS_ISLE,
				TOWNLONG_STEPPES,
				VALE_OF_ETERNAL_BLOSSOMS,
			},
		})),
		applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94934, {	-- Tiny Green Carp (PET!)
			["timeline"] = { ADDED_5_2_0 },
			["description"] = "Can be fished from:\n\n|cFFFfffff— Schools:|r Emperor Salmon, Jade Lungfish, & Krasarang Paddlefish\n\n|cFFFfffff— Fish of the Day:|r Jade Forest, Krasarang Wilds, & Valley of the Four Winds\n\n|cFFFfffff— Inland open water:|r Jade Forest, Krasarang Wilds, & Valley of the Four Winds\n",
			[MAPS_FIELD] = {
				KRASARANG_WILDS,
				THE_JADE_FOREST,
				TOWNLONG_STEPPES,
				VALLEY_OF_THE_FOUR_WINDS,
			},
		})),
		applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94932, {	-- Tiny Red Carp (PET!)
			["timeline"] = { ADDED_5_2_0 },
			["description"] = "Can be fished from:\n\n|cFFFfffff— Schools:|r Spinefish\n\n|cFFFfffff— Fish of the Day:|r Kun-Lai Summit\n\n|cFFFfffff— Sha-Touched water:|r Dread Wastes, Kun-Lai Summit & Townlong Steppes\n",
			[MAPS_FIELD] = {
				DREAD_WASTES,
				KUN_LAI_SUMMIT,
				TOWNLONG_STEPPES,
			},
		})),
		applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94935, {	-- Tiny White Carp (PET!)
			["timeline"] = { ADDED_5_2_0 },
			["description"] = "Can be fished from:\n\n|cFFFfffff— Schools:|r Giant Mantis Shrimp, Reef Octopus, & Tiger Gourami\n\n|cFFFfffff— Fish of the Day:|r Dread Wastes, Jade Forest, & Kun-Lai Summit\n\n|cFFFfffff— Inland open water:|r Kun-Lai Summit & The Veiled Stair\n\nIt can also be caught in most coastal open water.\n",
			[MAPS_FIELD] = {
				DREAD_WASTES,
				ISLE_OF_GIANTS,
				ISLE_OF_THUNDER,
				KRASARANG_WILDS,
				KUN_LAI_SUMMIT,
				THE_JADE_FOREST,
				THE_VEILED_STAIR,
				TIMELESS_ISLE,
				TOWNLONG_STEPPES,
			},
		})),
		filter(RECIPES, {
			i(34109, {	-- Weather-Beaten Journal (RECIPE!)
				["description"] = "Can be fished from schools.",
			}),
		}),
	}),
	prof(HERBALISM, {
		spell(2366, {	-- Herb Gathering
			i(89639),	-- Desecrated Herb
			i(97624, {["timeline"] = {ADDED_5_3_0}}),	-- Desecrated Herb Pod
			i(79011),	-- Fool's Cap
			i(97623, {["timeline"] = {ADDED_5_3_0}}),	-- Fool's Cap Spores
			i(72238),	-- Golden Lotus
			i(72234),	-- Green Tea Leaf
			i(72237),	-- Rain Poppy
			i(97620, {["timeline"] = {ADDED_5_3_0}}),	-- Rain Poppy Petal
			i(72235),	-- Silkweed
			i(97621, {["timeline"] = {ADDED_5_3_0}}),	-- Silkweed Stem
			i(79010),	-- Snow Lily
			i(97622, {["timeline"] = {ADDED_5_3_0}}),	-- Snow Lily Petal
			i(97619, {["timeline"] = {ADDED_5_3_0}}),	-- Torn Green Tea Leaf
		}),
	}),
	prof(INSCRIPTION, {
		-- #if AFTER WOD
		spell(165467, {	-- Research: Ink of Dreams
			r(64258, {["timeline"]={ADDED_3_1_0,REMOVED_7_0_3}}),	-- Glyph of Monsoon / Glyph of Cyclone[MOP+]
		}),
		-- #endif
		filter(GLYPHS, {
		-- #if AFTER WOD
			i(43350, {["timeline"]={ADDED_3_0_2}}),	-- Glyph of Mend Pet / Glyph of Lesser Proportion[4.1.0+]
			i(43359, {["timeline"]={ADDED_3_0_2,REMOVED_7_0_3}}),	-- Glyph of Frost Armor / Glyph of Conjuring[CATA] / Glyph of Conjure Familiar[MOP+]
			i(43331, {["timeline"]={ADDED_3_0_2,REMOVED_7_0_3}}),	-- Glyph of Unburdened Rebirth / Glyph of Blooming[MOP+]
			i(42964, {["timeline"]={ADDED_3_0_2,REMOVED_7_0_3}}),	-- Glyph of Garrote
			i(40916, {["timeline"]={ADDED_3_0_2,REMOVED_7_0_3}}),	-- Glyph of Starfire / Glyph of the Moonbeast[5.0.4-5.4.0] / Glyph of Guided Stars[5.4.0-6.1.0] / Glyph of Untamed Stars[6.1.0+]
			i(42744, {["timeline"]={ADDED_3_0_2,REMOVED_7_0_3}}),	-- Glyph of Ice Block
			i(45622, {["timeline"]={ADDED_3_1_0,REMOVED_7_0_3}}),	-- Glyph of Monsoon / Glyph of Cyclone[MOP+]
			-- #endif
		}),
		category(106, {	-- Tarot Cards
			sp(111830, {	-- Darkmoon Card of Mists
				i(79299),	-- Ace of Crane
				i(79300),	-- Two of Cranes
				i(79301),	-- Three of Cranes
				i(79302),	-- Four of Cranes
				i(79303),	-- Five of Cranes
				i(79304),	-- Six of Cranes
				i(79305),	-- Seven of Cranes
				i(79306),	-- Eight of Cranes

				i(79291),	-- Ace of Oxen
				i(79292),	-- Two of Oxen
				i(79293),	-- Three of Oxen
				i(79294),	-- Four of Oxen
				i(79295),	-- Five of Oxen
				i(79296),	-- Six of Oxen
				i(79297),	-- Seven of Oxen
				i(79298),	-- Eight of Oxen

				i(79307),	-- Ace of Serpents
				i(79308),	-- Two of Serpents
				i(79309),	-- Three of Serpents
				i(79310),	-- Four of Serpents
				i(79311),	-- Five of Serpents
				i(79312),	-- Six of Serpents
				i(79313),	-- Seven of Serpents
				i(79314),	-- Eight of Serpents

				i(79283),	-- Ace of Tigers
				i(79284),	-- Two of Tigers
				i(79285),	-- Three of Tigers
				i(79286),	-- Four of Tigers
				i(79287),	-- Five of Tigers
				i(79288),	-- Six of Tigers
				i(79289),	-- Seven of Tigers
				i(79290),	-- Eight of Tigers
			}),
		}),
		filter(BATTLE_PETS, {
			i(89368),	-- Chi-Ji Kite (PET!)
			i(89367),	-- Yu'lon Kite (PET!)
		}),
		filter(TRINKET_F, {
			i(102483),	-- Crafted Malevolent Gladiator's Medallion of Tenacity
		}),
		filter(HELD_IN_OFF_HAND, {
			i(79333),	-- Inscribed Fan
			i(79334, {	-- Inscribed Jade Fan
				["cost"] = ClassicCost({ { "i", 79333, 1 }, }),	-- Inscribed Fan
			}),
			i(79335, {	-- Inscribed Red Fan
				["cost"] = ClassicCost({ { "i", 79333, 1 }, }),	-- Inscribed Fan
			}),
		}),
		filter(STAVES, {
			i(79342),	-- Ghost Iron Staff
			i(79340, {	-- Inscribed Crane Staff
				["cost"] = ClassicCost({ { "i", 79339, 1 }, }),	-- Rain Poppy Staff
			}),
			i(79341, {	-- Inscribed Serpent Staff
				["cost"] = ClassicCost({ { "i", 79339, 1 }, }),	-- Rain Poppy Staff
			}),
			i(79343, {	-- Inscribed Tiger Staff
				["cost"] = ClassicCost({ { "i", 79342, 1 }, }),	-- Ghost Iron Staff
			}),
			i(79339),	-- Rain Poppy Staff
		}),
	}),
	prof(JEWELCRAFTING, {
		n(DISCOVERY, {
			spell(131691, {	-- Imperial Amethyst
				r(107693),	-- Accurate Imperial Amethyst
				r(130657),	-- Assassin's Imperial Amethyst
				r(107694),	-- Defender's Imperial Amethyst
				r(107695),	-- Etched Imperial Amethyst
				r(107696),	-- Glinting Imperial Amethyst
				r(107697),	-- Guardian's Imperial Amethyst
				r(107698),	-- Mysterious Imperial Amethyst
				r(107699),	-- Purified Imperial Amethyst
				r(107700),	-- Retaliating Imperial Amethyst
				r(107701),	-- Shifting Imperial Amethyst
				r(107702),	-- Sovereign Imperial Amethyst
				r(130658),	-- Tense Imperial Amethyst
				r(107703),	-- Timeless Imperial Amethyst
				r(107704),	-- Veiled Imperial Amethyst
			}),
			spell(131686, {	-- Primordial Ruby
				r(107705),	-- Bold Primordial Ruby
				r(107706),	-- Brilliant Primordial Ruby
				r(107707),	-- Delicate Primordial Ruby
				r(107708),	-- Flashing Primordial Ruby
				r(107709),	-- Precise Primordial Ruby
			}),
			spell(131593, {	-- River's Heart
				r(106947),	-- Rigid River's Heart
				r(106950),	-- Solid River's Heart
				r(106949),	-- Sparkling River's Heart
				r(106948),	-- Stormy River's Heart
			}),
			spell(131695, {	-- Sun's Radiance
				r(107710),	-- Fractured Sun's Radiance
				r(107711),	-- Mystic Sun's Radiance
				r(107712),	-- Quick Sun's Radiance
				r(107713),	-- Smooth Sun's Radiance
				r(107714),	-- Subtle Sun's Radiance
			}),
			spell(131690, {	-- Vermilion Onyx
				r(107715),	-- Adept Vermilion Onyx
				r(107716),	-- Artful Vermilion Onyx
				r(107717),	-- Champion's Vermilion Onyx
				r(107718),	-- Crafty Vermilion Onyx
				r(107719),	-- Deadly Vermilion Onyx
				r(107720),	-- Deft Vermilion Onyx
				r(107721),	-- Fierce Vermilion Onyx
				r(107722),	-- Fine Vermilion Onyx
				r(107723),	-- Inscribed Vermilion Onyx
				r(107724),	-- Keen Vermilion Onyx
				r(107725),	-- Lucent Vermilion Onyx
				r(107726),	-- Polished Vermilion Onyx
				r(107727),	-- Potent Vermilion Onyx
				r(107728),	-- Reckless Vermilion Onyx
				r(107729),	-- Resolute Vermilion Onyx
				r(107730),	-- Resplendent Vermilion Onyx
				r(107731),	-- Skillful Vermilion Onyx
				r(107732),	-- Splendid Vermilion Onyx
				r(107733),	-- Stalwart Vermilion Onyx
				r(107734),	-- Tenuous Vermilion Onyx
				r(107735),	-- Wicked Vermilion Onyx
				r(107736),	-- Willful Vermilion Onyx
			}),
			spell(131688, {	-- Wild Jade
				r(106960),	-- Balanced Wild Jade
				r(106957),	-- Effulgent Wild Jade
				r(107737),	-- Energized Wild Jade
				r(107738),	-- Forceful Wild Jade
				r(107739),	-- Jagged Wild Jade
				r(106955),	-- Lightning Wild Jade
				r(106953),	-- Misty Wild Jade
				r(107740),	-- Nimble Wild Jade
				r(106954),	-- Piercing Wild Jade
				r(107742),	-- Puissant Wild Jade
				r(107743),	-- Radiant Wild Jade
				r(107744),	-- Regal Wild Jade
				r(106956),	-- Sensei's Wild Jade
				r(107745),	-- Shattered Wild Jade
				r(107746),	-- Steady Wild Jade
				r(106962),	-- Turbid Wild Jade
				r(106961),	-- Vivid Wild Jade
				r(106958),	-- Zen Wild Jade
			}),
		}),
		filter(BATTLE_PETS, {
			i(82774),	-- Jade Owl (PET!)
			i(82775),	-- Sapphire Cub (PET!)
		}),
		filter(FINGER_F, {
			i(83801),	-- Band of Blood
			i(83796),	-- Heart of the Earth
			i(83800),	-- Lionsfall Ring
			i(83799),	-- Lord's Signet
			i(83793),	-- Ornate Band
			i(90904),	-- Ornate Band
			i(83798),	-- Roguestone Shadowband
		}),
		filter(GEMS, {
			n(SPECIAL, {
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93409, {["timeline"] = {ADDED_5_2_0}})),	-- Assassin's Serpent's Eye
				i(83141),	-- Bold Serpent's Eye
				i(83150),	-- Brilliant Serpent's Eye
				i(83151),	-- Delicate Serpent's Eye
				i(83152),	-- Flashing Serpent's Eye
				i(83143),	-- Fractured Serpent's Eye
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93405, {["timeline"] = {ADDED_5_2_0}})),	-- Lucent Serpent's Eye
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93410, {["timeline"] = {ADDED_5_2_0}})),	-- Mysterious Serpent's Eye
				i(83147),	-- Precise Serpent's Eye
				i(83142),	-- Quick Serpent's Eye
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93404, {["timeline"] = {ADDED_5_2_0}})),	-- Resplendent Serpent's Eye
				i(83144),	-- Rigid Serpent's Eye
				i(83146),	-- Smooth Serpent's Eye
				i(83148),	-- Solid Serpent's Eye
				i(83149),	-- Sparkling Serpent's Eye
				i(83145),	-- Subtle Serpent's Eye
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93408, {["timeline"] = {ADDED_5_2_0}})),	-- Tense Serpent's Eye
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93406, {["timeline"] = {ADDED_5_2_0}})),	-- Willful Serpent's Eye
			}),
			n(QUALITY_UNCOMMON, {
				i(76549),	-- Accurate Roguestone
				i(76538),	-- Adept Tiger Opal
				i(76540),	-- Artful Tiger Opal
				i(89678),	-- Assassin's Roguestone
				i(76513),	-- Balanced Alexandrite
				i(76564),	-- Bold Pandarian Garnet
				i(76562),	-- Brilliant Pandarian Garnet
				i(76533),	-- Champion's Tiger Opal
				i(76527),	-- Crafty Tiger Opal
				i(76526),	-- Deadly Tiger Opal
				i(76558),	-- Defender's Roguestone
				i(76534),	-- Deft Tiger Opal
				i(76560),	-- Delicate Pandarian Garnet
				i(76511),	-- Effulgent Alexandrite
				i(76519),	-- Energized Alexandrite
				i(76552),	-- Etched Roguestone
				i(76537),	-- Fierce Tiger Opal
				i(76541),	-- Fine Tiger Opal
				i(76563),	-- Flashing Pandarian Garnet
				i(76522),	-- Forceful Alexandrite
				i(76568),	-- Fractured Sunstone
				i(76548),	-- Glinting Roguestone
				i(76556),	-- Guardian's Roguestone
				i(76529),	-- Inscribed Tiger Opal
				i(76520),	-- Jagged Alexandrite
				i(76539),	-- Keen Tiger Opal
				i(76509),	-- Lightning Alexandrite
				i(76543),	-- Lucent Tiger Opal
				i(76507),	-- Misty Alexandrite
				i(76553),	-- Mysterious Roguestone
				i(76569),	-- Mystic Sunstone
				i(93706),	-- Nimble Alexandrite
				i(76615),	-- Perfect Accurate Roguestone
				i(76604),	-- Perfect Adept Tiger Opal
				i(76606),	-- Perfect Artful Tiger Opal
				i(89679),	-- Perfect Assassin's Roguestone
				i(76580),	-- Perfect Balanced Alexandrite
				i(76630),	-- Perfect Bold Pandarian Garnet
				i(76628),	-- Perfect Brilliant Pandarian Garnet
				i(76599),	-- Perfect Champion's Tiger Opal
				i(76593),	-- Perfect Crafty Tiger Opal
				i(76592),	-- Perfect Deadly Tiger Opal
				i(76624),	-- Perfect Defender's Roguestone
				i(76600),	-- Perfect Deft Tiger Opal
				i(76626),	-- Perfect Delicate Pandarian Garnet
				i(76578),	-- Perfect Effulgent Alexandrite
				i(76585),	-- Perfect Energized Alexandrite
				i(76618),	-- Perfect Etched Roguestone
				i(76603),	-- Perfect Fierce Tiger Opal
				i(76607),	-- Perfect Fine Tiger Opal
				i(76629),	-- Perfect Flashing Pandarian Garnet
				i(76588),	-- Perfect Forceful Alexandrite
				i(76634),	-- Perfect Fractured Sunstone
				i(76614),	-- Perfect Glinting Roguestone
				i(76622),	-- Perfect Guardian's Roguestone
				i(76595),	-- Perfect Inscribed Tiger Opal
				i(76605),	-- Perfect Keen Tiger Opal
				i(76576),	-- Perfect Lightning Alexandrite
				i(76609),	-- Perfect Lucent Tiger Opal
				i(76574),	-- Perfect Misty Alexandrite
				i(76619),	-- Perfect Mysterious Roguestone
				i(76635),	-- Perfect Mystic Sunstone
				i(93707),	-- Perfect Nimble Alexandrite
				i(76575),	-- Perfect Piercing Alexandrite
				i(76596),	-- Perfect Polished Tiger Opal
				i(76594),	-- Perfect Potent Tiger Opal
				i(76627),	-- Perfect Precise Pandarian Garnet
				i(76590),	-- Perfect Puissant Alexandrite
				i(76620),	-- Perfect Purified Roguestone
				i(76633),	-- Perfect Quick Sunstone
				i(76583),	-- Perfect Radiant Alexandrite
				i(76602),	-- Perfect Reckless Tiger Opal
				i(76587),	-- Perfect Regal Alexandrite
				i(76597),	-- Perfect Resolute Tiger Opal
				i(76613),	-- Perfect Resplendent Tiger Opal
				i(76617),	-- Perfect Retaliating Roguestone
				i(76570),	-- Perfect Rigid Lapis Lazuli
				i(76577),	-- Perfect Sensei's Alexandrite
				i(76584),	-- Perfect Shattered Alexandrite
				i(76621),	-- Perfect Shifting Roguestone
				i(76608),	-- Perfect Skillful Tiger Opal
				i(76631),	-- Perfect Smooth Sunstone
				i(76573),	-- Perfect Solid Lapis Lazuli
				i(76625),	-- Perfect Sovereign Roguestone
				i(76572),	-- Perfect Sparkling Lapis Lazuli
				i(76612),	-- Perfect Splendid Tiger Opal
				i(76598),	-- Perfect Stalwart Tiger Opal
				i(76591),	-- Perfect Steady Alexandrite
				i(76571),	-- Perfect Stormy Lapis Lazuli
				i(76632),	-- Perfect Subtle Sunstone
				i(89676),	-- Perfect Tense Roguestone
				i(76610),	-- Perfect Tenuous Tiger Opal
				i(76623),	-- Perfect Timeless Roguestone
				i(76582),	-- Perfect Turbid Alexandrite
				i(76616),	-- Perfect Veiled Roguestone
				i(76581),	-- Perfect Vivid Alexandrite
				i(76601),	-- Perfect Wicked Tiger Opal
				i(76611),	-- Perfect Willful Tiger Opal
				i(76579),	-- Perfect Zen Alexandrite
				i(76508),	-- Piercing Alexandrite
				i(76530),	-- Polished Tiger Opal
				i(76528),	-- Potent Tiger Opal
				i(76561),	-- Precise Pandarian Garnet
				i(76524),	-- Puissant Alexandrite
				i(76554),	-- Purified Roguestone
				i(76567),	-- Quick Sunstone
				i(76517),	-- Radiant Alexandrite
				i(76536),	-- Reckless Tiger Opal
				i(76521),	-- Regal Alexandrite
				i(76531),	-- Resolute Tiger Opal
				i(76547),	-- Resplendent Tiger Opal
				i(76551),	-- Retaliating Roguestone
				i(76502),	-- Rigid Lapis Lazuli
				i(76510),	-- Sensei's Alexandrite
				i(76518),	-- Shattered Alexandrite
				i(76555),	-- Shifting Roguestone
				i(76542),	-- Skillful Tiger Opal
				i(76565),	-- Smooth Sunstone
				i(76506),	-- Solid Lapis Lazuli
				i(76559),	-- Sovereign Roguestone
				i(76505),	-- Sparkling Lapis Lazuli
				i(76546),	-- Splendid Tiger Opal
				i(76532),	-- Stalwart Tiger Opal
				i(76525),	-- Steady Alexandrite
				i(76504),	-- Stormy Lapis Lazuli
				i(76566),	-- Subtle Sunstone
				i(89675),	-- Tense Roguestone
				i(76544),	-- Tenuous Tiger Opal
				i(76557),	-- Timeless Roguestone
				i(76515),	-- Turbid Alexandrite
				i(76550),	-- Veiled Roguestone
				i(76514),	-- Vivid Alexandrite
				i(76535),	-- Wicked Tiger Opal
				i(76545),	-- Willful Tiger Opal
				i(76512),	-- Zen Alexandrite
			}),
			n(QUALITY_RARE, {
				i(76681),	-- Accurate Imperial Amethyst
				i(76670),	-- Adept Vermilion Onyx
				i(76884),	-- Agile Primal Diamond
				i(76672),	-- Artful Vermilion Onyx
				i(89680),	-- Assassin's Imperial Amethyst
				i(76895),	-- Austere Primal Diamond
				i(76646),	-- Balanced Wild Jade
				i(76696),	-- Bold Primordial Ruby
				i(76694),	-- Brilliant Primordial Ruby
				i(76885),	-- Burning Primal Diamond
				i(76665),	-- Champion's Vermilion Onyx
				i(76659),	-- Crafty Vermilion Onyx
				i(76658),	-- Deadly Vermilion Onyx
				i(76690),	-- Defender's Imperial Amethyst
				i(76666),	-- Deft Vermilion Onyx
				i(76692),	-- Delicate Primordial Ruby
				i(76890),	-- Destructive Primal Diamond
				i(76897),	-- Effulgent Primal Diamond
				i(76644),	-- Effulgent Wild Jade
				i(76879),	-- Ember Primal Diamond
				i(76651),	-- Energized Wild Jade
				i(76892),	-- Enigmatic Primal Diamond
				i(76684),	-- Etched Imperial Amethyst
				i(76896),	-- Eternal Primal Diamond
				i(76669),	-- Fierce Vermilion Onyx
				i(76673),	-- Fine Vermilion Onyx
				i(76695),	-- Flashing Primordial Ruby
				i(76887),	-- Fleet Primal Diamond
				i(76654),	-- Forceful Wild Jade
				i(76894),	-- Forlorn Primal Diamond
				i(76700),	-- Fractured Sun's Radiance
				i(76680),	-- Glinting Imperial Amethyst
				i(76688),	-- Guardian's Imperial Amethyst
				i(76893),	-- Impassive Primal Diamond
				i(76661),	-- Inscribed Vermilion Onyx
				i(76652),	-- Jagged Wild Jade
				i(76671),	-- Keen Vermilion Onyx
				i(76642),	-- Lightning Wild Jade
				i(76675),	-- Lucent Vermilion Onyx
				i(76640),	-- Misty Wild Jade
				i(76685),	-- Mysterious Imperial Amethyst
				i(76701),	-- Mystic Sun's Radiance
				i(93705),	-- Nimble Wild Jade
				i(76641),	-- Piercing Wild Jade
				i(76662),	-- Polished Vermilion Onyx
				i(76660),	-- Potent Vermilion Onyx
				i(76891),	-- Powerful Primal Diamond
				i(76693),	-- Precise Primordial Ruby
				i(76656),	-- Puissant Wild Jade
				i(76686),	-- Purified Imperial Amethyst
				i(76699),	-- Quick Sun's Radiance
				i(76649),	-- Radiant Wild Jade
				i(76668),	-- Reckless Vermilion Onyx
				i(76653),	-- Regal Wild Jade
				i(76663),	-- Resolute Vermilion Onyx
				i(76679),	-- Resplendent Vermilion Onyx
				i(76683),	-- Retaliating Imperial Amethyst
				i(76886),	-- Reverberating Primal Diamond
				i(76888),	-- Revitalizing Primal Diamond
				i(76636),	-- Rigid River's Heart
				i(76643),	-- Sensei's Wild Jade
				i(76650),	-- Shattered Wild Jade
				i(76687),	-- Shifting Imperial Amethyst
				i(76674),	-- Skillful Vermilion Onyx
				i(76697),	-- Smooth Sun's Radiance
				i(76639),	-- Solid River's Heart
				i(76691),	-- Sovereign Imperial Amethyst
				i(76638),	-- Sparkling River's Heart
				i(76678),	-- Splendid Vermilion Onyx
				i(76664),	-- Stalwart Vermilion Onyx
				i(76657),	-- Steady Wild Jade
				i(76637),	-- Stormy River's Heart
				i(76698),	-- Subtle Sun's Radiance
				i(89674),	-- Tense Imperial Amethyst
				i(76676),	-- Tenuous Vermilion Onyx
				i(76689),	-- Timeless Imperial Amethyst
				i(76648),	-- Turbid Wild Jade
				i(76682),	-- Veiled Imperial Amethyst
				i(76647),	-- Vivid Wild Jade
				i(76667),	-- Wicked Vermilion Onyx
				i(76677),	-- Willful Vermilion Onyx
				i(76645),	-- Zen Wild Jade
			}),
		}),
		filter(MISC, {
			i(83795),	-- Scrying Roguestone
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(95469, {	-- Serpent's Heart
				["timeline"] = { ADDED_5_2_0 },
				["groups"] = {
					i(90470),	-- Design: Jade Owl (RECIPE!)
					i(90471),	-- Design: Sapphire Cub (RECIPE!)
				},
			})),
		}),
		filter(MOUNTS, {
			i(83088),	-- Jade Panther (MOUNT!)
			i(82453),	-- Jeweled Onyx Panther (MOUNT!)
			i(83087),	-- Ruby Panther (MOUNT!)
			i(83090),	-- Sapphire Panther (MOUNT!)
			i(83089),	-- Sunstone Panther (MOUNT!)
		}),
		filter(NECK_F, {
			i(83803),	-- Golembreaker Amulet
			i(83802),	-- Reflection of the Sea
			i(83794),	-- Shadowfire Necklace
			i(90905),	-- Shadowfire Necklace
			i(83805),	-- Skymage Circle
			i(83806),	-- Tiger Opal Pendant
			i(83804),	-- Widow Chain
		}),
		filter(REAGENTS, {
			i(76132, {["timeline"] = {ADDED_5_2_0}}),	-- Primal Diamond
		}),
	}),
	prof(LEATHERWORKING, {
		n(DISCOVERY, {
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, spell(142976, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0 } }, {	-- Hardened Magnificent Hide
				["cost"] = ClassicCost({{ "i", 72163, 2 }}),	-- 2x Magnificent Hide
				["groups"] = {
					r(143146),	-- Crafted Malevolent Gladiator's Armbands of Meditation
					r(143145),	-- Crafted Malevolent Gladiator's Armbands of Prowess
					r(143112),	-- Crafted Malevolent Gladiator's Armwraps of Accuracy
					r(143125),	-- Crafted Malevolent Gladiator's Armwraps of Alacrity
					r(143102),	-- Crafted Malevolent Gladiator's Belt of Cruelty
					r(143094),	-- Crafted Malevolent Gladiator's Belt of Meditation
					r(143096),	-- Crafted Malevolent Gladiator's Bindings of Meditation
					r(143104),	-- Crafted Malevolent Gladiator's Bindings of Prowess
					r(143111),	-- Crafted Malevolent Gladiator's Boots of Alacrity
					r(143124),	-- Crafted Malevolent Gladiator's Boots of Cruelty
					r(143137),	-- Crafted Malevolent Gladiator's Chain Armor
					r(143138),	-- Crafted Malevolent Gladiator's Chain Gauntlets
					r(143139),	-- Crafted Malevolent Gladiator's Chain Helm
					r(143140),	-- Crafted Malevolent Gladiator's Chain Leggings
					r(143141),	-- Crafted Malevolent Gladiator's Chain Spaulders
					r(143118),	-- Crafted Malevolent Gladiator's Copperskin Gloves
					r(143119),	-- Crafted Malevolent Gladiator's Copperskin Helm
					r(143120),	-- Crafted Malevolent Gladiator's Copperskin Legguards
					r(143121),	-- Crafted Malevolent Gladiator's Copperskin Spaulders
					r(143122),	-- Crafted Malevolent Gladiator's Copperskin Tunic
					r(143089),	-- Crafted Malevolent Gladiator's Dragonhide Gloves
					r(143090),	-- Crafted Malevolent Gladiator's Dragonhide Helm
					r(143091),	-- Crafted Malevolent Gladiator's Dragonhide Legguards
					r(143092),	-- Crafted Malevolent Gladiator's Dragonhide Robes
					r(143093),	-- Crafted Malevolent Gladiator's Dragonhide Spaulders
					r(143103),	-- Crafted Malevolent Gladiator's Footguards of Alacrity
					r(143143),	-- Crafted Malevolent Gladiator's Footguards of Alacrity
					r(143095),	-- Crafted Malevolent Gladiator's Footguards of Meditation
					r(143144),	-- Crafted Malevolent Gladiator's Footguards of Meditation
					r(143113),	-- Crafted Malevolent Gladiator's Ironskin Gloves
					r(143114),	-- Crafted Malevolent Gladiator's Ironskin Helm
					r(143115),	-- Crafted Malevolent Gladiator's Ironskin Legguards
					r(143116),	-- Crafted Malevolent Gladiator's Ironskin Spaulders
					r(143117),	-- Crafted Malevolent Gladiator's Ironskin Tunic
					r(143097),	-- Crafted Malevolent Gladiator's Kodohide Gloves
					r(143098),	-- Crafted Malevolent Gladiator's Kodohide Helm
					r(143099),	-- Crafted Malevolent Gladiator's Kodohide Legguards
					r(143100),	-- Crafted Malevolent Gladiator's Kodohide Robes
					r(143101),	-- Crafted Malevolent Gladiator's Kodohide Spaulders
					r(143127),	-- Crafted Malevolent Gladiator's Leather Gloves
					r(143128),	-- Crafted Malevolent Gladiator's Leather Helm
					r(143129),	-- Crafted Malevolent Gladiator's Leather Legguards
					r(143130),	-- Crafted Malevolent Gladiator's Leather Spaulders
					r(143126),	-- Crafted Malevolent Gladiator's Leather Tunic
					r(143152),	-- Crafted Malevolent Gladiator's Linked Armor
					r(143153),	-- Crafted Malevolent Gladiator's Linked Gauntlets
					r(143154),	-- Crafted Malevolent Gladiator's Linked Helm
					r(143155),	-- Crafted Malevolent Gladiator's Linked Leggings
					r(143156),	-- Crafted Malevolent Gladiator's Linked Spaulders
					r(143132),	-- Crafted Malevolent Gladiator's Links of Accuracy
					r(143131),	-- Crafted Malevolent Gladiator's Links of Cruelty
					r(143158),	-- Crafted Malevolent Gladiator's Mail Armor
					r(143159),	-- Crafted Malevolent Gladiator's Mail Gauntlets
					r(143160),	-- Crafted Malevolent Gladiator's Mail Helm
					r(143161),	-- Crafted Malevolent Gladiator's Mail Leggings
					r(143162),	-- Crafted Malevolent Gladiator's Mail Spaulders
					r(143147),	-- Crafted Malevolent Gladiator's Ringmail Armor
					r(143148),	-- Crafted Malevolent Gladiator's Ringmail Gauntlets
					r(143149),	-- Crafted Malevolent Gladiator's Ringmail Helm
					r(143150),	-- Crafted Malevolent Gladiator's Ringmail Leggings
					r(143151),	-- Crafted Malevolent Gladiator's Ringmail Spaulders
					r(143134),	-- Crafted Malevolent Gladiator's Sabatons of Alacrity
					r(143133),	-- Crafted Malevolent Gladiator's Sabatons of Cruelty
					r(143123),	-- Crafted Malevolent Gladiator's Waistband of Accuracy
					r(143110),	-- Crafted Malevolent Gladiator's Waistband of Cruelty
					r(143157),	-- Crafted Malevolent Gladiator's Waistguard of Cruelty
					r(143142),	-- Crafted Malevolent Gladiator's Waistguard of Meditation
					r(143136),	-- Crafted Malevolent Gladiator's Wristguards of Accuracy
					r(143135),	-- Crafted Malevolent Gladiator's Wristguards of Alacrity
					r(143105),	-- Crafted Malevolent Gladiator's Wyrmhide Gloves
					r(143106),	-- Crafted Malevolent Gladiator's Wyrmhide Helm
					r(143107),	-- Crafted Malevolent Gladiator's Wyrmhide Legguards
					r(143108),	-- Crafted Malevolent Gladiator's Wyrmhide Robes
					r(143109),	-- Crafted Malevolent Gladiator's Wyrmhide Spaulders
					r(142966),	-- Gorge Stalker Belt
					r(142957),	-- Gorge Stalker Legplates
					r(142962),	-- Krasari Prowler Belt
					r(142953),	-- Krasari Prowler Britches
					r(142961),	-- Pennyroyal Belt
					r(142952),	-- Pennyroyal Leggings
					r(142965),	-- Snow Lily Belt
					r(142956),	-- Snow Lily Britches
				},
			}))),
			spell(140040, bubbleDownSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Magnificence of Leather
				["cost"] = ClassicCost({{ "i", 72120, 20 }}),	-- 20x Mist-Touched Leather
				["groups"] = applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, {
					r(137832),	-- Crafted Dreadful Gladiator's Armwraps of Accuracy
					r(137845),	-- Crafted Dreadful Gladiator's Armwraps of Alacrity
					r(137822),	-- Crafted Dreadful Gladiator's Belt of Cruelty
					r(137814),	-- Crafted Dreadful Gladiator's Belt of Meditation
					r(137816),	-- Crafted Dreadful Gladiator's Bindings of Meditation
					r(137824),	-- Crafted Dreadful Gladiator's Bindings of Prowess
					r(137831),	-- Crafted Dreadful Gladiator's Boots of Alacrity
					r(137844),	-- Crafted Dreadful Gladiator's Boots of Cruelty
					r(137838),	-- Crafted Dreadful Gladiator's Copperskin Gloves
					r(137839),	-- Crafted Dreadful Gladiator's Copperskin Helm
					r(137840),	-- Crafted Dreadful Gladiator's Copperskin Legguards
					r(137841),	-- Crafted Dreadful Gladiator's Copperskin Spaulders
					r(137842),	-- Crafted Dreadful Gladiator's Copperskin Tunic
					r(137809),	-- Crafted Dreadful Gladiator's Dragonhide Gloves
					r(137810),	-- Crafted Dreadful Gladiator's Dragonhide Helm
					r(137811),	-- Crafted Dreadful Gladiator's Dragonhide Legguards
					r(137812),	-- Crafted Dreadful Gladiator's Dragonhide Robes
					r(137813),	-- Crafted Dreadful Gladiator's Dragonhide Spaulders
					r(137833),	-- Crafted Dreadful Gladiator's Ironskin Gloves
					r(137834),	-- Crafted Dreadful Gladiator's Ironskin Helm
					r(137835),	-- Crafted Dreadful Gladiator's Ironskin Legguards
					r(137836),	-- Crafted Dreadful Gladiator's Ironskin Spaulders
					r(137837),	-- Crafted Dreadful Gladiator's Ironskin Tunic
					r(137817),	-- Crafted Dreadful Gladiator's Kodohide Gloves
					r(137818),	-- Crafted Dreadful Gladiator's Kodohide Helm
					r(137819),	-- Crafted Dreadful Gladiator's Kodohide Legguards
					r(137820),	-- Crafted Dreadful Gladiator's Kodohide Robes
					r(137821),	-- Crafted Dreadful Gladiator's Kodohide Spaulders
					r(137823),	-- Crafted Dreadful Gladiator's Leather Footguards of Alacrity
					r(137815),	-- Crafted Dreadful Gladiator's Leather Footguards of Meditation
					r(137847),	-- Crafted Dreadful Gladiator's Leather Gloves
					r(137848),	-- Crafted Dreadful Gladiator's Leather Helm
					r(137849),	-- Crafted Dreadful Gladiator's Leather Legguards
					r(137850),	-- Crafted Dreadful Gladiator's Leather Spaulders
					r(137846),	-- Crafted Dreadful Gladiator's Leather Tunic
					r(137843),	-- Crafted Dreadful Gladiator's Waistband of Accuracy
					r(137830),	-- Crafted Dreadful Gladiator's Waistband of Cruelty
					r(137825),	-- Crafted Dreadful Gladiator's Wyrmhide Gloves
					r(137826),	-- Crafted Dreadful Gladiator's Wyrmhide Helm
					r(137827),	-- Crafted Dreadful Gladiator's Wyrmhide Legguards
					r(137828),	-- Crafted Dreadful Gladiator's Wyrmhide Robes
					r(137829),	-- Crafted Dreadful Gladiator's Wyrmhide Spaulders
					r(140185),	-- Magnificent Hide Pack
					r(138589),	-- Quilen Hide Boots
					r(138590),	-- Quilen Hide Helm
					r(138593),	-- Spirit Keeper Footguards
					r(138594),	-- Spirit Keeper Helm
				}),
			})),
			spell(140041, bubbleDownSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Magnificence of Scales
				["cost"] = ClassicCost({{ "i", 79101, 20 }}),	-- 20x Prismatic Scale
				["groups"] = applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, {
					r(138596),	-- Cloud Serpent Helm
					r(138595),	-- Cloud Serpent Sabatons
					r(137866),	-- Crafted Dreadful Gladiator's Armbands of Meditation
					r(137865),	-- Crafted Dreadful Gladiator's Armbands of Prowess
					r(137857),	-- Crafted Dreadful Gladiator's Chain Armor
					r(137858),	-- Crafted Dreadful Gladiator's Chain Gauntlets
					r(137859),	-- Crafted Dreadful Gladiator's Chain Helm
					r(137860),	-- Crafted Dreadful Gladiator's Chain Leggings
					r(137861),	-- Crafted Dreadful Gladiator's Chain Spaulders
					r(137872),	-- Crafted Dreadful Gladiator's Linked Armor
					r(137873),	-- Crafted Dreadful Gladiator's Linked Gauntlets
					r(137874),	-- Crafted Dreadful Gladiator's Linked Helm
					r(137875),	-- Crafted Dreadful Gladiator's Linked Leggings
					r(137876),	-- Crafted Dreadful Gladiator's Linked Spaulders
					r(137852),	-- Crafted Dreadful Gladiator's Links of Accuracy
					r(137851),	-- Crafted Dreadful Gladiator's Links of Cruelty
					r(137878),	-- Crafted Dreadful Gladiator's Mail Armor
					r(137863),	-- Crafted Dreadful Gladiator's Mail Footguards of Alacrity
					r(137864),	-- Crafted Dreadful Gladiator's Mail Footguards of Meditation
					r(137879),	-- Crafted Dreadful Gladiator's Mail Gauntlets
					r(137880),	-- Crafted Dreadful Gladiator's Mail Helm
					r(137881),	-- Crafted Dreadful Gladiator's Mail Leggings
					r(137882),	-- Crafted Dreadful Gladiator's Mail Spaulders
					r(137867),	-- Crafted Dreadful Gladiator's Ringmail Armor
					r(137868),	-- Crafted Dreadful Gladiator's Ringmail Gauntlets
					r(137869),	-- Crafted Dreadful Gladiator's Ringmail Helm
					r(137870),	-- Crafted Dreadful Gladiator's Ringmail Leggings
					r(137871),	-- Crafted Dreadful Gladiator's Ringmail Spaulders
					r(137854),	-- Crafted Dreadful Gladiator's Sabatons of Alacrity
					r(137853),	-- Crafted Dreadful Gladiator's Sabatons of Cruelty
					r(137877),	-- Crafted Dreadful Gladiator's Waistguard of Cruelty
					r(137862),	-- Crafted Dreadful Gladiator's Waistguard of Meditation
					r(137856),	-- Crafted Dreadful Gladiator's Wristguards of Accuracy
					r(137855),	-- Crafted Dreadful Gladiator's Wristguards of Alacrity
					r(138592),	-- Dreadrunner Helm
					r(138591),	-- Dreadrunner Sabatons
					r(140185),	-- Magnificent Hide Pack
				}),
			})),
		}),
		n(ARMOR, {
			n(BACK, {
				i(85851),	-- Misthide Drape
				i(85852),	-- Quick Strike Cloak
				i(85853),	-- Stormscale Drape
			}),
			filter(LEATHER, {
				i(85788),	-- Chestguard of Nemeses
				i(85797),	-- Contender's Leather Belt
				i(85798),	-- Contender's Leather Boots
				i(85799),	-- Contender's Leather Bracers
				i(85800),	-- Contender's Leather Chestguard
				i(85801),	-- Contender's Leather Gloves
				i(85802),	-- Contender's Leather Helm
				i(85803),	-- Contender's Leather Leggings
				i(85804),	-- Contender's Leather Shoulders
				i(85813),	-- Contender's Wyrmhide Belt
				i(85814),	-- Contender's Wyrmhide Boots
				i(85815),	-- Contender's Wyrmhide Bracers
				i(85816),	-- Contender's Wyrmhide Chestguard
				i(85817),	-- Contender's Wyrmhide Gloves
				i(85818),	-- Contender's Wyrmhide Helm
				i(85819),	-- Contender's Wyrmhide Leggings
				i(85820),	-- Contender's Wyrmhide Shoulders
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93506, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Armwraps of Accuracy
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93568, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Armwraps of Alacrity
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93472, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Belt of Cruelty
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93463, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Belt of Meditation
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93465, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Bindings of Meditation
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93474, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Bindings of Prowess
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93505, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Boots of Alacrity
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93567, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Boots of Cruelty
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93517, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Copperskin Gloves
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93519, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Copperskin Helm
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93521, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Copperskin Legguards
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93523, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Copperskin Spaulders
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93525, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Copperskin Tunic
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93458, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Dragonhide Gloves
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93459, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Dragonhide Helm
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93460, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Dragonhide Legguards
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93461, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Dragonhide Robes
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93462, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Dragonhide Spaulders
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93507, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Ironskin Gloves
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93509, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Ironskin Helm
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93511, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Ironskin Legguards
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93513, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Ironskin Spaulders
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93515, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Ironskin Tunic
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93466, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Kodohide Gloves
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93467, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Kodohide Helm
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93468, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Kodohide Legguards
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93469, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Kodohide Robes
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93470, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Kodohide Spaulders
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93473, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Leather Footguards of Alacrity
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93464, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Leather Footguards of Meditation
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93570, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Leather Gloves
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93571, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Leather Helm
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93572, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Leather Legguards
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93573, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Leather Spaulders
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93569, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Leather Tunic
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93566, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Waistband of Accuracy
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93504, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Waistband of Cruelty
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93475, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Wyrmhide Gloves
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93476, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Wyrmhide Helm
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93477, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Wyrmhide Legguards
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93478, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Wyrmhide Robes
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93479, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Wyrmhide Spaulders
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98832, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Armwraps of Accuracy
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98883, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Armwraps of Alacrity
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98802, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Belt of Cruelty
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98794, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Belt of Meditation
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98796, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Bindings of Meditation
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98804, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Bindings of Prowess
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98831, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Boots of Alacrity
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98882, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Boots of Cruelty
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98838, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Copperskin Gloves
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98839, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Copperskin Helm
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98840, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Copperskin Legguards
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98841, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Copperskin Spaulders
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98842, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Copperskin Tunic
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98789, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Dragonhide Gloves
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98790, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Dragonhide Helm
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98791, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Dragonhide Legguards
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98792, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Dragonhide Robes
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98793, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Dragonhide Spaulders
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98803, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Footguards of Alacrity
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98795, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Footguards of Meditation
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98833, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Ironskin Gloves
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98834, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Ironskin Helm
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98835, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Ironskin Legguards
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98836, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Ironskin Spaulders
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98837, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Ironskin Tunic
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98797, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Kodohide Gloves
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98798, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Kodohide Helm
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98799, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Kodohide Legguards
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98800, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Kodohide Robes
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98801, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Kodohide Spaulders
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98885, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Leather Gloves
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98886, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Leather Helm
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98887, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Leather Legguards
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98888, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Leather Spaulders
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98884, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Leather Tunic
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98881, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Waistband of Accuracy
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98830, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Waistband of Cruelty
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98805, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Wyrmhide Gloves
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98806, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Wyrmhide Helm
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98807, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Wyrmhide Legguards
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98808, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Wyrmhide Robes
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98809, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Wyrmhide Spaulders
				i(85823),	-- Greyshadow Chestguard
				i(85824),	-- Greyshadow Gloves
				i(85827),	-- Liferuned Leather Gloves
				i(90497),	-- Misthide Belt
				i(85832),	-- Misthide Belt
				i(90496),	-- Misthide Boots
				i(85833),	-- Misthide Boots
				i(90495),	-- Misthide Bracers
				i(85834),	-- Misthide Bracers
				i(90494),	-- Misthide Chestguard
				i(85835),	-- Misthide Chestguard
				i(90493),	-- Misthide Gloves
				i(85836),	-- Misthide Gloves
				i(90492),	-- Misthide Helm
				i(85837),	-- Misthide Helm
				i(90491),	-- Misthide Leggings
				i(85838),	-- Misthide Leggings
				i(90490),	-- Misthide Shoulders
				i(85839),	-- Misthide Shoulders
				i(85828),	-- Murderer's Gloves
				i(85829),	-- Nightfire Robe
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98609, {["timeline"] = {ADDED_5_4_0}})),			-- Pennyroyal Belt
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98600, {["timeline"] = {ADDED_5_4_0}})),			-- Pennyroyal Leggings
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94269, {["timeline"] = {ADDED_5_2_0}})),	-- Quilen Hide Boots
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94270, {["timeline"] = {ADDED_5_2_0}})),	-- Quilen Hide Helm
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98613, {["timeline"] = {ADDED_5_4_0}})),			-- Snow Lily Belt
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98604, {["timeline"] = {ADDED_5_4_0}})),			-- Snow Lily Britches
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94273, {["timeline"] = {ADDED_5_2_0}})),	-- Spirit Keeper Footguards
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94274, {["timeline"] = {ADDED_5_2_0}})),	-- Spirit Keeper Helm
				i(85849),	-- Wildblood Gloves
				i(85850),	-- Wildblood Vest
			}),
			filter(MAIL, {
				i(85787),	-- Chestguard of Earthen Harmony
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94276, {["timeline"] = {ADDED_5_2_0}})),	-- Cloud Serpent Helm
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94275, {["timeline"] = {ADDED_5_2_0}})),	-- Cloud Serpent Sabatons
				i(85789),	-- Contender's Dragonscale Belt
				i(85790),	-- Contender's Dragonscale Boots
				i(85791),	-- Contender's Dragonscale Bracers
				i(85792),	-- Contender's Dragonscale Chestguard
				i(85793),	-- Contender's Dragonscale Gloves
				i(85794),	-- Contender's Dragonscale Helm
				i(85795),	-- Contender's Dragonscale Leggings
				i(85796),	-- Contender's Dragonscale Shoulders
				i(85805),	-- Contender's Scale Belt
				i(85806),	-- Contender's Scale Boots
				i(85807),	-- Contender's Scale Bracers
				i(85808),	-- Contender's Scale Chestguard
				i(85809),	-- Contender's Scale Gloves
				i(85810),	-- Contender's Scale Helm
				i(85811),	-- Contender's Scale Leggings
				i(85812),	-- Contender's Scale Shoulders
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93578, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Armbands of Meditation
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93577, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Armbands of Prowess
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93494, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Chain Armor
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93495, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Chain Gauntlets
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93496, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Chain Helm
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93497, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Chain Leggings
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93498, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Chain Spaulders
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93584, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Linked Armor
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93585, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Linked Gauntlets
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93586, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Linked Helm
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93587, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Linked Leggings
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93588, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Linked Spaulders
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93489, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Links of Accuracy
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93488, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Links of Cruelty
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93590, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Mail Armor
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93575, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Mail Footguards of Alacrity
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93576, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Mail Footguards of Meditation
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93591, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Mail Gauntlets
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93592, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Mail Helm
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93593, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Mail Leggings
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93594, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Mail Spaulders
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93579, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Ringmail Armor
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93580, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Ringmail Gauntlets
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93581, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Ringmail Helm
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93582, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Ringmail Leggings
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93583, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Ringmail Spaulders
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93491, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Sabatons of Alacrity
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93490, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Sabatons of Cruelty
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93589, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Waistguard of Cruelty
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93574, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Waistguard of Meditation
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93493, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Wristguards of Accuracy
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93492, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Wristguards of Alacrity
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98893, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Armbands of Meditation
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98892, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Armbands of Prowess
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98820, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Chain Armor
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98821, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Chain Gauntlets
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98822, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Chain Helm
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98823, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Chain Leggings
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98824, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Chain Spaulders
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98890, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Footguards of Alacrity
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98891, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Footguards of Meditation
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98899, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Linked Armor
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98900, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Linked Gauntlets
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98901, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Linked Helm
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98902, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Linked Leggings
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98903, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Linked Spaulders
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98815, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Links of Accuracy
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98814, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Links of Cruelty
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98905, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Mail Armor
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98906, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Mail Gauntlets
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98907, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Mail Helm
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98908, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Mail Leggings
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98909, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Mail Spaulders
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98894, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Ringmail Armor
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98895, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Ringmail Gauntlets
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98896, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Ringmail Helm
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98897, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Ringmail Leggings
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98898, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Ringmail Spaulders
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98817, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Sabatons of Alacrity
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98816, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Sabatons of Cruelty
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98904, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Waistguard of Cruelty
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98889, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Waistguard of Meditation
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98819, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Wristguards of Accuracy
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98818, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Wristguards of Alacrity
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94272, {["timeline"] = {ADDED_5_2_0}})),	-- Dreadrunner Helm
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94271, {["timeline"] = {ADDED_5_2_0}})),	-- Dreadrunner Sabatons
				i(85821),	-- Fists of Lightning
				i(85822),	-- Gloves of Earthen Harmony
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98614, {["timeline"] = {ADDED_5_4_0}})),	-- Gorge Stalker Belt
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98605, {["timeline"] = {ADDED_5_4_0}})),	-- Gorge Stalker Legplates
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98610, {["timeline"] = {ADDED_5_4_0}})),	-- Krasari Prowler Belt
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98601, {["timeline"] = {ADDED_5_4_0}})),	-- Krasari Prowler Britches
				i(85825),	-- Lifekeeper's Gloves
				i(85826),	-- Lifekeeper's Robe
				i(85830),	-- Raiment of Blood and Bone
				i(85831),	-- Raven Lord's Gloves
				i(85840),	-- Stormbreaker Chestguard
				i(90480),	-- Stormscale Belt
				i(85841),	-- Stormscale Belt
				i(90481),	-- Stormscale Boots
				i(85842),	-- Stormscale Boots
				i(90482),	-- Stormscale Bracers
				i(85843),	-- Stormscale Bracers
				i(90483),	-- Stormscale Chestguard
				i(85844),	-- Stormscale Chestguard
				i(90484),	-- Stormscale Gloves
				i(85845),	-- Stormscale Gloves
				i(90485),	-- Stormscale Helm
				i(85846),	-- Stormscale Helm
				i(90486),	-- Stormscale Leggings
				i(85847),	-- Stormscale Leggings
				i(90487),	-- Stormscale Shoulders
				i(85848),	-- Stormscale Shoulders
			}),
		}),
		filter(MISC, {
			i(83765),	-- Angerhide Leg Armor
			i(85568),	-- Brutal Leg Armor
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(102351, {["timeline"] = {ADDED_5_4_0}})),	-- Drums of Rage
			i(83763),	-- Ironscale Leg Armor
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(95536, {["timeline"] = {ADDED_5_2_0}})),	-- Magnificent Hide Pack
			i(85559),	-- Sha Armor Kit
			i(85569),	-- Sha-Touched Leg Armor
			i(83764),	-- Shadowleather Leg Armor
			i(85570),	-- Toughened Leg Armor
		}),
	}),
	prof(MINING, {
		spell(2575, {	-- Mining
			i(72094),	-- Black Trillium Ore
			i(97512, {["timeline"] = {ADDED_5_3_0}}),	-- Ghost Iron Nugget
			i(72092),	-- Ghost Iron Ore
			i(72093),	-- Kyparite
			i(97546, {["timeline"] = {ADDED_5_3_0}}),	-- Kyparite Fragment
			i(72103),	-- White Trillium Ore
			-- Not Ore --
			--[[	No need to list Tradegoods w/ many other sources
			i(76137),	-- Alexandrite
			i(76141),	-- Imperial Amethyst
			i(76133),	-- Lapis Lazuli
			i(76136),	-- Pandarian Garnet
			i(76131),	-- Primordial Ruby
			i(76138),	-- River's Heart
			i(76135),	-- Roguestone
			i(76142),	-- Sun's Radiance
			i(76134),	-- Sunstone
			i(76130),	-- Tiger Opal
			i(76140),	-- Vermilion Onyx
			i(76139),	-- Wild Jade
			--]]
		}),
		spell(2656, {	-- Smelting
			i(72096),	-- Ghost Iron Bar
			i(72095),	-- Trillium Bar
		}),
	}),
	prof(TAILORING, {
		n(DISCOVERY, {
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, spell(143011, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0 } }, {	-- Celestial Cloth
				["cost"] = ClassicCost({{ "i", 82441, 10 }}),	-- 10x Bolt of Windwool Cloth
				["groups"] = {
					r(142964),	-- Belt of the Night Sky
					r(143053),	-- Crafted Malevolent Gladiator's Cape of Cruelty
					r(143054),	-- Crafted Malevolent Gladiator's Cape of Prowess
					r(143082),	-- Crafted Malevolent Gladiator's Cloak of Alacrity
					r(143083),	-- Crafted Malevolent Gladiator's Cloak of Prowess
					r(143056),	-- Crafted Malevolent Gladiator's Cord of Accuracy
					r(143055),	-- Crafted Malevolent Gladiator's Cord of Cruelty
					r(143057),	-- Crafted Malevolent Gladiator's Cord of Meditation
					r(143061),	-- Crafted Malevolent Gladiator's Cuffs of Accuracy
					r(143063),	-- Crafted Malevolent Gladiator's Cuffs of Meditation
					r(143062),	-- Crafted Malevolent Gladiator's Cuffs of Prowess
					r(143064),	-- Crafted Malevolent Gladiator's Drape of Cruelty
					r(143066),	-- Crafted Malevolent Gladiator's Drape of Meditation
					r(143065),	-- Crafted Malevolent Gladiator's Drape of Prowess
					r(143088),	-- Crafted Malevolent Gladiator's Felweave Amice
					r(143085),	-- Crafted Malevolent Gladiator's Felweave Cowl
					r(143084),	-- Crafted Malevolent Gladiator's Felweave Handguards
					r(143087),	-- Crafted Malevolent Gladiator's Felweave Raiment
					r(143086),	-- Crafted Malevolent Gladiator's Felweave Trousers
					r(143072),	-- Crafted Malevolent Gladiator's Mooncloth Gloves
					r(143073),	-- Crafted Malevolent Gladiator's Mooncloth Helm
					r(143074),	-- Crafted Malevolent Gladiator's Mooncloth Leggings
					r(143076),	-- Crafted Malevolent Gladiator's Mooncloth Mantle
					r(143075),	-- Crafted Malevolent Gladiator's Mooncloth Robe
					r(143077),	-- Crafted Malevolent Gladiator's Satin Gloves
					r(143078),	-- Crafted Malevolent Gladiator's Satin Hood
					r(143079),	-- Crafted Malevolent Gladiator's Satin Leggings
					r(143081),	-- Crafted Malevolent Gladiator's Satin Mantle
					r(143080),	-- Crafted Malevolent Gladiator's Satin Robe
					r(143071),	-- Crafted Malevolent Gladiator's Silk Amice
					r(143068),	-- Crafted Malevolent Gladiator's Silk Cowl
					r(143067),	-- Crafted Malevolent Gladiator's Silk Handguards
					r(143070),	-- Crafted Malevolent Gladiator's Silk Robe
					r(143069),	-- Crafted Malevolent Gladiator's Silk Trousers
					r(143059),	-- Crafted Malevolent Gladiator's Treads of Alacrity
					r(143058),	-- Crafted Malevolent Gladiator's Treads of Cruelty
					r(143060),	-- Crafted Malevolent Gladiator's Treads of Meditation
					r(142955),	-- Leggings of the Night Sky
					r(142960),	-- White Cloud Belt
					r(142951),	-- White Cloud Leggings
				},
			}))),
			spell(125557, bubbleDownSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Imperial Silk
				["cost"] = ClassicCost({{ "i", 82441, 8 }}),	-- 8x Bolt of Windwool Cloth
				["groups"] = applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, {
					r(137907),	-- Crafted Dreadful Gladiator's Cape of Cruelty
					r(137908),	-- Crafted Dreadful Gladiator's Cape of Prowess
					r(137936),	-- Crafted Dreadful Gladiator's Cloak of Alacrity
					r(137937),	-- Crafted Dreadful Gladiator's Cloak of Prowess
					r(137910),	-- Crafted Dreadful Gladiator's Cord of Accuracy
					r(137909),	-- Crafted Dreadful Gladiator's Cord of Cruelty
					r(137911),	-- Crafted Dreadful Gladiator's Cord of Meditation
					r(137915),	-- Crafted Dreadful Gladiator's Cuffs of Accuracy
					r(137917),	-- Crafted Dreadful Gladiator's Cuffs of Meditation
					r(137916),	-- Crafted Dreadful Gladiator's Cuffs of Prowess
					r(137918),	-- Crafted Dreadful Gladiator's Drape of Cruelty
					r(137920),	-- Crafted Dreadful Gladiator's Drape of Meditation
					r(137919),	-- Crafted Dreadful Gladiator's Drape of Prowess
					r(137942),	-- Crafted Dreadful Gladiator's Felweave Amice
					r(137939),	-- Crafted Dreadful Gladiator's Felweave Cowl
					r(137938),	-- Crafted Dreadful Gladiator's Felweave Handguards
					r(137941),	-- Crafted Dreadful Gladiator's Felweave Raiment
					r(137940),	-- Crafted Dreadful Gladiator's Felweave Trousers
					r(137926),	-- Crafted Dreadful Gladiator's Mooncloth Gloves
					r(137927),	-- Crafted Dreadful Gladiator's Mooncloth Helm
					r(137928),	-- Crafted Dreadful Gladiator's Mooncloth Leggings
					r(137930),	-- Crafted Dreadful Gladiator's Mooncloth Mantle
					r(137929),	-- Crafted Dreadful Gladiator's Mooncloth Robe
					r(137931),	-- Crafted Dreadful Gladiator's Satin Gloves
					r(137932),	-- Crafted Dreadful Gladiator's Satin Hood
					r(137933),	-- Crafted Dreadful Gladiator's Satin Leggings
					r(137935),	-- Crafted Dreadful Gladiator's Satin Mantle
					r(137934),	-- Crafted Dreadful Gladiator's Satin Robe
					r(137925),	-- Crafted Dreadful Gladiator's Silk Amice
					r(137922),	-- Crafted Dreadful Gladiator's Silk Cowl
					r(137921),	-- Crafted Dreadful Gladiator's Silk Handguards
					r(137924),	-- Crafted Dreadful Gladiator's Silk Robe
					r(137923),	-- Crafted Dreadful Gladiator's Silk Trousers
					r(137913),	-- Crafted Dreadful Gladiator's Treads of Alacrity
					r(137912),	-- Crafted Dreadful Gladiator's Treads of Cruelty
					r(137914),	-- Crafted Dreadful Gladiator's Treads of Meditation
					r(138598),	-- Falling Blossom Cowl
					r(138600),	-- Falling Blossom Hood
					r(138599),	-- Falling Blossom Sandals
					r(138597),	-- Falling Blossom Treads
				}),
			})),
		}),
		n(ARMOR, {
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98612, {["timeline"] = {ADDED_5_4_0}})),	-- Belt of the Night Sky
			i(92726),	-- Bipsi's Gloves
			i(82430),	-- Contender's Satin Amice
			i(82436),	-- Contender's Satin Belt
			i(82429),	-- Contender's Satin Cowl
			i(82434),	-- Contender's Satin Cuffs
			i(82435),	-- Contender's Satin Footwraps
			i(82432),	-- Contender's Satin Handwraps
			i(82433),	-- Contender's Satin Pants
			i(82431),	-- Contender's Satin Raiment
			i(82422),	-- Contender's Silk Amice
			i(82428),	-- Contender's Silk Belt
			i(82421),	-- Contender's Silk Cowl
			i(82426),	-- Contender's Silk Cuffs
			i(82427),	-- Contender's Silk Footwraps
			i(82424),	-- Contender's Silk Handwraps
			i(82425),	-- Contender's Silk Pants
			i(82423),	-- Contender's Silk Raiment
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93420, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Cape of Cruelty
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93421, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Cape of Prowess
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93607, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Cloak of Alacrity
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93608, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Cloak of Prowess
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93429, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Cord of Accuracy
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93428, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Cord of Cruelty
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93430, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Cord of Meditation
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93434, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Cuffs of Accuracy
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93436, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Cuffs of Meditation
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93435, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Cuffs of Prowess
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93437, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Drape of Cruelty
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93439, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Drape of Meditation
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93438, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Drape of Prowess
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93619, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Felweave Amice
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93616, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Felweave Cowl
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93615, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Felweave Handguards
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93618, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Felweave Raiment
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93617, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Felweave Trousers
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93550, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Mooncloth Gloves
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93551, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Mooncloth Helm
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93552, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Mooncloth Leggings
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93554, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Mooncloth Mantle
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93553, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Mooncloth Robe
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93555, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Satin Gloves
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93556, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Satin Hood
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93557, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Satin Leggings
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93559, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Satin Mantle
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93558, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Satin Robe
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93503, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Silk Amice
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93500, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Silk Cowl
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93499, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Silk Handguards
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93502, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Silk Robe
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93501, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Silk Trousers
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93432, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Treads of Alacrity
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93431, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Treads of Cruelty
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(93433, {["timeline"] = {ADDED_5_2_0}})),	-- Crafted Dreadful Gladiator's Treads of Meditation
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98756, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Cape of Cruelty
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98757, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Cape of Prowess
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98913, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Cloak of Alacrity
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98914, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Cloak of Prowess
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98764, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Cord of Accuracy
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98763, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Cord of Cruelty
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98765, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Cord of Meditation
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98769, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Cuffs of Accuracy
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98771, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Cuffs of Meditation
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98770, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Cuffs of Prowess
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98772, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Drape of Cruelty
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98774, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Drape of Meditation
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98773, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Drape of Prowess
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98925, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Felweave Amice
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98922, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Felweave Cowl
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98921, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Felweave Handguards
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98924, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Felweave Raiment
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98923, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Felweave Trousers
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98865, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Mooncloth Gloves
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98866, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Mooncloth Helm
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98867, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Mooncloth Leggings
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98869, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Mooncloth Mantle
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98868, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Mooncloth Robe
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98870, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Satin Gloves
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98871, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Satin Hood
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98872, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Satin Leggings
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98874, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Satin Mantle
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98873, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Satin Robe
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98829, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Silk Amice
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98826, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Silk Cowl
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98825, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Silk Handguards
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98828, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Silk Robe
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98827, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Silk Trousers
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98767, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Treads of Alacrity
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98766, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Treads of Cruelty
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98768, {["timeline"] = {ADDED_5_4_0}})),			-- Crafted Malevolent Gladiator's Treads of Meditation
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94279, {["timeline"] = {ADDED_5_2_0}})),	-- Falling Blossom Sandals
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94277, {["timeline"] = {ADDED_5_2_0}})),	-- Falling Blossom Treads
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94278, {["timeline"] = {ADDED_5_2_0}})),	-- Falling Blossom Cowl
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94280, {["timeline"] = {ADDED_5_2_0}})),	-- Falling Blossom Hood
			i(82440),	-- Gloves of Creation
			i(86313),	-- Imperial Silk Gloves
			i(86312),	-- Legacy of the Emperor
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98603, {["timeline"] = {ADDED_5_4_0}})),	-- Leggings of the Night Sky
			i(86311),	-- Robe of Eternal Rule
			i(82439),	-- Robes of Creation
			i(82438),	-- Spelltwister's Gloves
			i(82437),	-- Spelltwister's Grand Robe
			i(86314),	-- Touch of the Light
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98608, {["timeline"] = {ADDED_5_4_0}})),	-- White Cloud Belt
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(98599, {["timeline"] = {ADDED_5_4_0}})),	-- White Cloud Leggings
			i(90472),	-- Windwool Belt [Rare]
			i(82404),	-- Windwool Belt
			i(90473),	-- Windwool Boots [Rare]
			i(82403),	-- Windwool Boots
			i(90474),	-- Windwool Bracers [Rare]
			i(82402),	-- Windwool Bracers
			i(90476),	-- Windwool Gloves [Rare]
			i(82400),	-- Windwool Gloves
			i(90479),	-- Windwool Hood [Rare]
			i(82397),	-- Windwool Hood
			i(90475),	-- Windwool Pants [Rare]
			i(82401),	-- Windwool Pants
			i(90478),	-- Windwool Shoulders [Rare]
			i(82398),	-- Windwool Shoulders
			i(90477),	-- Windwool Tunic [Rare]
			i(82399),	-- Windwool Tunic
		}),
		n(ARMOR_ENCHANTMENTS, {
			i(82443),	-- Cerulean Spellthread
			i(82444),	-- Greater Pearlescent Spellthread
			i(82445),	-- Greater Cerulean Spellthread
			i(82442),	-- Pearlescent Spellthread
		}),
		filter(BAGS, {
			i(82446),	-- Royal Satchel
		}),
		filter(BATTLE_PETS, {
			applyclassicphase(MOP_PHASE_LANDFALL, i(92960, bubbleDownSelf({ ["timeline"] = { ADDED_5_1_0 } }, {	-- Silkworm Cocoon
				i(90900),	-- Imperial Moth (PET!)
				i(90902),	-- Imperial Silkworm (PET!)
			}))),
		}),
		-- #if AFTER BFA
		filter(MISC, {
			i(72986),	-- Heavy Windwool Bandage
			i(72985),	-- Windwool Bandage
		}),
		-- #endif
		filter(REAGENTS, {
			i(82441),	-- Bolt of Windwool Cloth
			i(82447),	-- Imperial Silk
		}),
	}),
}))));
