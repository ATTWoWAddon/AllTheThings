---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(DORNOGAL, {
		pvp(n(PVP, {
			n(QUESTS, {
				q(83489, {	-- Gathering All Gladiators!
					["provider"] = { "i", 225772 },	-- Artisan's Consortium Advertisement
					["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
					["groups"] = {
						i(210233, {	-- Forged Gladiator's Heraldry
							["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
						}),
					},
				}),
				q(84925, {	-- Rallying All Rapscallions!
					["provider"] = { "i", 229401 },	-- Artisan's Consortium Pamphlet
					["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART },
					["groups"] = {
						i(229390, {	-- Prized Gladiator's Heraldry
							["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART },
						}),
					},
				}),
				q(85229, {	-- Rallying All Rapscallions!
					["provider"] = { "i", 230284 },	-- Artisan's Consortium Pamphlet
					["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH },
					["groups"] = {
						i(230287, {	-- Astral Gladiator's Heraldry x9
							["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH },
						}),
					},
				}),
				q(83711, {	-- Weapons of Conquest
					["provider"] = { "n", 219222 },	-- Lalandi <Conquest Quartermaster>
					["coord"] = { 55.0, 76.1, DORNOGAL },
					["timeline"] = { ADDED_11_0_2, REMOVED_11_0_2 }
				}),
			}),
			n(QUESTS, sharedData({
				["provider"] = { "n", 219260 },	-- Ruffious
				["coord"] = { 58.9, 75.3, DORNOGAL },
				["isWeekly"] = true,
			}, {
				q(80188),	-- Preserving in Arenas
				q(80184),	-- Preserving in Battle
				q(80187),	-- Preserving in Skirmishes
				q(80186),	-- Preserving in War
				q(80185),	-- Preserving Solo
				q(80189),	-- Preserving Teamwork
				q(81796, {	-- Sparks of War: Azj-Kahet
					i(219934),	-- Spark of War (QI!)
				}),
				q(81795, {	-- Sparks of War: Hallowfall
					i(219934),	-- Spark of War (QI!)
				}),
				q(81793, {	-- Sparks of War: Isle of Dorn
					i(219934),	-- Spark of War (QI!)
				}),
				q(81794, {	-- Sparks of War: The Ringing Deeps
					i(219934),	-- Spark of War (QI!)
				}),
				q(86853, {	-- Sparks of War: Undermine
					["timeline"] = { ADDED_11_1_0 },
				}),
				q(90781, {	-- Sparks of War: K'aresh
					["timeline"] = { ADDED_11_2_0 },
				}),
				q(84687, {	-- Against Overwhelming Odds
					["timeline"] = { ADDED_12_0_0 },
				}),
			})),
			n(VENDORS, {
				n(219215, {	-- Hotharn <Competitor's Recipes>
					["coord"] = { 55.5, 77.1, DORNOGAL },
					["groups"] = sharedData({
						["cost"] = { { "c", HONOR, 7500 } },
					}, {
						filter(RECIPES, {
							i(225433),	-- Design: Algari Competitor's Amulet (RECIPE!)
							i(225432),	-- Design: Algari Competitor's Signet (RECIPE!)
							i(225680),	-- Design: Cognitive Bloodstone (RECIPE!)
							i(225681),	-- Design: Determined Bloodstone (RECIPE!)
							i(225679),	-- Design: Enduring Bloodstone (RECIPE!)
							i(225452),	-- Pattern: Algari Competitor's Chain Chainmail (RECIPE!)
							i(225453),	-- Pattern: Algari Competitor's Chain Cowl (RECIPE!)
							i(225458),	-- Pattern: Algari Competitor's Chain Cuffs (RECIPE!)
							i(225454),	-- Pattern: Algari Competitor's Chain Epaulets (RECIPE!)
							i(225457),	-- Pattern: Algari Competitor's Chain Gauntlets (RECIPE!)
							i(225455),	-- Pattern: Algari Competitor's Chain Girdle (RECIPE!)
							i(225456),	-- Pattern: Algari Competitor's Chain Leggings (RECIPE!)
							i(225451),	-- Pattern: Algari Competitor's Chain Treads (RECIPE!)
							i(225437),	-- Pattern: Algari Competitor's Cloth Bands (RECIPE!)
							i(225442),	-- Pattern: Algari Competitor's Cloth Cloak (RECIPE!)
							i(225439),	-- Pattern: Algari Competitor's Cloth Gloves (RECIPE!)
							i(225438),	-- Pattern: Algari Competitor's Cloth Hood (RECIPE!)
							i(225434),	-- Pattern: Algari Competitor's Cloth Leggings (RECIPE!)
							i(225441),	-- Pattern: Algari Competitor's Cloth Sash (RECIPE!)
							i(225435),	-- Pattern: Algari Competitor's Cloth Shoulderpads (RECIPE!)
							i(225436),	-- Pattern: Algari Competitor's Cloth Treads (RECIPE!)
							i(225440),	-- Pattern: Algari Competitor's Cloth Tunic (RECIPE!)
							i(225447),	-- Pattern: Algari Competitor's Leather Belt (RECIPE!)
							i(225443),	-- Pattern: Algari Competitor's Leather Boots (RECIPE!)
							i(225444),	-- Pattern: Algari Competitor's Leather Chestpiece (RECIPE!)
							i(225449),	-- Pattern: Algari Competitor's Leather Gloves (RECIPE!)
							i(225445),	-- Pattern: Algari Competitor's Leather Mask (RECIPE!)
							i(225446),	-- Pattern: Algari Competitor's Leather Shoulderpads (RECIPE!)
							i(225448),	-- Pattern: Algari Competitor's Leather Trousers (RECIPE!)
							i(225450),	-- Pattern: Algari Competitor's Leather Wristwraps (RECIPE!)
							i(225486),	-- Plans: Algari Competitor's Axe (RECIPE!)
							i(225479),	-- Plans: Algari Competitor's Dagger (RECIPE!)
							i(225488),	-- Plans: Algari Competitor's Greatsword (RECIPE!)
							i(225478),	-- Plans: Algari Competitor's Pickaxe (RECIPE!)
							i(225466),	-- Plans: Algari Competitor's Plate Armguards (RECIPE!)
							i(225459),	-- Plans: Algari Competitor's Plate Breastplate (RECIPE!)
							i(225461),	-- Plans: Algari Competitor's Plate Gauntlets (RECIPE!)
							i(225463),	-- Plans: Algari Competitor's Plate Greaves (RECIPE!)
							i(225462),	-- Plans: Algari Competitor's Plate Helm (RECIPE!)
							i(225464),	-- Plans: Algari Competitor's Plate Pauldrons (RECIPE!)
							i(225460),	-- Plans: Algari Competitor's Plate Sabatons (RECIPE!)
							i(225465),	-- Plans: Algari Competitor's Plate Waistguard (RECIPE!)
							i(225483),	-- Plans: Algari Competitor's Scepter (RECIPE!)
							i(225485),	-- Plans: Algari Competitor's Shield (RECIPE!)
							i(225487),	-- Plans: Algari Competitor's Skewer (RECIPE!)
							i(225489),	-- Plans: Algari Competitor's Sword (RECIPE!)
							i(224018),	-- Recipe: Vicious Flask of Classical Spirits (RECIPE!)
							i(224017),	-- Recipe: Vicious Flask of Honor (RECIPE!)
							i(224020),	-- Recipe: Vicious Flask of the Wrecking Ball (RECIPE!)
							i(225471),	-- Schematic: Algari Competitor's Cloth Bracers (RECIPE!)
							i(225467),	-- Schematic: Algari Competitor's Cloth Goggles (RECIPE!)
							i(225472),	-- Schematic: Algari Competitor's Leather Bracers (RECIPE!)
							i(225468),	-- Schematic: Algari Competitor's Leather Goggles (RECIPE!)
							i(225473),	-- Schematic: Algari Competitor's Mail Bracers (RECIPE!)
							i(225469),	-- Schematic: Algari Competitor's Mail Goggles (RECIPE!)
							i(225474),	-- Schematic: Algari Competitor's Plate Bracers (RECIPE!)
							i(225470),	-- Schematic: Algari Competitor's Plate Goggles (RECIPE!)
							i(225482),	-- Schematic: Algari Competitor's Rifle (RECIPE!)
							i(225477),	-- Technique: Algari Competitor's Emblem (RECIPE!)
							i(225476),	-- Technique: Algari Competitor's Insignia of Alacrity (RECIPE!)
							i(225484),	-- Technique: Algari Competitor's Lamp (RECIPE!)
							i(225475),	-- Technique: Algari Competitor's Medallion (RECIPE!)
							i(225480),	-- Technique: Algari Competitor's Pillar (RECIPE!)
							i(225481),	-- Technique: Algari Competitor's Staff (RECIPE!)
						}),
						--
						filter(MISC, {
							i(213778, {	-- Forged Jeweler's Setting
								["cost"] = {
									{ "i", 215236, 3 },	-- Vicious Bloodstone x3
									{ "c", HONOR, 5000 },
								},
								["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
							}),
							i(230425, {	-- Prized Jeweler's Setting
								["cost"] = {
									{ "i", 215236, 3 },	-- Vicious Bloodstone x3
									{ "c", HONOR, 5000 },
								},
								["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART },
							}),
							i(230724, {	-- Astral Jeweler's Setting
								["cost"] = {
									{ "i", 215236, 3 },	-- Vicious Bloodstone x3
									{ "c", HONOR, 5000 },
								},
								["timeline"] = { ADDED_11_2_0_SEASONSTART },
							}),
						}),
						filter(REAGENTS, {
							i(230286, {	-- Astral Aspirant's Heraldry
								["cost"] = { { "c", HONOR, 175 } },
								["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH },
							}),
							i(230285, {	-- Astral Combatant's Heraldry
								["cost"] = { { "c", HONOR, 350 } },
								["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH },
							}),
							i(230287, {	-- Astral Gladiator's Heraldry
								["cost"] = { { "c", CONQUEST, 175 } },
								["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH },
							}),
							i(210232, {	-- Forged Aspirant's Heraldry
								["cost"] = { { "c", HONOR, 175 } },
								["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
							}),
							i(210221, {	-- Forged Combatant's Heraldry
								["cost"] = { { "c", HONOR, 350 } },
								["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
							}),
							i(210233, {	-- Forged Gladiator's Heraldry
								["cost"] = { { "c", CONQUEST, 175 } },
								["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
							}),
							i(229389, {	-- Prized Aspirant's Heraldry
								["cost"] = { { "c", HONOR, 175 } },
								["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART },
							}),
							i(229388, {	-- Prized Combatant's Heraldry
								["cost"] = { { "c", HONOR, 350 } },
								["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART },
							}),
							i(229390, {	-- Prized Gladiator's Heraldry
								["cost"] = { { "c", CONQUEST, 175 } },
								["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART },
							}),
							i(215236, {	-- Vicious Bloodstone
								["cost"] = { { "c", HONOR, 2500 } },
							}),
						}),
					}),
				}),
				n(219212, {	-- Maara <War Mode Supplies>
					["coord"] = { 60.3, 70.0, DORNOGAL },
					["groups"] = {
						filter(MISC, sharedData({
							["cost"] = { { "c", HONOR, 500 } },
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
				}),
				n(219217, {	-- Velerd <Honor Quartermaster>
					["coord"] = { 55.0, 76.5, DORNOGAL },
					["groups"] = {
						i(225739, {	-- Algari Distinguishment
							["cost"] = { { "c", HONOR, 2000 } },
							["groups"] = {
								i(137642),	-- Mark of Honor
							},
						}),
						i(224556, {	-- Glorious Contender's Strongbox
							["cost"] = { { "c", HONOR, 3500 } },
							["sym"] = {
								{"select","npcID",219215},{"pop"},	-- select Hotharn <Competitor's Recipes>
								{"find","filterID",RECIPES},{"pop"},	-- return recipes
							},
						}),
					},
				}),
			}),
		})),
	}),
}));
