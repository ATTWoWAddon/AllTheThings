---------------------------------------------------------------------------
--         N E V E R       I M P L E M E N T E D       M O D U L E       --
---------------------------------------------------------------------------
-- Everything in this file hasn't been implemented yet.
CRIEVES_I_AM_TOO_LAZY_FOR_THIS_LIST = createHeader({
	readable = "Crieve's Never Implemented List",
	icon = 132738,
	text = {
		en = "Crieve's Never Implemented List",
	},
	description = {
		en = "If the following are sorted somewhere, please delete them from this list. Thanks.",
	},
});
root("NeverImplemented", n(CRIEVES_I_AM_TOO_LAZY_FOR_THIS_LIST, {
	q(63769),	-- Holiday Reset Yearly Quest
	q(55296),	-- This quest was reported as missing on Discord, but has no information related to it similar to 6842 and 7069.

	q(8226, {	-- Rare Fish - Pale Ghoulfish
		--["qg"] = 15079,	-- Fishbot 5000
		--["coord"] = { 27.4, 76.9, STRANGLETHORN_VALE },
		["cost"] = {
			{ "i", 19804, 1 },	-- Pale Ghoulfish
		},
		["requireSkill"] = FISHING,
		["repeatable"] = true,
		["groups"] = {
			i(7996),	-- Worn Fishing Hat
		},
	}),

	-- Shirts
	i(6130),	-- Trapper's Shirt (deprecated)

	filter(3, {	-- Cloak
		i(16116),	-- Test Nature Res Cloak Cloth
		i(20361),	-- 63 Green Frost Shroud
		i(20316),	-- 63 Green Rogue Cloak
		i(20283),	-- 63 Green Warrior Cloak
		i(20336),	-- 90 Epic Frost Shroud
		i(20276),	-- 90 Epic Rogue Cloak
		i(20145),	-- 90 Epic Warrior Cloak
		i(20348),	-- 90 Green Frost Shroud
		i(20302),	-- 90 Green Rogue Cloak
		i(20241),	-- 90 Green Warrior Cloak
		i(22230),	-- Frightmaw Hide
		i(16315),	-- Sergeant Major's Cape
		i(16336),	-- Sergeant Major's Cape
		i(16337),	-- Sergeant Major's Cape
	}),
	filter(4, {		-- Cloth
		i(14363),	-- Deprecated Runic Cloth Pants
		i(3068),	-- Deprecated Silver-thread Cowl
		i(14389),	-- Durability Shoulderpads
		i(20353),	-- 63 Green Frost Boots
		i(20326),	-- 90 Epic Frost Boots
		i(20340),	-- 90 Green Frost Boots
		i(20354),	-- 63 Green Frost Crown
		i(20356),	-- 63 Green Frost Leggings
		i(20357),	-- 63 Green Frost Mantle
		i(20360),	-- 63 Green Frost Robes
		i(20327),	-- 90 Epic Frost Crown
		i(20329),	-- 90 Epic Frost Leggings
		i(20330),	-- 90 Epic Frost Mantle
		i(20331),	-- 90 Epic Frost Robes
		i(20341),	-- 90 Green Frost Crown
		i(20343),	-- 90 Green Frost Leggings
		i(20344),	-- 90 Green Frost Mantle
		i(20347),	-- 90 Green Frost Robes
		i(13936),	-- Deprecated Dreadmaster's Shroud
		i(19926),	-- Flowing Ritual Robes DEPRECATED
		i(19847),	-- Zandalar Demoniac's Robe DEPRECATED
		i(19844),	-- Zandalar Illusionist's Robe DEPRECATED
		i(21339),	-- Doomcaller's Handwraps PH
		i(18747),	-- Item Properties Test
		i(12904),	-- Shawn's Super Special Swami Hat
		i(16151),	-- Test Arcane Res Feet Cloth
		i(16154),	-- Test Arcane Res Shoulders Cloth
		i(16152),	-- Test Arcane Res Waist Cloth
		i(16153),	-- Test Arcane Res Wrist Cloth
		i(16063),	-- Test Fire Res Hands Cloth
		i(16061),	-- Test Fire Res Shoulders Cloth
		i(16062),	-- Test Fire Res Waist Cloth
		i(16135),	-- Test Frost Res Feet Cloth
		i(16138),	-- Test Frost Res Head Cloth
		i(16136),	-- Test Frost Res Waist Cloth
		i(16137),	-- Test Frost Res Wrist Cloth
		i(16117),	-- Test Nature Res Hands Cloth
		i(16121),	-- Test Nature Res Head Cloth
		i(16118),	-- Test Nature Res Legs Cloth
		i(16122),	-- Test Nature Res Shoulders Cloth
		i(16120),	-- Test Nature Res Waist Cloth
		i(16119),	-- Test Nature Res Wrist Cloth
		i(16146),	-- Test Shadow Res Head Cloth
		i(16147),	-- Test Shadow Res Shoulders Cloth
		i(16145),	-- Test Shadow Res Waist Cloth
		i(20706),	-- Cenarion Reservist's Pants
		i(17589),	-- General's Dreadweave Belt
		i(17587),	-- General's Dreadweave Bracers
		i(17619),	-- General's Satin Bracers
		i(17621),	-- General's Satin Cinch
		i(16538),	-- General's Silk Cuffs
		i(16537),	-- General's Silk Sash
		i(17565),	-- Knight-Captain's Dreadweave Belt
		i(17563),	-- Knight-Captain's Dreadweave Bracers
		i(17597),	-- Knight-Captain's Satin Cord
		i(17595),	-- Knight-Captain's Satin Cuffs
		i(16370),	-- Knight-Captain's Silk Cuffs
		i(16367),	-- Knight-Captain's Silk Sash
		i(17574),	-- Legionnaire's Dreadweave Belt
		i(17575),	-- Legionnaire's Dreadweave Bracers
		i(17615),	-- Legionnaire's Satin Cuffs
		i(17614),	-- Legionnaire's Satin Sash
		i(16488),	-- Legionnaire's Silk Belt
		i(4989),	-- Mage Dragon Robe
		i(17582),	-- Marshal's Dreadweave Cuffs
		i(17585),	-- Marshal's Dreadweave Sash
		i(17606),	-- Marshal's Satin Bracers
		i(17609),	-- Marshal's Satin Sash
		i(16438),	-- Marshal's Silk Bracers
		i(16439),	-- Marshal's Silk Sash
		i(6478),	-- Rat Stompers
		i(4990),	-- Scorched Bands
		i(12107),	-- Whispersilk Leggings
		i(13080),	-- Widow's Clutch
		i(1216),	-- Frost Bracers
		i(18341),	-- Quel'dorai Sash
	}),
	filter(5, {		-- Leather
		i(20312),	-- 63 Green Rogue Boots
		i(20315),	-- 63 Green Rogue Cap
		i(20318),	-- 63 Green Rogue Gloves
		i(20320),	-- 63 Green Rogue Pants
		i(20322),	-- 63 Green Rogue Spaulders
		i(20323),	-- 63 Green Rogue Tunic
		i(20268),	-- 90 Epic Rogue Boots
		i(20270),	-- 90 Epic Rogue Cap
		i(20271),	-- 90 Epic Rogue Gloves
		i(20272),	-- 90 Epic Rogue Pants
		i(20273),	-- 90 Epic Rogue Spaulders
		i(20274),	-- 90 Epic Rogue Tunic
		i(20298),	-- 90 Green Rogue Boots
		i(20301),	-- 90 Green Rogue Cap
		i(20304),	-- 90 Green Rogue Gloves
		i(20306),	-- 90 Green Rogue Pants
		i(20308),	-- 90 Green Rogue Spaulders
		i(20309),	-- 90 Green Rogue Tunic
		i(13092),	-- Deprecated Dragonstalker Tunic
		i(13242),	-- Deprecated Stormrage Boots
		i(19837),	-- Test Ranged Slot
		i(14550),	-- Bladebane Armguards
		i(21594),	-- Bracers of the Fallen Son
		i(19743),	-- Cloaked Hood TEST
		i(19742),	-- Earthborn Kilt TEST
		i(16156),	-- Test Arcane Res Head Leather
		i(16155),	-- Test Arcane Res Waist Leather
		i(16065),	-- Test Fire Res Feet Leather
		i(16139),	-- Test Frost Res Head Leather
		i(16144),	-- Test Frost Res Shoulders Leather
		i(16140),	-- Test Nature Res Head Leather
		i(16126),	-- Test Nature Res Waist Leather
		i(16127),	-- Test Nature Res Wrist Leather
		i(16132),	-- Test Nature Res Wrist Mail
		i(16148),	-- Test Shadow Res Shoulders Leather
		i(16150),	-- Test Shadow Res Waist Leather
		i(7187),	-- VanCleef's Boots
		i(7950),	-- Armor of Thero-shan
		i(7952),	-- Boots of Thero-shan
		i(12104),	-- Brindlethorn Tunic
		i(5821),	-- Darkstalker Boots
		i(16556),	-- General's Dragonhide Belt
		i(16553),	-- General's Dragonhide Bracers
		i(16559),	-- General's Leather Armsplints
		i(16557),	-- General's Leather Girdle
		i(7948),	-- Girdle of Thero-shan
		i(7951),	-- Hands of Thero-shan
		i(16395),	-- Knight-Captain's Dragonhide Armsplints
		i(16399),	-- Knight-Captain's Dragonhide Girdle
		i(16398),	-- Knight-Captain's Leather Belt
		i(16394),	-- Knight-Captain's Leather Bracers
		i(16493),	-- Legionnaire's Dragonhide Armguards
		i(16495),	-- Legionnaire's Dragonhide Waistband
		i(16500),	-- Legionnaire's Leather Girdle
		i(7949),	-- Leggings of Thero-shan
		i(7953),	-- Mask of Thero-shan
		i(16445),	-- Marshal's Dragonhide Bracers
		i(16447),	-- Marshal's Dragonhide Waistguard
		i(16460),	-- Marshal's Leather Armsplints
		i(16458),	-- Marshal's Leather Cinch
		i(22273),	-- Moonshadow Hood
		i(19986),	-- Pirate's Eye Patch
		i(20524),	-- Shadowhide Leggings
		i(21613),	-- Wormhide Boots
		i(21614),	-- Wormhide Protector
	}),
	filter(6, {		-- Mail
		i(6730),	-- Ironforge Chain
		i(6733),	-- Ironforge Gauntlets
		i(7925),	-- Mithril Scale Gloves
		i(16664),	-- Ornate Bracers
		i(17769),	-- Sagebrush Spaulders
		i(12616),	-- Savage Mail Boots
		i(12617),	-- Savage Mail Shoulders
		i(12615),	-- Savage Mail Tunic
		-- #if BEFORE CATA
		i(12258),	-- Serpent Clasp Belt
		-- #endif
		i(16157),	-- Test Arcane Res Feet Mail
		i(16164),	-- Test Arcane Res Hands Mail
		i(16159),	-- Test Arcane Res Head Mail
		i(16165),	-- Test Arcane Res Legs Mail
		i(16163),	-- Test Arcane Res Waist Mail
		i(16158),	-- Test Arcane Res Wrist Mail
		i(16066),	-- Test Fire Res Feet Mail
		i(16064),	-- Test Fire Res Waist Mail
		i(16143),	-- Test Frost Res Shoulder Mail
		i(16142),	-- Test Frost Res Wrist Mail
		i(16129),	-- Test Nature Res Feet Mail
		i(16141),	-- Test Nature Res Head Mail
		i(16134),	-- Test Nature Res Shoulders Mail
		i(16131),	-- Test Nature Res Waist Mail
		i(16149),	-- Test Shadow Res Shoulder Mail
		i(21584),	-- Bracers of Eternal Reckoning
		i(13090),	-- Breastplate of the Chosen
		i(18320),	-- Demonheart Spaulders
		i(16572),	-- General's Chain Girdle
		i(16570),	-- General's Chain Wristguards
		i(16576),	-- General's Mail Bracers
		i(16575),	-- General's Mail Waistband
		i(18304),	-- Greenroot Mail
		i(5822),	-- Hedgeseed Gauntlets
		i(16402),	-- Knight-Captain's Chain Armguards
		i(16400),	-- Knight-Captain's Chain Girdle
		i(16517),	-- Legionnaire's Chain Bracers
		i(16529),	-- Legionnaire's Chain Girdle
		i(16461),	-- Marshal's Chain Bracers
		i(16464),	-- Marshal's Chain Girdle
		i(12105),	-- Pridemail Leggings
		i(21612),	-- Wormscale Stompers
		i(21588),	-- Wristguards of Elemental Fury
	}),
	filter(7, {		-- Plate
		i(20281),	-- 63 Green Warrior Bracelets
		i(20282),	-- 63 Green Warrior Breastplate
		i(20284),	-- 63 Green Warrior Gauntlets
		i(20286),	-- 63 Green Warrior Helm
		i(20287),	-- 63 Green Warrior Legplates
		i(20289),	-- 63 Green Warrior Pauldrons
		i(20291),	-- 63 Green Warrior Sabatons
		i(20292),	-- 63 Green Warrior Waistband
		i(20135),	-- 90 Epic Warrior Bracelets
		i(20136),	-- 90 Epic Warrior Breastplate
		i(20137),	-- 90 Epic Warrior Gauntlets
		i(20138),	-- 90 Epic Warrior Helm
		i(20139),	-- 90 Epic Warrior Legplates
		i(20140),	-- 90 Epic Warrior Pauldrons
		i(20141),	-- 90 Epic Warrior Sabatons
		i(20142),	-- 90 Epic Warrior Waistband
		i(20239),	-- 90 Green Warrior Bracelets
		i(20240),	-- 90 Green Warrior Breastplate
		i(20242),	-- 90 Green Warrior Gauntlets
		i(20246),	-- 90 Green Warrior Helm
		i(20247),	-- 90 Green Warrior Legplates
		i(20249),	-- 90 Green Warrior Pauldrons
		i(20251),	-- 90 Green Warrior Sabatons
		i(20252),	-- 90 Green Warrior Waistband
		i(23034),	-- Nax PH Crit Plate Shoulders
		i(16160),	-- Test Arcane Res Shoulders Plate
		i(16162),	-- Test Frost Res Shoulders Plate
		i(16172),	-- Test Nature Res Hands Plate
		i(16161),	-- Test Shadow Res Hands Plate
		i(12106),	-- Boulderskin Breastplate
		i(16546),	-- General's Plate Armguards
		i(16547),	-- General's Plate Girdle
		i(16412),	-- Knight-Captain's Lamellar Armsplints
		i(16411),	-- Knight-Captain's Lamellar Cinch
		i(16469),	-- Marshal's Lamellar Armguards
		i(16470),	-- Marshal's Lamellar Belt
		i(16481),	-- Marshal's Plate Bracers
		i(16482),	-- Marshal's Plate Girdle
		i(21587),	-- Wristguards of Castigation
	}),

	-- Shirt
	i(119),	-- Deprecated Rogue's Vest
	i(138),	-- Deprecated War Harness
	i(3148),	-- Deprecated Work Shirt

	-- Dagger
	i(20317),	-- 63 Green Rogue Dagger
	i(20279),	-- 90 Epic Rogue Dagger
	i(20303),	-- 90 Green Rogue Dagger
	i(21516),	-- Dagger of Spell Penetration - Fire 150 Resist (TEST)
	i(21518),	-- Dagger of Spell Penetration - Frost 150 Resist (TEST)

	-- One Handed Mace
	i(21127),	-- Ahn'Qiraj Mace PH
	i(18800),	-- TEST 1H Amberseal Keeper

	-- Two Handed Mace
	i(18881),	-- TEST Ragnaros Hammer
	i(19158),	-- TEST Sulfuras, Hand of Ragnaros

	-- Two Handed Sword
	i(22814),	-- Naxxramas Sword 2H 2 PH
	i(18882),	-- TEST Level 80 Epic

	-- Wand
	i(21124),	-- Ahn'Qiraj Wand PH
	i(20363),	-- 63 Green Frost Wand
	i(20335),	-- 90 Epic Frost Wand
	i(20350),	-- 90 Green Frost Wand

	-- Staff
	i(21125),	-- Ahn'Qiraj Staff PH
	i(19879),	-- Alex's Test Beatdown Staff
	i(21276),	-- Blessed Qiraji Naturalist Staff UNUSED
	i(20487),	-- Lok'delar, Stave of the Ancient Keepers DEP
	i(22391),	-- Monster - Staff, Lord Valthalak
	i(21101),	-- Staff of Spell Penetration - Fire (TEST)
	i(21102),	-- Staff of Spell Penetration - Frost (TEST)
	i(18801),	-- TEST 1H Benediction
	i(20372),	-- Test Staff 77 epic
	i(20370),	-- Test Staff 90 epic

	-- Polearm
	i(22817),	-- Naxxramas Polearm PH


	-- Crossbows
	i(19489),	-- 3300 Test Crossbow 63 blue

	-- Gun
	i(6255),	-- Fishing Pole (JEFFTEST)
	i(18763),	-- TEST GUN Alliance20
	i(18765),	-- TEST GUN Horde50
	i(18764),	-- TEST GUN Raid

	-- Neck
	i(16125),	-- Test Arcane Res Neck
	i(16124),	-- Test Frost Res Neck
	i(16123),	-- Test Nature Res Neck
	i(20358),	-- 63 Green Frost Neck
	i(20319),	-- 63 Green Rogue Neck
	i(20288),	-- 63 Green Warrior Neck
	i(20332),	-- 90 Epic Frost Neck
	i(20275),	-- 90 Epic Rogue Neck
	i(20143),	-- 90 Epic Warrior Neck
	i(20345),	-- 90 Green Frost Neck
	i(20305),	-- 90 Green Rogue Neck
	i(20248),	-- 90 Green Warrior Neck

	filter(52, {	-- Finger
		i(20359),	-- 63 Green Frost Ring
		i(20321),	-- 63 Green Rogue Ring
		i(20290),	-- 63 Green Warrior Ring
		i(20333),	-- 90 Epic Frost Ring
		i(20277),	-- 90 Epic Rogue Ring
		i(20144),	-- 90 Epic Warrior Ring
		i(20346),	-- 90 Green Frost Ring
		i(20307),	-- 90 Green Rogue Ring
		i(20250),	-- 90 Green Warrior Ring
		i(24358),	-- QATest +1000 Spell Dmg Ring
		i(18968),	-- Ring of Critical Testing
		i(18970),	-- Ring of Critical Testing 2
		i(18971),	-- Ring of Critical Testing 3
		i(18982),	-- Ring of Critical Testing 4
		i(6724),	-- Stone of Backus
		i(6728),	-- Stone of Brownell
		i(6708),	-- Stone of Goodman
		i(6711),	-- Stone of Kurtz
		i(6707),	-- Stone of Lapidis
		i(6698),	-- Stone of Pierce
		i(20445),	-- Test Defense Ring +120
		i(20446),	-- Test Defense Ring +80
		i(16067),	-- Test Fire Res Ring
		i(17000),	-- Band of the Wraith
		i(4988),	-- Burning Obsidian Band
		i(17108),	-- Mark of Deflection
		-- NOTE: A number of these have new item ids and the old versions were removed.
		i(7426),	-- Cerulean Ring
		i(5000),	-- Coral Band
		i(5010),	-- Inscribed Gold Ring
		i(7497),	-- Ivory Band
		i(7547),	-- Onyx Ring
		i(5008),	-- Quicksilver Ring
		i(7466),	-- Vermilion Band
	}),

	-- Quest
	i(17122),	-- ALEX BUG TEST ITEM
	i(11666),	-- PH Greater Arcane Amalgamation (AC/FR)
	i(11671),	-- PH Greater Arcane Amalgamation (AGI/FR)
	i(11664),	-- PH Greater Arcane Amalgamation (HP/FR)
	i(11673),	-- PH Greater Arcane Amalgamation (INT/FR)
	i(11663),	-- PH Greater Arcane Amalgamation (MANA/FR)
	i(11672),	-- PH Greater Arcane Amalgamation (SPI/FR)
	i(11670),	-- PH Greater Arcane Amalgamation (STA/FR)
	i(11667),	-- PH Greater Arcane Amalgamation (STR/FR)
	i(11683),	-- PH Legendary Arcane Amalgamation (Caster)
	i(11676),	-- PH Legendary Arcane Amalgamation (Melee)
	i(18566),	-- Essence of the Firelord DEPRECATED
	i(18589),	-- Dormant Wind Kissed Blade DEPRECATED
	i(18565),	-- Vessel of Rebirth DEPRECATED
	i(17347),	-- Syndicate Man Tracker (MURP)
	i(18593),	-- Thorium Brotherhood Contract (OLD)
	i(18157),	-- Black Moro'gai Gem
	i(18155),	-- Blue Moro'gai Gem
	i(18158),	-- Gold Moro'gai Gem
	i(18156),	-- Green Moro'gai Gem
	i(18153),	-- Red Moro'gai Gem
	i(18159),	-- White Moro'gai Gem


	-- Recipe
	i(5688),	-- Test Language Item

	-- Bind Type 1
	-- Invalid
	i(18595),	-- Blood Opal
	i(23794),	-- Permanent Sheen of Zanza
	i(23795),	-- Permanent Spirit of Zanza
	i(23796),	-- Permanent Swiftness of Zanza

	-- Recipe
	i(1164),	-- Sam's Tome


	-- Bind Type 2
	-- Invalid
	i(20583),	-- Sturdy Female Dwarf Mask
	i(20584),	-- Sturdy Female Gnome Mask
	i(20585),	-- Sturdy Female Human Mask
	i(20586),	-- Sturdy Female Nightelf Mask
	i(20587),	-- Sturdy Female Orc Mask
	i(20588),	-- Sturdy Female Tauren Mask
	i(20589),	-- Sturdy Female Troll Mask
	i(20590),	-- Sturdy Female Undead Mask
	i(20591),	-- Sturdy Male Dwarf Mask
	i(20592),	-- Sturdy Male Gnome Mask
	i(20593),	-- Sturdy Male Human Mask
	i(20594),	-- Sturdy Male Nightelf Mask
	i(20595),	-- Sturdy Male Orc Mask
	i(20596),	-- Sturdy Male Tauren Mask
	i(20597),	-- Sturdy Male Troll Mask
	i(20598),	-- Sturdy Male Undead Mask

	-- Staff
	i(20362),	-- 63 Green Frost Staff
	i(20334),	-- 90 Epic Frost Staff
	i(20349),	-- 90 Green Frost Staff


	-- TBC
	-- #if AFTER TBC
	q(8489),	-- BETA An Intact Converter [Eversong Woods]
	q(8478),	-- BETA Choose Your Weapon [Eversong Woods]
	q(9357),	-- BETA Report to Aeldon Sunbrand [Eversong Woods]
	q(8896),	-- BETA The Dwarven Spy [Eversong Woods]
	q(9695),	-- The Sun King's Command [Bloodmyst Isle]

	-- This might be from the Spirit of Competition?
	q(12186),	-- FLAG: Winner
	q(12187),	-- FLAG: Participant

	filter(20, {	-- Daggers
		i(23650),	-- Deprecated: Keanna's Will
		i(23905),	-- Deprecated: Keanna's Will
		i(23911),	-- Deprecated: Keanna's Will
		i(23912),	-- Deprecated: Keanna's Will
		i(23916),	-- Deprecated: Keanna's Will
		i(23917),	-- Deprecated: Keanna's Will
	}),
	filter(1, {		-- Held in Off Hand
		i(28366),	-- Test Orb
	}),
	filter(25, {	-- One-Handed Swords
		i(23229),	-- Sword of Sockety Goodness
		i(23230),	-- Dagger of Sockety Goodness
		i(23232),	-- Huge Sword of Sockety Goodness
		i(23647),	-- Deprecated: Keanna's Will
		i(23648),	-- Deprecated: Keanna's Will
		i(23649),	-- Deprecated: Keanna's Will
		i(23651),	-- Deprecated: Keanna's Will
		i(23652),	-- Deprecated: Keanna's Will
		i(23653),	-- Deprecated: Keanna's Will
		i(23914),	-- Deprecated: Keanna's Will
		i(23918),	-- Deprecated: Keanna's Will
		i(28087),	-- Monster - Sword, Iblis, Blade of the Fallen Seraph
	}),
	filter(23, {	-- One-Handed Maces
		i(23362),	-- Hammer of the Sun
	}),
	filter(22, {	-- Two-Handed Axes
		i(25493),	-- QR 9447 2H Axe
	}),
	filter(26, {	-- Two-Handed Swords
		i(28115),	-- Monster - Obsidian Edged Blade
	}),
	filter(4, {		-- Cloth
		i(24265),	-- Old Spellstrike Hood
		i(24561),	-- 130 Test Caster Belt
		i(24562),	-- 130 Test Caster Shoulder
		i(24563),	-- 130 Test Caster Helm
		i(24564),	-- 130 Test Caster Robe
		i(24565),	-- 130 Test Caster Boots
		i(24572),	-- 130 Test Caster Bracer
		i(25800),	-- 130 Test Caster Legs
		i(27530),	-- Test Epic Belt
	}),
	filter(5, {		-- Leather
		i(25547),	-- QR XXXX Druid Shoulders
		i(25571),	-- QR 9863 Druid Helm
		i(25582),	-- QR 9867 Druid Moonkin Belt
	}),
	filter(6, {		-- Mail
		i(25551),	-- QR XXXX Hunter Legs
		i(25572),	-- QR 9863 Shaman Legs
		i(25581),	-- QR 9867 Hunter Gloves
	}),
	filter(7, {		-- Plate
		i(23363),	-- Titanic Breastplate
		i(24137),	-- PH Plate Ramparts Reward
		i(24526),	-- 130 Epic Warrior Bracelets
		i(24527),	-- 130 Epic Warrior Breastplate
		i(24529),	-- 130 Epic Warrior Gauntlets
		i(24531),	-- 130 Epic Warrior Helm
		i(24532),	-- 130 Epic Warrior Legplates
		i(24534),	-- 130 Epic Warrior Pauldrons
		i(24536),	-- 130 Epic Warrior Sabatons
		i(24537),	-- 130 Epic Warrior Waistband
		i(24548),	-- zzOLDbrokenitem
		i(25573),	-- QR 9863 Warrior Chest
		i(25580),	-- QR 9867 Warrior Legs
		i(25626),	-- QR 9922 Paladin Bracer
	}),
	-- #if BEFORE WRATH
	filter(50, {	-- Miscellaneous
		i(37892),	-- [ph] Green Brewfest Stein
		i(37893),	-- [ph] Filled Green Brewfest Stein
		i(37894),	-- [ph] Filled Green Brewfest Stein
		i(37895),	-- [PH[ Filled Green Brewfest Stein
		i(37896),	-- [PH] Filled Green Brewfest Stein
		i(37897),	-- [ph] Filled Green Brewfest Stein
	}),
	-- #endif
	filter(53, {	-- Trinkets
		i(25798),	-- 130 Epic Warrior Trinket
		i(25801),	-- 130 Test Caster Trinket
	}),
	-- #endif

	-- Classic List
	filter(4, {	-- Cloth
		i(20351),	-- 63 Green Frost Belt
		i(20352),	-- 63 Green Frost Bindings
		i(20355),	-- 63 Green Frost Gloves
		i(20324),	-- 90 Epic Frost Belt
		i(20325),	-- 90 Epic Frost Bindings
		i(20328),	-- 90 Epic Frost Gloves
		i(20338),	-- 90 Green Frost Belt
		i(20339),	-- 90 Green Frost Bindings
		i(20342),	-- 90 Green Frost Gloves
	}),
	filter(5, {	-- Leather
		i(20311),	-- 63 Green Rogue Belt
		i(20314),	-- 63 Green Rogue Bracers
		i(20267),	-- 90 Epic Rogue Belt
		i(20269),	-- 90 Epic Rogue Bracers
		i(20297),	-- 90 Green Rogue Belt
		i(20300),	-- 90 Green Rogue Bracers
	}),
	filter(8, {	-- Shield
		i(14609),	-- Deprecated Ceremonial Buckler
		i(9888),	-- Deprecated Elven Protector
		i(15888),	-- Deprecated Glorious Shield
		i(15889),	-- Deprecated Jademir Scale Shield
		i(14597),	-- Deprecated Warden's Buckler
	}),
	filter(10, {	-- Shirt
		i(105),	-- Deprecated Dwarven Recruit's Shirt
		i(101),	-- Deprecated Dwarven Squire's Shirt
		i(133),	-- Deprecated Orc Acolyte's Shirt
		i(123),	-- Deprecated Orc Apprentice Shirt
		i(964),	-- Deprecated Red Linen Shirt
		i(3149),	-- Deprecated Ripped Vest
		i(134),	-- Deprecated Stiff Leather Shirt
		i(3147),	-- Deprecated Tattered Shirt
		i(151),	-- Deprecated Tauren Apprentice Shirt
		i(157),	-- Deprecated Tauren Recruit's Shirt
		i(5090),	-- Deprecated Torn Shirt
		i(93),	-- OLDDwarven Initiate's Shirt
		i(89),	-- OLDThick Trapper's Shirt
		i(5091),	-- test Eric Shirt
	}),
	filter(20, {	-- Dagger
		i(19810),	-- 1000 Test dagger 60 blue
		i(19313),	-- 1300 Test Dagger 63 blue
		i(19622),	-- 1800 Test Dagger 63 blue
		i(19314),	-- 2000 Test Dagger 63 blue
	}),
	filter(22, {	-- Two Handed Axe
		i(19185),	-- 2100 Test 2h Axe 63 blue
		i(19188),	-- 2200 Test 2h Axe 63 blue
		i(19189),	-- 2300 Test 2h Axe 63 blue
		i(19190),	-- 2400 Test 2h Axe 63 blue
		i(19809),	-- 2500 Test 2h Axe 60 blue
		i(19811),	-- 2500 Test 2h Axe 60 blue (bear)
		i(19191),	-- 2500 Test 2h Axe 63 blue
		i(19192),	-- 2600 Test 2h Axe 63 blue
		i(19186),	-- 2700 Test 2h Axe 63 blue
		i(19193),	-- 2800 Test 2h Axe 63 blue
		i(19194),	-- 2900 Test 2h Axe 63 blue
		i(19195),	-- 3000 Test 2h Axe 63 blue
		i(19196),	-- 3100 Test 2h Axe 63 blue
		i(19187),	-- 3200 Test 2h Axe 63 blue
		i(19197),	-- 3300 Test 2h Axe 63 blue
		i(19198),	-- 3400 Test 2h Axe 63 blue
		i(19199),	-- 3500 Test 2h Axe 63 blue
		i(19455),	-- 3500 Test 2h Axe 70 purple
		i(19662),	-- 3500 Test 2h Axe 80 purple
		i(19200),	-- 3600 Test 2h Axe 63 blue
		i(19201),	-- 3700 Test 2h Axe 63 blue
		i(19184),	-- 3800 Test 2h Axe 63 blue
		i(20280),	-- 63 Green Warrior Axe
		i(20149),	-- 90 Epic Warrior Axe
		i(20238),	-- 90 Green Warrior Axe
	}),
	filter(23, {	-- One Handed Mace
		i(2189),	-- Tigole's Boomstick (TEST)
	}),
	filter(25, {	-- One Handed Sword
		i(19427),	-- 1500 Test sword 63 blue
		i(19457),	-- 1500 Test sword 80 purple
		i(21782),	-- 2000 Test sword 63 blue
		i(19502),	-- 2200 Test sword 63 blue
		i(19504),	-- 2200 Test sword 70 purple
		i(19503),	-- 2200 Test sword 80 purple
		i(19428),	-- 2900 Test sword 63 blue
		i(19456),	-- 2900 Test sword 80 purple
		i(3933),	-- Deprecated Moon Glaive
	}),
	filter(26, {	-- Two Handed Sword
		i(3687),	-- Deprecated Unholy Avenger
		i(3934),	-- Deprecated Warden Blade
	}),
	filter(31, {	-- Gun
		i(20285),	-- 63 Green Warrior Gun
		i(20146),	-- 90 Epic Warrior Gun
		i(20245),	-- 90 Green Warrior Gun
	}),
	filter(32, {	-- Bow
		i(4763),	-- Blackwood Recurve Bow
	}),
	filter(52, {	-- Ring
		i(12947),	-- Alex's Ring of Audacity
		i(5828),	-- Ring of Uber Resists (TEST)
	}),

	-- #if AFTER TBC
	filter(1, {	-- Held in Off-hand
		i(26560),	-- 59 TEST Green Off Hand
		i(26561),	-- 60 TEST Green Off Hand
		i(26562),	-- 61 TEST Green Off Hand
		i(26563),	-- 62 TEST Green Off Hand
		i(26564),	-- 63 TEST Green Off Hand
		i(26565),	-- 64 TEST Green Off Hand
		i(26566),	-- 65 TEST Green Off Hand
		i(26567),	-- 66 TEST Green Off Hand
		i(26568),	-- 67 TEST Green Off Hand
		i(26569),	-- 68 TEST Green Off Hand
		i(26570),	-- 69 TEST Green Off Hand
		i(26571),	-- 70 TEST Green Off Hand
		i(26572),	-- 71 TEST Green Off Hand
		i(26573),	-- 72 TEST Green Off Hand
	}),
	filter(2, {	-- Cosmetic [TODO: Move to Hallow's End?]
		i(34005),	-- Sturdy Female Blood Elf Mask
		i(34004),	-- Sturdy Female Draenei Mask
		i(34006),	-- Sturdy Male Blood Elf Mask
		i(34007),	-- Sturdy Male Draenei Mask
	}),
	filter(3, {	-- Cloak
		i(26504),	-- 59 TEST Green Cloth Cloak
		i(27190),	-- 59 TEST Green Druid/Warrior Cloak
		i(27274),	-- 59 TEST Green Paladin Cloak
		i(27148),	-- 59 TEST Green Rogue/Hunter Cloak
		i(27232),	-- 59 TEST Green Shaman Cloak
		i(26505),	-- 60 TEST Green Cloth Cloak
		i(27191),	-- 60 TEST Green Druid/Warrior Cloak
		i(27275),	-- 60 TEST Green Paladin Cloak
		i(27149),	-- 60 TEST Green Rogue/Hunter Cloak
		i(27233),	-- 60 TEST Green Shaman Cloak
		i(26506),	-- 61 TEST Green Cloth Cloak
		i(27192),	-- 61 TEST Green Druid/Warrior Cloak
		i(27276),	-- 61 TEST Green Paladin Cloak
		i(27150),	-- 61 TEST Green Rogue/Hunter Cloak
		i(27234),	-- 61 TEST Green Shaman Cloak
		i(26507),	-- 62 TEST Green Cloth Cloak
		i(27193),	-- 62 TEST Green Druid/Warrior Cloak
		i(27277),	-- 62 TEST Green Paladin Cloak
		i(27151),	-- 62 TEST Green Rogue/Hunter Cloak
		i(27235),	-- 62 TEST Green Shaman Cloak
		i(26508),	-- 63 TEST Green Cloth Cloak
		i(27194),	-- 63 TEST Green Druid/Warrior Cloak
		i(27278),	-- 63 TEST Green Paladin Cloak
		i(27152),	-- 63 TEST Green Rogue/Hunter Cloak
		i(27236),	-- 63 TEST Green Shaman Cloak
		i(26509),	-- 64 TEST Green Cloth Cloak
		i(27195),	-- 64 TEST Green Druid/Warrior Cloak
		i(27279),	-- 64 TEST Green Paladin Cloak
		i(27153),	-- 64 TEST Green Rogue/Hunter Cloak
		i(27237),	-- 64 TEST Green Shaman Cloak
		i(26510),	-- 65 TEST Green Cloth Cloak
		i(27196),	-- 65 TEST Green Druid/Warrior Cloak
		i(27280),	-- 65 TEST Green Paladin Cloak
		i(27154),	-- 65 TEST Green Rogue/Hunter Cloak
		i(27238),	-- 65 TEST Green Shaman Cloak
		i(26511),	-- 66 TEST Green Cloth Cloak
		i(27197),	-- 66 TEST Green Druid/Warrior Cloak
		i(27281),	-- 66 TEST Green Paladin Cloak
		i(27155),	-- 66 TEST Green Rogue/Hunter Cloak
		i(27239),	-- 66 TEST Green Shaman Cloak
		i(26512),	-- 67 TEST Green Cloth Cloak
		i(27198),	-- 67 TEST Green Druid/Warrior Cloak
		i(27282),	-- 67 TEST Green Paladin Cloak
		i(27156),	-- 67 TEST Green Rogue/Hunter Cloak
		i(27240),	-- 67 TEST Green Shaman Cloak
		i(26513),	-- 68 TEST Green Cloth Cloak
		i(27199),	-- 68 TEST Green Druid/Warrior Cloak
		i(27283),	-- 68 TEST Green Paladin Cloak
		i(27157),	-- 68 TEST Green Rogue/Hunter Cloak
		i(27241),	-- 68 TEST Green Shaman Cloak
		i(26514),	-- 69 TEST Green Cloth Cloak
		i(27200),	-- 69 TEST Green Druid/Warrior Cloak
		i(27284),	-- 69 TEST Green Paladin Cloak
		i(27158),	-- 69 TEST Green Rogue/Hunter Cloak
		i(27242),	-- 69 TEST Green Shaman Cloak
		i(26515),	-- 70 TEST Green Cloth Cloak
		i(27201),	-- 70 TEST Green Druid/Warrior Cloak
		i(27285),	-- 70 TEST Green Paladin Cloak
		i(27159),	-- 70 TEST Green Rogue/Hunter Cloak
		i(27243),	-- 70 TEST Green Shaman Cloak
		i(26516),	-- 71 TEST Green Cloth Cloak
		i(27202),	-- 71 TEST Green Druid/Warrior Cloak
		i(27286),	-- 71 TEST Green Paladin Cloak
		i(27160),	-- 71 TEST Green Rogue/Hunter Cloak
		i(27244),	-- 71 TEST Green Shaman Cloak
		i(26517),	-- 72 TEST Green Cloth Cloak
		i(27203),	-- 72 TEST Green Druid/Warrior Cloak
		i(27287),	-- 72 TEST Green Paladin Cloak
		i(27161),	-- 72 TEST Green Rogue/Hunter Cloak
		i(27245),	-- 72 TEST Green Shaman Cloak
		i(27973),	-- TEST 130 Epic Paladin DPS Cloak
		i(28020),	-- TEST 130 Epic Ret Paladin DPS Cloak
		i(27960),	-- TEST 60 Blue Paladin DPS Cloak
		i(28007),	-- TEST 60 Blue Ret Paladin DPS Cloak
	}),
	filter(4, {	-- Cloth
		i(24566),	-- 130 Test Caster Gloves
		i(26056),	-- 59 TEST Green Cloth Belt
		i(26057),	-- 59 TEST Green Cloth Boot
		i(26058),	-- 59 TEST Green Cloth Chest
		i(26059),	-- 59 TEST Green Cloth Hand
		i(26060),	-- 59 TEST Green Cloth Head
		i(26061),	-- 59 TEST Green Cloth Legs
		i(26062),	-- 59 TEST Green Cloth Shoulder
		i(26063),	-- 59 TEST Green Cloth Wrist
		i(26064),	-- 60 TEST Green Cloth Belt
		i(26065),	-- 60 TEST Green Cloth Boot
		i(26066),	-- 60 TEST Green Cloth Chest
		i(26067),	-- 60 TEST Green Cloth Hand
		i(26068),	-- 60 TEST Green Cloth Head
		i(26069),	-- 60 TEST Green Cloth Legs
		i(26070),	-- 60 TEST Green Cloth Shoulder
		i(26071),	-- 60 TEST Green Cloth Wrist
		i(26072),	-- 61 TEST Green Cloth Belt
		i(26073),	-- 61 TEST Green Cloth Boot
		i(26074),	-- 61 TEST Green Cloth Chest
		i(26075),	-- 61 TEST Green Cloth Hand
		i(26076),	-- 61 TEST Green Cloth Head
		i(26077),	-- 61 TEST Green Cloth Legs
		i(26078),	-- 61 TEST Green Cloth Shoulder
		i(26079),	-- 61 TEST Green Cloth Wrist
		i(26080),	-- 62 TEST Green Cloth Belt
		i(26081),	-- 62 TEST Green Cloth Boot
		i(26082),	-- 62 TEST Green Cloth Chest
		i(26083),	-- 62 TEST Green Cloth Hand
		i(26084),	-- 62 TEST Green Cloth Head
		i(26085),	-- 62 TEST Green Cloth Legs
		i(26086),	-- 62 TEST Green Cloth Shoulder
		i(26087),	-- 62 TEST Green Cloth Wrist
		i(21045),	-- 63 Blue Fire Belt
		i(21046),	-- 63 Blue Fire Bindings
		i(21049),	-- 63 Blue Fire Gloves
		i(21073),	-- 63 Blue Shadow Belt
		i(21074),	-- 63 Blue Shadow Bindings
		i(21077),	-- 63 Blue Shadow Gloves
		i(26088),	-- 63 TEST Green Cloth Belt
		i(26089),	-- 63 TEST Green Cloth Boot
		i(26090),	-- 63 TEST Green Cloth Chest
		i(26091),	-- 63 TEST Green Cloth Hand
		i(26092),	-- 63 TEST Green Cloth Head
		i(26093),	-- 63 TEST Green Cloth Legs
		i(26094),	-- 63 TEST Green Cloth Shoulder
		i(26095),	-- 63 TEST Green Cloth Wrist
		i(26096),	-- 64 TEST Green Cloth Belt
		i(26097),	-- 64 TEST Green Cloth Boot
		i(26098),	-- 64 TEST Green Cloth Chest
		i(26099),	-- 64 TEST Green Cloth Hand
		i(26100),	-- 64 TEST Green Cloth Head
		i(26101),	-- 64 TEST Green Cloth Legs
		i(26102),	-- 64 TEST Green Cloth Shoulder
		i(26103),	-- 64 TEST Green Cloth Wrist
		i(26104),	-- 65 TEST Green Cloth Belt
		i(26105),	-- 65 TEST Green Cloth Boot
		i(26106),	-- 65 TEST Green Cloth Chest
		i(26107),	-- 65 TEST Green Cloth Hand
		i(26108),	-- 65 TEST Green Cloth Head
		i(26109),	-- 65 TEST Green Cloth Legs
		i(26110),	-- 65 TEST Green Cloth Shoulder
		i(26111),	-- 65 TEST Green Cloth Wrist
		i(21058),	-- 66 Epic Fire Belt
		i(21059),	-- 66 Epic Fire Bindings
		i(21062),	-- 66 Epic Fire Gloves
		i(21086),	-- 66 Epic Shadow Belt
		i(21087),	-- 66 Epic Shadow Bindings
		i(21090),	-- 66 Epic Shadow Gloves
		i(26112),	-- 66 TEST Green Cloth Belt
		i(26113),	-- 66 TEST Green Cloth Boot
		i(26114),	-- 66 TEST Green Cloth Chest
		i(26115),	-- 66 TEST Green Cloth Hand
		i(26116),	-- 66 TEST Green Cloth Head
		i(26117),	-- 66 TEST Green Cloth Legs
		i(26118),	-- 66 TEST Green Cloth Shoulder
		i(26119),	-- 66 TEST Green Cloth Wrist
		i(26120),	-- 67 TEST Green Cloth Belt
		i(26121),	-- 67 TEST Green Cloth Boot
		i(26122),	-- 67 TEST Green Cloth Chest
		i(26123),	-- 67 TEST Green Cloth Hand
		i(26124),	-- 67 TEST Green Cloth Head
		i(26125),	-- 67 TEST Green Cloth Legs
		i(26126),	-- 67 TEST Green Cloth Shoulder
		i(26127),	-- 67 TEST Green Cloth Wrist
		i(26128),	-- 68 TEST Green Cloth Belt
		i(26129),	-- 68 TEST Green Cloth Boot
		i(26130),	-- 68 TEST Green Cloth Chest
		i(26131),	-- 68 TEST Green Cloth Hand
		i(26132),	-- 68 TEST Green Cloth Head
		i(26133),	-- 68 TEST Green Cloth Legs
		i(26134),	-- 68 TEST Green Cloth Shoulder
		i(26135),	-- 68 TEST Green Cloth Wrist
		i(26136),	-- 69 TEST Green Cloth Belt
		i(26137),	-- 69 TEST Green Cloth Boot
		i(26138),	-- 69 TEST Green Cloth Chest
		i(26139),	-- 69 TEST Green Cloth Hand
		i(26140),	-- 69 TEST Green Cloth Head
		i(26141),	-- 69 TEST Green Cloth Legs
		i(26142),	-- 69 TEST Green Cloth Shoulder
		i(26143),	-- 69 TEST Green Cloth Wrist
		i(26144),	-- 70 TEST Green Cloth Belt
		i(26145),	-- 70 TEST Green Cloth Boot
		i(26146),	-- 70 TEST Green Cloth Chest
		i(26147),	-- 70 TEST Green Cloth Hand
		i(26148),	-- 70 TEST Green Cloth Head
		i(26149),	-- 70 TEST Green Cloth Legs
		i(26150),	-- 70 TEST Green Cloth Shoulder
		i(26151),	-- 70 TEST Green Cloth Wrist
		i(26152),	-- 71 TEST Green Cloth Belt
		i(26153),	-- 71 TEST Green Cloth Boot
		i(26154),	-- 71 TEST Green Cloth Chest
		i(26155),	-- 71 TEST Green Cloth Hand
		i(26156),	-- 71 TEST Green Cloth Head
		i(26157),	-- 71 TEST Green Cloth Legs
		i(26158),	-- 71 TEST Green Cloth Shoulder
		i(26159),	-- 71 TEST Green Cloth Wrist
		i(26160),	-- 72 TEST Green Cloth Belt
		i(26161),	-- 72 TEST Green Cloth Boot
		i(26162),	-- 72 TEST Green Cloth Chest
		i(26163),	-- 72 TEST Green Cloth Hand
		i(26164),	-- 72 TEST Green Cloth Head
		i(26165),	-- 72 TEST Green Cloth Legs
		i(26166),	-- 72 TEST Green Cloth Shoulder
		i(26167),	-- 72 TEST Green Cloth Wrist
	}),
	filter(5, {	-- Leather
		i(26812),	-- 59 TEST Green Druid Belt
		i(26813),	-- 59 TEST Green Druid Boot
		i(26814),	-- 59 TEST Green Druid Chest
		i(26815),	-- 59 TEST Green Druid Hand
		i(26816),	-- 59 TEST Green Druid Head
		i(26817),	-- 59 TEST Green Druid Legs
		i(26818),	-- 59 TEST Green Druid Shoulder
		i(26819),	-- 59 TEST Green Druid Wrist
		i(26168),	-- 59 TEST Green Rogue Belt
		i(26169),	-- 59 TEST Green Rogue Boot
		i(26170),	-- 59 TEST Green Rogue Chest
		i(26171),	-- 59 TEST Green Rogue Hand
		i(26172),	-- 59 TEST Green Rogue Head
		i(26173),	-- 59 TEST Green Rogue Legs
		i(26174),	-- 59 TEST Green Rogue Shoulder
		i(26175),	-- 59 TEST Green Rogue Wrist
		i(26820),	-- 60 TEST Green Druid Belt
		i(26821),	-- 60 TEST Green Druid Boot
		i(26822),	-- 60 TEST Green Druid Chest
		i(26823),	-- 60 TEST Green Druid Hand
		i(26824),	-- 60 TEST Green Druid Head
		i(26825),	-- 60 TEST Green Druid Legs
		i(26826),	-- 60 TEST Green Druid Shoulder
		i(26827),	-- 60 TEST Green Druid Wrist
		i(26176),	-- 60 TEST Green Rogue Belt
		i(26177),	-- 60 TEST Green Rogue Boot
		i(26178),	-- 60 TEST Green Rogue Chest
		i(26179),	-- 60 TEST Green Rogue Hand
		i(26180),	-- 60 TEST Green Rogue Head
		i(26181),	-- 60 TEST Green Rogue Legs
		i(26182),	-- 60 TEST Green Rogue Shoulder
		i(26183),	-- 60 TEST Green Rogue Wrist
		i(26828),	-- 61 TEST Green Druid Belt
		i(26829),	-- 61 TEST Green Druid Boot
		i(26830),	-- 61 TEST Green Druid Chest
		i(26831),	-- 61 TEST Green Druid Hand
		i(26832),	-- 61 TEST Green Druid Head
		i(26833),	-- 61 TEST Green Druid Legs
		i(26834),	-- 61 TEST Green Druid Shoulder
		i(26835),	-- 61 TEST Green Druid Wrist
		i(26184),	-- 61 TEST Green Rogue Belt
		i(26185),	-- 61 TEST Green Rogue Boot
		i(26186),	-- 61 TEST Green Rogue Chest
		i(26187),	-- 61 TEST Green Rogue Hand
		i(26188),	-- 61 TEST Green Rogue Head
		i(26189),	-- 61 TEST Green Rogue Legs
		i(26190),	-- 61 TEST Green Rogue Shoulder
		i(26191),	-- 61 TEST Green Rogue Wrist
		i(26836),	-- 62 TEST Green Druid Belt
		i(26837),	-- 62 TEST Green Druid Boot
		i(26838),	-- 62 TEST Green Druid Chest
		i(26839),	-- 62 TEST Green Druid Hand
		i(26840),	-- 62 TEST Green Druid Head
		i(26841),	-- 62 TEST Green Druid Legs
		i(26842),	-- 62 TEST Green Druid Shoulder
		i(26843),	-- 62 TEST Green Druid Wrist
		i(26192),	-- 62 TEST Green Rogue Belt
		i(26193),	-- 62 TEST Green Rogue Boot
		i(26194),	-- 62 TEST Green Rogue Chest
		i(26195),	-- 62 TEST Green Rogue Hand
		i(26196),	-- 62 TEST Green Rogue Head
		i(26197),	-- 62 TEST Green Rogue Legs
		i(26198),	-- 62 TEST Green Rogue Shoulder
		i(26199),	-- 62 TEST Green Rogue Wrist
		i(26844),	-- 63 TEST Green Druid Belt
		i(26845),	-- 63 TEST Green Druid Boot
		i(26846),	-- 63 TEST Green Druid Chest
		i(26847),	-- 63 TEST Green Druid Hand
		i(26848),	-- 63 TEST Green Druid Head
		i(26849),	-- 63 TEST Green Druid Legs
		i(26850),	-- 63 TEST Green Druid Shoulder
		i(26851),	-- 63 TEST Green Druid Wrist
		i(26200),	-- 63 TEST Green Rogue Belt
		i(26201),	-- 63 TEST Green Rogue Boot
		i(26202),	-- 63 TEST Green Rogue Chest
		i(26203),	-- 63 TEST Green Rogue Hand
		i(26204),	-- 63 TEST Green Rogue Head
		i(26205),	-- 63 TEST Green Rogue Legs
		i(26206),	-- 63 TEST Green Rogue Shoulder
		i(26207),	-- 63 TEST Green Rogue Wrist
		i(26852),	-- 64 TEST Green Druid Belt
		i(26853),	-- 64 TEST Green Druid Boot
		i(26854),	-- 64 TEST Green Druid Chest
		i(26855),	-- 64 TEST Green Druid Hand
		i(26856),	-- 64 TEST Green Druid Head
		i(26857),	-- 64 TEST Green Druid Legs
		i(26858),	-- 64 TEST Green Druid Shoulder
		i(26859),	-- 64 TEST Green Druid Wrist
		i(26208),	-- 64 TEST Green Rogue Belt
		i(26209),	-- 64 TEST Green Rogue Boot
		i(26210),	-- 64 TEST Green Rogue Chest
		i(26211),	-- 64 TEST Green Rogue Hand
		i(26212),	-- 64 TEST Green Rogue Head
		i(26213),	-- 64 TEST Green Rogue Legs
		i(26214),	-- 64 TEST Green Rogue Shoulder
		i(26215),	-- 64 TEST Green Rogue Wrist
		i(26860),	-- 65 TEST Green Druid Belt
		i(26861),	-- 65 TEST Green Druid Boot
		i(26862),	-- 65 TEST Green Druid Chest
		i(26863),	-- 65 TEST Green Druid Hand
		i(26864),	-- 65 TEST Green Druid Head
		i(26865),	-- 65 TEST Green Druid Legs
		i(26866),	-- 65 TEST Green Druid Shoulder
		i(26867),	-- 65 TEST Green Druid Wrist
		i(26216),	-- 65 TEST Green Rogue Belt
		i(26217),	-- 65 TEST Green Rogue Boot
		i(26218),	-- 65 TEST Green Rogue Chest
		i(26219),	-- 65 TEST Green Rogue Hand
		i(26220),	-- 65 TEST Green Rogue Head
		i(26221),	-- 65 TEST Green Rogue Legs
		i(26222),	-- 65 TEST Green Rogue Shoulder
		i(26223),	-- 65 TEST Green Rogue Wrist
		i(26868),	-- 66 TEST Green Druid Belt
		i(26869),	-- 66 TEST Green Druid Boot
		i(26870),	-- 66 TEST Green Druid Chest
		i(26871),	-- 66 TEST Green Druid Hand
		i(26872),	-- 66 TEST Green Druid Head
		i(26873),	-- 66 TEST Green Druid Legs
		i(26874),	-- 66 TEST Green Druid Shoulder
		i(26875),	-- 66 TEST Green Druid Wrist
		i(26224),	-- 66 TEST Green Rogue Belt
		i(26225),	-- 66 TEST Green Rogue Boot
		i(26226),	-- 66 TEST Green Rogue Chest
		i(26227),	-- 66 TEST Green Rogue Hand
		i(26228),	-- 66 TEST Green Rogue Head
		i(26229),	-- 66 TEST Green Rogue Legs
		i(26230),	-- 66 TEST Green Rogue Shoulder
		i(26231),	-- 66 TEST Green Rogue Wrist
		i(26876),	-- 67 TEST Green Druid Belt
		i(26877),	-- 67 TEST Green Druid Boot
		i(26878),	-- 67 TEST Green Druid Chest
		i(26879),	-- 67 TEST Green Druid Hand
		i(26880),	-- 67 TEST Green Druid Head
		i(26881),	-- 67 TEST Green Druid Legs
		i(26882),	-- 67 TEST Green Druid Shoulder
		i(26883),	-- 67 TEST Green Druid Wrist
		i(26232),	-- 67 TEST Green Rogue Belt
		i(26233),	-- 67 TEST Green Rogue Boot
		i(26234),	-- 67 TEST Green Rogue Chest
		i(26235),	-- 67 TEST Green Rogue Hand
		i(26236),	-- 67 TEST Green Rogue Head
		i(26237),	-- 67 TEST Green Rogue Legs
		i(26238),	-- 67 TEST Green Rogue Shoulder
		i(26239),	-- 67 TEST Green Rogue Wrist
		i(26884),	-- 68 TEST Green Druid Belt
		i(26885),	-- 68 TEST Green Druid Boot
		i(26886),	-- 68 TEST Green Druid Chest
		i(26887),	-- 68 TEST Green Druid Hand
		i(26888),	-- 68 TEST Green Druid Head
		i(26889),	-- 68 TEST Green Druid Legs
		i(26890),	-- 68 TEST Green Druid Shoulder
		i(26891),	-- 68 TEST Green Druid Wrist
		i(26240),	-- 68 TEST Green Rogue Belt
		i(26241),	-- 68 TEST Green Rogue Boot
		i(26242),	-- 68 TEST Green Rogue Chest
		i(26243),	-- 68 TEST Green Rogue Hand
		i(26244),	-- 68 TEST Green Rogue Head
		i(26245),	-- 68 TEST Green Rogue Legs
		i(26246),	-- 68 TEST Green Rogue Shoulder
		i(26247),	-- 68 TEST Green Rogue Wrist
		i(26892),	-- 69 TEST Green Druid Belt
		i(26893),	-- 69 TEST Green Druid Boot
		i(26894),	-- 69 TEST Green Druid Chest
		i(26895),	-- 69 TEST Green Druid Hand
		i(26896),	-- 69 TEST Green Druid Head
		i(26897),	-- 69 TEST Green Druid Legs
		i(26898),	-- 69 TEST Green Druid Shoulder
		i(26899),	-- 69 TEST Green Druid Wrist
		i(26248),	-- 69 TEST Green Rogue Belt
		i(26249),	-- 69 TEST Green Rogue Boot
		i(26250),	-- 69 TEST Green Rogue Chest
		i(26251),	-- 69 TEST Green Rogue Hand
		i(26252),	-- 69 TEST Green Rogue Head
		i(26253),	-- 69 TEST Green Rogue Legs
		i(26254),	-- 69 TEST Green Rogue Shoulder
		i(26255),	-- 69 TEST Green Rogue Wrist
		i(26900),	-- 70 TEST Green Druid Belt
		i(26901),	-- 70 TEST Green Druid Boot
		i(26902),	-- 70 TEST Green Druid Chest
		i(26903),	-- 70 TEST Green Druid Hand
		i(26904),	-- 70 TEST Green Druid Head
		i(26905),	-- 70 TEST Green Druid Legs
		i(26906),	-- 70 TEST Green Druid Shoulder
		i(26907),	-- 70 TEST Green Druid Wrist
		i(26256),	-- 70 TEST Green Rogue Belt
		i(26257),	-- 70 TEST Green Rogue Boot
		i(26258),	-- 70 TEST Green Rogue Chest
		i(26259),	-- 70 TEST Green Rogue Hand
		i(26260),	-- 70 TEST Green Rogue Head
		i(26261),	-- 70 TEST Green Rogue Legs
		i(26262),	-- 70 TEST Green Rogue Shoulder
		i(26263),	-- 70 TEST Green Rogue Wrist
		i(26908),	-- 71 TEST Green Druid Belt
		i(26909),	-- 71 TEST Green Druid Boot
		i(26910),	-- 71 TEST Green Druid Chest
		i(26911),	-- 71 TEST Green Druid Hand
		i(26912),	-- 71 TEST Green Druid Head
		i(26913),	-- 71 TEST Green Druid Legs
		i(26914),	-- 71 TEST Green Druid Shoulder
		i(26915),	-- 71 TEST Green Druid Wrist
		i(26264),	-- 71 TEST Green Rogue Belt
		i(26265),	-- 71 TEST Green Rogue Boot
		i(26266),	-- 71 TEST Green Rogue Chest
		i(26267),	-- 71 TEST Green Rogue Hand
		i(26268),	-- 71 TEST Green Rogue Head
		i(26269),	-- 71 TEST Green Rogue Legs
		i(26270),	-- 71 TEST Green Rogue Shoulder
		i(26271),	-- 71 TEST Green Rogue Wrist
		i(26916),	-- 72 TEST Green Druid Belt
		i(26917),	-- 72 TEST Green Druid Boot
		i(26918),	-- 72 TEST Green Druid Chest
		i(26919),	-- 72 TEST Green Druid Hand
		i(26920),	-- 72 TEST Green Druid Head
		i(26921),	-- 72 TEST Green Druid Legs
		i(26922),	-- 72 TEST Green Druid Shoulder
		i(26923),	-- 72 TEST Green Druid Wrist
		i(26272),	-- 72 TEST Green Rogue Belt
		i(26273),	-- 72 TEST Green Rogue Boot
		i(26274),	-- 72 TEST Green Rogue Chest
		i(26275),	-- 72 TEST Green Rogue Hand
		i(26276),	-- 72 TEST Green Rogue Head
		i(26277),	-- 72 TEST Green Rogue Legs
		i(26278),	-- 72 TEST Green Rogue Shoulder
		i(26279),	-- 72 TEST Green Rogue Wrist
	}),
	filter(6, {	-- Mail
		i(32970),	-- TEST Steadfast Breastplate
		i(26280),	-- 59 TEST Green Hunter Belt
		i(26281),	-- 59 TEST Green Hunter Boot
		i(26282),	-- 59 TEST Green Hunter Chest
		i(26283),	-- 59 TEST Green Hunter Hand
		i(26284),	-- 59 TEST Green Hunter Head
		i(26285),	-- 59 TEST Green Hunter Legs
		i(26286),	-- 59 TEST Green Hunter Shoulder
		i(26287),	-- 59 TEST Green Hunter Wrist
		i(26924),	-- 59 TEST Green Shaman Belt
		i(26925),	-- 59 TEST Green Shaman Boot
		i(26926),	-- 59 TEST Green Shaman Chest
		i(26927),	-- 59 TEST Green Shaman Hand
		i(26928),	-- 59 TEST Green Shaman Head
		i(26929),	-- 59 TEST Green Shaman Legs
		i(26930),	-- 59 TEST Green Shaman Shoulder
		i(26931),	-- 59 TEST Green Shaman Wrist
		i(26288),	-- 60 TEST Green Hunter Belt
		i(26289),	-- 60 TEST Green Hunter Boot
		i(26290),	-- 60 TEST Green Hunter Chest
		i(26291),	-- 60 TEST Green Hunter Hand
		i(26292),	-- 60 TEST Green Hunter Head
		i(26293),	-- 60 TEST Green Hunter Legs
		i(26294),	-- 60 TEST Green Hunter Shoulder
		i(26295),	-- 60 TEST Green Hunter Wrist
		i(26932),	-- 60 TEST Green Shaman Belt
		i(26933),	-- 60 TEST Green Shaman Boot
		i(26934),	-- 60 TEST Green Shaman Chest
		i(26935),	-- 60 TEST Green Shaman Hand
		i(26936),	-- 60 TEST Green Shaman Head
		i(26937),	-- 60 TEST Green Shaman Legs
		i(26938),	-- 60 TEST Green Shaman Shoulder
		i(26939),	-- 60 TEST Green Shaman Wrist
		i(26296),	-- 61 TEST Green Hunter Belt
		i(26297),	-- 61 TEST Green Hunter Boot
		i(26298),	-- 61 TEST Green Hunter Chest
		i(26299),	-- 61 TEST Green Hunter Hand
		i(26300),	-- 61 TEST Green Hunter Head
		i(26301),	-- 61 TEST Green Hunter Legs
		i(26302),	-- 61 TEST Green Hunter Shoulder
		i(26303),	-- 61 TEST Green Hunter Wrist
		i(26940),	-- 61 TEST Green Shaman Belt
		i(26941),	-- 61 TEST Green Shaman Boot
		i(26942),	-- 61 TEST Green Shaman Chest
		i(26943),	-- 61 TEST Green Shaman Hand
		i(26944),	-- 61 TEST Green Shaman Head
		i(26945),	-- 61 TEST Green Shaman Legs
		i(26946),	-- 61 TEST Green Shaman Shoulder
		i(26947),	-- 61 TEST Green Shaman Wrist
		i(26304),	-- 62 TEST Green Hunter Belt
		i(26305),	-- 62 TEST Green Hunter Boot
		i(26306),	-- 62 TEST Green Hunter Chest
		i(26307),	-- 62 TEST Green Hunter Hand
		i(26308),	-- 62 TEST Green Hunter Head
		i(26309),	-- 62 TEST Green Hunter Legs
		i(26310),	-- 62 TEST Green Hunter Shoulder
		i(26311),	-- 62 TEST Green Hunter Wrist
		i(26948),	-- 62 TEST Green Shaman Belt
		i(26949),	-- 62 TEST Green Shaman Boot
		i(26950),	-- 62 TEST Green Shaman Chest
		i(26951),	-- 62 TEST Green Shaman Hand
		i(26952),	-- 62 TEST Green Shaman Head
		i(26953),	-- 62 TEST Green Shaman Legs
		i(26954),	-- 62 TEST Green Shaman Shoulder
		i(26955),	-- 62 TEST Green Shaman Wrist
		i(20776),	-- 63 green shaman bindings
		i(20778),	-- 63 green shaman cord
		i(26312),	-- 63 TEST Green Hunter Belt
		i(26313),	-- 63 TEST Green Hunter Boot
		i(26314),	-- 63 TEST Green Hunter Chest
		i(26315),	-- 63 TEST Green Hunter Hand
		i(26316),	-- 63 TEST Green Hunter Head
		i(26317),	-- 63 TEST Green Hunter Legs
		i(26318),	-- 63 TEST Green Hunter Shoulder
		i(26319),	-- 63 TEST Green Hunter Wrist
		i(26956),	-- 63 TEST Green Shaman Belt
		i(26957),	-- 63 TEST Green Shaman Boot
		i(26958),	-- 63 TEST Green Shaman Chest
		i(26959),	-- 63 TEST Green Shaman Hand
		i(26960),	-- 63 TEST Green Shaman Head
		i(26961),	-- 63 TEST Green Shaman Legs
		i(26962),	-- 63 TEST Green Shaman Shoulder
		i(26963),	-- 63 TEST Green Shaman Wrist
		i(26320),	-- 64 TEST Green Hunter Belt
		i(26321),	-- 64 TEST Green Hunter Boot
		i(26322),	-- 64 TEST Green Hunter Chest
		i(26323),	-- 64 TEST Green Hunter Hand
		i(26324),	-- 64 TEST Green Hunter Head
		i(26325),	-- 64 TEST Green Hunter Legs
		i(26326),	-- 64 TEST Green Hunter Shoulder
		i(26327),	-- 64 TEST Green Hunter Wrist
		i(26964),	-- 64 TEST Green Shaman Belt
		i(26965),	-- 64 TEST Green Shaman Boot
		i(26966),	-- 64 TEST Green Shaman Chest
		i(26967),	-- 64 TEST Green Shaman Hand
		i(26968),	-- 64 TEST Green Shaman Head
		i(26969),	-- 64 TEST Green Shaman Legs
		i(26970),	-- 64 TEST Green Shaman Shoulder
		i(26971),	-- 64 TEST Green Shaman Wrist
		i(26328),	-- 65 TEST Green Hunter Belt
		i(26329),	-- 65 TEST Green Hunter Boot
		i(26330),	-- 65 TEST Green Hunter Chest
		i(26331),	-- 65 TEST Green Hunter Hand
		i(26332),	-- 65 TEST Green Hunter Head
		i(26333),	-- 65 TEST Green Hunter Legs
		i(26334),	-- 65 TEST Green Hunter Shoulder
		i(26335),	-- 65 TEST Green Hunter Wrist
		i(26972),	-- 65 TEST Green Shaman Belt
		i(26973),	-- 65 TEST Green Shaman Boot
		i(26974),	-- 65 TEST Green Shaman Chest
		i(26975),	-- 65 TEST Green Shaman Hand
		i(26976),	-- 65 TEST Green Shaman Head
		i(26977),	-- 65 TEST Green Shaman Legs
		i(26978),	-- 65 TEST Green Shaman Shoulder
		i(26979),	-- 65 TEST Green Shaman Wrist
		i(26336),	-- 66 TEST Green Hunter Belt
		i(26337),	-- 66 TEST Green Hunter Boot
		i(26338),	-- 66 TEST Green Hunter Chest
		i(26339),	-- 66 TEST Green Hunter Hand
		i(26340),	-- 66 TEST Green Hunter Head
		i(26341),	-- 66 TEST Green Hunter Legs
		i(26342),	-- 66 TEST Green Hunter Shoulder
		i(26343),	-- 66 TEST Green Hunter Wrist
		i(26980),	-- 66 TEST Green Shaman Belt
		i(26981),	-- 66 TEST Green Shaman Boot
		i(26982),	-- 66 TEST Green Shaman Chest
		i(26983),	-- 66 TEST Green Shaman Hand
		i(26984),	-- 66 TEST Green Shaman Head
		i(26985),	-- 66 TEST Green Shaman Legs
		i(26986),	-- 66 TEST Green Shaman Shoulder
		i(26987),	-- 66 TEST Green Shaman Wrist
		i(26344),	-- 67 TEST Green Hunter Belt
		i(26345),	-- 67 TEST Green Hunter Boot
		i(26346),	-- 67 TEST Green Hunter Chest
		i(26347),	-- 67 TEST Green Hunter Hand
		i(26348),	-- 67 TEST Green Hunter Head
		i(26349),	-- 67 TEST Green Hunter Legs
		i(26350),	-- 67 TEST Green Hunter Shoulder
		i(26351),	-- 67 TEST Green Hunter Wrist
		i(26988),	-- 67 TEST Green Shaman Belt
		i(26989),	-- 67 TEST Green Shaman Boot
		i(26990),	-- 67 TEST Green Shaman Chest
		i(26991),	-- 67 TEST Green Shaman Hand
		i(26992),	-- 67 TEST Green Shaman Head
		i(26993),	-- 67 TEST Green Shaman Legs
		i(26994),	-- 67 TEST Green Shaman Shoulder
		i(26995),	-- 67 TEST Green Shaman Wrist
		i(26352),	-- 68 TEST Green Hunter Belt
		i(26353),	-- 68 TEST Green Hunter Boot
		i(26354),	-- 68 TEST Green Hunter Chest
		i(26355),	-- 68 TEST Green Hunter Hand
		i(26356),	-- 68 TEST Green Hunter Head
		i(26357),	-- 68 TEST Green Hunter Legs
		i(26358),	-- 68 TEST Green Hunter Shoulder
		i(26359),	-- 68 TEST Green Hunter Wrist
		i(26996),	-- 68 TEST Green Shaman Belt
		i(26997),	-- 68 TEST Green Shaman Boot
		i(26998),	-- 68 TEST Green Shaman Chest
		i(26999),	-- 68 TEST Green Shaman Hand
		i(27000),	-- 68 TEST Green Shaman Head
		i(27001),	-- 68 TEST Green Shaman Legs
		i(27002),	-- 68 TEST Green Shaman Shoulder
		i(27003),	-- 68 TEST Green Shaman Wrist
		i(26360),	-- 69 TEST Green Hunter Belt
		i(26361),	-- 69 TEST Green Hunter Boot
		i(26362),	-- 69 TEST Green Hunter Chest
		i(26363),	-- 69 TEST Green Hunter Hand
		i(26364),	-- 69 TEST Green Hunter Head
		i(26365),	-- 69 TEST Green Hunter Legs
		i(26366),	-- 69 TEST Green Hunter Shoulder
		i(26367),	-- 69 TEST Green Hunter Wrist
		i(27004),	-- 69 TEST Green Shaman Belt
		i(27005),	-- 69 TEST Green Shaman Boot
		i(27006),	-- 69 TEST Green Shaman Chest
		i(27007),	-- 69 TEST Green Shaman Hand
		i(27008),	-- 69 TEST Green Shaman Head
		i(27009),	-- 69 TEST Green Shaman Legs
		i(27010),	-- 69 TEST Green Shaman Shoulder
		i(27011),	-- 69 TEST Green Shaman Wrist
		i(26368),	-- 70 TEST Green Hunter Belt
		i(26369),	-- 70 TEST Green Hunter Boot
		i(26370),	-- 70 TEST Green Hunter Chest
		i(26371),	-- 70 TEST Green Hunter Hand
		i(26372),	-- 70 TEST Green Hunter Head
		i(26373),	-- 70 TEST Green Hunter Legs
		i(26374),	-- 70 TEST Green Hunter Shoulder
		i(26375),	-- 70 TEST Green Hunter Wrist
		i(27012),	-- 70 TEST Green Shaman Belt
		i(27013),	-- 70 TEST Green Shaman Boot
		i(27014),	-- 70 TEST Green Shaman Chest
		i(27015),	-- 70 TEST Green Shaman Hand
		i(27016),	-- 70 TEST Green Shaman Head
		i(27017),	-- 70 TEST Green Shaman Legs
		i(27018),	-- 70 TEST Green Shaman Shoulder
		i(27019),	-- 70 TEST Green Shaman Wrist
		i(26376),	-- 71 TEST Green Hunter Belt
		i(26377),	-- 71 TEST Green Hunter Boot
		i(26378),	-- 71 TEST Green Hunter Chest
		i(26379),	-- 71 TEST Green Hunter Hand
		i(26380),	-- 71 TEST Green Hunter Head
		i(26381),	-- 71 TEST Green Hunter Legs
		i(26382),	-- 71 TEST Green Hunter Shoulder
		i(26383),	-- 71 TEST Green Hunter Wrist
		i(27020),	-- 71 TEST Green Shaman Belt
		i(27021),	-- 71 TEST Green Shaman Boot
		i(27022),	-- 71 TEST Green Shaman Chest
		i(27023),	-- 71 TEST Green Shaman Hand
		i(27024),	-- 71 TEST Green Shaman Head
		i(27025),	-- 71 TEST Green Shaman Legs
		i(27026),	-- 71 TEST Green Shaman Shoulder
		i(27027),	-- 71 TEST Green Shaman Wrist
		i(26384),	-- 72 TEST Green Hunter Belt
		i(26385),	-- 72 TEST Green Hunter Boot
		i(26386),	-- 72 TEST Green Hunter Chest
		i(26387),	-- 72 TEST Green Hunter Hand
		i(26388),	-- 72 TEST Green Hunter Head
		i(26389),	-- 72 TEST Green Hunter Legs
		i(26390),	-- 72 TEST Green Hunter Shoulder
		i(26391),	-- 72 TEST Green Hunter Wrist
		i(27028),	-- 72 TEST Green Shaman Belt
		i(27029),	-- 72 TEST Green Shaman Boot
		i(27030),	-- 72 TEST Green Shaman Chest
		i(27031),	-- 72 TEST Green Shaman Hand
		i(27032),	-- 72 TEST Green Shaman Head
		i(27033),	-- 72 TEST Green Shaman Legs
		i(27034),	-- 72 TEST Green Shaman Shoulder
		i(27035),	-- 72 TEST Green Shaman Wrist
		i(20786),	-- 90 green shaman bindings
		i(20789),	-- 90 green shaman cord
	}),
	filter(7, {	-- Plate
		i(27036),	-- 59 TEST Green Paladin Belt
		i(27037),	-- 59 TEST Green Paladin Boot
		i(27038),	-- 59 TEST Green Paladin Chest
		i(27039),	-- 59 TEST Green Paladin Hand
		i(27040),	-- 59 TEST Green Paladin Head
		i(27041),	-- 59 TEST Green Paladin Legs
		i(27042),	-- 59 TEST Green Paladin Shoulder
		i(27043),	-- 59 TEST Green Paladin Wrist
		i(26392),	-- 59 TEST Green Warrior Belt
		i(26393),	-- 59 TEST Green Warrior Boot
		i(26394),	-- 59 TEST Green Warrior Chest
		i(26395),	-- 59 TEST Green Warrior Hand
		i(26396),	-- 59 TEST Green Warrior Head
		i(26397),	-- 59 TEST Green Warrior Legs
		i(26398),	-- 59 TEST Green Warrior Shoulder
		i(26399),	-- 59 TEST Green Warrior Wrist
		i(27044),	-- 60 TEST Green Paladin Belt
		i(27045),	-- 60 TEST Green Paladin Boot
		i(27046),	-- 60 TEST Green Paladin Chest
		i(27047),	-- 60 TEST Green Paladin Hand
		i(27048),	-- 60 TEST Green Paladin Head
		i(27049),	-- 60 TEST Green Paladin Legs
		i(27050),	-- 60 TEST Green Paladin Shoulder
		i(27051),	-- 60 TEST Green Paladin Wrist
		i(26400),	-- 60 TEST Green Warrior Belt
		i(26401),	-- 60 TEST Green Warrior Boot
		i(26402),	-- 60 TEST Green Warrior Chest
		i(26403),	-- 60 TEST Green Warrior Hand
		i(26404),	-- 60 TEST Green Warrior Head
		i(26405),	-- 60 TEST Green Warrior Legs
		i(26406),	-- 60 TEST Green Warrior Shoulder
		i(26407),	-- 60 TEST Green Warrior Wrist
		i(27052),	-- 61 TEST Green Paladin Belt
		i(27053),	-- 61 TEST Green Paladin Boot
		i(27054),	-- 61 TEST Green Paladin Chest
		i(27055),	-- 61 TEST Green Paladin Hand
		i(27056),	-- 61 TEST Green Paladin Head
		i(27057),	-- 61 TEST Green Paladin Legs
		i(27058),	-- 61 TEST Green Paladin Shoulder
		i(27059),	-- 61 TEST Green Paladin Wrist
		i(26408),	-- 61 TEST Green Warrior Belt
		i(26409),	-- 61 TEST Green Warrior Boot
		i(26410),	-- 61 TEST Green Warrior Chest
		i(26411),	-- 61 TEST Green Warrior Hand
		i(26412),	-- 61 TEST Green Warrior Head
		i(26413),	-- 61 TEST Green Warrior Legs
		i(26414),	-- 61 TEST Green Warrior Shoulder
		i(26415),	-- 61 TEST Green Warrior Wrist
		i(27060),	-- 62 TEST Green Paladin Belt
		i(27061),	-- 62 TEST Green Paladin Boot
		i(27062),	-- 62 TEST Green Paladin Chest
		i(27063),	-- 62 TEST Green Paladin Hand
		i(27064),	-- 62 TEST Green Paladin Head
		i(27065),	-- 62 TEST Green Paladin Legs
		i(27066),	-- 62 TEST Green Paladin Shoulder
		i(27067),	-- 62 TEST Green Paladin Wrist
		i(26416),	-- 62 TEST Green Warrior Belt
		i(26417),	-- 62 TEST Green Warrior Boot
		i(26418),	-- 62 TEST Green Warrior Chest
		i(26419),	-- 62 TEST Green Warrior Hand
		i(26420),	-- 62 TEST Green Warrior Head
		i(26421),	-- 62 TEST Green Warrior Legs
		i(26422),	-- 62 TEST Green Warrior Shoulder
		i(26423),	-- 62 TEST Green Warrior Wrist
		i(27068),	-- 63 TEST Green Paladin Belt
		i(27069),	-- 63 TEST Green Paladin Boot
		i(27070),	-- 63 TEST Green Paladin Chest
		i(27071),	-- 63 TEST Green Paladin Hand
		i(27072),	-- 63 TEST Green Paladin Head
		i(27073),	-- 63 TEST Green Paladin Legs
		i(27074),	-- 63 TEST Green Paladin Shoulder
		i(27075),	-- 63 TEST Green Paladin Wrist
		i(26424),	-- 63 TEST Green Warrior Belt
		i(26425),	-- 63 TEST Green Warrior Boot
		i(26426),	-- 63 TEST Green Warrior Chest
		i(26427),	-- 63 TEST Green Warrior Hand
		i(26428),	-- 63 TEST Green Warrior Head
		i(26429),	-- 63 TEST Green Warrior Legs
		i(26430),	-- 63 TEST Green Warrior Shoulder
		i(26431),	-- 63 TEST Green Warrior Wrist
		i(27076),	-- 64 TEST Green Paladin Belt
		i(27077),	-- 64 TEST Green Paladin Boot
		i(27078),	-- 64 TEST Green Paladin Chest
		i(27079),	-- 64 TEST Green Paladin Hand
		i(27080),	-- 64 TEST Green Paladin Head
		i(27081),	-- 64 TEST Green Paladin Legs
		i(27082),	-- 64 TEST Green Paladin Shoulder
		i(27083),	-- 64 TEST Green Paladin Wrist
		i(26432),	-- 64 TEST Green Warrior Belt
		i(26433),	-- 64 TEST Green Warrior Boot
		i(26434),	-- 64 TEST Green Warrior Chest
		i(26435),	-- 64 TEST Green Warrior Hand
		i(26436),	-- 64 TEST Green Warrior Head
		i(26437),	-- 64 TEST Green Warrior Legs
		i(26438),	-- 64 TEST Green Warrior Shoulder
		i(26439),	-- 64 TEST Green Warrior Wrist
		i(27084),	-- 65 TEST Green Paladin Belt
		i(27085),	-- 65 TEST Green Paladin Boot
		i(27086),	-- 65 TEST Green Paladin Chest
		i(27087),	-- 65 TEST Green Paladin Hand
		i(27088),	-- 65 TEST Green Paladin Head
		i(27089),	-- 65 TEST Green Paladin Legs
		i(27090),	-- 65 TEST Green Paladin Shoulder
		i(27091),	-- 65 TEST Green Paladin Wrist
		i(26440),	-- 65 TEST Green Warrior Belt
		i(26441),	-- 65 TEST Green Warrior Boot
		i(26442),	-- 65 TEST Green Warrior Chest
		i(26443),	-- 65 TEST Green Warrior Hand
		i(26444),	-- 65 TEST Green Warrior Head
		i(26445),	-- 65 TEST Green Warrior Legs
		i(26446),	-- 65 TEST Green Warrior Shoulder
		i(26447),	-- 65 TEST Green Warrior Wrist
		i(27092),	-- 66 TEST Green Paladin Belt
		i(27093),	-- 66 TEST Green Paladin Boot
		i(27094),	-- 66 TEST Green Paladin Chest
		i(27095),	-- 66 TEST Green Paladin Hand
		i(27096),	-- 66 TEST Green Paladin Head
		i(27097),	-- 66 TEST Green Paladin Legs
		i(27098),	-- 66 TEST Green Paladin Shoulder
		i(27099),	-- 66 TEST Green Paladin Wrist
		i(26448),	-- 66 TEST Green Warrior Belt
		i(26449),	-- 66 TEST Green Warrior Boot
		i(26450),	-- 66 TEST Green Warrior Chest
		i(26451),	-- 66 TEST Green Warrior Hand
		i(26452),	-- 66 TEST Green Warrior Head
		i(26453),	-- 66 TEST Green Warrior Legs
		i(26454),	-- 66 TEST Green Warrior Shoulder
		i(26455),	-- 66 TEST Green Warrior Wrist
		i(27100),	-- 67 TEST Green Paladin Belt
		i(27101),	-- 67 TEST Green Paladin Boot
		i(27102),	-- 67 TEST Green Paladin Chest
		i(27103),	-- 67 TEST Green Paladin Hand
		i(27104),	-- 67 TEST Green Paladin Head
		i(27105),	-- 67 TEST Green Paladin Legs
		i(27106),	-- 67 TEST Green Paladin Shoulder
		i(27107),	-- 67 TEST Green Paladin Wrist
		i(26456),	-- 67 TEST Green Warrior Belt
		i(26457),	-- 67 TEST Green Warrior Boot
		i(26458),	-- 67 TEST Green Warrior Chest
		i(26459),	-- 67 TEST Green Warrior Hand
		i(26460),	-- 67 TEST Green Warrior Head
		i(26461),	-- 67 TEST Green Warrior Legs
		i(26462),	-- 67 TEST Green Warrior Shoulder
		i(26463),	-- 67 TEST Green Warrior Wrist
		i(27108),	-- 68 TEST Green Paladin Belt
		i(27109),	-- 68 TEST Green Paladin Boot
		i(27110),	-- 68 TEST Green Paladin Chest
		i(27111),	-- 68 TEST Green Paladin Hand
		i(27112),	-- 68 TEST Green Paladin Head
		i(27113),	-- 68 TEST Green Paladin Legs
		i(27114),	-- 68 TEST Green Paladin Shoulder
		i(27115),	-- 68 TEST Green Paladin Wrist
		i(26464),	-- 68 TEST Green Warrior Belt
		i(26465),	-- 68 TEST Green Warrior Boot
		i(26466),	-- 68 TEST Green Warrior Chest
		i(26467),	-- 68 TEST Green Warrior Hand
		i(26468),	-- 68 TEST Green Warrior Head
		i(26469),	-- 68 TEST Green Warrior Legs
		i(26470),	-- 68 TEST Green Warrior Shoulder
		i(26471),	-- 68 TEST Green Warrior Wrist
		i(27116),	-- 69 TEST Green Paladin Belt
		i(27117),	-- 69 TEST Green Paladin Boot
		i(27118),	-- 69 TEST Green Paladin Chest
		i(27119),	-- 69 TEST Green Paladin Hand
		i(27120),	-- 69 TEST Green Paladin Head
		i(27121),	-- 69 TEST Green Paladin Legs
		i(27122),	-- 69 TEST Green Paladin Shoulder
		i(27123),	-- 69 TEST Green Paladin Wrist
		i(26472),	-- 69 TEST Green Warrior Belt
		i(26473),	-- 69 TEST Green Warrior Boot
		i(26474),	-- 69 TEST Green Warrior Chest
		i(26475),	-- 69 TEST Green Warrior Hand
		i(26476),	-- 69 TEST Green Warrior Head
		i(26477),	-- 69 TEST Green Warrior Legs
		i(26478),	-- 69 TEST Green Warrior Shoulder
		i(26479),	-- 69 TEST Green Warrior Wrist
		i(27124),	-- 70 TEST Green Paladin Belt
		i(27125),	-- 70 TEST Green Paladin Boot
		i(27126),	-- 70 TEST Green Paladin Chest
		i(27127),	-- 70 TEST Green Paladin Hand
		i(27128),	-- 70 TEST Green Paladin Head
		i(27129),	-- 70 TEST Green Paladin Legs
		i(27130),	-- 70 TEST Green Paladin Shoulder
		i(27131),	-- 70 TEST Green Paladin Wrist
		i(26480),	-- 70 TEST Green Warrior Belt
		i(26481),	-- 70 TEST Green Warrior Boot
		i(26482),	-- 70 TEST Green Warrior Chest
		i(26483),	-- 70 TEST Green Warrior Hand
		i(26484),	-- 70 TEST Green Warrior Head
		i(26485),	-- 70 TEST Green Warrior Legs
		i(26486),	-- 70 TEST Green Warrior Shoulder
		i(26487),	-- 70 TEST Green Warrior Wrist
		i(27132),	-- 71 TEST Green Paladin Belt
		i(27133),	-- 71 TEST Green Paladin Boot
		i(27134),	-- 71 TEST Green Paladin Chest
		i(27135),	-- 71 TEST Green Paladin Hand
		i(27136),	-- 71 TEST Green Paladin Head
		i(27137),	-- 71 TEST Green Paladin Legs
		i(27138),	-- 71 TEST Green Paladin Shoulder
		i(27139),	-- 71 TEST Green Paladin Wrist
		i(26488),	-- 71 TEST Green Warrior Belt
		i(26489),	-- 71 TEST Green Warrior Boot
		i(26490),	-- 71 TEST Green Warrior Chest
		i(26491),	-- 71 TEST Green Warrior Hand
		i(26492),	-- 71 TEST Green Warrior Head
		i(26493),	-- 71 TEST Green Warrior Legs
		i(26494),	-- 71 TEST Green Warrior Shoulder
		i(26495),	-- 71 TEST Green Warrior Wrist
		i(27140),	-- 72 TEST Green Paladin Belt
		i(27141),	-- 72 TEST Green Paladin Boot
		i(27142),	-- 72 TEST Green Paladin Chest
		i(27143),	-- 72 TEST Green Paladin Hand
		i(27144),	-- 72 TEST Green Paladin Head
		i(27145),	-- 72 TEST Green Paladin Legs
		i(27146),	-- 72 TEST Green Paladin Shoulder
		i(27147),	-- 72 TEST Green Paladin Wrist
		i(26496),	-- 72 TEST Green Warrior Belt
		i(26497),	-- 72 TEST Green Warrior Boot
		i(26498),	-- 72 TEST Green Warrior Chest
		i(26499),	-- 72 TEST Green Warrior Hand
		i(26500),	-- 72 TEST Green Warrior Head
		i(26501),	-- 72 TEST Green Warrior Legs
		i(26502),	-- 72 TEST Green Warrior Shoulder
		i(26503),	-- 72 TEST Green Warrior Wrist
		i(25546),	-- QR XXXX Paladin Chest
		i(27963),	-- TEST 130 Epic Paladin DPS Belt
		i(27964),	-- TEST 130 Epic Paladin DPS Boot
		i(27965),	-- TEST 130 Epic Paladin DPS Chest
		i(27966),	-- TEST 130 Epic Paladin DPS Hand
		i(27967),	-- TEST 130 Epic Paladin DPS Head
		i(27968),	-- TEST 130 Epic Paladin DPS Legs
		i(27969),	-- TEST 130 Epic Paladin DPS Shoulder
		i(27970),	-- TEST 130 Epic Paladin DPS Wrist
		i(28010),	-- TEST 130 Epic Ret Paladin DPS Belt
		i(28011),	-- TEST 130 Epic Ret Paladin DPS Boot
		i(28012),	-- TEST 130 Epic Ret Paladin DPS Chest
		i(28013),	-- TEST 130 Epic Ret Paladin DPS Hand
		i(28014),	-- TEST 130 Epic Ret Paladin DPS Head
		i(28015),	-- TEST 130 Epic Ret Paladin DPS Legs
		i(28016),	-- TEST 130 Epic Ret Paladin DPS Shoulder
		i(28017),	-- TEST 130 Epic Ret Paladin DPS Wrist
		i(27950),	-- TEST 60 Blue Paladin DPS Belt
		i(27951),	-- TEST 60 Blue Paladin DPS Boot
		i(27952),	-- TEST 60 Blue Paladin DPS Chest
		i(27953),	-- TEST 60 Blue Paladin DPS Hand
		i(27954),	-- TEST 60 Blue Paladin DPS Head
		i(27955),	-- TEST 60 Blue Paladin DPS Legs
		i(27956),	-- TEST 60 Blue Paladin DPS Shoulder
		i(27957),	-- TEST 60 Blue Paladin DPS Wrist
		i(27997),	-- TEST 60 Blue Ret Paladin DPS Belt
		i(27998),	-- TEST 60 Blue Ret Paladin DPS Boot
		i(27999),	-- TEST 60 Blue Ret Paladin DPS Chest
		i(28000),	-- TEST 60 Blue Ret Paladin DPS Hand
		i(28001),	-- TEST 60 Blue Ret Paladin DPS Head
		i(28002),	-- TEST 60 Blue Ret Paladin DPS Legs
		i(28003),	-- TEST 60 Blue Ret Paladin DPS Shoulder
		i(28004),	-- TEST 60 Blue Ret Paladin DPS Wrist
	}),
	filter(8, {	-- Shield
		i(26546),	-- 59 TEST Green Shield
		i(26547),	-- 60 TEST Green Shield
		i(26548),	-- 61 TEST Green Shield
		i(26549),	-- 62 TEST Green Shield
		i(26550),	-- 63 TEST Green Shield
		i(26551),	-- 64 TEST Green Shield
		i(26552),	-- 65 TEST Green Shield
		i(26553),	-- 66 TEST Green Shield
		i(26554),	-- 67 TEST Green Shield
		i(26555),	-- 68 TEST Green Shield
		i(26556),	-- 69 TEST Green Shield
		i(26557),	-- 70 TEST Green Shield
		i(26558),	-- 71 TEST Green Shield
		i(26559),	-- 72 TEST Green Shield
		i(25627),	-- QR 9922 Shield
	}),
	filter(20, {	-- Dagger
		i(26574),	-- 59 TEST Green Dagger
		i(26770),	-- 59 TEST Green Spell Dagger
		i(26575),	-- 60 TEST Green Dagger
		i(26771),	-- 60 TEST Green Spell Dagger
		i(26576),	-- 61 TEST Green Dagger
		i(26772),	-- 61 TEST Green Spell Dagger
		i(26577),	-- 62 TEST Green Dagger
		i(26773),	-- 62 TEST Green Spell Dagger
		i(26578),	-- 63 TEST Green Dagger
		i(26774),	-- 63 TEST Green Spell Dagger
		i(26579),	-- 64 TEST Green Dagger
		i(26775),	-- 64 TEST Green Spell Dagger
		i(26580),	-- 65 TEST Green Dagger
		i(26776),	-- 65 TEST Green Spell Dagger
		i(26581),	-- 66 TEST Green Dagger
		i(26777),	-- 66 TEST Green Spell Dagger
		i(26582),	-- 67 TEST Green Dagger
		i(26778),	-- 67 TEST Green Spell Dagger
		i(26583),	-- 68 TEST Green Dagger
		i(26779),	-- 68 TEST Green Spell Dagger
		i(26584),	-- 69 TEST Green Dagger
		i(26780),	-- 69 TEST Green Spell Dagger
		i(26585),	-- 70 TEST Green Dagger
		i(26781),	-- 70 TEST Green Spell Dagger
		i(26586),	-- 71 TEST Green Dagger
		i(26782),	-- 71 TEST Green Spell Dagger
		i(26587),	-- 72 TEST Green Dagger
		i(26783),	-- 72 TEST Green Spell Dagger
	}),
	filter(21, {	-- One Handed Axe
		i(25799),	-- 130 Epic Warrior 1H Axe
		i(26673),	-- 60 TEST Green Axe1H
		i(26674),	-- 61 TEST Green Axe1H
		i(26675),	-- 62 TEST Green Axe1H
		i(26676),	-- 63 TEST Green Axe1H
		i(26677),	-- 64 TEST Green Axe1H
		i(26678),	-- 65 TEST Green Axe1H
		i(26679),	-- 66 TEST Green Axe1H
		i(26680),	-- 67 TEST Green Axe1H
		i(26681),	-- 68 TEST Green Axe1H
		i(26682),	-- 69 TEST Green Axe1H
		i(26683),	-- 70 TEST Green Axe1H
		i(26684),	-- 71 TEST Green Axe1H
		i(26685),	-- 72 TEST Green Axe1H
	}),
	filter(22, {	-- Two Handed Axe
		i(24524),	-- 130 Epic Warrior Axe
		i(26686),	-- 59 TEST Green Axe2H
		i(26687),	-- 60 TEST Green Axe2H
		i(26688),	-- 61 TEST Green Axe2H
		i(26689),	-- 62 TEST Green Axe2H
		i(20784),	-- 63 green shaman weapon
		i(26690),	-- 63 TEST Green Axe2H
		i(26691),	-- 64 TEST Green Axe2H
		i(26692),	-- 65 TEST Green Axe2H
		i(26693),	-- 66 TEST Green Axe2H
		i(26694),	-- 67 TEST Green Axe2H
		i(26695),	-- 68 TEST Green Axe2H
		i(26696),	-- 69 TEST Green Axe2H
		i(26697),	-- 70 TEST Green Axe2H
		i(26698),	-- 71 TEST Green Axe2H
		i(26699),	-- 72 TEST Green Axe2H
		i(20796),	-- 90 green shaman weapon
		i(29880),	-- Paladin 105 Test 2H Axe
		i(29881),	-- Paladin 150 Test 2H Axe
		i(29833),	-- Warrior 105 Test 2H Axe
		i(29834),	-- Warrior 150 Test 2H Axe
		i(24525),	-- zzold
	}),
	filter(23, {	-- One Handed Mace
		i(26784),	-- 59 TEST Green Healer Mace
		i(26588),	-- 59 TEST Green Mace1H
		i(26785),	-- 60 TEST Green Healer Mace
		i(26589),	-- 60 TEST Green Mace1H
		i(26786),	-- 61 TEST Green Healer Mace
		i(26590),	-- 61 TEST Green Mace1H
		i(26787),	-- 62 TEST Green Healer Mace
		i(26591),	-- 62 TEST Green Mace1H
		i(26788),	-- 63 TEST Green Healer Mace
		i(26592),	-- 63 TEST Green Mace1H
		i(26789),	-- 64 TEST Green Healer Mace
		i(26593),	-- 64 TEST Green Mace1H
		i(26790),	-- 65 TEST Green Healer Mace
		i(26594),	-- 65 TEST Green Mace1H
		i(26791),	-- 66 TEST Green Healer Mace
		i(26595),	-- 66 TEST Green Mace1H
		i(26792),	-- 67 TEST Green Healer Mace
		i(26596),	-- 67 TEST Green Mace1H
		i(26793),	-- 68 TEST Green Healer Mace
		i(26597),	-- 68 TEST Green Mace1H
		i(26794),	-- 69 TEST Green Healer Mace
		i(26598),	-- 69 TEST Green Mace1H
		i(26795),	-- 70 TEST Green Healer Mace
		i(26599),	-- 70 TEST Green Mace1H
		i(26796),	-- 71 TEST Green Healer Mace
		i(26600),	-- 71 TEST Green Mace1H
		i(26797),	-- 72 TEST Green Healer Mace
		i(26601),	-- 72 TEST Green Mace1H
	}),
	filter(24, {	-- Two Handed Mace
		i(26602),	-- 59 TEST Green Mace2H
		i(26603),	-- 60 TEST Green Mace2H
		i(26604),	-- 61 TEST Green Mace2H
		i(26605),	-- 62 TEST Green Mace2H
		i(26606),	-- 63 TEST Green Mace2H
		i(26607),	-- 64 TEST Green Mace2H
		i(26608),	-- 65 TEST Green Mace2H
		i(26609),	-- 66 TEST Green Mace2H
		i(26610),	-- 67 TEST Green Mace2H
		i(26611),	-- 68 TEST Green Mace2H
		i(26612),	-- 69 TEST Green Mace2H
		i(26613),	-- 70 TEST Green Mace2H
		i(26614),	-- 71 TEST Green Mace2H
		i(26615),	-- 72 TEST Green Mace2H
	}),
	filter(25, {	-- One Handed Sword
		i(26616),	-- 59 TEST Green Sword1H
		i(26617),	-- 60 TEST Green Sword1H
		i(26618),	-- 61 TEST Green Sword1H
		i(26619),	-- 62 TEST Green Sword1H
		i(26620),	-- 63 TEST Green Sword1H
		i(26621),	-- 64 TEST Green Sword1H
		i(26622),	-- 65 TEST Green Sword1H
		i(26623),	-- 66 TEST Green Sword1H
		i(26624),	-- 67 TEST Green Sword1H
		i(26625),	-- 68 TEST Green Sword1H
		i(26626),	-- 69 TEST Green Sword1H
		i(26627),	-- 70 TEST Green Sword1H
		i(26628),	-- 71 TEST Green Sword1H
		i(26629),	-- 72 TEST Green Sword1H
	}),
	filter(26, {	-- Two Handed Sword
		i(26630),	-- 59 TEST Green Sword2H
		i(26631),	-- 60 TEST Green Sword2H
		i(26632),	-- 61 TEST Green Sword2H
		i(26633),	-- 62 TEST Green Sword2H
		i(26634),	-- 63 TEST Green Sword2H
		i(26635),	-- 64 TEST Green Sword2H
		i(26636),	-- 65 TEST Green Sword2H
		i(26637),	-- 66 TEST Green Sword2H
		i(26638),	-- 67 TEST Green Sword2H
		i(26639),	-- 68 TEST Green Sword2H
		i(26640),	-- 69 TEST Green Sword2H
		i(26641),	-- 70 TEST Green Sword2H
		i(26642),	-- 71 TEST Green Sword2H
		i(26643),	-- 72 TEST Green Sword2H
		i(27975),	-- TEST 130 Epic Paladin DPS Sword2H Fast
		i(27974),	-- TEST 130 Epic Paladin DPS Sword2H Slow
		i(28022),	-- TEST 130 Epic Ret Paladin DPS Sword2H Fast
		i(28021),	-- TEST 130 Epic Ret Paladin DPS Sword2H Slow
		i(27962),	-- TEST 60 Blue Paladin DPS Sword2H Fast
		i(27961),	-- TEST 60 Blue Paladin DPS Sword2H Slow
		i(28009),	-- TEST 60 Blue Ret Paladin DPS Sword2H Fast
		i(28008),	-- TEST 60 Blue Ret Paladin DPS Sword2H Slow
	}),
	filter(27, {	-- Wand
		i(26756),	-- 59 TEST Green Wand
		i(26757),	-- 60 TEST Green Wand
		i(26758),	-- 61 TEST Green Wand
		i(26759),	-- 62 TEST Green Wand
		i(26760),	-- 63 TEST Green Wand
		i(26761),	-- 64 TEST Green Wand
		i(26762),	-- 65 TEST Green Wand
		i(26763),	-- 66 TEST Green Wand
		i(26764),	-- 67 TEST Green Wand
		i(26765),	-- 68 TEST Green Wand
		i(26766),	-- 69 TEST Green Wand
		i(26767),	-- 70 TEST Green Wand
		i(26768),	-- 71 TEST Green Wand
		i(26769),	-- 72 TEST Green Wand
		i(25285),	-- Bloodwood Wand
	}),
	filter(28, {	-- Staff
		i(26798),	-- 59 TEST Green Feral Staff
		i(26644),	-- 59 TEST Green Staff
		i(26799),	-- 60 TEST Green Feral Staff
		i(26645),	-- 60 TEST Green Staff
		i(26800),	-- 61 TEST Green Feral Staff
		i(26646),	-- 61 TEST Green Staff
		i(26801),	-- 62 TEST Green Feral Staff
		i(26647),	-- 62 TEST Green Staff
		i(26802),	-- 63 TEST Green Feral Staff
		i(26648),	-- 63 TEST Green Staff
		i(26803),	-- 64 TEST Green Feral Staff
		i(26649),	-- 64 TEST Green Staff
		i(26804),	-- 65 TEST Green Feral Staff
		i(26650),	-- 65 TEST Green Staff
		i(26805),	-- 66 TEST Green Feral Staff
		i(26651),	-- 66 TEST Green Staff
		i(26806),	-- 67 TEST Green Feral Staff
		i(26652),	-- 67 TEST Green Staff
		i(26807),	-- 68 TEST Green Feral Staff
		i(26653),	-- 68 TEST Green Staff
		i(26808),	-- 69 TEST Green Feral Staff
		i(26654),	-- 69 TEST Green Staff
		i(26809),	-- 70 TEST Green Feral Staff
		i(26655),	-- 70 TEST Green Staff
		i(26810),	-- 71 TEST Green Feral Staff
		i(26656),	-- 71 TEST Green Staff
		i(26811),	-- 72 TEST Green Feral Staff
		i(26657),	-- 72 TEST Green Staff
		i(25173),	-- Master's Bo Staff
	}),
	filter(29, {	-- Polearm
		i(26700),	-- 59 TEST Green Polearm
		i(26701),	-- 60 TEST Green Polearm
		i(26702),	-- 61 TEST Green Polearm
		i(26703),	-- 62 TEST Green Polearm
		i(26704),	-- 63 TEST Green Polearm
		i(26705),	-- 64 TEST Green Polearm
		i(26706),	-- 65 TEST Green Polearm
		i(26707),	-- 66 TEST Green Polearm
		i(26708),	-- 67 TEST Green Polearm
		i(26709),	-- 68 TEST Green Polearm
		i(26710),	-- 69 TEST Green Polearm
		i(26711),	-- 70 TEST Green Polearm
		i(26712),	-- 71 TEST Green Polearm
		i(26713),	-- 72 TEST Green Polearm
		i(30418),	-- Darkspear (Purple Glow)
		i(31273),	-- Monster - Polearm, Epic D
		i(32371),	-- Monster - Polearm, Epic D - Glow
		i(32729),	-- Monster - Polearm, Epic D 05
	}),
	filter(31, {	-- Gun
		i(24530),	-- 130 Epic Warrior Gun
		i(26742),	-- 59 TEST Green Gun
		i(26743),	-- 60 TEST Green Gun
		i(26744),	-- 61 TEST Green Gun
		i(26745),	-- 62 TEST Green Gun
		i(26746),	-- 63 TEST Green Gun
		i(26747),	-- 64 TEST Green Gun
		i(26748),	-- 65 TEST Green Gun
		i(26749),	-- 66 TEST Green Gun
		i(26750),	-- 67 TEST Green Gun
		i(26751),	-- 68 TEST Green Gun
		i(26752),	-- 69 TEST Green Gun
		i(26753),	-- 70 TEST Green Gun
		i(26754),	-- 71 TEST Green Gun
		i(26755),	-- 72 TEST Green Gun
		i(28165),	-- TEST GUN RocketLauncher
	}),
	filter(32, {	-- Bow
		i(26714),	-- 59 TEST Green Bow
		i(26715),	-- 60 TEST Green Bow
		i(26716),	-- 61 TEST Green Bow
		i(26717),	-- 62 TEST Green Bow
		i(26718),	-- 63 TEST Green Bow
		i(26719),	-- 64 TEST Green Bow
		i(26720),	-- 65 TEST Green Bow
		i(26721),	-- 66 TEST Green Bow
		i(26722),	-- 67 TEST Green Bow
		i(26723),	-- 68 TEST Green Bow
		i(26724),	-- 69 TEST Green Bow
		i(26725),	-- 70 TEST Green Bow
		i(26726),	-- 71 TEST Green Bow
		i(26727),	-- 72 TEST Green Bow
	}),
	filter(33, {	-- Crossbow
		i(26728),	-- 59 TEST Green Crossbow
		i(26729),	-- 60 TEST Green Crossbow
		i(26730),	-- 61 TEST Green Crossbow
		i(26731),	-- 62 TEST Green Crossbow
		i(26732),	-- 63 TEST Green Crossbow
		i(26733),	-- 64 TEST Green Crossbow
		i(26734),	-- 65 TEST Green Crossbow
		i(26735),	-- 66 TEST Green Crossbow
		i(26736),	-- 67 TEST Green Crossbow
		i(26737),	-- 68 TEST Green Crossbow
		i(26738),	-- 69 TEST Green Crossbow
		i(26739),	-- 70 TEST Green Crossbow
		i(26740),	-- 71 TEST Green Crossbow
		i(26741),	-- 72 TEST Green Crossbow
	}),
	filter(34, {	-- Fist Weapon
		i(26658),	-- 59 TEST Green FistWeapon
		i(26659),	-- 60 TEST Green FistWeapon
		i(26660),	-- 61 TEST Green FistWeapon
		i(26661),	-- 62 TEST Green FistWeapon
		i(26662),	-- 63 TEST Green FistWeapon
		i(26663),	-- 64 TEST Green FistWeapon
		i(26664),	-- 65 TEST Green FistWeapon
		i(26665),	-- 66 TEST Green FistWeapon
		i(26666),	-- 67 TEST Green FistWeapon
		i(26667),	-- 68 TEST Green FistWeapon
		i(26668),	-- 69 TEST Green FistWeapon
		i(26669),	-- 70 TEST Green FistWeapon
		i(26670),	-- 71 TEST Green FistWeapon
		i(26671),	-- 72 TEST Green FistWeapon
	}),
	filter(36, {	-- Thrown
		i(25871),	-- Standard Thrown Weapon
	}),
	filter(37, {	-- Ammo
		i(29885),	-- Hunter 120 Epic Test Bullets
		i(24412),	-- Warden's Arrow
	}),
	filter(51, {	-- Neck
		i(26532),	-- 59 TEST Green Cloth Necklace
		i(27218),	-- 59 TEST Green Druid/Warrior Necklace
		i(27302),	-- 59 TEST Green Paladin Necklace
		i(27176),	-- 59 TEST Green Rogue/Hunter Necklace
		i(27260),	-- 59 TEST Green Shaman Necklace
		i(26533),	-- 60 TEST Green Cloth Necklace
		i(27219),	-- 60 TEST Green Druid/Warrior Necklace
		i(27303),	-- 60 TEST Green Paladin Necklace
		i(27177),	-- 60 TEST Green Rogue/Hunter Necklace
		i(27261),	-- 60 TEST Green Shaman Necklace
		i(26534),	-- 61 TEST Green Cloth Necklace
		i(27220),	-- 61 TEST Green Druid/Warrior Necklace
		i(27304),	-- 61 TEST Green Paladin Necklace
		i(27178),	-- 61 TEST Green Rogue/Hunter Necklace
		i(27262),	-- 61 TEST Green Shaman Necklace
		i(26535),	-- 62 TEST Green Cloth Necklace
		i(27221),	-- 62 TEST Green Druid/Warrior Necklace
		i(27305),	-- 62 TEST Green Paladin Necklace
		i(27179),	-- 62 TEST Green Rogue/Hunter Necklace
		i(27263),	-- 62 TEST Green Shaman Necklace
		i(26536),	-- 63 TEST Green Cloth Necklace
		i(27222),	-- 63 TEST Green Druid/Warrior Necklace
		i(27306),	-- 63 TEST Green Paladin Necklace
		i(27180),	-- 63 TEST Green Rogue/Hunter Necklace
		i(27264),	-- 63 TEST Green Shaman Necklace
		i(26537),	-- 64 TEST Green Cloth Necklace
		i(27223),	-- 64 TEST Green Druid/Warrior Necklace
		i(27307),	-- 64 TEST Green Paladin Necklace
		i(27181),	-- 64 TEST Green Rogue/Hunter Necklace
		i(27265),	-- 64 TEST Green Shaman Necklace
		i(26538),	-- 65 TEST Green Cloth Necklace
		i(27224),	-- 65 TEST Green Druid/Warrior Necklace
		i(27308),	-- 65 TEST Green Paladin Necklace
		i(27182),	-- 65 TEST Green Rogue/Hunter Necklace
		i(27266),	-- 65 TEST Green Shaman Necklace
		i(26539),	-- 66 TEST Green Cloth Necklace
		i(27225),	-- 66 TEST Green Druid/Warrior Necklace
		i(27309),	-- 66 TEST Green Paladin Necklace
		i(27183),	-- 66 TEST Green Rogue/Hunter Necklace
		i(27267),	-- 66 TEST Green Shaman Necklace
		i(26540),	-- 67 TEST Green Cloth Necklace
		i(27226),	-- 67 TEST Green Druid/Warrior Necklace
		i(27310),	-- 67 TEST Green Paladin Necklace
		i(27184),	-- 67 TEST Green Rogue/Hunter Necklace
		i(27268),	-- 67 TEST Green Shaman Necklace
		i(26541),	-- 68 TEST Green Cloth Necklace
		i(27227),	-- 68 TEST Green Druid/Warrior Necklace
		i(27311),	-- 68 TEST Green Paladin Necklace
		i(27185),	-- 68 TEST Green Rogue/Hunter Necklace
		i(27269),	-- 68 TEST Green Shaman Necklace
		i(26542),	-- 69 TEST Green Cloth Necklace
		i(27228),	-- 69 TEST Green Druid/Warrior Necklace
		i(27312),	-- 69 TEST Green Paladin Necklace
		i(27186),	-- 69 TEST Green Rogue/Hunter Necklace
		i(27270),	-- 69 TEST Green Shaman Necklace
		i(26543),	-- 70 TEST Green Cloth Necklace
		i(27229),	-- 70 TEST Green Druid/Warrior Necklace
		i(27313),	-- 70 TEST Green Paladin Necklace
		i(27187),	-- 70 TEST Green Rogue/Hunter Necklace
		i(27271),	-- 70 TEST Green Shaman Necklace
		i(26544),	-- 71 TEST Green Cloth Necklace
		i(27230),	-- 71 TEST Green Druid/Warrior Necklace
		i(27314),	-- 71 TEST Green Paladin Necklace
		i(27188),	-- 71 TEST Green Rogue/Hunter Necklace
		i(27272),	-- 71 TEST Green Shaman Necklace
		i(26545),	-- 72 TEST Green Cloth Necklace
		i(27231),	-- 72 TEST Green Druid/Warrior Necklace
		i(27315),	-- 72 TEST Green Paladin Necklace
		i(27189),	-- 72 TEST Green Rogue/Hunter Necklace
		i(27273),	-- 72 TEST Green Shaman Necklace
		i(27971),	-- TEST 130 Epic Paladin DPS Necklace
		i(28018),	-- TEST 130 Epic Ret Paladin DPS Necklace
		i(27958),	-- TEST 60 Blue Paladin DPS Necklace
		i(28005),	-- TEST 60 Blue Ret Paladin DPS Necklace
	}),
	filter(52, {	-- Ring
		i(26518),	-- 59 TEST Green Cloth Ring
		i(27204),	-- 59 TEST Green Druid/Warrior Ring
		i(27288),	-- 59 TEST Green Paladin Ring
		i(27162),	-- 59 TEST Green Rogue/Hunter Ring
		i(27246),	-- 59 TEST Green Shaman Ring
		i(26519),	-- 60 TEST Green Cloth Ring
		i(27205),	-- 60 TEST Green Druid/Warrior Ring
		i(27289),	-- 60 TEST Green Paladin Ring
		i(27163),	-- 60 TEST Green Rogue/Hunter Ring
		i(27247),	-- 60 TEST Green Shaman Ring
		i(26520),	-- 61 TEST Green Cloth Ring
		i(27206),	-- 61 TEST Green Druid/Warrior Ring
		i(27290),	-- 61 TEST Green Paladin Ring
		i(27164),	-- 61 TEST Green Rogue/Hunter Ring
		i(27248),	-- 61 TEST Green Shaman Ring
		i(26521),	-- 62 TEST Green Cloth Ring
		i(27207),	-- 62 TEST Green Druid/Warrior Ring
		i(27291),	-- 62 TEST Green Paladin Ring
		i(27165),	-- 62 TEST Green Rogue/Hunter Ring
		i(27249),	-- 62 TEST Green Shaman Ring
		i(20783),	-- 63 green shaman ring
		i(26522),	-- 63 TEST Green Cloth Ring
		i(27208),	-- 63 TEST Green Druid/Warrior Ring
		i(27292),	-- 63 TEST Green Paladin Ring
		i(27166),	-- 63 TEST Green Rogue/Hunter Ring
		i(27250),	-- 63 TEST Green Shaman Ring
		i(26523),	-- 64 TEST Green Cloth Ring
		i(27209),	-- 64 TEST Green Druid/Warrior Ring
		i(27293),	-- 64 TEST Green Paladin Ring
		i(27167),	-- 64 TEST Green Rogue/Hunter Ring
		i(27251),	-- 64 TEST Green Shaman Ring
		i(26524),	-- 65 TEST Green Cloth Ring
		i(27210),	-- 65 TEST Green Druid/Warrior Ring
		i(27294),	-- 65 TEST Green Paladin Ring
		i(27168),	-- 65 TEST Green Rogue/Hunter Ring
		i(27252),	-- 65 TEST Green Shaman Ring
		i(26525),	-- 66 TEST Green Cloth Ring
		i(27211),	-- 66 TEST Green Druid/Warrior Ring
		i(27295),	-- 66 TEST Green Paladin Ring
		i(27169),	-- 66 TEST Green Rogue/Hunter Ring
		i(27253),	-- 66 TEST Green Shaman Ring
		i(26526),	-- 67 TEST Green Cloth Ring
		i(27212),	-- 67 TEST Green Druid/Warrior Ring
		i(27296),	-- 67 TEST Green Paladin Ring
		i(27170),	-- 67 TEST Green Rogue/Hunter Ring
		i(27254),	-- 67 TEST Green Shaman Ring
		i(26527),	-- 68 TEST Green Cloth Ring
		i(27213),	-- 68 TEST Green Druid/Warrior Ring
		i(27297),	-- 68 TEST Green Paladin Ring
		i(27171),	-- 68 TEST Green Rogue/Hunter Ring
		i(27255),	-- 68 TEST Green Shaman Ring
		i(26528),	-- 69 TEST Green Cloth Ring
		i(27214),	-- 69 TEST Green Druid/Warrior Ring
		i(27298),	-- 69 TEST Green Paladin Ring
		i(27172),	-- 69 TEST Green Rogue/Hunter Ring
		i(27256),	-- 69 TEST Green Shaman Ring
		i(26529),	-- 70 TEST Green Cloth Ring
		i(27215),	-- 70 TEST Green Druid/Warrior Ring
		i(27299),	-- 70 TEST Green Paladin Ring
		i(27173),	-- 70 TEST Green Rogue/Hunter Ring
		i(27257),	-- 70 TEST Green Shaman Ring
		i(26530),	-- 71 TEST Green Cloth Ring
		i(27216),	-- 71 TEST Green Druid/Warrior Ring
		i(27300),	-- 71 TEST Green Paladin Ring
		i(27174),	-- 71 TEST Green Rogue/Hunter Ring
		i(27258),	-- 71 TEST Green Shaman Ring
		i(26531),	-- 72 TEST Green Cloth Ring
		i(27217),	-- 72 TEST Green Druid/Warrior Ring
		i(27301),	-- 72 TEST Green Paladin Ring
		i(27175),	-- 72 TEST Green Rogue/Hunter Ring
		i(27259),	-- 72 TEST Green Shaman Ring
		i(20794),	-- 90 green shaman ring
		i(27972),	-- TEST 130 Epic Paladin DPS Ring
		i(28019),	-- TEST 130 Epic Ret Paladin DPS Ring
		i(27959),	-- TEST 60 Blue Paladin DPS Ring
		i(28006),	-- TEST 60 Blue Ret Paladin DPS Ring
	}),
	filter(53, {	-- Trinket
		i(35485),	-- Goblin Rocket Launcher PH
	}),
	filter(113, {	-- Bag
		i(34466),	-- Test Fel Iron Toolbox
		i(33027),	-- TEST Mike's Dagger
	}),
	-- #endif
}));
