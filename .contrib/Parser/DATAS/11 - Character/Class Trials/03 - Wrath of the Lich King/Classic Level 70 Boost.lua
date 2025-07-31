-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------

-- #if ANYCLASSIC
-- Wouter NOTE: level 70 boosts became available in Classic with the Wrath of the Lich King pre-patch, with the Northrend Heroic/Epic Upgrade for Wrath
root(ROOTS.Character, n(CLASS_TRIAL, {
	expansion(EXPANSION.WRATH, bubbleDown({ ["u"] = REAL_MONEY, ["timeline"] = { ADDED_3_4_0, REMOVED_3_4_3 } }, {
		["groups"] = {
			cl(DRUID, {
				i(199713),	-- Collective Stave (Agi Staff)
				i(199463),	-- Collective Crown (Leather Int/Spi)
				i(199464),	-- Collective Pads (Leather Int)
				i(199465),	-- Collective Tunic (Leather Int)
				i(199471),	-- Collective Bindings (Leather Int)
				i(199469),	-- Collective Gloves (Leather Int)
				i(199466),	-- Collective Belt (Leather Int)
				i(199467),	-- Collective Legguards (Leather Int)
				i(199468),	-- Collective Boots (Leather Int/Spi)
				i(199638),	-- Collective Idol of Wrath
				i(199639),	-- Collective Idol of the Wild
				i(199640),	-- Collective Idol of Life
			}),
			cl(HUNTER, {
				i(199714),	-- Collective Bow
				i(199494),	-- Collective Headguard (Mail Agi/Int)
				i(199495),	-- Collective Spaulders (Mail Agi)
				i(199496),	-- Collective Armor (Mail Agi/Int)
				i(199500),	-- Collective Armguards (Mail Agi)
				i(199501),	-- Collective Gauntlets (Mail Agi)
				i(199497),	-- Collective Belt (Mail Agi)
				i(199498),	-- Collective Leggings (Mail Agi)
				i(199499),	-- Collective Boots (Mail Agi/Int)
			}),
			cl(MAGE, {
				i(199327),	-- Collective Cowl (Cloth Int/Spi)
				i(199328),	-- Collective Mantle (Cloth Int)
				i(199329),	-- Collective Armor (Cloth Int)
				i(199333),	-- Collective Bracers (Cloth Int)
				i(199334),	-- Collective Gloves (Cloth Int)
				i(199330),	-- Collective Sash (Cloth Int)
				i(199331),	-- Collective Pants (Cloth Int)
				i(199332),	-- Collective Boots (Cloth Int/Spi)
				i(199711),	-- Collective Wand (Int)
			}),
			cl(PALADIN, {
				i(199511),	-- Collective Faceguard (Plate Str/Spi/SP)
				i(199512),	-- Collective Pauldrons (Plate Int)
				i(199513),	-- Collective Chestguard (Plate Int)
				i(199514),	-- Collective Plate Vambraces (Plate Int)
				i(199747),	-- Collective Plate Gauntlets (Plate Int)
				i(199516),	-- Collective Plate Girdle (Plate Int)
				i(199517),	-- Collective Plate Leggings (Plate Int)
				i(199518),	-- Collective Plate Greaves (Plate Int)
				i(199635),	-- Collective Book of Healing
				i(199636),	-- Collective Book of Protection
				i(199637),	-- Collective Book of Righteousness
			}),
			cl(PRIEST, {
				i(199327),	-- Collective Cowl (Cloth Int/Spi)
				i(199328),	-- Collective Mantle (Cloth Int)
				i(199329),	-- Collective Armor (Cloth Int)
				i(199333),	-- Collective Bracers (Cloth Int)
				i(199334),	-- Collective Gloves (Cloth Int)
				i(199330),	-- Collective Sash (Cloth Int)
				i(199331),	-- Collective Pants (Cloth Int)
				i(199332),	-- Collective Boots (Cloth Int/Spi)
				i(199711),	-- Collective Wand (Int)
			}),
			cl(ROGUE, {
				i(199717),	-- Collective Blade (Agi 1H Sword)
				i(199478),	-- Collective Crown (Leather Agi)
				i(199479),	-- Collective Pads (Leather Agi)
				i(199480),	-- Collective Tunic (Leather Agi)
				i(199485),	-- Collective Bindings (Leather Agi)
				i(199484),	-- Collective Gloves (Leather Agi)
				i(199481),	-- Collective Belt (Leather Agi)
				i(199482),	-- Collective Legguards (Leather Agi)
				i(199483),	-- Collective Boots (Leather Agi)
				i(199722),	-- Collective Knives
			}),
			cl(SHAMAN, {
				i(199723),	-- Collective Right Claw (Agi Fist MH)
				i(199725),	-- Collective Left Claw (Agi Fist OH)
				i(199486),	-- Collective Headguard (Mail Int)
				i(199487),	-- Collective Spaulders (Mail Int)
				i(199488),	-- Collective Armor (Mail Int)
				i(199492),	-- Collective Armguards (Mail Int)
				i(199493),	-- Collective Gauntlets (Mail Int)
				i(199501),	-- Collective Gauntlets (Mail Agi)
				i(199489),	-- Collective Belt (Mail Int)
				i(199490),	-- Collective Leggings (Mail Int)
				i(199491),	-- Collective Boots (Mail Int)
				i(199642),	-- Collective Totem of Lightning
				i(199643),	-- Collective Totem of Restoration
				i(199644),	-- Collective Totem of the Storm
			}),
			cl(WARLOCK, {
				i(199327),	-- Collective Cowl (Cloth Int/Spi)
				i(199328),	-- Collective Mantle (Cloth Int)
				i(199329),	-- Collective Armor (Cloth Int)
				i(199333),	-- Collective Bracers (Cloth Int)
				i(199334),	-- Collective Gloves (Cloth Int)
				i(199330),	-- Collective Sash (Cloth Int)
				i(199331),	-- Collective Pants (Cloth Int)
				i(199332),	-- Collective Boots (Cloth Int/Spi)
				i(199711),	-- Collective Wand (Int)
			}),
			cl(WARRIOR, {
				i(199503),	-- Collective Faceguard (Plate Str)
				i(199504),	-- Collective Pauldrons (Plate Str)
				i(199505),	-- Collective Chestguard (Plate Str)
				i(199506),	-- Collective Plate Vambraces (Plate Str)
				i(199507),	-- Collective Plate Gauntlets (Plate Str)
				i(199508),	-- Collective Plate Girdle (Plate Str)
				i(199509),	-- Collective Plate Leggings (Plate Str)
				i(199510),	-- Collective Plate Greaves (Plate Str)
				i(199722),	-- Collective Knives
			}),
			-- Wouter NOTE: I have no clue to which classes some of these got assigned so I'm leaving them unsorted
			i(199709),	-- Collective Dagger (Int/Spi Dagger)
			i(199710),	-- Collective Rose
			i(199712),	-- Collective Staff (Int Staff)
			i(199715),	-- Collective Warmaul (DPS 2H Mace)
			i(199716),	-- Collective Sword (DPS 1H Sword)
			i(199718),	-- Collective Smasher (Int/Spi 1H Mace)
			i(199719),	-- Collective Shield (Str)
			i(199720),	-- Collective Buckler (Int)
			i(199724),	-- Collective Guardian (Tank 1H Sword)
			i(199519),	-- Collective Necklace (Caster Neck)
			i(199520),	-- Collective Necklace (Phys DPS Neck)
			i(199521),	-- Collective Necklace (Tank Neck)
			i(199470),	-- Collective Cloak (Caster Cloak)
			i(199525),	-- Collective Cloak (Phys DPS Cloak)
			i(199526),	-- Collective Cloak (Tank Cloak)
			i(199522),	-- Collective Band of Wisdom
			i(199523),	-- Collective Band of Devastation \\ Collective  Band of Devastation
			i(199524),	-- Collective Band of Defense
			i(199699),	-- Collective Band of Durability
			i(199527),	-- Collective Stone of Onslaught
			i(199528),	-- Collective Stone of Durability
			i(199529),	-- Collective Stone of Wisdom
			i(199530),	-- Collective Stone of Stoicism
		},
	})),
}));
-- #endif
