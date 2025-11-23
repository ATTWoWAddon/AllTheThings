---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MIDNIGHT, {
	m(SILVERMOON_CITY_MID, {
		pvp(n(PVP, {
			n(QUESTS, {
			-- ToDO: Add correct questID
			--	q(85229, {	-- Rallying All Rapscallions!
			--		["provider"] = { "i", 257194 },	-- Artisan's Consortium Flyer
			--		["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--		["groups"] = {
			--			i(256608, {	-- Galactic Gladiator's Heraldry x9
			--				["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--			}),
			--		},
			--	}),
			--		["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--		["groups"] = {
			--			i(256608, {	-- Galactic Gladiator's Heraldry x9
			--				["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--			}),
			--		},
			--	}),
			--		["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--		["groups"] = {
			--			i(256608, {	-- Galactic Gladiator's Heraldry x9
			--				["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--			}),
			--		},
			--	}),
			--		["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--		["groups"] = {
			--			i(256608, {	-- Galactic Gladiator's Heraldry x9
			--				["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--			}),
			--		},
			--	}),
			--		["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--		["groups"] = {
			--			i(256608, {	-- Galactic Gladiator's Heraldry x9
			--				["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--			}),
			--		},
			--	}),
			--		["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--		["groups"] = {
			--			i(256608, {	-- Galactic Gladiator's Heraldry x9
			--				["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--			}),
			--		},
			--	}),
			--		["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--		["groups"] = {
			--			i(256608, {	-- Galactic Gladiator's Heraldry x9
			--				["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--			}),
			--		},
			--	}),
			--		["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--		["groups"] = {
			--			i(256608, {	-- Galactic Gladiator's Heraldry x9
			--				["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--			}),
			--		},
			--	}),
			--		["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--		["groups"] = {
			--			i(256608, {	-- Galactic Gladiator's Heraldry x9
			--				["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--			}),
			--		},
			--	}),
			--		["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--		["groups"] = {
			--			i(256608, {	-- Galactic Gladiator's Heraldry x9
			--				["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--			}),
			--		},
			--	}),
			--		["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--		["groups"] = {
			--			i(256608, {	-- Galactic Gladiator's Heraldry x9
			--				["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--			}),
			--		},
			--	}),
			--		["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--		["groups"] = {
			--			i(256608, {	-- Galactic Gladiator's Heraldry x9
			--				["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--			}),
			--		},
			--	}),
			--		["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--		["groups"] = {
			--			i(256608, {	-- Galactic Gladiator's Heraldry x9
			--				["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--			}),
			--		},
			--	}),
			--		["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--		["groups"] = {
			--			i(256608, {	-- Galactic Gladiator's Heraldry x9
			--				["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--			}),
			--		},
			--	}),
			--		["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--		["groups"] = {
			--			i(256608, {	-- Galactic Gladiator's Heraldry x9
			--				["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--			}),
			--		},
			--	}),
			--		["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--		["groups"] = {
			--			i(256608, {	-- Galactic Gladiator's Heraldry x9
			--				["timeline"] = { ADDED_12_0_0_SEASONSTART, REMOVED_12_1_0 },
			--			}),
			--		},
			--	}),
			}),
			n(QUESTS, sharedData({
				["provider"] = { "n", 254971 },	-- Zerella
				["coord"] = { 36.3, 81.1, SILVERMOON_CITY_MID },
				["isWeekly"] = true,
			}, {
				q(93499),	-- Enshrouded in Arenas
				q(93506),	-- Enshrouded in Battle
				q(93504),	-- Enshrouded in Skirmishes
				q(93503),	-- Enshrouded in Teamwork
			})),
			n(VENDORS, {
				n(243225, {	-- Mirvedon <Competitor's Recipes>
					["coord"] = { 34.0, 81.2, SILVERMOON_CITY_MID },
					["groups"] = sharedData({ ["cost"] = {{"c", HONOR, 7500}} }, {	-- Alex TODO: gold on alpha
						filter(RECIPES, {
							i(256719),	-- Design: Midnight Competitor's Amulet
							i(256702),	-- Design: Midnight Competitor's Signet
							i(256712),	-- Design: Cognitive Heliotrope
							i(256706),	-- Design: Determined Heliotrope
							i(256710),	-- Design: Enduring Heliotrope
							i(256633),	-- Pattern: Thalassian Competitor's Chain Stompers
							i(256634),	-- Pattern: Thalassian Competitor's Chain Chainvest
							i(256641),	-- Pattern: Thalassian Competitor's Chain Leggings
							i(256643),	-- Pattern: Thalassian Competitor's Chain Grips
							i(256644),	-- Pattern: Thalassian Competitor's Chain Epaulets
							i(256646),	-- Pattern: Thalassian Competitor's Chain Cowl
							i(256649),	-- Pattern: Thalassian Competitor's Chain Girdle
							i(256654),	-- Pattern: Thalassian Competitor's Chain Cuffs
							i(256884),	-- Pattern: Thalassian Competitor's Cloth Sash
							i(256885),	-- Pattern: Thalassian Competitor's Cloth Tunic
							i(256886),	-- Pattern: Thalassian Competitor's Cloth Treads
							i(256887),	-- Pattern: Thalassian Competitor's Cloth Gloves
							i(256888),	-- Pattern: Thalassian Competitor's Cloth Hood
							i(256889),	-- Pattern: Thalassian Competitor's Cloth Leggings
							i(256890),	-- Pattern: Thalassian Competitor's Cloth Shoulderpads
							i(256891),	-- Pattern: Thalassian Competitor's Cloth Cloak
							i(256880),	-- Pattern: Thalassian Competitor's Cloth Bands
							i(256626),	-- Pattern: Thalassian Competitor's Leather Boots
							i(256627),	-- Pattern: Thalassian Competitor's Leather Chestpiece
							i(256628),	-- Pattern: Thalassian Competitor's Leather Gloves
							i(256629),	-- Pattern: Thalassian Competitor's Leather Trousers
							i(256630),	-- Pattern: Thalassian Competitor's Leather Shoulderpads
							i(256631),	-- Pattern: Thalassian Competitor's Leather Belt
							i(256632),	-- Pattern: Thalassian Competitor's Leather Mask
							i(256635),	-- Pattern: Thalassian Competitor's Leather Wristwraps
							i(238229),	-- Plans: Thalassian Competitor's Bulwark
							i(238232),	-- Plans: Thalassian Competitor's Greatsword
							i(238227),	-- Plans: Thalassian Competitor's Knife
							i(238228),	-- Plans: Thalassian Competitor's Maxim
							i(238226),	-- Plans: Thalassian Competitor's Pickaxe
							i(238218),	-- Plans: Thalassian Competitor's Plate Breastplate
							i(238219),	-- Plans: Thalassian Competitor's Plate Sabatons
							i(238220),	-- Plans: Thalassian Competitor's Plate Gauntlets
							i(238221),	-- Plans: Thalassian Competitor's Plate Helm
							i(238222),	-- Plans: Thalassian Competitor's Plate Greaves
							i(238223),	-- Plans: Thalassian Competitor's Plate Pauldrons
							i(238224),	-- Plans: Thalassian Competitor's Plate Waistguard
							i(238225),	-- Plans: Thalassian Competitor's Plate Armguards
							i(238230),	-- Plans: Thalassian Competitor's Splitter
							i(238231),	-- Plans: Thalassian Competitor's Skewer
							i(238233),	-- Plans: Thalassian Competitor's Sword
							i(257417),	-- Recipe: Vicious Midnight Flask of Honor
							i(257369),	-- Schematic: Thalassian Competitor's Mail Footlinks
							i(257370),	-- Schematic: Thalassian Competitor's Leather Sliders
							i(257371),	-- Schematic: Thalassian Competitor's Cloth Tip-Toes
							i(257298),	-- Schematic: Thalassian Competitor's Plate Dunkers
							i(257407),	-- Schematic: Thalassian Competitor's Plate Bindings
							i(257408),	-- Schematic: Thalassian Competitor's Plate Guard
							i(257410),	-- Schematic: Thalassian Competitor's Cloth Cuffs
							i(257411),	-- Schematic: Thalassian Competitor's Cloth Goggles
							i(257413),	-- Schematic: Thalassian Competitor's Leather Bands
							i(257414),	-- Schematic: Thalassian Competitor's Leather Optics
							i(257415),	-- Schematic: Thalassian Competitor's Mail Links
							i(257416),	-- Schematic: Thalassian Competitor's Mail Visor
							i(257243),	-- Technique: Thalassian Competitor's Lamp
							i(257258),	-- Technique: Thalassian Competitor's Bow
							i(257259),	-- Technique: Thalassian Competitor's Pillar
							i(257260),	-- Technique: Thalassian Competitor's Emblem
							i(257261),	-- Technique: Thalassian Competitor's Insignia of Alacrity
							i(257262),	-- Technique: Thalassian Competitor's Medallion
						}),--[[ 
						filter(MISC, {
							i(257535, {	-- Galactic Jeweler's Setting
								["cost"] = {
									{"i", 253307, 3},	-- Infused Heliotrope x3
									{"c", HONOR, 5000},
								},
								["timeline"] = { ADDED_12_0_0_LAUNCH, REMOVED_12_1_0 },
							}),
						}),
						filter(REAGENTS, {
							i(256607, {	-- Galactic Aspirant's Heraldry
								["cost"] = {{"c", HONOR, 175}},
								["timeline"] = { ADDED_12_0_0_LAUNCH, REMOVED_12_1_0 },
							}),
							i(256559, {	-- Galactic Combatant's Heraldry
								["cost"] = {{"c", HONOR, 350}},
								["timeline"] = { ADDED_12_0_0_LAUNCH, REMOVED_12_1_0 },
							}),
							i(256608, {	-- Galactic Gladiator's Heraldry
								["cost"] = {{"c", CONQUEST, 175}},
								["timeline"] = { ADDED_12_0_0_LAUNCH, REMOVED_12_1_0 },
							}),
							i(253307, {	-- Infused Heliotrope
								["cost"] = {{"c", HONOR, 2500}},
							}),
						}),]]--
					}),
				}),
				--[[n(219212, {	-- Maara <War Mode Supplies>
					["coord"] = { 60.3, 70.0, DORNOGAL },
					["groups"] = {
						filter(MISC, sharedData({
							["cost"] = {{"c", HONOR, 500}},
						}, {
							i(224044),	-- Devouring Residue
							i(224048),	-- Electric Shock
							i(224043),	-- Famished Residue
							i(224041),	-- Holy Brigade
							i(224045),	-- Kelp Grasp
							i(224046),	-- Sand Tornado
							i(224042),	-- Voracious Residue
							i(224047),	-- Water Blast
							i(224049),	-- Web Pull
						})),
					},
				}),--]]
				n(243221, {	-- Captain Dawnrunner <Honor Quartermaster>
					["coord"] = { 34.0, 81.0, SILVERMOON_CITY_MID },
					["groups"] = {
						i(225739, {	-- Algari Distinguishment
							["cost"] = {{"c", HONOR, 2000}},
							["groups"] = {
								i(137642),	-- Mark of Honor
							},
						}),
						i(224556, {	-- Glorious Contender's Strongbox
							["cost"] = {{"c", HONOR, 3500}},
							["sym"] = {
								{"select","npcID",243225},{"pop"},	-- select Mirvedon <Competitor's Recipes>
								{"find","filterID",RECIPES},{"pop"},	-- return recipes
							},
						}),
					},
				}),
			}),
		})),
	}),
}));
