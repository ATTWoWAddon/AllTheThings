---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
root(ROOTS.Craftables, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_1_LAUNCH } }, {
	i(232875),	-- Spark of Radiance
	n(DECOR, {
		o_repeated({	-- Dornic Fir Lumber
			["maps"] = {
				MAP.MIDNIGHT.EVERSONG_WOODS,
				MAP.MIDNIGHT.SILVERMOON_CITY,
				MAP.MIDNIGHT.HARANDAR,
				MAP.MIDNIGHT.VOIDSTORM,
				MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR,
				MAP.MIDNIGHT.ZULAMAN,
				MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR,
			},
			["groups"] = {
				-- Objects
				o(618517),	-- [Eversong Woods/Silvermoon City]
				o(618520),	-- [Harandar]
				o(618519),	-- [Voidstorm/Masters' Perch]
				o(618518),	-- [Zul'Aman/Atal'Aman]
				-- Drops
				i(256963),	-- Thalassian Lumber
			},
		}),
	}),
	prof(ALCHEMY, {
		filter(CONSUMABLES, {
			i(241299),	-- Amani Extract+
			i(241298),	-- Amani Extract++
			i(241319, {	-- Cauldron of Sin'dorei Flasks+
				i(245927),	-- Fleeting Flask of Thalassian Resistance+
				i(245930),	-- Fleeting Flask of the Blood Knights+
				i(245932),	-- Fleeting Flask of the Magisters+
				i(245928),	-- Fleeting Flask of the Shattered Sun+
			}),
			i(241318, {	-- Cauldron of Sin'dorei Flasks++
				i(245926),	-- Fleeting Flask of Thalassian Resistance++
				i(245931),	-- Fleeting Flask of the Blood Knights++
				i(245933),	-- Fleeting Flask of the Magisters++
				i(245929),	-- Fleeting Flask of the Shattered Sun++
			}),
			i(241293),	-- Draught of Rampant Abandon+
			i(241292),	-- Draught of Rampant Abandon++
			i(241339),	-- Enlightenment Tonic+
			i(241338),	-- Enlightenment Tonic++
			i(268954),	-- Entropic Extract+
			i(268955),	-- Entropic Extract++
			i(241321),	-- Flask of Thalassian Resistance+
			i(241320),	-- Flask of Thalassian Resistance++
			i(241325),	-- Flask of the Blood Knights+
			i(241324),	-- Flask of the Blood Knights++
			i(241323),	-- Flask of the Magisters+
			i(241322),	-- Flask of the Magisters++
			i(241327),	-- Flask of the Shattered Sun+
			i(241326),	-- Flask of the Shattered Sun++
			i(241311),	-- Haranir Phial of Finesse+
			i(241310),	-- Haranir Phial of Finesse++
			i(241313),	-- Haranir Phial of Ingenuity+
			i(241312),	-- Haranir Phial of Ingenuity++
			i(241317),	-- Haranir Phial of Perception+
			i(241316),	-- Haranir Phial of Perception++
			i(241309),	-- Light's Potential+
			i(241308),	-- Light's Potential++
			i(241287),	-- Light's Preservation+
			i(241286),	-- Light's Preservation++
			i(241301),	-- Lightfused Mana Potion+
			i(241300),	-- Lightfused Mana Potion++
			i(241295),	-- Potion of Devoured Dreams+
			i(241294),	-- Potion of Devoured Dreams++
			i(241289),	-- Potion of Recklessness+
			i(241288),	-- Potion of Recklessness++
			i(241297),	-- Potion of Zealotry+
			i(241296),	-- Potion of Zealotry++
			i(241307),	-- Refreshing Serum+
			i(241306),	-- Refreshing Serum++
			i(241305),	-- Silvermoon Health Potion+
			i(241304),	-- Silvermoon Health Potion++
			i(241334),	-- Vicious Thalassian Flask of Honor
			i(241303),	-- Void-Shrouded Tincture+
			i(241302),	-- Void-Shrouded Tincture++
			i(241285, {	-- Voidlight Potion Cauldron+
				i(245897),	-- Fleeting Light's Potential+
			}),
			i(241284, {	-- Voidlight Potion Cauldron++
				i(245898),	-- Fleeting Light's Potential++
			}),
		}),
		n(DECOR, {
			i(262355),	-- Entropic Illuminant (DECOR!)
			i(262356),	-- Haranir Preserving Agents (DECOR!)
			i(262354),	-- Riftstone (DECOR!)
			i(253506),	-- Rootbound Vat (DECOR!)
			i(257420),	-- Silvermoon Spire Fountain (DECOR!)
			i(256356),	-- Sunsmoke Censer (DECOR!)
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = ALCHEMY,
		},{
			fc(1230864),	-- Amani Extract
			fc(1230892),	-- Bouquet of Herbs
			fc(1230891),	-- Box of Rocks
			fc(1230874),	-- Cauldron of Sin'dorei Flasks
			fc(1230855),	-- Composite Flora
			fc(1230860),	-- Draught of Rampant Abandon
			fc(1230886),	-- Enlightenment Tonic
			fc(1230854),	-- Entropic Extract
			fc(1230875),	-- Flask of Thalassian Resistance
			fc(1230876),	-- Flask of the Magisters
			fc(1230877),	-- Flask of the Blood Knights
			fc(1230878),	-- Flask of the Shattered Sun
			fc(1230870),	-- Haranir Phial of Finesse
			fc(1230872),	-- Haranir Phial of Ingenuity
			fc(1230873),	-- Haranir Phial of Perception
			fc(1230865),	-- Lightfused Mana Potion
			fc(1230858),	-- Light's Preservation
			fc(1230869),	-- Light's Potential
			fc(1230885),	-- Magister's Alchemist Stone
			fc(1230859),	-- Potion of Recklessness
			fc(1230862),	-- Potion of Devoured Dreams
			fc(1230863),	-- Potion of Zealotry
			fc(1230861),	-- Primal Philosopher's Stone
			fc(1230868),	-- Refreshing Serum
			fc(1230893),	-- School of Gems
			fc(1230866),	-- Silvermoon Health Potion
			fc(1230887),	-- Transmute: Mote of Wild Magic
			fc(1230888),	-- Transmute: Mote of Pure Void
			fc(1230889),	-- Transmute: Mote of Primal Energy
			fc(1230890),	-- Transmute: Mote of Light
			fc(1230883),	-- Vicious Thalassian Flask of Honor
			fc(1230857),	-- Voidlight Potion Cauldron
			fc(1230867),	-- Void-Shrouded Tincture
			fc(1230856),	-- Wondrous Synergist
		})),
		filter(MISC, {
			i(245650),	-- Bouquet of Herbs+
			i(245651),	-- Bouquet of Herbs++
			i(242650),	-- Box of Rocks+
			i(245644),	-- Box of Rocks++
			i(245647),	-- School of Gems+
			i(245648),	-- School of Gems++
		}),
		filter(REAGENTS, {
			i(241281),	-- Composite Flora+
			i(241280),	-- Composite Flora++
			i(236949),	-- Mote of Light
			i(236950),	-- Mote of Primal Energy
			i(236952),	-- Mote of Pure Void
			i(236951),	-- Mote of Wild Magic
			i(242651),	-- Stabilized Derivate
			i(241283),	-- Wondrous Synergist+
			i(241282),	-- Wondrous Synergist++
		}),
		filter(TRINKET_F, {
			i(241340),	-- Magister's Alchemist Stone
			i(241291),	-- Primal Philosopher's Stone
		}),
	}),
	prof(BLACKSMITHING, {
		n(ARMOR, {
			i(237921),	-- Blood-Tempered Basinet
			i(237923),	-- Blood-Tempered Bracers
			i(237920),	-- Blood-Tempered Bulwark
			i(237918),	-- Blood-Tempered Chestplate
			i(237925),	-- Blood-Tempered Gauntlets
			i(237919),	-- Blood-Tempered Greatbelt
			i(237917),	-- Blood-Tempered Greaves
			i(237922),	-- Blood-Tempered Leggings
			i(237924),	-- Blood-Tempered Pauldrons
			i(244472),	-- Knight-Commander's Palisade
			i(244463),	-- Murder Row Fleet Feet
			i(237834),	-- Spellbreaker's Bracers
			i(237832),	-- Spellbreaker's Cover
			i(237830),	-- Spellbreaker's Girdle
			i(237833),	-- Spellbreaker's Legguards
			i(237835),	-- Spellbreaker's Mantle
			i(237828),	-- Spellbreaker's March
			i(237831),	-- Spellbreaker's Rebuke
			i(237836),	-- Spellbreaker's Resolve
			i(237829),	-- Spellbreaker's Shelter
			i(237908),	-- Thalassian Competitor's Plate Armguards
			i(237901),	-- Thalassian Competitor's Plate Breastplate
			i(237903),	-- Thalassian Competitor's Plate Gauntlets
			i(237905),	-- Thalassian Competitor's Plate Greaves
			i(237904),	-- Thalassian Competitor's Plate Helm
			i(237906),	-- Thalassian Competitor's Plate Pauldrons
			i(237902),	-- Thalassian Competitor's Plate Sabatons
			i(237907),	-- Thalassian Competitor's Plate Waistguard
		}),
		filter(CONSUMABLES, {
			i(237372),	-- Refulgent Razorstone+
			i(237373),	-- Refulgent Razorstone++
			i(238209),	-- Refulgent Repair Hammer
			i(237367),	-- Refulgent Weightstone+
			i(237369),	-- Refulgent Weightstone++
			i(237370),	-- Refulgent Whetstone+
			i(237371),	-- Refulgent Whetstone++
			i(260232),	-- Thalassian Skeleton Key
		}),
		n(DECOR, {
			i(262451),	-- Gilded Silvermoon Anvil (DECOR!)
			i(262457),	-- Gilded Silvermoon Hanger (DECOR!)
			i(262452),	-- Masterwork Crafting Hammer (DECOR!)
			i(262456),	-- Ornamental Silvermoon Hanger (DECOR!)
			i(262460),	-- Ren'dorei Anvil (DECOR!)
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = BLACKSMITHING,
		},{
			fc(1229648),	-- Blood Knight's Warblade
			fc(1229652),	-- Blood Knight's Mercy
			fc(1229653),	-- Blood Knight's Impetus
			fc(1229621),	-- Blood-Tempered Gauntlets
			fc(1229622),	-- Blood-Tempered Pauldrons
			fc(1229623),	-- Blood-Tempered Bracers
			fc(1229624),	-- Blood-Tempered Leggings
			fc(1229625),	-- Blood-Tempered Basinet
			fc(1229626),	-- Blood-Tempered Bulwark
			fc(1229627),	-- Blood-Tempered Greatbelt
			fc(1229628),	-- Blood-Tempered Chestplate
			fc(1229629),	-- Blood-Tempered Greaves
			fc(1229649),	-- Bloomforged Claw
			fc(1229655),	-- Bloomforged Greataxe
			fc(1229615),	-- Dawnforged Splitter
			fc(1229616),	-- Dawnforged War Mace
			fc(1229618),	-- Dawnforged Long Blade
			fc(1229619),	-- Dawnforged Edge
			fc(1229620),	-- Dawnforged Ritual Knife
			fc(1229646),	-- Farstrider's Chopper
			fc(1229659),	-- Farstrider's Mercy
			fc(1230762),	-- Gloaming Alloy
			fc(1230767),	-- Knight-Commander's Palisade
			fc(1229647),	-- Magister's Valediction
			fc(1229650),	-- Magister's Ritual Knife
			fc(1229651),	-- Magister's Mana Sword
			fc(1229654),	-- Magister's Cleaver
			fc(1230766),	-- Murder Row Fleet Feet
			fc(1230768),	-- Murder Row Fishhook
			fc(1229614),	-- Primalforged Heavy Axe
			fc(1229617),	-- Primalforged Knuckles
			fc(1230758),	-- Refulgent Whetstone
			fc(1230759),	-- Refulgent Weightstone
			fc(1230760),	-- Refulgent Razorstone
			fc(1230761),	-- Refulgent Copper Ingot
			fc(1230764),	-- Refulgent Repair Hammer
			fc(1229656),	-- Spellbreaker's Ultimatum
			fc(1229657),	-- Spellbreaker's Warglaive
			fc(1229658),	-- Spellbreaker's Blade
			fc(1229660),	-- Spellbreaker's Resolve
			fc(1229661),	-- Spellbreaker's Mantle
			fc(1229662),	-- Spellbreaker's Bracers
			fc(1229663),	-- Spellbreaker's Legguards
			fc(1229664),	-- Spellbreaker's Cover
			fc(1229665),	-- Spellbreaker's Rebuke
			fc(1229666),	-- Spellbreaker's Girdle
			fc(1229667),	-- Spellbreaker's Shelter
			fc(1229668),	-- Spellbreaker's March
			fc(1230763),	-- Sterling Alloy
			fc(1230769),	-- Sunforged Blacksmith's Hammer
			fc(1262899),	-- Sunforged Leatherworker's Knife
			fc(1262905),	-- Sunforged Skinning Knife
			fc(1262919),	-- Sunforged Pickaxe
			fc(1264644),	-- Sunforged Blacksmith's Toolbox
			fc(1264645),	-- Sunforged Leatherworker's Toolset
			fc(1264646),	-- Sunforged Needle Set
			fc(1264651),	-- Sunforged Sickle
			fc(1229598),	-- Sun-Blessed Blacksmith's Hammer
			fc(1229599),	-- Sun-Blessed Leatherworker's Knife
			fc(1229600),	-- Sun-Blessed Skinning Knife
			fc(1229601),	-- Sun-Blessed Pickaxe
			fc(1229602),	-- Sun-Blessed Sickle
			fc(1229603),	-- Sun-Blessed Blacksmith's Toolbox
			fc(1229604),	-- Sun-Blessed Leatherworker's Toolset
			fc(1229605),	-- Sun-Blessed Needle Set
			fc(1229606),	-- Thalassian Blacksmith's Hammer
			fc(1229607),	-- Thalassian Leatherworker's Knife
			fc(1229608),	-- Thalassian Skinning Knife
			fc(1229609),	-- Thalassian Pickaxe
			fc(1229610),	-- Thalassian Sickle
			fc(1229611),	-- Thalassian Blacksmith's Toolbox
			fc(1229612),	-- Thalassian Leatherworker's Toolset
			fc(1229613),	-- Thalassian Needle Set
			fc(1229630),	-- Thalassian Competitor's Sword
			fc(1229631),	-- Thalassian Competitor's Greatsword
			fc(1229632),	-- Thalassian Competitor's Spelldagger [SKEWER NAME DOES NOT MATCH]
			fc(1229633),	-- Thalassian Competitor's Splitter
			fc(1229634),	-- Thalassian Competitor's Bulwark
			fc(1229635),	-- Thalassian Competitor's Maxim
			fc(1229636),	-- Thalassian Competitor's Knife
			fc(1229637),	-- Thalassian Competitor's Pickaxe
			fc(1229638),	-- Thalassian Competitor's Plate Armguards
			fc(1229639),	-- Thalassian Competitor's Plate Waistguard
			fc(1229640),	-- Thalassian Competitor's Plate Pauldrons
			fc(1229641),	-- Thalassian Competitor's Plate Helm
			fc(1229642),	-- Thalassian Competitor's Plate Gauntlets
			fc(1229643),	-- Thalassian Competitor's Plate Sabatons
			fc(1229644),	-- Thalassian Competitor's Plate Greaves
			fc(1229645),	-- Thalassian Competitor's Plate Breastplate
			fc(1265906),	-- Thalassian Skeleton Key
		})),
		filter(MISC, {
			i(238020),	-- Thalassian Master Repair Hammer
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(238018, {["requireSkill"] = BLACKSMITHING}),	-- Sun-Blessed Blacksmith's Hammer
			i(237952, {["requireSkill"] = BLACKSMITHING}),	-- Sun-Blessed Blacksmith's Toolbox
			i(246537, {["requireSkill"] = BLACKSMITHING}),	-- Sunforged Blacksmith's Hammer
			i(259230, {["requireSkill"] = BLACKSMITHING}),	-- Sunforged Blacksmith's Toolbox
			i(238013, {["requireSkill"] = BLACKSMITHING}),	-- Thalassian Blacksmith's Hammer
			i(237948, {["requireSkill"] = BLACKSMITHING}),	-- Thalassian Blacksmith's Toolbox
			i(238014, {["requireSkill"] = HERBALISM}),	-- Sun-Blessed Sickle
			i(246533, {["requireSkill"] = HERBALISM}),	-- Sunforged Sickle
			i(238009, {["requireSkill"] = HERBALISM}),	-- Thalassian Sickle
			i(238017, {["requireSkill"] = LEATHERWORKING}),	-- Sun-Blessed Leatherworker's Knife
			i(237951, {["requireSkill"] = LEATHERWORKING}),	-- Sun-Blessed Leatherworker's Toolset
			i(246536, {["requireSkill"] = LEATHERWORKING}),	-- Sunforged Leatherworker's Knife
			i(259232, {["requireSkill"] = LEATHERWORKING}),	-- Sunforged Leatherworker's Toolset
			i(238012, {["requireSkill"] = LEATHERWORKING}),	-- Thalassian Leatherworker's Knife
			i(237947, {["requireSkill"] = LEATHERWORKING}),	-- Thalassian Leatherworker's Toolset
			i(238015, {["requireSkill"] = MINING}),	-- Sun-Blessed Pickaxe
			i(246534, {["requireSkill"] = MINING}),	-- Sunforged Pickaxe
			i(238010, {["requireSkill"] = MINING}),	-- Thalassian Pickaxe
			i(238016, {["requireSkill"] = SKINNING}),	-- Sun-Blessed Skinning Knife
			i(246535, {["requireSkill"] = SKINNING}),	-- Sunforged Skinning Knife
			i(238011, {["requireSkill"] = SKINNING}),	-- Thalassian Skinning Knife
			i(237950, {["requireSkill"] = TAILORING}),	-- Sun-Blessed Needle Set
			i(259234, {["requireSkill"] = TAILORING}),	-- Sunforged Needle Set
			i(237946, {["requireSkill"] = TAILORING}),	-- Thalassian Needle Set
		}),
		filter(REAGENTS, {
			i(238202),	-- Gloaming Alloy+
			i(238203),	-- Gloaming Alloy++
			i(238197),	-- Refulgent Copper Ingot+
			i(238198),	-- Refulgent Copper Ingot++
			i(238204),	-- Sterling Alloy+
			i(238205),	-- Sterling Alloy++
		}),
		n(WEAPONS, {
			i(237847),	-- Blood Knight's Impetus
			i(237848),	-- Blood Knight's Mercy
			i(237846),	-- Blood Knight's Warblade
			i(237845),	-- Bloomforged Claw
			i(237842),	-- Bloomforged Greataxe
			i(237927),	-- Dawnforged Edge
			i(237928),	-- Dawnforged Long Blade
			i(237926),	-- Dawnforged Ritual Knife
			i(237931),	-- Dawnforged Splitter
			i(237930),	-- Dawnforged War Mace
			i(237850),	-- Farstrider's Chopper
			i(237837),	-- Farstrider's Mercy
			i(237844),	-- Magister's Cleaver
			i(237843),	-- Magister's Mana Sword
			i(237838),	-- Magister's Ritual Knife
			i(237849),	-- Magister's Valediction
			i(244679),	-- Murder Row Fishhook
			i(237932),	-- Primalforged Heavy Axe
			i(237929),	-- Primalforged Knuckles
			i(237839),	-- Spellbreaker's Blade
			i(237841),	-- Spellbreaker's Ultimatum
			i(237840),	-- Spellbreaker's Warglaive
			i(237912),	-- Thalassian Competitor's Bulwark
			i(237915),	-- Thalassian Competitor's Greatsword
			i(237910),	-- Thalassian Competitor's Knife
			i(237911),	-- Thalassian Competitor's Maxim
			i(237909),	-- Thalassian Competitor's Pickaxe
			i(237914),	-- Thalassian Competitor's Skewer
			i(237913),	-- Thalassian Competitor's Splitter
			i(237916),	-- Thalassian Competitor's Sword
		}),
	}),
	prof(COOKING, {
		i(242287),	-- Arcano Cutlets
		i(242298),	-- Argentleaf Tea
		i(242301),	-- Azeroot Tea
		i(242296),	-- Bloodthistle-Wrapped Cutlets
		i(242302),	-- Bloom Skewers
		i(242273),	-- Blooming Feast
		i(242276),	-- Braised Blood Hunter
		i(242280),	-- Buttered Root Crab
		i(242274),	-- Champion's Bento
		i(242277),	-- Crimson Calamari
		i(242292),	-- Eversong Pudding
		i(242309),	-- Farstrider Rations
		i(242286),	-- Fel-Kissed Filet
		i(242294),	-- Felberry Figs
		i(255848),	-- Flora Frenzy
		i(242306),	-- Forager's Medley
		i(242291),	-- Fried Bloomtail
		i(242281),	-- Glitter Skewers
		i(255846),	-- Harandar Celebration
		i(242295),	-- Hearthflame Supper
		i(242759),	-- Hearty Arcano Cutlets
		i(242768),	-- Hearty Bloodthistle-Wrapped Cutlets
		i(242769),	-- Hearty Bloom Skewers
		i(242745),	-- Hearty Blooming Feast
		i(242748),	-- Hearty Braised Blood Hunter
		i(242752),	-- Hearty Buttered Root Crab
		i(242746),	-- Hearty Champion's Bento
		i(242749),	-- Hearty Crimson Calamari
		i(242764),	-- Hearty Eversong Pudding
		i(242776),	-- Hearty Farstrider Rations
		i(228721),	-- Hearty Feast
		i(242758),	-- Hearty Fel-Kissed Filet
		i(242766),	-- Hearty Felberry Figs
		i(268680),	-- Hearty Flora Frenzy
		i(222693),	-- Hearty Food
		i(242773),	-- Hearty Forager's Medley
		i(242763),	-- Hearty Fried Bloomtail
		i(242753),	-- Hearty Glitter Skewers
		i(266996),	-- Hearty Harandar Celebration
		i(242767),	-- Hearty Hearthflame Supper
		i(268679),	-- Hearty Impossibly Royal Roast
		i(242770),	-- Hearty Mana-Infused Stew
		i(242754),	-- Hearty Null and Void Plate
		i(242775),	-- Hearty Portable Snack
		i(242744),	-- Hearty Quel'dorei Medley
		i(242774),	-- Hearty Quick Sandwich
		i(242747),	-- Hearty Royal Roast
		i(266985),	-- Hearty Silvermoon Parade
		i(242772),	-- Hearty Silvermoon Standard
		i(242761),	-- Hearty Spellfire Filet
		i(242771),	-- Hearty Spiced Biscuits
		i(242755),	-- Hearty Sun-Seared Lumifin
		i(242765),	-- Hearty Sunwell Delight
		i(242750),	-- Hearty Tasty Smoked Tetra
		i(242760),	-- Hearty Twilight Angler's Medley
		i(242756),	-- Hearty Void-Kissed Fish Rolls
		i(242757),	-- Hearty Warped Wise Wings
		i(242762),	-- Hearty Wise Tails
		i(255847),	-- Impossibly Royal Roast
		i(242297),	-- Mana Lily Tea
		i(242303),	-- Mana-Infused Stew
		i(242282),	-- Null and Void Plate
		i(242308),	-- Portable Snack
		i(242272),	-- Quel'dorei Medley
		i(242307),	-- Quick Sandwich
		i(242275),	-- Royal Roast
		i(242299),	-- Sanguithorn Tea
		i(255845),	-- Silvermoon Parade
		i(242305),	-- Silvermoon Standard
		i(242289),	-- Spellfire Filet
		i(242304),	-- Spiced Biscuits
		i(242283),	-- Sun-Seared Lumifin
		i(242293),	-- Sunwell Delight
		i(242278),	-- Tasty Smoked Tetra
		i(253403),	-- Thalassian Filet
		i(242300),	-- Tranquility Bloom Tea
		i(242288),	-- Twilight Angler's Medley
		i(242284),	-- Void-Kissed Fish Rolls
		i(242285),	-- Warped Wise Wings
		i(242290),	-- Wise Tails
	}),
	prof(ENCHANTING, {
		n(ARMOR_ENCHANTMENTS, {
			i(244008),	-- Enchant Boots - Farstrider's Hunt+
			i(244009),	-- Enchant Boots - Farstrider's Hunt++
			i(243952),	-- Enchant Boots - Lynx's Dexterity+
			i(243953),	-- Enchant Boots - Lynx's Dexterity++
			i(243982),	-- Enchant Boots - Shaladrassil's Roots+
			i(243983),	-- Enchant Boots - Shaladrassil's Roots++
			i(243946),	-- Enchant Chest - Mark of Nalorakk+
			i(243947),	-- Enchant Chest - Mark of Nalorakk++
			i(244002),	-- Enchant Chest - Mark of the Magister+
			i(244003),	-- Enchant Chest - Mark of the Magister++
			i(243974),	-- Enchant Chest - Mark of the Rootwarden+
			i(243975),	-- Enchant Chest - Mark of the Rootwarden++
			i(243976),	-- Enchant Chest - Mark of the Worldsoul+
			i(243977),	-- Enchant Chest - Mark of the Worldsoul++
			i(243978),	-- Enchant Helm - Blessing of Speed+
			i(243979),	-- Enchant Helm - Blessing of Speed++
			i(243980),	-- Enchant Helm - Empowered Blessing of Speed+
			i(243981),	-- Enchant Helm - Empowered Blessing of Speed++
			i(243950),	-- Enchant Helm - Empowered Hex of Leeching+
			i(243951),	-- Enchant Helm - Empowered Hex of Leeching++
			i(244006),	-- Enchant Helm - Empowered Rune of Avoidance+
			i(244007),	-- Enchant Helm - Empowered Rune of Avoidance++
			i(243948),	-- Enchant Helm - Hex of Leeching+
			i(243949),	-- Enchant Helm - Hex of Leeching++
			i(244004),	-- Enchant Helm - Rune of Avoidance+
			i(244005),	-- Enchant Helm - Rune of Avoidance++
			i(243954),	-- Enchant Ring - Amani Mastery+
			i(243955),	-- Enchant Ring - Amani Mastery++
			i(243956),	-- Enchant Ring - Eyes of the Eagle+
			i(243957),	-- Enchant Ring - Eyes of the Eagle++
			i(243986),	-- Enchant Ring - Nature's Fury+
			i(243987),	-- Enchant Ring - Nature's Fury++
			i(243984),	-- Enchant Ring - Nature's Wrath+
			i(243985),	-- Enchant Ring - Nature's Wrath++
			i(244014),	-- Enchant Ring - Silvermoon's Alacrity+
			i(244015),	-- Enchant Ring - Silvermoon's Alacrity++
			i(244016),	-- Enchant Ring - Silvermoon's Tenacity+
			i(244017),	-- Enchant Ring - Silvermoon's Tenacity++
			i(244010),	-- Enchant Ring - Thalassian Haste+
			i(244011),	-- Enchant Ring - Thalassian Haste++
			i(244012),	-- Enchant Ring - Thalassian Versatility+
			i(244013),	-- Enchant Ring - Thalassian Versatility++
			i(243958),	-- Enchant Ring - Zul'jin's Mastery+
			i(243959),	-- Enchant Ring - Zul'jin's Mastery++
			i(243962),	-- Enchant Shoulders - Akil'zon's Celerity+
			i(243963),	-- Enchant Shoulders - Akil'zon's Celerity++
			i(243990),	-- Enchant Shoulders - Amirdrassil's Grace+
			i(243991),	-- Enchant Shoulders - Amirdrassil's Grace++
			i(243960),	-- Enchant Shoulders - Flight of the Eagle+
			i(243961),	-- Enchant Shoulders - Flight of the Eagle++
			i(243988),	-- Enchant Shoulders - Nature's Grace+
			i(243989),	-- Enchant Shoulders - Nature's Grace++
			i(244020),	-- Enchant Shoulders - Silvermoon's Mending+
			i(244021),	-- Enchant Shoulders - Silvermoon's Mending++
			i(244018),	-- Enchant Shoulders - Thalassian Recovery+
			i(244019),	-- Enchant Shoulders - Thalassian Recovery++
		}),
		filter(CONSUMABLES, {
			i(243735),	-- Oil of Dawn+
			i(243736),	-- Oil of Dawn++
			i(243737),	-- Smuggler's Enchanted Edge+
			i(243738),	-- Smuggler's Enchanted Edge++
			i(243733),	-- Thalassian Phoenix Oil+
			i(243734),	-- Thalassian Phoenix Oil++
		}),
		header(HEADERS.Spell, 1280401, {	-- Dawn Shatter
			i(267401),	-- Dawn Shatter
		}),
		n(DECOR, {
			i(262459),	-- Animated Sin'dorei Hammer (DECOR!)
			i(262458),	-- Animated Sin'dorei Pick (DECOR!)
			i(268038),	-- Endless Codex of Blooming Light (DECOR!)
			i(268039),	-- Endless Codex of Nature's Grace (DECOR!)
			i(268041),	-- Endless Codex of the Voidtouched (DECOR!)
			i(262450),	-- Ensorcelled Broom (DECOR!)
			i(262455),	-- Font of Gleaming Water (DECOR!)
			i(262468),	-- Ren'dorei Postal Repository (DECOR!)
			i(262590),	-- Rootflame Campfire (DECOR!)
			i(246693),	-- Self-Pouring Thalassian Sunwine (DECOR!)
			i(262470),	-- Spellbound Tome of Thalassian Magics (DECOR!)
		}),
		header(HEADERS.Spell, 1280952, {	-- Disenchant
			i(267655),	-- Brimming Mana Shard
			i(243605),	-- Dawn Crystal+
			i(243606),	-- Dawn Crystal++
			i(243599),	-- Eversinging Dust+
			i(243600),	-- Eversinging Dust++
			i(267653),	-- Glimmering Powder
			i(243602),	-- Radiant Shard+
			i(243603),	-- Radiant Shard++
			i(267654),	-- Swirling Arcane Essence
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = ENCHANTING,
		},{
			fc(1236054),	-- Enchant Chest - Mark of Nalorakk
			fc(1236055),	-- Enchant Helm - Hex of Leeching
			fc(1236056),	-- Enchant Helm - Empowered Hex of Leeching
			fc(1236057),	-- Enchant Boots - Lynx's Dexterity
			fc(1236058),	-- Enchant Ring - Amani Mastery
			fc(1236059),	-- Enchant Ring - Eyes of the Eagle
			fc(1236060),	-- Enchant Ring - Zul'jin's Mastery
			fc(1236061),	-- Enchant Shoulders - Flight of the Eagle
			fc(1236062),	-- Enchant Shoulders - Akil'zon's Swiftness
			fc(1236063),	-- Enchant Tool - Amani Perception
			fc(1236064),	-- Enchant Tool - Amani Resourcefulness
			fc(1236065),	-- Enchant Weapon - Strength of Halazzi
			fc(1236066),	-- Enchant Weapon - Jan'alai's Precision
			fc(1236067),	-- Enchant Weapon - Berserker's Rage
			fc(1236068),	-- Enchant Chest - Mark of the Rootwarden
			fc(1236069),	-- Enchant Chest - Mark of the Worldsoul
			fc(1236070),	-- Enchant Helm - Blessing of Speed
			fc(1236071),	-- Enchant Helm - Empowered Blessing of Speed
			fc(1236072),	-- Enchant Boots - Shaladrassil's Roots
			fc(1236073),	-- Enchant Ring - Nature's Wrath
			fc(1236074),	-- Enchant Ring - Nature's Fury
			fc(1236075),	-- Enchant Shoulders - Nature's Grace
			fc(1236076),	-- Enchant Shoulders - Amirdrassil's Grace
			fc(1236077),	-- Enchant Tool - Haranir Finesse
			fc(1236078),	-- Enchant Tool - Haranir Multicrafting
			fc(1236079),	-- Enchant Weapon - Worldsoul Cradle
			fc(1236080),	-- Enchant Weapon - Worldsoul Aegis
			fc(1236081),	-- Enchant Weapon - Worldsoul Tenacity
			fc(1236082),	-- Enchant Chest - Mark of the Magister
			fc(1236083),	-- Enchant Helm - Rune of Avoidance
			fc(1236084),	-- Enchant Helm - Empowered Rune of Avoidance
			fc(1236085),	-- Enchant Boots - Farstrider's Hunt
			fc(1236086),	-- Enchant Ring - Thalassian Haste
			fc(1236087),	-- Enchant Ring - Thalassian Versatility
			fc(1236088),	-- Enchant Ring - Silvermoon's Alacrity
			fc(1236089),	-- Enchant Ring - Silvermoon's Tenacity
			fc(1236090),	-- Enchant Shoulders - Thalassian Recovery
			fc(1236091),	-- Enchant Shoulders - Silvermoon's Mending
			fc(1236092),	-- Enchant Tool - Sin'dorei Deftness
			fc(1236093),	-- Enchant Tool - Ren'dorei Ingenuity
			fc(1236094),	-- Enchant Weapon - Flames of the Sin'dorei
			fc(1236095),	-- Enchant Weapon - Acuity of the Ren'dorei
			fc(1236097),	-- Enchant Weapon - Arcane Mastery
			fc(1236461),	-- Gleeful Glamour - Blood Elf
			fc(1236463),	-- Gleeful Glamour - Dark Iron Dwarf
			fc(1236464),	-- Gleeful Glamour - Haranir
			fc(1236465),	-- Gleeful Glamour - Draenei
			fc(1236466),	-- Gleeful Glamour - Dwarf
			fc(1236467),	-- Gleeful Glamour - Gnome
			fc(1236468),	-- Gleeful Glamour - Goblin
			fc(1236469),	-- Gleeful Glamour - Highmountain Tauren
			fc(1236470),	-- Gleeful Glamour - Human
			fc(1236471),	-- Gleeful Glamour - Kul Tiran
			fc(1236472),	-- Gleeful Glamour - Lightforged Draenei
			fc(1236473),	-- Gleeful Glamour - Mag'har Orc
			fc(1236474),	-- Gleeful Glamour - Mechagnome
			fc(1236475),	-- Gleeful Glamour - Night Elf
			fc(1236476),	-- Gleeful Glamour - Nightborne
			fc(1236477),	-- Gleeful Glamour - Orc
			fc(1236478),	-- Gleeful Glamour - Pandaren
			fc(1236479),	-- Gleeful Glamour - Tauren
			fc(1236480),	-- Gleeful Glamour - Troll
			fc(1236481),	-- Gleeful Glamour - Undead
			fc(1236482),	-- Gleeful Glamour - Void Elf
			fc(1236483),	-- Gleeful Glamour - Vulpera
			fc(1236484),	-- Gleeful Glamour - Worgen
			fc(1236485),	-- Gleeful Glamour - Zandalari Troll
			fc(1236594),	-- Gleeful Glamour - Earthen
			fc(1236098),	-- Illusory Adornment - Blooming Light
			fc(1236099),	-- Illusory Adornment - Nature's Embrace [Calls it "Shoulder Enchant" Still]
			fc(1236100),	-- Illusory Adornment - Voidtouched [Calls it "Shoulder Enchant" Still]
			fc(1236490),	-- Magister's Grand Focus
			fc(1236492),	-- Oil of Dawn
			fc(1236486),	-- Runed Refulgent Copper Rod
			fc(1236487),	-- Runed Brilliant Silver Rod
			fc(1236488),	-- Runed Dazzling Thorium Rod
			fc(1236493),	-- Smuggler's Enchanted Edge
			fc(1236489),	-- Thalassian Spellweaver's Wand
			fc(1236491),	-- Thalassian Phoenix Oil
		})),
		filter(MISC, {
			i(243773),	-- Gleeful Glamour - Blood Elf+
			i(243797),	-- Gleeful Glamour - Blood Elf++
			i(243774),	-- Gleeful Glamour - Dark Iron Dwarf+
			i(243798),	-- Gleeful Glamour - Dark Iron Dwarf++
			i(243775),	-- Gleeful Glamour - Draenei+
			i(243799),	-- Gleeful Glamour - Draenei++
			i(243776),	-- Gleeful Glamour - Dwarf+
			i(243800),	-- Gleeful Glamour - Dwarf++
			i(243777),	-- Gleeful Glamour - Earthen+
			i(243801),	-- Gleeful Glamour - Earthen++
			i(243778),	-- Gleeful Glamour - Gnome+
			i(243802),	-- Gleeful Glamour - Gnome++
			i(243779),	-- Gleeful Glamour - Goblin+
			i(243803),	-- Gleeful Glamour - Goblin++
			i(244056),	-- Gleeful Glamour - Haranir+
			i(244057),	-- Gleeful Glamour - Haranir++
			i(243780),	-- Gleeful Glamour - Highmountain Tauren+
			i(243804),	-- Gleeful Glamour - Highmountain Tauren++
			i(243781),	-- Gleeful Glamour - Human+
			i(243805),	-- Gleeful Glamour - Human++
			i(243782),	-- Gleeful Glamour - Kul Tiran+
			i(243806),	-- Gleeful Glamour - Kul Tiran++
			i(243783),	-- Gleeful Glamour - Lightforged Draenei+
			i(243807),	-- Gleeful Glamour - Lightforged Draenei++
			i(243784),	-- Gleeful Glamour - Mag'har Orc+
			i(243808),	-- Gleeful Glamour - Mag'har Orc++
			i(243785),	-- Gleeful Glamour - Mechagnome+
			i(243809),	-- Gleeful Glamour - Mechagnome++
			i(243786),	-- Gleeful Glamour - Night Elf+
			i(243810),	-- Gleeful Glamour - Night Elf++
			i(243787),	-- Gleeful Glamour - Nightborne+
			i(243811),	-- Gleeful Glamour - Nightborne++
			i(243788),	-- Gleeful Glamour - Orc+
			i(243812),	-- Gleeful Glamour - Orc++
			i(243789),	-- Gleeful Glamour - Pandaren+
			i(243813),	-- Gleeful Glamour - Pandaren++
			i(243790),	-- Gleeful Glamour - Tauren+
			i(243814),	-- Gleeful Glamour - Tauren++
			i(243791),	-- Gleeful Glamour - Troll+
			i(243815),	-- Gleeful Glamour - Troll++
			i(243792),	-- Gleeful Glamour - Undead+
			i(243816),	-- Gleeful Glamour - Undead++
			i(243793),	-- Gleeful Glamour - Void Elf+
			i(243817),	-- Gleeful Glamour - Void Elf++
			i(243794),	-- Gleeful Glamour - Vulpera+
			i(243818),	-- Gleeful Glamour - Vulpera++
			i(243795),	-- Gleeful Glamour - Worgen+
			i(243819),	-- Gleeful Glamour - Worgen++
			i(243796),	-- Gleeful Glamour - Zandalari Troll+
			i(243820),	-- Gleeful Glamour - Zandalari Troll++
			i(244032),	-- Illusory Adornment - Blooming Light+
			i(244033),	-- Illusory Adornment - Blooming Light++
			i(244034),	-- Illusory Adornment - Nature's Embrace+
			i(244035),	-- Illusory Adornment - Nature's Embrace++
			i(244036),	-- Illusory Adornment - Voidtouched+
			i(244037),	-- Illusory Adornment - Voidtouched++
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(244176, {["requireSkill"] = ENCHANTING}),	-- Runed Brilliant Silver Rod
			i(244177, {["requireSkill"] = ENCHANTING}),	-- Runed Dazzling Thorium Rod
			i(244175, {["requireSkill"] = ENCHANTING}),	-- Runed Refulgent Copper Rod
		}),
		header(HEADERS.Spell, 1280394, {	-- Radiant Shatter
			i(267393),	-- Radiant Shatter
		}),
		header(HEADERS.Spell, 1235731, {	-- Shatter Essence
			i(245934),	-- Shatter Essence
		}),
		n(WEAPON_ENCHANTMENTS, {
			i(243964),	-- Enchant Tool - Amani Perception+
			i(243965),	-- Enchant Tool - Amani Perception++
			i(243966),	-- Enchant Tool - Amani Resourcefulness+
			i(243967),	-- Enchant Tool - Amani Resourcefulness++
			i(243992),	-- Enchant Tool - Haranir Finesse+
			i(243993),	-- Enchant Tool - Haranir Finesse++
			i(243994),	-- Enchant Tool - Haranir Multicrafting+
			i(243995),	-- Enchant Tool - Haranir Multicrafting++
			i(244024),	-- Enchant Tool - Ren'dorei Ingenuity+
			i(244025),	-- Enchant Tool - Ren'dorei Ingenuity++
			i(244022),	-- Enchant Tool - Sin'dorei Deftness+
			i(244023),	-- Enchant Tool - Sin'dorei Deftness++
			i(244028),	-- Enchant Weapon - Acuity of the Ren'dorei+
			i(244029),	-- Enchant Weapon - Acuity of the Ren'dorei++
			i(244030),	-- Enchant Weapon - Arcane Mastery+
			i(244031),	-- Enchant Weapon - Arcane Mastery++
			i(243972),	-- Enchant Weapon - Berserker's Rage+
			i(243973),	-- Enchant Weapon - Berserker's Rage++
			i(244026),	-- Enchant Weapon - Flames of the Sin'dorei+
			i(244027),	-- Enchant Weapon - Flames of the Sin'dorei++
			i(243970),	-- Enchant Weapon - Jan'alai's Precision+
			i(243971),	-- Enchant Weapon - Jan'alai's Precision++
			i(243968),	-- Enchant Weapon - Strength of Halazzi+
			i(243969),	-- Enchant Weapon - Strength of Halazzi++
			i(243998),	-- Enchant Weapon - Worldsoul Aegis+
			i(243999),	-- Enchant Weapon - Worldsoul Aegis++
			i(243996),	-- Enchant Weapon - Worldsoul Cradle+
			i(243997),	-- Enchant Weapon - Worldsoul Cradle++
			i(244000),	-- Enchant Weapon - Worldsoul Tenacity+
			i(244001),	-- Enchant Weapon - Worldsoul Tenacity++
		}),
		n(WEAPONS, {
			i(244179),	-- Magister's Grand Focus
			i(244178),	-- Thalassian Spellweaver's Wand
		}),
	}),
	prof(ENGINEERING, {
		n(ARMOR, {
			i(244748),	-- Aetherlume Bands
			i(244749),	-- Aetherlume Bracelets
			i(244773),	-- Aetherlume Clonkers
			i(244743),	-- Aetherlume Eye Wrap
			i(244750),	-- Aetherlume Guards
			i(244744),	-- Aetherlume Optics
			i(244772),	-- Aetherlume Runners
			i(244747),	-- Aetherlume Silken Cuffs
			i(244771),	-- Aetherlume Softsteppers
			i(244774),	-- Aetherlume Stompers
			i(244746),	-- Aetherlume Sun Guard
			i(244745),	-- Aetherlume Vision Shroud
			i(245342),	-- Evercore Binding
			i(245343),	-- Evercore Chainguards
			i(245344),	-- Evercore Gear Weight
			i(245340),	-- Evercore Greaseplates
			i(244753),	-- Evercore Reconnaissance
			i(244752),	-- Evercore Shade
			i(245338),	-- Evercore Stichwraps
			i(245337),	-- Evercore Swiftfeet
			i(245339),	-- Evercore Turbochains
			i(244754),	-- Evercore Vision Guard
			i(245341),	-- Evercore Wrist Latch
			i(244751),	-- Evercore Zoomshroud
			i(244756),	-- Quel'dorei Bands
			i(244757),	-- Quel'dorei Bracelets
			i(244769),	-- Quel'dorei Clonkers
			i(244759),	-- Quel'dorei Cloth Goggles
			i(244758),	-- Quel'dorei Guards
			i(244760),	-- Quel'dorei Leather Optics
			i(244761),	-- Quel'dorei Mail Shroud
			i(244768),	-- Quel'dorei Runners
			i(244755),	-- Quel'dorei Silken Cuffs
			i(244767),	-- Quel'dorei Softsteppers
			i(244770),	-- Quel'dorei Stompers
			i(244762),	-- Quel'dorei Visor
			i(244739),	-- Thalassian Competitor's Cloth Cuffs
			i(244735),	-- Thalassian Competitor's Cloth Goggles
			i(244763),	-- Thalassian Competitor's Cloth Tip-Toes
			i(244740),	-- Thalassian Competitor's Leather Bands
			i(244736),	-- Thalassian Competitor's Leather Optics
			i(244764),	-- Thalassian Competitor's Leather Sliders
			i(244765),	-- Thalassian Competitor's Mail Footlinks
			i(244741),	-- Thalassian Competitor's Mail Links
			i(244737),	-- Thalassian Competitor's Mail Visor
			i(244742),	-- Thalassian Competitor's Plate Bindings
			i(244766),	-- Thalassian Competitor's Plate Dunkers
			i(244738),	-- Thalassian Competitor's Plate Guard
		}),
		filter(CONSUMABLES, {
			i(257749),	-- Laced Zoomshots+
			i(257750),	-- Laced Zoomshots++
		}),
		n(DECOR, {
			i(246460),	-- Ambient Aethercharged Crystal (DECOR!)
			i(262617),	-- Ren'dorei Crafting Framework (DECOR!)
			i(263049),	-- Ren'dorei Lightpost (DECOR!)
			i(262465),	-- Ren'dorei Stargazer (DECOR!)
			i(262618),	-- Ren'dorei Void Projector (DECOR!)
			i(262602),	-- Ren'dorei Warp Orb (DECOR!)
			i(262789),	-- Small Telogrus Lamp (DECOR!)
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = ENGINEERING,
		},{
			FirstCraft(90264, 1229875);	-- Aetherlume Bands
			FirstCraft(90265, 1229876);	-- Aetherlume Bracelets
			FirstCraft(90289, 1229880);	-- Aetherlume Clonkers
			FirstCraft(90259, 1229870);	-- Aetherlume Eye Wrap
			FirstCraft(90266, 1229877);	-- Aetherlume Guards
			FirstCraft(90260, 1229871);	-- Aetherlume Optics
			FirstCraft(90288, 1229879);	-- Aetherlume Runners
			FirstCraft(90263, 1229874);	-- Aetherlume Silken Cuffs
			FirstCraft(90287, 1229878);	-- Aetherlume Softsteppers
			FirstCraft(90290, 1229881);	-- Aetherlume Stompers
			FirstCraft(90262, 1229873);	-- Aetherlume Sun Guard
			FirstCraft(90261, 1229872);	-- Aetherlume Vision Shroud
			FirstCraft(93236, 1261945);	-- B0P, Curator of Booms
			FirstCraft(90307, 1229922);	-- B1P, Scorcher of Souls
			FirstCraft(90235, 1229858);	-- Consistent Cogwheel
			FirstCraft(90303, 1229927);	-- Curious Red Button
			FirstCraft(90311, 1229923);	-- Emergency Soul Link
			FirstCraft(90296, 1229867);	-- Evercore Binding
			FirstCraft(90298, 1229869);	-- Evercore Gear Weight
			FirstCraft(90294, 1229938);	-- Evercore Greaseplates
			FirstCraft(90297, 1229868);	-- Evercore Chainguards
			FirstCraft(90269, 1229864);	-- Evercore Reconissance
			FirstCraft(90268, 1229863);	-- Evercore Shade
			FirstCraft(90292, 1229936);	-- Evercore Stichwraps
			FirstCraft(90291, 1229935);	-- Evercore Swiftfeet
			FirstCraft(90293, 1229937);	-- Evercore Turbochains
			FirstCraft(90270, 1229865);	-- Evercore Vision Guard
			FirstCraft(90295, 1229866);	-- Evercore Wrist Latch
			FirstCraft(90267, 1229862);	-- Evercore Zoomshroud
			FirstCraft(90243, 1229898);	-- Farstrider Clampers
			FirstCraft(90237, 1229900);	-- Farstrider Fabric Cutters
			FirstCraft(90245, 1229904);	-- Farstrider Hardhat
			FirstCraft(90241, 1229895);	-- Farstrider Hobbyist Rod
			FirstCraft(90249, 1229899);	-- Farstrider Rock Satchel
			FirstCraft(93228, 1261866);	-- Farstrider's Hawkeye
			FirstCraft(90232, 1229859);	-- Flux Cogwheel
			FirstCraft(90233, 1229857);	-- Greased Cogwheel
			FirstCraft(90318, 1229921);	-- HU5H, Nonchalant Pup
			FirstCraft(90250, 1229906);	-- Junker's Big Ol' Bag
			FirstCraft(90239, 1229901);	-- Junker's Junk Visor
			FirstCraft(90247, 1229896);	-- Junker's Multitool
			FirstCraft(90299, 1229919);	-- Kinetic Ankle Primers
			FirstCraft(93231, 1261895);	-- Laced Zoomshots
			FirstCraft(90306, 1229916);	-- Lucky Keychain
			FirstCraft(90308, 1229924);	-- M3DDY
			FirstCraft(90300, 1229917);	-- M3DDY, Travel-Sized
			FirstCraft(90234, 1229856);	-- Perfected Cogwheel
			FirstCraft(90272, 1229887);	-- Quel'dorei Bands
			FirstCraft(90273, 1229888);	-- Quel'dorei Bracelets
			FirstCraft(90285, 1229892);	-- Quel'dorei Clonkers
			FirstCraft(90275, 1229882);	-- Quel'dorei Cloth Goggles
			FirstCraft(90274, 1229889);	-- Quel'dorei Guards
			FirstCraft(90276, 1229883);	-- Quel'dorei Leather Optics
			FirstCraft(90277, 1229884);	-- Quel'dorei Mail Shroud
			FirstCraft(90284, 1229891);	-- Quel'dorei Runners
			FirstCraft(90271, 1229886);	-- Quel'dorei Silken Cuffs
			FirstCraft(90283, 1229890);	-- Quel'dorei Softsteppers
			FirstCraft(90286, 1229893);	-- Quel'dorei Stompers
			FirstCraft(90278, 1229885);	-- Quel'dorei Visor
			FirstCraft(90242, 1229902);	-- Sin'dorei Angler's Rod
			FirstCraft(90244, 1229905);	-- Sin'dorei Clampers
			FirstCraft(90246, 1229897);	-- Sin'dorei Gilded Hardhat
			FirstCraft(90240, 1229894);	-- Sin'dorei Headlamp
			FirstCraft(90238, 1229907);	-- Sin'dorei Snippers
			FirstCraft(93230, 1261893);	-- Smuggler's Lynxeye
			FirstCraft(90138, 1229755);	-- Song Gear
			FirstCraft(90229, 1229853);	-- Soul Sprocket
			FirstCraft(90255, 1229912);	-- Thalassian Competitor's Cloth Cuffs
			FirstCraft(90251, 1229908);	-- Thalassian Competitor's Cloth Goggles
			FirstCraft(90279, 1261490);	-- Thalassian Competitor's Cloth Tip-Toes
			FirstCraft(90258, 1261490);	-- Thalassian Competitor's Cloth Tip-Toes
			FirstCraft(90256, 1229913);	-- Thalassian Competitor's Leather Bands
			FirstCraft(90252, 1229909);	-- Thalassian Competitor's Leather Optics
			FirstCraft(90280, 1261491);	-- Thalassian Competitor's Leather Sliders
			FirstCraft(90258, 1261491);	-- Thalassian Competitor's Leather Sliders
			FirstCraft(90281, 1261492);	-- Thalassian Competitor's Mail Footlinks
			FirstCraft(90258, 1261492);	-- Thalassian Competitor's Mail Footlinks
			FirstCraft(90257, 1229914);	-- Thalassian Competitor's Mail Links
			FirstCraft(90253, 1229910);	-- Thalassian Competitor's Mail Visor
			FirstCraft(90258, 1229915);	-- Thalassian Competitor's Plate Bindings
			FirstCraft(90282, 1261493);	-- Thalassian Competitor's Plate Dunkers
			FirstCraft(90258, 1261493);	-- Thalassian Competitor's Plate Dunkers
			FirstCraft(90254, 1229911);	-- Thalassian Competitor's Plate Guard
			FirstCraft(90248, 1229903);	-- Turbo-Junker's Multitool
			FirstCraft(90302, 1229926);	-- W-47CH D0G
			FirstCraft(93231, 1261913);	-- Weighted Boomshots
			FirstCraft(90304, 1229928);	-- Wormhole Generator: Quel'Thalas
		})),
		filter(MISC, {
			i(248138),	-- Curious Red Button
			i(248486),	-- Emergency Soul Link+
			i(269586),	-- Emergency Soul Link++
			i(248137),	-- M3DDY
			i(248409),	-- W-47CH D0G
			i(257751),	-- Weighted Boomshots+
			i(257752),	-- Weighted Boomshots++
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(244713, {["requireSkill"] = JEWELCRAFTING}),	-- Farstrider Clampers
			i(244707, {["requireSkill"] = TAILORING}),	-- Farstrider Fabric Cutters
			i(244715, {["requireSkill"] = MINING}),	-- Farstrider Hardhat
			i(244711, {["requireSkill"] = FISHING}),	-- Farstrider Hobbyist Rod
			i(244719, {["requireSkill"] = MINING}),	-- Farstrider Rock Satchel
			i(259181, {["requireSkill"] = JEWELCRAFTING}),	-- Giga-Gem Grippers
			i(259171, {["requireSkill"] = ENGINEERING}),	-- Head-Mounted Beam Bummer
			i(259175, {["requireSkill"] = MINING}),	-- Heavy-Duty Rock Assister
			i(244720, {["requireSkill"] = MINING}),	-- Junker's Big Ol' Bag
			i(244709, {["requireSkill"] = ENGINEERING}),	-- Junker's Junk Visor
			i(244717, {["requireSkill"] = ENGINEERING}),	-- Junker's Multitool
			i(259173, {["requireSkill"] = MINING}),	-- Rock Bonkin' Hardhat
			i(259177, {["requireSkill"] = TAILORING}),	-- Self-Sharpening Sin'dorei Snippers
			i(244712, {["requireSkill"] = FISHING}),	-- Sin'dorei Angler's Rod
			i(244714, {["requireSkill"] = JEWELCRAFTING}),	-- Sin'dorei Clampers
			i(244716, {["requireSkill"] = MINING}),	-- Sin'dorei Gilded Hardhat
			i(244710, {["requireSkill"] = ENGINEERING}),	-- Sin'dorei Headlamp
			i(259179, {["requireSkill"] = FISHING}),	-- Sin'dorei Reeler's Rod
			i(244708, {["requireSkill"] = TAILORING}),	-- Sin'dorei Snippers
			i(244718, {["requireSkill"] = ENGINEERING}),	-- Turbo-Junker's Multitool v1
			i(259183, {["requireSkill"] = ENGINEERING}),	-- Turbo-Junker's Multitool v9
		}),
		filter(REAGENTS, {
			i(257735),	-- B0P, Curator of Booms+
			i(257741),	-- B0P, Curator of Booms++
			i(248135),	-- B1P, Scorcher of Souls+
			i(248592),	-- B1P, Scorcher of Souls++
			i(244703),	-- Consistent Cogwheel+
			i(244704),	-- Consistent Cogwheel++
			i(244697),	-- Flux Cogwheel+
			i(244698),	-- Flux Cogwheel++
			i(244699),	-- Greased Cogwheel+
			i(244700),	-- Greased Cogwheel++
			i(255843),	-- HU5H, Nonchalant Pup+
			i(255844),	-- HU5H, Nonchalant Pup++
			i(248132),	-- Kinetic Ankle Primers+
			i(248133),	-- Kinetic Ankle Primers++
			i(248130),	-- Lucky Keychain
			i(248136),	-- M3DDY, Travel-Sized
			i(244701),	-- Perfected Cogwheel+
			i(244702),	-- Perfected Cogwheel++
			i(243574),	-- Song Gear+
			i(243575),	-- Song Gear++
			i(243576),	-- Soul Sprocket+
			i(243577),	-- Soul Sprocket++
		}),
		header(HEADERS.Spell, 1229930, {	-- Recycling
			i(243578),	-- Aetherlume+
			i(243579),	-- Aetherlume++
			i(243581),	-- Evercore+
			i(243582),	-- Evercore++
			r(1248612),	-- Ambient Aethercharged Crystal
			r(1261945),	-- B0P, Curator of Booms
			r(1229922),	-- B1P, Scorcher of Souls
			r(1229927),	-- Curious Red Button
			r(1229923),	-- Emergency Soul Link
			r(1261866),	-- Farstrider's Hawkeye
			r(1229919),	-- Kinetic Ankle Primers
			r(1261895),	-- Laced Zoomshots
			r(1229916),	-- Lucky Keychain
			r(1229917),	-- M3DDY, Travel-Sized
			r(1229887),	-- Quel'dorei Bands
			r(1229888),	-- Quel'dorei Bracelets
			r(1229892),	-- Quel'dorei Clonkers
			r(1229882),	-- Quel'dorei Cloth Goggles
			r(1229889),	-- Quel'dorei Guards
			r(1229883),	-- Quel'dorei Leather Optics
			r(1229884),	-- Quel'dorei Mail Shroud
			r(1229891),	-- Quel'dorei Runners
			r(1229886),	-- Quel'dorei Silken Cuffs
			r(1229890),	-- Quel'dorei Softsteppers
			r(1229893),	-- Quel'dorei Stompers
			r(1229885),	-- Quel'dorei Visor
			r(1248615),	-- Ren'dorei Crafting Framework
			r(1248611),	-- Ren'dorei Lightpost
			r(1248613),	-- Ren'dorei Stargazer
			r(1248610),	-- Ren'dorei Void Projector
			r(1248616),	-- Ren'dorei Warp Orb
			r(1248614),	-- Small Telogrus Lamp
			r(1261893),	-- Smuggler's Lynxeye
			r(1229926),	-- W-47CH D0G
			r(1261913),	-- Weighted Boomshots
			r(1229928),	-- Wormhole Generator: Quel'Thalas
		}),
		filter(TOYS, {
			i(248485),	-- Wormhole Generator: Quel'Thalas (TOY!)
		}),
		n(WEAPONS, {
			i(268475),	-- Evercore Dome Dinger
			i(268477),	-- P.O.W. x3
			i(268479),	-- Thalassian Competitor's Rifle
		}),
		n(WEAPON_ENCHANTMENTS, {
			i(257745),	-- Farstrider's Hawkeye+
			i(257746),	-- Farstrider's Hawkeye++
			i(257747),	-- Smuggler's Lynxeye+
			i(257748),	-- Smuggler's Lynxeye++
		}),
	}),
	prof(FISHING, {
		filter(BATTLE_PETS, {
			i(260942),	-- Bubbly Snapling (PET!)
		}),
		filter(COSMETIC, {
			i(266393),	-- Farstrider's Gilded Bow (COSMETIC!)
			i(266396),	-- Farstrider's Solemn Bow (COSMETIC!)
			i(260905),	-- Lost Blade of Spacial Descent (COSMETIC!)
			i(260898),	-- Lost Cerulean Edge (COSMETIC!)
			i(260908),	-- Lost Frostwolf's Stand (COSMETIC!)
			i(260904),	-- Lost Soul Collector (COSMETIC!)
			i(260901),	-- Lost Stave of Burrowing Contortion (COSMETIC!)
			i(260902),	-- Lost Sunset Scepter (COSMETIC!)
			i(260903),	-- Lost Sunwell Splitter (COSMETIC!)
			i(260900),	-- Lost Thunder Fist (COSMETIC!)
			i(260907),	-- Lost Winter's Hunger (COSMETIC!)
			i(266386),	-- Sanctum Acolyte's Post (COSMETIC!)
			i(266388),	-- Sanctum Acolyte's Pylon (COSMETIC!)
			i(266384),	-- Sanctum Magister's Post (COSMETIC!)
			i(266387),	-- Sanctum Magister's Pylon (COSMETIC!)
		}),
		n(DISCOVERY, {
			r_withQuest(1225274, 88614),	-- Blood Hunter
			r_withQuest(1225266, 88606),	-- Bloomtail Minnow
			r_withQuest(1225283, 88620),	-- Eversong Trout
			r_withQuest(1225276, 88612),	-- Fungalskin Pike
			r_withQuest(1225275, 88619),	-- Gore Guppy
			r(1225337, {["learnedAt"]=150}),	-- Harandar
			r_withQuest(1225267, 88618),	-- Hollow Grouper
			r_withQuest(1225284, 88613),	-- Lucky Loa
			r_withQuest(1225270, 88603),	-- Lynxfish
			r_withQuest(1225268, 88617),	-- Null Voidfish
			r_withQuest(1225273, 88610),	-- Ominous Octopu
			r_withQuest(1225277, 88609),	-- Restored Songfish
			r_withQuest(1225269, 88604),	-- Root Crab
			r_withQuest(1225271, 88615),	-- Shimmersiren
			r_withQuest(1225272, 88607),	-- Shimmer Spinefish
			r_withQuest(1225245, 88602),	-- Sin'dorei Swarmer
			r_withQuest(1225278, 88621),	-- Sunwell Fish
			r_withQuest(1225281, 88611),	-- Tender Lumifin
			r_withQuest(1225280, 88605),	-- Twisted Tetra
			r(1225336, {["learnedAt"]=225}),	-- Voidstorm
			r_withQuest(1225279, 88616),	-- Warping Wise
			r_withQuest(1225282, 88608),	-- Wyrmfish
			r(1225335, {["learnedAt"]=75}),	-- Zul'Aman
		}),
		i(238490, {	-- Ambiguous Rock
			i(266102),	-- Ambiguous Rock
		}),
		i(241148),	-- Amani Angler's Ward
		i(262649),	-- An Angler's Deep Dive
		i(243248, {	-- Anomaly Filament
			i(243343),	-- Angler's Anomaly
		}),
		i(238494),	-- Another's Treasure
		i(238371),	-- Arcane Wyrmfish
		i(243302),	-- Aquarius Bloom
		i(238377),	-- Blood Hunter
		i(241147),	-- Blood Hunter Lure
		i(243342),	-- Bloom Bauble
		i(238369),	-- Bloomtail Minnow
		i(238489),	-- Definitely Not a Rock
		i(238383),	-- Eversong Trout
		i(238375),	-- Fungalskin Pike
		i(238382),	-- Gore Guppy
		i(238381),	-- Hollow Grouper
		i(263938),	-- Idol of Peril (QS!)
		i(238376),	-- Lucky Loa
		i(238366),	-- Lynxfish
		i(268730, {	-- Nether-Warped Egg
			i(260916),	-- Nether-Swept Drake (MOUNT!)
		}),
		i(238380),	-- Null Voidfish
		i(238373),	-- Ominous Octopus
		i(241149),	-- Ominous Octopus Lure
		i(238372),	-- Restored Songfish
		i(238367),	-- Root Crab
		i(238378),	-- Shimmersiren
		i(238370),	-- Shimmer Spinefish
		i(262792),	-- Shredded Bloomline
		i(262797),	-- Shredded Glimmerline
		i(262793),	-- Stranded Bloomline (Green Quality)
		i(262798),	-- Stranded Glimmerline (Green Quality)
		i(238365),	-- Sin'dorei Swarmer
		i(238384),	-- Sunwell Fish
		i(238374),	-- Tender Lumifin
		i(238368),	-- Twisted Tetra
		i(238379),	-- Warping Wise
	}),
	prof(HERBALISM, {
		n(DISCOVERY, {
			r_withQuest(1223138, 87747),	-- Argentleaf
			r_withQuest(1223137, 87741),	-- Azeroot
			r_withQuest(1224882, 87749),	-- Lightfused Argentleaf
			r_withQuest(1224885, 87743),	-- Lightfused Azeroot
			r_withQuest(1224884, 87755),	-- Lightfused Mana Lily
			r_withQuest(1224886, 87737),	-- Lightfused Sanguithorn
			r_withQuest(1224883, 87731),	-- Lightfused Tranquility Bloom
			r_withQuest(1223146, 87748),	-- Lush Argentleaf
			r_withQuest(1223150, 87742),	-- Lush Azeroot
			r_withQuest(1223149, 87754),	-- Lush Mana Lily
			r_withQuest(1223151, 87736),	-- Lush Sanguithorn
			r_withQuest(1223148, 87730),	-- Lush Tranquility Bloom
			r_withQuest(1223139, 87753),	-- Mana Lily
			r(1225128),	-- Overload Lightfused Herb
			r(1225137),	-- Overload Primal Herb
			r(1225144),	-- Overload Voidbound Herb
			r(1225150),	-- Overload Wild Herb
			r_withQuest(1224887, 87751),	-- Primal Argentleaf
			r_withQuest(1224890, 87745),	-- Primal Azeroot
			r_withQuest(1224889, 87757),	-- Primal Mana Lily
			r_withQuest(1224891, 87739),	-- Primal Sanguithorn
			r_withQuest(1224888, 87733),	-- Primal Tranquility Bloom
			r_withQuest(1223135, 87735),	-- Sanguithorn
			r_withQuest(1223099, 87729),	-- Tranquility Bloom
			r_withQuest(1224897, 87752),	-- Voidbound Argentleaf
			r_withQuest(1224900, 87746),	-- Voidbound Azeroot
			r_withQuest(1224899, 87758),	-- Voidbound Mana Lily
			r_withQuest(1224901, 87740),	-- Voidbound Sanguithorn
			r_withQuest(1224898, 87734),	-- Voidbound Tranquility Bloom
			r_withQuest(1224892, 87750),	-- Wild Argentleaf
			r_withQuest(1224895, 87744),	-- Wild Azeroot
			r_withQuest(1224894, 87756),	-- Wild Mana Lily
			r_withQuest(1224896, 87738),	-- Wild Sanguithorn
			r_withQuest(1224893, 87732),	-- Wild Tranquility Bloom
		}),
		header(HEADERS.Spell, 2366, {	-- Herb Gathering
			i(236776),	-- Argentleaf+
			i(236777),	-- Argentleaf++
			i(236774),	-- Azeroot+
			i(236775),	-- Azeroot++
			i(238389),	-- Empowered Mulch
			i(237498),	-- Glowing Resilient Seed
			i(238388),	-- Imbued Mulch
			i(238387),	-- Magical Mulch
			i(236778),	-- Mana Lily+
			i(236779),	-- Mana Lily++
			i(236780),	-- Nocturnal Lotus
			i(237500),	-- Primal Resilient Seed
			i(237497),	-- Resilient Seed
			i(236770),	-- Sanguithorn+
			i(236771),	-- Sanguithorn++
			i(238467),	-- Thalassian Phoenix Ember
			i(238465),	-- Thalassian Phoenix Plume
			i(238466),	-- Thalassian Phoenix Tail
			i(236761),	-- Tranquility Bloom+
			i(236767),	-- Tranquility Bloom++
			i(237499),	-- Wild Resilient Seed
		}),
	}),
	prof(INSCRIPTION, {
		n(DISCOVERY, {
			header(HEADERS.Spell, 1230032, {	-- Algari Treatise on Inscription
				r(1230034),	-- Thalassian Treatise on Alchemy
				r(1230026),	-- Thalassian Treatise on Blacksmithing
				r(1230030),	-- Thalassian Treatise on Enchanting
				r(1230036),	-- Thalassian Treatise on Engineering
				r(1230028),	-- Thalassian Treatise on Herbalism
				r(1230029),	-- Thalassian Treatise on Jewelcrafting
				r(1230031),	-- Thalassian Treatise on Leatherworking
				r(1230027),	-- Thalassian Treatise on Mining
				r(1230035),	-- Thalassian Treatise on Skinning
				r(1230033),	-- Thalassian Treatise on Tailoring
			}),
		}),
		n(DECOR, {
			i(262464),	-- Floating Void-Touched Tome (DECOR!)
			i(262597),	-- Gilded Eversong Book (DECOR!)
			i(253508),	-- Harandar Signpost (DECOR!)
			i(262594),	-- Homely Sin'dorei Shelf (DECOR!)
			i(262595),	-- Homely Wall Shelves (DECOR!)
			i(262616),	-- Lively Songwriter's Quill (DECOR!)
			i(263034),	-- Magnificent Towering Bookcase (DECOR!)
			i(262598),	-- Opened Sin'dorei Scroll (DECOR!)
			i(262790),	-- Restful Bronze Bench (DECOR!)
			i(262615),	-- Sin'dorei Phoenix Quill (DECOR!)
			i(262612),	-- Sturdy Ren'dorei Cask (DECOR!)
			i(262601),	-- Wild Hanging Scroll (DECOR!)
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = INSCRIPTION,
		},{
			FirstCraft(90433, 1230060);	-- Aln'hara Cane
			FirstCraft(90434, 1230061);	-- Aln'hara Lantern
			FirstCraft(90432, 1230059);	-- Aln'hara Pikestaff
			FirstCraft(90435, 1230062);	-- Aln'hara Sprigshot
			FirstCraft(90391, 1230018);	-- Codified Azeroot
			FirstCraft(90425, 1230052);	-- Contract: The Amani Tribe
			FirstCraft(90426, 1230053);	-- Contract: The Hara'ti
			FirstCraft(90424, 1230051);	-- Contract: The Silvermoon Court
			FirstCraft(90427, 1230054);	-- Contract: The Singularity
			FirstCraft(90443, 1230070);	-- Darkmoon Dominion: Blood
			FirstCraft(90445, 1230072);	-- Darkmoon Dominion: Hunt
			FirstCraft(90444, 1230071);	-- Darkmoon Dominion: Rot
			FirstCraft(90446, 1230073);	-- Darkmoon Dominion: Void
			FirstCraft(90447, 1230074);	-- Darkmoon Sigil: Blood
			FirstCraft(90449, 1230076);	-- Darkmoon Sigil: Hunt
			FirstCraft(90448, 1230075);	-- Darkmoon Sigil: Rot
			FirstCraft(90450, 1230077);	-- Darkmoon Sigil: Void
			FirstCraft(90428, 1230055);	-- Faunatender's Baton
			FirstCraft(90431, 1230058);	-- Faunatender's Trust
			FirstCraft(90429, 1230056);	-- Floratender's Crutch
			FirstCraft(90394, 1230021);	-- Hobbyist Alchemist's Mixing Rod
			FirstCraft(90393, 1230020);	-- Hobbyist Rolling Pin
			FirstCraft(90395, 1230022);	-- Hobbyist Scribe's Quill
			FirstCraft(90390, 1230017);	-- Munsell Ink
			FirstCraft(90430, 1230057);	-- Rootwarden's Lamp
			FirstCraft(90389, 1230016);	-- Sienna Ink
			FirstCraft(90397, 1230024);	-- Sin'dorei Alchemist's Mixing Rod
			FirstCraft(90398, 1230025);	-- Sin'dorei Quill
			FirstCraft(90396, 1230023);	-- Sin'dorei Rolling Pin
			FirstCraft(90392, 1230019);	-- Soul Cipher
			FirstCraft(93124, 1260760);	-- Thalassian Competitor's Bow
			FirstCraft(90440, 1230067);	-- Thalassian Competitor's Emblem
			FirstCraft(90441, 1230068);	-- Thalassian Competitor's Insignia of Alacrity
			FirstCraft(90437, 1230064);	-- Thalassian Competitor's Lamp
			FirstCraft(90442, 1230069);	-- Thalassian Competitor's Medallion
			FirstCraft(90439, 1230066);	-- Thalassian Competitor's Pillar
			FirstCraft(90438, 1230065);	-- Thalassian Competitor's Staff
			FirstCraft(90419, 1230046);	-- Thalassian Missive of Crafting Speed
			FirstCraft(90416, 1230043);	-- Thalassian Missive of Deftness
			FirstCraft(90418, 1230045);	-- Thalassian Missive of Finesse
			FirstCraft(90422, 1230049);	-- Thalassian Missive of Ingenuity
			FirstCraft(90420, 1230047);	-- Thalassian Missive of Multicraft
			FirstCraft(90417, 1230044);	-- Thalassian Missive of Perception
			FirstCraft(90421, 1230048);	-- Thalassian Missive of Resourcefulness
			FirstCraft(90415, 1230042);	-- Thalassian Missive of the Aurora
			FirstCraft(90414, 1230041);	-- Thalassian Missive of the Feverflare
			FirstCraft(90413, 1230040);	-- Thalassian Missive of the Fireflash
			FirstCraft(90412, 1230039);	-- Thalassian Missive of the Harmonious
			FirstCraft(90411, 1230038);	-- Thalassian Missive of the Peerless
			FirstCraft(90410, 1230037);	-- Thalassian Missive of the Quickblade
			FirstCraft(90407, 1230034);	-- Thalassian Treatise on Alchemy
			FirstCraft(90399, 1230026);	-- Thalassian Treatise on Blacksmithing
			FirstCraft(90409, 1230036);	-- Thalassian Treatise on Engineering
			FirstCraft(90403, 1230030);	-- Thalassian Treatise on Enchanting
			FirstCraft(90401, 1230028);	-- Thalassian Treatise on Herbalism
			FirstCraft(90405, 1230032);	-- Thalassian Treatise on Inscription
			FirstCraft(90402, 1230029);	-- Thalassian Treatise on Jewelcrafting
			FirstCraft(90404, 1230031);	-- Thalassian Treatise on Leatherworking
			FirstCraft(90400, 1230027);	-- Thalassian Treatise on Mining
			FirstCraft(90408, 1230035);	-- Thalassian Treatise on Skinning
			FirstCraft(90406, 1230033);	-- Thalassian Treatise on Tailoring
			FirstCraft(90423, 1230050);	-- Vantus Rune: Radiant
		})),
		salvagerecipe(1269575, 262908, {	-- Midnight Milling
			i(245803),	-- Argentleaf Pigment+
			i(245804),	-- Argentleaf Pigment++
			i(245867),	-- Mana Lily Pigment+
			i(245866),	-- Mana Lily Pigment++
			i(245807),	-- Powder Pigment+
			i(245808),	-- Powder Pigment++
			i(245865),	-- Sanguithorn Pigment+
			i(245864),	-- Sanguithorn Pigment++
		}),
		filter(MISC, {
			i(245797),	-- Contract: The Amani Tribe+
			i(245798),	-- Contract: The Amani Tribe++
			i(245795),	-- Contract: The Hara'ti+
			i(245796),	-- Contract: The Hara'ti++
			i(245799),	-- Contract: The Silvermoon Court+
			i(245800),	-- Contract: The Silvermoon Court++
			i(245793),	-- Contract: The Singularity+
			i(245794),	-- Contract: The Singularity++
			i(245755, {	-- Thalassian Treatise on Alchemy
				["questID"] = 95127,
				["isWeekly"] = true,
				["groups"] = { currency(PROFESSION_KNOWLEDGE.MID.ALCHEMY) },
			}),
			i(245763, {	-- Thalassian Treatise on Blacksmithing
				["questID"] = 95128,
				["isWeekly"] = true,
				["groups"] = { currency(PROFESSION_KNOWLEDGE.MID.BLACKSMITHING) },
			}),
			i(245759, {	-- Thalassian Treatise on Enchanting
				["questID"] = 95129,
				["isWeekly"] = true,
				["groups"] = { currency(PROFESSION_KNOWLEDGE.MID.ENCHANTING) },
			}),
			i(245809, {	-- Thalassian Treatise on Engineering
				["questID"] = 95138,
				["isWeekly"] = true,
				["groups"] = { currency(PROFESSION_KNOWLEDGE.MID.ENGINEERING) },
			}),
			i(245761, {	-- Thalassian Treatise on Herbalism
				["questID"] = 95130,
				["isWeekly"] = true,
				["groups"] = { currency(PROFESSION_KNOWLEDGE.MID.HERBALISM) },
			}),
			i(245757, {	-- Thalassian Treatise on Inscription
				["questID"] = 95131,
				["isWeekly"] = true,
				["groups"] = { currency(PROFESSION_KNOWLEDGE.MID.INSCRIPTION) },
			}),
			i(245760, {	-- Thalassian Treatise on Jewelcrafting
				["questID"] = 95133,
				["isWeekly"] = true,
				["groups"] = { currency(PROFESSION_KNOWLEDGE.MID.JEWELCRAFTING) },
			}),
			i(245758, {	-- Thalassian Treatise on Leatherworking
				["questID"] = 95134,
				["isWeekly"] = true,
				["groups"] = { currency(PROFESSION_KNOWLEDGE.MID.LEATHERWORKING) },
			}),
			i(245762, {	-- Thalassian Treatise on Mining
				["questID"] = 95135,
				["isWeekly"] = true,
				["groups"] = { currency(PROFESSION_KNOWLEDGE.MID.MINING) },
			}),
			i(245828, {	-- Thalassian Treatise on Skinning
				["questID"] = 95136,
				["isWeekly"] = true,
				["groups"] = { currency(PROFESSION_KNOWLEDGE.MID.SKINNING) },
			}),
			i(245756, {	-- Thalassian Treatise on Tailoring
				["questID"] = 95137,
				["isWeekly"] = true,
				["groups"] = { currency(PROFESSION_KNOWLEDGE.MID.TAILORING) },
			}),
			i(245879),	-- Vantus Rune: Radiant+
			i(245880),	-- Vantus Rune: Radiant++
			i(245856),	-- Ace of Blood
			i(245857),	-- Two of Blood
			i(245858),	-- Three of Blood
			i(245859),	-- Four of Blood
			i(245860),	-- Five of Blood
			i(245861),	-- Six of Blood
			i(245862),	-- Seven of Blood
			i(245863),	-- Eight of Blood
			i(245830),	-- Ace of Hunt
			i(245831),	-- Two of Hunt
			i(245832),	-- Three of Hunt
			i(245833),	-- Four of Hunt
			i(245834),	-- Five of Hunt
			i(245835),	-- Six of Hunt
			i(245836),	-- Seven of Hunt
			i(245837),	-- Eight of Hunt
			i(245847),	-- Ace of Rot
			i(245848),	-- Two of Rot
			i(245849),	-- Three of Rot
			i(245850),	-- Four of Rot
			i(245851),	-- Five of Rot
			i(245852),	-- Six of Rot
			i(245853),	-- Seven of Rot
			i(245854),	-- Eight of Rot
			i(245838),	-- Ace of Void
			i(245839),	-- Two of Void
			i(245840),	-- Three of Void
			i(245841),	-- Four of Void
			i(245842),	-- Five of Void
			i(245843),	-- Six of Void
			i(245844),	-- Seven of Void
			i(245845),	-- Eight of Void
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(259205, {["requireSkill"] = ALCHEMY}),	-- Gilded Alchemist's Mixing Rod
			i(259209, {["requireSkill"] = INSCRIPTION}),	-- Gilded Sin'dorei Quill
			i(259207, {["requireSkill"] = COOKING}),	-- Gilded Sin'dorei Rolling Pin
			i(245777, {["requireSkill"] = ALCHEMY}),	-- Hobbyist Alchemist's Mixing Rod
			i(245779, {["requireSkill"] = COOKING}),	-- Hobbyist Rolling Pin
			i(245775, {["requireSkill"] = INSCRIPTION}),	-- Hobbyist Scribe's Quill
			i(245778, {["requireSkill"] = ALCHEMY}),	-- Sin'dorei Alchemist's Mixing Rod
			i(245776, {["requireSkill"] = COOKING}),	-- Sin'dorei Quill
			i(245780, {["requireSkill"] = INSCRIPTION}),	-- Sin'dorei Rolling Pin
		}),
		filter(REAGENTS, {
			i(245764),	-- Codified Azeroot+
			i(245765),	-- Codified Azeroot++
			i(245871),	-- Darkmoon Sigil: Blood+
			i(245872),	-- Darkmoon Sigil: Blood++
			i(245875),	-- Darkmoon Sigil: Hunt+
			i(245876),	-- Darkmoon Sigil: Hunt++
			i(245877),	-- Darkmoon Sigil: Rot+
			i(245878),	-- Darkmoon Sigil: Rot++
			i(245873),	-- Darkmoon Sigil: Void+
			i(245874),	-- Darkmoon Sigil: Void++
			i(245801),	-- Munsell Ink+
			i(245802),	-- Munsell Ink++
			i(245805),	-- Sienna Ink+
			i(245806),	-- Sienna Ink++
			i(245766),	-- Soul Cipher+
			i(245767),	-- Soul Cipher++
			i(245820),	-- Thalassian Missive of Crafting Speed+
			i(245821),	-- Thalassian Missive of Crafting Speed++
			i(245826),	-- Thalassian Missive of Deftness+
			i(245827),	-- Thalassian Missive of Deftness++
			i(245822),	-- Thalassian Missive of Finesse+
			i(245823),	-- Thalassian Missive of Finesse++
			i(245814),	-- Thalassian Missive of Ingenuity+
			i(245815),	-- Thalassian Missive of Ingenuity++
			i(245818),	-- Thalassian Missive of Multicraft+
			i(245819),	-- Thalassian Missive of Multicraft++
			i(245824),	-- Thalassian Missive of Perception+
			i(245825),	-- Thalassian Missive of Perception++
			i(245816),	-- Thalassian Missive of Resourcefulness+
			i(245817),	-- Thalassian Missive of Resourcefulness++
			i(245781),	-- Thalassian Missive of the Aurora+
			i(245782),	-- Thalassian Missive of the Aurora++
			i(245783),	-- Thalassian Missive of the Feverflare+
			i(245784),	-- Thalassian Missive of the Feverflare++
			i(245785),	-- Thalassian Missive of the Fireflash+
			i(245786),	-- Thalassian Missive of the Fireflash++
			i(245787),	-- Thalassian Missive of the Harmonious+
			i(245788),	-- Thalassian Missive of the Harmonious++
			i(245789),	-- Thalassian Missive of the Peerless+
			i(245790),	-- Thalassian Missive of the Peerless++
			i(245791),	-- Thalassian Missive of the Quickblade+
			i(245792),	-- Thalassian Missive of the Quickblade++
		}),
		header(HEADERS.Spell, 1230084, {	-- Transcribe: Blood
			i(245810),	-- Transcribe: Blood
		}),
		header(HEADERS.Spell, 1230082, {	-- Transcribe: Hunt
			i(245812),	-- Transcribe: Hunt
		}),
		header(HEADERS.Spell, 1230080, {	-- Transcribe: Rot
			i(245811),	-- Transcribe: Rot
		}),
		header(HEADERS.Spell, 1230078, {	-- Transcribe: Void
			i(245813),	-- Transcribe: Void
		}),
		filter(TRINKET_F, {
			i(245855),	-- Darkmoon Deck: Blood
			i(245829),	-- Darkmoon Deck: Hunt
			i(245846),	-- Darkmoon Deck: Rot
			i(245750),	-- Darkmoon Deck: Void
			i(246305),	-- Darkmoon Dominion: Blood
			i(246304),	-- Darkmoon Dominion: Hunt
			i(246306),	-- Darkmoon Dominion: Rot
			i(246307),	-- Darkmoon Dominion: Void
			i(245753),	-- Thalassian Competitor's Emblem
			i(245752),	-- Thalassian Competitor's Insignia of Alacrity
			i(245751),	-- Thalassian Competitor's Medallion
		}),
		n(WEAPONS, {
			i(245770),	-- Aln'hara Cane
			i(245769),	-- Aln'hara Lantern
			i(245771),	-- Aln'hara Pikestaff
			i(265337),	-- Aln'hara Sprigshot
			i(245773),	-- Faunatender's Baton
			i(265336),	-- Faunatender's Trust
			i(245772),	-- Floratender's Crutch
			i(245768),	-- Rootwarden's Lamp
			i(245869),	-- Thalassian Competitor's Bow
			i(245870),	-- Thalassian Competitor's Lamp
			i(245868),	-- Thalassian Competitor's Pillar
			i(268365),	-- Thalassian Competitor's Staff
		}),
	}),
	prof(JEWELCRAFTING, {
		n(DISCOVERY, {
			r(1231132),	-- Midnight Crushing
		}),
		n(DECOR, {
			i(262471),	-- Bejeweled Sin'dorei Lyre (DECOR!)
			i(262469),	-- Brilliant Phoenix Harp (DECOR!)
			i(262613),	-- Replica Haranir Mural (DECOR!)
			i(248965),	-- Resplendent Highborne Statue (DECOR!)
			i(262454),	-- Shining Sin'dorei Hourglass (DECOR!)
			i(262461),	-- Tenebrous Ren'dorei Armillary (DECOR!)
		}),
		filter(FINGER_F, {
			i(240947),	-- Gleaming Copper Band
			i(251513),	-- Loa Worshiper's Band
			i(240949),	-- Masterwork Sin'dorei Band
			i(241140),	-- Signet of Azerothian Blessings
			i(240951),	-- Thalassian Competitor's Signet
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = JEWELCRAFTING,
		},{
			fc(1230482),	-- Amani Lapis Prism
			fc(1242464),	-- Attuned Thalassian Rune-Prism
			fc(1230494),	-- Bold Biographer's Bifocals
			fc(1230501),	-- Cognitive Heliotrope
			fc(1230439),	-- Deadly Peridot
			fc(1230447),	-- Deadly Lapis
			fc(1230455),	-- Deadly Amethyst
			fc(1230463),	-- Deadly Garnet
			fc(1230500),	-- Determined Heliotrope
			fc(1230502),	-- Enduring Heliotrope
			fc(1230493),	-- Fantastic Font Focuser
			fc(1230442),	-- Flawless Quick Peridot
			fc(1230443),	-- Flawless Deadly Peridot
			fc(1230444),	-- Flawless Masterful Peridot
			fc(1230445),	-- Flawless Versatile Peridot
			fc(1230450),	-- Flawless Quick Lapis
			fc(1230451),	-- Flawless Deadly Lapis
			fc(1230452),	-- Flawless Masterful Lapis
			fc(1230453),	-- Flawless Versatile Lapis
			fc(1230458),	-- Flawless Quick Amethyst
			fc(1230459),	-- Flawless Deadly Amethyst
			fc(1230460),	-- Flawless Masterful Amethyst
			fc(1230461),	-- Flawless Versatile Amethyst
			fc(1230466),	-- Flawless Quick Garnet
			fc(1230467),	-- Flawless Deadly Garnet
			fc(1230468),	-- Flawless Masterful Garnet
			fc(1230469),	-- Flawless Versatile Garnet
			fc(1242463),	-- Flawless Text Scrutinizers
			fc(1230489),	-- Gleaming Copper Band
			fc(1230481),	-- Harandar Peridot Prism
			fc(1230497),	-- Improved Right-Handed Magnifying Glass
			fc(1230473),	-- Indecipherable Eversong Diamond
			fc(1230474),	-- Kaleidoscopic Prism
			fc(1230479),	-- Loa Worshiper's Band
			fc(1242461),	-- Mage-Eye Precision Loupes
			fc(1230440),	-- Masterful Peridot
			fc(1230448),	-- Masterful Lapis
			fc(1230456),	-- Masterful Amethyst
			fc(1230464),	-- Masterful Garnet
			fc(1230485),	-- Masterwork Sin'dorei Band
			fc(1230486),	-- Masterwork Sin'dorei Amulet
			fc(1230499),	-- Monologuer's Chalice
			fc(1230490),	-- Nocturnal Charm
			fc(1230470),	-- Powerful Eversong Diamond
			fc(1230477),	-- Prismatic Focusing Iris
			fc(1230437),	-- Quick Peridot
			fc(1230446),	-- Quick Lapis
			fc(1230454),	-- Quick Amethyst
			fc(1230462),	-- Quick Garnet
			fc(1230484),	-- Sanguine Garnet Prism
			fc(1230487),	-- Signet of Azerothian Blessings
			fc(1230491),	-- Silvermoon Focusing Shard
			fc(1230492),	-- Silvermoon Loupes
			fc(1230475),	-- Sin'dorei Lens
			fc(1230495),	-- Sin'dorei Enchanter's Crystal
			fc(1230496),	-- Sin'dorei Jeweler's Loupes
			fc(1230498),	-- Sin'dorei Scribe's Spectacles
			fc(1230478),	-- Stabilizing Gemstone Bandolier
			fc(1230472),	-- Stoic Eversong Diamond
			fc(1230476),	-- Sunglass Vial
			fc(1230471),	-- Telluric Eversong Diamond
			fc(1230483),	-- Tenebrous Amethyst Prism
			fc(1230488),	-- Thalassian Phoenix Torque
			fc(1230503),	-- Thalassian Competitor's Signet
			fc(1230504),	-- Thalassian Competitor's Amulet
			fc(1242462),	-- Thalassian Scribe's Crystalline Lens
			fc(1230441),	-- Versatile Peridot
			fc(1230449),	-- Versatile Lapis
			fc(1230457),	-- Versatile Amethyst
			fc(1230465),	-- Versatile Garnet
			fc(1251983),	-- Voidstone Shielding Array
		})),
		filter(GEMS, {
			i(241143),	-- Cognitive Heliotrope
			i(240865),	-- Deadly Amethyst+
			i(240866),	-- Deadly Amethyst++
			i(240871),	-- Deadly Garnet+
			i(240872),	-- Deadly Garnet++
			i(240881),	-- Deadly Lapis+
			i(240882),	-- Deadly Lapis++
			i(240857),	-- Deadly Peridot+
			i(240858),	-- Deadly Peridot++
			i(241142),	-- Determined Heliotrope
			i(241144),	-- Enduring
			i(240897),	-- Flawless Deadly Amethyst+
			i(240898),	-- Flawless Deadly Amethyst++
			i(240903),	-- Flawless Deadly Garnet+
			i(240904),	-- Flawless Deadly Garnet++
			i(240913),	-- Flawless Deadly Lapis+
			i(240914),	-- Flawless Deadly Lapis++
			i(240889),	-- Flawless Deadly Peridot+
			i(240890),	-- Flawless Deadly Peridot++
			i(240895),	-- Flawless Masterful Amethyst+
			i(240896),	-- Flawless Masterful Amethyst++
			i(240907),	-- Flawless Masterful Garnet+
			i(240908),	-- Flawless Masterful Garnet++
			i(240917),	-- Flawless Masterful Lapis+
			i(240918),	-- Flawless Masterful Lapis++
			i(240891),	-- Flawless Masterful Peridot+
			i(240892),	-- Flawless Masterful Peridot++
			i(240899),	-- Flawless Quick Amethyst+
			i(240900),	-- Flawless Quick Amethyst++
			i(240905),	-- Flawless Quick Garnet+
			i(240906),	-- Flawless Quick Garnet++
			i(240915),	-- Flawless Quick Lapis+
			i(240916),	-- Flawless Quick Lapis++
			i(240887),	-- Flawless Quick Peridot+
			i(240888),	-- Flawless Quick Peridot++
			i(240901),	-- Flawless Versatile Amethyst+
			i(240902),	-- Flawless Versatile Amethyst++
			i(240909),	-- Flawless Versatile Garnet+
			i(240910),	-- Flawless Versatile Garnet++
			i(240911),	-- Flawless Versatile Lapis+
			i(240912),	-- Flawless Versatile Lapis++
			i(240893),	-- Flawless Versatile Peridot+
			i(240894),	-- Flawless Versatile Peridot++
			i(240982),	-- Indecipherable Eversong Diamond+
			i(240983),	-- Indecipherable Eversong Diamond++
			i(240863),	-- Masterful Amethyst+
			i(240864),	-- Masterful Amethyst++
			i(240875),	-- Masterful Garnet+
			i(240876),	-- Masterful Garnet++
			i(240885),	-- Masterful Lapis+
			i(240886),	-- Masterful Lapis++
			i(240859),	-- Masterful Peridot+
			i(240860),	-- Masterful Peridot++
			i(240966),	-- Powerful Eversong Diamond+
			i(240967),	-- Powerful Eversong Diamond++
			i(240867),	-- Quick Amethyst+
			i(240868),	-- Quick Amethyst++
			i(240873),	-- Quick Garnet+
			i(240874),	-- Quick Garnet++
			i(240883),	-- Quick Lapis+
			i(240884),	-- Quick Lapis++
			i(240855),	-- Quick Peridot+
			i(240856),	-- Quick Peridot++
			i(240970),	-- Stoic Eversong Diamond+
			i(240971),	-- Stoic Eversong Diamond++
			i(240968),	-- Telluric Eversong Diamond+
			i(240969),	-- Telluric Eversong Diamond++
			i(240869),	-- Versatile Amethyst+
			i(240870),	-- Versatile Amethyst++
			i(240877),	-- Versatile Garnet+
			i(240878),	-- Versatile Garnet++
			i(240879),	-- Versatile Lapis+
			i(240880),	-- Versatile Lapis++
			i(240861),	-- Versatile Peridot+
			i(240862),	-- Versatile Peridot++
		}),
		header(HEADERS.Spell, 1231132, {	-- Midnight Crushing
			i(242787),	-- Crystalline Glass+
			i(242786),	-- Crystalline Glass++
			i(242620),	-- Glimmering Gemdust+
			i(242621),	-- Glimmering Gemdust++
		}),
		header(HEADERS.Spell, 1231127, {	-- Midnight Prospecting
			i(242554),	-- Amani Lapis+
			i(242722),	-- Amani Lapis++
			i(242788),	-- Duskshrouded Stone+
			i(242789),	-- Duskshrouded Stone++
			i(242608),	-- Eversong Diamond+
			i(242712),	-- Eversong Diamond++
			i(242612),	-- Flawless Amani Lapis+
			i(242727),	-- Flawless Amani Lapis++
			i(242610),	-- Flawless Harandar Peridot+
			i(242726),	-- Flawless Harandar Peridot++
			i(242613),	-- Flawless Sanguine Garnet+
			i(242724),	-- Flawless Sanguine Garnet++
			i(242611),	-- Flawless Tenebrous Amethyst+
			i(242725),	-- Flawless Tenebrous Amethyst++
			i(242607),	-- Harandar Peridot+
			i(242720),	-- Harandar Peridot++
			i(242553),	-- Sanguine Garnet+
			i(242723),	-- Sanguine Garnet++
			i(242606),	-- Tenebrous Amethyst+
			i(242721),	-- Tenebrous Amethyst++
		}),
		filter(MISC, {
			i(241132),	-- Amani Lapis Prism+
			i(241131),	-- Amani Lapis Prism++
			i(241137),	-- Harandar Peridot Prism+
			i(241138),	-- Harandar Peridot Prism++
			i(241141),	-- Monologuer's Chalice
			i(241135),	-- Sanguine Garnet Prism+
			i(241136),	-- Sanguine Garnet Prism++
			i(241133),	-- Tenebrous Amethyst Prism+
			i(241134),	-- Tenebrous Amethyst Prism++
		}),
		filter(NECK_F, {
			i(240950),	-- Masterwork Sin'dorei Amulet
			i(240948),	-- Nocturnal Charm
			i(240952),	-- Thalassian Competitor's Amulet
			i(241139),	-- Thalassian Phoenix Torque
			i(251073),	-- Voidstone Shielding Array
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(246527, {["requireSkill"] = ENCHANTING}),	-- Attuned Thalassian Rune-Prism
			i(240953, {["requireSkill"] = INSCRIPTION}),	-- Bold Biographer's Bifocals
			i(240954, {["requireSkill"] = INSCRIPTION}),	-- Fantastic Font Focuser
			i(246524, {["requireSkill"] = INSCRIPTION}),	-- Flawless Text Scrutinizers
			i(240958, {["requireSkill"] = INSCRIPTION}),	-- Improved Right-Handed Magnifying Glass
			i(246526, {["requireSkill"] = JEWELCRAFTING}),	-- Mage-Eye Precision Loupes
			i(240956, {["requireSkill"] = ENCHANTING}),	-- Silvermoon Focusing Shard
			i(240955, {["requireSkill"] = JEWELCRAFTING}),	-- Silvermoon Loupes
			i(240960, {["requireSkill"] = ENCHANTING}),	-- Sin'dorei Enchanter's Crystal
			i(240959, {["requireSkill"] = JEWELCRAFTING}),	-- Sin'dorei Jeweler's Loupes
			i(240957, {["requireSkill"] = INSCRIPTION}),	-- Sin'dorei Scribe's Spectacles
			i(246525, {["requireSkill"] = INSCRIPTION}),	-- Thalassian Scribe's Crystalline Lens
		}),
		filter(REAGENTS, {
			i(240974),	-- Kaleidoscopic Prism+
			i(240975),	-- Kaleidoscopic Prism++
			i(251487),	-- Prismatic Focusing Iris+
			i(251488),	-- Prismatic Focusing Iris++
			i(240972),	-- Sin'dorei Lens+
			i(240973),	-- Sin'dorei Lens++
			i(251489),	-- Stabilizing Gemstone Bandolier+
			i(251490),	-- Stabilizing Gemstone Bandolier++
			i(240990),	-- Sunglass Vial+
			i(240991),	-- Sunglass Vial++
		}),
	}),
	prof(LEATHERWORKING, {
		n(ARMOR, {
			filter(LEATHER, {
				i(244606),	-- Hexwoven Strand
				i(244612),	-- Row Walker's Deflectors
				i(244613),	-- Row Walker's Insurance
				i(244614),	-- Row Walker's Swiftgrips
				i(244570),	-- Silvermoon Agent's Coat
				i(244571),	-- Silvermoon Agent's Cover
				i(244576),	-- Silvermoon Agent's Deflectors
				i(244575),	-- Silvermoon Agent's Handwraps
				i(244574),	-- Silvermoon Agent's Leggings
				i(244572),	-- Silvermoon Agent's Mantle
				i(244569),	-- Silvermoon Agent's Sneakers
				i(244573),	-- Silvermoon Agent's Utility Belt
				i(244585),	-- Smuggler's Leather Footpads
				i(244587),	-- Smuggler's Leather Tunic
				i(244586),	-- Smuggler's Leather Wristbands
				i(244595),	-- Smuggler's Reinforced Binding
				i(244593),	-- Smuggler's Reinforced Gloves
				i(244591),	-- Smuggler's Reinforced Hood
				i(244594),	-- Smuggler's Reinforced Pants
				i(244592),	-- Smuggler's Reinforced Shoulderguards
				i(244557),	-- Thalassian Competitor's Leather Belt
				i(244553),	-- Thalassian Competitor's Leather Boots
				i(244554),	-- Thalassian Competitor's Leather Chestpiece
				i(244559),	-- Thalassian Competitor's Leather Gloves
				i(244555),	-- Thalassian Competitor's Leather Mask
				i(244556),	-- Thalassian Competitor's Leather Shoulderpads
				i(244558),	-- Thalassian Competitor's Leather Trousers
				i(244560),	-- Thalassian Competitor's Leather Wristwraps
				i(244601),	-- World Tree Rootwraps
			}),
			filter(MAIL, {
				i(244605),	-- Axe-Flingin' Bands
				i(244580),	-- Farstrider's Brilliant Plumes
				i(244584),	-- Farstrider's Plated Bracers
				i(244577),	-- Farstrider's Razor Talons
				i(244582),	-- Farstrider's Reinforced Faulds
				i(244578),	-- Farstrider's Scouting Vest
				i(244583),	-- Farstrider's Sharpened Claws
				i(244581),	-- Farstrider's Trophy Belt
				i(244579),	-- Farstrider's Unwavering Visage
				i(244602),	-- Ranger-General's Grips
				i(244598),	-- Scout's Polished Gauntlets
				i(244599),	-- Scout's Polished Legguards
				i(244596),	-- Scout's Polished Skullcap
				i(244597),	-- Scout's Polished Spaulders
				i(244600),	-- Scout's Polished Wrap
				i(244588),	-- Scout's Scaled Boots
				i(244589),	-- Scout's Scaled Bracers
				i(244590),	-- Scout's Scaled Ves
				i(244563),	-- Thalassian Competitor's Chain Cowl
				i(244568),	-- Thalassian Competitor's Chain Cuffs
				i(244564),	-- Thalassian Competitor's Chain Epaulets
				i(244565),	-- Thalassian Competitor's Chain Girdle
				i(244567),	-- Thalassian Competitor's Chain Grips
				i(244566),	-- Thalassian Competitor's Chain Leggings
				i(244561),	-- Thalassian Competitor's Chain Stompers
				i(244562),	-- Thalassian Competitor's Chain Tunic
				i(244611),	-- World Tender's Barkclasp
				i(244610),	-- World Tender's Rootslippers
				i(244609),	-- World Tender's Trunkplate
			}),
		}),
		n(ARMOR_ENCHANTMENTS, {
			i(244642),	-- Blood Knight's Armor Kit+
			i(244643),	-- Blood Knight's Armor Kit++
			i(244640),	-- Forest Hunter's Armor Kit+
			i(244641),	-- Forest Hunter's Armor Kit++
			i(244644),	-- Thalassian Scout Armor Kit+
			i(244645),	-- Thalassian Scout Armor Kit++
		}),
		n(DECOR, {
			i(262449),	-- Embossed Sin'dorei Fur Rug (DECOR!)
			i(265791),	-- Haranir Canopy Bed (DECOR!)
			i(253457),	-- Leather-Bound Haranir Wall Shelf (DECOR!)
			i(264244),	-- Plush Haranir Leather Pillow (DECOR!)
			i(262589),	-- Simple Haranir Table (DECOR!)
			i(262600),	-- Stitched Haranir Rug (DECOR!)
			i(243090),	-- Sturdy Haranir Chair (DECOR!)
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = LEATHERWORKING,
		},{
			fc(1237551),	-- Apprentice Smith's Apron
			fc(1237560),	-- Apprentice Jeweler's Apron
			fc(1237516),	-- Axe-Flingin' Bands
			fc(1237577),	-- Blessed Pango Charm
			fc(1237545),	-- Blood Knight's Armor Kit
			fc(1237548),	-- Chemist's Cap
			fc(1237579),	-- Devouring Banding
			fc(1237557),	-- Eversong Botanist's Satchel
			fc(1237570),	-- Eversong Hunter's Headcover
			fc(1237536),	-- Farstrider's Scouting Vest
			fc(1237537),	-- Farstrider's Razor Talons
			fc(1237538),	-- Farstrider's Sharpened Claws
			fc(1237539),	-- Farstrider's Unwavering Visage
			fc(1237540),	-- Farstrider's Reinforced Faulds
			fc(1237541),	-- Farstrider's Brilliant Plumes
			fc(1237542),	-- Farstrider's Trophy Belt
			fc(1237543),	-- Farstrider's Plated Bracers
			fc(1237544),	-- Forest Hunter's Armor Kit
			fc(1237489),	-- Hexwoven Strand
			fc(1237563),	-- Hideworker's Cover
			fc(1237573),	-- Infused Scalewoven Hide
			fc(1237578),	-- Primal Spore Binding
			fc(1237515),	-- Ranger-General's Grips
			fc(1237486),	-- Row Walker's Deflectors
			fc(1237487),	-- Row Walker's Insurance
			fc(1237488),	-- Row Walker's Swiftgrips
			fc(1237572),	-- Scalewoven Hide
			fc(1237528),	-- Scout's Scaled Vest
			fc(1237529),	-- Scout's Scaled Boots
			fc(1237530),	-- Scout's Polished Gauntlets
			fc(1237531),	-- Scout's Polished Skullcap
			fc(1237532),	-- Scout's Polished Legguards
			fc(1237533),	-- Scout's Polished Spaulders
			fc(1237534),	-- Scout's Polished Wrap
			fc(1237535),	-- Scout's Scaled Bracers
			fc(1237507),	-- Silvermoon Agent's Coat
			fc(1237508),	-- Silvermoon Agent's Sneakers
			fc(1237509),	-- Silvermoon Agent's Handwraps
			fc(1237510),	-- Silvermoon Agent's Cover
			fc(1237511),	-- Silvermoon Agent's Leggings
			fc(1237512),	-- Silvermoon Agent's Mantle
			fc(1237513),	-- Silvermoon Agent's Utility Belt
			fc(1237514),	-- Silvermoon Agent's Deflectors
			fc(1237575),	-- Silvermoon Weapon Wrap
			fc(1237549),	-- Sin'dorei Alchemist's Hat
			fc(1237552),	-- Sin'dorei Forgemaster's Cover
			fc(1237555),	-- Sin'dorei Engineer's Gloves
			fc(1237558),	-- Sin'dorei Herbalist's Backpack
			fc(1237561),	-- Sin'dorei Jeweler's Cover
			fc(1237564),	-- Sin'dorei Leathershaper's Smock
			fc(1237567),	-- Sin'dorei Hunter's Pack
			fc(1237574),	-- Sin'dorei Armor Banding
			fc(1237566),	-- Skinner's Backpack
			fc(1237569),	-- Skinner's Cap
			fc(1237499),	-- Smuggler's Leather Tunic
			fc(1237500),	-- Smuggler's Leather Footpads
			fc(1237501),	-- Smuggler's Reinforced Gloves
			fc(1237502),	-- Smuggler's Reinforced Hood
			fc(1237503),	-- Smuggler's Reinforced Pants
			fc(1237504),	-- Smuggler's Reinforced Shoulderguards
			fc(1237505),	-- Smuggler's Reinforced Binding
			fc(1237506),	-- Smuggler's Leather Wristbands
			fc(1237490),	-- Thalassian Competitor's Leather Boots
			fc(1237491),	-- Thalassian Competitor's Leather Chestpiece
			fc(1237492),	-- Thalassian Competitor's Leather Gloves
			fc(1237493),	-- Thalassian Competitor's Leather Mask
			fc(1237494),	-- Thalassian Competitor's Leather Trousers
			fc(1237495),	-- Thalassian Competitor's Leather Shoulderpads
			fc(1237496),	-- Thalassian Competitor's Leather Belt
			fc(1237497),	-- Thalassian Competitor's Leather Wristwraps
			fc(1237520),	-- Thalassian Competitor's Chain Tunic
			fc(1237521),	-- Thalassian Competitor's Chain Stompers
			fc(1237522),	-- Thalassian Competitor's Chain Grips
			fc(1237523),	-- Thalassian Competitor's Chain Cowl
			fc(1237524),	-- Thalassian Competitor's Chain Leggings
			fc(1237525),	-- Thalassian Competitor's Chain Epaulets
			fc(1237526),	-- Thalassian Competitor's Chain Girdle
			fc(1237527),	-- Thalassian Competitor's Chain Cuffs
			fc(1237546),	-- Thalassian Scout Armor Kit
			fc(1237550),	-- Thalassian Alchemist's Mixcap
			fc(1237553),	-- Thalassian Ironbender's Regalia
			fc(1237556),	-- Thalassian Scrapmaster's Gauntlets
			fc(1237559),	-- Thalassian Herbtender's Cradle
			fc(1237562),	-- Thalassian Gemshaper's Grand Cover
			fc(1237565),	-- Thalassian Hideshaper's Regalia
			fc(1237568),	-- Thalassian Wildseeker's Workbag
			fc(1237571),	-- Thalassian Wildseeker's Stridercap
			fc(1237554),	-- Tinker's Handguard
			fc(1237547),	-- Void-touched Drums
			fc(1237498),	-- World Tree Rootwraps
			fc(1237517),	-- World Tender's Trunkplate
			fc(1237518),	-- World Tender's Rootslippers
			fc(1237519),	-- World Tender's Barkclasp
		})),
		filter(MISC, {
			i(244639),	-- Void-Touched Drums
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(244629, {["requireSkill"] = JEWELCRAFTING}),	-- Apprentice Jeweler's Apron
			i(244627, {["requireSkill"] = BLACKSMITHING}),	-- Apprentice Smith's Apron
			i(244620, {["requireSkill"] = ALCHEMY}),	-- Chemist's Cap
			i(244615, {["requireSkill"] = HERBALISM}),	-- Eversong Botanist's Satchel
			i(244623, {["requireSkill"] = SKINNING}),	-- Eversong Hunter's Headcover
			i(244619, {["requireSkill"] = LEATHERWORKING}),	-- Hideworker's Cover
			i(244626, {["requireSkill"] = ALCHEMY}),	-- Sin'dorei Alchemist's Hat
			i(244624, {["requireSkill"] = ENGINEERING}),	-- Sin'dorei Engineer's Gloves
			i(244628, {["requireSkill"] = BLACKSMITHING}),	-- Sin'dorei Forgemaster's Cover
			i(244621, {["requireSkill"] = HERBALISM}),	-- Sin'dorei Herbalist's Backpack
			i(244622, {["requireSkill"] = SKINNING}),	-- Sin'dorei Hunter's Pack
			i(244630, {["requireSkill"] = JEWELCRAFTING}),	-- Sin'dorei Jeweler's Cover
			i(244625, {["requireSkill"] = LEATHERWORKING}),	-- Sin'dorei Leathershaper's Smock
			i(244616, {["requireSkill"] = SKINNING}),	-- Skinner's Backpack
			i(244617, {["requireSkill"] = SKINNING}),	-- Skinner's Cap
			i(244812, {["requireSkill"] = ALCHEMY}),	-- Thalassian Alchemist's Mixcap
			i(244814, {["requireSkill"] = JEWELCRAFTING}),	-- Thalassian Gemshaper's Grand Cover
			i(244807, {["requireSkill"] = HERBALISM}),	-- Thalassian Herbtender's Cradle
			i(244811, {["requireSkill"] = LEATHERWORKING}),	-- Thalassian Hideshaper's Regalia
			i(244813, {["requireSkill"] = BLACKSMITHING}),	-- Thalassian Ironbender's Regalia
			i(244810, {["requireSkill"] = ENGINEERING}),	-- Thalassian Scrapmaster's Gauntlets
			i(244809, {["requireSkill"] = SKINNING}),	-- Thalassian Wildseeker's Stridercap
			i(244808, {["requireSkill"] = SKINNING}),	-- Thalassian Wildseeker's Workbag
			i(244618, {["requireSkill"] = ENGINEERING}),	-- Tinker's Handguard
		}),
		filter(REAGENTS, {
			i(244603),	-- Blessed Pango Charm+
			i(244604),	-- Blessed Pango Charm++
			i(244674),	-- Devouring Banding+
			i(244675),	-- Devouring Banding++
			i(244633),	-- Infused Scalewoven Hide+
			i(244634),	-- Infused Scalewoven Hide++
			i(244607),	-- Primal Spore Binding+
			i(244608),	-- Primal Spore Binding++
			i(244631),	-- Scalewoven Hide+
			i(244632),	-- Scalewoven Hide++
			i(244637),	-- Silvermoon Weapon Wrap+
			i(244638),	-- Silvermoon Weapon Wrap++
			i(244635),	-- Sin'dorei Armor Banding+
			i(244636),	-- Sin'dorei Armor Banding++
		}),
	}),
	prof(MINING, {
		n(DISCOVERY, {
			r_withQuest(1225348, 88471),	-- Brilliant Silver
			r_withQuest(1225357, 88466),	-- Brilliant Silver Seam
			r_withQuest(1225359, 88484),	-- Lightfused Brilliant Silver
			r_withQuest(1225351, 88487),	-- Lightfused Refulgent Copper
			r_withQuest(1225367, 88488),	-- Lightfused Umbral Tin
			r(1225818),	-- Overload Lightfused Deposits
			r(1225817),	-- Overload Primal Deposits
			r(1225820),	-- Overload Voidbound Deposits
			r(1225819),	-- Overload Wild Deposits
			r_withQuest(1225361, 88490),	-- Primal Brilliant Silver
			r_withQuest(1225354, 88479),	-- Primal Refulgent Copper
			r_withQuest(1225369, 88469),	-- Primal Umbral Tin
			r_withQuest(1225343, 88475),	-- Refulgent Copper
			r_withQuest(1225350, 88480),	-- Refulgent Copper Seam
			r_withQuest(1225355, 88491),	-- Rich Brilliant Silver
			r_withQuest(1225349, 88476),	-- Rich Refulgent Copper
			r_withQuest(1225365, 88478),	-- Rich Umbral Tin
			r_withQuest(1225347, 88477),	-- Umbral Tin
			r_withQuest(1225366, 88481),	-- Umbral Tin Seam
			r_withQuest(1225362, 88465),	-- Voidbound Brilliant Silver
			r_withQuest(1225352, 88463),	-- Voidbound Refulgent Copper
			r_withQuest(1225370, 88470),	-- Voidbound Umbral Tin
			r_withQuest(1225363, 88472),	-- Wild Brilliant Silver
			r_withQuest(1225353, 88486),	-- Wild Refulgent Copper
			r_withQuest(1225368, 88485),	-- Wild Umbral Tin
		}),
		header(HEADERS.Spell, 2575, {	-- Mining
			i(237364),	-- Brilliant Silver Ore+
			i(237365),	-- Brilliant Silver Ore++
			i(237507),	-- Cloudy Quartz
			i(237366),	-- Dazzling Thorium
			i(237496),	-- Igneous Rock Specimen
			i(237359),	-- Refulgent Copper Ore+
			i(237361),	-- Refulgent Copper Ore++
			i(237506),	-- Septarian Nodule
			i(237362),	-- Umbral Tin Ore+
			i(237363),	-- Umbral Tin Ore++
			i(265530),	-- Plans: Ornamental Silvermoon Hanger (RECIPE!)
		}),
	}),
	prof(SKINNING, {
		header(HEADERS.Spell, 471014, {	-- Midnight Skinning
			i(238523),	-- Carving Canine
			i(238525),	-- Fantastic Fur
			i(238625),	-- Fine Void-Tempered Hide
			i(238528),	-- Majestic Claw
			i(238530),	-- Majestic Fin
			i(238529),	-- Majestic Hide
			i(238627),	-- Manafused Sample
			i(238626),	-- Mana-Infused Bone
			i(239077),	-- Mound of Mildly-Meaningful Meat
			i(238522),	-- Peerless Plumage
			i(238518),	-- Void-Tempered Hide+
			i(238519),	-- Void-Tempered Hide++
			i(238511),	-- Void-Tempered Leather+
			i(238512),	-- Void-Tempered Leather++
			i(238520),	-- Void-Tempered Plating+
			i(238521),	-- Void-Tempered Plating++
			i(238513),	-- Void-Tempered Scales+
			i(238514),	-- Void-Tempered Scales++
		}),
		i(238656),	-- Grand Beast Lure
		i(238657),	-- Lightbloom Diffuser
		i(238652),	-- Majestic Eversong Lure
		i(238653),	-- Majestic Zul'Aman Lure
		i(238654),	-- Majestic Harandar Lure
		i(238655),	-- Majestic Voidstorm Lure
		i(238659),	-- Primal Diffuser
		i(238531),	-- Radiant Stomach
		i(238660),	-- Void Diffuser
		i(238658),	-- Wild Diffuser
	}),
	prof(TAILORING, {
		n(ARMOR, {
			i(239656),	-- Adherent's Silken Shroud
			i(239660),	-- Arcanoweave Bracers
			i(239661),	-- Arcanoweave Cloak
			i(239664),	-- Arcanoweave Cord
			i(239662),	-- Arcanoweave Treads
			i(239670),	-- Courtly Belt
			i(239674),	-- Courtly Cloak
			i(239669),	-- Courtly Gloves
			i(239668),	-- Courtly Helm
			i(239676),	-- Courtly Pants
			i(239672),	-- Courtly Robes
			i(239675),	-- Courtly Shoulders
			i(239673),	-- Courtly Slippers
			i(239671),	-- Courtly Wrists
			i(239648),	-- Martyr's Bindings
			i(239652),	-- Martyr's Crown
			i(239653),	-- Martyr's Gloves
			i(239651),	-- Martyr's Leggings
			i(239650),	-- Martyr's Mantle
			i(239654),	-- Martyr's Slippers
			i(239655),	-- Martyr's Vestments
			i(239649),	-- Martyr's Waistwrap
			i(239657),	-- Sunfire Bracers
			i(239658),	-- Sunfire Cloak
			i(239663),	-- Sunfire Sash
			i(239659),	-- Sunfire Treads
			i(239677),	-- Thalassian Competitor's Cloth Bands
			i(239678),	-- Thalassian Competitor's Cloth Cloak
			i(239679),	-- Thalassian Competitor's Cloth Gloves
			i(239680),	-- Thalassian Competitor's Cloth Hood
			i(239681),	-- Thalassian Competitor's Cloth Leggings
			i(239682),	-- Thalassian Competitor's Cloth Sash
			i(239683),	-- Thalassian Competitor's Cloth Shoulderpads
			i(239684),	-- Thalassian Competitor's Cloth Treads
			i(239685),	-- Thalassian Competitor's Cloth Tunic
		}),
		filter(BAGS, {
			i(240158),	-- Arcanoweave Reagent Rucksack
			i(240159),	-- Bright Linen Reagent Satchel
			i(240160),	-- Imbued Bright Linen Backpack
			i(240161),	-- Sunfire Silk Backpack
		}),
		n(ARMOR_ENCHANTMENTS, {
			i(240154),	-- Arcanoweave Spellthread+
			i(240155),	-- Arcanoweave Spellthread++
			i(240156),	-- Bright Linen Spellthread+
			i(240157),	-- Bright Linen Spellthread++
			i(240094),	-- Sunfire Silk Spellthread+
			i(240133),	-- Sunfire Silk Spellthread++
		}),
		filter(COSMETIC, {
			i(267448),	-- Blood-Tempered Cape
			i(267447),	-- Farstrider's Embroidered Cover
			i(267446),	-- Scout's Cape
			i(267445),	-- Silvermoon Agent's Drape
			i(267444),	-- Smuggler's Cloak
			i(267449),	-- Spellbreaker's Shroud
		}),
		n(DECOR, {
			i(262593),	-- Chic Silvermoon Pillow (DECOR!)
			i(262352),	-- Lush Telogrus Carpet (DECOR!)
			i(262591),	-- Luxurious Silvermoon Lounge Cushion (DECOR!)
			i(262592),	-- Plush Silvermoon Bed (DECOR!)
			i(262599),	-- Silvermoon Curtains (DECOR!)
			i(262611),	-- Voidstrider Saddlebag (DECOR!)
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = TAILORING,
		},{
			FirstCraft(90027, 1228950);	-- Adherent's Silken Shroud
			FirstCraft(90082, 1227926);	-- Arcanoweave Bolt
			FirstCraft(90062, 1228985);	-- Arcanoweave Cloak
			FirstCraft(90065, 1228988);	-- Arcanoweave Cord
			FirstCraft(90038, 1228961);	-- Arcanoweave Lining
			FirstCraft(90056, 1228979);	-- Arcanoweave Reagent Rucksack
			FirstCraft(90052, 1228975);	-- Arcanoweave Spellthread
			FirstCraft(90063, 1228986);	-- Arcanoweave Treads
			FirstCraft(90045, 1228968);	-- Bright Linen Alchemy Apron
			FirstCraft(90018, 1228941);	-- Bright Linen Bandage
			FirstCraft(90016, 1228939);	-- Bright Linen Bolt
			FirstCraft(90047, 1228970);	-- Bright Linen Enchanting Hat
			FirstCraft(90048, 1228971);	-- Bright Linen Fishing Hat
			FirstCraft(90049, 1228972);	-- Bright Linen Herbalism Hat
			FirstCraft(90055, 1228978);	-- Bright Linen Reagent Satchel
			FirstCraft(90053, 1228976);	-- Bright Linen Spellthread
			FirstCraft(90050, 1228973);	-- Bright Linen Tailoring Robe
			FirstCraft(90030, 1228953);	-- Courtly Belt
			FirstCraft(90035, 1228958);	-- Courtly Cloak
			FirstCraft(90029, 1228952);	-- Courtly Gloves
			FirstCraft(90028, 1228951);	-- Courtly Helm
			FirstCraft(90033, 1228956);	-- Courtly Pants
			FirstCraft(90032, 1228955);	-- Courtly Robes
			FirstCraft(90036, 1228959);	-- Courtly Shoulders
			FirstCraft(90034, 1228957);	-- Courtly Slippers
			FirstCraft(90031, 1228954);	-- Courtly Wrists
			FirstCraft(90039, 1228962);	-- Elegant Artisan's Alchemy Coveralls
			FirstCraft(90040, 1228963);	-- Elegant Artisan's Cooking Hat
			FirstCraft(90041, 1228964);	-- Elegant Artisan's Enchanting Hat
			FirstCraft(90042, 1228965);	-- Elegant Artisan's Fishing Hat
			FirstCraft(90043, 1228966);	-- Elegant Artisan's Herbalism Hat
			FirstCraft(90044, 1228967);	-- Elegant Artisan's Tailoring Robe
			FirstCraft(90046, 1228969);	-- Chef's Bright Linen Cooking Chapeau
			FirstCraft(90054, 1228977);	-- Imbued Bright Linen Backpack
			FirstCraft(90017, 1228940);	-- Imbued Bright Linen Bolt
			FirstCraft(90022, 1228945);	-- Martyr's Bindings
			FirstCraft(90019, 1228942);	-- Martyr's Crown
			FirstCraft(90020, 1228943);	-- Martyr's Gloves
			FirstCraft(90024, 1228947);	-- Martyr's Leggings
			FirstCraft(90026, 1228949);	-- Martyr's Mantle
			FirstCraft(90025, 1228948);	-- Martyr's Slippers
			FirstCraft(90023, 1228946);	-- Martyr's Vestments
			FirstCraft(90021, 1228944);	-- Martyr's Waistwrap
			FirstCraft(90058, 1228981);	-- Sunfire Bracers
			FirstCraft(90059, 1228982);	-- Sunfire Cloak
			FirstCraft(90064, 1228987);	-- Sunfire Sash
			FirstCraft(90057, 1228980);	-- Sunfire Silk Backpack
			FirstCraft(90083, 1228060);	-- Sunfire Silk Bolt
			FirstCraft(90037, 1228960);	-- Sunfire Silk Lining
			FirstCraft(90051, 1228974);	-- Sunfire Silk Spellthread
			FirstCraft(90060, 1228983);	-- Sunfire Treads
			FirstCraft(90066, 1228989);	-- Thalassian Competitor's Cloth Bands
			FirstCraft(90067, 1228990);	-- Thalassian Competitor's Cloth Cloak
			FirstCraft(90068, 1228991);	-- Thalassian Competitor's Cloth Gloves
			FirstCraft(90069, 1228992);	-- Thalassian Competitor's Cloth Hood
			FirstCraft(90070, 1228993);	-- Thalassian Competitor's Cloth Leggings
			FirstCraft(90071, 1228994);	-- Thalassian Competitor's Cloth Sash
			FirstCraft(90072, 1228995);	-- Thalassian Competitor's Cloth Shoulderpads
			FirstCraft(90073, 1228996);	-- Thalassian Competitor's Cloth Treads
			FirstCraft(90074, 1228997);	-- Thalassian Competitor's Cloth Tunic
		})),
		filter(MISC, {
			i(239711),	-- Bright Linen Bandage+
			i(239713),	-- Bright Linen Bandage++
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(239641, {["requireSkill"] = ALCHEMY}),	-- Bright Linen Alchemy Apron
			i(239643, {["requireSkill"] = ENCHANTING}),	-- Bright Linen Enchanting Hat
			i(239644, {["requireSkill"] = FISHING}),	-- Bright Linen Fishing Hat
			i(239645, {["requireSkill"] = HERBALISM}),	-- Bright Linen Herbalism Hat
			i(239646, {["requireSkill"] = TAILORING}),	-- Bright Linen Tailoring Robe
			i(239642, {["requireSkill"] = COOKING}),	-- Chef's Bright Linen Cooking Chapeau
			i(239635, {["requireSkill"] = ALCHEMY}),	-- Elegant Artisan's Alchemy Coveralls
			i(239636, {["requireSkill"] = COOKING}),	-- Elegant Artisan's Cooking Hat
			i(239637, {["requireSkill"] = ENCHANTING}),	-- Elegant Artisan's Enchanting Hat
			i(239638, {["requireSkill"] = FISHING}),	-- Elegant Artisan's Fishing Hat
			i(239639, {["requireSkill"] = HERBALISM}),	-- Elegant Artisan's Herbalism Hat
			i(239640, {["requireSkill"] = TAILORING}),	-- Elegant Artisan's Tailoring Robe
			i(267052, {["requireSkill"] = ALCHEMY}),	-- Thalassian Alchemy Coveralls
			i(267054, {["requireSkill"] = COOKING}),	-- Thalassian Chef's Chapeau
			i(267056, {["requireSkill"] = ENCHANTING}),	-- Thalassian Enchanter's Bonnet
			i(267060, {["requireSkill"] = HERBALISM}),	-- Thalassian Herbalist's Cowl
			i(267062, {["requireSkill"] = TAILORING}),	-- Thalassian Tailor's Threads
		}),
		filter(REAGENTS, {
			i(239198),	-- Arcanoweave Bolt+
			i(239200),	-- Arcanoweave Bolt++
			i(240166),	-- Arcanoweave Lining+
			i(240167),	-- Arcanoweave Lining++
			i(239700),	-- Bright Linen Bolt+
			i(239701),	-- Bright Linen Bolt++
			i(239702),	-- Imbued Bright Linen Bolt+
			i(239703),	-- Imbued Bright Linen Bolt++
			i(239201),	-- Sunfire Silk Bolt+
			i(239202),	-- Sunfire Silk Bolt++
			i(240164),	-- Sunfire Silk Lining+
			i(240165),	-- Sunfire Silk Lining++
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_1_LAUNCH } }, {
	n(PROFESSIONS, {
		prof(ALCHEMY, {
			q(90720),	-- 5/20 Synthesis Synergy
			q(90721),	-- 10/20 Synthesis Synergy
			q(90722),	-- 15/20 Synthesis Synergy
			--q(TODO),	-- 20/20 Synthesis Synergy
		}),
		prof(MINING, {
			q(87670),	-- 40/40 Over-LODED
		}),
		prof(SKINNING, {
			q(88522),	-- 20/40 Thorough Tanning (2nd charge)
			q(88525),	-- 40/40 Thorough Tanning (3rd charge)
		}),
		prof(SKINNING, sharedData({ ["isDaily"] = true }, {
			q(93630, name(HEADERS.NPC, 250826)),	-- Skinning Banuran
			q(93631, name(HEADERS.NPC, 250582)),	-- Skinning Bloated Snapdragon
			q(95459, name(HEADERS.NPC, 256770)),	-- Skinning Bilemaw the Gluttonous
			q(93638, name(HEADERS.NPC, 249844)),	-- Skinning Chironex
			q(93633, name(HEADERS.NPC, 255348)),	-- Skinning Dame Bloodshed
			q(88545, name(HEADERS.NPC, 245688)),	-- Skinning Gloomclaw
			q(95517, name(HEADERS.NPC, 249849)),	-- Skinning Ha'kalawe
			q(93632, name(HEADERS.NPC, 246633)),	-- Skinning Harried Hawkstrider
			q(88531, name(HEADERS.NPC, 245690)),	-- Skinning Lumenfin
			q(88524, name(HEADERS.NPC, 247101)),	-- Skinning Netherscythe
			q(93634, name(HEADERS.NPC, 242032)),	-- Skinning Oophaga
			q(88542, name(HEADERS.NPC, 253304)),	-- Skinning Paingolin
			q(95516, name(HEADERS.NPC, 250321)),	-- Skinning Pterrock
			q(95469, name(HEADERS.NPC, 257027)),	-- Skinning Rakshur the Bonegrinder
			q(95514, name(HEADERS.NPC, 256808)),	-- Skinning Ravengerus
			q(95519, name(HEADERS.NPC, 248741)),	-- Skinning Rhazul
			q(95515, name(HEADERS.NPC, 256922)),	-- Skinning Screammaxa the Matriarch
			q(95518, name(HEADERS.NPC, 250180)),	-- Skinning Serrasa
			q(88526, name(HEADERS.NPC, 245699)),	-- Skinning Silverscale
			q(95470, name(HEADERS.NPC, 242031)),	-- Skinning Spinefrill
			q(95446, name(HEADERS.NPC, 250876)),	-- Skinning Terrinor
			q(93637, name(HEADERS.NPC, 242033)),	-- Skinning Tiny Vermin
			q(93639, name(HEADERS.NPC, 238498)),	-- Skinning Territorial Voidscythe
			q(93635, name(HEADERS.NPC, 245691)),	-- Skinning The Decaying Diamondback
			q(95471, name(HEADERS.NPC, 242035)),	-- Skinning The Devouring Invader
			q(93636, name(HEADERS.NPC, 242024)),	-- Skinning The Snapping Scourge
			q(88532, name(HEADERS.NPC, 247096)),	-- Skinning Umbrafang
		})),
		prof(TAILORING, {
			q(89422),	-- 0/20 Arcanoweave Expertise
			q(89423),	-- 20/20 Arcanoweave Expertise
			q(89460),	-- 0/20 Sunfire Expertise
			q(89461),	-- 20/20 Sunfire Expertise
		}),
	}),
})));
