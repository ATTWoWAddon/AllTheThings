---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.RIVERGLADES, {
	lore = "A sprawling landscape in the Eastern Kingdom which shifts from lush hillsides to ruined keeps of old.",
	timeline = { TIMELINE.ADDED_1_60_1 },
	icon = 1032150,
	groups = {
		n(ACHIEVEMENTS, {
			ach(62354),	-- Explore Riverglades
		}),
		n(EXPLORATION, {
			exploration(16726),	-- Bolder'ok
			exploration(16737),	-- Bristle Hills
			exploration(16734),	-- Elbrim's Farm
			exploration(16724),	-- Farholde Keep
			exploration(17780),	-- Krol'dok Stronghold
			exploration(16735),	-- Meadowsbrook
			exploration(16727),	-- Powderfuse Port
			exploration(16743),	-- Rog'mar
			exploration(16723),	-- Sunnyglade
			exploration(16729),	-- Terral's Watch
			exploration(16736),	-- Turner's Logging Camp
			exploration(16685),	-- Twilight's Shroud
			exploration(16725),	-- Wheeler's Grange
			exploration(16731),	-- Windstead
		}),
		n(FACTIONS, {
			faction(2826, {	-- Brotherhood of the Horse
				races = ALLIANCE_ONLY,
			}),
			faction(2827),	-- Powderfuse
		}),
		n(FLIGHT_PATHS, {
			fp(3276, {	-- Farholde Keep, Riverglades
				cr = 257087,	-- Gretchen Mayberry <Gryphon Master>
				coord = { 60.6, 81.6, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
			}),
		}),
		n(PROFESSIONS, {
			n(260562, {	-- Melbin Powderfuse <Master Goblin Engineer>
				coord = { 77.8, 50.8, MAP.RIVERGLADES },
				groups = ENGINEERING_RECIPES.GOBLIN_ENGINEERING,
			}),
		}),
		n(VENDORS, {
			n(259962, {	-- Fimbo Greasemitz
				coord = { 79.0, 54.2, MAP.RIVERGLADES },
				groups = {
					i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
					i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
				},
			}),
			n(260566, {	-- Fizzix Boomshot <Gunsmith>
				["coord"] = { 78.6, 53.6, MAP.RIVERGLADES },
				["groups"] = {
					i(18650),	-- Schematic: EZ-Thro Dynamite II (RECIPE!)
				},
			}),
			n(255897, { -- Friz Frazzlespark <Specialty Goods>
				coord = { 77.1, 52.9, MAP.RIVERGLADES },
				sym = {{ "select", "itemID", 
					-- Weapons
					2520, -- Broadsword
					2521, -- Flamberge
					2522, -- Crescent Axe
					2523, -- Bullova
					2524, -- Truncheon
					2525, -- War Hammer
					2526, -- Main Gauche
					2527, -- Battle Staff
					-- Poison Supplies
					-- Not included.
				}},
				groups = bubbleDownClassicRep(2827, {	-- Powderfuse
					{	-- Neutral
						
					}, {	-- Friendly
						i(276200), -- Crawler's Clackers
						i(276202), -- Disengagement Ring
						i(276201), -- Misplaced Pantaloons
					}, {	-- Honored
						i(276203), -- Primitive Fishing Pole
						i(276204), -- Thrash's Trash
					}, {	-- Revered
						i(276199), -- Haughty Fellow's Monocle
					}, {	-- Exalted
					},
				}),
			}),
			n(272435, { -- Goren Grayfellow <Armorer>
				coord = { 37.7, 76.0, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				sym = {{ "select", "itemID",
					2417, -- Augmented Chain Vest
					2419, -- Augmented Chain Belt
					2418, -- Augmented Chain Leggings
					2420, -- Augmented Chain Boots
					2421, -- Augmented Chain Bracers
					2422, -- Augmented Chain Gloves
					3891, -- Augmented Chain Helm
					17189, -- Metal Buckler
					2448, -- Heavy Pavise
					2429, -- Russet Vest
					3593, -- Russet Belt
					2431, -- Russet Pants
					2432, -- Russet Boots
					3594, -- Russet Bracers
					2434, -- Russet Gloves
					3889, -- Russet Hat
					2463, -- Studded Doublet
					2464, -- Studded Belt
					2465, -- Studded Pants
					2467, -- Studded Boots
					2468, -- Studded Bracers
					2469, -- Studded Gloves
					3890, -- Studded Hat
				}},
			}),
			n(260487, { -- Gritta Chumwater <Fisherman>
				coord = { 78.4, 55.1, MAP.RIVERGLADES },
				groups = {
					i(6330),	-- Recipe: Bristle Whisker Catfish (RECIPE!)
					i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
					i(271657),	-- Fresh Chum
				},
			}),
			n(255895, {	-- Grizzek <General Goods>
				coord = { 76.6, 53.3, MAP.RIVERGLADES },
				groups = {
					i(16767),	-- Recipe: Undermine Clam Chowder (RECIPE!)
				},
			}),
			n(255894, {	-- Innkeeper Zizplink <Innkeeper>
				coord = { 78.8, 54.0, MAP.RIVERGLADES },
				groups = {
					i(18046),	-- Recipe: Tender Wolf Steak (RECIPE!)
				},
			}),
			n(260565, {	-- Kor'gar <Engineering Supplies>
				coord = { 77.6, 50.8, MAP.RIVERGLADES },
				groups = {
					i(16046),	-- Schematic: Masterwork Target Dummy (RECIPE!)
					i(16047),	-- Schematic: Thorium Tube (RECIPE!)
				},
			}),
			n(260560, {	-- Fimbo Greasemitz <Poison Vendor>
				coord = { 76.8, 51.1, MAP.RIVERGLADES },
				groups = {
					i(271654),	-- Expired Poison
				},
			}),
			n(263326, {	-- Madam Swyndle <Agent of the Black Market>
				coord = { 78.3, 51.8, MAP.RIVERGLADES },
				sym = { SymSelector.select("BMAH") },	-- Select BMAH header
			}),
			n(259860, {	-- Martha Wellsworth <General Goods>
				coord = { 64.2, 84.0, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				groups = {
					i(251460),	-- Plans: Mithril Warhammer (RECIPE!)
					i(274977),	-- Recipe: Plain Ol' Paletusk (RECIPE!)
				},
			}),
			n(272646, {	-- Miranda Turner <Cooking Supplier>
				coord = { 63.6, 82.6, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				groups = {
					i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
					i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
				},
			}),
			n(263384, { -- Mister Graphed
				coord = { 78.1, 51.9, MAP.RIVERGLADES },
				groups = {
					i(271871, { -- Gift of Galloping
						cost = 1500000,	-- 150g
					}),
					i(12363), -- Arcane Crystal
					i(249425), -- Bauxite
					i(13468), -- Black Lotus
					i(248822), -- Death Lotus
					i(248819), -- Fel Crystal
					i(249399), -- Frilled Lichen
					i(249426), -- Pitchblende
					i(249427), -- Pristine Leather
					i(249428), -- Pristine Hide
					i(249429), -- Pristine Scale
					i(249391), -- Pyrite
					i(249424), -- Rosecap
					i(249274), -- Stranglevine
					i(248820), -- Torbernite
				},
			}),
			n(259861, { -- Paige Armstrong
				coord = { 64.3, 82.0, MAP.RIVERGLADES },
				races = ALLIANCE_ONLY,
				sym = {{ "select", "itemID",
					2429, -- Russet Vest
					3593, -- Russet Belt
					2431, -- Russet Pants
					2432, -- Russet Boots
					3594, -- Russet Bracers
					2434, -- Russet Gloves
					3889, -- Russet Hat
					2463, -- Studded Doublet
					2464, -- Studded Belt
					2465, -- Studded Pants
					2467, -- Studded Boots
					2468, -- Studded Bracers
					2469, -- Studded Gloves
					3890, -- Studded Hat
					2417, -- Augmented Chain Vest
					2419, -- Augmented Chain Belt
					2418, -- Augmented Chain Leggings
					2420, -- Augmented Chain Boots
					2421, -- Augmented Chain Bracers
					2422, -- Augmented Chain Gloves
					3891, -- Augmented Chain Helm
					17189, -- Metal Buckler
					2448, -- Heavy Pavise
					2520, -- Broadsword
					2521, -- Flamberge
					2522, -- Crescent Axe
					2523, -- Bullova
					2524, -- Truncheon
					2525, -- War Hammer
					2526, -- Main Gauche
					2527, -- Battle Staff
				}},
			}),
			n(6568, {	-- Vizzklick <Tailoring Supplies>
				coord = { 77.3, 51.3, MAP.RIVERGLADES },
				groups = {
					i(7088),	-- Pattern: Crimson Silk Robe (RECIPE!)
					i(21358),	-- Pattern: Soul Pouch (RECIPE!)
					i(253665),	-- Pattern: Linen Reagent Bag (RECIPE!)
					i(253668),	-- Pattern: Woolen Reagent Bag (RECIPE!)
				},
			}),
		}),
	},
});
