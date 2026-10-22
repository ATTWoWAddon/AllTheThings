-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------

-- #if ANYCLASSIC
-- Wouter NOTE: level 58 boosts became available in Classic late into the Naxxramas patch, with the Dark Portal Pass for TBC
root(ROOTS.Character, n(CLASS_TRIAL, {
	expansion(EXPANSION.TBC, bubbleDown({ ["u"] = REAL_MONEY, }, {
		["groups"] = {
			cl(DRUID, {
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
				["groups"] = {
					i(186055),	-- Communal Stave (Agi)
					i(186026),	-- Communal Crown (Leather Agi/Spi)
					i(186027),	-- Communal Pads (Leather Int)
					i(186028),	-- Communal Tunic (Leather Stam)
					i(186032),	-- Communal Bindings (Leather Int)
					i(186033),	-- Communal Gloves (Leather Agi)
					i(186029),	-- Communal Belt (Leather Agi)
					i(186030),	-- Communal Legguards (Leather Int)
					i(186031),	-- Communal Boots (Leather Agi)
					i(186052),	-- Communal Idol of Wrath
					i(186053),	-- Communal Idol of the Wild
					i(186054),	-- Communal Idol of Life
				},
			}),
			cl(HUNTER, {
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
				["groups"] = {
					i(186056),	-- Communal Bow
					i(186034),	-- Communal Headguard (Mail Agi)
					i(186035),	-- Communal Spaulders (Mail Agi)
					i(186036),	-- Communal Armor (Mail Stam)
					i(186040),	-- Communal Armguards (Mail Agi)
					i(186041),	-- Communal Gauntlets (Mail Agi)
					i(186037),	-- Communal Belt (Mail Agi)
					i(186038),	-- Communal Leggings (Mail Agi)
					i(186039),	-- Communal Boots (Mail Stam)
				},
			}),
			cl(MAGE, {
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
				["groups"] = {
					i(186018),	-- Communal Cowl (Cloth Int)
					i(186019),	-- Communal Mantle (Cloth Int)
					i(186020),	-- Communal Armor (Cloth Int)
					i(186024),	-- Communal Bracers (Cloth Int)
					i(186025),	-- Communal Gloves (Cloth Int)
					i(186021),	-- Communal Sash (Cloth Int)
					i(186022),	-- Communal Pants (Cloth Int)
					i(186023),	-- Communal Boots (Cloth Int)
					i(186050),	-- Communal Wand (Int)
				},
			}),
			cl(PALADIN, {
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
				["groups"] = {
					i(186086),	-- Communal Faceguard (Plate Int)
					i(186088),	-- Communal Pauldrons (Plate Int)
					i(185998),	-- Communal Chestguard (Plate Str)
					i(186085),	-- Communal Plate Vambraces (Plate Int)
					i(186001),	-- Communal Plate Gauntlets (Plate Stam/Crit)
					i(186002),	-- Communal Plate Girdle (Plate Str)
					i(186087),	-- Communal Plate Leggings (Plate Int)
					i(186016),	-- Communal Plate Greaves (Plate Stam)
					i(186065),	-- Communal Book of Healing
					i(186066),	-- Communal Book of Protection
					i(186067),	-- Communal Book of Righteousness
				},
			}),
			cl(PRIEST, {
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
				["groups"] = {
					i(186018),	-- Communal Cowl (Cloth Int)
					i(186019),	-- Communal Mantle (Cloth Int)
					i(186020),	-- Communal Armor (Cloth Int)
					i(186024),	-- Communal Bracers (Cloth Int)
					i(186025),	-- Communal Gloves (Cloth Int)
					i(186021),	-- Communal Sash (Cloth Int)
					i(186022),	-- Communal Pants (Cloth Int)
					i(186023),	-- Communal Boots (Cloth Int)
					i(186050),	-- Communal Wand (Int)
				},
			}),
			cl(ROGUE, {
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
				["groups"] = {
					i(186061),	-- Communal Blade (Agi 1H Sword)
					i(186068),	-- Communal Shiv (Agi Dagger)
					i(186078),	-- Communal Crown (Leather Agi)
					i(186080),	-- Communal Pads (Leather Agi)
					i(186028),	-- Communal Tunic (Leather Stam)
					i(186076),	-- Communal Bindings (Leather Agi)
					i(186033),	-- Communal Gloves (Leather Agi)
					i(186029),	-- Communal Belt (Leather Agi)
					i(186079),	-- Communal Legguards (Leather Agi)
					i(186031),	-- Communal Boots (Leather Agi)
					i(186069),	-- Communal Knives
				},
			}),
			cl(SHAMAN, {
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
				["groups"] = {
					i(186070),	-- Communal Right Claw (Agi Fist MH)
					i(186682),	-- Communal Left Claw (Agi Fist OH)
					i(186081),	-- Communal Headguard (Mail Agi/Spi)
					i(186083),	-- Communal Spaulders (Mail Int)
					i(186036),	-- Communal Armor (Mail Stam)
					i(186084),	-- Communal Armguards (Mail Int)
					i(186041),	-- Communal Gauntlets (Mail Agi)
					i(186037),	-- Communal Belt (Mail Agi)
					i(186082),	-- Communal Leggings (Mail Agi/Spi)
					i(186039),	-- Communal Boots (Mail Stam)
					i(186071),	-- Communal Totem of Lightning
					i(186072),	-- Communal Totem of Restoration
					i(186073),	-- Communal Totem of the Storm
				},
			}),
			cl(WARLOCK, {
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
				["groups"] = {
					i(186018),	-- Communal Cowl (Cloth Int)
					i(186019),	-- Communal Mantle (Cloth Int)
					i(186020),	-- Communal Armor (Cloth Int)
					i(186024),	-- Communal Bracers (Cloth Int)
					i(186025),	-- Communal Gloves (Cloth Int)
					i(186021),	-- Communal Sash (Cloth Int)
					i(186022),	-- Communal Pants (Cloth Int)
					i(186023),	-- Communal Boots (Cloth Int)
					i(186050),	-- Communal Wand (Int)
				},
			}),
			cl(WARRIOR, {
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
				["groups"] = {
					i(185976),	-- Communal Faceguard (Plate Str)
					i(185977),	-- Communal Pauldrons (Plate Str)
					i(185998),	-- Communal Chestguard (Plate Str)
					i(185999),	-- Communal Plate Vambraces (Plate Str)
					i(186001),	-- Communal Plate Gauntlets (Plate Stam/Crit)
					i(186002),	-- Communal Plate Girdle (Plate Str)
					i(186015),	-- Communal Plate Leggings (Plate Str)
					i(186016),	-- Communal Plate Greaves (Plate Stam)
					i(186069),	-- Communal Knives
				},
			}),
			-- Wouter NOTE: I have no clue to which classes some of these got assigned so I'm leaving them unsorted
			i(186048, {	-- Communal Dagger (Int)
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(186049, {	-- Communal Rose (Spi)
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(186051, {	-- Communal Staff (Int)
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(186057, {	-- Communal Warmaul (Str 2H Mace)
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(186058, {	-- Communal Sword (Str 1H Sword)
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(186060, {	-- Communal Guardian (Tank 1H Sword)
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(186062, {	-- Communal Smasher (Spi 1H Mace)
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(186063, {	-- Communal Shield (Str)
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(186064, {	-- Communal Buckler (Int)
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(186163, {	-- Communal Guardian (Tank 1H Sword - duplicate?)
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(186074, {	-- Communal Necklace (Stam)
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(186044, {	-- Communal Cloak (Agi)
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(186045, {	-- Communal Cloak (Also agi???)
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(186046, {	-- Communal Cloak (Int)
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(186047, {	-- Communal Cape (Str)
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(186075, {	-- Communal Cloak (Also int???)
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(185981, {	-- Communal Band of Onslaught
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(185982, {	-- Communal Band of Dexterity
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(185983, {	-- Communal Band of Wisdom
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(185984, {	-- Communal Band of Durability
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(185985, {	-- Communal Stone of Onslaught
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(185986, {	-- Communal Stone of Durability
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(185987, {	-- Communal Stone of Wisdom
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
			i(185988, {	-- Communal Stone of Stoicism
				["timeline"] = { ADDED_1_13_7, REMOVED_3_4_0 },
			}),
		},
	})),
}));
-- #endif
