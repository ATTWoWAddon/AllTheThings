---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(EASTERN_KINGDOMS, DEADWIND_PASS, {
	lore =
		-- #if BEFORE TBC
		"Deadwind Pass is a haunted forest and canyon on the edges of the Kingdom of Stormwind in the southern Eastern Kingdoms. Serving as borders between Duskwood and Swamp of Sorrows, evil magic can be felt all through the zone, the trees are all but dead, and very few wildlife and ogres can be found in the zone. Travelers are advised to go through the pass fast, as they might fall to the zone's foreboding magic.\n\nAlthough Deadwind Pass has no quests, the mobs there are tuned to level 50-60 players.\n\nTrivia:\nMedivh, the last Guardian, made Deadwind Pass his final place. The tower of Karazhan to the south served as his bastion until his final days.\n\nAlthough Karazhan is sealed off to players, the Karazhan Crypts can be explored by players who kill themselves and traverse the gates as a ghost. The crypt is filled to the brim with disturbing content, the most disturbing being a pool filled with human bodies hanged upside down and roped to chains. This area became known to players as the Upside-Down Sinners.",
		-- #else
		"Deadwind Pass is a haunted forest and canyon on the edges of the Kingdom of Stormwind in the southern Eastern Kingdoms. Serving as borders between Duskwood and Swamp of Sorrows, evil magic can be felt all through the zone, the trees are all but dead, and very few wildlife and ogres can be found in the zone. Travelers are advised to go through the pass fast, as they might fall to the zone's foreboding magic.\n\nTrivia:\nMedivh, the last Guardian, made Deadwind Pass his final place. The tower of Karazhan to the south served as his bastion until his final days.\n\nThe Karazhan Crypts can be explored by players who kill themselves and traverse the gates as a ghost. The crypt is filled to the brim with disturbing content, the most disturbing being a pool filled with human bodies hanged upside down and roped to chains. This area became known to players as the Upside-Down Sinners.",
		-- #endif
	maps = {
		-- #if BEFORE TBC
		KARAZHAN,
		-- #else
		41,	-- Dalaran (Deadwind Pass, prior to move to Broken Isles)
		43,	-- The Master's Cellar
		44,	-- The Master's Cellar
		45,	-- The Master's Cellar
		-- 46,	-- Karazhan Catacombs [not really helpful to show all Deadwind Pass in the Catacombs]
		-- #endif
	},
	icon = 236741,
	groups = {
		n(ACHIEVEMENTS, {
			ach(777),	-- Explore Deadwind Pass
		}),
		battlepets({
			pet(1160, {	-- Arcane Eye (PET!)
				timeline = { ADDED_5_1_0 },
			}),
			pet(439, {	-- Restless Shadeling (PET!)
				description =
					-- #if AFTER 5.1.0
					"Spawns in |cFFFFD700The Master's Cellar|r during the early morning between midnight and 9:00am PST(US)/CEST(EU)/AEST(OCE).",
					-- #else
					"Spawns in |cFFFFD700The Master's Cellar|r during the early morning between midnight and 9:00am realm time.",
					-- #endif
			}),
		}),
		explorationHeader({
			visit_exploration(2560,{coord={52.6,36.8,DEADWIND_PASS}}),	-- Ariden's Camp
			exploration(2697),	-- Deadman's Crossing
			exploration(2562),	-- Karazhan
			visit_exploration(7971,{coord={46.7,69.0,DEADWIND_PASS}}),	-- Karazhan Catacombs
			exploration(2938),	-- Sleeping Gorge
			exploration(2561),	-- The Vice
		}),
		petbattles({
			n(66522, {	-- Lydia Accoste <Grand Master Pet Tamer>
				coord = { 40.2, 76.6, DEADWIND_PASS },
				description = "Lydia's pets are level 19 of the following consecutive pet classes:\n1. Elemental - use Aquatic (powerful) or Critter (tanky) pet.\n2. Undead - use Critter (powerful) or Aquatic (tanky) pet.\n3. Undead - see above.\n\nFor credit towards 'An Awfully Big Adventure', battle with a composition of Elekk Plushie and two strong pets such as Alpine Chipmunk and Alpine Hare.",
				timeline = { ADDED_5_0_4 },
				petBattleLvl = 19,
				groups = {
					q(31916, {	-- Grand Master Lydia Accoste
						sourceAchievement = 6603,	-- Taming Eastern Kingdoms
						isDaily = true,
						groups = {
							i(89125),	-- Sack of Pet Supplies
						},
					}),
				},
			}),
			q(31915, {	-- Grand Master Lydia Accoste
				sourceQuests = {
					31917,	-- A Tamer's Homecoming (A)
					31918,	-- A Tamer's Homecoming (H)
				},
				qg = 66522,	-- Lydia Accoste
				coord = { 40.0, 76.4, DEADWIND_PASS },
				timeline = { ADDED_5_0_4 },
				groups = {
					objective(1, {	-- Defeat Lydia Accoste
						provider = { "n", 66522 },	-- Lydia Accoste
						coord = { 40.0, 76.4, DEADWIND_PASS },
					}),
					i(89125),	-- Sack of Pet Supplies
				},
			}),
			q(31976, {	-- The Returning Champion (A)
				sourceQuests = {
					31915,	-- Grand Master Lydia Accoste
					31897,	-- Grand Master Trixxy
				},
				altQuests = { 31975 },	-- The Returning Champion (Winterspring)
				qg = 66522,	-- Lydia Accoste
				coord = { 40.0, 76.4, DEADWIND_PASS },
				timeline = { ADDED_5_0_4 },
				maps = { STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				isBreadcrumb = true,
			}),
			q(31980, {	-- The Returning Champion (H)
				sourceQuests = {
					31915,	-- Grand Master Lydia Accoste
					31897,	-- Grand Master Trixxy
				},
				altQuests = { 31977 },	-- The Returning Champion (Winterspring)
				qg = 66522,	-- Lydia Accoste
				coord = { 40.0, 76.4, DEADWIND_PASS },
				timeline = { ADDED_5_0_4 },
				maps = { ORGRIMMAR },
				races = HORDE_ONLY,
				isBreadcrumb = true,
			}),
		}),
		-- #if AFTER 7.0.3.21796
		n(QUESTS, {
			q(44154, {	-- The Rite of the Executioner
				sourceQuest = 44083,	-- The Grimoire of the First Necrolyte
				provider = { "o", 254007 },	-- Executioner's Altar
				coord = { 38.7, 73.9, DEADWIND_PASS },
				timeline = { ADDED_7_0_3 },
				classes = { WARLOCK },
			}),
			q(44487, {	-- Waterlogged Tome
				provider = { "o", 258978 },	-- Waterlogged Tome
				coord = { 39.1, 73.7, 45 },
				timeline = { ADDED_7_0_3 },
				lvl = 110,
				groups = {
					i(141355),	-- Waterlogged Tome (QI!)
					crit(33145, {	-- Waterlogged Tome
						achievementID = 11240,	-- Harbinger
					}),
				},
			}),
		}),
		-- #endif
		-- #if AFTER 10.2.5
		n(TREASURES, {
			o(421150, {	-- Carved Eye
				description = "Behind the wooden door",
				coord = { 43.9, 72.8, DEADWIND_PASS },
				timeline = { ADDED_10_2_5 },
				groups = {
					i(212989),	-- Grimoire of the Mana-Gorged Observer (CI!)
				},
			}),
		}),
		-- #endif
		-- #if AFTER TBC
		n(VENDORS, {
			applyclassicphase(TBC_PHASE_ONE, n(18255, {	-- Mage Darius
				coord = { 47.2, 75.0, DEADWIND_PASS },
				groups = {
					i(31401),	-- Design: The Frozen Eye (RECIPE!)
					applyclassicphase(TBC_PHASE_THREE, i(33165, {timeline = {ADDED_2_3_0}})),	-- Formula: Enchant Weapon - Greater Agility (RECIPE!)
					applyclassicphase(TBC_PHASE_THREE, i(33124, {timeline = {ADDED_2_2_0}})),	-- Pattern: Cloak of Darkness (RECIPE!)
					applyclassicphase(TBC_PHASE_THREE, i(33205, {timeline = {ADDED_2_2_0}})),	-- Pattern: Shadowprowler's Chestguard (RECIPE!)
					applyclassicphase(TBC_PHASE_THREE, i(33209, {	-- Recipe: Flask of Chromatic Wonder (RECIPE!)
						timeline = { ADDED_2_2_0, REMOVED_5_0_4 },
					})),
					i(29187),	-- Inscription of Endurance
					-- #if BEFORE CATA
					applyclassicphase(TBC_PHASE_THREE, i(34581, {	-- Mysterious Arrow
						timeline = { REMOVED_4_0_1 },
					})),
					applyclassicphase(TBC_PHASE_THREE, i(34582, {	-- Mysterious Shell
						timeline = { REMOVED_4_0_1 },
					})),
					-- #endif
				},
			})),
		}),
		-- #endif
		n(ZONE_DROPS, {
			i(16246, {	-- Formula: Enchant Bracer - Superior Strength (RECIPE!)
				cr = 7372,	-- Deadwind Warlock
			}),
		}),
	},
});
