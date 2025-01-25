-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local BARTER_BOULDER = 205188;
local BARTER_BRICK = 204985;
local PONZOS_CREAM = 205452;
local VOUCHER = 205453;

-- @ renown 13 all Costs and Rewards turn to Boulders, so let's have both listed
local function BarterCost(bricks, boulders)
	return {
		{"i",BARTER_BRICK,bricks},
		{"i",BARTER_BOULDER,boulders},
	};
end
BARTERING = createHeader({
	readable = "Bartering",
	icon = 413570,
	text = {
		en = "Bartering",
		es = "Comercio",
		de = "Tauschhandels",
		fr = "Marchandage",
		it = "Baratto",
		pt = "Pechincha",
		ru = "Обмен",
		cn = "以物易物",
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	n(LOAMM_NIFFEN, {
		n(BARTERING, bubbleDownSelf({ ["minReputation"] = { FACTION_LOAMM_NIFFEN, 3 } }, {
			n(ACHIEVEMENTS, {
				ach(17841, {	-- Pyramid Scheme
					["provider"] = { "i", 205421 },	-- Ponzo's Scheming Topper
					["g"] = {
						title(502),	-- <Name>, Barter Boss
					},
				}),
			}),
			n(QUESTS, sharedData({
				["provider"] = { "n", 203516 },	-- Kayann
				["coord"] = { 36.5, 62.5, VALDRAKKEN },
				["isWeekly"] = true,
			}, {
				q(75286, {	-- Blacksmith's Back
					["cost"] = {
						{ "i", 191304, 10 },	-- 10x Sturdy Expedition Shovel
					},
					["altQuests"] = { 75288, 75304, 75289, 75309, 75351, 75301, 75307, 75308 },
				}),
				q(75288, {	-- Enchanted Tales with Topuiz
					["cost"] = {
						{ "i", 200034, 5 },		-- 5x Enchant Cloak - Writ of Avoidance+++
						{ "i", 200035, 5 },		-- 5x Enchant Cloak - Writ of Leech+++
						{ "i", 200036, 5 },		-- 5x Enchant Cloak - Writ of Speed+++
					},
					["altQuests"] = { 75286, 75304, 75289, 75309, 75351, 75301, 75307, 75308 },
				}),
				q(75304, {	-- I Need... a Tailor
					["cost"] = {
						{ "i", 193930, 75 },	-- 75x Vibrant Wildercloth Bolt++
					},
					["altQuests"] = { 75286, 75288, 75289, 75309, 75351, 75301, 75307, 75308 },
				}),
				q(75289, {	-- Ink Master
					["cost"] = {
						{ "i", 198423, 30 },	-- 30x Shimmering Pigment+++
						{ "i", 194767, 15 },	-- 15x Chilled Rune++
					},
					["altQuests"] = { 75286, 75288, 75304, 75309, 75351, 75301, 75307, 75308 },
				}),
				q(75309, {	-- If a Gem Isn't Pretty
					["cost"] = {
						{ "i", 192855, 5 },		-- 5x Alexstraszite+++
						{ "i", 193370, 50 },	-- 50x Silken Gemdust+++
						{ "i", 192861, 5 },		-- 5x Ysemerald+++
					},
					["altQuests"] = { 75286, 75288, 75304, 75289, 75351, 75301, 75307, 75308 },
				}),
				q(75351, {	-- Keep a Leather Eye Open
					["cost"] = {
						{ "i", 193470, 10 },	-- 10x Feral Hide Drums
					},
					["altQuests"] = { 75286, 75288, 75304, 75289, 75309, 75301, 75307, 75308 },
				}),
				q(75301, {	-- Mistie's Mix Magic
					["cost"] = {
						{ "i", 191386, 50 },	-- 50x Aerated Mana Potion+++
						{ "i", 191497, 15 },	-- 15x Omnium Draconis++
					},
					["altQuests"] = { 75286, 75288, 75304, 75289, 75309, 75351, 75307, 75308 },
				}),
				q(75307, {	-- Road to Season City
					["cost"] = {
						{ "i", 197793, 40 },	-- 40x Yusa's Hearty Stew
						{ "i", 197794, 5 },		-- 5x Grand Banquet of the Kalu'ak
					},
					["altQuests"] = { 75286, 75288, 75304, 75289, 75309, 75351, 75301, 75308 },
				}),
				q(75308, {	-- Scrybbil Engineering
					["cost"] = {
						{ "i", 198225, 2 },		-- 2x Draconium Fisherfriend
					},
					["altQuests"] = { 75286, 75288, 75304, 75289, 75309, 75351, 75301, 75307 },
				}),
			})),
			n(REWARDS, {
				["maps"] = {
					ZARALEK_CAVERN,
				},
				["groups"] = {
					i(BARTER_BRICK, {
						["maxReputation"] = { FACTION_LOAMM_NIFFEN, 12 },
					}),
					i(BARTER_BOULDER, {
						["minReputation"] = { FACTION_LOAMM_NIFFEN, 13 },
					}),
				},
			}),
			n(VENDORS, {
				n(203172, {	-- Dustmonger Topuiz
					["coord"] = { 55.9, 56.8, ZARALEK_CAVERN },
					["g"] = {
						i(204978, {	-- Formula: Enchant Weapon - Spore Tender (RECIPE!)
							["cost"] = {{"i", PONZOS_CREAM, 1}},
						}),
						i(204977, {	-- Formula: Illusory Adornment: Spores (RECIPE!)
							["cost"] = {{"i", VOUCHER, 1}},
						}),
						i(204976, {	-- Formula: Spore Keeper's Baton (RECIPE!)
							["cost"] = {{"i", PONZOS_CREAM, 1}},
						}),
						i(205263, {	-- Empowered Flightstone
							["cost"] = { { "c", 2245, 150 } },
						}),
					},
				}),
				n(203612, {	-- Fanilly
					["coord"] = { 56.7, 55.3, ZARALEK_CAVERN },
					["g"] = {
						i(205174, {	-- Design: B.B.F. Fist (RECIPE!)
							["cost"] = {{"i", VOUCHER, 1}},
						}),
						i(205176, {	-- Design: Figurine of the Gathering Storm (RECIPE!)
							["cost"] = {{"i", PONZOS_CREAM, 1}},
						}),
						i(205175, {	-- Design: Statuette of Foreseen Power (RECIPE!)
							["cost"] = {{"i", PONZOS_CREAM, 1}},
						}),
					},
				}),
				n(203644, {	-- Garram
					["coord"] = { 57.3, 55.9, ZARALEK_CAVERN },
					["g"] = {
						i(204970, {	-- Pattern: Adaptive Dracothyst Armguards (RECIPE!)
							["cost"] = {{"i", VOUCHER, 1}},
						}),
						i(204974, {	-- Pattern: Lambent Armor Kit (RECIPE!)
							["cost"] = {{"i", VOUCHER, 1}},
						}),
						i(204969, {	-- Pattern: Spore Colony Shoulderguards (RECIPE!)
							["cost"] = {{"i", PONZOS_CREAM, 1}},
						}),
					},
				}),
				n(203170, {	-- Kilnmaster Crubus
					["coord"] = { 57.1, 55.0, ZARALEK_CAVERN },
					["g"] = {
						i(205137, {	-- Plans: Shadowed Alloy (RECIPE!)
							["cost"] = {{"i", PONZOS_CREAM, 1}},
						}),
						i(205143, {	-- Plans: Shadowed Belt Clasp (RECIPE!)
							["cost"] = {{"i", VOUCHER, 1}},
						}),
						i(204634),	-- Rot Resistant Cauldron
					},
				}),
				n(203607, {	-- Mistie
					["coord"] = { 56.0, 56.5, ZARALEK_CAVERN },
					["g"] = {
						i(204984, {	-- Recipe: Stinky Bright Potion (RECIPE!)
							["cost"] = {{"i", VOUCHER, 1}},
						}),
						i(204631, {	-- Recipe: Transmute: Dracothyst (RECIPE!)
							["cost"] = {{"i", PONZOS_CREAM, 1}},
						}),
					},
				}),
				n(203609, {	-- Phiary <Cooking>
					["coord"] = { 56.9, 56.3, ZARALEK_CAVERN },
					["g"] = {
						i(205690, {	-- Barter-B-Q
							["cost"] = BarterCost(5, 1),
						}),
					}
				}),
				n(204693, {	-- Ponzo
					["coord"] = { 58.1, 53.8, ZARALEK_CAVERN },
					["g"] = {
						i(BARTER_BOULDER, {
							["cost"] = {{"i", BARTER_BRICK, 3 }},
						}),
						i(PONZOS_CREAM, {
							["cost"] = BarterCost(25, 10),
						}),
						i(VOUCHER, {
							["cost"] = BarterCost(80, 40),
						}),
						i(205984, {	-- Bartered Dig Map
							["questID"] = 76077,
							["isWeekly"] = true,
							["cost"] = BarterCost(3, 1),
						}),
						i(225881, {	-- Big Bag of Barter Boulders
							["cost"] = {{"i",225798,1}},	-- Intricately Carved Barter Boulder
							["timeline"] = {ADDED_11_0_2}
						}),
						i(203308, {	-- Winding Slitherdrake: Hairy Brow (MM!)
							["cost"] = BarterCost(55, 30),
						}),
						i(203312, {	-- Winding Slitherdrake: Cluster Chin Horn (MM!)
							["cost"] = BarterCost(55, 30),
						}),
						i(203346, {	-- Winding Slitherdrake: Curled Nose (MM!)
							["cost"] = BarterCost(55, 30),
						}),
						i(205120, {	-- Thimblerig (PET!)
							["cost"] = BarterCost(85, 45),
						}),
						i(205209, {	-- Boulder Hauler (MOUNT!)
							["cost"] = BarterCost(170, 85),
						}),
						-- Professions
						i(205440, {	-- Bartered Alchemy Journal
							["questID"] = 75848,
							["requireSkill"] = ALCHEMY,
							["cost"] = BarterCost(90, 40),
						}),
						i(205439, {	-- Bartered Blacksmithing Journal
							["questID"] = 75849,
							["requireSkill"] = BLACKSMITHING,
							["cost"] = BarterCost(90, 40),
						}),
						i(205438, {	-- Bartered Enchanting Journal
							["questID"] = 75850,
							["requireSkill"] = ENCHANTING,
							["cost"] = BarterCost(90, 40),
						}),
						i(205436, {	-- Bartered Engineering Journal
							["questID"] = 75851,
							["requireSkill"] = ENGINEERING,
							["cost"] = BarterCost(90, 40),
						}),
						i(205445, {	-- Bartered Herbalism Journal
							["questID"] = 75852,
							["requireSkill"] = HERBALISM,
							["cost"] = BarterCost(90, 40),
						}),
						i(205441, {	-- Bartered Inscription Journal
							["questID"] = 75853,
							["requireSkill"] = INSCRIPTION,
							["cost"] = BarterCost(90, 40),
						}),
						i(205435, {	-- Bartered Jewelcrafting Journal
							["questID"] = 75854,
							["requireSkill"] = JEWELCRAFTING,
							["cost"] = BarterCost(90, 40),
						}),
						i(205437, {	-- Bartered Leatherworking Journal
							["questID"] = 75855,
							["requireSkill"] = LEATHERWORKING,
							["cost"] = BarterCost(90, 40),
						}),
						i(205443, {	-- Bartered Mining Journal
							["questID"] = 75856,
							["requireSkill"] = MINING,
							["cost"] = BarterCost(90, 40),
						}),
						i(205444, {	-- Bartered Skinning Journal
							["questID"] = 75857,
							["requireSkill"] = SKINNING,
							["cost"] = BarterCost(90, 40),
						}),
						i(205442, {	-- Bartered Tailoring Journal
							["questID"] = 75858,
							["requireSkill"] = TAILORING,
							["cost"] = BarterCost(90, 40),
						}),
						i(205429, {	-- Bartered Alchemy Notes
							["questID"] = 75847,
							["requireSkill"] = ALCHEMY,
							["cost"] = BarterCost(35, 25),
						}),
						i(205428, {	-- Bartered Blacksmithing Notes
							["questID"] = 75846,
							["requireSkill"] = BLACKSMITHING,
							["cost"] = BarterCost(35, 25),
						}),
						i(205427, {	-- Bartered Enchanting Notes
							["questID"] = 75845,
							["requireSkill"] = ENCHANTING,
							["cost"] = BarterCost(35, 25),
						}),
						i(205425, {	-- Bartered Engineering Notes
							["questID"] = 75844,
							["requireSkill"] = ENGINEERING,
							["cost"] = BarterCost(35, 25),
						}),
						i(205434, {	-- Bartered Herbalism Notes
							["questID"] = 75843,
							["requireSkill"] = HERBALISM,
							["cost"] = BarterCost(35, 25),
						}),
						i(205430, {	-- Bartered Inscription Notes
							["questID"] = 75842,
							["requireSkill"] = INSCRIPTION,
							["cost"] = BarterCost(35, 25),
						}),
						i(205424, {	-- Bartered Jewelcrafting Notes
							["questID"] = 75841,
							["requireSkill"] = JEWELCRAFTING,
							["cost"] = BarterCost(35, 25),
						}),
						i(205426, {	-- Bartered Leatherworking Notes
							["questID"] = 75840,
							["requireSkill"] = LEATHERWORKING,
							["cost"] = BarterCost(35, 25),
						}),
						i(205432, {	-- Bartered Mining Notes
							["questID"] = 75839,
							["requireSkill"] = MINING,
							["cost"] = BarterCost(35, 25),
						}),
						i(205433, {	-- Bartered Skinning Notes
							["questID"] = 75838,
							["requireSkill"] = SKINNING,
							["cost"] = BarterCost(35, 25),
						}),
						i(205431, {	-- Bartered Tailoring Notes
							["questID"] = 75837,
							["requireSkill"] = TAILORING,
							["cost"] = BarterCost(35, 25),
						}),
						-- Cosmetic
						i(205421, {	-- Ponzo's Scheming Topper
							["description"] = "Hat appears when you click dialog options (for the best price - click it a few times)",
							["cost"] = { { "i", BARTER_BOULDER, 249 }, },
						}),
					},
				}),
				n(203608, {	-- Rossmar
					["coord"] = { 56.1, 56.7, ZARALEK_CAVERN },
					["g"] = {
						i(205138, {	-- Pattern: Medical Wrap Kit (RECIPE!)
							["cost"] = { { "i", VOUCHER, 1 } }
						}),
						i(205139, {	-- Pattern: Reserve Parachute (RECIPE!)
							["cost"] = { { "i", VOUCHER, 1 } }
						}),
					}
				}),
				n(203171, {	-- Scridorsa the Chiseler
					["coord"] = { 55.8, 55.7, ZARALEK_CAVERN },
					["g"] = {
						i(205136, {	-- Technique: Contract: Loamm Niffen (RECIPE!)
							["cost"] = {{"i", VOUCHER, 1}},
						}),
						i(205132, {	-- Technique: Glyph of the Chosen Glaive (RECIPE!)
							["cost"] = {{"i", VOUCHER, 1}},
						}),
						i(205133, {	-- Technique: Glyph of the Heaved Armament (RECIPE!)
							["cost"] = {{"i", VOUCHER, 1}},
						}),
						i(205135, {	-- Technique: Hissing Rune (RECIPE!)
							["cost"] = {{"i", PONZOS_CREAM, 1}},
						}),
						i(205134, {	-- Technique: Vantus Rune: Aberrus, the Shadowed Crucible (RECIPE!)
							["cost"] = {{"i", PONZOS_CREAM, 1}},
						}),
						i(205131, {	-- Technique: Winding Slitherdrake: Small Finned Throat (RECIPE!)
							["cost"] = {{"i", PONZOS_CREAM, 1}},
						}),
						i(205130, {	-- Technique: Winding Slitherdrake: White Hair (RECIPE!)
							["cost"] = {{"i", VOUCHER, 1}},
						}),
					},
				}),
				n(203610, {	-- Scrybbil
					["coord"] = { 55.8, 55.9, ZARALEK_CAVERN },
					["g"] = {
						i(205178, {	-- Schematic: Mallard Mortar (RECIPE!)
							["cost"] = {{"i", VOUCHER, 1}},
						}),
						i(204844, {	-- Schematic: Polarity Bomb (RECIPE!)
							["cost"] = {{"i", PONZOS_CREAM, 1}},
						}),
					},
				}),
			}),
		})),
	}),
})));