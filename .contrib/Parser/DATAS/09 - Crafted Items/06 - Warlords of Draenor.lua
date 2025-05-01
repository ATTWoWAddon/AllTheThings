---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------

local WOD_CRAFTED_ITEM = function(id, upgradeItem)
	return
	i(id, {	-- Base Item 1/6
		["bonusID"] = 525,
		["g"] = bubbleDown({["cost"] = upgradeItem and { { "i", upgradeItem, 1 } }},{
			i(id, {	-- Upgrade 1 2/6
				["bonusID"] = 558,
				["u"] = REMOVED_FROM_GAME,
				["g"] = {
					i(id, {	-- Upgrade 2 3/6
						["bonusID"] = 559,
						["u"] = REMOVED_FROM_GAME,
					}),
					i(id, {	-- Upgrade 2 4/6
						["bonusID"] = 594,
						["u"] = REMOVED_FROM_GAME,
					}),
					i(id, {	-- Upgrade 2 5/6
						["bonusID"] = 619,
						["u"] = REMOVED_FROM_GAME,
					}),
					i(id, {	-- Upgrade 2 6/6
						["bonusID"] = 620,
						["u"] = REMOVED_FROM_GAME,
					}),
				},
			}),
		}),
	});
end
-- Comment by Braghe: if we want to do this for WoD Classic.
-- 6.0.3: Item 1 Upgrades Stage 1->2, Item 2 Upgrades Stage 2->3.
-- 6.1.0: Add a new item, Item 3.
-- 6.1.0: Item 3 Upgrades Stage 3->4.
-- 6.2.0: Removes Item 2, Item 3 and creates new itemID for Item 1, call it Item 1*. Add two new items, Item 4 and Item 5.
-- 6.2.0: Item 1* Upgrades Stage 1->2, Item 1* Upgrades Stage 2->3, Item 1* Upgrades Stage 3->4
-- 6.2.0: Item 4 Upgrades Stage 4->5, Item 5 Upgrades Stage 5->6.
-- 10.0.5: Removes Item 1*, Item 4, Item 5 and add twos new items called Impressive and Remarkable which makes you able to get the appearances. \\End

-- this is the exact same logic, but ignores applying the SourceID's to the upgraded versions since they are identical
-- to the base version. This prevents the unobtainable flag showing for the base version since the Item will search by
-- SourceID in-game and combine the information from all matching sources, which would include unobtainable flags
-- So screw it, all versions get to 'pretend' to be obtainable for the sake of the Base item which is considered identical otherwise
-- due to the same SourceID
local WOD_CRAFTED_IDENTICAL_ITEM = function(id, upgradeItem)
	return
	i(id, {	-- Base Item 1/6
		["bonusID"] = 525,
		["description"] = "The upgraded versions of this Item are *still* not available, but they share the same SourceID as this base Item so they will appear as available in ATT.",
		["g"] = bubbleDown({["cost"] = upgradeItem and { { "i", upgradeItem, 1 } },},{
			i(id, {	-- Upgrade 1 2/6
				["bonusID"] = 558,
				["g"] = {
					i(id, {	-- Upgrade 2 3/6
						["bonusID"] = 559,
					}),
					i(id, {	-- Upgrade 2 4/6
						["bonusID"] = 594,
					}),
					i(id, {	-- Upgrade 2 5/6
						["bonusID"] = 619,
					}),
					i(id, {	-- Upgrade 2 6/6
						["bonusID"] = 620,
					}),
				},
			}),
		}),
	});
end

local WOD_CRAFTED_ITEM_DF_BASE = function(id, t)
	if not t then t = {}; end
	t.bonusID = 525;
	return i(id, t);
end

local WOD_CRAFTED_ITEM_DF_IMPRESSIVE = function(id, upgradeItem)
	return
	i(id, {
		["bonusID"] = 9145,
		["cost"] = { { "i", upgradeItem, 1 } },
	});
end

local WOD_CRAFTED_ITEM_DF_REMARKABLE = function(id, upgradeItem)
	return
	i(id, {
		["bonusID"] = 9146,
		["cost"] = { { "i", upgradeItem, 1 } },
	});
end

