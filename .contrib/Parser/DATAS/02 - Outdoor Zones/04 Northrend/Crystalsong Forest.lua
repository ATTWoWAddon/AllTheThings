---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(NORTHREND, applyclassicphase(WRATH_PHASE_ONE, {
		m(CRYSTALSONG_FOREST, {
			["lore"] = "Crystalsong Forest is a tranquil forest in the center of Northrend, from which Dalaran floats above. Originally intended to be the site of the Argent Tournament, it is a peaceful zone with hardly any quests.",
			["icon"] = 236735,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(1457),	-- Explore Crystalsong Forest
				}),
				battlepets({
					["sym"] = {{"select","speciesID",
						385,	-- Mouse (PET!)
						378,	-- Rabbit (PET!)
						379,	-- Squirrel (PET!)
					}},
				}),
				explorationHeader({
					exploration(4553),	-- Forlorn Woods
					visit_exploration(4554,{coord={73.0,57.4,CRYSTALSONG_FOREST}}),	-- Ruins of Shandaral
					exploration(4558),	-- Sunreaver's Command
					exploration(4555),	-- The Azure Front
					exploration(4552),	-- The Decrepit Flow
					visit_exploration(4549,{coord={9.40,35.2,CRYSTALSONG_FOREST}}),	-- The Great Tree
					visit_exploration(4550,{coord={48.4,56.7,CRYSTALSONG_FOREST}}),	-- The Mirror of Twilight
					visit_exploration(4551,{coord={19.4,27.8,CRYSTALSONG_FOREST}}),	-- The Twilight Rivulet
					exploration(4557),	-- The Unbound Thicket
					exploration(4556),	-- Violet Stand
					exploration(4559),	-- Windrunner's Overlook
				}),
				n(PROFESSIONS, {
					prof(COOKING, {
						i(43148, {	-- Crystalsong Carrot (QI!)
							["provider"] = { "o", 192828 },	-- Crystalsong Carrot
						}),
					}),
				}),
				n(FLIGHT_PATHS, {
					fp(337, {	-- Sunreaver's Command
						["cr"] = 30269,	-- Skymaster Baeric <Dragonhawk Master>
						["coord"] = { 78.4, 50.2, CRYSTALSONG_FOREST },
						["races"] = HORDE_ONLY,
					}),
					fp(336, {	-- Windrunner's Overlook
						["cr"] = 30271,	-- Galendror Whitewing <Hippogryph Master>
						["coord"] = { 72.0, 80.8, CRYSTALSONG_FOREST },
						["races"] = ALLIANCE_ONLY,
					}),
				}),
				petbattles({
					n(66636, {	-- Nearly Headless Jacob <Master Pet Tamer>
						["coord"] = { 50.2, 59.0, CRYSTALSONG_FOREST },
						["description"] = "Jacob's pets are level 25 of the following consecutive pet classes:\n1. Undead - use Critter (powerful) or Aquatic (tanky) pet.\n2. Undead - see above.\n3. Undead - see above.\n\nFor credit towards 'An Awfully Big Adventure', battle with a composition of Elekk Plushie and two strong pets such as Biletoad (Tongue Lash/Cleansing Rain/Swarm of Flies) and Huge Toad (Tongue Lash/Healing Wave/Swarm of Flies).",
						["timeline"] = { ADDED_5_0_4 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(31932, {	-- Nearly Headless Jacob
								["sourceAchievement"] = 6605,	-- Taming Northrend
								["timeline"] = { ADDED_5_0_4 },
								["isDaily"] = true,
							}),
						},
					}),
				}),
				n(SPECIAL, {
					applyclassicphase(WRATH_PHASE_TWO, i(45000, {	-- Winter Hyacinth
						["description"] = "Can be found beneath the Ironwall Dam seperating Icecrown from Crystalsong Forest.",
						["provider"] = { "o", 194213 },	-- Winter Hyacinth
						["coords"] = {
							{ 18.5, 15.7, CRYSTALSONG_FOREST },
							{ 71.0, 73.8, ICECROWN },
						},
						["_allowObjectProvider"] = true,
					})),
				}),
				n(ZONE_DROPS, {
					applyclassicphase(WRATH_PHASE_TWO, i(45005, {	-- Everburning Ember
						["coord"] = { 55.6, 75.0, CRYSTALSONG_FOREST },
						["cr"] = 33289,	-- Lord Everblaze
					})),
					applyclassicphase(WRATH_PHASE_TWO, i(45080, {	-- Large Femur
						["coord"] = { 37.6, 57.8, CRYSTALSONG_FOREST },
						["cr"] = 33499,	-- Skeletal Woodcutter
					})),
				}),
			},
		}),
	})),
});
