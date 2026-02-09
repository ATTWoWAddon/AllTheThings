---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.SILVERMOON_CITY, {
		pvp(n(PVP, {
			n(QUESTS, {
			-- ToDO: Add correct questID
			--	q(85229, {	-- Rallying All Rapscallions!
			--		["provider"] = { "i", 257194 },	-- Artisan's Consortium Flyer
			--		["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
			--		["groups"] = {
			--			i(256608, {	-- Galactic Gladiator's Heraldry x9
			--				["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
			--			}),
			--		},
			--	}),
			}),
			n(QUESTS, sharedData({
				["provider"] = { "n", 254971 },	-- Zerella
				["coord"] = { 36.3, 81.1, MAP.MIDNIGHT.SILVERMOON_CITY },
				["isWeekly"] = true,
			}, {
				q(93499),	-- Enshrouded in Arenas
				q(93506),	-- Enshrouded in Battle
				q(93504),	-- Enshrouded in Skirmishes
				q(93502),	-- Enshrouded Solo
				q(93503),	-- Enshrouded in Teamwork
				q(93505),	-- Enshrouded in War
				q(93425),	-- Sparks of War: Harandar
				q(93424),	-- Sparks of War: Zul'Aman
				q(93426),	-- Sparks of War: Voidstorm
				-- #IF AFTER MID
				-- #IF BEFORE TLT
				pvp(q(47148)),				-- Something Different
				-- #ENDIF
				-- #ENDIF
			})),
			n(VENDORS, {
				n(243225, {	-- Mirvedon <Competitor's Recipes>
					["coord"] = { 34.0, 81.2, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = sharedData({ ["cost"] = {{"c", HONOR, 7500}} }, {
						filter(RECIPES, {
							i(256712),	-- Design: Cognitive Heliotrope (RECIPE!)
							i(256706),	-- Design: Determined Heliotrope (RECIPE!)
							i(256710),	-- Design: Enduring Heliotrope (RECIPE!)
							i(256719),	-- Design: Midnight Competitor's Amulet (RECIPE!)
							i(256702),	-- Design: Midnight Competitor's Signet (RECIPE!)
							i(256646),	-- Pattern: Thalassian Competitor's Chain Cowl (RECIPE!)
							i(256654),	-- Pattern: Thalassian Competitor's Chain Cuffs (RECIPE!)
							i(256644),	-- Pattern: Thalassian Competitor's Chain Epaulets (RECIPE!)
							i(256649),	-- Pattern: Thalassian Competitor's Chain Girdle (RECIPE!)
							i(256643),	-- Pattern: Thalassian Competitor's Chain Grips (RECIPE!)
							i(256641),	-- Pattern: Thalassian Competitor's Chain Leggings (RECIPE!)
							i(256633),	-- Pattern: Thalassian Competitor's Chain Stompers (RECIPE!)
							i(256634),	-- Pattern: Thalassian Competitor's Chain Tunic (RECIPE!)
							i(256880),	-- Pattern: Thalassian Competitor's Cloth Bands (RECIPE!)
							i(256891),	-- Pattern: Thalassian Competitor's Cloth Cloak (RECIPE!)
							i(256888),	-- Pattern: Thalassian Competitor's Cloth Hood (RECIPE!)
							i(256887),	-- Pattern: Thalassian Competitor's Cloth Gloves (RECIPE!)
							i(256889),	-- Pattern: Thalassian Competitor's Cloth Leggings (RECIPE!)
							i(256884),	-- Pattern: Thalassian Competitor's Cloth Sash (RECIPE!)
							i(256890),	-- Pattern: Thalassian Competitor's Cloth Shoulderpads (RECIPE!)
							i(256886),	-- Pattern: Thalassian Competitor's Cloth Treads (RECIPE!)
							i(256885),	-- Pattern: Thalassian Competitor's Cloth Tunic (RECIPE!)
							i(256631),	-- Pattern: Thalassian Competitor's Leather Belt (RECIPE!)
							i(256626),	-- Pattern: Thalassian Competitor's Leather Boots (RECIPE!)
							i(256627),	-- Pattern: Thalassian Competitor's Leather Chestpiece (RECIPE!)
							i(256628),	-- Pattern: Thalassian Competitor's Leather Gloves (RECIPE!)
							i(256632),	-- Pattern: Thalassian Competitor's Leather Mask (RECIPE!)
							i(256630),	-- Pattern: Thalassian Competitor's Leather Shoulderpads (RECIPE!)
							i(256629),	-- Pattern: Thalassian Competitor's Leather Trousers (RECIPE!)
							i(256635),	-- Pattern: Thalassian Competitor's Leather Wristwraps (RECIPE!)
							i(238229),	-- Plans: Thalassian Competitor's Bulwark (RECIPE!)
							i(238232),	-- Plans: Thalassian Competitor's Greatsword (RECIPE!)
							i(238227),	-- Plans: Thalassian Competitor's Knife (RECIPE!)
							i(238228),	-- Plans: Thalassian Competitor's Maxim (RECIPE!)
							i(238226),	-- Plans: Thalassian Competitor's Pickaxe (RECIPE!)
							i(238225),	-- Plans: Thalassian Competitor's Plate Armguards (RECIPE!)
							i(238218),	-- Plans: Thalassian Competitor's Plate Breastplate (RECIPE!)
							i(238220),	-- Plans: Thalassian Competitor's Plate Gauntlets (RECIPE!)
							i(238222),	-- Plans: Thalassian Competitor's Plate Greaves (RECIPE!)
							i(238221),	-- Plans: Thalassian Competitor's Plate Helm (RECIPE!)
							i(238223),	-- Plans: Thalassian Competitor's Plate Pauldrons (RECIPE!)
							i(238219),	-- Plans: Thalassian Competitor's Plate Sabatons (RECIPE!)
							i(238224),	-- Plans: Thalassian Competitor's Plate Waistguard (RECIPE!)
							i(238230),	-- Plans: Thalassian Competitor's Splitter (RECIPE!)
							i(238231),	-- Plans: Thalassian Competitor's Skewer (RECIPE!)
							i(238233),	-- Plans: Thalassian Competitor's Sword (RECIPE!)
							i(257417),	-- Recipe: Vicious Thalassian Flask of Honor (RECIPE!)
							i(257410),	-- Schematic: Thalassian Competitor's Cloth Cuffs (RECIPE!)
							i(257411),	-- Schematic: Thalassian Competitor's Cloth Goggles (RECIPE!)
							i(257371),	-- Schematic: Thalassian Competitor's Cloth Tip-Toes (RECIPE!)
							i(257413),	-- Schematic: Thalassian Competitor's Leather Bands (RECIPE!)
							i(257414),	-- Schematic: Thalassian Competitor's Leather Optics (RECIPE!)
							i(257370),	-- Schematic: Thalassian Competitor's Leather Sliders (RECIPE!)
							i(257369),	-- Schematic: Thalassian Competitor's Mail Footlinks (RECIPE!)
							i(257415),	-- Schematic: Thalassian Competitor's Mail Links (RECIPE!)
							i(257416),	-- Schematic: Thalassian Competitor's Mail Visor (RECIPE!)
							i(257407),	-- Schematic: Thalassian Competitor's Plate Bindings (RECIPE!)
							i(257298),	-- Schematic: Thalassian Competitor's Plate Dunkers (RECIPE!)
							i(257408),	-- Schematic: Thalassian Competitor's Plate Guard (RECIPE!)
							i(268480),	-- Schematic: Thalassian Competitor's Rifle (RECIPE!)
							i(257258),	-- Technique: Thalassian Competitor's Bow (RECIPE!)
							i(257260),	-- Technique: Thalassian Competitor's Emblem (RECIPE!)
							i(257261),	-- Technique: Thalassian Competitor's Insignia of Alacrity (RECIPE!)
							i(257243),	-- Technique: Thalassian Competitor's Lamp (RECIPE!)
							i(257262),	-- Technique: Thalassian Competitor's Medallion (RECIPE!)
							i(257259),	-- Technique: Thalassian Competitor's Pillar (RECIPE!)
							i(268366),	-- Technique: Thalassian Competitor's Staff (RECIPE!)
						}),
						filter(MISC, {
							i(257535, {	-- Galactic Jeweler's Setting
								["cost"] = {
									{"i", 253307, 3},	-- Infused Heliotrope x3
									{"c", HONOR, 5000},
								},
								["timeline"] = { ADDED_12_0_X_LAUNCH, REMOVED_12_1_0 },
							}),
						}),
						filter(REAGENTS, {
							i(256607, {	-- Galactic Aspirant's Heraldry
								["cost"] = {{"c", HONOR, 175}},	-- TODO: fix cost when Blizzard fix it
								["timeline"] = { ADDED_12_0_X_LAUNCH, REMOVED_12_1_0 },
							}),
							i(256559, {	-- Galactic Combatant's Heraldry
								["cost"] = {{"c", HONOR, 175}},
								["timeline"] = { ADDED_12_0_X_LAUNCH, REMOVED_12_1_0 },
							}),
							i(256608, {	-- Galactic Gladiator's Heraldry
								["cost"] = {{"c", CONQUEST, 175}},	-- TODO: fix cost when Blizzard fix it
								["timeline"] = { ADDED_12_0_X_LAUNCH, REMOVED_12_1_0 },
							}),
							i(253307, {	-- Infused Heliotrope
								["cost"] = {{"c", HONOR, 2500}},
							}),
						}),
					}),
				}),
				n(243221, {	-- Captain Dawnrunner <Honor Quartermaster>
					["coord"] = { 34.0, 81.0, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(258534, {	-- Illustrious Contender's Strongbox
							["cost"] = {{"c", HONOR, 3500}},
							["sym"] = {
								{"select","npcID",243225},{"pop"},	-- select Mirvedon <Competitor's Recipes>
								{"find","filterID",RECIPES},{"pop"},	-- return recipes
							},
						}),
						i(262662, {	-- Thalassian Distinguishment
							["cost"] = {{"c", HONOR, 2000}},
							["groups"] = {
								i(137642),	-- Mark of Honor
							},
						}),
					},
				}),
			}),
		})),
	}),
}));
