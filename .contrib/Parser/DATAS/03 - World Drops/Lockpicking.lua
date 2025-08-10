-----------------------------------------------------
--       W O R L D   D R O P S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldDrops, {
	header(HEADERS.Spell, 1810, {	-- Lockpicking
		["description"] = "These containers can be opened by a Rogue with Pick Lock or by using a key of the appropriate level. Items exclusive to the boxes will be listed below.",
		["groups"] = {
			i(169475, {	-- Barnacled Lockbox
				["timeline"] = { ADDED_8_2_0 },
				["sym"] = { {
					"select", "itemID",
					-- Last Updated: 2022-05-02, Crieve. 45 items total, no exclusives.
					-- Weapons
					170118,	-- Centurion's Shortsword
					170116,	-- Darkened Slicer
					170201,	-- Deeptide Scroll
					170114,	-- Flanged Mace
					170120,	-- Handmaiden's Longstaff
					170115,	-- Massive Viridian Claw
					170119,	-- Slithershell Warglaive
					170117,	-- Wavebinder's Rod
					170112,	-- Wavecrash Polearm

					-- Armor
					169400,	-- Deeptide Cover
					169435,	-- Deeptide Drape
					169402,	-- Deeptide Amice
					169425,	-- Deeptide Robe
					169404,	-- Deeptide Cuffs
					169399,	-- Deeptide Gloves
					169403,	-- Deeptide Cinch
					169401,	-- Deeptide Legwraps
					169398,	-- Deeptide Slippers

					169416,	-- Reefwalker Coif
					169431,	-- Reefwalker Cape
					169418,	-- Reefwalker Monnion
					169413,	-- Reefwalker Hauberk
					169420,	-- Reefwalker Coils
					169415,	-- Reefwalker Handlers
					169419,	-- Reefwalker Chain
					169417,	-- Reefwalker Trousers
					169414,	-- Reefwalker Striders

					169408,	-- Slithershell Tricorne
					169434,	-- Slithershell Cloak
					169410,	-- Slithershell Mantle
					169405,	-- Slithershell Vest
					169412,	-- Slithershell Armwraps
					169407,	-- Slithershell Mitts
					169411,	-- Slithershell Belt
					169409,	-- Slithershell Leggings
					169406,	-- Slithershell Boots

					169424,	-- Wavecrash Headguard
					169433,	-- Wavecrash Greatcloak
					169427,	-- Wavecrash Shoulderplates
					169421,	-- Wavecrash Chestplate
					169429,	-- Wavecrash Wristguards
					169423,	-- Wavecrash Crushers
					169428,	-- Wavecrash Buckle
					169426,	-- Wavecrash Greaves
					169422,	-- Wavecrash Smashers
				}},
			}),
			i(16882, {	-- Battered Junkbox
				["groups"] = {
					i(4446),	-- Blackvenom Blade
					i(2567),	-- Evocator's Blade
					i(5756),	-- Sliverblade
					i(4454, {	-- Talon of Vultros
						["timeline"] = { ADDED_7_2_5 },	-- Unclear when exactly. Going with the big return of items in 7.2.5
					}),
				},
				["sym"] = { {
					"select", "itemID",
					11968,	-- Amber Hoop
					4999,	-- Azora's Will
					11984,	-- Cobalt Ring
					11994,	-- Coral Band
					12054,	-- Demon Band
					6375,	-- Formula: Enchant Bracer - Lesser Versatility / CLASSIC: Formula: Enchant Bracer - Lesser Spirit (RECIPE!)
					5002,	-- Glowing Green Talisman
					11969,	-- Jacinth Circle
					6454,	-- Manual: Strong Anti-Venom (RECIPE!)
					12006,	-- Meadow Ring
					7360,	-- Pattern: Dark Leather Gloves (RECIPE!)
					5972,	-- Pattern: Fine Leather Pants (RECIPE!)
					2601,	-- Pattern: Gray Woolen Robe (RECIPE!)
					7092,	-- Pattern: Hands of Darkness (RECIPE!)
					7364,	-- Pattern: Heavy Earthen Gloves (RECIPE!)
					7363,	-- Pattern: Pilferer's Gloves (RECIPE!)
					4350,	-- Pattern: Spider Silk Slippers (RECIPE!)
					6390,	-- Pattern: Stylish Blue Shirt (RECIPE!)
					3611,	-- Plans: Green Iron Boots (RECIPE!)
					6044,	-- Plans: Iron Shield Spike (RECIPE!)
					3608,	-- Plans: Mighty Iron Hammer (RECIPE!)
					5578,	-- Plans: Silvered Bronze Breastplate (RECIPE!)
					10424,	-- Plans: Silvered Bronze Leggings (RECIPE!)
					2882,	-- Plans: Silvered Bronze Shoulders (RECIPE!)
					12007,	-- Prairie Ring
					3396,	-- Recipe: Elixir of Lesser Agility (RECIPE!)
					12008,	-- Savannah Ring
					11967,	-- Zircon Band
				}},
			}),
			i(5760, {	-- Eternium Lockbox
				["sym"] = { {
					"select", "itemID",
					12058,	-- Demonic Bone Ring
				}},
			}),
			i(63349, {	-- Flame-Scarred Junkbox
				["timeline"] = { ADDED_4_0_1 },
				["groups"] = {
					i(68161),	-- Krol Decapitator
					-- #if BEFORE MOP
					i(68162, {	-- Spinerender
						["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
					}),
					-- #endif
					i(68163),	-- The Twilight Blade
				},
			}),
			i(43622, {	-- Froststeel Lockbox
				["timeline"] = { ADDED_3_0_2 },
			}),
			i(88567, {	-- Ghost Iron Lockbox
				["timeline"] = { ADDED_5_0_4 },
			}),
			i(16885, {	-- Heavy Junkbox
				["sym"] = { {
					"select", "itemID",
					1728,	-- Teebu's Blazing Longsword [Discord Confirmation - Luce]
					16215,	-- Formula: Enchant Boots Greater Stamina (RECIPE!)
					16218,	-- Formula: Enchant Bracer Superior Versatility / CLASSIC: Formula: Enchant Bracer - Superior Spirit (RECIPE!)
					14494,	-- Pattern: Brightcloth Pants (RECIPE!)
					15746,	-- Pattern: Chimeric Leggings (RECIPE!)
					15755,	-- Pattern: Chimeric Vest (RECIPE!)
					15743,	-- Pattern: Heavy Scorpid Belt (RECIPE!)
					14499,	-- Pattern: Mooncloth Bag (RECIPE!)
					12689,	-- Plans: Radiant Breastplate (RECIPE!)
					12695,	-- Plans: Radiant Gloves (RECIPE!)
					12683,	-- Plans: Thorium Belt (RECIPE!)
					12693,	-- Plans: Thorium Boots (RECIPE!)
					12684,	-- Plans: Thorium Bracers (RECIPE!)
					12694,	-- Plans: Thorium Helm (RECIPE!)
					12704,	-- Plans: Thorium Leggings (RECIPE!)
					12691,	-- Plans: Wildthorn Mail (RECIPE!)
					2163,	-- Shadowblade
					12044,	-- Arctic Pendant
					12014,	-- Arctic Ring
					-- #if AFTER TBC
					21953,	-- Design: Emerald Owl (RECIPE!)
					21949,	-- Design: Ruby Serpent (RECIPE!)
					-- #endif
					12057,	-- Dragonscale Band
					12046,	-- Jungle Necklace
					12002,	-- Marble Circle
					12034,	-- Marble Necklace
					12004,	-- Obsidian Band
					12035,	-- Obsidian Pendant
					12026,	-- Quicksilver Pendant
					11991,	-- Quicksilver Ring
					12056,	-- Ring Of The Heavens
					11976,	-- Sardonyx Knuckle
					12025,	-- Selenium Chain
					11990,	-- Selenium Loop
					11977,	-- Serpentine Loop
					12055,	-- Stardust Band
					12015,	-- Swamp Ring
					11989,	-- Vanadium Loop
				}},
			}),
			i(4634,	{	-- Iron Lockbox
				["sym"] = { {
					"select", "itemID",
					11164,	-- Formula: Enchant Weapon - Lesser Beastslayer (RECIPE!)
					7449,	-- Pattern: Dusky Leather Leggings (RECIPE!)
					5774,	-- Pattern: Green Silk Pack (RECIPE!)
					7450,	-- Pattern: Green Whelp Armor (RECIPE!)
					4299,	-- Pattern: Guardian Armor (RECIPE!)
					3867,	-- Plans: Golden Iron Destroyer (RECIPE!)
					-- #if SEASON_OF_DISCOVERY
					217286,	-- Plans: Golden Scale Leggings (RECIPE!)
					-- #endif
					3872,	-- Plans: Golden Scale Leggings (RECIPE!)
					3611,	-- Plans: Green Iron Boots (RECIPE!)
					3870,	-- Plans: Green Iron Shoulders (RECIPE!)
					6045,	-- Plans: Iron Counterweight (RECIPE!)
					3830,	-- Recipe: Elixir of Fortitude (RECIPE!)
					10601,	-- Schematic: Bright-Eye Goggles (RECIPE!)
					4416,	-- Schematic: Goblin Land Mine (RECIPE!)
					4414,	-- Schematic: Portable Bronze Mortar (RECIPE!)
					13063,	-- Starfaller
				}},
				["groups"] = {
					i(7678,	{	-- Recipe: Thistle Tea (RECIPE!)
						["timeline"] = { ADDED_10_1_7 },
					}),
				},
			}),
			i(31952, {	-- Khorium Lockbox
				["timeline"] = { ADDED_2_1_0 },
			}),
			i(188787, {	-- Locked Broker Luggage
				["timeline"] = { ADDED_9_2_0 },
			}),
			i(186160, {	-- Locked Artifact Case
				["timeline"] = { ADDED_9_1_0 },
				["sym"] = { {
					"select", "itemID",
					-- Last Updated: 2022-05-02, Crieve. 28 items total, no exclusives.
					-- This is the style I'd like to see used for all lockboxes. Exclusives should be listed in the lockboxes themselves and non-exclusive items should be linked with a symlink.
					-- Weapons
					186143,	-- Mawsworn Assassin's Backstabber
					186151,	-- Mawsworn Assassin's Twinblade
					186147,	-- Mawsworn Battle Hammer
					186149,	-- Mawsworn Collector's Gavel
					186142,	-- Mawsworn Darkcaster's Kris
					186140,	-- Mawsworn Darkcaster's Orb
					186150,	-- Mawsworn Darkcaster's Stave
					186154,	-- Mawsworn Guard's Cleaver
					186139,	-- Mawsworn Javeliner's Targe
					186144,	-- Mawsworn Reaver's Greataxe
					186141,	-- Mawsworn Scout's Quickshot Bow
					186146,	-- Mawsworn Sentry's Cudgel
					186148,	-- Mawsworn Vanquisher's Spire

					-- Armor
					186116,	-- Mawsworn Assassin's Hood
					186137,	-- Mawsworn Assassin's Shoulderpads
					186119,	-- Mawsworn Assassin's Bracers
					186114,	-- Mawsworn Assassin's Boots

					186110,	-- Mawsworn Darkcaster's Crest
					186107,	-- Mawsworn Darkcaster's Robes
					186109,	-- Mawsworn Darkcaster's Handwraps
					186112,	-- Mawsworn Darkcaster's Cinch

					186128,	-- Mawsworn Guard's Helm
					186129,	-- Mawsworn Guard's Breastplate
					186132,	-- Mawsworn Guard's Legguards

					186120,	-- Mawsworn Scout's Chainmail
					186126,	-- Mawsworn Scout's Cincture

					186152,	-- Mawsworn Lieutenant's Cloak

					-- Accessories
					186145,	-- Stygian Thorn Loop
				}},
			}),
			i(5758,	{	-- Mithril Lockbox
				i(7678,	{	-- Recipe: Thistle Tea (RECIPE!)
					["timeline"] = { ADDED_10_1_7 },
				}),
			}),
			i(4632, {	-- Ornate Bronze Lockbox
				i(7678,	{	-- Recipe: Thistle Tea (RECIPE!)
					["timeline"] = { ADDED_10_1_7 },
				}),
			}),
			i(180532, {	-- Oxxein Lockbox
				["timeline"] = { ADDED_9_0_2_LAUNCH },
			}),
			i(180522, {	-- Phaedrum Lockbox
				["timeline"] = { ADDED_9_0_2_LAUNCH },
			}),
			i(43575, {	-- Reinforced Junkbox
				["timeline"] = { ADDED_3_0_2 },
				["groups"] = {
					i(43611, {	-- Krol Cleaver
						["timeline"] = { ADDED_3_0_2 },
					}),
					i(43612, {	-- Spineslicer
						["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
					}),
					i(43613, {	-- The Dusk Blade
						["timeline"] = { ADDED_3_0_2 },
					}),
					i(2892, {	-- Empty Poison Vial
						["timeline"] = { ADDED_5_0_4 },
					}),
					i(6947, {	-- Empty Poison Vial
						["timeline"] = { ADDED_5_0_4 },
					}),
					i(5237, {	-- Empty Poison Vial
						["timeline"] = { ADDED_5_0_4 },
					}),
					i(10918, {	-- Empty Poison Vial
						["timeline"] = { ADDED_5_0_4 },
					}),
				},
			}),
			i(4638, {	-- Reinforced Steel Lockbox
				["sym"] = { {
					"select", "itemID",
					-- #if AFTER TBC
					21947,	-- Design: Gem Studded Band (RECIPE!)
					21945,	-- Design: The Aquamarine Ward (RECIPE!)
					-- #endif
					16215,	-- Formula: Enchant Boots - Greater Stamina (RECIPE!)
					11225,	-- Formula: Enchant Bracer - Greater Stamina (RECIPE!)
					16218,	-- Formula: Enchant Bracer - Superior Versatility / CLASSIC: Formula: Enchant Bracer - Superior Spirit (RECIPE!)
					11208,	-- Formula: Enchant Weapon - Demonslaying (RECIPE!)
					8390,	-- Pattern: Big Voodoo Cloak (RECIPE!)
					8387,	-- Pattern: Big Voodoo Mask (RECIPE!)
					8389,	-- Pattern: Big Voodoo Pants (RECIPE!)
					14467,	-- Pattern: Frostweave Robe (RECIPE!)
					10320,	-- Pattern: Red Mageweave Headband (RECIPE!)
					10302,	-- Pattern: Red Mageweave Pants (RECIPE!)
					10315,	-- Pattern: Red Mageweave Shoulders (RECIPE!)
					7993,	-- Plans: Dazzling Mithril Rapier (RECIPE!)
					7990,	-- Plans: Heavy Mithril Helm (RECIPE!)
					7989,	-- Plans: Mithril Spurs (RECIPE!)
					12683,	-- Plans: Thorium Belt (RECIPE!)
					9295,	-- Recipe: Invisibility Potion (RECIPE!)
					3395 	-- Recipe: Limited Invulnerability Potion (RECIPE!)
				}},
			}),
			i(190954, {	-- Serevite Lockbox
				["timeline"] = { ADDED_10_0_2_LAUNCH },
				-- ["sym"] = {{"select","itemID",
				-- 	-- add notable Item IDs here, uncomment if adding any id's
				-- 	-- 12345,	-- Item name
				-- }},
				-- do not list raw content unless lockbox is only confirmed source
				-- ["groups"] = {
				-- },
			}),
			i(180533, {	-- Solenium Lockbox
				["timeline"] = { ADDED_9_0_2_LAUNCH },
			}),
			i(4637, {	-- Steel Lockbox
				["sym"] = { {
					"select", "itemID",
					11204,	-- Formula: Enchant Bracer - Greater Versatility / CLASSIC: Formula: Enchant Bracer - Greater Versatility (RECIPE!)
					11202,	-- Formula: Enchant Shield - Stamina (RECIPE!)
					8387,	-- Pattern: Big Voodoo Mask (RECIPE!)
					8386,	-- Pattern: Big Voodoo Robe (RECIPE!)
					10312,	-- Pattern: Red Mageweave Gloves (RECIPE!)
					10300,	-- Pattern: Red Mageweave Vest (RECIPE!)
					8385,	-- Pattern: Turtle Scale Gloves (RECIPE!)
					10301,	-- Pattern: White Bandit Mask (RECIPE!)
					7992,	-- Plans: Blue Glittering Axe (RECIPE!)
					7975,	-- Plans: Heavy Mithril Pants (RECIPE!)
					7976,	-- Plans: Mithril Shield Spike (RECIPE!)
					3874,	-- Plans: Polished Steel Boots (RECIPE!)
					8029,	-- Plans: Wicked Mithril Blade (RECIPE!)
					9295,	-- Recipe: Invisibility Potion (RECIPE!)
					10603,	-- Schematic: Catseye Ultra Goggles (RECIPE!)
					10606	-- Schematic: Parachute Cloak (RECIPE!)
				}},
			}),
			i(4636, {	-- Strong Iron Lockbox
				["sym"] = { {
					"select", "itemID",
					11167,	-- Formula: Enchant Boots - Lesser Versatility / CLASSIC: Formula: Enchant Boots - Lesser Spirit (RECIPE!)
					11165,	-- Formula: Enchant Weapon - Lesser Elemental Slayer (RECIPE!)
					7085,	-- Pattern: Azure Shoulders (RECIPE!)
					7086,	-- Pattern: Earthen Silk Belt (RECIPE!)
					5974,	-- Pattern: Guardian Cloak (RECIPE!)
					4300,	-- Pattern: Guardian Leather Bracers (RECIPE!)
					10300,	-- Pattern: Red Mageweave Vest (RECIPE!)
					4353,	-- Pattern: Spider Belt (RECIPE!)
					8385,	-- Pattern: Turtle Scale Gloves (RECIPE!)
					10301,	-- Pattern: White Bandit Mask (RECIPE!)
					3874,	-- Plans: Polished Steel Boots (RECIPE!)
					3869,	-- Plans: Shadow Crescent Axe (RECIPE!)
					3830,	-- Recipe: Elixir of Fortitude (RECIPE!)
					3831,	-- Recipe: Major Troll's Blood Elixir (RECIPE!)
					10601,	-- Schematic: Bright-Eye Goggles (RECIPE!)
					4416,	-- Schematic: Goblin Land Mine (RECIPE!)
					4417,	-- Schematic: Large Seaforium Charge (RECIPE!)
					10606,	-- Schematic: Parachute Cloak (RECIPE!)
					4414	-- Schematic: Portable Bronze Mortar (RECIPE!)
				}},
				["groups"] = {
					i(7678,	{	-- Recipe: Thistle Tea (RECIPE!)
						["timeline"] = { ADDED_10_1_7 },
					}),
				},
			}),
			i(29569, {	-- Strong Junkbox
				["timeline"] = { ADDED_2_0_1 },
				["sym"] = { {
					"select", "itemID",
					4354,	-- Pattern: Rich Purple Silk Shirt (RECIPE!) [Discord Confirmation - Luce]
					12002,	-- Formula: Enchant Bracer Superior Stamina (RECIPE!)
					12713,	-- Plans: Radiant Leggings (RECIPE!)
					2163,	-- The Night Blade
					12046,	-- Dragonscale Band
					12034,	-- Granite Necklace
					12004,	-- Jungle Ring
					12035,	-- Obsidian Band
					14494,	-- Obsidian Pendant
					12048,	-- Prismatic Pendant
					12026,	-- Quicksilver Pendant
					14499,	-- Quicksilver Ring
					12056,	-- Ring Of The Heavens
					12045,	-- Swamp Pendant
					12027	-- Vermilion Necklace
				}},
				-- #if BEFORE MOP
				["groups"] = {
					-- CRIEVE NOTE: This is the ONLY valid source, please don't remove.
					i(34622, {	-- Spinesever
						["timeline"] = { ADDED_2_3_0, REMOVED_5_0_4 },
					}),
				},
				-- #endif
			}),
			i(16884, {	-- Sturdy Junkbox
				["sym"] = { {
					"select", "itemID",
					11974,	-- Aquamarine Ring
					12043,	-- Desert Choker
					-- #if AFTER TBC
					21947,	-- Design: Gem Studded Band (RECIPE!)
					21945,	-- Design: The Aquamarine Ward (RECIPE!)
					21944,	-- Design: Truesilver Boar (RECIPE!)
					-- #endif
					7552,	-- Falcon's Hook
					12011,	-- Forest Loop
					11225,	-- Formula: Enchant Bracer - Greater Stamina (RECIPE!)
					11204,	-- Formula: Enchant Bracer - Greater Versatility / CLASSIC: Formula: Enchant Bracer - Greater Versatility (RECIPE!)
					11973,	-- Hematite Link
					11987,	-- Iridium Circle
					11999,	-- Lodestone Hoop
					12031,	-- Lodestone Necklace
					12042,	-- Marsh Chain
					12012,	-- Marsh Ring
					12001,	-- Onyx Ring
					8387,	-- Pattern: Big Voodoo Mask (RECIPE!)
					8389,	-- Pattern: Big Voodoo Pants (RECIPE!)
					8386,	-- Pattern: Big Voodoo Robe (RECIPE!)
					10320,	-- Pattern: Red Mageweave Headband (RECIPE!)
					8385,	-- Pattern: Turtle Scale Gloves (RECIPE!)
					10301,	-- Pattern: White Bandit Mask (RECIPE!)
					7990,	-- Plans: Heavy Mithril Helm (RECIPE!)
					8029,	-- Plans: Wicked Mithril Blade (RECIPE!)
					9298,	-- Recipe: Elixir of Giants (RECIPE!)
					9295,	-- Recipe: Invisibility Potion (RECIPE!)
					3395,	-- Recipe: Limited Invulnerability Potion (RECIPE!)
					10603,	-- Schematic: Catseye Ultra Goggles (RECIPE!)
					10606,	-- Schematic: Parachute Cloak (RECIPE!)
					11988,	-- Tellurium Band
					11975,	-- Topaz  Ring
					12024	-- Vanadium Talisman
				}},
			}),
			i(179311, {	-- Synvir Lockbox
				["timeline"] = { ADDED_9_0_2_LAUNCH },
			}),
			i(5759, {	-- Thorium Lockbox
			}),
			i(116920, {	-- True Steel Lockbox
				["timeline"] = { ADDED_6_0_2 },
				["sym"] = { {
					"select", "itemID",
				--	n(WEAPONS, {
					116721, -- Ancestral Branch
					116619, -- Ancestral Scepter
					116615, -- Ancestral Spellblade
					116626, -- Ancestral Wand
					116610, -- Gorian Axe
					116611, -- Gorian Broadaxe
					116612, -- Gorian Bow
					116613, -- Gorian Crossbow
					116614, -- Gorian Dagger
					116616, -- Gorian Knuckles
					116625, -- Gorian Greatsword
					116617, -- Gorian Gun
					116620, -- Gorian Hammer
					116618, -- Gorian Mace
					116621, -- Gorian Spear
					116622, -- Gorian Staff
					116623, -- Gorian Staff
					116624, -- Gorian Sword
					116627, -- Howling Axe
					116628, -- Howling Broadaxe
					116629, -- Howling Bow
					116630, -- Howling Crossbow
					116631, -- Howling Dagger
					116642, -- Howling Greatsword
					116634, -- Howling Gun
					116637, -- Howling Hammer
					116633, -- Howling Knuckles
					116635, -- Howling Mace
					116638, -- Howling Spear
					116639, -- Howling Staff
					116640, -- Howling Staff
					116641, -- Howling Sword
					116724, -- Oshu'gun Basin
					116636, -- Oshu'gun Scepter
					116632, -- Oshu'gun Spellblade
					116643,	-- Oshu'gun Wand
				--	filter(CLOAKS, {
					116720, -- Ancestral Cloak
					116723,	-- Oshu'gun Cloak
				--	filter(CLOTH, {
					106737, -- Dark Star Cord
					106738, -- Dark Star Cowl
					106739, -- Dark Star Handwraps
					106740, -- Dark Star Leggings
					106741, -- Dark Star Robe
					106742, -- Dark Star Sandals
					106743, -- Dark Star Shoulderpads
					106744, -- Dark Star Wristwraps
					106704, -- Voidwrap Cord
					106705, -- Voidwrap Cowl
					106706, -- Voidwrap Handwraps
					106707, -- Voidwrap Leggings
					106708, -- Voidwrap Robe
					106709, -- Voidwrap Sandals
					106710, -- Voidwrap Shoulderpads
					106711,	-- Voidwrap Wristwraps
				--	filter(LEATHER, {
					106729, -- Meadowstomper Bindings
					106730, -- Meadowstomper Boots
					106731, -- Meadowstomper Britches
					106732, -- Meadowstomper Gloves
					106733, -- Meadowstomper Hood
					106734, -- Meadowstomper Jerkin
					106735, -- Meadowstomper Shoulders
					106736, -- Meadowstomper Waistband
					106696, -- Sabermaw Bindings
					106697, -- Sabermaw Boots
					106698, -- Sabermaw Britches
					106699, -- Sabermaw Gloves
					106700, -- Sabermaw Hood
					106701, -- Sabermaw Jerkin
					106702, -- Sabermaw Shoulders
					106703,	-- Sabermaw Waistband
				--	filter(MAIL, {
					106745, -- Packrunner Belt
					106746, -- Packrunner Bracers
					106747, -- Packrunner Gauntlets
					106748, -- Packrunner Greaves
					106749, -- Packrunner Helm
					106750, -- Packrunner Legguards
					106751, -- Packrunner Spaulders
					106752, -- Packrunner Vest
					106712, -- Sunspring Belt
					106713, -- Sunspring Bracers
					106714, -- Sunspring Gauntlets
					106715, -- Sunspring Greaves
					106716, -- Sunspring Helm
					106717, -- Sunspring Legguards
					106718, -- Sunspring Spaulders
					106719,	-- Sunspring Vest
				--	filter(PLATE, {
					106687, -- Ironfist Breastplate
					106688, -- Ironfist Gauntlets
					106689, -- Ironfist Girdle
					106690, -- Ironfist Helm
					106691, -- Ironfist Legplates
					106692, -- Ironfist Pauldrons
					106693, -- Ironfist Sabatons
					106695, -- Ironfist Vambraces
					106720, -- Stonecrag Breastplate
					106721, -- Stonecrag Gauntlets
					106722, -- Stonecrag Girdle
					106723, -- Stonecrag Helm
					106724, -- Stonecrag Legplates
					106725, -- Stonecrag Pauldrons
					106726, -- Stonecrag Sabatons
					106728,	-- Stonecrag Vambraces
				}},
			}),
			i(88165, {	-- Vine-Cracked Junkbox
				["timeline"] = { ADDED_5_0_4 },
				["groups"] = {
					i(88150),	-- Krol Scimitar
					i(88149),	-- The Gloaming Blade
				},
			}),
		},
	}),
});
