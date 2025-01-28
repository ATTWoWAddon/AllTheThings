---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
-- Simple function for First Craft HQTs
-- ex. FirstCraft(QUESTID, RECIPEID);	-- RECIPE_NAME
local function FirstCraft(questID, recipeID, added, removed)
	local t = hqt(questID, name(HEADERS.Spell, recipeID))
	t.provider = { "s", recipeID };
	if added then
		t.timeline = { added };
	end
	if removed then
		if not added then
			error("Cannot have removed FirstCraft without added")
		end
		t.timeline[#t.timeline + 1] = removed
	end
	return t;
end
local function FirstSkin(questID, creatureID, added, group)
	local t = hqt(questID, name(HEADERS.NPC, creatureID))
	t.provider = { "n", creatureID };
	t.isWeekly = true;
	if added then
		t.timeline = { added };
	end
	if group then
		t.group = { group };
	end
	return t;
end

root(ROOTS.Craftables, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	i(190456),	-- Artisan's Mettle
	-- Optional
	i(198046),	-- Concentrated Primal Infusion
	i(228368, {["timeline"] = { ADDED_11_0_0 }}),	-- Relic of the Past VI
	i(198048),	-- Titan Training Matrix I
	i(198056),	-- Titan Training Matrix II
	i(198058),	-- Titan Training Matrix III
	i(198059),	-- Titan Training Matrix IV
	i(190454, {["timeline"] = {ADDED_10_0_2_LAUNCH, REMOVED_10_1_0}}),	-- Depleted Primal Chaos
	i(197921),	-- Primal Infusion
	-- VENDORS
	i(201832),	-- Smudged Lens
	-- Weekly Quest
	i(190453),	-- Spark of Ingenuity
	i(204440, {	-- Spark of Shadowflame
		["cost"] = {{"i", 204717, 2}},	-- Splintered Spark of Shadowflame
		["timeline"] = { ADDED_10_1_0 },
	}),
	i(206959, {	-- Spark of Dreams
		["cost"] = {{"i", 208396, 2}},	-- Splintered Spark of Dreams
		["timeline"] = { ADDED_10_2_0 },
	}),
	i(211516, {	-- Spark of Awakening
		["cost"] = {{"i", 211515, 2}},	-- Splintered Spark of Awakening
		["timeline"] = { ADDED_10_2_6_SEASON_FOUR },
	}),
	-- Crafting
	i(191529),	-- Illustrious Insight
	i(191526),	-- Lesser Illustrious Insight
	i(204462, {["timeline"] = {ADDED_10_1_0}}),	-- Dracothyst Shards
	prof(ALCHEMY, {
		spell(370747, {	-- Advanced Phial Experimentation
			["sym"] = {{"select","spellID",370746},{"extract","recipeID"}},	-- Basic Phial Experimentation -> Recipes
			["g"] = {
				i(193366, {	-- Advanced Phial Experimentation
					-- Move to Basic Phial Experimentation if possible discovery
					r(370460),	-- Phial of Charged Isolation (RECIPE!)
					r(370462),	-- Phial of Glacial Fury (RECIPE!)
					r(370463),	-- Phial of Static Empowerment (RECIPE!)
					r(370453),	-- Phial of Still Air (RECIPE!)
					r(370438),	-- Phial of the Eye in the Storm (RECIPE!)
					r(370473),	-- Steaming Phial of Finesse (RECIPE!)
				}),
			},
		}),
		spell(370745, {	-- Advanced Potion Experimentation
			-- Nothing moved to Basic yet, so don't symlink to it
			-- ["sym"] = {{"select","spellID",370743},{"extract","recipeID"}},	-- Basic Potion Experimentation -> Recipes
			["g"] = {
				i(193367, {	-- Advanced Potion Experimentation
					-- Move to Basic Potion Experimentation if possible discovery
					r(370478),	-- Potion of Frozen Fatality (RECIPE!)
					r(370524),	-- Potion of Frozen Focus (RECIPE!)
					r(370558),	-- Potion of Gusts (RECIPE!)
					r(370561),	-- Potion of Shocking Disclosure (RECIPE!)
					r(370556),	-- Potion of the Hushed Zephyr (RECIPE!)
					r(370533),	-- Residual Neural Channeling Agent (RECIPE!)
					-- Decay
					r(370521, {	-- Bottled Putrescence (RECIPE!)
						["description"] = "Requires Decayology.",
					}),
					r(370536, {	-- Delicate Suspension of Spores (RECIPE!)
						["description"] = "Requires Decayology.",
					}),
					r(370525, {	-- Potion of Chilled Clarity (RECIPE!)
						["description"] = "Requires Decayology.",
					}),
					r(415810, {	-- Potion of Withering Dreams (RECIPE!)
						["description"] = "Requires Decayology.",
						["timeline"] = { ADDED_10_2_0 },
					}),
					r(370528, {	-- Potion of Withering Vitality (RECIPE!)
						["description"] = "Requires Decayology.",
					}),
				}),
			},
		}),
		spell(370746, {	-- Basic Phial Experimentation
			i(192180,{	-- Basic Phial Experimentation
				-- Recipes Discoverable
				r(370472),	-- Aerated Phial of Deftness (RECIPE!)
				r(370476),	-- Charged Phial of Alacrity (RECIPE!)
				r(370483),	-- Crystalline Phial of Perception (RECIPE!)
				r(370504),	-- Phial of Elemental Chaos (RECIPE!)
				-- Decay
				r(370457, {	-- Iced Phial of Corrupting Rage (RECIPE!)
					["description"] = "Requires Decayology."
				}),
				r(370456, {	-- Phial of Icy Preservation (RECIPE!)
					["description"] = "Requires Decayology."
				}),
			}),
		}),
		spell(370743, {	-- Basic Potion Experimentation
			i(193365,{	-- Basic Potion Experimentation
				-- Recipes Discoverable
			}),
		}),
		filter(CONSUMABLES, {
			i(191384),	-- Aerated Mana Potion+
			i(191385),	-- Aerated Mana Potion++
			i(191386),	-- Aerated Mana Potion+++
			i(191342),	-- Aerated Phial of Deftness+
			i(191343),	-- Aerated Phial of Deftness++
			i(191344),	-- Aerated Phial of Deftness+++
			i(197720),	-- Aerated Phial of Quick Hands+
			i(197721),	-- Aerated Phial of Quick Hands++
			i(197722),	-- Aerated Phial of Quick Hands+++
			i(191360),	-- Bottled Putrescence+
			i(191361),	-- Bottled Putrescence++
			i(191362),	-- Bottled Putrescence+++
			i(204633, {["timeline"] = {ADDED_10_1_0}}),	-- Cauldron of Extracted Putrescence
			i(191488),	-- Cauldron of the Pooka+
			i(191489),	-- Cauldron of the Pooka++
			i(191490),	-- Cauldron of the Pooka+++
			i(191348),	-- Charged Phial of Alacrity+
			i(191349),	-- Charged Phial of Alacrity++
			i(191350),	-- Charged Phial of Alacrity+++
			i(191354),	-- Crystalline Phial of Perception+
			i(191355),	-- Crystalline Phial of Perception++
			i(191356),	-- Crystalline Phial of Perception+++
			i(191375),	-- Delicate Suspension of Spores+
			i(191376),	-- Delicate Suspension of Spores++
			i(191377),	-- Delicate Suspension of Spores+++
			i(204238, sharedDataSelf({["timeline"] = {ADDED_10_1_0}},{	-- Draconic Phial Cauldron+
				i(204643),	-- Fleeting Phial of the Eye in the Storm+
				i(204646),	-- Fleeting Phial of Still Air+
				i(204649),	-- Fleeting Phial of Icy Preservation+
				i(204652),	-- Fleeting Iced Phial of Corrupting Rage+
				i(204655),	-- Fleeting Phial of Charged Isolation+
				i(204658),	-- Fleeting Phial of Glacial Fury+
				i(204661),	-- Fleeting Phial of Static Empowerment+
				i(204664),	-- Fleeting Phial of Tepid Versatility+
				i(204667),	-- Fleeting Charged Phial of Alacrity+
				i(204670),	-- Fleeting Phial of Elemental Chaos+
			})),
			i(204679, sharedDataSelf({["timeline"] = {ADDED_10_1_0}},{	-- Draconic Phial Cauldron++
				i(204644),	-- Fleeting Phial of the Eye in the Storm++
				i(204647),	-- Fleeting Phial of Still Air++
				i(204650),	-- Fleeting Phial of Icy Preservation++
				i(204653),	-- Fleeting Iced Phial of Corrupting Rage++
				i(204656),	-- Fleeting Phial of Charged Isolation++
				i(204659),	-- Fleeting Phial of Glacial Fury++
				i(204662),	-- Fleeting Phial of Static Empowerment++
				i(204665),	-- Fleeting Phial of Tepid Versatility++
				i(204668),	-- Fleeting Charged Phial of Alacrity++
				i(204671),	-- Fleeting Phial of Elemental Chaos++
			})),
			i(204680, sharedDataSelf({["timeline"] = {ADDED_10_1_0}},{	-- Draconic Phial Cauldron+++
				i(204645),	-- Fleeting Phial of the Eye in the Storm+++
				i(204648),	-- Fleeting Phial of Still Air+++
				i(204651),	-- Fleeting Phial of Icy Preservation+++
				i(204654),	-- Fleeting Iced Phial of Corrupting Rage+++
				i(204657),	-- Fleeting Phial of Charged Isolation+++
				i(204660),	-- Fleeting Phial of Glacial Fury+++
				i(204663),	-- Fleeting Phial of Static Empowerment+++
				i(204666),	-- Fleeting Phial of Tepid Versatility+++
				i(204669),	-- Fleeting Charged Phial of Alacrity+++
				i(204672),	-- Fleeting Phial of Elemental Chaos+++
			})),
			i(207021, {["timeline"] = {ADDED_10_2_0}}),	-- Dreamwalker's Healing Potion+
			i(207022, {["timeline"] = {ADDED_10_2_0}}),	-- Dreamwalker's Healing Potion++
			i(207023, {["timeline"] = {ADDED_10_2_0}}),	-- Dreamwalker's Healing Potion+++
			i(191387),	-- Elemental Potion of Power+
			i(191388),	-- Elemental Potion of Power++
			i(191389),	-- Elemental Potion of Power+++
			i(191381),	-- Elemental Potion of Ultimate Power+
			i(191382),	-- Elemental Potion of Ultimate Power++
			i(191383),	-- Elemental Potion of Ultimate Power+++
			i(191327),	-- Iced Phial of Corrupting Rage+
			i(191328),	-- Iced Phial of Corrupting Rage++
			i(191329),	-- Iced Phial of Corrupting Rage+++
			i(191330),	-- Phial of Charged Isolation+
			i(191331),	-- Phial of Charged Isolation++
			i(191332),	-- Phial of Charged Isolation+++
			i(191357),	-- Phial of Elemental Chaos+
			i(191358),	-- Phial of Elemental Chaos++
			i(191359),	-- Phial of Elemental Chaos+++
			i(191333),	-- Phial of Glacial Fury+
			i(191334),	-- Phial of Glacial Fury++
			i(191335),	-- Phial of Glacial Fury+++
			i(191324),	-- Phial of Icy Preservation+
			i(191325),	-- Phial of Icy Preservation++
			i(191326),	-- Phial of Icy Preservation+++
			i(191336),	-- Phial of Static Empowerment+
			i(191337),	-- Phial of Static Empowerment++
			i(191338),	-- Phial of Static Empowerment+++
			i(191321),	-- Phial of Still Air+
			i(191322),	-- Phial of Still Air++
			i(191323),	-- Phial of Still Air+++
			i(191339),	-- Phial of Tepid Versatility+
			i(191340),	-- Phial of Tepid Versatility++
			i(191341),	-- Phial of Tepid Versatility+++
			i(191318),	-- Phial of the Eye in the Storm+
			i(191319),	-- Phial of the Eye in the Storm++
			i(191320),	-- Phial of the Eye in the Storm+++
			i(191482, {	-- Potion Cauldron of Power+
				i(191905),	-- Fleeting Elemental Potion of Power+
			}),
			i(191483, {	-- Potion Cauldron of Power++
				i(191906),	-- Fleeting Elemental Potion of Power++
			}),
			i(191484, {	-- Potion Cauldron of Power+++
				i(191907),	-- Fleeting Elemental Potion of Power+++
			}),
			i(191485, {	-- Potion Cauldron of Ultimate Power+
				i(191912),	-- Fleeting Elemental Potion of Ultimate Power+
			}),
			i(191486, {	-- Potion Cauldron of Ultimate Power++
				i(191913),	-- Fleeting Elemental Potion of Ultimate Power++
			}),
			i(191487, {	-- Potion Cauldron of Ultimate Power+++
				i(191914),	-- Fleeting Elemental Potion of Ultimate Power+++
			}),
			i(191366),	-- Potion of Chilled Clarity+
			i(191367),	-- Potion of Chilled Clarity++
			i(191368),	-- Potion of Chilled Clarity+++
			i(191351),	-- Potion of Frozen Fatality+
			i(191352),	-- Potion of Frozen Fatality++
			i(191353),	-- Potion of Frozen Fatality+++
			i(191363),	-- Potion of Frozen Focus+
			i(191364),	-- Potion of Frozen Focus++
			i(191365),	-- Potion of Frozen Focus+++
			i(191396),	-- Potion of Gusts+
			i(191397),	-- Potion of Gusts++
			i(191398),	-- Potion of Gusts+++
			i(191399),	-- Potion of Shocking Disclosure+
			i(191400),	-- Potion of Shocking Disclosure++
			i(191401),	-- Potion of Shocking Disclosure+++
			i(191393),	-- Potion of the Hushed Zephyr+
			i(191394),	-- Potion of the Hushed Zephyr++
			i(191395),	-- Potion of the Hushed Zephyr+++
			i(207039, {["timeline"] = {ADDED_10_2_0}}),	-- Potion of Withering Dreams+
			i(207040, {["timeline"] = {ADDED_10_2_0}}),	-- Potion of Withering Dreams++
			i(207041, {["timeline"] = {ADDED_10_2_0}}),	-- Potion of Withering Dreams+++
			i(191369),	-- Potion of Withering Vitality+
			i(191370),	-- Potion of Withering Vitality++
			i(191371),	-- Potion of Withering Vitality+++
			i(191378),	-- Refreshing Healing Potion+
			i(191379),	-- Refreshing Healing Potion++
			i(191380),	-- Refreshing Healing Potion+++
			i(191372),	-- Residual Neural Channeling Agent+
			i(191373),	-- Residual Neural Channeling Agent++
			i(191374),	-- Residual Neural Channeling Agent+++
			i(191345),	-- Steaming Phial of Finesse+
			i(191346),	-- Steaming Phial of Finesse++
			i(191347),	-- Steaming Phial of Finesse+++
			i(204370, {["timeline"] = {ADDED_10_1_0}}),	-- Stinky Bright Potion
			i(191917),	-- Suspiciously Fuzzy Drink+
			i(191918),	-- Suspiciously Fuzzy Drink++
			i(191919),	-- Suspiciously Fuzzy Drink+++
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = ALCHEMY,
		},{
			-- Alchemy Essentials
			FirstCraft(71251, 370747);	-- Advanced Phial Experimentation
			FirstCraft(71253, 370745);	-- Advanced Potion Experimentation
			FirstCraft(71250, 370746);	-- Basic Phial Experimentation
			FirstCraft(71252, 370743);	-- Basic Potion Experimentation
			-- Reagents
			FirstCraft(71248, 370722);	-- Omnium Draconis
			FirstCraft(71249, 370717);	-- Primal Convergent
			-- Air Potions
			FirstCraft(71287, 370547);	-- Aerated Mana Potion
			FirstCraft(71279, 370521);	-- Bottled Putrescence
			FirstCraft(71292, 370558);	-- Potion of Gusts
			FirstCraft(71293, 370561);	-- Potion of Shocking Disclosure
			FirstCraft(71291, 370556);	-- Potion of the Hushed Zephyr
			FirstCraft(71283, 370533);	-- Residual Neural Channeling Agent
			FirstCraft(75213, 405832, ADDED_10_1_0);	-- Stinky Bright Potion
			-- Cauldrons
			FirstCraft(75225, 405879, ADDED_10_1_0);	-- Cauldron of Extracted Putrescence
			FirstCraft(71247, 370673);	-- Cauldron of the Pooka
			FirstCraft(75243, 406106, ADDED_10_1_0);	-- Draconic Phial Cauldron
			FirstCraft(71295, 370672);	-- Potion Cauldron of Ultimate Power
			FirstCraft(71296, 370668);	-- Potion Cauldron of Power
			-- Frost Potions
			FirstCraft(71284, 370536);	-- Delicate Suspension of Spores
			FirstCraft(76580, 415628, ADDED_10_2_0);	-- Dreamwalker's Healing Potion
			FirstCraft(71281, 370525);	-- Potion of Chilled Clarity
			FirstCraft(71276, 370478);	-- Potion of Frozen Fatality
			FirstCraft(71280, 370524);	-- Potion of Frozen Focus
			FirstCraft(76565, 415810, ADDED_10_2_0);	-- Potion of Withering Dreams
			FirstCraft(71282, 370528);	-- Potion of Withering Vitality
			FirstCraft(71285, 370539);	-- Refreshing Healing Potion
			-- Elemental Phials and Potions
			FirstCraft(71286, 370543);	-- Elemental Potion of Ultimate Power
			FirstCraft(71288, 370551);	-- Elemental Potion of Power
			FirstCraft(71278, 370504);	-- Phial of Elemental Chaos
			-- Air Phials
			FirstCraft(71274, 370472);	-- Aerated Phial of Deftness
			FirstCraft(71273, 381270);	-- Aerated Phial of Quick Hands
			FirstCraft(71272, 370476);	-- Charged Phial of Alacrity
			FirstCraft(71268, 370460);	-- Phial of Charged Isolation
			FirstCraft(71270, 370463);	-- Phial of Static Empowerment
			FirstCraft(71265, 370453);	-- Phial of Still Air
			FirstCraft(71264, 370438);	-- Phial of the Eye in the Storm
			-- Frost Phials
			FirstCraft(71277, 370483);	-- Crystalline Phial of Perception
			FirstCraft(71267, 370457);	-- Iced Phial of Corrupting Rage
			FirstCraft(71269, 370462);	-- Phial of Glacial Fury
			FirstCraft(71266, 370456);	-- Phial of Icy Preservation
			FirstCraft(71271, 370465);	-- Phial of Tepid Versatility
			FirstCraft(71275, 370473);	-- Steaming Phial of Finesse
			-- Transmutations
			FirstCraft(71297, 370711);	-- Transmute: Awakened Air
			FirstCraft(71298, 370710);	-- Transmute: Awakened Earth
			FirstCraft(71299, 370707);	-- Transmute: Awakened Fire
			FirstCraft(71300, 370708);	-- Transmute: Awakened Frost
			FirstCraft(71301, 370714);	-- Transmute: Decay to Elements
			FirstCraft(75220, 405847, ADDED_10_1_0);	-- Transmute: Dracothyst
			FirstCraft(71302, 370715);	-- Transmute: Order to Elements
			-- Optional Reagents
			FirstCraft(71263, 370738);	-- Potion Absorption Inhibitor
			-- Finishing Reagents
			FirstCraft(71257, 370732);	-- Agitating Potion Augmentation
			FirstCraft(71255, 370730);	-- Brood Salt
			FirstCraft(71258, 370733);	-- Reactive Phial Embelishment
			FirstCraft(71254, 370729);	-- Stable Fluidic Draconium
			FirstCraft(71256, 370731);	-- Writhefire Oil
			-- Incense
			FirstCraft(71259, 370725);	-- Exultant Incense
			FirstCraft(71289, 370728);	-- Fervid Incense
			FirstCraft(71261, 370723);	-- Sagacious Incense
			FirstCraft(71260, 370724);	-- Somniferous Incense
			-- Alchemist Stones
			FirstCraft(71246, 370677);	-- Alacritous Alchemist Stone
			FirstCraft(71245, 370676);	-- Sustaining Alchemist Stone
			-- Artisan Curios
			FirstCraft(74308, 400270, ADDED_10_0_7);	-- Draconic Suppression Powder
		})),
		filter(MISC, {
			i(191520),	-- Agitating Potion Augmentation+
			i(191521),	-- Agitating Potion Augmentation++
			i(191522),	-- Agitating Potion Augmentation+++
			i(191514),	-- Brood Salt+
			i(191515),	-- Brood Salt++
			i(191516),	-- Brood Salt+++
			i(203407, {["timeline"] = {ADDED_10_0_7}}),	-- Draconic Suppression Powder
			i(204463, {	-- Dracothyst
				["timeline"] = {ADDED_10_1_0},
				["cost"] = { { "i", 204462, 10 } },	-- 10x Dracothyst Shards
			}),
			i(191505),	-- Exultant Incense+
			i(191506),	-- Exultant Incense++
			i(191507),	-- Exultant Incense+++
			i(191508),	-- Fervid Incense+
			i(191509),	-- Fervid Incense++
			i(191510),	-- Fervid Incense+++
			i(191532),	-- Potion Absorption Inhibitor+
			i(191533),	-- Potion Absorption Inhibitor++
			i(191534),	-- Potion Absorption Inhibitor+++
			i(191523),	-- Reactive Phial Embellishment+
			i(191524),	-- Reactive Phial Embellishment++
			i(191525),	-- Reactive Phial Embellishment+++
			i(191499),	-- Sagacious Incense+
			i(191500),	-- Sagacious Incense++
			i(191501),	-- Sagacious Incense+++
			i(191502),	-- Somniferous Incense+
			i(191503),	-- Somniferous Incense++
			i(191504),	-- Somniferous Incense+++
			i(191511),	-- Stable Fluidic Draconium+
			i(191512),	-- Stable Fluidic Draconium++
			i(191513),	-- Stable Fluidic Draconium+++
			i(191517),	-- Writhefire Oil+
			i(191518),	-- Writhefire Oil++
			i(191519),	-- Writhefire Oil+++
			i(194337),	-- Liquid Courage
		}),
		filter(REAGENTS, {
			i(191570),	-- Dragon's Alchemical Solution
			i(191493),	-- Primal Convergent+
			i(191494),	-- Primal Convergent++
			i(191495),	-- Primal Convergent+++
			i(191496),	-- Omnium Draconis+
			i(191497),	-- Omnium Draconis++
			i(191498),	-- Omnium Draconis+++
		}),
		filter(TRINKET_F, {
			i(191492),	-- Alacritous Alchemist Stone
			i(191491),	-- Sustaining Alchemist Stone
		}),
	}),
	prof(BLACKSMITHING, {
		n(ARMOR, {
			i(190519),	-- Allied Chestplate of Generosity
			i(190526),	-- Allied Wristguard of Companionship
			i(193609),	-- Crimson Combatant's Draconium Armguards
			i(193602),	-- Crimson Combatant's Draconium Breastplate
			i(193604),	-- Crimson Combatant's Draconium Gauntlets
			i(193606),	-- Crimson Combatant's Draconium Greaves
			i(193605),	-- Crimson Combatant's Draconium Helm
			i(193607),	-- Crimson Combatant's Draconium Pauldrons
			i(193603),	-- Crimson Combatant's Draconium Sabatons
			i(193608),	-- Crimson Combatant's Draconium Waistguard
			i(211563, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Draconium Breastplate
			i(211564, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Draconium Sabatons
			i(211565, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Draconium Gauntlets
			i(211566, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Draconium Helm
			i(211567, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Draconium Greaves
			i(211568, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Draconium Pauldrons
			i(211569, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Draconium Waistguard
			i(211570, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Draconium Armguards
			i(201955),	-- Explorer's Expert Clasp
			i(201953),	-- Explorer's Expert Gauntlets
			i(201954),	-- Explorer's Expert Greaves
			i(201951),	-- Explorer's Expert Helm
			i(201952),	-- Explorer's Expert Spaulders
			i(189537),	-- Explorer's Plate Boots
			i(189539),	-- Explorer's Plate Bracers
			i(189538),	-- Explorer's Plate Chestguard
			i(210646, {["timeline"] = {ADDED_10_2_0}}),	-- Flourishing Dream Helm
			i(190523),	-- Frostfire Legguards of Preparation
			i(190522),	-- Infurious Helm of Vengeance
			i(191985),	-- Infurious Warboots of Impunity
			i(204128, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Draconium Armguards
			i(204121, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Draconium Breastplate
			i(204123, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Draconium Gauntlets
			i(204125, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Draconium Greaves
			i(204124, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Draconium Helm
			i(204126, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Draconium Pauldrons
			i(204122, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Draconium Sabatons
			i(204127, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Draconium Waistguard
			i(190495),	-- Primal Molten Breastplate
			i(190497),	-- Primal Molten Gauntlets
			i(190501),	-- Primal Molten Greatbelt
			i(190498),	-- Primal Molten Helm
			i(190499),	-- Primal Molten Legplates
			i(190500),	-- Primal Molten Pauldrons
			i(190496),	-- Primal Molten Sabatons
			i(190502),	-- Primal Molten Vambraces
			i(208271, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Draconium Armguards
			i(208264, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Draconium Breastplate
			i(208266, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Draconium Gauntlets
			i(208268, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Draconium Greaves
			i(208267, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Draconium Helm
			i(208269, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Draconium Pauldrons
			i(208265, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Draconium Sabatons
			i(208270, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Draconium Waistguard
			i(191623),	-- Unstable Frostfire Belt
		}),
		filter(BATTLE_PETS, {
			i(191886),	-- Alvin the Anvil (PET!)
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = BLACKSMITHING,
		},{
			-- Smelting --
			FirstCraft(71353, 367712);	-- Frostfire Alloy
			FirstCraft(71355, 367714);	-- Infurious Alloy
			FirstCraft(71354, 367713);	-- Obsidian Seared Alloy
			FirstCraft(71352, 365735);	-- Primal Molten Alloy
			FirstCraft(75587, 408282, ADDED_10_1_0);	-- Shadowed Alloy
			-- Optional Reagent
			FirstCraft(71358, 371349);	-- Armor Spikes
			-- Armor
			FirstCraft(71309, 367615);	-- Allied Chestplate of Generosity
			FirstCraft(71310, 367614);	-- Allied Wristguard of Companionship
			FirstCraft(71331, 376617);	-- Crimson Combatant's Draconium Armguards
			FirstCraft(71324, 376618);	-- Crimson Combatant's Draconium Breastplate
			FirstCraft(71326, 376619);	-- Crimson Combatant's Draconium Gauntlets
			FirstCraft(71328, 376620);	-- Crimson Combatant's Draconium Greaves
			FirstCraft(71327, 376621);	-- Crimson Combatant's Draconium Helm
			FirstCraft(71329, 376622);	-- Crimson Combatant's Draconium Pauldrons
			FirstCraft(71325, 376623);	-- Crimson Combatant's Draconium Sabatons
			FirstCraft(71330, 376624);	-- Crimson Combatant's Draconium Waistguard
			FirstCraft(79065, 430082, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Draconium Armguards
			FirstCraft(79058, 430083, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Draconium Breastplate
			FirstCraft(79060, 430084, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Draconium Gauntlets
			FirstCraft(79062, 430085, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Draconium Greaves
			FirstCraft(79061, 430086, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Draconium Helm
			FirstCraft(79063, 430087, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Draconium Pauldrons
			FirstCraft(79059, 430088, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Draconium Sabatons
			FirstCraft(79064, 430089, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Draconium Waistguard
			FirstCraft(72489, 367611);	-- Explorer's Expert Clasp
			FirstCraft(72562, 395879);	-- Explorer's Expert Gauntlets
			FirstCraft(72494, 395881);	-- Explorer's Expert Greaves
			FirstCraft(72490, 395883);	-- Explorer's Expert Helm
			FirstCraft(72568, 395880);	-- Explorer's Expert Spaulders
			FirstCraft(71314, 367610);	-- Explorer's Plate Boots
			FirstCraft(71315, 367609);	-- Explorer's Plate Bracers
			FirstCraft(71313, 395886);	-- Explorer's Plate Chestguard
			FirstCraft(78480, 426332, ADDED_10_2_0);	-- Flourishing Dream Helm
			FirstCraft(71305, 367619);	-- Frostfire Legguards of Preparation
			FirstCraft(71308, 367617);	-- Infurious Helm of Vengeance
			FirstCraft(71307, 367616);	-- Infurious Warboots of Impunity
			FirstCraft(74804, 403158, ADDED_10_1_0);	-- Obsidian Combatant's Draconium Armguards
			FirstCraft(74797, 403159, ADDED_10_1_0);	-- Obsidian Combatant's Draconium Breastplate
			FirstCraft(74799, 403160, ADDED_10_1_0);	-- Obsidian Combatant's Draconium Gauntlets
			FirstCraft(74801, 403161, ADDED_10_1_0);	-- Obsidian Combatant's Draconium Greaves
			FirstCraft(74800, 403162, ADDED_10_1_0);	-- Obsidian Combatant's Draconium Helm
			FirstCraft(74802, 403163, ADDED_10_1_0);	-- Obsidian Combatant's Draconium Pauldrons
			FirstCraft(74798, 403164, ADDED_10_1_0);	-- Obsidian Combatant's Draconium Sabatons
			FirstCraft(74803, 403165, ADDED_10_1_0);	-- Obsidian Combatant's Draconium Waistguard
			FirstCraft(71316, 367608);	-- Primal Molten Breastplate
			FirstCraft(71318, 367606);	-- Primal Molten Gauntlets
			FirstCraft(71322, 367602);	-- Primal Molten Greatbelt
			FirstCraft(71319, 367605);	-- Primal Molten Helm
			FirstCraft(71320, 367604);	-- Primal Molten Legplates
			FirstCraft(71321, 367603);	-- Primal Molten Pauldrons
			FirstCraft(71317, 367607);	-- Primal Molten Sabatons
			FirstCraft(71323, 367601);	-- Primal Molten Vambraces
			FirstCraft(71306, 367618);	-- Unstable Frostfire Belt
			FirstCraft(77439, 419031, ADDED_10_2_0);	-- Verdant Combatant's Draconium Armguards
			FirstCraft(77473, 419032, ADDED_10_2_0);	-- Verdant Combatant's Draconium Breastplate
			FirstCraft(77475, 419033, ADDED_10_2_0);	-- Verdant Combatant's Draconium Gauntlets
			FirstCraft(77477, 419034, ADDED_10_2_0);	-- Verdant Combatant's Draconium Greaves
			FirstCraft(77476, 419035, ADDED_10_2_0);	-- Verdant Combatant's Draconium Helm
			FirstCraft(77478, 419036, ADDED_10_2_0);	-- Verdant Combatant's Draconium Pauldrons
			FirstCraft(77474, 419037, ADDED_10_2_0);	-- Verdant Combatant's Draconium Sabatons
			FirstCraft(77479, 419038, ADDED_10_2_0);	-- Verdant Combatant's Draconium Waistguard
			-- Shields
			FirstCraft(72183, 393404);	-- Draconium Defender
			FirstCraft(71304, 367622);	-- Primal Molten Defender
			FirstCraft(71303, 367623);	-- Shield of the Hearth
			FirstCraft(75595, 408326, ADDED_10_1_0);	-- Shadowed Impact Buckler
			-- Weapons
			FirstCraft(71332, 367600);	-- Draconium Axe
			FirstCraft(71336, 367596);	-- Draconium Dirk
			FirstCraft(72186, 393416);	-- Draconium Great Axe
			FirstCraft(71334, 367598);	-- Draconium Great Mace
			FirstCraft(71337, 367595);	-- Draconium Knuckles
			FirstCraft(71335, 367597);	-- Draconium Stiletto
			FirstCraft(71333, 367599);	-- Draconium Sword
			FirstCraft(71381, 367590);	-- Obsidian Seared Claymore
			FirstCraft(71377, 367591);	-- Obsidian Seared Crusher
			FirstCraft(71378, 367589);	-- Obsidian Seared Facesmasher
			FirstCraft(71379, 367588);	-- Obsidian Seared Halberd
			FirstCraft(71380, 367587);	-- Obsidian Seared Hexsword
			FirstCraft(71376, 367592);	-- Obsidian Seared Invoker
			FirstCraft(71374, 367594);	-- Obsidian Seared Runeaxe
			FirstCraft(71375, 367593);	-- Obsidian Seared Slicer
			FirstCraft(71384, 365734);	-- Primal Molten Greataxe
			FirstCraft(71383, 367585);	-- Primal Molten Longsword
			FirstCraft(71382, 367586);	-- Primal Molten Mace
			FirstCraft(71386, 365730);	-- Primal Molten Shortblade
			FirstCraft(71385, 365731);	-- Primal Molten Spellblade
			FirstCraft(71387, 365729);	-- Primal Molten Warglaive
			FirstCraft(75594, 408283, ADDED_10_1_0);	-- Shadowed Razing Annihilator
			-- Profession Tools and Accessories
			FirstCraft(71360, 371372);	-- Black Dragon Touched Hammer
			FirstCraft(71361, 371344);	-- Draconium Blacksmith's Hammer
			FirstCraft(71345, 371364);	-- Draconium Blacksmith's Toolbox
			FirstCraft(71365, 371338);	-- Draconium Leatherworker's Knife
			FirstCraft(71347, 371360);	-- Draconium Leatherworker's Toolset
			FirstCraft(71349, 371302);	-- Draconium Needle Set
			FirstCraft(71367, 371309);	-- Draconium Pickaxe
			FirstCraft(71363, 371343);	-- Draconium Sickle
			FirstCraft(71369, 371304);	-- Draconium Skinning Knife
			FirstCraft(71362, 371412);	-- Khaz'gorite Blacksmith's Hammer
			FirstCraft(71346, 371374);	-- Khaz'gorite Blacksmith's Toolbox
			FirstCraft(71366, 371369);	-- Khaz'gorite Leatherworker's Knife
			FirstCraft(71348, 371371);	-- Khaz'gorite Leatherworker's Toolset
			FirstCraft(71350, 371368);	-- Khaz'gorite Needle Set
			FirstCraft(71368, 371366);	-- Khaz'gorite Pickaxe
			FirstCraft(71364, 371365);	-- Khaz'gorite Sickle
			FirstCraft(71370, 371367);	-- Khaz'gorite Skinning Knife
			-- Consumable Tools
			FirstCraft(75593, 408299, ADDED_10_1_0);	-- Heat-Resistant Rescue Ring
			FirstCraft(72262, 393853);	-- Master's Hammer
			FirstCraft(71357, 371395);	-- Serevite Repair Hammer
			FirstCraft(71344, 371394);	-- Serevite Skeleton Key
			FirstCraft(71388, 388279);	-- Sturdy Expedition Shovel
			-- Stonework
			FirstCraft(71338, 371682);	-- Primal Razorstone
			FirstCraft(71340, 371674);	-- Primal Weightstone
			FirstCraft(71341, 371650);	-- Primal Whetstone
			FirstCraft(75599, 408288, ADDED_10_1_0);	-- Shadowed Belt Clasp
			-- Pets
			FirstCraft(71351, 371403);	-- Alvin The Anvil
			-- Dragon Riding
			FirstCraft(71342, 377281);	-- Prototype Explorer's Barding Framework
			FirstCraft(71343, 377280);	-- Prototype Regal Barding Framework
			-- Artisan Curios
			FirstCraft(74477, 400808, ADDED_10_0_7);	-- Ancient Ceremonial Trident
			-- Legendary
			FirstCraft(75418, 409224, ADDED_10_1_0);	-- Reclaimed Gauntlet Chassis
		})),
		filter(MISC, {
			i(203408, {["timeline"] = {ADDED_10_0_7}}),	-- Ancient Ceremonial Trident
			i(191250),	-- Armor Spikes+
			i(191872),	-- Armor Spikes++
			i(191873),	-- Armor Spikes+++
			i(205038, {["timeline"] = {ADDED_10_1_0}}),	-- Heat-Resistant Rescue Ring
			i(201366),	-- Master's Hammer
			i(191948),	-- Primal Razorstone+
			i(191949),	-- Primal Razorstone++
			i(191950),	-- Primal Razorstone+++
			i(191943),	-- Primal Weightstone+
			i(191944),	-- Primal Weightstone++
			i(191945),	-- Primal Weightstone+++
			i(191933),	-- Primal Whetstone+
			i(191939),	-- Primal Whetstone++
			i(191940),	-- Primal Whetstone+++
			i(204832, {["timeline"] = {ADDED_10_1_0}}),	-- Reclaimed Gauntlet Chassis
			i(191260),	-- Serevite Repair Hammer
			i(191256),	-- Serevite Skeleton Key
			i(205043, {["timeline"] = {ADDED_10_1_0}}),	-- Shadowed Belt Clasp+
			i(205044, {["timeline"] = {ADDED_10_1_0}}),	-- Shadowed Belt Clasp++
			i(205039, {["timeline"] = {ADDED_10_1_0}}),	-- Shadowed Belt Clasp+++
			i(191304),	-- Sturdy Expedition Shovel
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(191228, {["requireSkill"] = BLACKSMITHING}),	-- Black Dragon Touched Hammer
			i(191237, {["requireSkill"] = BLACKSMITHING}),	-- Draconium Blacksmith's Hammer
			i(191235, {["requireSkill"] = BLACKSMITHING}),	-- Draconium Blacksmith's Toolbox
			i(191238, {["requireSkill"] = LEATHERWORKING}),	-- Draconium Leatherworker's Knife
			i(191236, {["requireSkill"] = LEATHERWORKING}),	-- Draconium Leatherworker's Toolset
			i(191239, {["requireSkill"] = TAILORING}),	-- Draconium Needle Set
			i(191242, {["requireSkill"] = MINING}),	-- Draconium Pickaxe
			i(191241, {["requireSkill"] = HERBALISM}),	-- Draconium Sickle
			i(191240, {["requireSkill"] = SKINNING}),	-- Draconium Skinning Knife
			i(191888, {["requireSkill"] = BLACKSMITHING}),	-- Khaz'gorite Blacksmith's Hammer
			i(191230, {["requireSkill"] = BLACKSMITHING}),	-- Khaz'gorite Blacksmith's Toolbox
			i(191227, {["requireSkill"] = LEATHERWORKING}),	-- Khaz'gorite Leatherworker's Knife
			i(191229, {["requireSkill"] = LEATHERWORKING}),	-- Khaz'gorite Leatherworker's Toolset
			i(191226, {["requireSkill"] = TAILORING}),	-- Khaz'gorite Needle Set
			i(191223, {["requireSkill"] = MINING}),	-- Khaz'gorite Pickaxe
			i(191224, {["requireSkill"] = HERBALISM}),	-- Khaz'gorite Sickle
			i(191225, {["requireSkill"] = SKINNING}),	-- Khaz'gorite Skinning Knife
		}),
		filter(REAGENTS, {
			i(190530),	-- Frostfire Alloy+
			i(190531),	-- Frostfire Alloy++
			i(190532),	-- Frostfire Alloy+++
			i(190536),	-- Infurious Alloy+
			i(190537),	-- Infurious Alloy++
			i(190538),	-- Infurious Alloy+++
			i(190533),	-- Obsidian Seared Alloy+
			i(190534),	-- Obsidian Seared Alloy++
			i(190535),	-- Obsidian Seared Alloy+++
			i(189541),	-- Primal Molten Alloy+
			i(189542),	-- Primal Molten Alloy++
			i(189543),	-- Primal Molten Alloy+++
			i(194542),	-- Prototype Explorer's Barding Framework
			i(194541),	-- Prototype Regal Barding Framework
			i(204995),	-- Shadowed Alloy+
			i(204996),	-- Shadowed Alloy++
			i(204994),	-- Shadowed Alloy+++
		}),
		n(WEAPONS, {
			i(190487),	-- Draconium Axe
			i(201322),	-- Draconium Defender
			i(190483),	-- Draconium Dirk
			i(201324),	-- Draconium Great Axe
			i(190486),	-- Draconium Great Mace
			i(190485),	-- Draconium Knuckles
			i(190482),	-- Draconium Stiletto
			i(190484),	-- Draconium Sword
			i(190514),	-- Obsidian Seared Claymore
			i(190516),	-- Obsidian Seared Crusher
			i(190513),	-- Obsidian Seared Facesmasher
			i(190515),	-- Obsidian Seared Halberd
			i(190511),	-- Obsidian Seared Hexsword
			i(190517),	-- Obsidian Seared Invoker
			i(190512),	-- Obsidian Seared Runeaxe
			i(190518),	-- Obsidian Seared Slicer
			i(190503),	-- Primal Molten Defender
			i(190510),	-- Primal Molten Greataxe
			i(190507),	-- Primal Molten Longsword
			i(190509),	-- Primal Molten Mace
			i(190505),	-- Primal Molten Shortblade
			i(190506),	-- Primal Molten Spellblade
			i(190508),	-- Primal Molten Warglaive
			i(205168, {["timeline"] = {ADDED_10_1_0}}),	-- Shadowed Impact Buckler
			i(205046, {["timeline"] = {ADDED_10_1_0}}),	-- Shadowed Razing Annihilator
			i(192081),	-- Shield of the Hearth
		}),
	}),
	prof(COOKING, {
		n(DISCOVERY, {
			r(381397),	-- Aromatic Seafood Platter
			r(381403),	-- Braised Bruffalon Brisket
			r(381396),	-- Feisty Fish Sticks
			r(381402),	-- Great Cerulean Sea
			r(381399),	-- Revenge, Served Cold
			r(381404),	-- Riverside Picnic
			r(381407),	-- Roast Duck Delight
			r(381398),	-- Sizzling Seafood Medley
			r(381400),	-- Thousandbone Tongueslicer
		}),
		filter(MISC, {
			i(203409, {["timeline"] = {ADDED_10_0_7}}),	-- Sparkling Spice Pouch
		}),
		i(197757),	-- Assorted Exotic Spices
		i(197783),	-- Aromatic Seafood Platter
		i(197788),	-- Braised Bruffalon Brisket
		i(197763),	-- Breakfast of Draconic Champions
		i(197767),	-- Blubbery Muffin
		i(197768),	-- Celebratory Cake
		i(204848, {["timeline"] = {ADDED_10_1_0}}),	-- Charitable Cheddar
		i(197774),	-- Charred Hornswog Steaks
		i(197759),	-- Cheese and Quackers
		i(197772),	-- Churnbelly Tea
		i(197771),	-- Delicious Dragon Spittle
		i(204072, {["timeline"] = {ADDED_10_0_7}}),	-- Deviously Deviled Eggs
		i(197792),	-- Fated Fortune Cookie
		i(197782),	-- Feisty Fish Sticks
		i(197779),	-- Filet of Fangs
		i(202290, {["timeline"] = {ADDED_10_0_7}}),	-- Firewater Sorbet
		i(197794),	-- Grand Banquet of the Kalu'ak
		i(197787),	-- Great Cerulean Sea
		i(197795),	-- Hoard of Draconic Delicacies
		i(197777),	-- Hopefully Healthy
		i(197765),	-- Impossibly Sharp Cutting Knife
		i(197760),	-- Mackerel Snackeral
		i(194902, {	-- Ooey-Gooey Chocolate
			i(194903),	-- Pocket Chocolate
		}),
		i(197756),	-- Pebbled Rock Salts
		i(197761),	-- Probably Protein
		i(197785),	-- Revenge, Served Cold
		i(197789),	-- Riverside Picnic
		i(197790),	-- Roast Duck Delight
		i(204845, {["timeline"] = {ADDED_10_1_0}}),	-- Rocks on the Rocks
		i(197764),	-- Salad on the Side
		i(197781),	-- Salt-Baked Fishcake
		i(197791),	-- Salted Meat Mash
		i(197775),	-- Scrambled Basilisk Eggs
		i(197780),	-- Seamoth Surprise
		i(197784),	-- Sizzling Seafood Medley
		i(207054, {["timeline"] = {ADDED_10_2_0}}),	-- Slumbering Peacebloom Tea
		i(197766),	-- Snow in a Cone
		i(197762),	-- Sweet and Sour Clam Chowder
		i(197769),	-- Tasty Hatchling's Treat
		i(197786),	-- Thousandbone Tongueslicer
		i(197776),	-- Thrice-Spiced Mammoth Kabob
		i(197778),	-- Timely Demise
		i(197758),	-- Twice-Baked Potato
		i(197793),	-- Yusa's Hearty Stew
		i(197770),	-- Zesty Water
	}),
	prof(ENCHANTING, {
		n(DISCOVERY, {
			r(391185, {	-- Primal Invocation Extract
				["description"] = "Discovered only after obtaining all 5 Glimmers and then disenchanting a Sophic Amalgamation. Turn on Quest Tracking to see which Glimmers you have already disenchanted",
				["cost"] = {
					{ "i", 201358, 1 },	-- 1x Glimmer of Air
					{ "i", 201359, 1 },	-- 1x Glimmer of Earth
					{ "i", 201356, 1 },	-- 1x Glimmer of Fire
					{ "i", 201357, 1 },	-- 1x Glimmer of Frost
					{ "i", 201360, 1 },	-- 1x Glimmer of Order
				},
				["g"] = {
					q(71936, { ["name"] = "Disenchanted Glimmer of Air" }),
					q(71937, { ["name"] = "Disenchanted Glimmer of Earth" }),
					q(71934, { ["name"] = "Disenchanted Glimmer of Fire" }),
					q(71935, { ["name"] = "Disenchanted Glimmer of Frost" }),
					q(71938, { ["name"] = "Disenchanted Glimmer of Order" }),
				},
			}),
		}),
		spell(392888, {	-- Disenchant
			i(194123),	-- Chromatic Dust
			i(200113),	-- Resonant Crystal
			i(194124),	-- Vibrant Shard
			header(HEADERS.Item, 200479, {	-- Sophic Amalgamation
				i(201360),	-- Glimmer of Order
			}),
		}),
		spell(391304, {	-- Elemental Shatter
			i(200969),	-- Elemental Shatter: Air
			i(200984),	-- Elemental Shatter: Earth
			i(200989),	-- Elemental Shatter: Fire
			i(200991),	-- Elemental Shatter: Frost
			i(200994),	-- Elemental Shatter: Order
		}),
		n(ARMOR_ENCHANTMENTS, {
			i(199934),	-- Enchant Boots - Plainsrunner's Breeze+
			i(199976),	-- Enchant Boots - Plainsrunner's Breeze++
			i(200018),	-- Enchant Boots - Plainsrunner's Breeze+++
			i(199935),	-- Enchant Boots - Rider's Reassurance+
			i(199977),	-- Enchant Boots - Rider's Reassurance++
			i(200019),	-- Enchant Boots - Rider's Reassurance+++
			i(199936),	-- Enchant Boots - Watcher's Loam+
			i(199978),	-- Enchant Boots - Watcher's Loam++
			i(200020),	-- Enchant Boots - Watcher's Loam+++
			i(199937),	-- Enchant Bracer - Devotion of Avoidance+
			i(199979),	-- Enchant Bracer - Devotion of Avoidance++
			i(200021),	-- Enchant Bracer - Devotion of Avoidance+++
			i(199938),	-- Enchant Bracer - Devotion of Leech+
			i(199980),	-- Enchant Bracer - Devotion of Leech++
			i(200022),	-- Enchant Bracer - Devotion of Leech+++
			i(199939),	-- Enchant Bracer - Devotion of Speed+
			i(199981),	-- Enchant Bracer - Devotion of Speed++
			i(200023),	-- Enchant Bracer - Devotion of Speed+++
			i(199940),	-- Enchant Bracer - Writ of Avoidance+
			i(199982),	-- Enchant Bracer - Writ of Avoidance++
			i(200024),	-- Enchant Bracer - Writ of Avoidance+++
			i(199941),	-- Enchant Bracer - Writ of Leech+
			i(199983),	-- Enchant Bracer - Writ of Leech++
			i(200025),	-- Enchant Bracer - Writ of Leech+++
			i(199942),	-- Enchant Bracer - Writ of Speed+
			i(199984),	-- Enchant Bracer - Writ of Speed++
			i(200026),	-- Enchant Bracer - Writ of Speed+++
			i(199943),	-- Enchant Chest - Accelerated Agility+
			i(199985),	-- Enchant Chest - Accelerated Agility++
			i(200027),	-- Enchant Chest - Accelerated Agility+++
			i(199944),	-- Enchant Chest - Reserve of Intellect+
			i(199986),	-- Enchant Chest - Reserve of Intellect++
			i(200028),	-- Enchant Chest - Reserve of Intellect+++
			i(199945),	-- Enchant Chest - Sustained Strength+
			i(199987),	-- Enchant Chest - Sustained Strength++
			i(200029),	-- Enchant Chest - Sustained Strength+++
			i(199946),	-- Enchant Chest - Waking Stats+
			i(199988),	-- Enchant Chest - Waking Stats++
			i(200030),	-- Enchant Chest - Waking Stats+++
			i(199947),	-- Enchant Cloak - Graceful Avoidance+
			i(199989),	-- Enchant Cloak - Graceful Avoidance++
			i(200031),	-- Enchant Cloak - Graceful Avoidance+++
			i(199948),	-- Enchant Cloak - Homebound Speed+
			i(199990),	-- Enchant Cloak - Homebound Speed++
			i(200032),	-- Enchant Cloak - Homebound Speed+++
			i(199949),	-- Enchant Cloak - Regenerative Leech+
			i(199991),	-- Enchant Cloak - Regenerative Leech++
			i(200033),	-- Enchant Cloak - Regenerative Leech+++
			i(199950),	-- Enchant Cloak - Writ of Avoidance+
			i(199992),	-- Enchant Cloak - Writ of Avoidance++
			i(200034),	-- Enchant Cloak - Writ of Avoidance+++
			i(199951),	-- Enchant Cloak - Writ of Leech+
			i(199993),	-- Enchant Cloak - Writ of Leech++
			i(200035),	-- Enchant Cloak - Writ of Leech+++
			i(199952),	-- Enchant Cloak - Writ of Speed+
			i(199994),	-- Enchant Cloak - Writ of Speed++
			i(200036),	-- Enchant Cloak - Writ of Speed+++
			i(199953),	-- Enchant Ring - Devotion of Critical Strike+
			i(199995),	-- Enchant Ring - Devotion of Critical Strike++
			i(200037),	-- Enchant Ring - Devotion of Critical Strike+++
			i(199954),	-- Enchant Ring - Devotion of Haste+
			i(199996),	-- Enchant Ring - Devotion of Haste++
			i(200038),	-- Enchant Ring - Devotion of Haste+++
			i(199955),	-- Enchant Ring - Devotion of Mastery+
			i(199997),	-- Enchant Ring - Devotion of Mastery++
			i(200039),	-- Enchant Ring - Devotion of Mastery+++
			i(199956),	-- Enchant Ring - Devotion of Versatility+
			i(199998),	-- Enchant Ring - Devotion of Versatility++
			i(200040),	-- Enchant Ring - Devotion of Versatility+++
			i(199957),	-- Enchant Ring - Writ of Critical Strike+
			i(199999),	-- Enchant Ring - Writ of Critical Strike++
			i(200041),	-- Enchant Ring - Writ of Critical Strike+++
			i(199958),	-- Enchant Ring - Writ of Haste+
			i(200000),	-- Enchant Ring - Writ of Haste++
			i(200042),	-- Enchant Ring - Writ of Haste+++
			i(199959),	-- Enchant Ring - Writ of Mastery+
			i(200001),	-- Enchant Ring - Writ of Mastery++
			i(200043),	-- Enchant Ring - Writ of Mastery+++
			i(199960),	-- Enchant Ring - Writ of Versatility+
			i(200002),	-- Enchant Ring - Writ of Versatility++
			i(200044),	-- Enchant Ring - Writ of Versatility+++
		}),
		filter(BATTLE_PETS, {
			i(200479),	-- Sophic Amalgamation (PET!)
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = ENCHANTING,
		},{
			-- Cloak Enchantments
			FirstCraft(71403, 389403);	-- Graceful Avoidance
			FirstCraft(71407, 389405);	-- Homebound Speed
			FirstCraft(71405, 389404);	-- Regenerative Leech
			FirstCraft(71402, 389397);	-- Writ of Avoidance
			FirstCraft(71404, 389398);	-- Writ of Leech
			FirstCraft(71406, 389400);	-- Writ of Speed
			-- Chest Enchantments
			FirstCraft(71398, 389416);	-- Accelerated Agility
			FirstCraft(71399, 389417);	-- Reserve of Intellect
			FirstCraft(71401, 389419);	-- Sustained Strength
			FirstCraft(71400, 389410);	-- Waking Stats
			-- Bracer Enchantments
			FirstCraft(71393, 389301);	-- Devotion of Avoidance
			FirstCraft(71395, 389303);	-- Devotion of Leech
			FirstCraft(71397, 389304);	-- Devotion of Speed
			FirstCraft(71392, 389297);	-- Writ of Avoidance
			FirstCraft(71394, 389298);	-- Writ of Leech
			FirstCraft(71396, 389300);	-- Writ of Speed
			-- Boot Enchantments
			FirstCraft(71390, 389479);	-- Plainsrunner's Breeze
			FirstCraft(71389, 389480);	-- Rider's Reassurance
			FirstCraft(71391, 389484);	-- Watcher's Loam
			-- Ring Enchantments
			FirstCraft(71409, 389292);	-- Devotion of Critical Strike
			FirstCraft(71411, 389293);	-- Devotion of Haste
			FirstCraft(71413, 389294);	-- Devotion of Mastery
			FirstCraft(71415, 389295);	-- Devotion of Versatility
			FirstCraft(71408, 388930);	-- Writ of Critical Strike
			FirstCraft(71410, 389135);	-- Writ of Haste
			FirstCraft(71412, 389136);	-- Writ of Mastery
			FirstCraft(71414, 389151);	-- Writ of Versatility
			-- Weapon Enchantments
			FirstCraft(71426, 389547);	-- Burning Devotion
			FirstCraft(71425, 389537);	-- Burning Writ
			FirstCraft(76601, 416047, ADDED_10_2_0);	-- Dreaming Devotion
			FirstCraft(71424, 389549);	-- Earthen Devotion
			FirstCraft(71423, 389540);	-- Earthen Writ
			FirstCraft(71428, 389551);	-- Frozen Devotion
			FirstCraft(71427, 389543);	-- Frozen Writ
			FirstCraft(75205, 405076, ADDED_10_1_0);	-- Shadowflame Wreathe
			FirstCraft(71430, 389550);	-- Sophic Devotion
			FirstCraft(71429, 389542);	-- Sophic Writ
			FirstCraft(75204, 404859, ADDED_10_1_0);	-- Spore Tender
			FirstCraft(71422, 389558);	-- Wafting Devotion
			FirstCraft(71421, 389546);	-- Wafting Writ
			-- Profession Tool Enchantments
			FirstCraft(71416, 389508);	-- Draconic Deftness
			FirstCraft(71417, 389513);	-- Draconic Finess
			FirstCraft(71418, 389519);	-- Draconic Inspiration
			FirstCraft(71419, 389525);	-- Draconic Perception
			FirstCraft(71420, 389530);	-- Draconic Resourcefulness
			-- Rods and Wands
			FirstCraft(71435, 391176);	-- Enchanted Writhebark Wand
			FirstCraft(71433, 390823);	-- Runed Draconium Rod
			FirstCraft(71434, 390825);	-- Runed Khaz'gorite
			FirstCraft(71945, 394189);	-- Runed Serevite Rod
			FirstCraft(75209, 405803, ADDED_10_1_0);	-- Spore Keeper's Baton
			FirstCraft(71436, 391179);	-- Torch of Primal Awakening
			-- Illusory Goods
			FirstCraft(71875, 391813);	-- Illusion: Primal Air
			FirstCraft(71874, 391814);	-- Illusion: Primal Earth
			FirstCraft(71873, 391815);	-- Illusion: Primal Fire
			FirstCraft(71871, 391816);	-- Illusion: Primal Frost
			FirstCraft(71870, 390839);	-- Illusion: Primal Mastery
			FirstCraft(71931, 391810);	-- Illusory Adornment: Air
			FirstCraft(76540, 414946, ADDED_10_2_0);	-- Illusory Adornment: Dreams
			FirstCraft(71932, 391811);	-- Illusory Adornment: Earth
			FirstCraft(71432, 390951);	-- Illusory Adornment: Fire
			FirstCraft(71930, 391809);	-- Illusory Adornment: Frost
			FirstCraft(71933, 391812);	-- Illusory Adornment: Order
			FirstCraft(75201, 405650, ADDED_10_1_0);	-- Illusory Adornment: Spores
			FirstCraft(71876, 390855);	-- Khadgar's Disenchanting Rod
			FirstCraft(71431, 391185);	-- Primal Invocation Extract
			FirstCraft(71886, 391806);	-- Scepter of Spectacle: Air
			FirstCraft(71884, 391807);	-- Scepter of Spectacle: Earth
			FirstCraft(71883, 391196);	-- Scepter of Spectacle: Fire
			FirstCraft(71881, 391197);	-- Scepter of Spectacle: Frost
			FirstCraft(71880, 391808);	-- Scepter of Spectacle: Order
			-- Magical Merchandise
			FirstCraft(71878, 390831);	-- Sophic Amalgamation
			-- Artisan Curios
			FirstCraft(74310, 400809, ADDED_10_0_7);	-- Glowing Crystal Bookmark
			-- Infusions of Power
			FirstCraft(79002, 429947, ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH);		-- Enchanted Aspect's Awakened Crest
			FirstCraft(76543, 414989, ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR);	-- Enchanted Aspect's Dreaming Crest
			FirstCraft(75316, 406418, ADDED_10_1_0, REMOVED_10_2_0);	-- Enchanted Aspect's Shadowflame Crest
			FirstCraft(79003, 429948, ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH);		-- Enchanted Whelpling's Awakened Crest
			FirstCraft(76541, 414985, ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR);	-- Enchanted Whelpling's Dreaming Crest
			FirstCraft(75256, 406108, ADDED_10_1_0, REMOVED_10_2_0);	-- Enchanted Whelpling's Shadowflame Crest
			FirstCraft(79001, 429945, ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH);		-- Enchanted Wyrm's Awakened Crest
			FirstCraft(76542, 414988, ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR);	-- Enchanted Wyrm's Dreaming Crest
			FirstCraft(75315, 406413, ADDED_10_1_0, REMOVED_10_2_0);	-- Enchanted Wyrm's Shadowflame Crest
			FirstCraft(75235, 405937, ADDED_10_1_0, REMOVED_TWW_LAUNCH);	-- Titan Training Matrix V
			-- Legendary
			FirstCraft(78011, 422338, ADDED_10_2_0);	-- Shalasar's Sophic Vellum
		})),
		filter(ILLUSIONS, {
			i(200883),	-- Illusion: Primal Air (ILLUSION!)
			i(200905),	-- Illusion: Primal Earth (ILLUSION!)
			i(200906),	-- Illusion: Primal Fire (ILLUSION!)
			i(200907),	-- Illusion: Primal Frost (ILLUSION!)
			i(200470),	-- Illusion: Primal Mastery (ILLUSION!)
		}),
		filter(MISC, {
			i(203410, {["timeline"] = {ADDED_10_0_7}}),	-- Glowing Crystal Bookmark
			i(201318),	-- Illusory Adornment: Air+
			i(201317),	-- Illusory Adornment: Air++
			i(201316),	-- Illusory Adornment: Air+++
			i(206967, {["timeline"] = {ADDED_10_2_0}}),	-- Illusory Adornment: Dreams+
			i(206968, {["timeline"] = {ADDED_10_2_0}}),	-- Illusory Adornment: Dreams++
			i(206969, {["timeline"] = {ADDED_10_2_0}}),	-- Illusory Adornment: Dreams+++
			i(201315),	-- Illusory Adornment: Earth+
			i(201314),	-- Illusory Adornment: Earth++
			i(201313),	-- Illusory Adornment: Earth+++
			i(200614),	-- Illusory Adornment: Fire+
			i(200615),	-- Illusory Adornment: Fire++
			i(200616),	-- Illusory Adornment: Fire+++
			i(201312),	-- Illusory Adornment: Frost+
			i(201311),	-- Illusory Adornment: Frost++
			i(201310),	-- Illusory Adornment: Frost+++
			i(201321),	-- Illusory Adornment: Order+
			i(201320),	-- Illusory Adornment: Order++
			i(201319),	-- Illusory Adornment: Order+++
			i(204568, {["timeline"] = {ADDED_10_1_0}}),	-- Illusory Adornment: Spores+
			i(204565, {["timeline"] = {ADDED_10_1_0}}),	-- Illusory Adornment: Spores++
			i(204567, {["timeline"] = {ADDED_10_1_0}}),	-- Illusory Adornment: Spores+++
			i(201161, {	-- Scepter of Spectacle: Air
				["collectible"] = false,
			}),
			i(201160, {	-- Scepter of Spectacle: Earth
				["collectible"] = false,
			}),
			i(200472, {	-- Scepter of Spectacle: Fire
				["collectible"] = false,
			}),
			i(200535, {	-- Scepter of Spectacle: Frost
				["collectible"] = false,
			}),
			i(201158, {	-- Scepter of Spectacle: Order
				["collectible"] = false,
			}),
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(198715, {["requireSkill"] = ENCHANTING}),	-- Runed Draconium Rod
			i(198716, {["requireSkill"] = ENCHANTING}),	-- Runed Khaz'gorite Rod
			i(201601, {["requireSkill"] = ENCHANTING}),	-- Runed Serevite Rod
		}),
		filter(REAGENTS, {
			i(211519, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Enchanted Aspect's Awakened Crest
			i(206961, {["timeline"] = {ADDED_10_2_0}}),	-- Enchanted Aspect's Dreaming Crest
			i(204697, {["timeline"] = {ADDED_10_1_0}}),	-- Enchanted Aspect's Shadowflame Crest
			i(211520, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Enchanted Whelpling's Awakened Crest
			i(206977, {["timeline"] = {ADDED_10_2_0}}),	-- Enchanted Whelpling's Dreaming Crest
			i(204681, {["timeline"] = {ADDED_10_1_0}}),	-- Enchanted Whelpling's Shadowflame Crest
			i(211518, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Enchanted Wyrm's Awakened Crest
			i(206960, {["timeline"] = {ADDED_10_2_0}}),	-- Enchanted Wyrm's Dreaming Crest
			i(204682, {["timeline"] = {ADDED_10_1_0}}),	-- Enchanted Wyrm's Shadowflame Crest
			i(200618),	-- Primal Invocation Extract+
			i(200633),	-- Primal Invocation Extract++
			i(200634),	-- Primal Invocation Extract+++
			i(204673, {["timeline"] = {ADDED_10_1_0}}),	-- Titan Training Matrix V
		}),
		filter(TOYS, {
			i(200469),	-- Khadgar's Disenchanting Rod (TOY!)
			i(200636, {	-- Primal Invocation Quintessence (TOY!)
				["description"] = "You need to accumulate 2600 points. Each Primal Invocation Extract gives you a set amount of points based on its quality:\n\nRank 1: 51 points - (51 extracts)\nRank 2: 100 points - (26 extracts)\nRank 3: 150 points - (18 extracts)\n\nAs Extracts can only be used once every hour, it's recommended to buy 17x Rank 3 extracts, which will give you a total of 2550 points.\nProceed to buy the cheapest one available, no matter what quality it is, it will give you the toy.\nThey all must be used on the same character.\nYou don't need to accumulate the buff for 360 minutes.",
				["cost"] = {
					{ "i", 200618, 51 },	-- 51x Primal Invocation Extract+
					{ "i", 200633, 26 },	-- 26x Primal Invocation Extract++
					{ "i", 200634, 18 },	-- 18x Primal Invocation Extract+++
				},
			}),
		}),
		n(WEAPON_ENCHANTMENTS, {
			i(199961),	-- Enchant Tool - Draconic Deftness+
			i(200003),	-- Enchant Tool - Draconic Deftness++
			i(200045),	-- Enchant Tool - Draconic Deftness+++
			i(199962),	-- Enchant Tool - Draconic Finesse+
			i(200004),	-- Enchant Tool - Draconic Finesse++
			i(200046),	-- Enchant Tool - Draconic Finesse+++
			i(199963),	-- Enchant Tool - Draconic Ingenuity+
			i(200005),	-- Enchant Tool - Draconic Ingenuity++
			i(200047),	-- Enchant Tool - Draconic Ingenuity+++
			i(199964),	-- Enchant Tool - Draconic Perception+
			i(200006),	-- Enchant Tool - Draconic Perception++
			i(200048),	-- Enchant Tool - Draconic Perception+++
			i(199965),	-- Enchant Tool - Draconic Resourcefulness+
			i(200007),	-- Enchant Tool - Draconic Resourcefulness++
			i(200049),	-- Enchant Tool - Draconic Resourcefulness+++
			i(199966),	-- Enchant Weapon - Burning Devotion+
			i(200008),	-- Enchant Weapon - Burning Devotion++
			i(200050),	-- Enchant Weapon - Burning Devotion+++
			i(199967),	-- Enchant Weapon - Burning Writ+
			i(200009),	-- Enchant Weapon - Burning Writ++
			i(200051),	-- Enchant Weapon - Burning Writ+++
			i(207085, {["timeline"] = {ADDED_10_2_0}}),	-- Enchant Weapon: Dreaming Devotion+
			i(207086, {["timeline"] = {ADDED_10_2_0}}),	-- Enchant Weapon: Dreaming Devotion++
			i(207087, {["timeline"] = {ADDED_10_2_0}}),	-- Enchant Weapon: Dreaming Devotion+++
			i(199968),	-- Enchant Weapon - Earthen Devotion+
			i(200010),	-- Enchant Weapon - Earthen Devotion++
			i(200052),	-- Enchant Weapon - Earthen Devotion+++
			i(199969),	-- Enchant Weapon - Earthen Writ+
			i(200011),	-- Enchant Weapon - Earthen Writ++
			i(200053),	-- Enchant Weapon - Earthen Writ+++
			i(199972),	-- Enchant Weapon - Frozen Devotion+
			i(200014),	-- Enchant Weapon - Frozen Devotion++
			i(200056),	-- Enchant Weapon - Frozen Devotion+++
			i(199973),	-- Enchant Weapon - Frozen Writ+
			i(200015),	-- Enchant Weapon - Frozen Writ++
			i(200057),	-- Enchant Weapon - Frozen Writ+++
			i(204621, {["timeline"] = {ADDED_10_1_0}}),	-- Enchant Weapon - Shadowflame Wreathe+
			i(204622, {["timeline"] = {ADDED_10_1_0}}),	-- Enchant Weapon - Shadowflame Wreathe++
			i(204623, {["timeline"] = {ADDED_10_1_0}}),	-- Enchant Weapon - Shadowflame Wreathe+++
			i(199970),	-- Enchant Weapon - Sophic Devotion+
			i(200012),	-- Enchant Weapon - Sophic Devotion++
			i(200054),	-- Enchant Weapon - Sophic Devotion+++
			i(199971),	-- Enchant Weapon - Sophic Writ+
			i(200013),	-- Enchant Weapon - Sophic Writ++
			i(200055),	-- Enchant Weapon - Sophic Writ+++
			i(204613, {["timeline"] = {ADDED_10_1_0}}),	-- Enchant Weapon - Spore Tender+
			i(204614, {["timeline"] = {ADDED_10_1_0}}),	-- Enchant Weapon - Spore Tender++
			i(204615, {["timeline"] = {ADDED_10_1_0}}),	-- Enchant Weapon - Spore Tender+++
			i(199974),	-- Enchant Weapon - Wafting Devotion+
			i(200016),	-- Enchant Weapon - Wafting Devotion++
			i(200058),	-- Enchant Weapon - Wafting Devotion+++
			i(199975),	-- Enchant Weapon - Wafting Writ+
			i(200017),	-- Enchant Weapon - Wafting Writ++
			i(200059),	-- Enchant Weapon - Wafting Writ+++
		}),
		n(WEAPONS, {
			i(200641),	-- Enchanted Writhebark Wand
			i(204401, {["timeline"] = {ADDED_10_1_0}}),	-- Spore Keeper's Baton
			i(200642),	-- Torch of Primal Awakening
		}),
	}),
	prof(ENGINEERING, {
		n(DISCOVERY, {
			["description"] = "Multiple Ways of Discovering.",
			["g"] = {
				r(382350),	-- Calibrated Safety Switch
				r(382319),	-- Complicated Cuffs
				r(382349),	-- Critical Failure Prevention Unit
				r(382320),	-- Difficult Wrist Protectors
				r(382317),	-- Overengineered Sleeve Extenders
				r(382318),	-- Needlessly Complex Wristguards
				r(384491),	-- Spring-Loaded Capacitor Casing
			},
		}),
		spell(382330, {	-- Creature Combustion Canister
			r(382355),	-- EZ-Thro Creature Combustion Canister
		}),
		spell(382343, {	-- Gravitational Displacer
			r(382356),	-- EZ-Thro Gravitational Displacer
		}),
		spell(382323, {	-- Grease Grenade
			r(386670),	-- EZ-Thro Grease Grenade
		}),
		spell(382378, {	-- Greased-Up Gears
			r(382363),	-- Meticulously-Tuned Gear
			r(382364),	-- One-Size-Fits-All Gear
			r(382362),	-- Rapidly Ticking Gear
			r(382361),	-- Razor-Sharp Gear
		}),
		spell(407005, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {	-- Polarity Bomb
			r(407006),	-- EZ-Thro Polarity Bomb
		})),
		spell(382322, {	-- Primal Deconstruction Charge
			r(382357),	-- EZ-Thro Primal Deconstruction Charge
		}),
		spell(382374, {	-- Rummage Through Scrap
			["cost"] = {{"i",198651,5}},	-- Piece of Scrap
			["groups"] = {
				i(202309, {["timeline"] = {ADDED_10_0_5}}),	-- Defective Doomsday Device (TOY!)
				i(202360, {["timeline"] = {ADDED_10_0_7}}),	-- Dented Can (TOY!)
				i(192495),	-- Malfunctioning Stealthman 54 (TOY!)
				i(199554),	-- S.E.A.T. (TOY!)
			},
		}),
		n(ARMOR, {
			i(198326),	-- Battle-Ready Binoculars
			i(198332),	-- Complicated Cuffs
			i(198330),	-- Deadline Deadeyes
			i(198333),	-- Difficult Wrist Protectors
			i(211612, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Cloth Goggles
			i(211613, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Leather Goggles
			i(211614, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Mail Goggles
			i(211615, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Plate Goggles
			i(198323),	-- Lightweight Ocular Lenses
			i(198329),	-- Milestone Magnifiers
			i(198327),	-- Needlessly Complex Wristguards
			i(205278, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Cloth Goggles
			i(205279, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Leather Goggles
			i(205280, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Mail Goggles
			i(205281, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Plate Goggles
			i(198322),	-- Overengineered Sleeve Extenders
			i(198325),	-- Oscillating Wilderness Opticals
			i(198324),	-- Peripheral Vision Projectors
			i(198328),	-- Quality-Assured Optics
			i(198331),	-- Sentry's Stabilized Specs
			i(208313, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Cloth Goggles
			i(208314, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Leather Goggles
			i(208315, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Mail Goggles
			i(208316, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Plate Goggles
			-- Tinker
			i(198289),	-- Tinker: Alarm-O-Turret+
			i(198290),	-- Tinker: Alarm-O-Turret++
			i(198291),	-- Tinker: Alarm-O-Turret+++
			i(201407),	-- Tinker: Arclight Vital Correctors+
			i(201408),	-- Tinker: Arclight Vital Correctors++
			i(201409),	-- Tinker: Arclight Vital Correctors+++
			i(198295),	-- Tinker: Breath of Neltharion+
			i(198296),	-- Tinker: Breath of Neltharion++
			i(198297),	-- Tinker: Breath of Neltharion+++
			i(198304),	-- Tinker: Grounded Circuitry+
			i(198305),	-- Tinker: Grounded Circuitry++
			i(198306),	-- Tinker: Grounded Circuitry+++
			i(198298),	-- Tinker: Plane Displacer+
			i(198299),	-- Tinker: Plane Displacer++
			i(198300),	-- Tinker: Plane Displacer+++
			i(199188),	-- Tinker: Polarity Amplifier+
			i(199189),	-- Tinker: Polarity Amplifier++
			i(199190),	-- Tinker: Polarity Amplifier+++
			i(205014, {["timeline"] = {ADDED_10_1_0}}),	-- Tinker: Shadowflame Rockets+
			i(205015, {["timeline"] = {ADDED_10_1_0}}),	-- Tinker: Shadowflame Rockets++
			i(205016, {["timeline"] = {ADDED_10_1_0}}),	-- Tinker: Shadowflame Rockets+++
			i(198301),	-- Tinker: Supercollide-O-Tron+
			i(198302),	-- Tinker: Supercollide-O-Tron++
			i(198303),	-- Tinker: Supercollide-O-Tron+++
			i(202087),	-- Tinker Removal Kit
		}),
		filter(BATTLE_PETS, {
			i(193572),	-- Quack-E (PET!)
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = ENGINEERING,
		},{
			-- Parts --
			FirstCraft(71482, 382379);	-- Arclight Capacitor
			FirstCraft(71484, 382345);	-- Assorted Safety Fuses
			FirstCraft(71480, 382377);	-- Everburning Blasting Powder
			FirstCraft(71481, 382378);	-- Greased-Up Gears
			FirstCraft(71478, 382375);	-- Handful of Serevite Bolts
			FirstCraft(71483, 382380);	-- Reinforced Machine Chassis
			FirstCraft(71479, 382376);	-- Shock-Spring Coil
			-- Finishing Reagents
			FirstCraft(71468, 382346);	-- Haphazardly Tethered Wires
			FirstCraft(71469, 382348);	-- Overcharged Overclocker
			-- Optional Reagents
			FirstCraft(71476, 382350);	-- Calibrated Safety Switch
			FirstCraft(71477, 382349);	-- Critical Failure Prevention Unit
			FirstCraft(71474, 382351);	-- Magazine of Healing Darts
			FirstCraft(71475, 384491);	-- Spring-Loaded Capacitor Casing
			-- Tinker
			FirstCraft(71501, 382334);	-- Tinker: Alarm-O-Turret
			FirstCraft(71944, 393796);	-- Tinker: Arclight Vital Correctors
			FirstCraft(71502, 382324);	-- Tinker: Breath of Neltharion
			FirstCraft(71506, 382344);	-- Tinker: Grounded Circuitry
			FirstCraft(71503, 382401);	-- Tinker: Plane Displacer
			FirstCraft(71505, 386667);	-- Tinker: Polarity Amplifier
			FirstCraft(75524, 408052, ADDED_10_1_0);	-- Tinker: Shadowflame Rockets
			FirstCraft(71504, 382359);	-- Tinker: Supercollide-O-Tron
			-- Googles
			FirstCraft(71444, 382391);	-- Battle-Ready Binoculars
			FirstCraft(71448, 382385);	-- Deadline Deadeyes
			FirstCraft(79069, 430093, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Cloth Goggles
			FirstCraft(79070, 430094, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Leather Goggles
			FirstCraft(79071, 430095, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Mail Goggles
			FirstCraft(79072, 430096, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Plate Goggles
			FirstCraft(71441, 382388);	-- Lightweight Ocular Lenses
			FirstCraft(71447, 382384);	-- Milestone Magnifiers
			FirstCraft(75715, 409351, ADDED_10_1_0);	-- Obsidian Combatant's Cloth Goggles
			FirstCraft(75716, 409353, ADDED_10_1_0);	-- Obsidian Combatant's Leather Goggles
			FirstCraft(75717, 409355, ADDED_10_1_0);	-- Obsidian Combatant's Mail Goggles
			FirstCraft(75718, 409356, ADDED_10_1_0);	-- Obsidian Combatant's Plate Goggles
			FirstCraft(71443, 382390);	-- Oscillating Wilderness Opticals
			FirstCraft(71442, 382389);	-- Peripheral Vision Projectors
			FirstCraft(71446, 382383);	-- Quality-Assured Optics
			FirstCraft(71449, 382386);	-- Sentry's Stabilized Specs
			FirstCraft(77440, 419042, ADDED_10_2_0);	-- Verdant Combatant's Cloth Goggles
			FirstCraft(77441, 419043, ADDED_10_2_0);	-- Verdant Combatant's Leather Goggles
			FirstCraft(77442, 419044, ADDED_10_2_0);	-- Verdant Combatant's Mail Goggles
			FirstCraft(77443, 419045, ADDED_10_2_0);	-- Verdant Combatant's Plate Goggles
			-- Armor
			FirstCraft(71450, 382319);	-- Complicated Cuffs
			FirstCraft(71451, 382320);	-- Difficult Wrist Protectors
			FirstCraft(71445, 382318);	-- Needlessly Complex Wristguards
			FirstCraft(71440, 382317);	-- Overengineered Sleeve Extenders
			-- Weapons
			FirstCraft(71511, 382387);	-- P.E.W. x2
			FirstCraft(71510, 382321);	-- Sophisticated Problem Solver
			-- Cogwheels
			FirstCraft(71472, 382363);	-- Meticulously-Tuned Gear
			FirstCraft(71509, 382364);	-- One-Size-Fits-All
			FirstCraft(71470, 382362);	-- Rapidly Ticking Gear
			FirstCraft(71455, 382361);	-- Razor-Sharp Gear
			-- Scopes & Ammo
			FirstCraft(71438, 382365);	-- Completely Safe Rockets
			FirstCraft(71439, 382366);	-- Endless Stack of Needles
			FirstCraft(71512, 382402);	-- Gyroscopic Kaleidoscope
			FirstCraft(71508, 382326);	-- High Intensity Thermal Scanner
			FirstCraft(71507, 382325);	-- Projectile Propulsion Pinion
			-- Fireworks
			FirstCraft(71869, 384313);	-- Black Fireflight
			FirstCraft(71872, 382403);	-- Blue Fireflight
			FirstCraft(71877, 384314);	-- Bronze Fireflight
			FirstCraft(71868, 382327);	-- Bundle of Fireworks
			FirstCraft(71879, 382335);	-- Green Fireflight
			FirstCraft(71882, 382404);	-- Red Fireflight
			-- Explosives
			FirstCraft(71462, 382330);	-- Creature Combustion Canister
			FirstCraft(71466, 382355);	-- EZ-Thro Creature Combustion Canister
			FirstCraft(71465, 382356);	-- EZ-Thro Gravitational Displacer
			FirstCraft(71459, 386670);	-- EZ-Thro Grease Grenade
			FirstCraft(75416, 407006, ADDED_10_1_0);	-- EZ-Thro Polarity Bomb
			FirstCraft(71467, 382357);	-- EZ-Thro Primal Deconstruction Charge
			FirstCraft(71460, 382343);	-- Gravitational Displacer
			FirstCraft(71461, 382323);	-- Grease Grenade
			FirstCraft(71437, 382353);	-- I.W.I.N Button Mk10
			FirstCraft(75415, 407005, ADDED_10_1_0);	-- Polarity Bomb
			FirstCraft(71463, 382322);	-- Primal Deconstruction Charge
			FirstCraft(71464, 382333);	-- Sticky Warp Grenade
			FirstCraft(71453, 382358);	-- Suspiciously Silent Crate
			FirstCraft(71452, 382354);	-- Suspiciously Ticking Crate
			-- Devices
			FirstCraft(71866, 382408);	-- Atomic Recalibrator
			FirstCraft(71863, 382368);	-- Centralized Precipitation Emitter
			FirstCraft(71885, 382371);	-- Element-Infused Rocket Helmet
			FirstCraft(71865, 382369);	-- Environmental Emulator
			FirstCraft(71887, 382370);	-- Giggle Goggles
			FirstCraft(71499, 382336);	-- H.E.L.P
			FirstCraft(75596, 408230, ADDED_10_1_0);	-- Mallard Mortar
			FirstCraft(71891, 382407);	-- Neural Silencer Mk3
			FirstCraft(71889, 382338);	-- Portable Alchemist's Lab Bench
			FirstCraft(76736, 416149, ADDED_10_2_0);	-- Portable Party Platter
			FirstCraft(71890, 382337);	-- Portable Tinker's Workbench
			FirstCraft(71471, 382328);	-- S.A.V.I.O.R
			FirstCraft(72711, 396777);	-- Tinker Removal Kit
			FirstCraft(71888, 382367);	-- Wyrmhole Generator: Dragon Isles
			FirstCraft(71456, 387246);	-- Zapthrottle Soul Inhaler
			-- Profession Equipment
			FirstCraft(71496, 382339);	-- Bottomless Mireslush Ore Satchel
			FirstCraft(71495, 382393);	-- Bottomless Stonecrust Ore Satchel
			FirstCraft(71485, 382398);	-- Draconium Brainwave Amplifier
			FirstCraft(71493, 382392);	-- Draconium Delver's Helmet
			FirstCraft(71487, 382397);	-- Draconium Encased Samophlange
			FirstCraft(71489, 382394);	-- Draconium Fisherfriend
			FirstCraft(71486, 382400);	-- Khaz'gorite Brainwave Amplifier
			FirstCraft(71494, 382341);	-- Khaz'gorite Delver's Helmet
			FirstCraft(71488, 382399);	-- Khaz'gorite Encased Samophlange
			FirstCraft(71490, 382329);	-- Khaz'gorite Fisherfriend
			FirstCraft(71491, 382395);	-- Lapidary's Draconium Clamps
			FirstCraft(71492, 382342);	-- Lapidary's Khaz'gorite Clamps
			FirstCraft(71497, 382396);	-- Spring-Loaded Draconium Fabric Cutters
			FirstCraft(71498, 382340);	-- Spring-Loaded Khaz'gorite Fabric Cutters
			-- Robotics
			FirstCraft(71458, 382331);	-- D.U.C.K.O.Y
			FirstCraft(71892, 382332);	-- Quack-E
			-- Artisan Curios
			FirstCraft(74312, 400810, ADDED_10_0_7);	-- Gnomish Voicebox
			-- Legendary
			FirstCraft(75435, 407170, ADDED_10_1_0);	-- Inspired Order Recalibrator
		})),
		filter(MISC, {
			i(198549),	-- Black Fireflight
			i(198222),	-- Blue Fireflight
			i(198263),	-- Bottomless Mireslush Ore Satchel
			i(198262),	-- Bottomless Stonecrust Ore Satchel
			i(198550),	-- Bronze Fireflight
			i(198172),	-- Bundle of Fireworks
			i(198253),	-- Calibrated Safety Switch+
			i(198254),	-- Calibrated Safety Switch++
			i(198255),	-- Calibrated Safety Switch+++
			i(198160),	-- Completely Safe Rockets+
			i(198161),	-- Completely Safe Rockets++
			i(198162),	-- Completely Safe Rockets+++
			i(198239),	-- Creature Combustion Canister+
			i(198240),	-- Creature Combustion Canister++
			i(198241),	-- Creature Combustion Canister++
			i(198259),	-- Critical Failure Prevention Unit+
			i(198260),	-- Critical Failure Prevention Unit++
			i(198261),	-- Critical Failure Prevention Unit+++
			i(198180),	-- D.U.C.K.O.Y.+
			i(198181),	-- D.U.C.K.O.Y.++
			i(198182),	-- D.U.C.K.O.Y.+++
			i(198163),	-- Endless Stack of Needles+
			i(198164),	-- Endless Stack of Needles++
			i(198165),	-- Endless Stack of Needles+++
			i(198207),	-- EZ-Thro Creature Combustion Canister+
			i(198208),	-- EZ-Thro Creature Combustion Canister++
			i(198209),	-- EZ-Thro Creature Combustion Canister+++
			i(198213),	-- EZ-Thro Gravitational Displacer+
			i(198214),	-- EZ-Thro Gravitational Displacer++
			i(198215),	-- EZ-Thro Gravitational Displacer+++
			i(199193),	-- EZ-Thro Grease Grenade+
			i(199194),	-- EZ-Thro Grease Grenade++
			i(199195),	-- EZ-Thro Grease Grenade+++
			i(204827, {["timeline"] = {ADDED_10_1_0}}),	-- EZ-Thro Polarity Bomb+
			i(204828, {["timeline"] = {ADDED_10_1_0}}),	-- EZ-Thro Polarity Bomb++
			i(204829, {["timeline"] = {ADDED_10_1_0}}),	-- EZ-Thro Polarity Bomb+++
			i(198210),	-- EZ-Thro Primal Deconstruction Charge+
			i(198211),	-- EZ-Thro Primal Deconstruction Charge++
			i(198212),	-- EZ-Thro Primal Deconstruction Charge+++
			i(198228),	-- Gravitational Displacer+
			i(198229),	-- Gravitational Displacer++
			i(198230),	-- Gravitational Displacer+++
			i(198292),	-- Grease Grenade+
			i(198293),	-- Grease Grenade++
			i(198294),	-- Grease Grenade+++
			i(198224),	-- Green Fireflight
			i(203411, {["timeline"] = {ADDED_10_0_7}}),	-- Gnomish Voicebox
			i(198310),	-- Gyroscopic Kaleidoscope+
			i(198311),	-- Gyroscopic Kaleidoscope++
			i(198312),	-- Gyroscopic Kaleidoscope+++
			i(198216),	-- Haphazardly Tethered Wires+
			i(198217),	-- Haphazardly Tethered Wires++
			i(198218),	-- Haphazardly Tethered Wires+++
			i(198316),	-- High Intensity Thermal Scanner+
			i(198317),	-- High Intensity Thermal Scanner++
			i(198318),	-- High Intensity Thermal Scanner+++
			i(198157),	-- I.W.I.N. Button Mk10+
			i(198158),	-- I.W.I.N. Button Mk10++
			i(198159),	-- I.W.I.N. Button Mk10+++
			i(204856, {["timeline"] = {ADDED_10_1_0}}),	-- Inspired Order Recalibrator
			i(198256),	-- Magazine of Healing Darts+
			i(198257),	-- Magazine of Healing Darts++
			i(198258),	-- Magazine of Healing Darts+++
			i(198236),	-- Meticulously-Tuned Gear+
			i(198237),	-- Meticulously-Tuned Gear++
			i(198238),	-- Meticulously-Tuned Gear+++
			i(198247),	-- Neural Silencer Mk3
			i(198307),	-- One-Size-Fits-All Gear+
			i(198308),	-- One-Size-Fits-All Gear++
			i(198309),	-- One-Size-Fits-All Gear+++
			i(198219),	-- Overcharged Overclocker+
			i(198220),	-- Overcharged Overclocker++
			i(198221),	-- Overcharged Overclocker+++
			i(198651),	-- Piece of Scrap
			i(204823, {["timeline"] = {ADDED_10_1_0}}),	-- Polarity Bomb+
			i(204825, {["timeline"] = {ADDED_10_1_0}}),	-- Polarity Bomb++
			i(204826, {["timeline"] = {ADDED_10_1_0}}),	-- Polarity Bomb+++
			i(198265),	-- Portable Alchemist's Lab Bench
			i(198268),	-- Portable Tinker's Workbench
			i(198278),	-- Primal Deconstruction Charge+
			i(198279),	-- Primal Deconstruction Charge++
			i(198280),	-- Primal Deconstruction Charge+++
			i(198313),	-- Projectile Propulsion Pinion+
			i(198314),	-- Projectile Propulsion Pinion++
			i(198315),	-- Projectile Propulsion Pinion+++
			i(198231),	-- Rapidly Ticking Gear+
			i(198232),	-- Rapidly Ticking Gear++
			i(198233),	-- Rapidly Ticking Gear+++
			i(198174),	-- Razor-Sharp Gear+
			i(198175),	-- Razor-Sharp Gear++
			i(198176),	-- Razor-Sharp Gear+++
			i(198223),	-- Red Fireflight
			i(198275),	-- S.A.V.I.O.R.+
			i(198276),	-- S.A.V.I.O.R.++
			i(198277),	-- S.A.V.I.O.R.+++
			i(198619),	-- Spring-Loaded Capacitor Casing+
			i(198620),	-- Spring-Loaded Capacitor Casing++
			i(198621),	-- Spring-Loaded Capacitor Casing+++
			i(198281),	-- Sticky Warp Grenade+
			i(198282),	-- Sticky Warp Grenade++
			i(198283),	-- Sticky Warp Grenade+++
			i(198169),	-- Suspiciously Silent Crate+
			i(198170),	-- Suspiciously Silent Crate++
			i(198171),	-- Suspiciously Silent Crate+++
			i(198166),	-- Suspiciously Ticking Crate+
			i(198167),	-- Suspiciously Ticking Crate++
			i(198168),	-- Suspiciously Ticking Crate+++
			i(199414),	-- Zapthrottle Soul Inhaler
			-- Weird
			i(198650),	-- Rummage Through Scrap
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(198204, {["requireSkill"] = ENGINEERING}),	-- Draconium Brainwave Amplifier
			i(198243, {["requireSkill"] = MINING}),	-- Draconium Delver's Helmet
			i(198245, {["requireSkill"] = ENGINEERING}),	-- Draconium Encased Samophlange
			i(198225, {["requireSkill"] = FISHING}),	-- Draconium Fisherfriend
			i(198205, {["requireSkill"] = ENGINEERING}),	-- Khaz'gorite Brainwave Amplifier
			i(198244, {["requireSkill"] = MINING}),	-- Khaz'gorite Delver's Helmet
			i(198226, {["requireSkill"] = FISHING}),	-- Khaz'gorite Fisherfriend
			i(198246, {["requireSkill"] = ENGINEERING}),	-- Khaz'gorite Encased Samophlange
			i(198234, {["requireSkill"] = JEWELCRAFTING}),	-- Lapidary's Draconium Clamps
			i(198235, {["requireSkill"] = JEWELCRAFTING}),	-- Lapidary's Khaz'gorite Clamps
			i(194125, {["requireSkill"] = TAILORING}),	-- Spring-Loaded Draconium Fabric Cutters
			i(194126, {["requireSkill"] = TAILORING}),	-- Spring-Loaded Khaz'gorite Fabric Cutters
		}),
		filter(REAGENTS, {
			i(198195),	-- Arclight Capacitor+
			i(198196),	-- Arclight Capacitor++
			i(198197),	-- Arclight Capacitor+++
			i(198201),	-- Assorted Safety Fuses+
			i(198202),	-- Assorted Safety Fuses++
			i(198203),	-- Assorted Safety Fuses+++
			i(198189),	-- Everburning Blasting Powder+
			i(198190),	-- Everburning Blasting Powder++
			i(198191),	-- Everburning Blasting Powder+++
			i(198192),	-- Greased-Up Gears+
			i(198193),	-- Greased-Up Gears++
			i(198194),	-- Greased-Up Gears+++
			i(198183),	-- Handful of Serevite Bolts+
			i(198184),	-- Handful of Serevite Bolts++
			i(198185),	-- Handful of Serevite Bolts+++
			i(198198),	-- Reinforced Machine Chassis+
			i(198199),	-- Reinforced Machine Chassis++
			i(198200),	-- Reinforced Machine Chassis+++
			i(198186),	-- Shock-Spring Coil+
			i(198187),	-- Shock-Spring Coil++
			i(198188),	-- Shock-Spring Coil+++
		}),
		filter(TOYS, {
			i(198173);	-- Atomic Recalibrator (TOY!)
			i(198264),	-- Centralized Precipitation Emitter (TOY!)
			i(192443),	-- Element-Infused Rocket Helmet (TOY!)
			i(198206),	-- Environmental Emulator (TOY!)
			i(198227),	-- Giggle Goggles (TOY!)
			i(201930, {["timeline"] = {ADDED_10_0_7}}),	-- H.E.L.P. (TOY!)
			i(204818, {["timeline"] = {ADDED_10_1_0}}),	-- Mallard Mortar (TOY!)
			i(207092, {["timeline"] = {ADDED_10_2_0}}),	-- Portable Party Platter (TOY!)
			i(198156),	-- Wyrmhole Generator: Dragon Isles (TOY!)
		}),
		n(WEAPONS, {
			i(198334),	-- P.E.W. x2
			i(198335),	-- Sophisticated Problem Solver
		}),
	}),
	prof(FISHING, {
		i(198438, {	-- Draconic Recipe in a Bottle
			["sym"] = {{"select","itemID",
				-- Available from the Bottle but has another Source
				194298,	-- Pattern: Forlorn Funeral Pall (RECIPE!)
				194267,	-- Pattern: Shimmering Embroidery Thread (RECIPE!)
				194507,	-- Plans: Serevite Skeleton Key (RECIPE!)
				194486,	-- Plans: Shield of the Hearth (RECIPE!)
				198908,	-- Technique: Illusion Parchment: Love Charm (RECIPE!)
				201741,	-- Technique: Renewed Proto-Drake: Bovine Horns (RECIPE!)
				201738,	-- Technique: Renewed Proto-Drake: Steel and Yellow Armor (RECIPE!)
				198904,	-- Technique: Windborne Velocidrake: Windswept Pattern (RECIPE!)
			}},
			["g"] = {
				-- Only known source is the Bottle
				i(194671),	-- Design: "Rhinestone" Sunglasses (RECIPE!)
				i(205161, {["timeline"] = {ADDED_10_1_0}}),	-- Plans: Heat-Resistant Rescue Ring (RECIPE!)
				i(198714),	-- Plans: Prototype Regal Barding Framework (RECIPE!)
				i(191544),	-- Recipe: Cauldron of the Pooka (RECIPE!)
				i(198109),	-- Recipe: Churnbelly Tea (RECIPE!)
				i(191589),	-- Recipe: Fervid Incense (RECIPE!)
				i(198114),	-- Recipe: Filet of Fangs (RECIPE!)
				i(198116),	-- Recipe: Salt-Baked Fishcake (RECIPE!)
				i(198115),	-- Recipe: Seamoth Surprise (RECIPE!)
				i(191587),	-- Recipe: Somniferous Incense (RECIPE!)
				i(198113),	-- Recipe: Timely Demise (RECIPE!)
				i(199232),	-- Schematic: Bundle of Fireworks (RECIPE!)
				i(199236),	-- Schematic: D.U.C.K.O.Y. (RECIPE!)
				i(199228),	-- Schematic: Grease Grenade (RECIPE!)
				i(198891),	-- Technique: Cliffside Wylderdrake: Conical Head (RECIPE!)
				i(198896),	-- Technique: Highland Drake: Spined Neck (RECIPE!)
				i(198905),	-- Technique: Illusion Parchment: Aqua Torrent (RECIPE!)
				i(198910),	-- Technique: Illusion Parchment: Shadow Orb (RECIPE!)
				i(198899),	-- Technique: Renewed Proto-Drake: Predator Pattern (RECIPE!)
				i(198903),	-- Technique: Windborne Velocidrake: Spined Head (RECIPE!)
				i(205127, {["timeline"] = {ADDED_10_1_0}}),	-- Technique: Winding Slitherdrake: Blue and Silver Armor (RECIPE!)
				i(205129, {["timeline"] = {ADDED_10_1_0}}),	-- Technique: Winding Slitherdrake: Curved Chin Horn (RECIPE!)
				i(205128, {["timeline"] = {ADDED_10_1_0}}),	-- Technique: Winding Slitherdrake: Yellow and Silver Armor (RECIPE!)
			},
		}),
		i(194967),	-- Aileron Seamoth
		i(194968),	-- Cerulean Spinefish
		i(199338),	-- Copper Coin of the Isles
		i(198395),	-- Dull Spined Clam
		i(203419, {["timeline"] = {ADDED_10_0_7}}),	-- Elusive Croaking Crab
		i(200074),	-- Frosted Rimefin Tuna
		i(199340),	-- Gold Coin of the Isles
		i(194970),	-- Islefin Dorado
		i(199344),	-- Magma Thresher
		i(201934),	-- Nokhud Whittling Knife
		i(194701),	-- Ominous Conch
		i(200061),	-- Prismatic Leaper
		i(198397),	-- Rainbow Pearl
		i(199345),	-- Rimefin Tuna
		i(199346),	-- Rotten Rimefin Tuna
		i(202105),	-- Rusted Coin of the Isles
		i(194730),	-- Scalebelly Mackerel
		i(199339),	-- Silver Coin of the Isles
		i(198614),	-- Soggy Clump of Darkmoon Cards
		i(194969),	-- Temporal Dragonhead
		i(194966),	-- Thousandbite Piranha
		filter(RECIPES, {
			i(34109, {	-- Weather-Beaten Journal (RECIPE!)
				["description"] = "Can be fished from schools.",
			}),
		}),
	}),
	prof(HERBALISM, {
		spell(2366, {	-- Herb Gathering
			i(191467),	-- Bubble Poppy+
			i(191468),	-- Bubble Poppy++
			i(191469),	-- Bubble Poppy+++
			i(203416, {["timeline"] = {ADDED_10_0_7}}),	-- Dormant Lifebloom Seeds
			i(200678),	-- Dreambloom
			i(200677),	-- Dreambloom Petal
			i(191460),	-- Hochenblume+
			i(191461),	-- Hochenblume++
			i(191462),	-- Hochenblume+++
			i(202014),	-- Infused Pollen
			i(197755),	-- Lava Beetle
			i(200506),	-- Roused Seedling
			i(190330),	-- Rousing Decay
			i(200507),	-- Decayed Roused Seedling
			i(200508),	-- Propagating Roused Seedling
			i(200509),	-- Agitated Roused Seedling
			i(191464),	-- Saxifrage+
			i(191465),	-- Saxifrage++
			i(191466),	-- Saxifrage+++
			i(191470),	-- Writhebark+
			i(191471),	-- Writhebark++
			i(191472),	-- Writhebark+++
		}),
		n(DISCOVERY, {
			header(HEADERS.Map, EMERALD_DREAM, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 }, }, {
				["g"] = sharedData({
					["maps"] = { EMERALD_DREAM }
				},{
					r(422293),	-- Overload Overgrown Herb
					r(421176),	-- Overgrown Bubble Poppy
					r(421224),	-- Overgrown Hochenblume
					r(421226),	-- Overgrown Saxifrage
					r(421227),	-- Overgrown Writhebark
				}),
			})),
			header(HEADERS.Map, ZARALEK_CAVERN, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 }, }, {
				["g"] = sharedData({
					["maps"] = { ZARALEK_CAVERN }
				},{
					r(405124),	-- Lambent Bubble Poppy
					r(405123),	-- Lambent Hochenblume
					r(405126),	-- Lambent Saxifrage
					r(405127),	-- Lambent Writhebark
					r(405134),	-- Overload Lambent Herb
				}),
			})),
			r(391444),	-- Bubble Poppy
			r(391507),	-- Decayed Bubble Poppy
			r(391492),	-- Decayed Hochenblume
			r(391500),	-- Decayed Saxifrage
			r(391508),	-- Decayed Writhebark
			r(391509),	-- Frigid Bubble Poppy
			r(391460),	-- Frigid Hochenblume
			r(391501),	-- Frigid Saxifrage
			r(391510),	-- Frigid Writhebark
			r(391505),	-- Infurious Bubble Poppy
			r(391498),	-- Infurious Hochenblume
			r(391499),	-- Infurious Saxifrage
			r(391506),	-- Infurious Writhebark
			r(391511),	-- Lush Bubble Poppy
			r(391415),	-- Lush Hochenblume
			r(391502),	-- Lush Saxifrage
			r(391512),	-- Lush Writhebark
			r(391564),	-- Overload Decayed Herb
			r(391562),	-- Overload Frigid Herb
			r(391558),	-- Overload Infurious Herb
			r(391557),	-- Overload Titan-Touched Herb
			r(391560),	-- Overload Windswept Herb
			r(391441),	-- Saxifrage
			r(391513),	-- Titan-Touched Bubble Poppy
			r(391496),	-- Titan-Touched Hochenblume
			r(391503),	-- Titan-Touched Saxifrage
			r(391514),	-- Titan-Touched Writhebark
			r(391515),	-- Windswept Bubble Poppy
			r(391431),	-- Windswept Hochenblume
			r(391504),	-- Windswept Saxifrage
			r(391516),	-- Windswept Writhebark
			r(391447),	-- Writhebark
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = HERBALISM,
		},{
			-- Bubble Poppy
			FirstCraft(71972, 391444);	-- Bubble Poppy
			FirstCraft(71990, 391507);	-- Decayed Bubble Poppy
			FirstCraft(71982, 391509);	-- Frigid Bubble Poppy
			FirstCraft(71994, 391505);	-- Infurious Bubble Poppy
			FirstCraft(75142, 405124, ADDED_10_1_0);	-- Lambent Bubble Poppy
			FirstCraft(71973, 391511);	-- Lush Bubble Poppy
			FirstCraft(77824, 421176, ADDED_10_2_0);	-- Overgrown Bubble Poppy
			FirstCraft(71986, 391513);	-- Titan-Touched Bubble Poppy
			FirstCraft(71978, 391515);	-- Windswept Bubble Poppy
			-- Hochenblume
			FirstCraft(71988, 391492);	-- Decayed Hochenblume
			FirstCraft(71980, 391460);	-- Frigid Hochenblume
			FirstCraft(71992, 391498);	-- Infurious Hochenblume
			FirstCraft(75141, 405123, ADDED_10_1_0);	-- Lambent Hochenblume
			FirstCraft(71969, 391415);	-- Lush Hochenblume
			FirstCraft(77823, 421224, ADDED_10_2_0);	-- Overgrown Hochenblume
			FirstCraft(71984, 391496);	-- Titan-Touched Hochenblume
			FirstCraft(71976, 391431);	-- Windswept Hochenblume
			-- Saxifrage
			FirstCraft(71974, 391441);	-- Saxifrage
			FirstCraft(71991, 391500);	-- Decayed Saxifrage
			FirstCraft(71983, 391501);	-- Frigid Saxifrage
			FirstCraft(72341, 391499);	-- Infurious Saxifrage
			FirstCraft(75143, 405126, ADDED_10_1_0);	-- Lambent Saxifrage
			FirstCraft(71975, 391502);	-- Lush Saxifrage
			FirstCraft(77826, 421226, ADDED_10_2_0);	-- Overgrown Saxifrage
			FirstCraft(71987, 391503);	-- Titan-Touched Saxifrage
			FirstCraft(71979, 391504);	-- Windswept Saxifrage
			-- Writhebark
			FirstCraft(71970, 391447);	-- Writhebark
			FirstCraft(71989, 391508);	-- Decayed Writhebark
			FirstCraft(71981, 391510);	-- Frigid Writhebark
			FirstCraft(71993, 391506);	-- Infurious Writhebark
			FirstCraft(75144, 405127, ADDED_10_1_0);	-- Lambent Writhebark
			FirstCraft(71971, 391512);	-- Lush Writhebark
			FirstCraft(77825, 421227, ADDED_10_2_0);	-- Overgrown Writhebark
			FirstCraft(71985, 391514);	-- Titan-Touched Writhebark
			FirstCraft(71977, 391516);	-- Windswept Writhebark
			-- Overload
			FirstCraft(72345, 391564);	-- Overload Decayed Herb
			FirstCraft(72343, 391562);	-- Overload Frigid Herb
			FirstCraft(72348, 391558);	-- Overload Infurious Herb
			FirstCraft(75138, 405134, ADDED_10_1_0);	-- Overload Lambent Herb
			FirstCraft(78007, 422293, ADDED_10_2_0);	-- Overload Overgrown Herb
			FirstCraft(72344, 391557);	-- Overload Titan-Touched Herb
			FirstCraft(72342, 391560);	-- Overload Windswept Herb
		})),
	}),
	prof(INSCRIPTION, {
		spell(382981, {	-- Dragon Isles Milling
			i(198418),	-- Blazing Pigment+
			i(198419),	-- Blazing Pigment++
			i(198420),	-- Blazing Pigment+++
			i(198415),	-- Flourishing Pigment+
			i(198416),	-- Flourishing Pigment++
			i(198417),	-- Flourishing Pigment+++
			i(198412),	-- Serene Pigment+
			i(198413),	-- Serene Pigment++
			i(198414),	-- Serene Pigment+++
			i(198421),	-- Shimmering Pigment+
			i(198422),	-- Shimmering Pigment++
			i(198423),	-- Shimmering Pigment+++
		}),
		n(DISCOVERY, {
			r(383522),	-- Draconic Treatise on Alchemy
			r(383517),	-- Draconic Treatise on Blacksmithing
			r(383523),	-- Draconic Treatise on Enchanting
			r(383844),	-- Draconic Treatise on Engineering
			r(383515),	-- Draconic Treatise on Herbalism
			r(383524),	-- Draconic Treatise on Jewelcrafting
			r(383519),	-- Draconic Treatise on Leatherworking
			r(383516),	-- Draconic Treatise on Mining
			r(392944),	-- Draconic Treatise on Skinning
			r(383520),	-- Draconic Treatise on Tailoring
		}),
		n(DRAKEWATCHER_MANUSCRIPTS, {
			i(196981),	-- Cliffside Wylderdrake: Conical Head (MM!)
			i(196988),	-- Cliffside Wylderdrake: Red Hair (MM!)
			i(196963),	-- Cliffside Wylderdrake: Silver and Blue Armor (MM!)
			i(196968),	-- Cliffside Wylderdrake: Steel and Yellow Armor (MM!)
			i(196980),	-- Cliffside Wylderdrake: Triple Head Horns (MM!)
			i(207761, {["timeline"] = {ADDED_10_2_0}}),	-- Grotto Netherwing Drake: Chin Tendrils (MM!)
			i(207773, {["timeline"] = {ADDED_10_2_0}}),	-- Grotto Netherwing Drake: Spiked Jaw (MM!)
			i(197117),	-- Highland Drake: Black Hair (MM!)
			i(197091),	-- Highland Drake: Silver and Blue Armor (MM!)
			i(197108),	-- Highland Drake: Spined Head (MM!)
			i(197154),	-- Highland Drake: Spined Neck (MM!)
			i(197096),	-- Highland Drake: Steel and Yellow Armor (MM!)
			i(197377),	-- Renewed Proto-Drake: Bovine Horns (MM!)
			i(197394),	-- Renewed Proto-Drake: Predator Pattern (MM!)
			i(197347),	-- Renewed Proto-Drake: Silver and Blue Armor (MM!)
			i(197362),	-- Renewed Proto-Drake: Spined Crest (MM!)
			i(197352),	-- Renewed Proto-Drake: Steel and Yellow Armor (MM!)
			i(197597),	-- Windborne Velocidrake: Black Fur (MM!)
			i(197578),	-- Windborne Velocidrake: Silver and Blue Armor (MM!)
			i(197592),	-- Windborne Velocidrake: Spined Head (MM!)
			i(197579),	-- Windborne Velocidrake: Steel and Orange Armor (MM!)
			i(197634),	-- Windborne Velocidrake: Windswept Pattern (MM!)
			i(203300, {["timeline"] = {ADDED_10_1_0}}),	-- Winding Slitherdrake: Blue and Silver Armor (MM!)
			i(203314, {["timeline"] = {ADDED_10_1_0}}),	-- Winding Slitherdrake: Curved Chin Horn (MM!)
			i(203311, {["timeline"] = {ADDED_10_2_0}}),	-- Winding Slitherdrake: Hairy Chin (MM!)
			i(203364, {["timeline"] = {ADDED_10_1_0}}),	-- Winding Slitherdrake: Small Finned Throat (MM!)
			i(203324, {["timeline"] = {ADDED_10_1_0}}),	-- Winding Slitherdrake: White Hair (MM!)
			i(203304, {["timeline"] = {ADDED_10_1_0}}),	-- Winding Slitherdrake: Yellow and Silver Armor (MM!)
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = INSCRIPTION,
		},{
			-- Inks
			FirstCraft(71599, 383786);	-- Blazing Ink
			FirstCraft(71597, 383791);	-- Burnished Ink
			FirstCraft(71598, 383790);	-- Cosmic Ink
			FirstCraft(71600, 383787);	-- Flourishing Ink
			FirstCraft(71601, 383788);	-- Serene Ink
			-- Reagents
			FirstCraft(71569, 383531);	-- Chilled Rune
			FirstCraft(71570, 383530);	-- Runed Writhebark
			-- Missives
			FirstCraft(71558, 383554);	-- Draconic Missive of the Aurora
			FirstCraft(71564, 383555);	-- Draconic Missive of the Feverflare
			FirstCraft(71565, 383556);	-- Draconic Missive of the Fireflash
			FirstCraft(71566, 383560);	-- Draconic Missive of the Harmonious
			FirstCraft(71567, 383561);	-- Draconic Missive of the Peerless
			FirstCraft(71568, 383562);	-- Draconic Missive of the Quickblade
			-- Crafting Tool Missives
			FirstCraft(71571, 390850);	-- Draconic Missive of Crafting Speed
			FirstCraft(71572, 390847);	-- Draconic Missive of Inspiration
			FirstCraft(71573, 390849);	-- Draconic Missive of Multicraft
			FirstCraft(71574, 390848);	-- Draconic Missive of Resourcefulness
			-- Gathering Tool Missives
			FirstCraft(71575, 390853);	-- Draconic Missive of Deftness
			FirstCraft(71576, 390851);	-- Draconic Missive of Finesse
			FirstCraft(71577, 390852);	-- Draconic Missive of Perception
			-- Runes and Sigil
			FirstCraft(71559, 383533);	-- Azurescale Sigil
			FirstCraft(71560, 383536);	-- Bronzescale Sigil
			FirstCraft(71555, 383527);	-- Buzzing Rune
			FirstCraft(71556, 383525);	-- Chirping Rune
			FirstCraft(71561, 383535);	-- Emberscale Sigil
			FirstCraft(75585, 408271, ADDED_10_1_0);	-- Hissing Rune
			FirstCraft(71557, 383529);	-- Howling Rune
			FirstCraft(71562, 383538);	-- Jetscale Sigil+
			FirstCraft(71563, 383534);	-- Sagescale Sigil
			FirstCraft(75584, 408272, ADDED_10_1_0);	-- Aberrus, the Shadowed Crucible
			FirstCraft(78322, 425954, ADDED_10_2_0);	-- Vantus Rune: Amirdrassil, the Dream's Hope
			FirstCraft(71594, 383546);	-- Vantus Rune: Vault of the Incarnates
			-- Trinkets
			FirstCraft(74102, 400026, ADDED_10_0_5);	-- Crimson Combatant's Medallion
			FirstCraft(74103, 400027, ADDED_10_0_5);	-- Crimson Combatant's Insignia of Alacrity
			FirstCraft(74104, 400028, ADDED_10_0_5);	-- Crimson Combatant's Emblem
			FirstCraft(79068, 430092, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Emblem
			FirstCraft(79067, 430091, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Insignia of Alacrity
			FirstCraft(79066, 430090, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Medallion
			FirstCraft(71592, 383770);	-- Darkmoon Deck Box: Dance
			FirstCraft(71591, 383325);	-- Darkmoon Deck Box: Inferno
			FirstCraft(71590, 383767);	-- Darkmoon Deck Box: Rime
			FirstCraft(71593, 383772);	-- Darkmoon Deck Box: Watcher
			FirstCraft(74832, 403168, ADDED_10_1_0);	-- Obsidian Combatant's Medallion
			FirstCraft(74833, 403167, ADDED_10_1_0);	-- Obsidian Combatant's Insignia of Alacrity
			FirstCraft(74834, 403166, ADDED_10_1_0);	-- Obsidian Combatant's Emblem
			FirstCraft(77446, 419041, ADDED_10_2_0);	-- Verdant Combatant's Emblem
			FirstCraft(77445, 419040, ADDED_10_2_0);	-- Verdant Combatant's Insignia of Alacrity
			FirstCraft(77444, 419039, ADDED_10_2_0);	-- Verdant Combatant's Medallion
			-- Weapons
			FirstCraft(71596, 383539);	-- Core Explorer's Compendium
			FirstCraft(71595, 383540);	-- Crackling Codex of the Isles
			FirstCraft(71515, 383541);	-- Illuminating Pillar of the Isles
			FirstCraft(71514, 383542);	-- Kinetic Pillar of the Isles
			FirstCraft(71518, 383543);	-- Overseer's Writhebark Stave
			FirstCraft(71517, 383544);	-- Pioneer's Writhebark Stave
			FirstCraft(71516, 383545);	-- Weathered Explorer's Stave
			-- Profession Equipment
			FirstCraft(71585, 383550);	-- Alchemist's Brilliant Mixing Rod
			FirstCraft(71584, 383549);	-- Alchemist's Sturdy Mixing Rod
			FirstCraft(71586, 383551);	-- Chef's Smooth Rolling Pin
			FirstCraft(71587, 383552);	-- Chef's Splendid Rolling Pin
			FirstCraft(71588, 383547);	-- Scribe's Fastened Quill
			FirstCraft(71589, 383548);	-- Scribe's Resplendent Quill
			-- Scrolls
			FirstCraft(71546, 383567);	-- Illusion Parchment: Aqua Torrent
			FirstCraft(71547, 383570);	-- Illusion Parchment: Arcane Burst
			FirstCraft(71548, 383571);	-- Illusion Parchment: Chilling Wind
			FirstCraft(71549, 384869);	-- Illusion Parchment: Love Charm
			FirstCraft(71550, 383565);	-- Illusion Parchment: Magma Missile
			FirstCraft(71551, 383573);	-- Illusion Parchment: Shadow Orb
			FirstCraft(71552, 383572);	-- Illusion Parchment: Spell Shield
			FirstCraft(71553, 383569);	-- Illusion Parchment: Whirling Breeze
			FirstCraft(71529, 385197);	-- Scroll of Sales
			-- Mysteries
			FirstCraft(71554, 383563);	-- Blazing Fortune
			FirstCraft(71554, 384948);	-- Flourishing Fortune
			FirstCraft(71554, 384949);	-- Serene Fortune
			FirstCraft(71521, 383512);	-- Bundle O' Cards: Dragon Isles
			-- Contracts
			FirstCraft(71579, 383592);	-- Contract: Artisan's Consortium
			FirstCraft(71580, 383593);	-- Contract: Dragonscale Expedition
			FirstCraft(78321, 425263, ADDED_10_2_0);	-- Contract: Dream Wardens
			FirstCraft(71581, 383588);	-- Contract: Iskaara Tuskarr
			FirstCraft(75586, 408278, ADDED_10_1_0);	-- Contract: Loamm Niffen
			FirstCraft(71578, 383591);	-- Contract: Maruuk Centaur
			FirstCraft(71582, 383590);	-- Contract: Valdrakken Accord
			-- Profession Specialization
			FirstCraft(71519, 383522);	-- Draconic Treatise on Alchemy
			FirstCraft(71520, 383517);	-- Draconic Treatise on Blacksmithing
			FirstCraft(71522, 383523);	-- Draconic Treatise on Enchanting
			FirstCraft(71523, 383844);	-- Draconic Treatise on Engineering
			FirstCraft(71524, 383515);	-- Draconic Treatise on Herbalism
			FirstCraft(71525, 383759);	-- Draconic Treatise on Inscription
			FirstCraft(71526, 383524);	-- Draconic Treatise on Jewelcrafting
			FirstCraft(71527, 383519);	-- Draconic Treatise on Leatherworking
			FirstCraft(71528, 383516);	-- Draconic Treatise on Mining	-- actually same ID as Skinning
			FirstCraft(71528, 392944);	-- Draconic Treatise on Skinning	-- actually same ID as Mining
			FirstCraft(71530, 383520);	-- Draconic Treatise on Tailoring
			-- Dragonriding - Renewed Proto-Drake
			FirstCraft(71539, 383581);	-- Renewed Proto Drake: Bovine Horns	-- why no hyphen, Blizz, why
			FirstCraft(71538, 383580);	-- Renewed Proto-Drake: Predator Pattern
			FirstCraft(71537, 383586);	-- Renewed Proto-Drake: Silver and Blue Armor
			FirstCraft(71540, 383582);	-- Renewed Proto-Drake: Spined Crest
			FirstCraft(71541, 383587);	-- Renewed Proto-Drake: Steel and Yellow Armor
			-- Dragonriding - Windborne Velocidrake
			FirstCraft(71542, 383583);	-- Windborne Velocidrake: Black Fur
			FirstCraft(72013, 391832);	-- Windborne Velocidrake: Silver and Blue Armor
			FirstCraft(71543, 383584);	-- Windborne Velocidrake: Spined Head
			FirstCraft(72016, 391848);	-- Windborne Velocidrake: Steel and Orange Armor
			FirstCraft(71544, 383585);	-- Windborne Velocidrake: Windswept Pattern
			-- Dragonriding - Highland Drake
			FirstCraft(71534, 383577);	-- Highland Drake: Black Hair
			FirstCraft(72014, 391834);	-- Highland Drake: Silver and Blue Armor
			FirstCraft(71535, 383578);	-- Highland Drake: Spined Crest
			FirstCraft(71536, 383579);	-- Highland Drake: Spined Neck
			FirstCraft(72017, 391845);	-- Highland Drake: Steel and Yellow Armor
			-- Dragonriding - Cliffside Wylderdrake
			FirstCraft(71531, 383574);	-- Cliffside Wylderdrake: Conical Head
			FirstCraft(71532, 383575);	-- Cliffside Wylderdrake: Red Hair
			FirstCraft(72015, 391836);	-- Cliffside Wylderdrake: Silver and Blue Armor
			FirstCraft(72018, 391846);	-- Cliffside Wylderdrake: Steel and Yellow Armor
			FirstCraft(71533, 383576);	-- Cliffside Wylderdrake: Triple Head Horns
			-- Dragonriding -- Winding Slitherdrake
			FirstCraft(75577, 408218, ADDED_10_1_0);	-- Winding Slitherdrake: Blue and Silver Armor
			FirstCraft(75579, 408222, ADDED_10_1_0);	-- Winding Slitherdrake: Curved Chin Horn
			FirstCraft(78424, 425958, ADDED_10_2_0);	-- Winding Slitherdrake: Hairy Chin
			FirstCraft(75581, 408223, ADDED_10_1_0);	-- Winding Slitherdrake: Small Finned Throat
			FirstCraft(75580, 408221, ADDED_10_1_0);	-- Winding Slitherdrake: White Hair
			FirstCraft(75578, 408220, ADDED_10_1_0);	-- Winding Slitherdrake: Yellow and Silver Armor
			-- Dragonriding -- Grotto Netherwing Drake
			FirstCraft(78425, 425961, ADDED_10_2_0);	-- Grotto Netherwing Drake: Chin Tendrils
			FirstCraft(78426, 425959, ADDED_10_2_0);	-- Grotto Netherwing Drake: Spiked Jaw
			-- Artisan Curios
			FirstCraft(74481, 400811, ADDED_10_0_7);	-- Arcane Dispelling Rune
			-- Glyphs
			FirstCraft(75582, 408277, ADDED_10_1_0);	-- Glyph of the Chosen Glaive
			FirstCraft(75583, 408273, ADDED_10_1_0);	-- Glyph of the Heaved Armament
			FirstCraft(78896, 429149, ADDED_10_2_0);	-- Glyph of the Lunar Chameleon
			FirstCraft(76602, 416137, ADDED_10_1_5);	-- Glyph of the Shath'Yar
			FirstCraft(78708, 427956, ADDED_10_2_0);	-- Mark of the Auric Dreamstag
			-- Legendary
			FirstCraft(78010, 422337, ADDED_10_2_0);	-- Lydiara's Binding Rune
		})),
		i(194829, {	-- Fated Fortune Card
			i(198127),	-- Recipe: Fated Fortune Cookie (RECIPE!)
			i(199114),	-- Fated Fortune Card
			i(199116),	-- Fated Fortune Card
			i(199117),	-- Fated Fortune Card
			i(199118),	-- Fated Fortune Card
			i(199119),	-- Fated Fortune Card
			i(199120),	-- Fated Fortune Card
			i(199121),	-- Fated Fortune Card
			i(199123),	-- Fated Fortune Card
			i(199124),	-- Fated Fortune Card
			i(199125),	-- Fated Fortune Card
			i(199126),	-- Fated Fortune Card
			i(199127),	-- Fated Fortune Card
			i(199129),	-- Fated Fortune Card
			i(199130),	-- Fated Fortune Card
			i(199131),	-- Fated Fortune Card
			i(199132),	-- Fated Fortune Card
			i(199133),	-- Fated Fortune Card
			i(199134),	-- Fated Fortune Card
			i(199135),	-- Fated Fortune Card
			i(199136),	-- Fated Fortune Card
			i(199137),	-- Fated Fortune Card
			i(199138),	-- Fated Fortune Card
			i(199139),	-- Fated Fortune Card
			i(199140),	-- Fated Fortune Card
			i(199141),	-- Fated Fortune Card
			i(199142),	-- Fated Fortune Card
			i(199143),	-- Fated Fortune Card
			i(199144),	-- Fated Fortune Card
			i(199145),	-- Fated Fortune Card
			i(199146),	-- Fated Fortune Card
			i(199147),	-- Fated Fortune Card
			i(199148),	-- Fated Fortune Card
			i(199149),	-- Fated Fortune Card
			i(199150),	-- Fated Fortune Card
			i(199151),	-- Fated Fortune Card
			i(199152),	-- Fated Fortune Card
			i(199153),	-- Fated Fortune Card
			i(199154),	-- Fated Fortune Card
			i(199155),	-- Fated Fortune Card
			i(199156),	-- Fated Fortune Card
			i(199157),	-- Fated Fortune Card
			i(199158),	-- Fated Fortune Card
			i(199159),	-- Fated Fortune Card
			i(199160),	-- Fated Fortune Card
			i(199161),	-- Fated Fortune Card
			i(199162),	-- Fated Fortune Card
			i(199163),	-- Fated Fortune Card
			i(199164),	-- Fated Fortune Card
			i(199165),	-- Fated Fortune Card
			i(199166),	-- Fated Fortune Card
			i(199167),	-- Fated Fortune Card
			i(199168),	-- Fated Fortune Card
			i(199169),	-- Fated Fortune Card
			i(199170),	-- Fated Fortune Card
		}),
		filter(GLYPHS, {
			i(203762, {["timeline"] = {ADDED_10_1_0}}),	-- Glyph of the Chosen Glaive
			i(203763, {["timeline"] = {ADDED_10_1_0}}),	-- Glyph of the Heaved Armament
			i(211400, {["timeline"] = {ADDED_10_2_0}}),	-- Glyph of the Lunar Chameleon
			i(207088, {["timeline"] = {ADDED_10_1_5}}),	-- Glyph of the Shath'Yar
			i(210735, {["timeline"] = {ADDED_10_2_0}}),	-- Mark of the Auric Dreamstag (CI!)
		}),
		filter(MISC, {
			i(203412, {["timeline"] = {ADDED_10_0_7}}),	-- Arcane Dispelling Rune
			i(194871),	-- Azurescale Sigil+
			i(199051),	-- Azurescale Sigil++
			i(199052),	-- Azurescale Sigil+++
			i(194870),	-- Bronzescale Sigil+
			i(199053),	-- Bronzescale Sigil++
			i(199054),	-- Bronzescale Sigil+++
			i(194821),	-- Buzzing Rune+
			i(194822),	-- Buzzing Rune++
			i(194823),	-- Buzzing Rune+++
			i(194859),	-- Chilled Rune+
			i(194767),	-- Chilled Rune++
			i(194768),	-- Chilled Rune+++
			i(194824),	-- Chirping Rune+
			i(194825),	-- Chirping Rune++
			i(194826),	-- Chirping Rune+++
			i(198503),	-- Contract: Artisan's Consortium+
			i(198504),	-- Contract: Artisan's Consortium++
			i(198505),	-- Contract: Artisan's Consortium+++
			i(198506),	-- Contract: Dragonscale Expedition+
			i(198507),	-- Contract: Dragonscale Expedition++
			i(198508),	-- Contract: Dragonscale Expedition+++
			i(210244, {["timeline"] = {ADDED_10_2_0}}),	-- Contract: Dream Wardens+
			i(210245, {["timeline"] = {ADDED_10_2_0}}),	-- Contract: Dream Wardens++
			i(210246, {["timeline"] = {ADDED_10_2_0}}),	-- Contract: Dream Wardens+++
			i(198494),	-- Contract: Iskaara Tuskarr+
			i(198495),	-- Contract: Iskaara Tuskarr++
			i(198496),	-- Contract: Iskaara Tuskarr+++
			i(204993, {["timeline"] = {ADDED_10_1_0}}),	-- Contract: Loamm Niffen+
			i(204991, {["timeline"] = {ADDED_10_1_0}}),	-- Contract: Loamm Niffen++
			i(204992, {["timeline"] = {ADDED_10_1_0}}),	-- Contract: Loamm Niffen+++
			i(198500),	-- Contract: Maruuk Centaur+
			i(198501),	-- Contract: Maruuk Centaur++
			i(198502),	-- Contract: Maruuk Centaur+++
			i(198497),	-- Contract: Valdrakken Accord+
			i(198498),	-- Contract: Valdrakken Accord++
			i(198499),	-- Contract: Valdrakken Accord+++
			i(194570),	-- Draconic Missive of the Aurora+
			i(194571),	-- Draconic Missive of the Aurora++
			i(194569),	-- Draconic Missive of the Aurora+++
			i(200571),	-- Draconic Missive of Crafting Speed+
			i(200572),	-- Draconic Missive of Crafting Speed++
			i(200573),	-- Draconic Missive of Crafting Speed+++
			i(200580),	-- Draconic Missive of Deftness+
			i(200581),	-- Draconic Missive of Deftness++
			i(200582),	-- Draconic Missive of Deftness+++
			i(194567),	-- Draconic Missive of the Feverflare+
			i(194568),	-- Draconic Missive of the Feverflare++
			i(194566),	-- Draconic Missive of the Feverflare+++
			i(200574),	-- Draconic Missive of Finesse+
			i(200575),	-- Draconic Missive of Finesse++
			i(200576),	-- Draconic Missive of Finesse+++
			i(192553),	-- Draconic Missive of the Fireflash+
			i(192554),	-- Draconic Missive of the Fireflash++
			i(192552),	-- Draconic Missive of the Fireflash+++
			i(194576),	-- Draconic Missive of the Harmonious+
			i(194577),	-- Draconic Missive of the Harmonious++
			i(194575),	-- Draconic Missive of the Harmonious+++
			i(198534),	-- Draconic Missive of Ingenuity+
			i(198535),	-- Draconic Missive of Ingenuity++
			i(198536),	-- Draconic Missive of Ingenuity+++
			i(200568),	-- Draconic Missive of Multicraft+
			i(200569),	-- Draconic Missive of Multicraft++
			i(200570),	-- Draconic Missive of Multicraft+++
			i(194579),	-- Draconic Missive of the Peerless+
			i(194580),	-- Draconic Missive of the Peerless++
			i(194578),	-- Draconic Missive of the Peerless+++
			i(200577),	-- Draconic Missive of Perception+
			i(200578),	-- Draconic Missive of Perception++
			i(200579),	-- Draconic Missive of Perception+++
			i(194573),	-- Draconic Missive of the Quickblade+
			i(194574),	-- Draconic Missive of the Quickblade++
			i(194572),	-- Draconic Missive of the Quickblade+++
			i(200565),	-- Draconic Missive of Resourcefulness+
			i(200566),	-- Draconic Missive of Resourcefulness++
			i(200567),	-- Draconic Missive of Resourcefulness+++
			i(194697),	-- Draconic Treatise on Alchemy
			i(198454),	-- Draconic Treatise on Blacksmithing
			i(194702),	-- Draconic Treatise on Enchanting
			i(198510),	-- Draconic Treatise on Engineering
			i(194704),	-- Draconic Treatise on Herbalism
			i(194699),	-- Draconic Treatise on Inscription
			i(194703),	-- Draconic Treatise on Jewelcrafting
			i(194700),	-- Draconic Treatise on Leatherworking
			i(194708),	-- Draconic Treatise on Mining
			i(201023),	-- Draconic Treatise on Skinning
			i(194698),	-- Draconic Treatise on Tailoring
			i(194868),	-- Emberscale Sigil+
			i(199055),	-- Emberscale Sigil++
			i(199056),	-- Emberscale Sigil+++
			i(204971, {["timeline"] = {ADDED_10_1_0}}),	-- Hissing Rune+
			i(204972, {["timeline"] = {ADDED_10_1_0}}),	-- Hissing Rune++
			i(204973, {["timeline"] = {ADDED_10_1_0}}),	-- Hissing Rune+++
			i(194817),	-- Howling Rune+
			i(194819),	-- Howling Rune++
			i(194820),	-- Howling Rune+++
			i(194733),	-- Illusion Parchment: Aqua Torrent
			i(194735),	-- Illusion Parchment: Arcane Burst
			i(194736),	-- Illusion Parchment: Chilling Wind
			i(194732),	-- Illusion Parchment: Love Charm
			i(194731),	-- Illusion Parchment: Magma Missile
			i(194738),	-- Illusion Parchment: Shadow Orb
			i(194737),	-- Illusion Parchment: Spell Shield
			i(194734),	-- Illusion Parchment: Whirling Breeze
			i(198431),	-- Jetscale Sigil+
			i(199057),	-- Jetscale Sigil++
			i(199058),	-- Jetscale Sigil+++
			i(194869),	-- Sagescale Sigil+
			i(199059),	-- Sagescale Sigil++
			i(199060),	-- Sagescale Sigil+++
			i(197718),	-- Scroll of Sales+
			i(198616),	-- Scroll of Sales++
			i(198617),	-- Scroll of Sales+++
			i(204858, {["timeline"] = {ADDED_10_1_0}}),	-- Vantus Rune: Aberrus, the Shadowed Crucible+
			i(204859, {["timeline"] = {ADDED_10_1_0}}),	-- Vantus Rune: Aberrus, the Shadowed Crucible++
			i(204860, {["timeline"] = {ADDED_10_1_0}}),	-- Vantus Rune: Aberrus, the Shadowed Crucible+++
			i(210247, {["timeline"] = {ADDED_10_2_0}}),	-- Vantus Rune: Amirdrassil, the Dream's Hope+
			i(210248, {["timeline"] = {ADDED_10_2_0}}),	-- Vantus Rune: Amirdrassil, the Dream's Hope++
			i(210249, {["timeline"] = {ADDED_10_2_0}}),	-- Vantus Rune: Amirdrassil, the Dream's Hope+++
			i(198491),	-- Vantus Rune: Vault of the Incarnates+
			i(198492),	-- Vantus Rune: Vault of the Incarnates++
			i(198493),	-- Vantus Rune: Vault of the Incarnates+++
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(191234, {["requireSkill"] = ALCHEMY}),	-- Alchemist's Sturdy Mixing Rod
			i(191231, {["requireSkill"] = ALCHEMY}),	-- Alchemist's Brilliant Mixing Rod
			i(191232, {["requireSkill"] = COOKING}),	-- Chef's Splendid Rolling Pin
			i(191233, {["requireSkill"] = COOKING}),	-- Chef's Smooth Rolling Pin
			i(194874, {["requireSkill"] = INSCRIPTION}),	-- Scribe's Fastened Quill
			i(194875, {["requireSkill"] = INSCRIPTION}),	-- Scribe's Resplendent Quill
		}),
		filter(REAGENTS, {
			i(194751),	-- Blazing Ink+
			i(194752),	-- Blazing Ink++
			i(194846),	-- Blazing Ink+++
			i(194760),	-- Burnished Ink+
			i(194761),	-- Burnished Ink++
			i(194855),	-- Burnished Ink+++
			i(194754),	-- Cosmic Ink+
			i(194755),	-- Cosmic Ink++
			i(194756),	-- Cosmic Ink+++
			i(194850),	-- Flourishing Ink+
			i(194758),	-- Flourishing Ink++
			i(194852),	-- Flourishing Ink+++
			i(194862),	-- Runed Writhebark+
			i(194863),	-- Runed Writhebark++
			i(194864),	-- Runed Writhebark+++
			i(194856),	-- Serene Ink+
			i(194857),	-- Serene Ink++
			i(194858),	-- Serene Ink+++
		}),
		filter(TRINKET_F, {
			i(203377, {["timeline"] = {ADDED_10_0_5}}),	-- Crimson Combatant's Emblem
			i(203376, {["timeline"] = {ADDED_10_0_5}}),	-- Crimson Combatant's Insignia of Alacrity
			i(203375, {["timeline"] = {ADDED_10_0_5}}),	-- Crimson Combatant's Medallion
			i(211608, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Emblem
			i(211607, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Insignia of Alacrity
			i(211606, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Medallion
			i(204166, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Emblem
			i(204165, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Insignia of Alacrity
			i(204164, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Medallion
			i(208309, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Emblem
			i(208308, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Insignia of Alacrity
			i(208307, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Medallion
			i(198478),	-- Darkmoon Deck Box: Dance
			i(194872),	-- Darkmoon Deck Box: Inferno
			i(198477),	-- Darkmoon Deck Box: Rime
			i(198481),	-- Darkmoon Deck Box: Watcher
			i(198088),	-- Darkmoon Deck: Dance
			i(198086),	-- Darkmoon Deck: Inferno
			i(198087),	-- Darkmoon Deck: Rime
			i(198089),	-- Darkmoon Deck: Watcher
			i(194827),	-- Bundle O' Cards: Dragon Isles
			i(194785),	-- Ace of Fire
			i(194786),	-- Two of Fire
			i(194787),	-- Three of Fire
			i(194788),	-- Four of Fire
			i(194789),	-- Five of Fire
			i(194790),	-- Six of Fire
			i(194791),	-- Seven of Frost
			i(194792),	-- Eight of Fire
			i(194793),	-- Ace of Frost
			i(194794),	-- Two of Frost
			i(194795),	-- Three of Frost
			i(194796),	-- Four of Frost
			i(194797),	-- Five of Frost
			i(194798),	-- Six of Frost
			i(194799),	-- Seven of Fire
			i(194800),	-- Eight of Frost
			i(194801),	-- Ace of Air
			i(194802),	-- Two of Air
			i(194803),	-- Three of Air
			i(194804),	-- Four of Air
			i(194805),	-- Five of Air
			i(194806),	-- Six of Air
			i(194807),	-- Seven of Air
			i(194808),	-- Eight of Air
			i(194809),	-- Ace of Earth
			i(194810),	-- Two of Earth
			i(194811),	-- Three of Earth
			i(194812),	-- Four of Earth
			i(194813),	-- Five of Earth
			i(194814),	-- Six of Earth
			i(194815),	-- Seven of Earth
			i(194816),	-- Eight of Earth
		}),
		n(WEAPONS, {
			i(194877),	-- Core Explorer's Compendium
			i(194879),	-- Crackling Codex of the Isles
			i(194898),	-- Illuminating Pillar of the Isles
			i(194897),	-- Kinetic Pillar of the Isles
			i(194893),	-- Overseer's Writhebark Stave
			i(194892),	-- Pioneer's Writhebark Stave
			i(194894),	-- Weathered Explorer's Stave
		}),
	}),
	prof(JEWELCRAFTING, {
		spell(374627, {	-- Dragon Isles Prospecting
			i(192852),	-- Alexstraszite+
			i(192853),	-- Alexstraszite++
			i(192855),	-- Alexstraszite+++
			i(192880),	-- Crumbled Stone
			i(192849),	-- Eternity Amber+
			i(192850),	-- Eternity Amber++
			i(192851),	-- Eternity Amber+++
			i(192872),	-- Fractured Glass
			i(192869),	-- Illimited Diamond+
			i(192870),	-- Illimited Diamond++
			i(192871),	-- Illimited Diamond+++
			i(192856),	-- Malygite+
			i(192857),	-- Malygite++
			i(192858),	-- Malygite+++
			i(192840),	-- Mystic Sapphire+
			i(192841),	-- Mystic Sapphire++
			i(192842),	-- Mystic Sapphire+++
			i(192862),	-- Neltharite+
			i(192863),	-- Neltharite++
			i(192865),	-- Neltharite+++
			i(192866),	-- Nozdorite+
			i(192867),	-- Nozdorite++
			i(192868),	-- Nozdorite+++
			i(194545),	-- Prismatic Ore
			i(192837),	-- Queen's Ruby+
			i(192838),	-- Queen's Ruby++
			i(192839),	-- Queen's Ruby+++
			i(192846),	-- Sundered Onyx+
			i(192847),	-- Sundered Onyx++
			i(192848),	-- Sundered Onyx+++
			i(192843),	-- Vibrant Emerald+
			i(192844),	-- Vibrant Emerald++
			i(192845),	-- Vibrant Emerald+++
			i(192859),	-- Ysemerald+
			i(192860),	-- Ysemerald++
			i(192861),	-- Ysemerald+++
		}),
		n(ARMOR, {
			i(194082),	-- Band of New Beginnings
			i(192998),	-- Crimson Combatant's Jeweled Amulet
			i(192997),	-- Crimson Combatant's Jeweled Signet
			i(193002),	-- Choker of Shielding
			i(211536, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Jeweled Signet
			i(211537, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Jeweled Amulet
			i(193001),	-- Elemental Lariat
			i(193005),	-- Idol of the Dreamer
			i(193006),	-- Idol of the Earth Warder
			i(193003),	-- Idol of the Lifebinder
			i(193004),	-- Idol of the Spell-Weaver
			i(204095, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Jeweled Amulet
			i(204094, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Jeweled Signet
			i(192996),	-- Pendant of Impending Perils
			i(193000),	-- Ring-Bound Hourglass
			i(192999),	-- Signet of Titanic Insight
			i(201759),	-- Torc of Passed Time
			i(208238, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Jeweled Amulet
			i(208237, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Jeweled Signet
		}),
		filter(BATTLE_PETS, {
			i(193885),	-- Jeweled Amber Whelpling (PET!)
			i(193888),	-- Jeweled Emerald Whelpling (PET!)
			i(193889),	-- Jeweled Onyx Whelpling (PET!)
			i(193887),	-- Jeweled Ruby Whelpling (PET!)
			i(193886),	-- Jeweled Sapphire Whelpling (PET!)
		}),
		filter(COSMETIC, {
			i(193371),	-- "Rhinestone" Sunglasses
			i(194748),	-- Split-Lens Specs
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = JEWELCRAFTING,
		},{
			-- Reagents
			FirstCraft(71674, 374553);	-- Elemental Harmony
			FirstCraft(71647, 374483);	-- Blotting Sand
			FirstCraft(71648, 374484);	-- Pounce
			FirstCraft(71862, 392697);	-- Empty Soul Cage
			FirstCraft(71673, 374477);	-- Draconic Vial
			FirstCraft(71675, 374478);	-- Frameless Lens
			FirstCraft(71676, 374480);	-- Glossy Stone
			FirstCraft(71672, 374475);	-- Shimmering Clasp
			FirstCraft(77776, 420740, ADDED_10_2_0),	-- Dreamtender's Charm
			-- Rudimentary Gems
			FirstCraft(71625, 374437);	-- Crafty Queen's Ruby
			FirstCraft(71623, 374439);	-- Energized Vibrant Emerald
			FirstCraft(71624, 374440);	-- Sensei's Sundered Onyx
			FirstCraft(71622, 374441);	-- Solid Eternity Amber
			FirstCraft(71626, 374438);	-- Zen Mystic Sapphire
			-- Air Gems
			FirstCraft(71639, 374442);	-- Crafty Alexstraszite
			FirstCraft(71643, 374447);	-- Energized Malygite
			FirstCraft(71627, 374461);	-- Forceful Nozdorite
			FirstCraft(71635, 374457);	-- Keen Neltharite
			FirstCraft(71631, 374455);	-- Quick Ysemerald
			-- Earth Gems
			FirstCraft(71636, 374459);	-- Fractured Neltharite
			FirstCraft(71632, 374453);	-- Keen Ysemerald
			FirstCraft(71628, 374462);	-- Puissant Nozdorite
			FirstCraft(71640, 374443);	-- Sensei's Alexstraszite
			FirstCraft(71644, 374448);	-- Zen Malygite
			-- Fire Gems
			FirstCraft(71633, 374450);	-- Crafty Ysemerald
			FirstCraft(71641, 374445);	-- Deadly Alexstraszite
			FirstCraft(71629, 374460);	-- Jagged Nozdorite
			FirstCraft(71645, 374446);	-- Radiant Malygite
			FirstCraft(71637, 374456);	-- Sensei's Neltharite
			-- Frost Gems
			FirstCraft(71634, 374454);	-- Energized Ysemerald
			FirstCraft(71642, 374444);	-- Radiant Alexstraszite
			FirstCraft(71630, 374463);	-- Steady Nozdorite
			FirstCraft(71646, 374449);	-- Stormy Malygite
			FirstCraft(71638, 374458);	-- Zen Neltharite
			-- Primalist Gems
			FirstCraft(71617, 374467);	-- Fierce Illimited Diamond
			FirstCraft(71619, 374465);	-- Inscribed Illimited Diamond
			FirstCraft(71620, 374470);	-- Resplendent Illimited Diamond
			FirstCraft(71618, 374468);	-- Skillful Illimited Diamond
			-- Misc
			FirstCraft(71657, 374472);	-- Tiered Medallion Setting
			FirstCraft(74881, 403483, ADDED_10_0_7);	-- Unstable Elementium
			-- Trinkets
			FirstCraft(71679, 374490);	-- Idol of the Dreamer
			FirstCraft(71680, 374493);	-- Idol of the Earth-Warder
			FirstCraft(71681, 374486);	-- Idol of the Life-Binder
			FirstCraft(71682, 374488);	-- Idol of the Spell-Weaver
			-- Jewelry
			FirstCraft(71604, 374501);	-- Choker of Shielding
			FirstCraft(71603, 374499);	-- Elemental Lariat
			FirstCraft(71606, 374498);	-- Ring-Bound Hourglass
			FirstCraft(71605, 374497);	-- Signet of Titanic Insight
			FirstCraft(72349, 394621);	-- Torc of Passed Time
			FirstCraft(71608, 374495);	-- Crimson Combatant's Jeweled Amulet
			FirstCraft(71609, 374496);	-- Crimson Combatant's Jeweled Signet
			FirstCraft(79031, 430055, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Jeweled Amulet
			FirstCraft(79032, 430056, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Jeweled Signet
			FirstCraft(74805, 403131, ADDED_10_1_0);	-- Obsidian Combatant's Jeweled Amulet
			FirstCraft(74806, 403132, ADDED_10_1_0);	-- Obsidian Combatant's Jeweled Signet
			FirstCraft(71607, 376233);	-- Band of New Beginnings
			FirstCraft(71602, 374494);	-- Pendant of Impending Perils
			FirstCraft(77447, 419004, ADDED_10_2_0);	-- Verdant Combatant's Jeweled Amulet
			FirstCraft(77448, 419005, ADDED_10_2_0);	-- Verdant Combatant's Jeweled Signet
			-- Statues & Carvings
			FirstCraft(71614, 374509);	-- Djaradin's "Pinata"
			FirstCraft(75607, 408398, ADDED_10_1_0);	-- Figurine of the Gathering Storm
			FirstCraft(71611, 377804);	-- Kalu'ak Figurine
			FirstCraft(71613, 374502);	-- Narcissist's Sculpture
			FirstCraft(71612, 374506);	-- Revitalizing Red Carving
			FirstCraft(71610, 374508);	-- Statue of Tyr's Herald
			FirstCraft(75606, 408397, ADDED_10_1_0);	-- Statuette of Foreseen Power
			-- Battle Pets
			FirstCraft(71667, 374516);	-- Jeweled Amber Whelpling
			FirstCraft(71668, 374511);	-- Jeweled Emerald Whelpling
			FirstCraft(71669, 374514);	-- Jeweled Onyx Whelpling
			FirstCraft(71670, 374510);	-- Jeweled Ruby Whelpling
			FirstCraft(71671, 374512);	-- Jeweled Sapphire Whelpling
			-- Novelties
			FirstCraft(71615, 375063);	-- "Rhinestone" Sunglasses
			FirstCraft(75597, 408231, ADDED_10_1_0);	-- B.B.F. Fist
			FirstCraft(71678, 374525);	-- Convergent Prism
			FirstCraft(71677, 374522);	-- Jeweled Offering
			FirstCraft(71650, 374518);	-- Projection Prism
			FirstCraft(71616, 377960);	-- Split-Lens Specs
			-- Profession Equipment
			FirstCraft(71666, 374542);	-- Alexstraszite Loupes
			FirstCraft(71661, 374530);	-- Bold-Print Bifocals
			FirstCraft(71659, 374537);	-- Chromatic Focus
			FirstCraft(71663, 374538);	-- Fine-Print Trifocals
			FirstCraft(71662, 374531);	-- Left-Handed Magnifying Glass
			FirstCraft(71664, 374540);	-- Magnificent Margin Magnifier
			FirstCraft(71660, 374543);	-- Resonant Focus
			FirstCraft(71665, 374532);	-- Sundered Onyx Loupe
			-- Extravagant Glasswares
			FirstCraft(71655, 374547);	-- Dreamer's Vision
			FirstCraft(71651, 374549);	-- Earthwarden's Prize
			FirstCraft(71654, 374551);	-- Jeweled Dragon's Heart
			FirstCraft(71652, 374548);	-- Keeper's Glory
			FirstCraft(71656, 374546);	-- Queen's Gift
			FirstCraft(71653, 374550);	-- Timewatcher's Patience
			-- Artisan Curios
			FirstCraft(74482, 400812, ADDED_10_0_7);	-- Crystal Tuning Fork
			-- Legendary
			FirstCraft(75434, 407161, ADDED_10_1_0);	-- Immaculate Coalescing Dracothyst
		})),
		filter(GEMS, {
			i(192917),	-- Crafty Alexstraszite+
			i(192918),	-- Crafty Alexstraszite++
			i(192919),	-- Crafty Alexstraszite+++
			i(192900),	-- Crafty Queen's Ruby+
			i(192901),	-- Crafty Queen's Ruby++
			i(192902),	-- Crafty Queen's Ruby+++
			i(192943),	-- Crafty Ysemerald+
			i(192944),	-- Crafty Ysemerald++
			i(192945),	-- Crafty Ysemerald+++
			i(192926),	-- Deadly Alexstraszite+
			i(192927),	-- Deadly Alexstraszite++
			i(192928),	-- Deadly Alexstraszite+++
			i(192933),	-- Energized Malygite+
			i(192934),	-- Energized Malygite++
			i(192935),	-- Energized Malygite+++
			i(192906),	-- Energized Vibrant Emerald+
			i(192907),	-- Energized Vibrant Emerald++
			i(192908),	-- Energized Vibrant Emerald+++
			i(192950),	-- Energized Ysemerald+
			i(192951),	-- Energized Ysemerald++
			i(192952),	-- Energized Ysemerald+++
			i(192983),	-- Fierce Illimited Diamond+
			i(192984),	-- Fierce Illimited Diamond++
			i(192985),	-- Fierce Illimited Diamond+++
			i(192971),	-- Forceful Nozdorite+
			i(192972),	-- Forceful Nozdorite++
			i(192973),	-- Forceful Nozdorite+++
			i(192965),	-- Fractured Neltharite+
			i(192966),	-- Fractured Neltharite++
			i(192967),	-- Fractured Neltharite+++
			i(192980),	-- Inscribed Illimited Diamond+
			i(192981),	-- Inscribed Illimited Diamond++
			i(192982),	-- Inscribed Illimited Diamond+++
			i(192968),	-- Jagged Nozdorite+
			i(192969),	-- Jagged Nozdorite++
			i(192970),	-- Jagged Nozdorite+++
			i(192959),	-- Keen Neltharite+
			i(192960),	-- Keen Neltharite++
			i(192961),	-- Keen Neltharite+++
			i(192946),	-- Keen Ysemerald+
			i(192947),	-- Keen Ysemerald++
			i(192948),	-- Keen Ysemerald+++
			i(192974),	-- Puissant Nozdorite+
			i(192975),	-- Puissant Nozdorite++
			i(192976),	-- Puissant Nozdorite+++
			i(192953),	-- Quick Ysemerald+
			i(192954),	-- Quick Ysemerald++
			i(192955),	-- Quick Ysemerald+++
			i(192929),	-- Radiant Malygite+
			i(192931),	-- Radiant Malygite++
			i(192932),	-- Radiant Malygite+++
			i(192923),	-- Radiant Alexstraszite+
			i(192924),	-- Radiant Alexstraszite++
			i(192925),	-- Radiant Alexstraszite+++
			i(192989),	-- Resplendent Illimited Diamond+
			i(192990),	-- Resplendent Illimited Diamond++
			i(192991),	-- Resplendent Illimited Diamond+++
			i(192920),	-- Sensei's Alexstraszite+
			i(192921),	-- Sensei's Alexstraszite++
			i(192922),	-- Sensei's Alexstraszite+++
			i(192956),	-- Sensei's Neltharite+
			i(192957),	-- Sensei's Neltharite++
			i(192958),	-- Sensei's Neltharite+++
			i(192910),	-- Sensei's Sundered Onyx+
			i(192911),	-- Sensei's Sundered Onyx++
			i(192912),	-- Sensei's Sundered Onyx+++
			i(192986),	-- Skillful Illimited Diamond+
			i(192987),	-- Skillful Illimited Diamond++
			i(192988),	-- Skillful Illimited Diamond+++
			i(192913),	-- Solid Eternity Amber+
			i(192914),	-- Solid Eternity Amber++
			i(192916),	-- Solid Eternity Amber+++
			i(192977),	-- Steady Nozdorite+
			i(192978),	-- Steady Nozdorite++
			i(192979),	-- Steady Nozdorite+++
			i(192940),	-- Stormy Malygite+
			i(192941),	-- Stormy Malygite++
			i(192942),	-- Stormy Malygite+++
			i(192936),	-- Zen Malygite+
			i(192937),	-- Zen Malygite++
			i(192938),	-- Zen Malygite+++
			i(192903),	-- Zen Mystic Sapphire+
			i(192904),	-- Zen Mystic Sapphire++
			i(192905),	-- Zen Mystic Sapphire+++
			i(192962),	-- Zen Neltharite+
			i(192963),	-- Zen Neltharite++
			i(192964),	-- Zen Neltharite+++
		}),
		filter(MISC, {
			i(192894),	-- Blotting Sand+
			i(192895),	-- Blotting Sand++
			i(192896),	-- Blotting Sand+++
			i(203413, {["timeline"] = {ADDED_10_0_7}}),	-- Crystal Tuning Fork
			i(193019),	-- Djaradin's "Pinata"+
			i(193020),	-- Djaradin's "Pinata"++
			i(193021),	-- Djaradin's "Pinata"+++
			i(192889),	-- Dreamer's Vision+
			i(202049),	-- Dreamer's Vision++
			i(202055),	-- Dreamer's Vision+++
			i(208746, {["timeline"] = {ADDED_10_2_0}}),	-- Dreamtender's Charm+
			i(208747, {["timeline"] = {ADDED_10_2_0}}),	-- Dreamtender's Charm++
			i(208748, {["timeline"] = {ADDED_10_2_0}}),	-- Dreamtender's Charm+++
			i(192891),	-- Earthwarden's Prize+
			i(202051),	-- Earthwarden's Prize++
			i(202057),	-- Earthwarden's Prize+++
			i(200938),	-- Empty Soul Cage
			i(205171, {["timeline"] = {ADDED_10_1_0}}),	-- Figurine of the Gathering Storm+
			i(205172, {["timeline"] = {ADDED_10_1_0}}),	-- Figurine of the Gathering Storm++
			i(205173, {["timeline"] = {ADDED_10_1_0}}),	-- Figurine of the Gathering Storm+++
			i(204854, {["timeline"] = {ADDED_10_1_0}}),	-- Immaculate Coalescing Dracothyst
			i(194723),	-- Kalu'ak Figurine+
			i(194724),	-- Kalu'ak Figurine++
			i(194725),	-- Kalu'ak Figurine+++
			i(192890),	-- Keeper's Glory+
			i(202050),	-- Keeper's Glory++
			i(202056),	-- Keeper's Glory+++
			i(193007),	-- Narcissist's Sculpture+
			i(193008),	-- Narcissist's Sculpture++
			i(193009),	-- Narcissist's Sculpture+++
			i(192897),	-- Pounce+
			i(192898),	-- Pounce++
			i(192899),	-- Pounce+++
			i(193029),	-- Projection Prism+
			i(193030),	-- Projection Prism++
			i(193031),	-- Projection Prism+++
			i(192888),	-- Queen's Gift+
			i(202048),	-- Queen's Gift++
			i(202054),	-- Queen's Gift+++
			i(193011),	-- Revitalizing Red Carving+
			i(193012),	-- Revitalizing Red Carving++
			i(193013),	-- Revitalizing Red Carving+++
			i(193015),	-- Statue of Tyr's Herald+
			i(193016),	-- Statue of Tyr's Herald++
			i(193017),	-- Statue of Tyr's Herald+++
			i(204909, {["timeline"] = {ADDED_10_1_0}}),	-- Statuette of Foreseen Power+
			i(205115, {["timeline"] = {ADDED_10_1_0}}),	-- Statuette of Foreseen Power++
			i(205170, {["timeline"] = {ADDED_10_1_0}}),	-- Statuette of Foreseen Power+++
			i(192992),	-- Tiered Medallion Setting+
			i(192993),	-- Tiered Medallion Setting++
			i(192994),	-- Tiered Medallion Setting+++
			i(192892),	-- Timewatcher's Patience+
			i(202052),	-- Timewatcher's Patience++
			i(202058),	-- Timewatcher's Patience+++
			i(204217, {["timeline"] = {ADDED_10_0_7}}),	-- Unstable Elementium
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(193041, {["requireSkill"] = JEWELCRAFTING}),	-- Alexstraszite Loupes
			i(193035, {["requireSkill"] = INSCRIPTION}),	-- Bold-Print Bifocals
			i(193038, {["requireSkill"] = ENCHANTING}),	-- Chromatic Focus
			i(193039, {["requireSkill"] = INSCRIPTION}),	-- Fine-Print Trifocals
			i(193036, {["requireSkill"] = INSCRIPTION}),	-- Left-Handed Magnifying Glass
			i(193040, {["requireSkill"] = INSCRIPTION}),	-- Magnificent Margin Magnifier
			i(193042, {["requireSkill"] = ENCHANTING}),	-- Resonant Focus
			i(193037, {["requireSkill"] = JEWELCRAFTING}),	-- Sundered Onyx Loupe
		}),
		filter(REAGENTS, {
			i(191474),	-- Draconic Vial+
			i(191475),	-- Draconic Vial++
			i(191476),	-- Draconic Vial+++
			i(192887),	-- Elemental Harmony+
			i(193378),	-- Elemental Harmony++
			i(193379),	-- Elemental Harmony+++
			i(192876),	-- Frameless Lens+
			i(192877),	-- Frameless Lens++
			i(192878),	-- Frameless Lens+++
			i(192883),	-- Glossy Stone+
			i(192884),	-- Glossy Stone++
			i(192885),	-- Glossy Stone+++
			i(192893),	-- Jeweled Dragon's Heart
			i(192834),	-- Shimmering Clasp+
			i(192835),	-- Shimmering Clasp++
			i(192836),	-- Shimmering Clasp+++
			i(193368),	-- Silken Gemdust+
			i(193369),	-- Silken Gemdust++
			i(193370),	-- Silken Gemdust+++
		}),
		filter(TOYS, {
			i(205045, {["timeline"] = {ADDED_10_1_0}}),	-- B.B.F. Fist (TOY!)
			i(193033),	-- Convergent Prism (TOY!)
			i(193032),	-- Jeweled Offering (TOY!)
		}),
	}),
	prof(LEATHERWORKING, {
		n(ARMOR, {
			filter(LEATHER, {
				i(193453),	-- Allied Heartwarming Fur Coat
				i(193434),	-- Crimson Combatant's Resilient Belt
				i(193430),	-- Crimson Combatant's Resilient Boots
				i(193431),	-- Crimson Combatant's Resilient Chestpiece
				i(193436),	-- Crimson Combatant's Resilient Gloves
				i(193432),	-- Crimson Combatant's Resilient Mask
				i(193433),	-- Crimson Combatant's Resilient Shoulderpads
				i(193435),	-- Crimson Combatant's Resilient Trousers
				i(193437),	-- Crimson Combatant's Resilient Wristwraps
				i(211542, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Resilient Belt
				i(211538, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Resilient Boots
				i(211539, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Resilient Chestpiece
				i(211544, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Resilient Gloves
				i(211540, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Resilient Mask
				i(211541, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Resilient Shoulderpads
				i(211543, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Resilient Trousers
				i(211545, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Resilient Wristwraps
				i(193494),	-- Flaring Cowl
				i(193455),	-- Infurious Footwraps of Indemnity
				i(193456),	-- Infurious Spirit's Hood
				i(193407),	-- Life-Bound Belt
				i(193419),	-- Life-Bound Bindings
				i(193398),	-- Life-Bound Boots
				i(193400),	-- Life-Bound Cap
				i(193399),	-- Life-Bound Chestpiece
				i(193418),	-- Life-Bound Gloves
				i(193406),	-- Life-Bound Shoulderpads
				i(193408),	-- Life-Bound Trousers
				i(204100, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Resilient Belt
				i(204096, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Resilient Boots
				i(204097, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Resilient Chestpiece
				i(204102, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Resilient Gloves
				i(204098, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Resilient Mask
				i(204099, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Resilient Shoulderpads
				i(204101, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Resilient Trousers
				i(204103, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Resilient Wristwraps
				i(193454),	-- Old Spirit's Wristwraps
				i(193386),	-- Pioneer's Leather Boots
				i(193388),	-- Pioneer's Leather Wristguards
				i(193390),	-- Pioneer's Leather Tunic
				i(201945),	-- Pioneer's Practiced Belt
				i(201941),	-- Pioneer's Practiced Cowl
				i(201943),	-- Pioneer's Practiced Gloves
				i(201944),	-- Pioneer's Practiced Leggings
				i(201942),	-- Pioneer's Practiced Shoulderpads
				i(193451),	-- Slimy Expulsion Boots
				i(193458),	-- Snowball Makers
				i(204706, {["timeline"] = {ADDED_10_1_0}}),	-- Spore Colony Shoulderguards
				i(193457),	-- String of Spiritual Knick-Knacks
				i(193452),	-- Toxic Thorn Footwraps
				i(208243, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Resilient Belt
				i(208239, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Resilient Boots
				i(208240, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Resilient Chestpiece
				i(208245, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Resilient Gloves
				i(208241, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Resilient Mask
				i(208242, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Resilient Shoulderpads
				i(208244, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Resilient Trousers
				i(208246, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Resilient Wristwraps
			}),
			filter(MAIL, {
				i(193466),	-- Acidic Hailstone Treads
				i(204704, {["timeline"] = {ADDED_10_1_0}}),	-- Adaptive Dracothyst Armguards
				i(193464),	-- Allied Legguards of Sansok Khan
				i(193459),	-- Ancestor's Dew Drippers
				i(193440),	-- Crimson Combatant's Adamant Chainmail
				i(193441),	-- Crimson Combatant's Adamant Cowl
				i(193446),	-- Crimson Combatant's Adamant Cuffs
				i(193442),	-- Crimson Combatant's Adamant Epaulets
				i(193445),	-- Crimson Combatant's Adamant Gauntlets
				i(193443),	-- Crimson Combatant's Adamant Girdle
				i(193444),	-- Crimson Combatant's Adamant Leggings
				i(193439),	-- Crimson Combatant's Adamant Treads
				i(211547, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Adamant Chainmail
				i(211548, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Adamant Cowl
				i(211553, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Adamant Cuffs
				i(211549, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Adamant Epaulets
				i(211552, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Adamant Gauntlets
				i(211550, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Adamant Girdle
				i(211551, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Adamant Leggings
				i(211546, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Adamant Treads
				i(193425),	-- Flame-Touched Chain
				i(193422),	-- Flame-Touched Chainmail
				i(193428),	-- Flame-Touched Cuffs
				i(193427),	-- Flame-Touched Handguards
				i(193423),	-- Flame-Touched Helmet
				i(193426),	-- Flame-Touched Legguards
				i(193424),	-- Flame-Touched Spaulders
				i(193421),	-- Flame-Touched Treads
				i(193461),	-- Infurious Boots of Reprieve
				i(193462),	-- Infurious Chainhelm Protector
				i(204105, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Adamant Chainmail
				i(204106, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Adamant Cowl
				i(204111, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Adamant Cuffs
				i(204107, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Adamant Epaulets
				i(204110, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Adamant Gauntlets
				i(204108, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Adamant Girdle
				i(204109, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Adamant Leggings
				i(204104, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Adamant Treads
				i(193465),	-- Scale Rein Grips
				i(193392),	-- Trailblazer's Scale Boots
				i(193393),	-- Trailblazer's Scale Bracers
				i(193394),	-- Trailblazer's Scale Vest
				i(201946),	-- Trailblazer's Toughened Coif
				i(201950),	-- Trailblazer's Toughened Chainbelt
				i(201948),	-- Trailblazer's Toughened Grips
				i(201949),	-- Trailblazer's Toughened Legguards
				i(201947),	-- Trailblazer's Toughened Spikes
				i(193460),	-- Venom-Steeped Stompers
				i(208248, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Adamant Chainmail
				i(208249, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Adamant Cowl
				i(208254, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Adamant Cuffs
				i(208250, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Adamant Epaulets
				i(208253, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Adamant Gauntlets
				i(208251, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Adamant Girdle
				i(208252, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Adamant Leggings
				i(208247, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Adamant Treads
				i(193463),	-- Wind Spirit's Lasso
			}),
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = LEATHERWORKING,
		},{
			-- Leather Armor
			FirstCraft(71712, 375115);	-- Life-Bound Belt
			FirstCraft(71713, 375116);	-- Life-Bound Bindings
			FirstCraft(71706, 375110);	-- Life-Bound Boots
			FirstCraft(71709, 375112);	-- Life-Bound Cap
			FirstCraft(71707, 375109);	-- Life-Bound Chestpiece
			FirstCraft(71708, 375111);	-- Life-Bound Gloves
			FirstCraft(71711, 375114);	-- Life-Bound Shoulderpads
			FirstCraft(71710, 375113);	-- Life-Bound Trousers
			FirstCraft(71704, 375103);	-- Pioneer's Leather Boots
			FirstCraft(71703, 375105);	-- Pioneer's Leather Tunic
			FirstCraft(72569, 375104);	-- Pioneer's Leather Wristguard
			FirstCraft(72495, 395863);	-- Pioneer's Practiced Belt
			FirstCraft(72505, 395864);	-- Pioneer's Practiced Cowl
			FirstCraft(72496, 395865);	-- Pioneer's Practiced Gloves
			FirstCraft(72497, 395867);	-- Pioneer's Practiced Leggings
			FirstCraft(72498, 395868);	-- Pioneer's Practiced Shoulderpads
			FirstCraft(75279, 406266, ADDED_10_1_0);	-- Spore Colony Shoulderguards
			-- Mail Armor
			FirstCraft(75282, 406267, ADDED_10_1_0);	-- Adaptive Dracothyst Armguards
			FirstCraft(71738, 375123);	-- Flame-Touched Chain
			FirstCraft(71733, 375117);	-- Flame-Touched Chainmail
			FirstCraft(71739, 375124);	-- Flame-Touched Cuffs
			FirstCraft(71734, 375119);	-- Flame-Touched Handguards
			FirstCraft(71735, 375120);	-- Flame-Touched Helmet
			FirstCraft(71736, 375121);	-- Flame-Touched Legguards
			FirstCraft(71737, 375122);	-- Flame-Touched Spaulders
			FirstCraft(71732, 375118);	-- Flame-Touched Treads
			FirstCraft(71730, 375106);	-- Trailblazer's Scale Boots
			FirstCraft(71731, 375107);	-- Trailblazer's Scale Bracers
			FirstCraft(71729, 375108);	-- Trailblazer's Scale Vest
			FirstCraft(71705, 395844);	-- Trailblazer's Toughened Chainbelt
			FirstCraft(72501, 395839);	-- Trailblazer's Toughened Coif
			FirstCraft(72500, 395845);	-- Trailblazer's Toughened Grips
			FirstCraft(72502, 395847);	-- Trailblazer's Toughened Legguards
			FirstCraft(72503, 395851);	-- Trailblazer's Toughened Spikes
			-- Profession Equipment
			FirstCraft(71683, 375188);	-- Alchemist's Hat
			FirstCraft(71767, 375182);	-- Durable Pack
			FirstCraft(71684, 375196);	-- Expert Alchemist's Hat
			FirstCraft(71770, 375191);	-- Expert Skinner's Cap
			FirstCraft(71745, 375195);	-- Flameproof Apron
			FirstCraft(71751, 375181);	-- Floral Basket
			FirstCraft(71753, 375184);	-- Jeweler's Cover
			FirstCraft(71752, 375189);	-- Lavish Floral Pack
			FirstCraft(71756, 375194);	-- Masterwork Smock
			FirstCraft(71749, 375185);	-- Protective Gloves
			FirstCraft(71768, 375190);	-- Reinforced Pack
			FirstCraft(71755, 375186);	-- Resilient Smock
			FirstCraft(71754, 375192);	-- Resplendent Cover
			FirstCraft(71750, 375193);	-- Shockproof Gloves
			FirstCraft(71769, 375183);	-- Skinner's Cap
			FirstCraft(71744, 375187);	-- Smithing Apron
			-- Weapons
			FirstCraft(71777, 375102);	-- Bonewrought Crossbow
			-- Elemental Patterns
			FirstCraft(71720, 375153);	-- Ancestor's Dew Drippers
			FirstCraft(71702, 375197);	-- Flaring Cowl
			FirstCraft(71691, 375145);	-- Old Spirit's Wristwraps
			FirstCraft(71718, 375154);	-- Scale Rein Grips
			FirstCraft(71693, 375146);	-- Snowball Makers
			FirstCraft(71690, 375147);	-- String of Spiritual Knick-Knacks
			FirstCraft(71719, 375152);	-- Wind Spirit's Lasso
			-- Bestial Patterns
			FirstCraft(71692, 375144);	-- Allied Heartwarming Fur Coat
			FirstCraft(71740, 375157);	-- Allied Legguards of Sansok Khan
			FirstCraft(71775, 375125);	-- Bow of the Dragon Hunters
			FirstCraft(71722, 375135);	-- Crimson Combatant's Adamant Chainmail
			FirstCraft(71724, 375134);	-- Crimson Combatant's Adamant Cowl
			FirstCraft(71728, 375140);	-- Crimson Combatant's Adamant Cuffs
			FirstCraft(71726, 375137);	-- Crimson Combatant's Adamant Epaulets
			FirstCraft(71723, 375138);	-- Crimson Combatant's Adamant Gauntlets
			FirstCraft(71727, 375141);	-- Crimson Combatant's Adamant Girdle
			FirstCraft(71725, 375136);	-- Crimson Combatant's Adamant Leggings
			FirstCraft(71721, 375139);	-- Crimson Combatant's Adamant Treads
			FirstCraft(71700, 375133);	-- Crimson Combatant's Resilient Belt
			FirstCraft(71694, 375131);	-- Crimson Combatant's Resilient Boots
			FirstCraft(71695, 375127);	-- Crimson Combatant's Resilient Chestpiece
			FirstCraft(71696, 375130);	-- Crimson Combatant's Resilient Gloves
			FirstCraft(71697, 375126);	-- Crimson Combatant's Resilient Mask
			FirstCraft(71699, 375129);	-- Crimson Combatant's Resilient Shoulderpads
			FirstCraft(71698, 375128);	-- Crimson Combatant's Resilient Trousers
			FirstCraft(71701, 375132);	-- Crimson Combatant's Resilient Wristwraps
			FirstCraft(79042, 430066, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Adamant Chainmail
			FirstCraft(79043, 430065, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Adamant Cowl
			FirstCraft(79048, 430071, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Adamant Cuffs
			FirstCraft(79044, 430068, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Adamant Epaulets
			FirstCraft(79047, 430069, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Adamant Gauntlets
			FirstCraft(79045, 430072, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Adamant Girdle
			FirstCraft(79046, 430067, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Adamant Leggings
			FirstCraft(79041, 430070, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Adamant Treads
			FirstCraft(79037, 430064, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Resilient Belt
			FirstCraft(79033, 430062, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Resilient Boots
			FirstCraft(79034, 430058, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Resilient Chestpiece
			FirstCraft(79039, 430061, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Resilient Gloves
			FirstCraft(79035, 430057, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Resilient Mask
			FirstCraft(79036, 430060, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Resilient Shoulderpads
			FirstCraft(79038, 430059, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Resilient Trousers
			FirstCraft(79040, 430063, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Resilient Wristwraps
			FirstCraft(71716, 375155);	-- Infurious Boots of Reprieve
			FirstCraft(71717, 375156);	-- Infurious Chainhelm Protector
			FirstCraft(71688, 375149);	-- Infurious Footwraps of Indemnity
			FirstCraft(71689, 375148);	-- Infurious Spirit's Hood
			FirstCraft(74816, 403142, ADDED_10_1_0);	-- Obsidian Combatant's Adamant Chainmail
			FirstCraft(74818, 403141, ADDED_10_1_0);	-- Obsidian Combatant's Adamant Cowl
			FirstCraft(74822, 403147, ADDED_10_1_0);	-- Obsidian Combatant's Adamant Cuffs
			FirstCraft(74820, 403144, ADDED_10_1_0);	-- Obsidian Combatant's Adamant Epaulets
			FirstCraft(74817, 403145, ADDED_10_1_0);	-- Obsidian Combatant's Adamant Gauntlets
			FirstCraft(74821, 403148, ADDED_10_1_0);	-- Obsidian Combatant's Adamant Girdle
			FirstCraft(74819, 403143, ADDED_10_1_0);	-- Obsidian Combatant's Adamant Leggings
			FirstCraft(74815, 403146, ADDED_10_1_0);	-- Obsidian Combatant's Adamant Treads
			FirstCraft(74813, 403140, ADDED_10_1_0);	-- Obsidian Combatant's Resilient Belt
			FirstCraft(74807, 403138, ADDED_10_1_0);	-- Obsidian Combatant's Resilient Boots
			FirstCraft(74808, 403134, ADDED_10_1_0);	-- Obsidian Combatant's Resilient Chestpiece
			FirstCraft(74809, 403137, ADDED_10_1_0);	-- Obsidian Combatant's Resilient Gloves
			FirstCraft(74810, 403133, ADDED_10_1_0);	-- Obsidian Combatant's Resilient Mask
			FirstCraft(74812, 403136, ADDED_10_1_0);	-- Obsidian Combatant's Resilient Shoulderpads
			FirstCraft(74811, 403135, ADDED_10_1_0);	-- Obsidian Combatant's Resilient Trousers
			FirstCraft(74814, 403139, ADDED_10_1_0);	-- Obsidian Combatant's Resilient Wristwraps
			FirstCraft(77458, 419015, ADDED_10_2_0);	-- Verdant Combatant's Adamant Chainmail
			FirstCraft(77460, 419014, ADDED_10_2_0);	-- Verdant Combatant's Adamant Cowl
			FirstCraft(77464, 419020, ADDED_10_2_0);	-- Verdant Combatant's Adamant Cuffs
			FirstCraft(77462, 419017, ADDED_10_2_0);	-- Verdant Combatant's Adamant Epaulets
			FirstCraft(77459, 419018, ADDED_10_2_0);	-- Verdant Combatant's Adamant Gauntlets
			FirstCraft(77463, 419021, ADDED_10_2_0);	-- Verdant Combatant's Adamant Girdle
			FirstCraft(77461, 419016, ADDED_10_2_0);	-- Verdant Combatant's Adamant Leggings
			FirstCraft(77457, 419019, ADDED_10_2_0);	-- Verdant Combatant's Adamant Treads
			FirstCraft(77455, 419013, ADDED_10_2_0);	-- Verdant Combatant's Resilient Belt
			FirstCraft(77449, 419011, ADDED_10_2_0);	-- Verdant Combatant's Resilient Boots
			FirstCraft(77450, 419007, ADDED_10_2_0);	-- Verdant Combatant's Resilient Chestpiece
			FirstCraft(77451, 419010, ADDED_10_2_0);	-- Verdant Combatant's Resilient Gloves
			FirstCraft(77452, 419006, ADDED_10_2_0);	-- Verdant Combatant's Resilient Mask
			FirstCraft(77454, 419009, ADDED_10_2_0);	-- Verdant Combatant's Resilient Shoulderpads
			FirstCraft(77453, 419008, ADDED_10_2_0);	-- Verdant Combatant's Resilient Trousers
			FirstCraft(77456, 419012, ADDED_10_2_0);	-- Verdant Combatant's Resilient Wristwraps
			-- Decayed Patter
			FirstCraft(71715, 375151);	-- Acidic Hailstone Treads
			FirstCraft(71686, 375142);	-- Slimy Expulsion Boots
			FirstCraft(71687, 375143);	-- Toxic Thorn Footwraps
			FirstCraft(71714, 375150);	-- Venom-Steeped Stompers
			FirstCraft(71685, 375199);	-- Witherrot Tome
			-- Reagents
			FirstCraft(71748, 381849);	-- Finished Prototype Explorer's Barding
			FirstCraft(71747, 381848);	-- Finished Prototype Regal Barding
			FirstCraft(71764, 375178);	-- Earthshine Scales
			FirstCraft(71765, 375179);	-- Frostbite Scales
			FirstCraft(71762, 375176);	-- Infurious Hide
			FirstCraft(71766, 375180);	-- Infurious Scales
			FirstCraft(71760, 375174);	-- Mireslush Hide
			FirstCraft(71759, 375173);	-- Stonecrust Hide
			-- Optional Reagents
			FirstCraft(71758, 375159);	-- Fang Adornments
			FirstCraft(75287, 406275, ADDED_10_1_0);	-- Shadowflame-Tempered Armor Patch
			FirstCraft(71757, 375160);	-- Toxified Armor Patch
			FirstCraft(77420, 418579, ADDED_10_2_0);	-- Verdant Conduit
			-- Armor Kits
			FirstCraft(71741, 375162);	-- Fierce Armor Kit
			FirstCraft(71742, 375161);	-- Frosted Armor Kit
			FirstCraft(75264, 406214, ADDED_10_1_0);	-- Lambent Armor Kit
			FirstCraft(71743, 375164);	-- Reinforced Armor Kit
			-- Drums
			FirstCraft(71746, 375168);	-- Feral Hide Drums
			-- Toys
			FirstCraft(71771, 381547);	-- Artisan's Sign
			FirstCraft(71772, 375171);	-- Gnoll Tent
			FirstCraft(71773, 375172);	-- Tuskarr Beanbag
			-- Artisan Curios
			FirstCraft(74483, 400814, ADDED_10_0_7);	-- Reinforced Pristine Leather
			-- Legendary
			FirstCraft(78009, 422330, ADDED_10_2_0);	-- Erden's Glowspore Grip
		})),
		filter(MISC, {
			i(193468),	-- Fang Adornments+
			i(193551),	-- Fang Adornments++
			i(193554),	-- Fang Adornments+++
			i(193470),	-- Feral Hide Drums
			i(193557),	-- Fierce Armor Kit+
			i(193561),	-- Fierce Armor Kit++
			i(193565),	-- Fierce Armor Kit+++
			i(193556),	-- Frosted Armor Kit+
			i(193560),	-- Frosted Armor Kit++
			i(193564),	-- Frosted Armor Kit+++
			i(204700, {["timeline"] = {ADDED_10_1_0}}),	-- Lambent Armor Kit+
			i(204701, {["timeline"] = {ADDED_10_1_0}}),	-- Lambent Armor Kit++
			i(204702, {["timeline"] = {ADDED_10_1_0}}),	-- Lambent Armor Kit+++
			i(193559),	-- Reinforced Armor Kit+
			i(193563),	-- Reinforced Armor Kit++
			i(193567),	-- Reinforced Armor Kit+++
			i(203414, {["timeline"] = {ADDED_10_0_7}}),	-- Reinforced Pristine Leather
			i(204708, {["timeline"] = {ADDED_10_1_0}}),	-- Shadowflame-Tempered Armor Patch+
			i(204709, {["timeline"] = {ADDED_10_1_0}}),	-- Shadowflame-Tempered Armor Patch++
			i(204710, {["timeline"] = {ADDED_10_1_0}}),	-- Shadowflame-Tempered Armor Patch+++
			i(193469),	-- Toxified Armor Patch+
			i(193552),	-- Toxified Armor Patch++
			i(193555),	-- Toxified Armor Patch+++
			i(208187, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Conduit+
			i(208188, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Conduit++
			i(208189, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Conduit+++
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(193487, {["requireSkill"] = ALCHEMY}),	-- Alchemist's Hat
			i(193493, {["requireSkill"] = ALCHEMY}),	-- Expert Alchemist's Hat
			i(193490, {["requireSkill"] = SKINNING}),	-- Expert Skinner's Cap
			i(193480, {["requireSkill"] = SKINNING}),	-- Durable Pack
			i(193613, {["requireSkill"] = BLACKSMITHING}),	-- Flameproof Apron
			i(193479, {["requireSkill"] = HERBALISM}),	-- Floral Basket
			i(193615, {["requireSkill"] = JEWELCRAFTING}),	-- Jeweler's Cover
			i(193488, {["requireSkill"] = HERBALISM}),	-- Lavish Floral Pack
			i(193492, {["requireSkill"] = LEATHERWORKING}),	-- Masterwork Smock
			i(193485, {["requireSkill"] = ENGINEERING}),	-- Protective Gloves
			i(193489, {["requireSkill"] = SKINNING}),	-- Reinforced Pack
			i(193616, {["requireSkill"] = JEWELCRAFTING}),	-- Resplendent Cover
			i(193486, {["requireSkill"] = LEATHERWORKING}),	-- Resilient Smock
			i(193491, {["requireSkill"] = ENGINEERING}),	-- Shockproof Gloves
			i(193482, {["requireSkill"] = SKINNING}),	-- Skinner's Cap
			i(193612, {["requireSkill"] = BLACKSMITHING}),	-- Smithing Apron
		}),
		filter(REAGENTS, {
			i(193242),	-- Earthshine Scales+
			i(193243),	-- Earthshine Scales++
			i(193244),	-- Earthshine Scales+++
			i(197735),	-- Finished Prototype Explorer's Barding
			i(197736),	-- Finished Prototype Regal Barding
			i(193245),	-- Frostbite Scales+
			i(193246),	-- Frostbite Scales++
			i(193247),	-- Frostbite Scales+++
			i(193236),	-- Infurious Hide+
			i(193237),	-- Infurious Hide++
			i(193238),	-- Infurious Hide+++
			i(193248),	-- Infurious Scales+
			i(193249),	-- Infurious Scales++
			i(193250),	-- Infurious Scales+++
			i(193229),	-- Mireslush Hide+
			i(193230),	-- Mireslush Hide++
			i(193231),	-- Mireslush Hide+++
			i(193226),	-- Stonecrust Hide+
			i(193227),	-- Stonecrust Hide++
			i(193228),	-- Stonecrust Hide+++
		}),
		filter(TOYS, {
			i(197719),	-- Artisan's Sign (TOY!)
			i(193476),	-- Gnoll Tent (TOY!)
			i(193478),	-- Tuskarr Bean Bag (TOY!)
		}),
		n(WEAPONS, {
			i(193449),	-- Bow of the Dragon Hunters
			i(193383),	-- Bonewrought Crossbow
			i(193496),	-- Witherrot Tome
		}),
	}),
	prof(MINING, {
		spell(2575, {	-- Mining
			i(203418, {["timeline"] = {ADDED_10_0_7}}),	-- Amplified Quaking Stone
			i(189143),	-- Draconium Ore+
			i(188658, {["_drop"] = {"requireSkill"}}),	-- Draconium Ore++
			i(190311, {["_drop"] = {"requireSkill"}}),	-- Draconium Ore+++
			i(202011),	-- Elementally Charged Stone
			i(194039),	-- Heated Ore Sample
			i(201301),	-- Iridescent Ore
			i(201300),	-- Iridescent Ore Fragments
			i(190312),	-- Khaz'gorite Ore+
			i(190313),	-- Khaz'gorite Ore++
			i(190314),	-- Khaz'gorite Ore+++
			i(197754),	-- Salt Deposit
			i(190395),	-- Serevite Ore+
			i(190396),	-- Serevite Ore++
			i(190394),	-- Serevite Ore+++
			i(194062),	-- Unyielding Stone Chunk
			-- Not Ore --
			--[[	No need to list Tradegoods w/ many other sources
			i(192852),	-- Alexstraszite+
			i(192853),	-- Alexstraszite++
			i(192855),	-- Alexstraszite+++
			i(192849),	-- Eternity Amber+
			i(192850),	-- Eternity Amber++
			i(192851),	-- Eternity Amber+++
			i(192869),	-- Illimited Diamond+
			i(192870),	-- Illimited Diamond++
			i(192871),	-- Illimited Diamond+++
			i(192856),	-- Malygite+
			i(192857),	-- Malygite++
			i(192858),	-- Malygite+++
			i(192840),	-- Mystic Sapphire+
			i(192841),	-- Mystic Sapphire++
			i(192842),	-- Mystic Sapphire+++
			i(192862),	-- Neltharite+
			i(192863),	-- Neltharite++
			i(192865),	-- Neltharite+++
			i(192866),	-- Nozdorite+
			i(192867),	-- Nozdorite++
			i(192868),	-- Nozdorite+++
			i(192837),	-- Queen's Ruby+
			i(192838),	-- Queen's Ruby++
			i(192839),	-- Queen's Ruby+++
			i(192846),	-- Sundered Onyx+
			i(192847),	-- Sundered Onyx++
			i(192848),	-- Sundered Onyx+++
			i(192843),	-- Vibrant Emerald+
			i(192844),	-- Vibrant Emerald++
			i(192845),	-- Vibrant Emerald+++
			i(192859),	-- Ysemerald+
			i(192860),	-- Ysemerald++
			i(192861),	-- Ysemerald+++
			--]]
		}),
		n(DISCOVERY, {
			r(384688),	-- Draconium Deposit
			r(389458, {["timeline"] = {ADDED_10_0_7}}),	-- Draconium Seam
			r(389413),	-- Hardened Draconium Deposit
			r(389463),	-- Hardened Serevite Deposit
			r(389420),	-- Infurious Draconium Deposit
			r(389464),	-- Infurious Serevite Deposit
			r(421247, {["timeline"] = {ADDED_10_2_0}}),	-- Living Draconium Deposit
			r(421244, {["timeline"] = {ADDED_10_2_0}}),	-- Living Serevite Deposit
			r(405121, {["timeline"] = {ADDED_10_1_0}}),	-- Metamorphic Draconium Deposit
			r(405120, {["timeline"] = {ADDED_10_1_0}}),	-- Metamorphic Serevite Deposit
			r(384690),	-- Molten Draconium Deposit
			r(389459),	-- Molten Serevite Deposit
			r(389701),	-- Overload Hardened Node
			r(389704),	-- Overload Infurious Node
			r(422809, {["timeline"] = {ADDED_10_2_0}}),	-- Overload Living Deposit
			r(405131, {["timeline"] = {ADDED_10_1_0}}),	-- Overload Metamorphic Deposit
			r(389700),	-- Overload Molten Node
			r(389702),	-- Overload Primal Node
			r(389703),	-- Overload Titan Node
			r(389409),	-- Primal Draconium Deposit
			r(389462),	-- Primal Serevite Deposit
			r(384693),	-- Rich Draconium Deposit
			r(389460),	-- Rich Serevite Deposit
			r(389465, {["timeline"] = {ADDED_10_0_7}}),	-- Serevite Seam
			r(389406),	-- Titan-Touched Draconium Deposit
			r(389461),	-- Titan-Touched Serevite Deposit
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = MINING,
		},{
			-- Draconium
			FirstCraft(71951, 384688);	-- Draconium Deposit
			FirstCraft(72347, 389458, ADDED_10_0_7);	-- Draconium Seam
			FirstCraft(71956, 389413);	-- Hardened Draconium
			FirstCraft(71962, 389420);	-- Infurious Draconium
			FirstCraft(77828, 421247, ADDED_10_2_0);	-- Living Draconium Deposit
			FirstCraft(75140, 405121, ADDED_10_1_0);	-- Metamorphic Draconium
			FirstCraft(71954, 384690);	-- Molten Draconium
			FirstCraft(71960, 389409);	-- Primal Draconium
			FirstCraft(71952, 384693);	-- Rich Draconium
			FirstCraft(71958, 389406);	-- Titan-Touched Draconium
			-- Serevite
			FirstCraft(72346, 389465, ADDED_10_0_7);	-- Serevite Seam
			FirstCraft(71955, 389463);	-- Hardened Serevite
			FirstCraft(71961, 389464);	-- Infurious Serevite
			FirstCraft(77827, 421244, ADDED_10_2_0);	-- Living Serevite Deposit
			FirstCraft(75139, 405120, ADDED_10_1_0);	-- Metamorphic Serevite
			FirstCraft(71953, 389459);	-- Molten Serevite
			FirstCraft(71959, 389462);	-- Primal Serevite
			FirstCraft(71950, 389460);	-- Rich Serevite
			FirstCraft(71957, 389461);	-- Titan-Touched Serevite
			-- Overload
			FirstCraft(71964, 389701);	-- Overload Hardened Node
			FirstCraft(71967, 389704);	-- Overload Infurious Node
			FirstCraft(78061, 422809, ADDED_10_2_0);	-- Overload Living Deposit
			FirstCraft(75137, 405131, ADDED_10_1_0);	-- Overload Metamorphic Node
			FirstCraft(71963, 389700);	-- Overload Molten Node
			FirstCraft(71966, 389702);	-- Overload Primal Node
			FirstCraft(71965, 389703);	-- Overload Titan-Touched Node
		})),
	}),
	prof(SKINNING, {
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = SKINNING,
		},{
			-- TODO: Needs Achievements attached (roughly 1/3 should be attached to achievement criteria)
			FirstSkin(74204, 193243),	-- Skinning Acrosoth
			FirstSkin(78824, 210288, ADDED_10_2_0),	-- Skinning Ancient Core Hound
			FirstSkin(74219, 187111),	-- Skinning Ancient Hornswog
			FirstSkin(74197, 193231),	-- Skinning Ancient Tundrafur (spawns with Blightpaw)
			FirstSkin(74162, 193341),	-- Skinning Angen (Great Hunt)
			FirstSkin(74225, 190986),	-- Skinning Battlehorn Pyrhus
			FirstSkin(74217, 193177),	-- Skinning Beakers
			FirstSkin(74174, 193168),	-- Skinning Biryuk
			FirstSkin(74122, 197353),	-- Skinning Blisterhide
			FirstSkin(74141, 190907),	-- Skinning Blitztusk (Grand Hunt)
			FirstSkin(74551, 201535, ADDED_10_0_5),	-- Skinning Bloodbeak the Ravenous
			FirstSkin(78340, 210050, ADDED_10_2_0),	-- Skinning Bloodstipe Great Ray
			FirstSkin(74144, 191450),	-- Skinning Boolk
			FirstSkin(74124, 193644),	-- Skinning Bouldron
			FirstSkin(74206, 193658),	-- Skinning Corrupted Proto-Dragon
			FirstSkin(76534, 201054, ADDED_10_1_0),	-- Skinning Crimson Oldblood
			FirstSkin(74126, 193645),	-- Skinning Crystalus (Primal Storm)
			FirstSkin(74229, 190985),	-- Skinning Death's Shadow
			FirstSkin(74153, 194251),	-- Skinning Degmakh (Grand Hunt)
			FirstSkin(74164, 195431),	-- Skinning Diluu (Grand Hunt)
			FirstSkin(74200, 193234),	-- Skinning Eldoren the Reborn
			FirstSkin(74233, 202441, ADDED_10_0_7),	-- Skinning Elusive Auric Argali
			FirstSkin(78394, 212090, ADDED_10_2_0),	-- Skinning Elusive Blooming Brierhide
			FirstSkin(74231, 195518),	-- Skinning Elusive Cliffdweller Vorquin
			FirstSkin(74234, 204821, ADDED_10_1_0, i(205451, {["questID"] = 75866,})),	-- Skinning Elusive Crystalscale Stonecleaver
			FirstSkin(74191, 195492),	-- Skinning Elusive Deepwater Salamanther
			FirstSkin(74185, 194489),	-- Skinning Elusive Elder Drake
			FirstSkin(74186, 194491),	-- Skinning Elusive Elder Frigidpelt (Elusive Creature Bait)
			FirstSkin(74189, 195472),	-- Skinning Elusive Ferocious Titanfang (Titan-Infused Creature Bait)
			FirstSkin(74187, 195541),	-- Skinning Elusive Flourishing Quillbloom
			FirstSkin(74232, 202436, ADDED_10_0_7),	-- Skinning Elusive Frenzied Amberfur
			FirstSkin(74190, 195509),	-- Skinning Elusive Proto Skyterror
			FirstSkin(74188, 195465),	-- Skinning Elusive Tempest Lizard
			FirstSkin(74235, 204831, ADDED_10_1_0),	-- Skinning Elusive Magma Cobra
			FirstSkin(78397, 212133, ADDED_10_2_0),	-- Skinning Elusive Verdant Gladewarden
			FirstSkin(75873, 203664, ADDED_10_1_0),	-- Skinning Emberdusk
			FirstSkin(74224, 193134),	-- Skinning Enkine the Voracious
			FirstSkin(74146, 194409),	-- Skinning Ergburk
			FirstSkin(75881, 200725, ADDED_10_0_7),	-- Skinning Faunos
			FirstSkin(75872, 203660, ADDED_10_1_0),	-- Skinning Flowfy
			FirstSkin(74130, 193698),	-- Skinning Frigidpelt Den Mother
			FirstSkin(75884, 200537, ADDED_10_0_7),	-- Skinning Gahz'raxes
			FirstSkin(74152, 193853),	-- Skinning Galnmor
			FirstSkin(74193, 193125),	-- Skinning Goremaul the Gluttonous
			FirstSkin(78333, 209936, ADDED_10_2_0),	-- Skinning Greedy Gessie
			FirstSkin(74550, 201537, ADDED_10_0_5),	-- Skinning Groffnar
			FirstSkin(74135, 193251),	-- Skinning Gruffy
			FirstSkin(74134, 193269),	-- Skinning Grumbletrunk
			FirstSkin(74180, 187781),	-- Skinning Hamett
			FirstSkin(74203, 193229),	-- Skinning Henlare
			FirstSkin(78344, 210075, ADDED_10_2_0),	-- Skinning Henri Snufftail
			FirstSkin(74179, 188095),	-- Skinning Hunter of the Deep
			FirstSkin(74125, 193648),	-- Skinning Infernum
			FirstSkin(74127, 193647),	-- Skinning Karantun
			FirstSkin(74238, 203625, ADDED_10_1_0),	-- Skinning Karokta
			FirstSkin(78339, 210046, ADDED_10_2_0),	-- Skinning Keen-eyed Ciana
			FirstSkin(74147, 194608),	-- Skinning Kholdeg (Grand Hunt)
			FirstSkin(74145, 194438),	-- Skinning Khomuur (Grand Hunt)
			FirstSkin(74155, 194761),	-- Skinning Khuumog (Grand Hunt)
			FirstSkin(74237, 203462, ADDED_10_1_0),	-- Skinning Kob'rok
			FirstSkin(74169, 197009),	-- Skinning Liskheszaera
			FirstSkin(75878, 200742, ADDED_10_0_7),	-- Skinning Luttrok
			FirstSkin(74236, 200111, ADDED_10_1_0),	-- Skinning Magtembo
			FirstSkin(74182, 195409),	-- Skinning Makhra the Ashtouched
			FirstSkin(74171, 193212),	-- Skinning Malsegan
			FirstSkin(78341, 210051, ADDED_10_2_0),	-- Skinning Matriarch Keevah
			FirstSkin(74208, 193246),	-- Skinning Matriarch Remalla
			FirstSkin(74161, 193311),	-- Skinning Melkhop (Grand Hunt)
			FirstSkin(74163, 195430),	-- Skinning Molkeej (Grand Hunt)
			FirstSkin(78342, 210064, ADDED_10_2_0),	-- Skinning Molten Leadspike
			FirstSkin(78338, 210045, ADDED_10_2_0),	-- Skinning Moragh the Slothful
			FirstSkin(74559, 201549, ADDED_10_0_5),	-- Skinning Morlash (it's a plant but it requires skinning end my suffering)
			FirstSkin(78343, 210070, ADDED_10_2_0),	-- Skinning Mosa Umbramane
			FirstSkin(74157, 195093),	-- Skinning Moskhoi (Grand Hunt)
			FirstSkin(74214, 193735),	-- Skinning Moth'go Deeploom
			FirstSkin(74131, 193201),	-- Skinning Mucka the Raker
			FirstSkin(74154, 194225),	-- Skinning Muugurv (Grand Hunt)
			FirstSkin(74166, 195895),	-- Skinning Nergazurai
			FirstSkin(74140, 190968),	-- Skinning Norbett (Grand Hunt)
			FirstSkin(74194, 193130),	-- Skinning Pleasant Alpha
			FirstSkin(74220, 192737),	-- Skinning Qalashi War Mammoth (War Party Event)
			FirstSkin(74132, 197371),	-- Skinning Ravenous Tundra Bear
			FirstSkin(74205, 193143),	-- Skinning Razk'vex the Untamed
			FirstSkin(74199, 193240),	-- Skinning Riverwalker Tamopo
			FirstSkin(74196, 193666),	-- Skinning Rokmur
			FirstSkin(74176, 195223),	-- Skinning Rustlily
			FirstSkin(74151, 193885),	-- Skinning Salkii
			FirstSkin(74142, 190161),	-- Skinning Sarana (Grand Hunt)
			FirstSkin(74555, 201562, ADDED_10_0_5),	-- Skinning Shardwing
			FirstSkin(74168, 192949),	-- Skinning Skaara
			FirstSkin(74215, 193708),	-- Skinning Skald the Impaler
			FirstSkin(74223, 193181),	-- Skinning Skewersnout
			FirstSkin(74222, 193120),	-- Skinning Smogswog the Firebreather
			FirstSkin(75879, 200622, ADDED_10_0_7),	-- Skinning Snarfang
			FirstSkin(74216, 193706),	-- Skinning Snufflegust
			FirstSkin(74173, 193123),	-- Skinning Steamgill
			FirstSkin(74167, 193133),	-- Skinning Sunscale Behemoth
			FirstSkin(74213, 193634),	-- Skinning Swog'ranka
			FirstSkin(74143, 191103),	-- Skinning Uranto the Swift (Grand Hunt)
			FirstSkin(74148, 194601),	-- Skinning Zagdech
			FirstSkin(74149, 194624),	-- Skinning Zumakh (Grand Hunt)
			FirstSkin(74207, 193258),	-- Skinning Tempestrian
			FirstSkin(74175, 193163),	-- Skinning Territorial Coastling
			FirstSkin(74159, 195132),	-- Skinning Tevgai (Grand Hunt)
			FirstSkin(74201, 191305),	-- Skinning The Great Shellkhan
			FirstSkin(74177, 195204),	-- Skinning The Jolly Giant
			FirstSkin(74198, 183984),	-- Skinning The Weeping Vilomah
			FirstSkin(74218, 193148),	-- Skinning Thunderous Matriarch
			FirstSkin(74150, 193722),	-- Skinning Tomnu
			FirstSkin(74156, 194760),	-- Skinning Uurhilt (Grand Hunt)
			FirstSkin(74183, 192453),	-- Skinning Vaniik the Stormtouched
			FirstSkin(78345, 210508, ADDED_10_2_0),	-- Skinning Voracious Mikanji
			FirstSkin(74184, 192364),	-- Skinning Windscale the Stormborn
			FirstSkin(74195, 193161),	-- Skinning Woolfang
			FirstSkin(74228, 186859),	-- Skinning Worldcarver A'tir
			FirstSkin(74158, 195101),	-- Skinning Yaankhi
			FirstSkin(74160, 195283),	-- Skinning Yamakh
			FirstSkin(74172, 193140),	-- Skinning Zarizz
			FirstSkin(74170, 193209),	-- Skinning Zenet Avis
			FirstSkin(74181, 188451),	-- Skinning Zerimek
		})),
		spell(366259, {	-- Skinning
			i(193213),	-- Adamant Scales+
			i(193214),	-- Adamant Scales++
			i(193215),	-- Adamant Scales+++
			i(204092, {["timeline"] = {ADDED_10_0_7}}),	-- Auric Fleece
			i(193261),	-- Bite-Sized Morsel
			i(193253),	-- Cacophonous Thunderscale
			i(193251),	-- Crystalspine Fur
			i(198837),	-- Curious Hide Scraps
			i(210456, {["timeline"] = {ADDED_10_2_0}}),	-- Dreaming Antler Fragment
			i(198841),	-- Large Sample of Curious Hide
			i(193216),	-- Dense Hide+
			i(193217),	-- Dense Hide++
			i(193218),	-- Dense Hide+++
			i(193262),	-- Exceptional Morsel
			i(193258),	-- Fire-Infused Hide
			i(193259),	-- Flawless Proto Dragon Scale
			i(193222),	-- Lustrous Scaled Hide+
			i(193223),	-- Lustrous Scaled Hide++
			i(193224),	-- Lustrous Scaled Hide+++
			i(205413, {["timeline"] = {ADDED_10_1_0}}),	-- Obisidian Cobraskin
			i(193255),	-- Pristine Vorquin Horn
			i(203417, {["timeline"] = {ADDED_10_0_7}}),	-- Razor-Sharp Animal Bone
			i(193208),	-- Resilient Leather+
			i(193210),	-- Resilient Leather++
			i(193211),	-- Resilient Leather+++
			i(193254),	-- Rockfang Leather
			i(193252),	-- Salamanther Scales
			i(202016),	-- Saturated Bone
			i(193256),	-- Windsong Plumage
		}),
		i(198401),	-- Aileron Seamoth Lure
		i(198404),	-- Bottled Pheromones
		i(193896),	-- Cerulean Spinefish Lure
		i(201462),	-- Curiously-Shaped Stomach
		i(198806),	-- Decay-Infused Creature Bait
		i(198805),	-- Earth-Infused Creature Bait
		i(193906),	-- Elusive Creature Bait
		i(198804),	-- Frost-Infused Creature Bait
		i(198403),	-- Islefin Dorado Lure
		i(193893),	-- Scalebelly Mackerel Lure
		i(193895),	-- Temporal Dragonhead Lure
		i(198807),	-- Titan-Infused Creature Bait
		i(193894),	-- Thousandbite Piranha Lure
		-- n(FIRST_CRAFTS_HEADER, sharedData({
		-- 	["requireSkill"] = SKINNING,
		-- },{
		-- -- Listed under HQ until Quest Tracking Update
		-- })),
	}),
	prof(TAILORING, {
		n(ARMOR, {
			i(193530),	-- Allied Cinch of Time Dilation
			i(193526),	-- Amice of the Blue
			i(193520),	-- Azureweave Mantle
			i(193536),	-- Azureweave Robe
			i(193525),	-- Azureweave Slippers
			i(193532),	-- Blue Dragon Soles
			i(193527),	-- Chronocloth Gloves
			i(193537),	-- Chronocloth Leggings
			i(193512),	-- Chronocloth Sash
			i(193505),	-- Crimson Combatant's Wildercloth Bands
			i(193522),	-- Crimson Combatant's Wildercloth Cloak
			i(193507),	-- Crimson Combatant's Wildercloth Gloves
			i(193506),	-- Crimson Combatant's Wildercloth Hood
			i(193501),	-- Crimson Combatant's Wildercloth Leggings
			i(193517),	-- Crimson Combatant's Wildercloth Sash
			i(193502),	-- Crimson Combatant's Wildercloth Shoulderpads
			i(193503),	-- Crimson Combatant's Wildercloth Treads
			i(193514),	-- Crimson Combatant's Wildercloth Tunic
			i(211557, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Wildercloth Bands
			i(211562, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Wildercloth Cloak
			i(211559, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Wildercloth Gloves
			i(211558, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Wildercloth Hood
			i(211554, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Wildercloth Leggings
			i(211561, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Wildercloth Sash
			i(211555, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Wildercloth Shoulderpads
			i(211556, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Wildercloth Treads
			i(211560, {["timeline"] = {ADDED_10_2_6_SEASON_FOUR}}),	-- Draconic Combatant's Wildercloth Tunic
			i(193521),	-- Hood of Surging Time
			i(193513),	-- Infurious Handwraps of Gesticulation
			i(193524),	-- Infurious Legwraps of Possibility
			i(204115, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Wildercloth Bands
			i(204120, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Wildercloth Cloak
			i(204117, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Wildercloth Gloves
			i(204116, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Wildercloth Hood
			i(204112, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Wildercloth Leggings
			i(204119, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Wildercloth Sash
			i(204113, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Wildercloth Shoulderpads
			i(204114, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Wildercloth Treads
			i(204118, {["timeline"] = {ADDED_10_1_0}}),	-- Obsidian Combatant's Wildercloth Tunic
			i(193497),	-- Surveyor's Cloth Bands
			i(193515),	-- Surveyor's Cloth Robe
			i(193498),	-- Surveyor's Cloth Treads
			i(201940),	-- Surveyor's Seasoned Cord
			i(201938),	-- Surveyor's Seasoned Gloves
			i(201936),	-- Surveyor's Seasoned Hood
			i(201939),	-- Surveyor's Seasoned Pants
			i(201937),	-- Surveyor's Seasoned Shoulders
			i(193500),	-- Surveyor's Tailored Cloak
			i(205025, {["timeline"] = {ADDED_10_1_0}}),	-- Undulating Sporecloak
			i(208258, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Wildercloth Bands
			i(208263, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Wildercloth Cloak
			i(208260, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Wildercloth Gloves
			i(208259, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Wildercloth Hood
			i(208255, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Wildercloth Leggings
			i(208262, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Wildercloth Sash
			i(208256, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Wildercloth Shoulderpads
			i(208257, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Wildercloth Treads
			i(208261, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Combatant's Wildercloth Tunic
			i(193516),	-- Vibrant Wildercloth Girdle
			i(193504),	-- Vibrant Wildercloth Handwraps
			i(193523),	-- Vibrant Wildercloth Headcover
			i(193511),	-- Vibrant Wildercloth Shawl
			i(193508),	-- Vibrant Wildercloth Shoulderspikes
			i(193518),	-- Vibrant Wildercloth Slacks
			i(193519),	-- Vibrant Wildercloth Slippers
			i(193509),	-- Vibrant Wildercloth Vestments
			i(193510),	-- Vibrant Wildercloth Wristwraps
		}),
		filter(MISC, {
			i(193950),	-- Abrasive Polishing Cloth+
			i(193951),	-- Abrasive Polishing Cloth++
			i(193952),	-- Abrasive Polishing Cloth+++
			i(194018),	-- Azureweave Expedition Pack
			i(193956),	-- Blazing Embroidery Thread+
			i(193957),	-- Blazing Embroidery Thread++
			i(193958),	-- Blazing Embroidery Thread+++
			i(193944),	-- Blue Silken Lining+
			i(193945),	-- Blue Silken Lining++
			i(193946),	-- Blue Silken Lining+++
			i(193941),	-- Bronzed Grip Wrappings+
			i(193942),	-- Bronzed Grip Wrappings++
			i(193943),	-- Bronzed Grip Wrappings+++
			i(193959),	-- Chromatic Embroidery Thread+
			i(193960),	-- Chromatic Embroidery Thread++
			i(193961),	-- Chromatic Embroidery Thread+++
			i(194020),	-- Chronocloth Reagent Bag
			i(194127),	-- Dragon Isles Unravelling
			i(194042),	-- Explorer's Banner of Herbology+
			i(194043),	-- Explorer's Banner of Herbology++
			i(194044),	-- Explorer's Banner of Herbology+++
			i(194045),	-- Explorer's Banner of Geology+
			i(194046),	-- Explorer's Banner of Geology++
			i(194047),	-- Explorer's Banner of Geology+++
			i(194011),	-- Frozen Spellthread+
			i(194012),	-- Frozen Spellthread++
			i(194013),	-- Frozen Spellthread+++
			i(205411, {["timeline"] = {ADDED_10_1_0}}),	-- Medical Wrap Kit
			i(202287, {["timeline"] = {ADDED_10_0_7}}),	-- Paw-Made Winterpelt Reagent Bag
			i(205012, {["timeline"] = {ADDED_10_1_0}}),	-- Reserve Parachute
			i(193962),	-- Shimmering Embroidery Thread+
			i(193963),	-- Shimmering Embroidery Thread++
			i(193964),	-- Shimmering Embroidery Thread+++
			i(194019),	-- Simply Stitched Reagent Bag
			i(194014),	-- Temporal Spellthread+
			i(194015),	-- Temporal Spellthread++
			i(194016),	-- Temporal Spellthread+++
			i(203415, {["timeline"] = {ADDED_10_0_7}}),	-- Traditional Morqut Kite
			i(210671, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Tether+
			i(210672, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Tether++
			i(210673, {["timeline"] = {ADDED_10_2_0}}),	-- Verdant Tether+++
			i(193953),	-- Vibrant Polishing Cloth+
			i(193954),	-- Vibrant Polishing Cloth++
			i(193955),	-- Vibrant Polishing Cloth+++
			i(194008),	-- Vibrant Spellthread+
			i(194009),	-- Vibrant Spellthread++
			i(194010),	-- Vibrant Spellthread+++
			i(194017),	-- Wildercloth Bag
			i(194048),	-- Wildercloth Bandage+
			i(194049),	-- Wildercloth Bandage++
			i(194050),	-- Wildercloth Bandage+++
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(193540, {["requireSkill"] = TAILORING}),	-- Dragoncloth Tailoring Vestments
			i(193544, {["requireSkill"] = ALCHEMY}),	-- Master's Wildercloth Alchemist's Robe
			i(193545, {["requireSkill"] = COOKING}),	-- Master's Wildercloth Chef's Hat
			i(193533, {["requireSkill"] = ENCHANTING}),	-- Master's Wildercloth Enchanter's Hat
			i(193543, {["requireSkill"] = FISHING}),	-- Master's Wildercloth Fishing Cap
			i(193542, {["requireSkill"] = HERBALISM}),	-- Master's Wildercloth Gardening Hat
			i(193528, {["requireSkill"] = ALCHEMY}),	-- Wildercloth Alchemist's Robe
			i(193534, {["requireSkill"] = COOKING}),	-- Wildercloth Chef's Hat
			i(193539, {["requireSkill"] = ENCHANTING}),	-- Wildercloth Enchanter's Hat
			i(193529, {["requireSkill"] = FISHING}),	-- Wildercloth Fishing Cap
			i(193538, {["requireSkill"] = HERBALISM}),	-- Wildercloth Gardening Hat
			i(193541, {["requireSkill"] = TAILORING}),	-- Wildercloth Tailor's Coat
		}),
		filter(REAGENTS, {
			i(193938),	-- Azureweave Bolt+
			i(193939),	-- Azureweave Bolt++
			i(193940),	-- Azureweave Bolt+++
			i(193935),	-- Chronocloth Bolt+
			i(193936),	-- Chronocloth Bolt++
			i(193937),	-- Chronocloth Bolt+++
			i(193932),	-- Infurious Wildercloth Bolt+
			i(193933),	-- Infurious Wildercloth Bolt++
			i(193934),	-- Infurious Wildercloth Bolt+++
			i(192095),	-- Spool of Wilderthread+
			i(192096),	-- Spool of Wilderthread++
			i(192097),	-- Spool of Wilderthread+++
			i(193929),	-- Vibrant Wildercloth Bolt+
			i(193930),	-- Vibrant Wildercloth Bolt++
			i(193931),	-- Vibrant Wildercloth Bolt+++
			i(193926),	-- Wildercloth Bolt+
			i(193927),	-- Wildercloth Bolt++
			i(193928),	-- Wildercloth Bolt+++
		}),
		filter(TOYS, {
			i(194058),	-- Cold Cushion (TOY!)
			i(194057),	-- Cushion of Time Travel (TOY!)
			i(194060),	-- Dragonscale Expedition's Expedition Tent (TOY!)
			i(194056),	-- Duck-Stuffed Duck Lovie (TOY!)
			i(194052),	-- Forlorn Funeral Pall (TOY!)
			i(194059),	-- Market Tent (TOY!)
		}),
		n(WEAPONS, {
			i(194070),	-- Draconium Fabric Cutters Left Blade
			i(194069),	-- Draconium Fabric Cutters Right Blade
			i(198041),	-- Khaz'gorite Fabric Cutters Left Blade
			i(194065),	-- Khaz'gorite Fabric Cutters Right Blade
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = TAILORING,
		},{
			-- Woven Cloth	--
			FirstCraft(71842, 376556);	-- Azureweave Bolt
			FirstCraft(71843, 376557);	-- Chronocloth Bolt
			FirstCraft(71845, 376559);	-- Infurious Wildercloth Bolt
			FirstCraft(71844, 376558);	-- Vibrant Wildercloth Bolt
			FirstCraft(71841, 376555);	-- Wildercloth Bolt
			-- Optional Reagents --
			FirstCraft(71827, 376541);	-- Blue Silken Lining
			FirstCraft(71828, 376542);	-- Bronzed Grip Wrappings
			FirstCraft(75819, 409839, ADDED_10_1_0);	-- Medical Wrap Kit
			FirstCraft(75589, 408304, ADDED_10_1_0);	-- Reserve Parachute
			FirstCraft(78510, 426434, ADDED_10_2_0);	-- Verdant Tether
			-- Finishing Reagents --
			FirstCraft(71819, 376533);	-- Abrasive Polishing Cloth
			FirstCraft(71820, 376534);	-- Vibrant Polishing Cloth
			FirstCraft(71822, 376536);	-- Chromatic Embroidery Thread
			FirstCraft(71821, 376535);	-- Blazing Embroidery Thread
			FirstCraft(71823, 376537);	-- Shimmering Embroidery Thread
			-- Garments --
			FirstCraft(71813, 376527);	-- Crimson Combatant's Wildercloth Bands
			FirstCraft(71805, 376519);	-- Crimson Combatant's Wildercloth Cloak
			FirstCraft(71808, 376522);	-- Crimson Combatant's Wildercloth Gloves
			FirstCraft(71809, 376523);	-- Crimson Combatant's Wildercloth Hood
			FirstCraft(71810, 376524);	-- Crimson Combatant's Wildercloth Leggings
			FirstCraft(71812, 376526);	-- Crimson Combatant's Wildercloth Sash
			FirstCraft(71811, 376525);	-- Crimson Combatant's Wildercloth Shoulderpads
			FirstCraft(71807, 376521);	-- Crimson Combatant's Wildercloth Treads
			FirstCraft(71806, 376520);	-- Crimson Combatant's Wildercloth Tunic
			FirstCraft(79052, 430081, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Wildercloth Bands
			FirstCraft(79057, 430073, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Wildercloth Cloak
			FirstCraft(79054, 430076, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Wildercloth Gloves
			FirstCraft(79053, 430077, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Wildercloth Hood
			FirstCraft(79049, 430078, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Wildercloth Leggings
			FirstCraft(79056, 430080, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Wildercloth Sash
			FirstCraft(79050, 430079, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Wildercloth Shoulderpads
			FirstCraft(79051, 430075, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Wildercloth Treads
			FirstCraft(79055, 430074, ADDED_10_2_6_SEASON_FOUR);	-- Draconic Combatant's Wildercloth Tunic
			FirstCraft(74831, 403157, ADDED_10_1_0);	-- Obsidian Combatant's Wildercloth Bands
			FirstCraft(74823, 403149, ADDED_10_1_0);	-- Obsidian Combatant's Wildercloth Cloak
			FirstCraft(74826, 403152, ADDED_10_1_0);	-- Obsidian Combatant's Wildercloth Gloves
			FirstCraft(74827, 403153, ADDED_10_1_0);	-- Obsidian Combatant's Wildercloth Hood
			FirstCraft(74828, 403154, ADDED_10_1_0);	-- Obsidian Combatant's Wildercloth Leggings
			FirstCraft(74830, 403156, ADDED_10_1_0);	-- Obsidian Combatant's Wildercloth Sash
			FirstCraft(74829, 403155, ADDED_10_1_0);	-- Obsidian Combatant's Wildercloth Shoulderpads
			FirstCraft(74825, 403151, ADDED_10_1_0);	-- Obsidian Combatant's Wildercloth Treads
			FirstCraft(74824, 403150, ADDED_10_1_0);	-- Obsidian Combatant's Wildercloth Tunic
			FirstCraft(71795, 376509);	-- Surveyor's Cloth Bands
			FirstCraft(71793, 376507);	-- Surveyor's Cloth Robe
			FirstCraft(71794, 376508);	-- Surveyor's Cloth Treads
			FirstCraft(72504, 395809);	-- Surveyor's Seasoned Cord
			FirstCraft(72506, 395813);	-- Surveyor's Seasoned Gloves
			FirstCraft(72507, 395807);	-- Surveyor's Seasoned Hood
			FirstCraft(72508, 395814);	-- Surveyor's Seasoned Pants
			FirstCraft(72509, 395815);	-- Surveyor's Seasoned Shoulders
			FirstCraft(71792, 376506);	-- Surveyor's Tailored Cloak
			FirstCraft(75590, 408318, ADDED_10_1_0);	-- Undulating Sporecloak
			FirstCraft(77438, 419030, ADDED_10_2_0);	-- Verdant Combatant's Wildercloth Bands
			FirstCraft(77465, 419022, ADDED_10_2_0);	-- Verdant Combatant's Wildercloth Cloak
			FirstCraft(77468, 419025, ADDED_10_2_0);	-- Verdant Combatant's Wildercloth Gloves
			FirstCraft(77469, 419026, ADDED_10_2_0);	-- Verdant Combatant's Wildercloth Hood
			FirstCraft(77470, 419027, ADDED_10_2_0);	-- Verdant Combatant's Wildercloth Leggings
			FirstCraft(77472, 419029, ADDED_10_2_0);	-- Verdant Combatant's Wildercloth Sash
			FirstCraft(77471, 419028, ADDED_10_2_0);	-- Verdant Combatant's Wildercloth Shoulderpads
			FirstCraft(77467, 419024, ADDED_10_2_0);	-- Verdant Combatant's Wildercloth Treads
			FirstCraft(77466, 419023, ADDED_10_2_0);	-- Verdant Combatant's Wildercloth Tunic
			FirstCraft(71803, 376517);	-- Vibrant Wildercloth Girdle
			FirstCraft(71799, 376513);	-- Vibrant Wildercloth Handwraps
			FirstCraft(71800, 376514);	-- Vibrant Wildercloth Headcover
			FirstCraft(71796, 376510);	-- Vibrant Wildercloth Shawl
			FirstCraft(71802, 376516);	-- Vibrant Wildercloth Shoulderspikes
			FirstCraft(71801, 376515);	-- Vibrant Wildercloth Slacks
			FirstCraft(71798, 376512);	-- Vibrant Wildercloth Slippers
			FirstCraft(71797, 376511);	-- Vibrant Wildercloth Vestments
			FirstCraft(71804, 376518);	-- Vibrant Wildercloth Wristwrap
			-- Azureweave Garments --
			FirstCraft(71779, 376493);	-- Amice of the Blue
			FirstCraft(71788, 376502);	-- Azureweave Mantle
			FirstCraft(71786, 376500);	-- Azureweave Robe
			FirstCraft(71787, 376501);	-- Azureweave Slippers
			FirstCraft(71782, 376496);	-- Blue Dragon Soles
			FirstCraft(71780, 376494);	-- Infurious Binding of Gesticulation
			-- Chronocloth Garments --
			FirstCraft(71783, 376497);	-- Allied Wristguards of Time Dilation
			FirstCraft(71789, 376503);	-- Chronocloth Gloves
			FirstCraft(71790, 376504);	-- Chronocloth Leggings
			FirstCraft(71791, 376505);	-- Chronocloth Sash
			FirstCraft(71778, 376492);	-- Hood of Surging Time
			FirstCraft(71781, 376495);	-- Infurious Legwraps of Possibility
			-- Profession Garments --
			FirstCraft(71832, 376546);	-- Dragoncloth Tailoring Vestments
			FirstCraft(71830, 376544);	-- Master's Wildercloth Alchemist's Robe
			FirstCraft(71834, 376548);	-- Master's Wildercloth Chef's Hat
			FirstCraft(71836, 376550);	-- Master's Wildercloth Enchanter's Hat
			FirstCraft(71838, 376552);	-- Master's Wildercloth Fishing Cap
			FirstCraft(71840, 376554);	-- Master's Wildercloth Gardening Hat
			FirstCraft(71829, 376543);	-- Wildercloth Alchemist's Robe
			FirstCraft(71833, 376547);	-- Wildercloth Chef's Hat
			FirstCraft(71835, 376549);	-- Wildercloth Enchanter's Hat
			FirstCraft(71837, 376551);	-- Wildercloth Fishing Cap
			FirstCraft(71839, 376553);	-- Wildercloth Gardening Hat
			FirstCraft(71831, 376545);	-- Wildercloth Tailor's Coat
			-- Spellthread --
			FirstCraft(71825, 376539);	-- Frozen Spellthread
			FirstCraft(71826, 376540);	-- Temporal Spellthread
			FirstCraft(71824, 376538);	-- Vibrant Spellthread
			-- Embroidered Bags --
			FirstCraft(71815, 376529);	-- Azureweave Expedition Pack
			FirstCraft(71847, 376561);	-- Chronocloth Reagent Bag
			FirstCraft(75236, 405974, ADDED_10_0_7);	-- Paw-Made Winterpelt Reagent Bag
			FirstCraft(71846, 376560);	-- Simply Stitched Reagent Bag
			FirstCraft(71814, 376528);	-- Wildercloth Bag
			-- Assorted Embroidery --
			FirstCraft(71818, 376532);	-- Explorer's Banner of Geology
			FirstCraft(71817, 376531);	-- Explorer's Banner of Herbology
			FirstCraft(71853, 376568);	-- Cold Cushion
			FirstCraft(71852, 376567);	-- Cushion of Time Travel
			FirstCraft(71855, 376570);	-- Dragonscale Expedition's Expedition Tent
			FirstCraft(71850, 376565);	-- Duck-Stuffed Duck Lovie
			FirstCraft(71851, 376566);	-- Forlorn Funeral Pall
			FirstCraft(71854, 376569);	-- Market Tent
			FirstCraft(71816, 376530);	-- Wildercloth Bandage
			-- Experiments --
			FirstCraft(71848, 376563);	-- Fiddle with Draconium Fabric Cutters
			FirstCraft(71849, 376564);	-- Fiddle with Khaz'gorite Fabric Cutters
			-- Artisan Curios
			FirstCraft(74318, 400815, ADDED_10_0_7);	-- Traditional Morqut Kite
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	-- TODO: likely many of these to be added as actual tracking under ExpansionFeatures > DF > Professions
	n(PROFESSIONS, {
		prof(ALCHEMY, {
			q(71948),	-- Maxxed Out Transmutation
		}),
		prof(BLACKSMITHING, {
			q(70232),	-- crafting an Alloy material near the Dim Forge in The Waking Shores to trigger the Glimmer of Wisdom (spellID 384716)
		}),
		prof(ENCHANTING, {
			q(71939),	-- Glimmer of Air Drop
			q(71940),	-- Glimmer of Earth Drop
			q(71941),	-- Glimmer of Fire Drop
			q(71942),	-- Glimmer of Frost Drop
			q(71943),	-- Glimmer of Order Drop
		}),
		prof(HERBALISM, {
			q(74121),	-- Herbing Enraged Sprout
			q(74230),	-- Herbing Azra's Prized Peony
		}),
		prof(MINING, {
			-- TODO: these are possibly weekly, perhaps track them normally
			q(66936),	-- Heated Ore Sample / Unyielding Stone Chunk
		}),
		prof(SKINNING, {
			q(77792, {["timeline"] = {ADDED_10_1_5}}),	-- Dreamscale daily lockout for anniversary world boss (Emeriss, Lethon, Taerar, Ysondre)
		}),
		prof(TAILORING, {
			q(71946),	-- Timeweaving unlocked
			q(71947),	-- Timeweaving Full maxed out
			q(71290),	-- Azureweave unlocked
			q(71294),	-- Azureweave Full maxed out
		}),
	}),
})));