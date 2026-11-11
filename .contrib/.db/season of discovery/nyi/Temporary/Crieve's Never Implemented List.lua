---------------------------------------------------------------------------
--         N E V E R       I M P L E M E N T E D       M O D U L E       --
---------------------------------------------------------------------------
-- Everything in this file hasn't been implemented yet.
-- @Darkal - Oi, do the thing! :D
local CRIEVES_I_AM_TOO_LAZY_FOR_THIS_LIST = createHeader({
	readable = "Crieve's Never Implemented List",
	icon = 132738,
	text = {
		en = "Crieve's Never Implemented List",
		cn = "Crieve 的未实装清单",
		tw = "Crieve 的從未實裝清單",
	},
	description = {
		en = "If the following are sorted somewhere, please delete them from this list. Thanks.",
		cn = "如果以下内容已在别处归类整理，请将它们从本清单中删除。谢谢。",
		tw = "如果下列內容已在其他地方分類，請將它們從此清單中刪除。謝謝。",
	},
});

root("NeverImplemented", n(CRIEVES_I_AM_TOO_LAZY_FOR_THIS_LIST, {
	q(63769),	-- Holiday Reset Yearly Quest
	q(55296),	-- This quest was reported as missing on Discord, but has no information related to it similar to 6842 and 7069.

	q(8226, {	-- Rare Fish - Pale Ghoulfish
		-- qg = 15079,	-- Fishbot 5000
		-- coord = { 27.4, 76.9, STRANGLETHORN_VALE },
		cost = {
			{ "i", 19804, 1 },	-- Pale Ghoulfish
		},
		requireSkill = FISHING,
		repeatable = true,
		groups = {
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
		i(12258),	-- Serpent Clasp Belt
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

}));
