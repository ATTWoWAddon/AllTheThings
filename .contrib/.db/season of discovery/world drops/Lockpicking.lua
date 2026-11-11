-----------------------------------------------------
--       W O R L D   D R O P S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldDrops, {
	header(HEADERS.Spell, 1810, {	-- Lockpicking
		description = "These containers can be opened by a Rogue with Pick Lock or by using a key of the appropriate level. Items exclusive to the boxes will be listed below.",
		groups = {
			i(16882, {	-- Battered Junkbox
				timeline = { ADDED_1_11_1 },
				groups = {
					i(4446),	-- Blackvenom Blade
					i(2567),	-- Evocator's Blade
					i(5756),	-- Sliverblade
				},
				sym = { {
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
				sym = { {
					"select", "itemID",
					12058,	-- Demonic Bone Ring
				}},
			}),
			i(4633),	-- Heavy Bronze Lockbox
			i(16885, {	-- Heavy Junkbox
				sym = { {
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
				sym = { {
					"select", "itemID",
					11164,	-- Formula: Enchant Weapon - Lesser Beastslayer (RECIPE!)
					7449,	-- Pattern: Dusky Leather Leggings (RECIPE!)
					5774,	-- Pattern: Green Silk Pack (RECIPE!)
					7450,	-- Pattern: Green Whelp Armor (RECIPE!)
					4299,	-- Pattern: Guardian Armor (RECIPE!)
					3867,	-- Plans: Golden Iron Destroyer (RECIPE!)
					217286,	-- Plans: Golden Scale Leggings (RECIPE!)
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
			}),
			i(5758,	{	-- Mithril Lockbox
			}),
			i(4632),	-- Ornate Bronze Lockbox
			i(4638, {	-- Reinforced Steel Lockbox
				sym = { {
					"select", "itemID",
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
					3395	-- Recipe: Limited Invulnerability Potion (RECIPE!)
				}},
			}),
			i(4637, {	-- Steel Lockbox
				sym = { {
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
				sym = { {
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
			}),
			i(16884, {	-- Sturdy Junkbox
				sym = { {
					"select", "itemID",
					11974,	-- Aquamarine Ring
					12043,	-- Desert Choker
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
			i(5759),	-- Thorium Lockbox
			i(16883),	-- Worn Junkbox
		},
	}),
});