root(ROOTS.Craftables, expansion(EXPANSION.WOD, applyclassicphase(WOD_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	i(180055, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I
	i(180057, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II
	i(180058, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III
	i(180059, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV
	i(180060, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V
	prof(ALCHEMY, {
		filter(CONSUMABLES, {
			i(116979, {["timeline"] = {ADDED_8_0_1}}),	-- Blackwater Anti-Venom
			i(109145),	-- Draenic Agility Flask
			i(109217),	-- Draenic Agility Potion
			i(109221),	-- Draenic Channeled Mana Potion
			i(109147),	-- Draenic Intellect Flask
			i(109218),	-- Draenic Intellect Potion
			i(116268),	-- Draenic Invisibility Potion
			i(116276),	-- Draenic Living Action Potion
			i(109222),	-- Draenic Mana Potion
			i(109226),	-- Draenic Rejuvenation Potion
			i(109152),	-- Draenic Stamina Flask
			i(109148),	-- Draenic Strength Flask
			i(109219),	-- Draenic Strength Potion
			i(116266),	-- Draenic Swiftness Potion
			i(109220),	-- Draenic Versatility Potion
			i(116271),	-- Draenic Water Breathing Elixir
			i(118711),	-- Draenic Water Walking Elixir
			i(116981, {["timeline"] = {ADDED_8_0_1}}),	-- Fire Ammonite Oil
			i(109153),	-- Greater Draenic Agility Flask
			i(109155),	-- Greater Draenic Intellect Flask
			i(109160),	-- Greater Draenic Stamina Flask
			i(109156),	-- Greater Draenic Strength Flask
			i(109223, {["timeline"] = {ADDED_8_0_1}}),	-- Healing Tonic
			i(118704),	-- Pure Rage Potion
			i(112090),	-- Transmorphic Tincture
		}),
		filter(MISC, {
			i(118700),	-- Secrets of Draenor Alchemy
		}),
		filter(REAGENTS, {
			i(108996),	-- Alchemical Catalyst
			i(109123),	-- Crescent Oil
			i(128159, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Elemental Distillate
			i(113264, {["timeline"] = {ADDED_6_1_0}}),	-- Sorcerous Air
			i(113263, {["timeline"] = {ADDED_6_1_0}}),	-- Sorcerous Earth
			i(113261, {["timeline"] = {ADDED_6_1_0}}),	-- Sorcerous Fire
			i(113262, {["timeline"] = {ADDED_6_1_0}}),	-- Sorcerous Water
			i(128158, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Wildswater
		}),
		filter(TRINKET_F, {
			i(109262),	-- Draenic Philosopher's Stone
			i(122604, {["timeline"] = {ADDED_6_1_0}}),	-- Stone of Fire
			i(122602, {["timeline"] = {ADDED_6_1_0}}),	-- Stone of the Earth
			i(128024, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Stone of the Elements
			i(122603, {["timeline"] = {ADDED_6_1_0}}),	-- Stone of the Waters
			i(128023, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Stone of the Wilds
			i(122601, {["timeline"] = {ADDED_6_1_0}}),	-- Stone of Wind
		}),
	}),
	prof(ARCHAEOLOGY, {
		i(109585),	-- Arakkoa Cipher
		i(108439),	-- Draenor Clan Orator Cane
		i(109584),	-- Ogre Missive
		i(87399),	-- Restored Artifact
		header(HEADERS.Currency, ARCH_CURRENCY_ARAKKOA, sharedData({["cost"]={{"c",ARCH_CURRENCY_ARAKKOA,50}}},{ -- TODO: someone can add different fragment costs within as needed
			i(117354),	-- Ancient Nest Guardian (PET!)
			i(114204),	-- Apexis Crystal
			i(114205),	-- Apexis Hieroglyph
			i(114206),	-- Apexis Scroll
			i(117382),	-- Beakbreaker of Terokk
			i(114198),	-- Burial Urn
			i(114199),	-- Decree Scrolls
			i(114197),	-- Dreamcatcher
			i(114203),	-- Outcast Dreamcatcher
			i(114200),	-- Solar Orb
			i(114201),	-- Sundial
			i(114202),	-- Talonpriest Mask
		})),
		header(HEADERS.Currency, ARCH_CURRENCY_DRAENORCLANS, sharedData({["cost"]={{"c",ARCH_CURRENCY_DRAENORCLANS,50}}},{ -- TODO: someone can add different fragment costs within as needed
			i(114171),	-- Ancestral Talisman
			i(114163),	-- Barbed Fishing Hook
			i(114157),	-- Blackrock Razor
			i(114165),	-- Calcified Eye in a Jar
			i(114167),	-- Ceremonial Tattoo Needles
			i(114169),	-- Cracked Ivory Idol
			i(114177),	-- Doomsday Prophecy
			i(114155),	-- Elemental Bellows
			i(114141),	-- Fang-Scarred Frostwolf Axe
			i(114173),	-- Flask of Blazegrease
			i(114143),	-- Frostwolf Ancestry Scrimshaw
			i(117380),	-- Frostwolf Ghostpup (PET!)
			i(114175),	-- Gronn-Tooth Necklace
			i(116985),	-- Headdress of the First Shaman
			i(114161),	-- Hooked Dagger
			i(114153),	-- Metalworker's Hammer
			i(114149),	-- Screaming Bullroarer
			i(114147),	-- Warsinger's Drums
			i(114151),	-- Warsong Ceremonial Pike
			i(114159),	-- Weighted Chopping Axe
			i(114145),	-- Wolfskin Snowshoes
		})),
		header(HEADERS.Currency, ARCH_CURRENCY_OGRE, sharedData({["cost"]={{"c",ARCH_CURRENCY_OGRE,50}}},{ -- TODO: someone can add different fragment costs within as needed
			i(114191),	-- Eye of Har'gunn the Blind
			i(114189),	-- Gladiator's Shield
			i(114194),	-- Imperial Decree Stele
			i(114190),	-- Mortar and Pestle
			i(114185),	-- Ogre Figurine
			i(114187),	-- Pictogram Carving
			i(114193),	-- Rylak Riding Harness
			i(117385),	-- Sorcerer-King Toe Ring
			i(114192),	-- Stone Dentures
			i(114183),	-- Stone Manacles
			i(114181),	-- Stonemaul Succession Stone
			i(117384),	-- Warmaul of the Warmaul Chieftain
		})),
	}),
	prof(BLACKSMITHING, {
		n(ARMOR, {
			i(116426),	-- Smoldering Helm
			i(116427),	-- Smoldering Breastplate
			i(116425),	-- Smoldering Greaves
			-- #if BEFORE 10.0.5
			WOD_CRAFTED_ITEM(114230, 128015),	-- Truesteel Helm + Truesteel Essence
			WOD_CRAFTED_ITEM(114231, 128015),	-- Truesteel Pauldrons + Truesteel Essence
			WOD_CRAFTED_ITEM(114232, 128015),	-- Truesteel Breastplate + Truesteel Essence
			WOD_CRAFTED_ITEM(114236, 128015),	-- Truesteel Armguards + Truesteel Essence
			WOD_CRAFTED_ITEM(114237, 128015),	-- Truesteel Gauntlets + Truesteel Essence
			WOD_CRAFTED_ITEM(114233, 128015),	-- Truesteel Waistguard + Truesteel Essence
			WOD_CRAFTED_ITEM(114234, 128015),	-- Truesteel Greaves + Truesteel Essence
			WOD_CRAFTED_ITEM(114235, 128015),	-- Truesteel Boots + Truesteel Essence
			-- #else
			WOD_CRAFTED_ITEM_DF_BASE(114230),	-- Truesteel Helm
			WOD_CRAFTED_ITEM_DF_BASE(114231),	-- Truesteel Pauldrons
			WOD_CRAFTED_ITEM_DF_BASE(114232),	-- Truesteel Breastplate
			WOD_CRAFTED_ITEM_DF_BASE(114236),	-- Truesteel Armguards
			WOD_CRAFTED_ITEM_DF_BASE(114237),	-- Truesteel Gauntlets
			WOD_CRAFTED_ITEM_DF_BASE(114233),	-- Truesteel Waistguard
			WOD_CRAFTED_ITEM_DF_BASE(114234),	-- Truesteel Greaves
			WOD_CRAFTED_ITEM_DF_BASE(114235),	-- Truesteel Boots
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114230, 202210),	-- Truesteel Helm + Impressive Truesteel Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114231, 202210),	-- Truesteel Pauldrons + Impressive Truesteel Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114232, 202210),	-- Truesteel Breastplate + Impressive Truesteel Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114236, 202210),	-- Truesteel Armguards + Impressive Truesteel Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114237, 202210),	-- Truesteel Gauntlets + Impressive Truesteel Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114233, 202210),	-- Truesteel Waistguard + Impressive Truesteel Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114234, 202210),	-- Truesteel Greaves + Impressive Truesteel Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114235, 202210),	-- Truesteel Boots + Impressive Truesteel Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114230, 202211),	-- Truesteel Helm + Remarkable Truesteel Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114231, 202211),	-- Truesteel Pauldrons + Remarkable Truesteel Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114232, 202211),	-- Truesteel Breastplate + Remarkable Truesteel Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114236, 202211),	-- Truesteel Armguards + Remarkable Truesteel Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114237, 202211),	-- Truesteel Gauntlets + Remarkable Truesteel Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114233, 202211),	-- Truesteel Waistguard + Remarkable Truesteel Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114234, 202211),	-- Truesteel Greaves + Remarkable Truesteel Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114235, 202211),	-- Truesteel Boots + Remarkable Truesteel Essence
			-- #endif
		}),
		filter(BATTLE_PETS, {
			i(119328),	-- Soul of the Forge (PET!)
		}),
		filter(MISC, {
			i(202210, {["timeline"] = {ADDED_10_0_5}}),	-- Impressive Truesteel Essence
			i(202208, {["timeline"] = {ADDED_10_0_5}}),	-- Impressive Steelforged Essence
			i(127713, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Mighty Steelforged Essence
			i(127714, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Mighty Truesteel Essence
			i(202211, {["timeline"] = {ADDED_10_0_5}}),	-- Remarkable Truesteel Essence
			i(202209, {["timeline"] = {ADDED_10_0_5}}),	-- Remarkable Steelforged Essence
			i(127731, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Savage Steelforged Essence
			i(127732, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Savage Truesteel Essence
			i(118720),	-- Secret of Draenor Blacksmithing
			i(128016, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Steelforged Essence
			i(128015, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Truesteel Essence
			i(116654),	-- Truesteel Grinder
			i(108257),	-- Truesteel Ingot
			i(116428),	-- Truesteel Reshaper
			i(116653, {["timeline"] = {ADDED_6_0_3_LAUNCH, REMOVED_6_2_0}}),	-- Unstable Greater Steelforged Essence
			i(116652, {["timeline"] = {ADDED_6_0_3_LAUNCH, REMOVED_6_2_0}}),	-- Unstable Steelforged Essence
			i(122538, {["timeline"] = {ADDED_6_1_0, REMOVED_6_2_0}}),	-- Unstable Powerful Steelforged Essence
			i(116650, {["timeline"] = {ADDED_6_0_3_LAUNCH, REMOVED_6_2_0}}),	-- Unstable Greater Truesteel Essence
			i(116649, {["timeline"] = {ADDED_6_0_3_LAUNCH, REMOVED_6_2_0}}),	-- Unstable Truesteel Essence
			i(122539, {["timeline"] = {ADDED_6_1_0, REMOVED_6_2_0}}),	-- Unstable Powerful Truesteel Essence
		}),
		n(WEAPONS, {
			-- #if BEFORE 10.0.5
			WOD_CRAFTED_ITEM(120261, 128016),	-- Steelforged Aegis + Steelforged Essence
			WOD_CRAFTED_ITEM(120259, 128016),	-- Steelforged Axe + Steelforged Essence
			WOD_CRAFTED_ITEM(116644, 128016),	-- Steelforged Dagger + Steelforged Essence
			WOD_CRAFTED_ITEM(116453, 128016),	-- Steelforged Greataxe + Steelforged Essence
			WOD_CRAFTED_ITEM(116646, 128016),	-- Steelforged Hammer + Steelforged Essence
			WOD_CRAFTED_ITEM(116454, 128016),	-- Steelforged Saber + Steelforged Essence
			WOD_CRAFTED_ITEM(116647, 128016),	-- Steelforged Shield + Steelforged Essence
			-- #else
			WOD_CRAFTED_ITEM_DF_BASE(120261),	-- Steelforged Aegis
			WOD_CRAFTED_ITEM_DF_BASE(120259),	-- Steelforged Axe
			WOD_CRAFTED_ITEM_DF_BASE(116644),	-- Steelforged Dagger
			WOD_CRAFTED_ITEM_DF_BASE(116453),	-- Steelforged Greataxe
			WOD_CRAFTED_ITEM_DF_BASE(116646),	-- Steelforged Hammer
			WOD_CRAFTED_ITEM_DF_BASE(116454),	-- Steelforged Saber
			WOD_CRAFTED_ITEM_DF_BASE(116647),	-- Steelforged Shield
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(120261, 202208),	-- Steelforged Aegis + Impressive Steelforged Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(120259, 202208),	-- Steelforged Axe + Impressive Steelforged Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116644, 202208),	-- Steelforged Dagger + Impressive Steelforged Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116453, 202208),	-- Steelforged Greataxe + Impressive Steelforged Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116646, 202208),	-- Steelforged Hammer + Impressive Steelforged Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116454, 202208),	-- Steelforged Saber + Impressive Steelforged Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116647, 202208),	-- Steelforged Shield + Impressive Steelforged Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(120261, 202209),	-- Steelforged Aegis + Remarkable Steelforged Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(120259, 202209),	-- Steelforged Axe + Remarkable Steelforged Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(116644, 202209),	-- Steelforged Dagger + Remarkable Steelforged Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(116453, 202209),	-- Steelforged Greataxe + Remarkable Steelforged Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(116646, 202209),	-- Steelforged Hammer + Remarkable Steelforged Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(116454, 202209),	-- Steelforged Saber + Remarkable Steelforged Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(116647, 202209),	-- Steelforged Shield + Remarkable Steelforged Essence
			-- #endif
		}),
	}),
	prof(COOKING, {
		n(DISCOVERY, {
			["description"] = "These items have a chance to appear in your bag after cooking any recipe from Warlords of Draenor.",
			["groups"] = {
				i(110684),	-- Lil' Leftovers (PET!)
				i(118323),	-- Recipe Idea: Blackrock Barbecue (RECIPE!)
				i(118311),	-- Recipe Idea: Blackrock Ham (RECIPE!)
				i(118313),	-- Recipe Idea: Braised Riverbeast (RECIPE!)
				i(118326),	-- Recipe Idea: Calamari Crepes (RECIPE!)
				i(118315),	-- Recipe Idea: Clefthoof Sausages (RECIPE!)
				i(118319),	-- Recipe Idea: Fat Sleeper Cakes (RECIPE!)
				i(118328),	-- Recipe Idea: Feast of Blood (RECIPE!)
				i(118329),	-- Recipe Idea: Feast of the Waters (RECIPE!)
				i(118320),	-- Recipe Idea: Fiery Calamari (RECIPE!)
				i(118324),	-- Recipe Idea: Frosty Stew (RECIPE!)
				i(118327),	-- Recipe Idea: Gorgrond Chowder (RECIPE!)
				i(118317),	-- Recipe Idea: Grilled Gulper (RECIPE!)
				i(118310),	-- Recipe Idea: Hearty Elekk Steak (RECIPE!)
				i(118312),	-- Recipe Idea: Pan-Seared Talbuk (RECIPE!)
				i(118314),	-- Recipe Idea: Rylak Crepes (RECIPE!)
				i(118321),	-- Recipe Idea: Skulker Chowder (RECIPE!)
				i(118325),	-- Recipe Idea: Sleeper Surprise (RECIPE!)
				i(118316),	-- Recipe Idea: Steamed Scorpion (RECIPE!)
				i(118318),	-- Recipe Idea: Sturgeon Stew (RECIPE!)
				i(118322),	-- Recipe Idea: Talador Surf and Turf (RECIPE!)
			},
		}),
		i(111449),	-- Blackrock Barbecue
		i(111433),	-- Blackrock Ham
		i(111436),	-- Braised Riverbeast
		i(122348, {["timeline"] = {ADDED_6_1_0}}),	-- Buttered Sturgeon
		i(111453),	-- Calamari Crepes
		i(111438),	-- Clefthoof Sausages
		i(111444),	-- Fat Sleeper Cakes
		i(111457),	-- Feast of Blood
		i(111458),	-- Feast of the Waters
		i(128498, {["timeline"] = {ADDED_6_2_0}}),	-- Fel Eggs and Ham
		i(111445),	-- Fiery Calamari
		i(111450),	-- Frosty Stew
		i(111454),	-- Gorgrond Chowder
		i(111441),	-- Grilled Gulper
		i(111456),	-- Grilled Saberfish
		i(111431),	-- Hearty Elekk Steak
		i(122346, {["timeline"] = {ADDED_6_1_0}}),	-- Jumbo Sea Dog
		i(111434),	-- Pan-Seared Talbuk
		i(122345, {["timeline"] = {ADDED_6_1_0}}),	-- Pickled Eel
		i(111437),	-- Rylak Crepes
		i(111455),	-- Saberfish Broth
		i(122344, {["timeline"] = {ADDED_6_1_0}}),	-- Salty Squid Roll
		i(111446),	-- Skulker Chowder
		i(111452),	-- Sleeper Surprise
		i(122343, {["timeline"] = {ADDED_6_1_0}}),	-- Sleeper Sushi
		i(111439),	-- Steamed Scorpion
		i(111442),	-- Sturgeon Stew
		i(111447),	-- Talador Surf and Turf
		i(122347, {["timeline"] = {ADDED_6_1_0}}),	-- Whiptail Fillet
	}),
	prof(ENCHANTING, {
		spell(13262, {	-- Disenchant
			i(109693),	-- Draenic Dust
			i(115504),	-- Fractured Temporal Crystal
			i(111245),	-- Luminous Shard
			i(115502),	-- Small Luminous Shard
			i(113588),	-- Temporal Crystal
		}),
		n(ARMOR_ENCHANTMENTS, {
			i(110631),	-- Enchant Cloak - Breath of Critical Strike
			i(110632),	-- Enchant Cloak - Breath of Haste
			i(110633),	-- Enchant Cloak - Breath of Mastery
			i(110634, {["timeline"]={ADDED_6_0_3_LAUNCH, REMOVED_7_0_3}}),	-- Enchant Cloak - Breath of Multistrike
			i(110635),	-- Enchant Cloak - Breath of Versatility
			i(110652),	-- Enchant Cloak - Gift of Critical Strike
			i(110653),	-- Enchant Cloak - Gift of Haste
			i(110654),	-- Enchant Cloak - Gift of Mastery
			i(110655, {["timeline"]={ADDED_6_0_3_LAUNCH, REMOVED_7_0_3}}),	-- Enchant Cloak - Gift of Multistrike
			i(110656),	-- Enchant Cloak - Gift of Versatility
			i(110624),	-- Enchant Neck - Breath of Critical Strike
			i(110625),	-- Enchant Neck - Breath of Haste
			i(110626),	-- Enchant Neck - Breath of Mastery
			i(110627, {["timeline"]={ADDED_6_0_3_LAUNCH, REMOVED_7_0_3}}),	-- Enchant Neck - Breath of Multistrike
			i(110628),	-- Enchant Neck - Breath of Versatility
			i(110645),	-- Enchant Neck - Gift of Critical Strike
			i(110646),	-- Enchant Neck - Gift of Haste
			i(110647),	-- Enchant Neck - Gift of Mastery
			i(110648, {["timeline"]={ADDED_6_0_3_LAUNCH, REMOVED_7_0_3}}),	-- Enchant Neck - Gift of Multistrike
			i(110649),	-- Enchant Neck - Gift of Versatility
			i(110617),	-- Enchant Ring - Breath of Critical Strike
			i(110618),	-- Enchant Ring - Breath of Haste
			i(110619),	-- Enchant Ring - Breath of Mastery
			i(110620, {["timeline"]={ADDED_6_0_3_LAUNCH, REMOVED_7_0_3}}),	-- Enchant Ring - Breath of Multistrike
			i(110621),	-- Enchant Ring - Breath of Versatility
			i(110638),	-- Enchant Ring - Gift of Critical Strike
			i(110639),	-- Enchant Ring - Gift of Haste
			i(110640),	-- Enchant Ring - Gift of Mastery
			i(110641, {["timeline"]={ADDED_6_0_3_LAUNCH, REMOVED_7_0_3}}),	-- Enchant Ring - Gift of Multistrike
			i(110642),	-- Enchant Ring - Gift of Versatility
		}),
		filter(ILLUSIONS, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
			i(138795, {	-- Tome of Illusions: Draenor
				ill(5334),	-- Mark of the Frostwolf (ILLUSION!)
				ill(5330),	-- Mark of the Thunderlord (ILLUSION!)
			}),
		})),
		filter(MISC, {
			i(112321),	-- Enchanted Dust
			i(119293),	-- Secret of Draenor Enchanting
		}),
		n(WEAPON_ENCHANTMENTS, {
			i(112160),	-- Enchant Weapon - Mark of Blackrock
			i(118015),	-- Enchant Weapon - Mark of Bleeding Hollow
			i(112115),	-- Enchant Weapon - Mark of Shadowmoon
			i(112165),	-- Enchant Weapon - Mark of the Frostwolf
			i(112093),	-- Enchant Weapon - Mark of the Shattered Hand
			i(110682),	-- Enchant Weapon - Mark of the Thunderlord
			i(112164),	-- Enchant Weapon - Mark of Warsong
		}),
	}),
	prof(ENGINEERING, {
		n(ARMOR, {
			-- #IF BEFORE 10.0.5
			WOD_CRAFTED_IDENTICAL_ITEM(109173, 128011),	-- Cybergenetic Mechshades + Linkgrease Locksprocket
			WOD_CRAFTED_IDENTICAL_ITEM(109171, 128011),	-- Night-Vision Mechshades + Linkgrease Locksprocket
			WOD_CRAFTED_IDENTICAL_ITEM(109172, 128011),	-- Plasma Mechshades + Linkgrease Locksprocket
			WOD_CRAFTED_IDENTICAL_ITEM(109174, 128011),	-- Razorguard Mechshades*+ Linkgrease Locksprocket
			-- #ELSE
			WOD_CRAFTED_ITEM_DF_BASE(109173),	-- Cybergenetic Mechshades
			WOD_CRAFTED_ITEM_DF_BASE(109171),	-- Night-Vision Mechshades
			WOD_CRAFTED_ITEM_DF_BASE(109172),	-- Plasma Mechshades
			WOD_CRAFTED_ITEM_DF_BASE(109174),	-- Razorguard Mechshades
			-- The 'upgraded' versions are literally identical SourceID... so not really any point to list them with the upgrade items
			-- #ENDIF
		}),
		filter(BATTLE_PETS, {
			i(112057),	-- Lifelike Mechanical Frostboar (PET!)
			i(111402),	-- Mechanical Axebeak (PET!)
			i(118741),	-- Mechanical Scorpid (PET!)
		}),
		filter(MISC, {
			i(127719, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Advanced Muzzlesprocket
			i(171072),	-- Alliance Firework
			i(127720, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Bi-Directional Fizzle Reducer
			i(114056),	-- Didi's Delicate Assembly
			i(109076),	-- Goblin Glider Kit
			i(116148),	-- Horde Firework
			i(202212, {["timeline"] = {ADDED_10_0_5}}),	-- Impressive Linkgrease Locksprocket
			i(202214, {["timeline"] = {ADDED_10_0_5}}),	-- Impressive True Iron Trigger
			i(127738, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Infrablue-Blocker Lenses
			i(128011, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Linkgrease Locksprocke
			i(118007),	-- Mecha-Blast Rockett
			i(202213, {["timeline"] = {ADDED_10_0_5}}),	-- Remarkable Linkgrease Locksprocket
			i(202215, {["timeline"] = {ADDED_10_0_5}}),	-- Remarkable True Iron Trigger
			i(119299),	-- Secrets of Draenor Engineering
			i(118006),	-- Shieldtronic Shield
			i(116149),	-- Snake Firework
			i(109184),	-- Stealthman 54
			i(111820),	-- Swapblaster
			i(127737, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Taladite Firing Pin
			i(128017, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- True Iron Trigger
			i(109253),	-- Ultimate Gnomish Army Knife [BoE]
			i(114943),	-- Ultimate Gnomish Army Knife [BoP]
			i(119823, {["timeline"] = {ADDED_6_0_3_LAUNCH, REMOVED_6_2_0}}),	-- Unstable Blackrock Rifling
			i(114050, {["timeline"] = {ADDED_6_0_3_LAUNCH, REMOVED_6_2_0}}),	-- Unstable Linkgrease Locksprocket
			i(114055, {["timeline"] = {ADDED_6_0_3_LAUNCH, REMOVED_6_2_0}}),	-- Unstable Morden's Magnificent Contraption
			i(122545, {["timeline"] = {ADDED_6_1_0, REMOVED_6_2_0}}),	-- Unstable Oglethorpe's Octagonal Lenses
			i(122544, {["timeline"] = {ADDED_6_1_0, REMOVED_6_2_0}}),	-- Unstable Precision Scope Tuning Kit
			i(119822, {["timeline"] = {ADDED_6_0_3_LAUNCH, REMOVED_6_2_0}}),	-- Unstable True Iron Trigger
		}),
		filter(REAGENTS, {
			i(111366),	-- Gearspring Parts
		}),
		filter(TOYS, {
			i(111821),	-- Blingtron 5000 (TOY!)
			i(109167),	-- Findle's Loot-A-Rang (TOY!)
			i(108745),	-- Personal Hologram (TOY!)
			i(109183),	-- World Shrinker (TOY!)
			i(112059),	-- Wormhole Centrifuge (TOY!)
		}),
		n(WEAPONS, {
			-- #IF BEFORE 10.0.5
			WOD_CRAFTED_ITEM(109168, 128017),	-- Shrediron's Shredder + True Iron Trigger
			-- #ELSE
			WOD_CRAFTED_ITEM_DF_BASE(109168, { ["ItemAppearanceModifierID"] = 0 }),	-- Shrediron's Shredder
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(109168, 202214),	-- Shrediron's Shredder + Impressive True Iron Trigger
			WOD_CRAFTED_ITEM_DF_REMARKABLE(109168, 202215),	-- Shrediron's Shredder + Remarkable True Iron Trigger
			-- #ENDIF
		}),
		n(WEAPON_ENCHANTMENTS, {
			i(118008),	-- Hemet's Heartseeker
			i(109122),	-- Megawatt Filament
			i(109120),	-- Oglethorpe's Missile Splitter
		}),
	}),
	-- #if BEFORE 8.0.1
	prof(FIRST_AID, {
		i(111603),	-- Antiseptic Bandage
		i(116979),	-- Blackwater Anti-Venom
		i(116981),	-- Fire Ammonite Oil
		i(109223),	-- Healing Tonic
	}),
	-- #endif
	prof(FISHING, {
		DRAENOR_FISHING,
		i(110508),	-- "Fragrant" Pheromone Fish
		i(111664),	-- Abyssal Gulper Eel
		i(110293),	-- Abyssal Gulper Eel Bait
		i(109143),	-- Abyssal Gulper Eel Flesh
		i(118414),	-- Awesomefish
		i(111663),	-- Blackwater Whiptail
		i(110294),	-- Blackwater Whiptail Bait
		i(109144),	-- Blackwater Whiptail Flesh
		i(116817),	-- Blackwater Whiptail Lunker
		i(116820),	-- Blind Lake Lunker
		i(111667),	-- Blind Lake Sturgeon
		i(110290),	-- Blind Lake Sturgeon Bait
		i(109140),	-- Blind Lake Sturgeon Flesh
		i(111595),	-- Crescent Saberfish
		i(109137),	-- Crescent Saberfish Flesh
		i(111668),	-- Fat Sleeper
		i(110289),	-- Fat Sleeper Bait
		i(109139),	-- Fat Sleeper Flesh
		i(116821),	-- Fat Sleeper Lunker
		i(127991, {["timeline"] = {ADDED_6_2_0}}),	-- Felmouth Frenzy
		i(128229, {["timeline"] = {ADDED_6_2_0}}),	-- Felmouth Frenzy Bait
		i(127994, {["timeline"] = {ADDED_6_2_0}}),	-- Felmouth Frenzy Lunker
		i(111666),	-- Fire Ammonite
		i(110291),	-- Fire Ammonite Bait
		i(116819),	-- Fire Ammonite Lunker
		i(109141),	-- Fire Ammonite Tentacle
		i(118416),	-- Fish Roe
		i(111671),	-- Enormous Abyssal Gulper Eel
		i(111670),	-- Enormous Blackwater Whiptail
		i(111674),	-- Enormous Blind Lake Sturgeon
		i(111601),	-- Enormous Crescent Saberfish
		i(111675),	-- Enormous Fat Sleeper
		i(111673),	-- Enormous Fire Ammonite
		i(111676),	-- Enormous Jawless Skulker
		i(111672),	-- Enormous Sea Scorpion
		i(118415),	-- Grieferfish
		i(111669),	-- Jawless Skulker
		i(110274),	-- Jawless Skulker Bait
		i(109138),	-- Jawless Skulker Flesh
		i(116822),	-- Jawless Skulker Lunker
		i(118046),	-- Rubber Duck
		i(118565),	-- Savage Piranha
		i(111665),	-- Sea Scorpion
		i(110292),	-- Sea Scorpion Bait
		i(122696, {["timeline"] = {ADDED_6_1_0}}),	-- Sea Scorpion Lunker
		i(109142),	-- Sea Scorpion Segment
		i(111659),	-- Small Abyssal Gulper Eel
		i(111662),	-- Small Blackwater Whiptail
		i(111652),	-- Small Blind Lake Sturgeon
		i(111589),	-- Small Crescent Saberfish
		i(111651),	-- Small Fat Sleeper
		i(111656),	-- Small Fire Ammonite
		i(111650),	-- Small Jawless Skulker
		i(111658),	-- Small Sea Scorpion
		i(118511),	-- Tyfish
		i(118391),	-- Worm Supreme
		filter(RECIPES, {
			i(34109, {	-- Weather-Beaten Journal (RECIPE!)
				["description"] = "Can be fished from schools.",
			}),
		}),
	}),
	prof(HERBALISM, {
		filter(BATTLE_PETS, {
			i(118595, {	-- Nightshade Sproutling (PET!)
				["crs"] = { 95132 },	-- Disturbed Podling
				["requireSkill"] = HERBALISM
			}),
		}),
		spell(2366, {	-- Herb Gathering
			DRAENOR_HERBALISM,
			i(109625),	-- Broken Fireweed Stem
			i(109624),	-- Broken Frostweed Stem
			i(116053),	-- Draenic Seeds
			i(109125),	-- Fireweed
			i(109124),	-- Frostweed
			i(109126),	-- Gorgrond Flytrap
			i(109626),	-- Gorgrond Flytrap Ichor
			i(109128),	-- Nagrand Arrowbloom
			i(109628),	-- Nagrand Arrowbloom Petal
			i(109127),	-- Starflower
			i(109627),	-- Starflower Petal
		}),
	}),
	prof(INSCRIPTION, {
		category(106, {	-- Tarot Cards
			sp(163294, {	-- Darkmoon Card of Draenor
				i(112303, {	-- Iron Deck
					WOD_CRAFTED_ITEM(112319),	-- Knight's Badge
				}),
				i(112304, {	-- Moon Deck
					WOD_CRAFTED_ITEM(112320),	-- Sandman's Pouch
				}),
				i(112305, {	-- Visions Deck
					WOD_CRAFTED_ITEM(112317),	-- Winged Hourglass
				}),
				i(112306, {	-- War Deck
					WOD_CRAFTED_ITEM(112318),	-- Skull of War
				}),
			}),
		}),
		sp(227561, {	-- Tome of the Clear Mind
			i(141640),	-- Tome of the Clear Mind
		}),
		filter(TRINKET_F, {
			i(118602),	-- Laughing Tarot
			i(118601),	-- Ocean Tarot
			i(118603),	-- Savage Tarot
		}),
		filter(HELD_IN_OFF_HAND, {
			i(113270, {	-- Shadowtome
				["timeline"] = { CREATED_9_0_1 },
				["bonusID"] = 585,
			}),
			-- #IF BEFORE 10.0.5
			WOD_CRAFTED_ITEM(113270),	-- Shadowtome
			-- #ELSE
			WOD_CRAFTED_ITEM_DF_BASE(113270, { ["ItemAppearanceModifierID"] = 0 }),	-- Shadowtome
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(113270, 202220),	-- Shadowtome + Impressive Weapon Crystal
			WOD_CRAFTED_ITEM_DF_REMARKABLE(113270, 202221),	-- Shadowtome + Remarkable Weapon Crystal
			-- #ENDIF
		}),
		filter(STAVES, {
			i(113134, {	-- Crystalfire Spellstaff
				["timeline"] = { CREATED_9_0_1 },
				["bonusID"] = 585,
			}),
			i(111526, {	-- Etched-Blade Warstaff
				["timeline"] = { CREATED_9_0_1 },
				["bonusID"] = 585,
			}),
			-- #IF BEFORE 10.0.5
			WOD_CRAFTED_ITEM(113134),	-- Crystalfire Spellstaff
			WOD_CRAFTED_ITEM(111526),	-- Etched-Blade Warstaff
			-- #ELSE
			WOD_CRAFTED_ITEM_DF_BASE(113134, { ["ItemAppearanceModifierID"] = 0 }),	-- Crystalfire Spellstaff
			WOD_CRAFTED_ITEM_DF_BASE(111526, { ["ItemAppearanceModifierID"] = 0 }),	-- Etched-Blade Warstaff
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(113134, 202220),	-- Crystalfire Spellstaff+ Impressive Weapon Crystal
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(111526, 202220),	-- Etched-Blade Warstaff + Impressive Weapon Crystal
			WOD_CRAFTED_ITEM_DF_REMARKABLE(113134, 202221),	-- Crystalfire Spellstaff + Remarkable Weapon Crystal
			WOD_CRAFTED_ITEM_DF_REMARKABLE(111526, 202221),	-- Etched-Blade Warstaff + Remarkable Weapon Crystal
			-- #ENDIF
		}),
		filter(WANDS, {
			i(113131, {	-- Warmaster's Firestick
				["timeline"] = { CREATED_9_0_1 },
				["bonusID"] = 585,
			}),
			-- #IF BEFORE 10.0.5
			WOD_CRAFTED_ITEM(113131),	-- Warmaster's Firestick
			-- #ELSE
			WOD_CRAFTED_ITEM_DF_BASE(113131, { ["ItemAppearanceModifierID"] = 0 }),	-- Warmaster's Firestick
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(113131, 202220),	-- Warmaster's Firestick + Impressive Weapon Crystal
			WOD_CRAFTED_ITEM_DF_REMARKABLE(113131, 202221),	-- Warmaster's Firestick + Remarkable Weapon Crystal
			-- #ENDIF
		}),
		filter(MISC, {
			sp(167950, {	-- Research: Warbinder's Ink
				-- TODO: use this ItemID as 'provider' on Glyph recipes which can ONLY be learned from using it
				i(113992),	-- Scribe's Research Notes
				-- learned:
				-- glyph of the geist
			}),
			i(202220, {["timeline"] = {ADDED_10_0_5}}),	-- Impressive Weapon Crystal
			i(202221, {["timeline"] = {ADDED_10_0_5}}),	-- Remarkable Weapon Crystal
		}),
	}),
	prof(JEWELCRAFTING, {
		filter(NECK_F, {
			i(115990),					-- Glowing Iron Choker
			WOD_CRAFTED_ITEM(115799),	-- Glowing Taladite Pendant
			i(115991),					-- Shifting Iron Choker
			WOD_CRAFTED_ITEM(115800),	-- Shifting Taladite Pendant
			i(115992),					-- Whispering Iron Choker
			WOD_CRAFTED_ITEM(115801),	-- Whispering Taladite Pendant
		}),
		filter(FINGER_F, {
			i(115993),					-- Glowing Blackrock Band
			i(115987),					-- Glowing Iron Band
			WOD_CRAFTED_ITEM(115794),	-- Glowing Taladite Ring
			i(115994),					-- Shifting Blackrock Band
			i(115988),					-- Shifting Iron Band
			WOD_CRAFTED_ITEM(115796),	-- Shifting Taladite Ring
			i(115995),					-- Whispering Blackrock Band
			i(115989),					-- Whispering Iron Band
			WOD_CRAFTED_ITEM(115798),	-- Whispering Taladite Ring
		}),
		filter(MISC, {
			i(112384),	-- Reflecting Prism
		}),
	}),
	prof(LEATHERWORKING, {
		n(ARMOR, {
			n(BACK, {
				-- #IF BEFORE 10.0.5
				WOD_CRAFTED_ITEM(116175, 128014),	-- Brilliant Burnished Cloak + Burnished Essence
				WOD_CRAFTED_ITEM(116174, 128014),	-- Nimble Burnished Cloak + Burnished Essence
				WOD_CRAFTED_ITEM(116171, 128014),	-- Powerful Burnished Cloak + Burnished Essence
				-- #ELSE
				WOD_CRAFTED_ITEM_DF_BASE(116175),	-- Brilliant Burnished Cloak
				WOD_CRAFTED_ITEM_DF_BASE(116174),	-- Nimble Burnished Cloak
				WOD_CRAFTED_ITEM_DF_BASE(116171),	-- Powerful Burnished Cloak
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116175, 202216),	-- Brilliant Burnished Cloak + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116174, 202216),	-- Nimble Burnished Cloak + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116171, 202216),	-- Powerful Burnished Cloak + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116175, 202217),	-- Brilliant Burnished Cloak + Remarkable Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116174, 202217),	-- Nimble Burnished Cloak + Remarkable Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116171, 202217),	-- Powerful Burnished Cloak + Remarkable Burnished Essence
				-- #ENDIF
			}),
			filter(LEATHER, {
				i(116164),	-- Journeying Helm
				i(116165),	-- Journeying Robes
				i(116166),	-- Journeying Slacks
				-- #IF BEFORE 10.0.5
				WOD_CRAFTED_ITEM(116182, 128014),	-- Supple Boots + Burnished Essence
				WOD_CRAFTED_ITEM(116181, 128014),	-- Supple Bracers + Burnished Essence
				WOD_CRAFTED_ITEM(116179, 128014),	-- Supple Gloves + Burnished Essence
				WOD_CRAFTED_ITEM(116177, 128014),	-- Supple Helm + Burnished Essence
				WOD_CRAFTED_ITEM(116178, 128014),	-- Supple Leggings + Burnished Essence
				WOD_CRAFTED_ITEM(116176, 128014),	-- Supple Shoulderguards + Burnished Essence
				WOD_CRAFTED_ITEM(116180, 128014),	-- Supple Vest + Burnished Essence
				WOD_CRAFTED_ITEM(116183, 128014),	-- Supple Waistguard + Burnished Essence
				-- #ELSE
				WOD_CRAFTED_ITEM_DF_BASE(116182),	-- Supple Boots
				WOD_CRAFTED_ITEM_DF_BASE(116181),	-- Supple Bracers
				WOD_CRAFTED_ITEM_DF_BASE(116179),	-- Supple Gloves
				WOD_CRAFTED_ITEM_DF_BASE(116177),	-- Supple Helm
				WOD_CRAFTED_ITEM_DF_BASE(116178),	-- Supple Leggings
				WOD_CRAFTED_ITEM_DF_BASE(116176),	-- Supple Shoulderguards
				WOD_CRAFTED_ITEM_DF_BASE(116180),	-- Supple Vest
				WOD_CRAFTED_ITEM_DF_BASE(116183),	-- Supple Waistguard
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116182, 202216),	-- Supple Boots + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116181, 202216),	-- Supple Bracers + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116179, 202216),	-- Supple Gloves + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116177, 202216),	-- Supple Helm + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116178, 202216),	-- Supple Leggings + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116176, 202216),	-- Supple Shoulderguards + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116180, 202216),	-- Supple Vest + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116183, 202216),	-- Supple Waistguard + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116182, 202217),	-- Supple Boots + Remarkable Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116181, 202217),	-- Supple Bracers + Remarkable Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116179, 202217),	-- Supple Gloves + Remarkable Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116177, 202217),	-- Supple Helm + Remarkable Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116178, 202217),	-- Supple Leggings + Remarkable Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116176, 202217),	-- Supple Shoulderguards + Remarkable Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116180, 202217),	-- Supple Vest + Remarkable Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116183, 202217),	-- Supple Waistguard + Remarkable Burnished Essence
				-- #ENDIF
			}),
			filter(MAIL, {
				i(116167),	-- Traveling Helm
				i(116169),	-- Traveling Leggings
				i(116168),	-- Traveling Tunic
				-- #IF BEFORE 10.0.5
				WOD_CRAFTED_ITEM(116194, 128014),	-- Wayfaring Belt + Burnished Essence
				WOD_CRAFTED_ITEM(116193, 128014),	-- Wayfaring Boots + Burnished Essence
				WOD_CRAFTED_ITEM(116192, 128014),	-- Wayfaring Bracers + Burnished Essence
				WOD_CRAFTED_ITEM(116190, 128014),	-- Wayfaring Gloves + Burnished Essence
				WOD_CRAFTED_ITEM(116188, 128014),	-- Wayfaring Helm + Burnished Essence
				WOD_CRAFTED_ITEM(116189, 128014),	-- Wayfaring Leggings + Burnished Essence
				WOD_CRAFTED_ITEM(116187, 128014),	-- Wayfaring Shoulderguards + Burnished Essence
				WOD_CRAFTED_ITEM(116191, 128014),	-- Wayfaring Tunic + Burnished Essence
				-- #ELSE
				WOD_CRAFTED_ITEM_DF_BASE(116194),	-- Wayfaring Belt
				WOD_CRAFTED_ITEM_DF_BASE(116193),	-- Wayfaring Boots
				WOD_CRAFTED_ITEM_DF_BASE(116192),	-- Wayfaring Bracers
				WOD_CRAFTED_ITEM_DF_BASE(116190),	-- Wayfaring Gloves
				WOD_CRAFTED_ITEM_DF_BASE(116188),	-- Wayfaring Helm
				WOD_CRAFTED_ITEM_DF_BASE(116189),	-- Wayfaring Leggings
				WOD_CRAFTED_ITEM_DF_BASE(116187),	-- Wayfaring Shoulderguards
				WOD_CRAFTED_ITEM_DF_BASE(116191),	-- Wayfaring Tunic
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116194, 202216),	-- Wayfaring Belt + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116193, 202216),	-- Wayfaring Boots + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116192, 202216),	-- Wayfaring Bracers + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116190, 202216),	-- Wayfaring Gloves + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116188, 202216),	-- Wayfaring Helm + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116189, 202216),	-- Wayfaring Leggings + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116187, 202216),	-- Wayfaring Shoulderguards + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_IMPRESSIVE(116191, 202216),	-- Wayfaring Tunic + Impressive Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116194, 202217),	-- Wayfaring Belt + Remarkable Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116193, 202217),	-- Wayfaring Boots + Remarkable Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116192, 202217),	-- Wayfaring Bracers + Remarkable Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116190, 202217),	-- Wayfaring Gloves + Remarkable Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116188, 202217),	-- Wayfaring Helm + Remarkable Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116189, 202217),	-- Wayfaring Leggings + Remarkable Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116187, 202217),	-- Wayfaring Shoulderguards + Remarkable Burnished Essence
				WOD_CRAFTED_ITEM_DF_REMARKABLE(116191, 202217),	-- Wayfaring Tunic + Remarkable Burnished Essence
				-- #ENDIF
			}),
		}),
		filter(MISC, {
			i(128014, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Burnished Essence
			i(116261),	-- Burnished Inscription Bag
			i(110611),	-- Burnished Leather
			i(116259),	-- Burnished Leather Bag
			i(116260),	-- Burnished Mining Bag
			i(120257),	-- Drums of Fury
			i(202216, {["timeline"] = {ADDED_10_0_5}}),	-- Impressive Burnished Essence
			i(116170),	-- Leather Refurbishing Kit
			i(127712, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Mighty Burnished Essence
			i(202217, {["timeline"] = {ADDED_10_0_5}}),	-- Remarkable Burnished Essence
			i(127730, {["timeline"] = {ADDED_6_2_0, REMOVED_10_0_5}}),	-- Savage Burnished Essence
			i(118721),	-- Secret of Draenor Leatherworking
			i(116203, {["timeline"] = {ADDED_6_0_3_LAUNCH, REMOVED_6_2_0}}),	-- Unstable Burnished Essence
			i(116204, {["timeline"] = {ADDED_6_0_3_LAUNCH, REMOVED_6_2_0}}),	-- Unstable Greater Burnished Essence
			i(122537, {["timeline"] = {ADDED_6_1_0, REMOVED_6_2_0}}),	-- Unstable Powerful Burnished Essence
		}),
		filter(MOUNTS, {
			i(108883),	-- Dustmane Direwolf (MOUNT!)
		}),
	}),
	prof(MINING, {
		filter(BATTLE_PETS, {
			i(118919, {	-- Ore Eater (PET!)
				["requireSkill"] = MINING,
			}),
		}),
		spell(2575, {	-- Mining
			DRAENOR_MINING,
			i(109992),	-- Blackrock Fragment
			i(109118),	-- Blackrock Ore
			i(115508),	-- Draenic Stone
			i(109991),	-- True Iron Nugget
			i(109119),	-- True Iron Ore
		}),
	}),
	prof(TAILORING, {
		filter(BAGS, {
			i(114821),	-- Hexweave Bag
		}),
		n(BACK, {
			-- #IF BEFORE 10.0.5
			WOD_CRAFTED_ITEM(114819, 128012),	-- Brilliant Hexweave Cloak + Hexweave Essence
			WOD_CRAFTED_ITEM(114818, 128012),	-- Nimble Hexweave Cloak + Hexweave Essence
			WOD_CRAFTED_ITEM(114817, 128012),	-- Powerful Hexweave Cloak + Hexweave Essence
			-- #ELSE
			WOD_CRAFTED_ITEM_DF_BASE(114819),	-- Brilliant Hexweave Cloak
			WOD_CRAFTED_ITEM_DF_BASE(114818),	-- Nimble Hexweave Cloak
			WOD_CRAFTED_ITEM_DF_BASE(114817),	-- Powerful Hexweave Cloak
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114819, 202218),	-- Brilliant Hexweave Cloak + Impressive Hexweave Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114818, 202218),	-- Nimble Hexweave Cloak + Impressive Hexweave Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114817, 202218),	-- Powerful Hexweave Cloak + Impressive Hexweave Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114819, 202219),	-- Brilliant Hexweave Cloak + Remarkable Hexweave Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114818, 202219),	-- Nimble Hexweave Cloak + Remarkable Hexweave Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114817, 202219),	-- Powerful Hexweave Cloak + Remarkable Hexweave Essence
			-- #ENDIF
		}),
		filter(CLOTH, {
			i(114828),	-- Sumptuous Cowl
			i(114829),	-- Sumptuous Robes
			i(114831),	-- Sumptuous Leggings
			-- #IF BEFORE 10.0.5
			WOD_CRAFTED_ITEM(114816, 128012),	-- Hexweave Belt + Hexweave Essence
			WOD_CRAFTED_ITEM(114814, 128012),	-- Hexweave Bracers + Hexweave Essence
			WOD_CRAFTED_ITEM(114810, 128012),	-- Hexweave Cowl + Hexweave Essence
			WOD_CRAFTED_ITEM(114812, 128012),	-- Hexweave Gloves + Hexweave Essence
			WOD_CRAFTED_ITEM(114811, 128012),	-- Hexweave Leggings + Hexweave Essence
			WOD_CRAFTED_ITEM(114809, 128012),	-- Hexweave Mantle + Hexweave Essence
			WOD_CRAFTED_ITEM(114813, 128012),	-- Hexweave Robe + Hexweave Essence
			WOD_CRAFTED_ITEM(114815, 128012),	-- Hexweave Slippers + Hexweave Essence
			-- #ELSE
			WOD_CRAFTED_ITEM_DF_BASE(114816),	-- Hexweave Belt
			WOD_CRAFTED_ITEM_DF_BASE(114814),	-- Hexweave Bracers
			WOD_CRAFTED_ITEM_DF_BASE(114810),	-- Hexweave Cowl
			WOD_CRAFTED_ITEM_DF_BASE(114812),	-- Hexweave Gloves
			WOD_CRAFTED_ITEM_DF_BASE(114811),	-- Hexweave Leggings
			WOD_CRAFTED_ITEM_DF_BASE(114809),	-- Hexweave Mantle
			WOD_CRAFTED_ITEM_DF_BASE(114813),	-- Hexweave Robe
			WOD_CRAFTED_ITEM_DF_BASE(114815),	-- Hexweave Slippers
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114816, 202218),	-- Hexweave Belt + Impressive Hexweave Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114814, 202218),	-- Hexweave Bracers + Impressive Hexweave Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114810, 202218),	-- Hexweave Cowl + Impressive Hexweave Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114812, 202218),	-- Hexweave Gloves + Impressive Hexweave Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114811, 202218),	-- Hexweave Leggings + Impressive Hexweave Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114809, 202218),	-- Hexweave Mantle + Impressive Hexweave Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114813, 202218),	-- Hexweave Robe + Impressive Hexweave Essence
			WOD_CRAFTED_ITEM_DF_IMPRESSIVE(114815, 202218),	-- Hexweave Slippers + Impressive Hexweave Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114816, 202219),	-- Hexweave Belt + Remarkable Hexweave Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114814, 202219),	-- Hexweave Bracers + Remarkable Hexweave Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114810, 202219),	-- Hexweave Cowl + Remarkable Hexweave Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114812, 202219),	-- Hexweave Gloves + Remarkable Hexweave Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114811, 202219),	-- Hexweave Leggings + Remarkable Hexweave Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114809, 202219),	-- Hexweave Mantle + Remarkable Hexweave Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114813, 202219),	-- Hexweave Robe + Remarkable Hexweave Essence
			WOD_CRAFTED_ITEM_DF_REMARKABLE(114815, 202219),	-- Hexweave Slippers + Remarkable Hexweave Essence
			-- #ENDIF
		}),
		filter(MISC, {
			i(202218, {["timeline"] = {ADDED_10_0_5}}),	-- Impressive Hexweave Essence
			i(202219, {["timeline"] = {ADDED_10_0_5}}),	-- Remarkable Hexweave Essence
		}),
		filter(MOUNTS, {
			i(115363),	-- Creeping Carpet (MOUNT!)
		}),
		filter(BATTLE_PETS, {
			i(113216),	-- Elekk Plushie (PET!)
		}),
	}),
}))));