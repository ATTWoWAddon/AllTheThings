---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
local function ClassicCost(cost)
	-- This data is provided by ReagentsDB in Retail
	-- #IF ANYCLASSIC
	return cost
	-- #ENDIF
end
root(ROOTS.Craftables, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_3 } }, {
	i(180055, {["timeline"] = { ADDED_9_0_1 }}),	-- Relic of the Past I
	i(180057, {["timeline"] = { ADDED_9_0_1 }}),	-- Relic of the Past II
	i(180058, {["timeline"] = { ADDED_9_0_1 }}),	-- Relic of the Past III
	i(180059, {["timeline"] = { ADDED_9_0_1 }}),	-- Relic of the Past IV
	i(180060, {["timeline"] = { ADDED_9_0_1 }}),	-- Relic of the Past V
	prof(ALCHEMY, {
		n(COMMON_VENDOR_ITEMS, {
			i(40411, {	-- Enchanted Vial for WotLK, turns into Shattered Vial with Cataclysm.
				["description"] = "Can be bought from Alchemy Suppliers, as well as some Trade vendors around the world.",
				["providers"] = {
					{ "n", 24341},	-- Barnabas Frye <Trade Goods>
					{ "n", 27012},	-- Beem Goldsprocket <Trade Goods>
					{ "n", 26941},	-- Brokkan Bear-Arms <Trade Goods>
					{ "n", 28714},	-- Patricia Egan <Alchemy Supplies>
					{ "n", 23802},	-- Wink Sprinklesprankle <General Goods & Trade Supplies>
				},
				["coords"] = {
					{ 57.7, 72.32, BOREAN_TUNDRA },
					{ 41.34, 34.61, BOREAN_TUNDRA },
					{ 79.5, 30.47, HOWLING_FJORD },
					{ 58.4, 62.75, HOWLING_FJORD },
					{ 41.54, 33.32, NORTHREND_DALARAN },
				},
				["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
			}),
		}),
		n(DISCOVERY, {
			spell(60893, {	-- Northrend Alchemy Research
				-- #if AFTER WOD
				i(115460, {	-- Northrend Alchemy Research
				-- #endif
					r(53895),	-- Crazy Alchemist's Potion
					r(60354),	-- Elixir of Accuracy
					r(60365),	-- Elixir of Armor Piercing
					r(60355),	-- Elixir of Deadly Strikes
					r(60366),	-- Elixir of Lightning Speed
					r(60356),	-- Elixir of Mighty Defense
					r(60357),	-- Elixir of Mighty Intellect[10.1.7+] / Elixir of Expertise
					r(56519),	-- Elixir of Mighty Mageblood
					r(54220),	-- Elixir of Protection
					r(62410, {["timeline"] = {ADDED_3_0_8}}),	-- Elixir of Water Walking
					r(54221),	-- Potion of Speed
					r(54222),	-- Potion of Wild Magic
					r(53904),	-- Powerful Rejuvenation Potion
					r(53777),	-- Transmute: Eternal Air to Earth
					r(53776),	-- Transmute: Eternal Air to Water
					r(53781),	-- Transmute: Eternal Earth to Air
					r(53782),	-- Transmute: Eternal Earth to Shadow
					r(53775),	-- Transmute: Eternal Fire to Life
					r(53774),	-- Transmute: Eternal Fire to Water
					r(53773),	-- Transmute: Eternal Life to Fire
					r(53771),	-- Transmute: Eternal Life to Shadow
					r(53779),	-- Transmute: Eternal Shadow to Earth
					r(53780),	-- Transmute: Eternal Shadow to Life
					r(53783),	-- Transmute: Eternal Water to Air
					r(53784),	-- Transmute: Eternal Water to Fire
				-- #if AFTER WOD
				}),
				-- #endif
			}),
		}),
		filter(CONSUMABLES, {
			i(40077),	-- Crazy Alchemist's Potion
			i(44325),	-- Elixir of Accuracy
			i(44330),	-- Elixir of Armor Piercing
			i(44327),	-- Elixir of Deadly Strikes
			i(44331),	-- Elixir of Lightning Speed
			i(39666),	-- Elixir of Mighty Agility
			i(44328),	-- Elixir of Mighty Defense
			i(40078),	-- Elixir of Mighty Fortitude
			i(44329),	-- Elixir of Mighty Intellect[10.1.7+] / Elixir of Expertise
			i(40109),	-- Elixir of Mighty Mageblood
			i(40073),	-- Elixir of Mighty Strength
			i(44332),	-- Elixir of Mighty Thoughts
			i(40097),	-- Elixir of Protection
			i(40072),	-- Elixir of Versatility[Legion+] / Elixir of Spirit
			i(8827, {["timeline"] = {ADDED_3_0_8}}),	-- Elixir of Water Walking
			i(43569),	-- Endless Healing Potion
			i(43570),	-- Endless Mana Potion
			i(46377),	-- Flask of Endless Rage
			i(46378),	-- Flask of Pure Mojo
			i(46379),	-- Flask of Stoneblood
			i(46376),	-- Flask of the Frost Wyrm
			i(47499, {["timeline"] = {ADDED_3_2_0, REMOVED_5_0_4}}),	-- Flask of the North
			i(40076),	-- Guru's Elixir
			i(40067),	-- Icy Mana Potion
			i(40093),	-- Indestructible Potion
			i(44939, {["timeline"] = {ADDED_3_0_8, REMOVED_5_0_4}}),	-- Lesser Flask of Resistance
			i(40079),	-- Lesser Flask of Toughness
			i(40213),	-- Mighty Arcane Protection Potion
			i(40214),	-- Mighty Fire Protection Potion
			i(40215),	-- Mighty Frost Protection Potion
			i(40216),	-- Mighty Nature Protection Potion
			i(40217),	-- Mighty Shadow Protection Potion
			i(40081),	-- Potion of Nightmares
			i(40211),	-- Potion of Speed
			i(40212),	-- Potion of Wild Magic
			i(40087),	-- Powerful Rejuvenation Potion
			i(39671),	-- Resurgent Healing Potion
			i(33447),	-- Runic Healing Potion
			i(33448),	-- Runic Mana Potion
			i(40070),	-- Spellpower Elixir
			i(40068),	-- Wrath Elixir
		}),
		filter(REAGENTS, {
			applyclassicphase(WRATH_PHASE_THREE, i(36931, {["timeline"] = { ADDED_3_2_0 }})),	-- Ametrine
			applyclassicphase(WRATH_PHASE_THREE, i(36919, {["timeline"] = { ADDED_3_2_0 }})),	-- Cardinal Ruby
			applyclassicphase(WRATH_PHASE_THREE, i(36928, {["timeline"] = { ADDED_3_2_0 }})),	-- Dreadstone
			applyclassicphase(WRATH_PHASE_THREE, i(41334, {["timeline"] = { ADDED_3_2_0 }})),	-- Earthsiege Diamond
			convertItem(35623, 37700, 10, 1),	-- Eternal Air / Crystallized Air
			convertItem(35624, 37701, 10, 1),	-- Eternal Earth / Crystallized Earth
			convertItem(36860, 37702, 10, 1),	-- Eternal Fire / Crystallized Fire
			convertItem(35625, 37704, 10, 1),	-- Eternal Life / Crystallized Life
			convertItem(35627, 37703, 10, 1),	-- Eternal Shadow / Crystallized Shadow
			convertItem(35622, 37705, 10, 1),	-- Eternal Water / Crystallized Water
			i(44958, {["timeline"] = {ADDED_3_0_8}}),	-- Ethereal Oil
			applyclassicphase(WRATH_PHASE_THREE, i(36934, {["timeline"] = { ADDED_3_2_0 }})),	-- Eye of Zul
			applyclassicphase(WRATH_PHASE_THREE, i(36922, {["timeline"] = { ADDED_3_2_0 }})),	-- King's Amber
			applyclassicphase(WRATH_PHASE_THREE, i(36925, {["timeline"] = { ADDED_3_2_0 }})),	-- Majestic Zircon
			i(40195),	-- Pygmy Oil
			i(41266),	-- Skyflare Diamond
		}),
		filter(TRINKET_F, {
			i(44323),	-- Indestructible Alchemist Stone
			i(44322),	-- Mercurial Alchemist Stone
			i(44324),	-- Mighty Alchemist Stone
		}),
	}),
	prof(ARCHAEOLOGY, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
		i(64396),	-- Nerubian Obelisk
		i(87399, {["timeline"] = {ADDED_5_0_4}}),	-- Restored Artifact
		i(64395),	-- Vrykul Rune Stick
		header(HEADERS.Currency, ARCH_CURRENCY_NERUBIAN, {
			["provider"] = { "o", 203078 },	-- Nerubian Archaeology Find
			["maps"] = {
				BOREAN_TUNDRA,
				DRAGONBLIGHT,
				EASTERN_PLAGUELANDS,
				ICECROWN,
				ZULDRAK,
			},
			["groups"] = {
				i(64481, {["cost"]={{"c",ARCH_CURRENCY_NERUBIAN,140}}}),	-- Blessing of the Old God (TOY!)
				i(64479, {["cost"]={{"c",ARCH_CURRENCY_NERUBIAN,45}}}),	-- Ewer of Jormungar Blood
				i(64477, {["cost"]={{"c",ARCH_CURRENCY_NERUBIAN,45}}}),	-- Gruesome Heart Box
				i(64476, {["cost"]={{"c",ARCH_CURRENCY_NERUBIAN,45}}}),	-- Infested Ruby Ring
				i(64482, {["cost"]={{"c",ARCH_CURRENCY_NERUBIAN,140}}}),	-- Puzzle Box of Yogg-Saron (TOY!)
				i(64475, {["cost"]={{"c",ARCH_CURRENCY_NERUBIAN,45}}}),	-- Scepter of Nezar'Azret
				i(64478, {["cost"]={{"c",ARCH_CURRENCY_NERUBIAN,45}}}),	-- Six-Clawed Cornice
				i(64474, {["cost"]={{"c",ARCH_CURRENCY_NERUBIAN,45}}}),	-- Spidery Sundial
				i(64480, {["cost"]={{"c",ARCH_CURRENCY_NERUBIAN,45}}}),	-- Vizier's Scrawled Streamer
			},
		}),
		header(HEADERS.Currency, ARCH_CURRENCY_VRYKUL, {
			["provider"] = { "o", 207189 },	-- Vrykul Archaeology Find
			["maps"] = {
				HOWLING_FJORD,
				GRIZZLY_HILLS,
				ICECROWN,
				THE_STORM_PEAKS,
			},
			["groups"] = {
				i(64464, {["cost"]={{"c",ARCH_CURRENCY_VRYKUL,45}}}),	-- Fanged Cloak Pin
				i(64462, {["cost"]={{"c",ARCH_CURRENCY_VRYKUL,45}}}),	-- Flint Striker
				i(64459, {["cost"]={{"c",ARCH_CURRENCY_VRYKUL,45}}}),	-- Intricate Treasure Chest Key
				i(64460, {["cost"]={{"c",ARCH_CURRENCY_VRYKUL,130}}}),	-- Nifflevar Bearded Axe
				i(64461, {["cost"]={{"c",ARCH_CURRENCY_VRYKUL,45}}}),	-- Scramseax
				i(64467, {["cost"]={{"c",ARCH_CURRENCY_VRYKUL,45}}}),	-- Thorned Necklace
				i(69775, {["cost"]={{"c",ARCH_CURRENCY_VRYKUL,100}},["timeline"] = {ADDED_4_1_0}}),	-- Vrykul Drinking Horn (TOY!)
			},
		}),
	})),
	prof(BLACKSMITHING, {
		-- #if BEFORE CATA
		prof(9788, {	-- Armorsmith
			["description"] = "These items can only be crafted by Blacksmiths who have completed the Art of the Armorsmith quest chain.",
			["groups"] = {
				i(41189, {["timeline"] = {ADDED_3_0_3, REMOVED_4_0_3}}),	-- Chestplate of Conquest
				i(41190, {["timeline"] = {ADDED_3_0_3, REMOVED_4_0_3}}),	-- Legplates of Conquest
			},
		}),
		prof(9787, {	-- Weaponsmith
			["description"] = "These items can only be crafted by Blacksmiths who have completed the Way of the Weaponsmith quest chain.",
			["groups"] = {
				i(41186, {["timeline"] = {ADDED_3_0_3, REMOVED_4_0_3}}),	-- Corroded Saronite Edge
				i(41187, {["timeline"] = {ADDED_3_0_3, REMOVED_4_0_3}}),	-- Corroded Saronite Woundbringer
				i(41188),	-- Saronite Mindcrusher
			},
		}),
		-- #endif
		n(ARMOR, {
			i(45559, {["timeline"] = {ADDED_3_1_0}}),	-- Battlelord's Plate Boots
			i(45550, {["timeline"] = {ADDED_3_1_0}}),	-- Belt of the Titans
			i(49907, {["timeline"] = {ADDED_3_3_0}}),	-- Boots of Kingly Upheaval
			i(47591, {	-- Breastplate of the White Knight [A]
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(47592, {	-- Breastplate of the White Knight [H]
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(43860),	-- Brilliant Saronite Belt
			i(41128),	-- Brilliant Saronite Boots
			i(43864),	-- Brilliant Saronite Bracers
			i(41129),	-- Brilliant Saronite Breastplate
			i(41127),	-- Brilliant Saronite Gauntlets
			i(43870),	-- Brilliant Saronite Helm
			i(41126),	-- Brilliant Saronite Legplates
			i(43865),	-- Brilliant Saronite Pauldrons
			i(41388),	-- Brilliant Titansteel Helm
			i(41394),	-- Brilliant Titansteel Treads
			i(39087),	-- Cobalt Belt
			i(39088),	-- Cobalt Boots
			i(41974),	-- Cobalt Bracers
			i(39085),	-- Cobalt Chestpiece
			i(41975),	-- Cobalt Gauntlets
			i(39084),	-- Cobalt Helm
			i(39086),	-- Cobalt Legplates
			i(39083),	-- Cobalt Shoulders
			i(41357),	-- Daunting Handguards
			i(41345),	-- Daunting Legplates
			i(49906, {["timeline"] = {ADDED_3_3_0}}),	-- Hellfrozen Bonegrinders
			i(41344),	-- Helm of Command
			i(40955),	-- Horned Cobalt Helm
			i(43586),	-- Icebane Chestguard
			i(43587),	-- Icebane Girdle
			i(43588),	-- Icebane Treads
			i(45551, {["timeline"] = {ADDED_3_1_0}}),	-- Indestructible Plate Girdle
			i(49903, {["timeline"] = {ADDED_3_3_0}}),	-- Legplates of Painful Death
			i(42723),	-- Ornate Saronite Bracers
			i(42724),	-- Ornate Saronite Gauntlets
			i(42725),	-- Ornate Saronite Hauberk
			i(42726),	-- Ornate Saronite Legplates
			i(42727),	-- Ornate Saronite Pauldrons
			i(42728),	-- Ornate Saronite Skullshield
			i(42729),	-- Ornate Saronite Waistguard
			i(42730),	-- Ornate Saronite Walkers
			i(49904, {["timeline"] = {ADDED_3_3_0}}),	-- Pillars of Might
			i(45552, {["timeline"] = {ADDED_3_1_0}}),	-- Plate Girdle of Righteousness
			i(49905, {["timeline"] = {ADDED_3_3_0}}),	-- Protectors of Life
			i(49902, {["timeline"] = {ADDED_3_3_0}}),	-- Puresteel Legplates
			i(40959),	-- Reinforced Cobalt Chestpiece
			i(40957),	-- Reinforced Cobalt Helm
			i(40958),	-- Reinforced Cobalt Legplates
			i(40956),	-- Reinforced Cobalt Shoulders
			i(41356),	-- Righteous Gauntlets
			i(41346),	-- Righteous Greaves
			i(47570, {	-- Saronite Swordbreakers [A]
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(47571, {	-- Saronite Swordbreakers [H]
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(41354),	-- Savage Saronite Bracers
			i(41349),	-- Savage Saronite Gauntlets
			i(41353),	-- Savage Saronite Hauberk
			i(41347),	-- Savage Saronite Legplates
			i(41351),	-- Savage Saronite Pauldrons
			i(41350),	-- Savage Saronite Skullshield
			i(41352),	-- Savage Saronite Waistguard
			i(41348),	-- Savage Saronite Walkers
			i(40953),	-- Spiked Cobalt Belt
			i(40949),	-- Spiked Cobalt Boots
			i(40954),	-- Spiked Cobalt Bracers
			i(40951),	-- Spiked Cobalt Chestpiece
			i(40952),	-- Spiked Cobalt Gauntlets
			i(40942),	-- Spiked Cobalt Helm
			i(40943),	-- Spiked Cobalt Legplates
			i(40950),	-- Spiked Cobalt Shoulders
			i(45560, {["timeline"] = {ADDED_3_1_0}}),	-- Spiked Deathdealers
			i(41386),	-- Spiked Titansteel Helm
			i(41391),	-- Spiked Titansteel Treads
			i(47574, {	-- Sunforged Bracers [A]
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(47575, {	-- Sunforged Bracers [H]
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(47593, {	-- Sunforged Breastplate [A]
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(47594, {	-- Sunforged Breastplate [H]
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(40669),	-- Tempered Saronite Belt
			i(40671),	-- Tempered Saronite Boots
			i(41116),	-- Tempered Saronite Bracers
			i(40672),	-- Tempered Saronite Breastplate
			i(41114),	-- Tempered Saronite Gauntlets
			i(40673),	-- Tempered Saronite Helm
			i(40674),	-- Tempered Saronite Legplates
			i(40675),	-- Tempered Saronite Shoulders
			i(41387),	-- Tempered Titansteel Helm
			i(41392),	-- Tempered Titansteel Treads
			i(47589, {	-- Titanium Razorplate [A]
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(47590, {	-- Titanium Razorplate [H]
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(47572, {	-- Titanium Spikeguards [A]
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(47573, {	-- Titanium Spikeguards [H]
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_3_2_0 },
			}),
			i(45561, {["timeline"] = {ADDED_3_1_0}}),	-- Treads of Destiny
			i(41355),	-- Vengeance Bindings
			-- #if AFTER CATA
			i(41189, {["timeline"] = {ADDED_3_0_3, REMOVED_4_0_3}}),	-- Chestplate of Conquest
			i(41190, {["timeline"] = {ADDED_3_0_3, REMOVED_4_0_3}}),	-- Legplates of Conquest
			-- #endif
		}),
		filter(MISC, {
			i(43854),	-- Cobalt Skeleton Key
			i(41611),	-- Eternal Belt Buckle
			i(44693, {["timeline"] = {ADDED_3_0_8}}),	-- Titanium Plating
			i(41745, {["timeline"] = {ADDED_3_0_3, REMOVED_5_0_4}}),	-- Titanium Rod
			i(42500),	-- Titanium Shield Spike
			i(43853),	-- Titanium Skeleton Key
			i(41976),	-- Titanium Weapon Chain
		}),
		n(WEAPONS, {
			i(41240),	-- Cobalt Tenderizer
			i(40668),	-- Cobalt Triangle Shield
			i(42443),	-- Cudgel of Saronite Justice
			i(41245, {["timeline"] = {ADDED_3_0_3}}),	-- Deadly Saronite Dirk (made grey in 5.0.4 but not removed)
			i(41242),	-- Forged Cobalt Claymore
			i(41185),	-- Furious Saronite Beatstick
			i(41181),	-- Honed Cobalt Cleaver
			i(41243),	-- Notched Cobalt War Axe
			i(41183),	-- Saronite Ambusher
			i(41113),	-- Saronite Bulwark
			i(40670),	-- Saronite Defender
			i(41117),	-- Saronite Protector
			i(41184),	-- Saronite Shiv
			i(43871),	-- Saronite Spellblade
			i(41182),	-- Savage Cobalt Slicer
			i(41239),	-- Sturdy Cobalt Quickblade
			i(41241, {["timeline"] = {ADDED_3_0_3, REMOVED_5_0_4}}),	-- Sure-fire Shuriken
			i(41383),	-- Titansteel Bonecrusher
			i(41257),	-- Titansteel Destroyer
			i(41384),	-- Titansteel Guardian
			i(42435),	-- Titansteel Shanker
			i(42508),	-- Titansteel Shield Wall
			i(45085, {["timeline"] = {ADDED_3_1_0}}),	-- Titansteel Spellblade
			-- #if AFTER CATA
			i(41186, {["timeline"] = {ADDED_3_0_3, REMOVED_4_0_3}}),	-- Corroded Saronite Edge
			i(41187, {["timeline"] = {ADDED_3_0_3, REMOVED_4_0_3}}),	-- Corroded Saronite Woundbringer
			i(41188),	-- Saronite Mindcrusher
			-- #endif
		}),
	}),
	prof(COOKING, {
		i(43491),	-- Bad Clams
		i(42942),	-- Baked Manta Ray
		i(45932, {["timeline"] = {ADDED_3_1_0}}),	-- Black Jelly
		i(42999),	-- Blackened Dragonfin
		i(42997),	-- Blackened Worg Steak
		i(43004),	-- Critter Bites
		i(42998),	-- Cuttlesteak
		i(43268),	-- Dalaran Clam Chowder
		i(43000),	-- Dragonfin Filet
		i(34767),	-- Firecracker Salmon
		i(43015, {["timeline"] = {ADDED_3_0_8}}),	-- Fish Feast
		i(43478),	-- Gigantic Feast
		i(34753),	-- Great Feast
		i(34760),	-- Grilled Bonescale
		i(34762),	-- Grilled Sculpin
		i(43492),	-- Haunted Herring
		i(42995),	-- Hearty Rhino
		i(34769),	-- Imperial Manta Steak
		i(39520),	-- Kungaloosh
		i(43488),	-- Last Week's Mammoth
		i(34748),	-- Mammoth Meal
		i(34754),	-- Mega Mammoth Meal
		i(34758),	-- Mighty Rhino Dogs
		i(34747),	-- Northern Stew
		i(34765),	-- Pickled Fangtooth
		i(34764),	-- Poached Nettlefish
		i(34766),	-- Poached Northern Sculpin
		i(34752),	-- Rhino Dogs
		i(42994),	-- Rhinolicious Wormsteak
		i(34751),	-- Roasted Worg
		i(34761),	-- Sauteed Goby
		i(34749),	-- Shoveltusk Steak
		i(43480),	-- Small Feast
		i(34759),	-- Smoked Rockfin
		i(34763),	-- Smoked Salmon
		i(42996),	-- Snapper Extreme
		i(43005),	-- Spiced Mammoth Treats
		i(34756),	-- Spiced Worm Burger
		i(34768),	-- Spicy Blue Nettlefish
		i(42993),	-- Spicy Fried Herring
		i(43490),	-- Tasty Cupcake
		i(34755),	-- Tender Shoveltusk Steak
		i(43001),	-- Tracker Snacks
		i(34757),	-- Very Burnt Worg
		i(44953, {["timeline"] = {ADDED_3_0_8}}),	-- Worg Tartare
		i(34750),	-- Worm Delight
	}),
	prof(ENCHANTING, {
		header(HEADERS.Spell, 13262, {	-- Disenchant
			-- Danny Donkey: We need ilvl data from WoD and BfA stat squishes.
			-- Dust:
			i(34054, {	-- Infinite Dust
				-- #if AFTER 9.0.1
				["description"] = "Obtained from disenchanting uncommon (green) quality WotLK garments, amulets, rings, shields and off-hand frills within the ilvl bracket 32-35.",
				-- #elseif BEFORE WOD
				["description"] = "Obtained from disenchanting uncommon (green) quality WotLK garments, amulets, rings, shields and off-hand frills within the ilvl bracket 130-182.",
				-- #endif
			}),
			-- Essences:
			i(34055, {	-- Greater Cosmic Essence
				-- #if AFTER 9.0.1
				["description"] = "Obtained from disenchanting uncommon (green) quality WotLK weapons within the ilvl bracket 33-35, except shields and off-hand frills.",
				-- #elseif BEFORE WOD
				["description"] = "Obtained from disenchanting uncommon (green) quality WotLK weapons within the ilvl bracket 154-182, except shields and off-hand frills.",
				-- #endif
			}),
			i(34056, {	-- Lesser Cosmic Essence
				-- #if AFTER 9.0.1
				["description"] = "Obtained from disenchanting uncommon (green) quality WotLK weapons within the ilvl bracket 32-33, except shields and off-hand frills.",
				-- #elseif BEFORE WOD
				["description"] = "Obtained from disenchanting uncommon (green) quality WotLK weapons within the ilvl bracket 130-150, except shields and off-hand frills.",
				-- #endif
			}),
			-- Shards and crystals:
			i(34057, {	-- Abyss Crystal
				-- #if AFTER 9.0.1
				["description"] = "Obtained from disenchanting all epic (purple) quality WotLK gear at ilvl 35.",
				-- #elseif BEFORE WOD
				["description"] = "Obtained from disenchanting all epic (purple) quality WotLK gear within the ilvl bracket 200-225.",
				-- #endif
			}),
			i(34052, {	-- Dream Shard
				-- #if AFTER 9.0.1
				["description"] = "Obtained from disenchanting all rare (blue) quality WotLK gear within the ilvl bracket 34-35.",
				-- #elseif BEFORE WOD
				["description"] = "Obtained from disenchanting all rare (blue) quality WotLK gear within the ilvl bracket 167-200.",
				-- #endif
			}),
			i(34053, {	-- Small Dream Shard
				-- #if AFTER 9.0.1
				["description"] = "Obtained from disenchanting all rare (blue) quality WotLK gear within the ilvl bracket 32-34.",
				-- #elseif BEFORE WOD
				["description"] = "Obtained from disenchanting all rare (blue) quality WotLK gear within the ilvl bracket 130-166.",
				-- #endif
			}),
		}),
		n(ARMOR_ENCHANTMENTS, {
			i(44449, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Boots - Assault
			i(44469, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Boots - Greater Assault
			i(38966),	-- Enchant Boots - Greater Fortitude
			i(38961),	-- Enchant Boots - Greater Versatility / WOTLK: Greater Spirit
			i(38974),	-- Enchant Boots - Greater Vitality
			i(38986, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Boots - Icewalker
			i(38976),	-- Enchant Boots - Superior Agility
			i(39006),	-- Enchant Boots - Tuskarr's Vitality
			i(38971, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Bracer - Assault / WOTLK: Striking
			i(38968),	-- Enchant Bracer - Exceptional Intellect
			i(44815),	-- Enchant Bracer - Greater Assault
			i(38997),	-- Enchant Bracer - Greater Spellpower
			i(38987),	-- Enchant Bracer - Greater Stats
			i(38984),	-- Enchant Bracer - Haste / WOTLK: Expertise
			i(44947, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Bracer - Major Stamina
			i(38980),	-- Enchant Bracer - Major Versatility / WOTLK: Major Spirit
			i(44470, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Bracer - Superior Spellpower
			i(38975),	-- Enchant Chest - Exceptional Armor / WOTLK: Exceptional Resilience
			i(38912),	-- Enchant Chest - Exceptional Mana
			i(39002),	-- Enchant Chest - Greater Dodge / WOTLK: Greater Defense
			i(38962),	-- Enchant Chest - Greater Versatility / WOTLK: Greater Mana Restoration
			i(38955),	-- Enchant Chest - Mighty Health
			i(44465, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Chest - Powerful Stats
			i(39005, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Chest - Super Health
			i(38989),	-- Enchant Chest - Super Stats
			i(39003),	-- Enchant Cloak - Greater Speed
			i(44457, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Cloak - Major Agility
			i(39001),	-- Enchant Cloak - Mighty Stamina
			i(38973),	-- Enchant Cloak - Minor Power
			i(38993),	-- Enchant Cloak - Shadow Armor
			i(44456, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Cloak - Speed
			i(38959),	-- Enchant Cloak - Superior Agility
			i(38982, {["timeline"] = {ADDED_3_1_0, REMOVED_5_0_4}}),	-- Enchant Cloak - Superior Arcane Resistance
			i(38978),	-- Enchant Cloak - Superior Dodge / WOTLK: Titanweave
			i(38969, {["timeline"] = {ADDED_3_1_0, REMOVED_5_0_4}}),	-- Enchant Cloak - Superior Fire Resistance
			i(38950, {["timeline"] = {ADDED_3_1_0, REMOVED_5_0_4}}),	-- Enchant Cloak - Superior Frost Resistance
			i(38956, {["timeline"] = {ADDED_3_1_0, REMOVED_5_0_4}}),	-- Enchant Cloak - Superior Nature Resistance
			i(38977, {["timeline"] = {ADDED_3_1_0, REMOVED_5_0_4}}),	-- Enchant Cloak - Superior Shadow Resistance
			i(39004),	-- Enchant Cloak - Wisdom
			i(50816, {["timeline"] = {ADDED_3_3_0}}),	-- Enchant Glove - Angler
			i(38990),	-- Enchant Glove - Armsman
			i(44458, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Glove - Crusher
			i(38979),	-- Enchant Glove - Exceptional Spellpower
			i(38960),	-- Enchant Glove - Gatherer
			i(38964),	-- Enchant Glove - Greater Assault
			i(38951),	-- Enchant Glove - Haste / WOTLK: Expertise
			i(38967),	-- Enchant Glove - Major Agility
			i(38953),	-- Enchant Glove - Precision
		}),
		filter(ILLUSIONS, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
			i(138790, {	-- Tome of Illusions: Northrend
				ill(5391),	-- Berserking (ILLUSION!)
				ill(5388),	-- Greater Spellpower (ILLUSION!)
				ill(1894),	-- Icy Chill (ILLUSION!)
			}),
		})),
		filter(PROFESSION_EQUIPMENT, {
			i(44452, {["timeline"] = { REMOVED_5_0_4 }}),	-- Runed Titanium Rod
		}),
		n(WEAPON_ENCHANTMENTS, {
			i(38954),	-- Enchant Shield - Dodge / WOTLK: Defense
			i(44455, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Shield - Greater Intellect
			i(45056, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Staff - Greater Spellpower
			i(45060, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Staff - Spellpower
			i(38992),	-- Enchant 2H Weapon - Greater Savagery
			i(44463, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant 2H Weapon - Massacre
			i(38981),	-- Enchant 2H Weapon - Scourgebane
			i(44497, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Weapon - Accuracy
			i(44493, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Weapon - Berserking
			i(43987, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Weapon - Black Magic
			i(46026, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Weapon -  Blade Ward
			i(46098, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Weapon - Blood Draining
			i(38995),	-- Enchant Weapon - Exceptional Agility
			i(38991),	-- Enchant Weapon - Exceptional Spellpower
			i(38963),	-- Enchant Weapon - Exceptional Versatility / WOTLK: Exceptional Spirit
			i(38988),	-- Enchant Weapon - Giant Slayer
			i(44453, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Weapon - Greater Potency
			i(38965),	-- Enchant Weapon - Icebreaker
			i(38972),	-- Enchant Weapon - Lifeward
			i(44467, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Weapon - Mighty Spellpower
			i(44466, {["timeline"] = {ADDED_3_1_0}}),	-- Enchant Weapon - Superior Potency
		}),
	}),
	prof(ENGINEERING, {
		n(COMMON_VENDOR_ITEMS, sharedData({
			["description"] = "Can be bought from Engineering Suppliers, as well as some Trade vendors around the world. Coordinates are for select vendors.",
			["coords"] = {
				{ 39.0, 26.0, NORTHREND_DALARAN },
				-- #if AFTER CATA
				{ 56.0, 56.0, ORGRIMMAR },
				{ 63.07, 31.97, STORMWIND_CITY },
				-- #endif
			},
			["providers"] = {
				{ "n", 28722},	-- Bryan Landers <Engineering Supplies>
				-- #if AFTER CATA
				{ "n", 5519},	-- Billibub Cogspinner <Engineering Supplies>
				{ "n", 3413},	-- Sovik <Engineering Supplies>
				-- #endif
			},
		}, {
			i(39684),	-- Hair Trigger
			i(40533),	-- Walnut Stock
		})),
		prof(GNOMISH_ENGINEERING, {
			["description"] = "These items can only be crafted by Engineers who have completed the Gnomish Engineering quest chain.",
			["groups"] = {
				filter(TOYS, {
					i(40895, {	-- Gnomish X-Ray Specs (TOY!)
						["requireSkill"] = GNOMISH_ENGINEERING,
					}),
					applyclassicphase(WRATH_PHASE_FOUR, i(52021, {["timeline"] = {ADDED_3_3_0, REMOVED_4_0_1}})),	-- Iceblade Arrow
				}),
			},
		}),
		prof(GOBLIN_ENGINEERING, {
			["description"] = "These items can only be crafted by Engineers who have completed the Goblin Engineering quest chain.",
			["groups"] = {
				filter(MISC, {
					i(42641),	-- Global Thermal Sapper Charge
					applyclassicphase(WRATH_PHASE_FOUR, i(52020, {["timeline"] = {ADDED_3_3_0, REMOVED_4_0_1}})),	-- Shatter Rounds
				}),
			},
		}),
		n(ARMOR, {
			i(42549),	-- Armored Titanium Goggles
			i(42552),	-- Charged Titanium Specs
			i(42555),	-- Electroflux Sight Enhancers
			i(42554),	-- Greensight Gogs
			i(41112),	-- Mechanized Snow Goggles
			i(44740),	-- Mechanized Snow Goggles
			i(44741),	-- Mechanized Snow Goggles
			i(44742),	-- Mechanized Snow Goggles
			i(42551),	-- Truesight Ice Blinders
			i(44949, {["timeline"] = {ADDED_3_0_8}}),	-- Unbreakable Healing Amplifiers
			i(42553),	-- Visage Liquification Goggles
			i(42550),	-- Weakness Spectralizers
		}),
		filter(MISC, {
			i(40893, {	-- Bladed Pickaxe
				-- #if AFTER 10.0
				["description"] = "This item was made redundant with Dragonflight and cannot be equipped as a profession tool. Thus its gathering skill bonus is no longer recognised and have no uses but leveling up Northrend Engineering.",
				-- #endif
			}),
			i(44951, {	-- Box of Bombs
				i(41119),	-- Saronite Bomb
			}),
			i(40771),	-- Cobalt Frag Bomb
			i(40536),	-- Explosive Decoy
			i(40772),	-- Gnomish Army Knife
			i(47828, {["timeline"] = { ADDED_3_2_0 }}),	-- Goblin Beam Welder
			i(40892, {	-- Hammer Pick
				-- #if AFTER 10.0
				["description"] = "This item was made redundant with Dragonflight and cannot be equipped as a profession tool, despite being recognised as a blacksmith hammer. Its mining skill bonus is no longer recognised.",
				-- #endif
			}),
			i(37567),	-- Healing Injector Kit
			-- #if NOT ANYCLASSIC
			i(49040, {	-- Jeeves
				["description"] = "This still isn't a toy... BLIZZARD.",
			}),
			-- #endif
			i(41164, {["timeline"] = {ADDED_3_0_3, REMOVED_4_0_1}}),	-- Mammoth Cutters
			i(42546),	-- Mana Injector Kit
			i(41165, {["timeline"] = {ADDED_3_0_3, REMOVED_4_0_1}}),	-- Saronite Razorheads
			i(40769),	-- Scrapbot Construction Kit
			i(23775, {["timeline"] = {ADDED_3_0_8}}),	-- Titanium Toolbox
		}),
		filter(MOUNTS, {
			ach(2097, {	-- Get to the Choppa! (Engineering)
				["providers"] = {
					{ "i", 44413 },	-- Mekgineer's Chopper
					{ "i", 41508 },	-- Mechano-hog
				},
			}),
			i(41508),	-- Mechano-Hog (MOUNT!)
			i(44413),	-- Mekgineer's Chopper (MOUNT!)
		}),
		filter(REAGENTS, {
			i(39683),	-- Froststeel Tube
			i(39681),	-- Handful of Cobalt Bolts
			i(39682),	-- Overcharged Capacitor
			i(39690),	-- Volatile Blasting Trigger
		}),
		filter(TOYS, {
			i(40768),	-- MOLL-E (TOY!)
			-- #if ANYCLASSIC
			applyclassicphase(WRATH_PHASE_THREE, i(49040)),	-- Jeeves [Why isn't this a toy?!]
			-- #endif
			i(48933, {["timeline"] = { ADDED_3_2_0 }}),	-- Wormhole Generator: Northrend (TOY!)
		}),
		filter(TRINKET_F, {
			i(41121),	-- Gnomish Lightning Generator
			i(40865),	-- Noise Machine
			i(40767),	-- Sonic Booster
		}),
		n(WEAPONS, {
			i(41168),	-- Armor Plated Combat Shotgun
			i(39688),	-- Mark "S" Boomstick
			i(44504),	-- Nesingwary 4000
		}),
		n(WEAPON_ENCHANTMENTS, {
			i(44739),	-- Diamond-Cut Refractor Scope
			i(41167),	-- Heartseeker Scope
			i(41146),	-- Sun Scope
		}),
		i(23821, {	-- Zapthrottle Mote Extractor
			n(24879, {	-- Arctic Cloud (Gas cloud)
				["description"] = "Too few and far between to be reliably farmed on it's own.",
				["maps"] = { DRAGONBLIGHT, ICECROWN, THE_STORM_PEAKS, },
				["requireSkill"] = ENGINEERING,
			}),
			n(32522, {	-- Cinder Cloud (Gas cloud)
				["coords"] = {
					{ 38.4, 32.3, DRAGONBLIGHT },	-- Obsidian Dragonshrine
					{ 84.0, 71.5, WINTERGRASP },	-- The Cauldron of Flames
					{ 45.65, 24.6, SHOLAZAR_BASIN },	-- The Savage Thicket
				},
				["description"] = "Too few and far between to be reliably farmed on it's own.",
				["requireSkill"] = ENGINEERING,
			}),
			n(32544, {	-- Steam Cloud (Gas cloud)
				["coord"] = { 66.0, 27.0, BOREAN_TUNDRA },	-- The Geyser Fields
				["description"] = "Too few and far between to be reliably farmed on it's own.",
				["maps"] = { SHOLAZAR_BASIN },
				["requireSkill"] = ENGINEERING,
			}),
		}),
	}),
	-- #if BEFORE BFA
	prof(FIRST_AID, {
		i(34721),	-- Frostweave Bandage
		i(34722),	-- Heavy Frostweave Bandage
	}),
	-- #endif
	prof(FISHING, {
		-- Fish
		i(41812, {	-- Barrelhead Goby
			["maps"] = { SHOLAZAR_BASIN },
		}),
		i(45905, {	-- Bloodtooth Frenzy (Dalaran Fishing daily quest objective)
			["description"] = "Kill an animal and then swim in a body of water to create a pool to fish from.",
			["provider"] = { "o", 194479 },	-- Pool of Blood
		}),
		i(41808, {	-- Bonescale Snapper
			["maps"] = {
				BOREAN_TUNDRA,
				CRYSTALSONG_FOREST,
				DRAGONBLIGHT,
				GRIZZLY_HILLS,
				HOWLING_FJORD,
				ICECROWN,
				SHOLAZAR_BASIN,
				THE_STORM_PEAKS,
				WINTERGRASP,
				ZULDRAK,
			},
		}),
		i(41805, {	-- Borean Man O' War
			["description"] = "Schools can be found on the seaside.",
			["maps"] = { BOREAN_TUNDRA },
			["provider"] = { "o", 192051 },	-- Borean Man O' War School
		}),
		i(41800, {	-- Deep Sea Monsterbelly
			["coords"] = {
				{ 31.1, 67.6, BOREAN_TUNDRA },	-- Outside Unu'pe
				{ 33.5, 66.6, BOREAN_TUNDRA },	-- Outside Death's Advance
				{ 50.1, 69.7, DRAGONBLIGHT },	-- Path of the Titans on the Sea
				{ 82.9, 90.3, HOWLING_FJORD },	-- Outside Baelgun's Excavation Site
			},
			["description"] = "The schools have shared spawn with Moonglow Cuttlefish Schools. Borean Tundra have most schools.",
			["_allowObjectProvider"] = true,
			["provider"] = { "o", 192053 },	-- Deep Sea Monsterbelly School
		}),
		i(41807, {	-- Dragonfin Angelfish
			["coords"] = {
				{ 40.1, 67.7, DRAGONBLIGHT },	-- Lake Indu'le
				{ 91.0, 28.6, DRAGONBLIGHT },	-- Drak'Mar Lake
				{ 89.9, 38.5, DRAGONBLIGHT },	-- Dragonspine Tributary by Onslaught Base Camp
				{ 92.9, 48.2, DRAGONBLIGHT },	-- Dragonspine Tributary by Northern Carrion Fields
				{ 92.8, 58.2, DRAGONBLIGHT },	-- Dragonspine Tributary by Southern Carrion Fields
				{ 92.0, 69.0, DRAGONBLIGHT },	-- Dragonspine Tributary by Eldritch Heights
			},
			["_allowObjectProvider"] = true,
			["provider"] = { "o", 192048 },	-- Dragonfin Angelfish School
		}),
		i(44703, {	-- Dark Herring
			["maps"] = { HOWLING_FJORD },
			["provider"] = { "o", 192049 },	-- Fangtooth Herring School
			["description"] =
				-- #if BEFORE LEGION
				"Keep this in your bank until Transmog is added, otherwise you'll need to obtain it again. Fair warning!",
				-- #elseif AFTER TWW
				"Keep this in your bank until the appearance can be learned again, otherwise you'll need to obtain it again. Fair warning!",
				-- #else
				nil,
				-- #endif
				-- #if AFTER TWW
				["collectible"] = false,  -- remove when Blizzard fix fish collection
				-- #endif
		}),
		i(44505, {	-- Dustbringer
			["description"] = "Can be caught in schools or open water in Northrend.",
			["providers"] = {
				{ "o", 192051 },	-- Borean Man O' War School
				{ "o", 192053 },	-- Deep Sea Monsterbelly School
				{ "o", 192048 },	-- Dragonfin Angelfish School
				{ "o", 192049 },	-- Fangtooth Herring School
				{ "o", 192050 },	-- Glacial Salmon School
				{ "o", 192059 },	-- Glassfin Minnow School
				{ "o", 192052 },	-- Imperial Manta Ray School
				{ "o", 192054 },	-- Moonglow Cuttlefish School
				{ "o", 192046 },	-- Musselback Sculpin School
				{ "o", 192057 },	-- Nettlefish School
			},
		}),
		i(41810, {	-- Fangtooth Herring
			["description"] = "Schools can be found in inland waters.",
			["maps"] = { HOWLING_FJORD },
			["provider"] = { "o", 192049 },	-- Fangtooth Herring School
		}),
		i(43646, {	-- Fountain Goldfish
			["description"] = "Can be caught in the fountain.",
			["coord"] = { 52.9, 65.9, NORTHREND_DALARAN },	-- Dalaran fountain
		}),
		i(45909, {	-- Giant Darkwater Clam
			["maps"] = { WINTERGRASP },
			["groups"] = {
				i(36782),	-- Succulent Clam Meat
				i(36783),	-- Northsea Pearl
				i(36784),	-- Siren's Tear
			},
		}),
		i(41809, {	-- Glacial Salmon
			["description"] = "Schools can be found in inland waters.",
			["maps"] = { GRIZZLY_HILLS },
			["provider"] = { "o", 192050 },	-- Glacial Salmon School
		}),
		i(41814, {	-- Glassfin Minnow
			["maps"] = { CRYSTALSONG_FOREST },
			["provider"] = { "o", 192059 },	-- Glassfin Minnow School
		}),
		i(41802, {	-- Imperial Manta Ray
			["description"] = "Schools can be found on the seaside.",
			["maps"] = {
				BOREAN_TUNDRA,
				DRAGONBLIGHT,
				GRIZZLY_HILLS,
				HOWLING_FJORD,
			},
			["provider"] = { "o", 192052 },	-- Imperial Manta Ray School
		}),
		i(43572, {	-- Magic Eater
			["description"] = "Can be caught in any waters on both WotLK and Legion Dalaran.",
			["maps"] = {
				NORTHREND_DALARAN,
				NORTHREND_THE_UNDERBELLY,
			},
		}),
		i(41801, {	-- Moonglow Cuttlefish
			["coords"] = {
				{ 31.1, 67.6, BOREAN_TUNDRA },	-- Outside Unu'pe
				{ 33.5, 66.6, BOREAN_TUNDRA },	-- Outside Death's Advance
				{ 50.1, 69.7, DRAGONBLIGHT },	-- Path of the Titans on the Sea
				{ 82.9, 90.3, HOWLING_FJORD },	-- Outside Baelgun's Excavation Site
			},
			["description"] = "The schools have shared spawn with Deep Sea Monsterbelly Schools. Borean Tundra have most schools.",
			["_allowObjectProvider"] = true,
			["provider"] = { "o", 192054 },	-- Moonglow Cuttlefish School
		}),
		i(41806, {	-- Musselback Sculpin
			["coord"] = { 51.6, 45.0, BOREAN_TUNDRA },	-- Lake Kum'uya
			["_allowObjectProvider"] = true,
			["provider"] = { "o", 192046 },	-- Musselback Sculpin School
		}),
		i(41813, {	-- Nettlefish
			["maps"] = { SHOLAZAR_BASIN },
			["provider"] = { "o", 192057 },	-- Nettlefish School
		}),
		i(45902, {	-- Phantom Ghostfish (Dalaran Fishing daily quest objective)
			["description"] = "Eat this before it despawns!",
			["maps"] = { SHOLAZAR_BASIN },
			["_noautomation"] = true,
		}),
		i(40199, {	-- Pygmy Suckerfish
			["maps"] = {
				BOREAN_TUNDRA,
				CRYSTALSONG_FOREST,
				DRAGONBLIGHT,
				GRIZZLY_HILLS,
				HOWLING_FJORD,
				SHOLAZAR_BASIN,
			},
			["providers"] = {
				{ "o", 192051 },	-- Borean Man O' War School
				{ "o", 192053 },	-- Deep Sea Monsterbelly School
				{ "o", 192048 },	-- Dragonfin Angelfish School
				{ "o", 192049 },	-- Fangtooth Herring School
				{ "o", 192050 },	-- Glacial Salmon School
				{ "o", 192059 },	-- Glassfin Minnow School
				{ "o", 192052 },	-- Imperial Manta Ray School
				{ "o", 192054 },	-- Moonglow Cuttlefish School
				{ "o", 192046 },	-- Musselback Sculpin School
				{ "o", 192057 },	-- Nettlefish School
			},
		}),
		i(44475, {	-- Reinforced Crate
			["providers"] = {
				{ "o", 192051 },	-- Borean Man O' War School
				{ "o", 192053 },	-- Deep Sea Monsterbelly School
				{ "o", 192048 },	-- Dragonfin Angelfish School
				{ "o", 192049 },	-- Fangtooth Herring School
				{ "o", 192050 },	-- Glacial Salmon School
				{ "o", 192059 },	-- Glassfin Minnow School
				{ "o", 192052 },	-- Imperial Manta Ray School
				{ "o", 192054 },	-- Moonglow Cuttlefish School
				{ "o", 192046 },	-- Musselback Sculpin School
				{ "o", 192057 },	-- Nettlefish School
			},
			["groups"] = {
				i(33567),	-- Borean Leather Scraps
				i(36909),	-- Cobalt Ore
				i(33470),	-- Frostweave Cloth
			},
		}),
		i(41803, {	-- Rockfin Grouper
			["description"] = "Can be caught on the seaside around Northrend.",
			["maps"] = {
				BOREAN_TUNDRA,
				DRAGONBLIGHT,
				GRIZZLY_HILLS,
				HOWLING_FJORD,
				ICECROWN,
				SHOLAZAR_BASIN,
				THE_STORM_PEAKS,
				ZULDRAK,
			},
		}),
		i(46109, {	-- Sea Turtle (MOUNT!)
			-- #if BEFORE 4.0.3
			["maps"] = {
				BOREAN_TUNDRA,
				CRYSTALSONG_FOREST,
				DRAGONBLIGHT,
				GRIZZLY_HILLS,
				HOWLING_FJORD,
				SHOLAZAR_BASIN,
			},
			["providers"] = {
				{ "o", 192051 },	-- Borean Man O' War School
				{ "o", 192053 },	-- Deep Sea Monsterbelly School
				{ "o", 192048 },	-- Dragonfin Angelfish School
				{ "o", 192049 },	-- Fangtooth Herring School
				{ "o", 192050 },	-- Glacial Salmon School
				{ "o", 192059 },	-- Glassfin Minnow School
				{ "o", 192052 },	-- Imperial Manta Ray School
				{ "o", 192054 },	-- Moonglow Cuttlefish School
				{ "o", 192046 },	-- Musselback Sculpin School
				{ "o", 192057 },	-- Nettlefish School
			},
			-- #endif
		}),
		i(43571, {	-- Sewer Carp
			["description"] = "Can be caught in any waters on both WotLK and Legion Dalaran.",
			["maps"] = {
				NORTHREND_DALARAN,
				NORTHREND_THE_UNDERBELLY,
			},
		}),
		i(43647, {	-- Shimmering Minnow
			["description"] = "Can be caught outside Violet Hold on both WotLK and Legion Dalaran.",
			["coord"] = { 63.8, 64.3, NORTHREND_DALARAN },	-- The Violet Hold
		}),
		i(43652, {	-- Slippery Eel
			["description"] = "Can be caught outside Violet Hold on both WotLK and Legion Dalaran.",
			["coord"] = { 63.8, 64.3, NORTHREND_DALARAN },	-- The Violet Hold
		}),
		i(45904, {	-- Terrorfish (Dalaran Fishing daily quest objective)
			["maps"] = { WINTERGRASP },
		}),
		-- Schools
		o(192051, {	-- Borean Man O' War School
			["description"] = "Can be found on the seaside.",
			["maps"] = { BOREAN_TUNDRA },
		}),
		o(192053, {	-- Deep Sea Monsterbelly School
			["coords"] = {
				{ 31.1, 67.6, BOREAN_TUNDRA },	-- Outside Unu'pe
				{ 33.5, 66.6, BOREAN_TUNDRA },	-- Outside Death's Advance
				{ 50.1, 69.7, DRAGONBLIGHT },	-- Path of the Titans on the Sea
				{ 82.9, 90.3, HOWLING_FJORD },	-- Outside Baelgun's Excavation Site
			},
			["description"] = "Have shared spawn with Moonglow Cuttlefish Schools. Borean Tundra have most schools.",
		}),
		o(192048, {	-- Dragonfin Angelfish School
			["coords"] = {
				{ 40.1, 67.7, DRAGONBLIGHT },	-- Lake Indu'le
				{ 91.0, 28.6, DRAGONBLIGHT },	-- Drak'Mar Lake
				{ 89.9, 38.5, DRAGONBLIGHT },	-- Dragonspine Tributary by Onslaught Base Camp
				{ 92.9, 48.2, DRAGONBLIGHT },	-- Dragonspine Tributary by Northern Carrion Fields
				{ 92.8, 58.2, DRAGONBLIGHT },	-- Dragonspine Tributary by Southern Carrion Fields
				{ 92.0, 69.0, DRAGONBLIGHT },	-- Dragonspine Tributary by Eldritch Heights
			},
		}),
		o(192049, {	-- Fangtooth Herring School
			["description"] = "Can be found in inland waters.",
			["maps"] = { HOWLING_FJORD },
		}),
		o(192050, {	-- Glacial Salmon School
			["description"] = "Can be found in inland waters.",
			["maps"] = { GRIZZLY_HILLS },
		}),
		o(192059, {	-- Glassfin Minnow School
			["maps"] = { CRYSTALSONG_FOREST },
		}),
		o(192052, {	-- Imperial Manta Ray School
			["description"] = "Schools can be found on the seaside.",
			["maps"] = {
				BOREAN_TUNDRA,
				DRAGONBLIGHT,
				GRIZZLY_HILLS,
				HOWLING_FJORD,
			},
		}),
		o(192054, {	-- Moonglow Cuttlefish School
			["coords"] = {
				{ 31.1, 67.6, BOREAN_TUNDRA },	-- Outside Unu'pe
				{ 33.5, 66.6, BOREAN_TUNDRA },	-- Outside Death's Advance
				{ 50.1, 69.7, DRAGONBLIGHT },	-- Path of the Titans on the Sea
				{ 82.9, 90.3, HOWLING_FJORD },	-- Outside Baelgun's Excavation Site
			},
			["description"] = "Have shared spawn with Deep Sea Monsterbelly Schools. Borean Tundra have most schools.",
		}),
		o(192046, {	-- Musselback Sculpin School
			["coord"] = { 51.6, 45.0, BOREAN_TUNDRA },	-- Lake Kum'uya
		}),
		o(192057, {	-- Nettlefish School
			["maps"] = { SHOLAZAR_BASIN },
		}),
		o(194479, {	-- Pool of Blood (Dalaran Fishing daily quest objective)
			["maps"] = { BOREAN_TUNDRA },
		}),
		-- Recipe
		filter(RECIPES, {
			i(34109, {	-- Weather-Beaten Journal (RECIPE!)
				["description"] = "Can be fished from schools.",
			}),
		}),
	}),
	prof(HERBALISM, {
		spell(2366, {	-- Herb Gathering
			--	Herbs
			i(36903, {	-- Adder's Tongue
				["maps"] = { SHOLAZAR_BASIN },
				["provider"] = { "o", 191019 },	-- Adder's Tongue
			}),
			i(108353, {	-- Adder's Tongue Stem
				["provider"] = { "o", 191019 },	-- Adder's Tongue
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(36903),	-- Adder's Tongue
				},
			}),
			i(37921, {	-- Deadnettle
				["description"] = "Is obtained from gathering other herbs.",
				["maps"] = {
					BOREAN_TUNDRA,
					DRAGONBLIGHT,
					GRIZZLY_HILLS,
					HOWLING_FJORD,
					SHOLAZAR_BASIN,
					ZULDRAK,
				},
				["providers"] = {
					{ "o", 189973 },	-- Goldclover
					{ "o", 190170 },	-- Talandra's Rose
					{ "o", 190169 },	-- Tiger Lily
				},
			}),
			i(108358, {	-- Deadnettle Bramble
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(37921),	-- Deadnettle
				},
			}),
			i(39970, {	-- Fire Leaf
				["coord"] = { 70.6, 33.7, BOREAN_TUNDRA },	-- The Southern Geyser Fields
				["_allowObjectProvider"] = true,
				["provider"] = { "o", 191303 },	-- Firethorn
			}),
			i(108359, {	-- Fire Leaf Bramble
				["provider"] = { "o", 191303 },	-- Firethorn
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(39970),	-- Fire Leaf
				},
			}),
			i(36908, {	-- Frost Lotus
				["description"] = "Can uncommonly be looted when gathering WotLK herbs.",
				["providers"] = {
					{ "o", 191019 },	-- Adder's Tongue
					{ "o", 191303 },	-- Firethorn
					{ "o", 189973 },	-- Goldclover
					{ "o", 190172 },	-- Icethorn
					{ "o", 190171 },	-- Lichbloom
					{ "o", 190170 },	-- Talandra's Rose
					{ "o", 190169 },	-- Tiger Lily
				},
			}),
			i(36901, {	-- Goldclover
				["coords"] = {
					{ 48.8, 48.4, DRAGONBLIGHT },	-- Ruby Dragonshrine
					{ 63.5, 72.5, DRAGONBLIGHT },	-- Emerald Dragonshrine
				},
				["description"] = "Found on grassy terrain.",
				["maps"] = {
					BOREAN_TUNDRA,
					GRIZZLY_HILLS,
					HOWLING_FJORD,
					SHOLAZAR_BASIN,
				},
				["_allowObjectProvider"] = true,
				["provider"] = { "o", 189973 },	-- Goldclover
			}),
			i(108352, {	-- Goldclover Leaf
				["provider"] = { "o", 189973 },	-- Goldclover
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(36901),	-- Goldclover
				},
			}),
			i(36906, {	-- Icethorn
				["maps"] = {
					ICECROWN,
					THE_STORM_PEAKS,
				},
				["provider"] = { "o", 190172 },	-- Icethorn
			}),
			i(108356, {	-- Icethorn Bramble
				["provider"] = { "o", 190172 },	-- Icethorn
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(36906),	-- Icethorn
				},
			}),
			i(36905, {	-- Lichbloom
				["maps"] = {
					ICECROWN,
					THE_STORM_PEAKS,
				},
				["provider"] = { "o", 190171 },	-- Lichbloom
			}),
			i(108355, {	-- Lichbloom Stalk
				["provider"] = { "o", 190171 },	-- Lichbloom
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(36905),	-- Lichbloom
				},
			}),
			i(36907, {	-- Talandra's Rose
				["coord"] = { 33.2, 66.7, ZULDRAK },	-- Lower Zul'Drak
				["description"] = "Found around the lower tiers of Zul'Drak.",
				["_allowObjectProvider"] = true,
				["provider"] = { "o", 190170 },	-- Talandra's Rose
			}),
			i(108357, {	-- Talandra's Rose Petal
				["provider"] = { "o", 190170 },	-- Talandra's Rose
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(36907),	-- Talandra's Rose
				},
			}),
			i(36904, {	-- Tiger Lily
				["coord"] = { 51.6, 45.0, BOREAN_TUNDRA },	-- Lake Kum'uya
				["description"] = "Found around inland waters and waterways.",
				["maps"] = {
					GRIZZLY_HILLS,
					HOWLING_FJORD,
					SHOLAZAR_BASIN,
				},
				["_allowObjectProvider"] = true,
				["provider"] = { "o", 190169 },	-- Tiger Lily
			}),
			i(108354, {	-- Tiger Lily Petal
				["provider"] = { "o", 190169 },	-- Tiger Lily
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(36904),	-- Tiger Lily
				},
			}),
			--	Nodes
			o(191019, {	-- Adder's Tongue
				["maps"] = { SHOLAZAR_BASIN },
			}),
			o(191303, {	-- Firethorn
				["coord"] = { 70.6, 33.7, BOREAN_TUNDRA },	-- The Southern Geyser Fields
			}),
			o(189973, {	-- Goldclover
				["coords"] = {
					{ 48.8, 48.4, DRAGONBLIGHT },	-- Ruby Dragonshrine
					{ 63.5, 72.5, DRAGONBLIGHT },	-- Emerald Dragonshrine
				},
				["description"] = "Found on grassy terrain.",
				["maps"] = {
					BOREAN_TUNDRA,
					GRIZZLY_HILLS,
					HOWLING_FJORD,
					SHOLAZAR_BASIN,
				},
			}),
			o(190172, {	-- Icethorn
				["maps"] = {
					ICECROWN,
					THE_STORM_PEAKS,
				},
			}),
			o(190171, {	-- Lichbloom
				["maps"] = {
					ICECROWN,
					THE_STORM_PEAKS,
				},
			}),
			o(190170, {	-- Talandra's Rose
				["coord"] = { 33.2, 66.7, ZULDRAK },	-- Lower Zul'Drak
				["description"] = "Found around the lower tiers of Zul'Drak.",
			}),
			o(190169, {	-- Tiger Lily
				["coord"] = { 51.6, 45.0, BOREAN_TUNDRA },	-- Lake Kum'uya
				["description"] = "Found around inland waters and waterways.",
				["maps"] = {
					GRIZZLY_HILLS,
					HOWLING_FJORD,
					SHOLAZAR_BASIN,
				},
			}),
		}),
	}),
	prof(INSCRIPTION, {
		-- Inks and reagents:
		header(HEADERS.Spell, 51005, {	-- Milling
			i(39343, {	-- Azure Pigment
				["providers"] = {
					{ "i", 36903 }, -- Adder's Tongue
					{ "i", 37921 }, -- Deadnettle
					{ "i", 39970 }, -- Fire Leaf
					{ "i", 36901 }, -- Goldclover
					{ "i", 36906 }, -- Icethorn
					{ "i", 36905 }, -- Lichbloom
					{ "i", 36907 }, -- Talandra's Rose
					{ "i", 36904 }, -- Tiger Lily
				},
			}),
			i(43109, {	-- Icy Pigment
				["providers"] = {
					{ "i", 36903 }, -- Adder's Tongue
					{ "i", 37921 }, -- Deadnettle
					{ "i", 39970 }, -- Fire Leaf
					{ "i", 36901 }, -- Goldclover
					{ "i", 36906 }, -- Icethorn
					{ "i", 36905 }, -- Lichbloom
					{ "i", 36907 }, -- Talandra's Rose
					{ "i", 36904 }, -- Tiger Lily
				},
			}),
		}),
		filter(REAGENTS, {
			i(43126),	-- Ink of the Sea
			i(43127),	-- Snowfall Ink
		}),
		-- Non-reagent crafts:
		-- #if AFTER WOD
		filter(GLYPHS, {
			i(42736, {["timeline"]={ADDED_3_0_2,REMOVED_7_0_3}}),	-- Glyph of Arcane Explosion
			i(42898, {["timeline"]={ADDED_3_0_2,REMOVED_7_0_3}}),	-- Glyph of Arcane Shot / Glyph of Camouflage[MOP+]
			i(40919, {	-- Glyph of Insect Swarm / Glyph of the Orca[MOP+] / Mark of the Orca[SL+] (CI!)
				["timeline"]={ ADDED_3_0_2 },
			}),
			i(167539, {["timeline"] = {ADDED_8_1_5}}),	-- Glyph of Dalaran Brilliance
			i(44922, {	-- Glyph of Typhoon / Glyph of Stars[WOD?+]
				["timeline"]={ ADDED_3_0_2 },
			}),
		}),
		-- #endif
		filter(HELD_IN_OFF_HAND, {
			i(44210),	-- Faces of Doom
			i(38322),	-- Iron-Bound Tome
			i(45854, {	-- Rituals of the New Moon
				["description"] = "This version of the off-hand is a placeholder for the four available versions of it, and crafting it gives you a random one of the four. The four available versions of the off-hands have the same stats, but offer a different coloured giant wholf.",
				["timeline"] = { ADDED_3_1_0 },
				["collectible"] = false,
				["groups"] = {
					i(45850),	-- Rituals of the New Moon (red wolf)
					i(45851),	-- Rituals of the New Moon (white wolf)
					i(45852),	-- Rituals of the New Moon (grey wolf)
					i(45853),	-- Rituals of the New Moon (black wolf)
				},
			}),
			i(45849),	-- Twilight Tome
		}),
		category(106, {	-- Tarot Cards
			sp(59504, {	-- Darkmoon Card of the North
				i(44277),	-- Ace of Chaos
				i(44278),	-- 2 of Chaos
				i(44279),	-- 3 of Chaos
				i(44280),	-- 4 of Chaos
				i(44281),	-- 5 of Chaos
				i(44282),	-- 6 of Chaos
				i(44284),	-- 7 of Chaos
				i(44285),	-- 8 of Chaos

				i(44268),	-- Ace of Nobles
				i(44269),	-- 2 of Nobles
				i(44270),	-- 3 of Nobles
				i(44271),	-- 4 of Nobles
				i(44272),	-- 5 of Nobles
				i(44273),	-- 6 of Nobles
				i(44274),	-- 7 of Nobles
				i(44275),	-- 8 of Nobles

				i(44260),	-- Ace of Prisms
				i(44261),	-- 2 of Prisms
				i(44262),	-- 3 of Prisms
				i(44263),	-- 4 of Prisms
				i(44264),	-- 5 of Prisms
				i(44265),	-- 6 of Prisms
				i(44266),	-- 7 of Prisms
				i(44267),	-- 8 of Prisms

				i(44286),	-- Ace of Undeath
				i(44287),	-- 2 of Undeath
				i(44288),	-- 3 of Undeath
				i(44289),	-- 4 of Undeath
				i(44290),	-- 5 of Undeath
				i(44291),	-- 6 of Undeath
				i(44292),	-- 7 of Undeath
				i(44293),	-- 8 of Undeath
			}),
		}),
	}),
	prof(JEWELCRAFTING, {
		header(HEADERS.Spell, 31212, {	-- Prospecting
			["groups"] = appendAllGroups(
				sharedData({	-- Uncommon quality (green) gems:
					["description"] = "This gem is most reliably obtained from prospecting ore with Jewelcrafting.",
					["providers"] = {
						{ "i", 36909 },	-- Cobalt Ore
						{ "i", 36912 },	-- Saronite Ore
						{ "i", 36910 },	-- Titanium Ore
					},
				}, {
					i(36917),	-- Bloodstone
					i(36923),	-- Chalcedony
					i(36932),	-- Dark Jade
					i(36929),	-- Huge Citrine
					i(36926),	-- Shadow Crystal
					i(36920),	-- Sun Crystal
				}),
				sharedData({	-- Rare quality (blue) gems:
					["description"] = "This gem is most reliably obtained from Icy Prism with Jewelcrafting, prospecting Saronite and Titanium Ores offering the second best drop rate.",
					["providers"] = {
						{ "i", 44946 },	-- Icy Prism
						{ "i", 36912 },	-- Saronite Ore
						{ "i", 36910 },	-- Titanium Ore
					},
				}, {
					i(36921),	-- Autumn's Glow
					i(36933),	-- Forest Emerald
					i(36930),	-- Monarch Topaz
					i(36918),	-- Scarlet Ruby
					i(36924),	-- Sky Sapphire
					i(36927),	-- Twilight Opal
				}),
				applyclassicphase(WRATH_PHASE_THREE, sharedData({	-- Epic quality (purple) gems:
					["description"] = "This gem is most reliably obtained from transmutation with Alchemy, while prospecting Titanium Ores with Jewelcrafting offers the second best drop rate (5%).",
					["provider"] = { "i", 36910 },	-- Titanium Ore
					["timeline"] = { ADDED_3_2_0 },
				}, {
					i(36931),	-- Ametrine
					i(36919),	-- Cardinal Ruby
					i(36928),	-- Dreadstone
					i(36934),	-- Eye of Zul
					i(36922),	-- King's Amber
					i(36925),	-- Majestic Zircon
				}))
			),
		}),
		category(168, {	-- Materials
			applyclassicphase(WRATH_PHASE_THREE, i(46849, {	-- Titanium Powder
				["cost"] = ClassicCost({{ "i", 36910, 5 }}),	-- Titanium Ore
			})),
		}),
		filter(MISC, {
			i(44943),	-- Icy Prism
		}),
		filter(NECK_F, {
			i(42339),	-- Blood Sun Necklace
			i(43245),	-- Crystal Chalcedony Amulet
			i(43244),	-- Crystal Citrine Necklace
			i(45812),	-- Emerald Choker
			i(42338),	-- Jade Dagger Pendant
			i(45813),	-- Sky Sapphire Amulet
			i(42646),	-- Titanium Earthguard Chain
			i(42645),	-- Titanium Impact Choker
			i(42647),	-- Titanium Spellshock Necklace
		}),
		filter(FINGER_F, {
			i(42336),	-- Bloodstone Band
			i(42340),	-- Dream Signet
			i(43246),	-- Earthshadow Ring
			i(43247),	-- Jade Ring of Slaying
			i(43250),	-- Ring of Earthen Might
			i(43253),	-- Ring of Northern Tears
			i(43251),	-- Ring of Scarlet Shadows
			i(45808),	-- Runed Mana Band
			i(43498),	-- Savage Titanium Band
			i(43482),	-- Savage Titanium Ring
			i(45809),	-- Scarlet Signet
			i(43249),	-- Shadowmight Ring
			i(43248),	-- Stoneguard Band
			i(42337),	-- Sun Rock Ring
			i(42643),	-- Titanium Earthguard Ring
			i(43582),	-- Titanium Frostguard Ring
			i(42642),	-- Titanium Impact Band
			i(42644),	-- Titanium Spellshock Ring
			i(43252),	-- Windfire Band
		}),
		filter(TRINKET_F, {
			i(42418),	-- Figurine - Emerald Boar
			i(44063),	-- Figurine - Monarch Crab
			i(42341),	-- Figurine - Ruby Hare
			i(42413),	-- Figurine - Sapphire Owl
			i(42395),	-- Figurine - Twilight Serpent
		}),
	}),
	prof(LEATHERWORKING, {
		n(ARMOR, {
			n(BACK, {
				i(38441),	-- Cloak of Harsh Winds
				i(41238),	-- Cloak of Tormented Skies
				i(43565),	-- Durable Nerubhide Cape
				i(43566),	-- Ice Striker's Cloak
			}),
			filter(LEATHER, {
				i(38405),	-- Arctic Belt
				i(38404),	-- Arctic Boots
				i(38400),	-- Arctic Chestpiece
				i(38403),	-- Arctic Gloves
				i(38437),	-- Arctic Helm
				i(38401),	-- Arctic Leggings
				i(38402),	-- Arctic Shoulderpads
				i(38433),	-- Arctic Wristguards
				i(45556, {["timeline"] = {ADDED_3_1_0}}),	-- Belt of Arctic Life
				i(38590),	-- Black Chitinguard Boots
				i(49899, {["timeline"] = {ADDED_3_3_0}}),	-- Bladeborn Leggings
				i(49894, {["timeline"] = {ADDED_3_3_0}}),	-- Blessed Cenarion Boots
				i(45565, {["timeline"] = {ADDED_3_1_0}}),	-- Boots of Wintry Endurance
				i(47581, {["timeline"] = { ADDED_3_2_0 }}),	-- Bracers of Swift Death [A]
				i(47582, {["timeline"] = { ADDED_3_2_0 }}),	-- Bracers of Swift Death [H]
				i(44442),	-- Bugsquashers
				i(38592),	-- Dark Arctic Chestpiece
				i(38591),	-- Dark Arctic Leggings
				i(44441),	-- Dark Iceborne Chestguard
				i(44440),	-- Dark Iceborne Leggings
				i(45555, {["timeline"] = {ADDED_3_1_0}}),	-- Death-Warmed Belt
				i(43502),	-- Earthgiving Boots
				i(43495),	-- Earthgiving Legguards
				i(43435),	-- Eviscerator's Bindings
				i(43434),	-- Eviscerator's Chestguard
				i(43260),	-- Eviscerator's Facemask
				i(43436),	-- Eviscerator's Gauntlets
				i(43438),	-- Eviscerator's Legguards
				i(43433),	-- Eviscerator's Shoulderpads
				i(43439),	-- Eviscerator's Treads
				i(43437),	-- Eviscerator's Waistguard
				i(49895, {["timeline"] = {ADDED_3_3_0}}),	-- Footpads of Impending Death
				i(45564, {["timeline"] = {ADDED_3_1_0}}),	-- Footpads of Silence
				i(38406),	-- Iceborne Belt
				i(38407),	-- Iceborne Boots
				i(38408),	-- Iceborne Chestguard
				i(38409),	-- Iceborne Gloves
				i(38438),	-- Iceborne Helm
				i(38410),	-- Iceborne Leggings
				i(38411),	-- Iceborne Shoulderpads
				i(38434),	-- Iceborne Wristguards
				i(43256),	-- Jormscale Footpads
				i(47599, {["timeline"] = { ADDED_3_2_0 }}),	-- Knightbane Carapace [A]
				i(47600, {["timeline"] = { ADDED_3_2_0 }}),	-- Knightbane Carapace [H]
				i(42731),	-- Leggings of Visceral Strikes
				i(49898, {["timeline"] = {ADDED_3_3_0}}),	-- Legwraps of Unleashed Nature
				i(47602, {["timeline"] = { ADDED_3_2_0 }}),	-- Lunar Eclipse Robes [A]
				i(47601, {["timeline"] = { ADDED_3_2_0 }}),	-- Lunar Eclipse Robes [H]
				i(47583, {["timeline"] = { ADDED_3_2_0 }}),	-- Moonshadow Armguards [A]
				i(47584, {["timeline"] = { ADDED_3_2_0 }}),	-- Moonshadow Armguards [H]
				i(43266),	-- Overcast Belt
				i(43273),	-- Overcast Boots
				i(43264),	-- Overcast Bracers
				i(43263),	-- Overcast Chestguard
				i(43265),	-- Overcast Handwraps
				i(43261),	-- Overcast Headguard
				i(43271),	-- Overcast Leggings
				i(43262),	-- Overcast Spaulders
				i(43592),	-- Polar Boots
				i(43591),	-- Polar Cord
				i(43590),	-- Polar Vest
				i(43258),	-- Purehorn Spaulders
				i(43255),	-- Seafoam Gauntlets
				i(43484),	-- Trollwoven Girdle
				i(43481),	-- Trollwoven Spaulders
				i(43257),	-- Wildscale Breastplate
				i(44930),	-- Windripper Boots
				i(44931),	-- Windripper Leggings
			}),
			filter(MAIL, {
				i(45553, {["timeline"] = {ADDED_3_1_0}}),	-- Belt of Dragons
				i(47579, {["timeline"] = { ADDED_3_2_0 }}),	-- Black Chitin Bracers [A]
				i(47580, {["timeline"] = { ADDED_3_2_0 }}),	-- Black Chitin Bracers [H]
				i(45554, {["timeline"] = {ADDED_3_1_0}}),	-- Blue Belt of Chaos
				i(45562, {["timeline"] = {ADDED_3_1_0}}),	-- Boots of Living Scale
				i(47576, {["timeline"] = { ADDED_3_2_0 }}),	-- Crusader's Dragonscale Bracers [A]
				i(47577, {["timeline"] = { ADDED_3_2_0 }}),	-- Crusader's Dragonscale Bracers [H]
				i(47595, {["timeline"] = { ADDED_3_2_0 }}),	-- Crusader's Dragonscale Breastplate [A]
				i(47596, {["timeline"] = { ADDED_3_2_0 }}),	-- Crusader's Dragonscale Breastplate [H]
				i(44437),	-- Dark Frostscale Breastplate
				i(44436),	-- Dark Frostscale Leggings
				i(44444),	-- Dark Nerubian Chestpiece
				i(44443),	-- Dark Nerubian Leggings
				i(49901, {["timeline"] = {ADDED_3_3_0}}),	-- Draconic Bonesplinter Legguards
				i(44438),	-- Dragonstompers
				i(43131),	-- Eaglebane Bracers
				i(49896, {["timeline"] = {ADDED_3_3_0}}),	-- Earthsoul Boots
				i(47597, {["timeline"] = { ADDED_3_2_0 }}),	-- Ensorcelled Nerubian Breastplate [A]
				i(47598, {["timeline"] = { ADDED_3_2_0 }}),	-- Ensorcelled Nerubian Breastplate [H]
				i(38412),	-- Frostscale Belt
				i(38413),	-- Frostscale Boots
				i(38436),	-- Frostscale Bracers
				i(38414),	-- Frostscale Chestguard
				i(38415),	-- Frostscale Gloves
				i(38440),	-- Frostscale Helm
				i(38416),	-- Frostscale Leggings
				i(38424),	-- Frostscale Shoulders
				i(43459),	-- Giantmaim Bracers
				i(43458),	-- Giantmaim Legguards
				i(43594),	-- Icy Scale Belt
				i(43595),	-- Icy Scale Boots
				i(43593),	-- Icy Scale Chestguard
				i(45563, {["timeline"] = {ADDED_3_1_0}}),	-- Lightning Grounded Boots
				i(49900, {["timeline"] = {ADDED_3_3_0}}),	-- Lightning-Infused Leggings
				i(38418),	-- Nerubian Belt
				i(38419),	-- Nerubian Boots
				i(38435),	-- Nerubian Bracers
				i(38420),	-- Nerubian Chestguard
				i(38421),	-- Nerubian Gloves
				i(38439),	-- Nerubian Helm
				i(38422),	-- Nerubian Legguards
				i(38417),	-- Nerubian Shoulders
				i(43133),	-- Nightshock Girdle
				i(43132),	-- Nightshock Hood
				i(43129),	-- Razorstrike Breastplate
				i(43461),	-- Revenant's Breastplate
				i(43469),	-- Revenant's Treads
				i(49897, {["timeline"] = {ADDED_3_3_0}}),	-- Rock-Steady Treads
				i(44445),	-- Scaled Icewalkers
				i(43450),	-- Stormhide Belt
				i(43455),	-- Stormhide Crown
				i(43454),	-- Stormhide Grips
				i(43453),	-- Stormhide Hauberk
				i(43456),	-- Stormhide Legguards
				i(43457),	-- Stormhide Shoulders
				i(43451),	-- Stormhide Stompers
				i(43452),	-- Stormhide Wristguards
				i(43442),	-- Swiftarrow Belt
				i(43443),	-- Swiftarrow Boots
				i(43444),	-- Swiftarrow Bracers
				i(43446),	-- Swiftarrow Gauntlets
				i(43445),	-- Swiftarrow Hauberk
				i(43447),	-- Swiftarrow Helm
				i(43448),	-- Swiftarrow Leggings
				i(43449),	-- Swiftarrow Shoulderguards
				i(43130),	-- Virulent Spaulders
			}),
		}),
		filter(MISC, {
			i(38375),	-- Borean Armor Kit
			i(33568),	-- Borean Leather
			i(44447, {["timeline"] = {ADDED_3_0_3, REMOVED_4_0_1}}),	-- Dragonscale Ammo Pouch
			i(69386, {["timeline"] = {ADDED_3_2_2}}),	-- Drums of Forgotten Kings
			i(49633, {["timeline"] = {ADDED_3_2_2}}),	-- Drums of the Wild
			i(44963),	-- Earthen Leg Armor
			i(38373),	-- Frosthide Leg Armor
			i(38376),	-- Heavy Borean Armor Kit
			i(38425),	-- Heavy Borean Leather
			i(38374),	-- Icescale Leg Armor
			i(38371),	-- Jormungar Leg Armor
			i(38347),	-- Mammoth Mining Bag
			i(38372),	-- Nerubian Leg Armor
			i(44448, {["timeline"] = {ADDED_3_0_3, REMOVED_4_0_1}}),	-- Nerubian Reinforced Quiver
			i(44446),	-- Pack of Endless Pockets
			i(38399),	-- Trapper's Traveling Pack
		}),
	}),
	prof(MINING, {
		spell(2575, {	-- Mining
			-- Nodes
			o(189978, {	-- Cobalt Deposit
				["maps"] = {
					BOREAN_TUNDRA,
					DRAGONBLIGHT,
					GRIZZLY_HILLS,
					HOWLING_FJORD,
					ZULDRAK,
				},
			}),
			o(189979, {	-- Rich Cobalt Deposit
				["maps"] = {
					BOREAN_TUNDRA,
					DRAGONBLIGHT,
					GRIZZLY_HILLS,
					HOWLING_FJORD,
					ZULDRAK,
				},
			}),
			o(189981, {	-- Rich Saronite Deposit
				["maps"] = {
					DRAGONBLIGHT,
					ICECROWN,
					SHOLAZAR_BASIN,
					THE_STORM_PEAKS,
					WINTERGRASP,
				},
			}),
			o(189980, {	-- Saronite Deposit
				["maps"] = {
					DRAGONBLIGHT,
					ICECROWN,
					SHOLAZAR_BASIN,
					THE_STORM_PEAKS,
					WINTERGRASP,
				},
			}),
			o(191133, {	-- Titanium Vein
				["maps"] = {
					DRAGONBLIGHT,
					ICECROWN,
					SHOLAZAR_BASIN,
					THE_STORM_PEAKS,
					WINTERGRASP,
				},
			}),
			-- Ores
			i(36909, {	-- Cobalt Ore
				["maps"] = {
					BOREAN_TUNDRA,
					DRAGONBLIGHT,
					GRIZZLY_HILLS,
					HOWLING_FJORD,
				},
				["providers"] = {
					{ "o", 189978 },	-- Cobalt Deposit
					{ "o", 189979 },	-- Rich Cobalt Deposit
				},
			}),
			i(108305, {	-- Cobalt Ore Nugget
				["providers"] = {
					{ "o", 189978 },	-- Cobalt Deposit
					{ "o", 189979 },	-- Rich Cobalt Deposit
				},
				["timeline"] = {ADDED_6_0_2},
				["groups"] = {
					i(36909),	-- Cobalt Ore
				},
			}),
			i(36912, {	-- Saronite Ore
				["maps"] = {
					ICECROWN,
					SHOLAZAR_BASIN,
					THE_STORM_PEAKS,
					WINTERGRASP,
				},
				["providers"] = {
					{ "o", 189981 },	-- Rich Saronite Deposit
					{ "o", 189980 },	-- Saronite Deposit
				},
			}),
			i(108306, {	-- Saronite Ore Nugget
				["providers"] = {
					{ "o", 189981 },	-- Rich Saronite Deposit
					{ "o", 189980 },	-- Saronite Deposit
				},
				["timeline"] = {ADDED_6_0_2},
				["groups"] = {
					i(36912),	-- Saronite Ore
				},
			}),
			i(36910, {	-- Titanium Ore
				["maps"] = {
					ICECROWN,
					SHOLAZAR_BASIN,
					THE_STORM_PEAKS,
					WINTERGRASP,
				},
				["provider"] = { "o", 191133 },	-- Titanium Vein
			}),
			i(108391, {	-- Titanium Ore Nugget
				["provider"] = { "o", 191133 },	-- Titanium Vein
				["timeline"] = {ADDED_6_0_2},
				["groups"] = {
					i(36910),	-- Titanium Ore
				},
			}),
			-- Not Ore --
			--[[	No need to list Tradegoods w/ many other sources
			-- Uncommon gem
			i(36917),	-- Bloodstone
			i(36923),	-- Chalcedony
			i(36932),	-- Dark Jade
			i(36929),	-- Huge Citrine
			i(36926),	-- Shadow Crystal
			i(36920),	-- Sun Crystal

			-- Rare gem
			i(36921),	-- Autumn's Glow
			i(36933),	-- Forest Emerald
			i(36930),	-- Monarch Topaz
			i(36918),	-- Scarlet Ruby
			i(36924),	-- Sky Sapphire
			i(36927),	-- Twilight Opal

			-- Elemental
			i(37700),	-- Crystallized Air
			i(37701),	-- Crystallized Earth
			i(37702),	-- Crystallized Fire
			i(37703),	-- Crystallized Shadow
			i(37705),	-- Crystallized Water
			i(35624),	-- Eternal Earth
			i(35627),	-- Eternal Shadow
			--]]
		}),
		header(HEADERS.Spell, 2656, {	-- Smelting
			i(36916, {	-- Cobalt Bar
				["cost"] = ClassicCost({ { "i", 36909, 1 } }),	-- Cobalt Ore
			}),
			i(36913, {	-- Saronite Bar
				["cost"] = ClassicCost({ { "i", 36912, 2 } }),	-- Saronite Ore
			}),
			i(41163, {	-- Titanium Bar
				["cost"] = ClassicCost({ { "i", 36910, 2 } }),	-- Titanium Ore
			}),
			i(37663, {	-- Titansteel Bar
				["cost"] = ClassicCost({
					{ "i", 41163, 3 },	-- Titanium Bar
					{ "i", 35624, 1 },	-- Eternal Earth
					{ "i", 36860, 1 },	-- Eternal Fire
					{ "i", 35627, 1 },	-- Eternal Shadow
				}),
				["OnTooltip"] = FUNCTION_TEMPLATES.GenerateOnTooltipSpellOnCooldown(55208)
			}),
		}),
	}),
	prof(SKINNING, {
		["description"] = "The following items can be gathered by skinning creatures on Northrend. Note that Borean Leather is the most common reagent to get from skinning. All other skinned reagents have a lower than 100% drop chance from skinning the respective mobs, thus you must expect having to skin multiple creatures to obtain the reagent.\n\nThis header will often not show everything uncollected it contains, even when enabling 'Debug Mode'. The best way to track specific reagents is to do /att item:[itemID] or pop out this header.",
		["groups"] = {
			i(44128, {	-- Arctic Fur
				["description"] = "Arctic Fur is a rare skinned drop from any skinnable creatures.",
			}),
			i(33568, {	-- Borean Leather
				["description"] = "Can be skinned from any skinnable WotLK mobs.",
			}),
			i(33567, {	-- Borean Leather Scraps
				["groups"] = {
					i(33568),	-- Borean Leather
				},
			}),
			i(38557, {	-- Icy Dragonscale
				["coords"] = {
					{ 23.9, 29.9, BOREAN_TUNDRA },	-- Coldarra
					{ 28.5, 62.6, CRYSTALSONG_FOREST },	-- The Azure Front
					{ 19.4, 61.1, DRAGONBLIGHT },	-- Moonrest Gardens
					{ 46.5, 26.7, SHOLAZAR_BASIN },	-- The Savage Thicket
				},
				["crs"] = {
					31402,	-- Azure Scalebane
					31403,	-- Azure Spellweaver
					25713,	-- Blue Drakonic Supplicant
					32572,	-- Dragonblight Mage Hunter (dragonkin)
					28378,	-- Primordial Drake
				},
				["maps"] = {
					THE_OBSIDIAN_SANCTUM,
					-- #if AFTER 3.3.5
					THE_RUBY_SANCTUM
					-- #endif
				},
			}),
			i(38561, {	-- Jormungar Scale
				["coords"] = {
					{ 82.2, 31.3, BOREAN_TUNDRA },	-- Transborea
					{ 57.3, 12.3, DRAGONBLIGHT },	-- The Crystal Vice
					{ 51.3, 23.9, DRAGONBLIGHT },	-- The Dragon Wastes
					{ 55.9, 64.2, THE_STORM_PEAKS },	-- Hibernal Cavern
					{ 47.1, 54.9, THE_STORM_PEAKS },	-- Gimorek's Den
					{ 27.6, 46.7, THE_STORM_PEAKS },	-- Snowdrift Plains
				},
				["crs"] = {
					26293,	-- Hulking Jormungar
					26358,	-- Ice Heart Jormungar Feeder
					26359,	-- Ice Heart Jormungar Spawn
					30148,	-- Infesting Jormungar
					26467,	-- Jormungar Tunneler
					30291,	-- Ravenous Jormungar
					30422,	-- Roaming Jormungar
					29390,	-- Snowdrift Jormungar
					25454,	-- Tundra Crawler
				},
			}),
			i(38558, {	-- Nerubian Chitin
				["coords"] = {
					{ 67.4, 32.0, BOREAN_TUNDRA },	-- The southern Geyser Fields
					{ 54.9, 70.4, BOREAN_TUNDRA },	-- Valliance Keep, west of
					{ 41.1, 58.2, BOREAN_TUNDRA },	-- Mightstone Quarry
					{ 17.1, 49.5, DRAGONBLIGHT },	-- Westwind Refugee Camp, east of
					{ 26.2, 49.5, DRAGONBLIGHT },	-- The Pit of Narjun
					{ 79.1, 67.2, ICECROWN },	-- Scourgeholme
					{ 53.4, 76.0, ICECROWN },	-- The Courth of Bones
				},
				["crs"] = {
					26402,	-- Anub'ar Ambusher
					26413,	-- Anub'ar Dreadweaver
					26606,	-- Anub'ar Slayer
					26605,	-- Anub'ar Underlord
					31780,	-- Fallen Spiderlord
					30205,	-- Forgotten Depths Acolyte
					30204,	-- Forgotten Depths Ambusher
					30543,	-- Forgotten Depths High Priest (intro phase)
					31037,	-- Forgotten Depths High Priest (progressed phase)
					30333,	-- Forgotten Depths Slayer
					31039,	-- Forgotten Depths Underking (progressed phase)
					30541,	-- Forgotten Depths Underking (intro phase)
					31747,	-- Necrotic Webspinner
					26445,	-- Nerub'ar Corpse Harvester
					24562,	-- Nerub'ar Invader
					24566,	-- Nerub'ar Skitterer
					25622,	-- Nerub'ar Tunneler
					24563,	-- Nerub'ar Venomspitter
					25619,	-- Nerub'ar Warrior
					25294,	-- Nerub'ar Web Lord
					25582,	-- Scourged Flamespitter
				},
				["maps"] = {
					AHNKAHET_THE_OLD_KINGDOM,
					AZJOL_NERUB,
				},
			}),
		},
	}),
	prof(TAILORING, {
		n(ARMOR, {
			i(42096),	-- Aurora Slippers
			applyclassicphase(WRATH_PHASE_THREE, i(47585, {["timeline"] = { ADDED_3_2_0 }})),	-- Bejeweled Wizard's Bracers [A]
			applyclassicphase(WRATH_PHASE_THREE, i(47586, {["timeline"] = { ADDED_3_2_0 }})),	-- Bejeweled Wizard's Bracers [H]
			i(41553),	-- Black Duskweave Leggings
			i(41554),	-- Black Duskweave Robe
			i(41555),	-- Black Duskweave Wristwraps
			i(41249),	-- Blue Lumberjack Shirt
			i(41253),	-- Blue Workman's Shirt
			i(45810, {["timeline"] = {ADDED_3_1_0}}),	-- Cloak of Crimson Snow
			i(41608),	-- Cloak of Frozen Spirits
			i(41607),	-- Cloak of the Moon
			applyclassicphase(WRATH_PHASE_TWO, i(45558, {["timeline"] = {ADDED_3_1_0}})),	-- Cord of the White Dawn
			i(41986),	-- Deep Frozen Cord
			i(41610),	-- Deathchill Cloak
			applyclassicphase(WRATH_PHASE_FOUR, i(49890, {["timeline"] = {ADDED_3_3_0}})),	-- Deathfrost Boots
			i(41543),	-- Duskweave Belt
			i(41544),	-- Duskweave Boots
			i(41546),	-- Duskweave Cowl
			i(41545),	-- Duskweave Gloves
			i(41548),	-- Duskweave Leggings
			i(41549),	-- Duskweave Robe
			i(41550),	-- Duskweave Shoulders
			i(41551),	-- Duskweave Wristwraps
			i(42111),	-- Ebonweave Gloves
			i(42101),	-- Ebonweave Robe
			i(45811, {["timeline"] = {ADDED_3_1_0}}),	-- Frostguard Drape
			i(42093),	-- Frostmoon Pants
			i(43969),	-- Frostsavage Belt
			i(43970),	-- Frostsavage Boots
			i(43974),	-- Frostsavage Bracers
			i(43971),	-- Frostsavage Cowl
			i(41516),	-- Frostsavage Gloves
			i(43975),	-- Frostsavage Leggings
			i(43972),	-- Frostsavage Robe
			i(43973),	-- Frostsavage Shoulders
			i(41522),	-- Frostwoven Belt
			i(41520),	-- Frostwoven Boots
			i(41521),	-- Frostwoven Cowl
			i(44211),	-- Frostwoven Gloves
			i(41519),	-- Frostwoven Leggings
			i(41515),	-- Frostwoven Robe
			i(41513),	-- Frostwoven Shoulders
			i(41512),	-- Frostwoven Wristwraps
			i(43583),	-- Glacial Robe
			i(43585),	-- Glacial Slippers
			i(43584),	-- Glacial Waistband
			i(41250),	-- Green Lumberjack Shirt
			i(41255),	-- Green Workman's Shirt
			i(41984),	-- Hat of Wintry Doom
			applyclassicphase(WRATH_PHASE_FOUR, i(49891, {["timeline"] = {ADDED_3_3_0}})),	-- Leggings of Woven Death
			i(42095),	-- Light Blessed Mittens
			applyclassicphase(WRATH_PHASE_FOUR, i(49892, {["timeline"] = {ADDED_3_3_0}})),	-- Lightweave Leggings
			applyclassicphase(WRATH_PHASE_THREE, i(47603, {["timeline"] = { ADDED_3_2_0 }})),	-- Merlin's Robe [A]
			applyclassicphase(WRATH_PHASE_THREE, i(47604, {["timeline"] = { ADDED_3_2_0 }})),	-- Merlin's Robe [H]
			i(42103),	-- Moonshroud Gloves
			i(42100),	-- Moonshroud Robe
			i(41525),	-- Mystic Frostwoven Robe
			i(41523),	-- Mystic Frostwoven Shoulders
			i(41528),	-- Mystic Frostwoven Wristwraps
			i(41248),	-- Red Lumberjack Shirt
			i(41252),	-- Red Workman's Shirt
			applyclassicphase(WRATH_PHASE_THREE, i(47587, {["timeline"] = { ADDED_3_2_0 }})),	-- Royal Moonshroud Bracers [A]
			applyclassicphase(WRATH_PHASE_THREE, i(47588, {["timeline"] = { ADDED_3_2_0 }})),	-- Royal Moonshroud Bracers [H]
			applyclassicphase(WRATH_PHASE_THREE, i(47605, {["timeline"] = { ADDED_3_2_0 }})),	-- Royal Moonshroud Robe [A]
			applyclassicphase(WRATH_PHASE_THREE, i(47606, {["timeline"] = { ADDED_3_2_0 }})),	-- Royal Moonshroud Robe [H]
			i(41254),	-- Rustic Workman's Shirt
			applyclassicphase(WRATH_PHASE_FOUR, i(49893, {["timeline"] = {ADDED_3_3_0}})),	-- Sandals of Consecration
			applyclassicphase(WRATH_PHASE_TWO, i(45557, {["timeline"] = {ADDED_3_1_0}})),	-- Sash of Ancient Power
			applyclassicphase(WRATH_PHASE_TWO, i(45567, {["timeline"] = {ADDED_3_1_0}})),	-- Savior's Slippers
			i(41985),	-- Silky Iceshard Boots
			applyclassicphase(WRATH_PHASE_TWO, i(45566, {["timeline"] = {ADDED_3_1_0}})),	-- Spellslinger's Slippers
			i(42113),	-- Spellweave Gloves
			i(42102),	-- Spellweave Robe
			i(41609),	-- Wispcloak
			i(41251),	-- Yellow Lumberjack Shirt
		}),
		n(ARMOR_ENCHANTMENTS, {
			i(41603),	-- Azure Spellthread
			i(41602),	-- Brilliant Spellthread
			i(41604),	-- Sapphire Spellthread
			i(41601),	-- Shining Spellthread
		}),
		filter(BAGS, {
			i(41597),	-- Abyssal Bag
			i(45773, {["timeline"] = {ADDED_3_1_0}}),	-- Emerald Bag
			i(41599),	-- Frostweave Bag
			i(41600),	-- Glacial Bag
			i(41598),	-- Mysterious Bag
		}),
		filter(MISC, {
			-- #if AFTER BFA
			i(34721),	-- Frostweave Bandage
			-- #endif
			i(41509),	-- Frostweave Net
			-- #if AFTER BFA
			i(34722),	-- Heavy Frostweave Bandage
			-- #endif
		}),
		filter(MOUNTS, {
			i(44554),	-- Flying Carpet (MOUNT!)
			applyclassicphase(WRATH_PHASE_FOUR, i(54797, {["timeline"] = {ADDED_3_3_3}})),	-- Frosty Flying Carpet (MOUNT!)
			i(44558),	-- Magnificent Flying Carpet (MOUNT!)
		}),
		filter(REAGENTS, {
			i(41510),	-- Bolt of Frostweave
			i(41511),	-- Bolt of Imbued Frostweave
			i(41593),	-- Ebonweave
			i(41594),	-- Moonshroud
			i(41595),	-- Spellweave
		}),
	}),
}))));
