---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	m(ZARALEK_CAVERN, {
		n(ACHIEVEMENTS, {
			ach(17783, {	-- Adventurer of Zaralek Cavern
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(17567),	-- Ancient Stones of Zaralek (automated)
			petbattle(ach(17880, {	-- Battle in Zaralek Cavern
				crit(59352, {	-- To a Land Down Under
					["_quests"] = { 75680 },	-- To a Land Down Under
				}),
				crit(59351, {	-- Are They Not Beautiful?
					["_quests"] = { 75750 },	-- Are They Not Beautiful?
				}),
				crit(59354, {	-- Delver Mardei
					["_quests"] = { 75834 },	-- Delver Mardei
				}),
				crit(59353, {	-- Do you Even Train?
					["_quests"] = { 75835 },	-- Do you Even Train?
				}),
			})),
			ach(18100, {	-- Cavern Clawbbering
				["cost"] = { { "i", 205686, 21 } },	-- 21x Clacking Claw
				["groups"] = {
					i(205904),	-- Vibrant Clacking Claw (TOY!)
					crit(59491, {
						["_npcs"] = { 203515 },	-- Alcanon
					}),
					crit(59492, {
						["_npcs"] = { 203468 },	-- Aquifon
					}),
					crit(59493, {
						-- DB data applies the chest object
					}),
					crit(59494, {
						["_npcs"] = { 204093 },	-- Colossian
					}),
					crit(59495, {
						["_npcs"] = { 203664 },	-- Emberdusk
					}),
					crit(59496, {
						["_npcs"] = { 203660 },	-- Flowfy
					}),
					crit(59497, {
						["_npcs"] = { 203592 },	-- General Zskorro
					}),
					crit(59498, {
						["_npcs"] = { 203477 },	-- Goopal
					}),
					crit(59499, {
						["_npcs"] = { 203627 },	-- Invohq
					}),
					crit(59500, {
						["_npcs"] = { 203646 },	-- Dinn
					}),
					crit(59501, {
						["_npcs"] = { 203625 },	-- Karokta
					}),
					crit(59502, {
						["_npcs"] = { 203466 },	-- Kapraku
					}),
					crit(59503, {
						["_npcs"] = { 203618 },	-- Klakatak
					}),
					crit(59504, {
						["_npcs"] = { 203462 },	-- Kob'rok
					}),
					crit(59505, {
						["_npcs"] = { 200111 },	-- Magtembo
					}),
					crit(59506, {
						["_npcs"] = { 203521 },	-- Professor Gastrinax
					}),
					crit(59507, {
						["_npcs"] = { 203643 },	-- Skornak
					}),
					crit(59508, {
						["_npcs"] = { 203480 },	-- Spinmarrow
					}),
					crit(59509, {
						["_npcs"] = { 203662 },	-- Subterrax
					}),
					crit(59510, {
						["_npcs"] = { 203593 },	-- Underlight Queen
					}),
					crit(59511, {
						["_npcs"] = { 201029 },	-- Viridian King
					}),
				},
			}),
			ach(17517, {	-- Dragon Glyphs: Aberrus Approach
				["coord"] = { 48.0, 4.7, ZARALEK_CAVERN },
			}),
			ach(17516, {	-- Dragon Glyphs: Acidbite Ravine
				["coord"] = { 47.5, 36.9, ZARALEK_CAVERN },
			}),
			ach(17510, {	-- Dragon Glyphs: Glimmerogg
				["coord"] = { 41.7, 80.9, ZARALEK_CAVERN },
			}),
			ach(17512, {	-- Dragon Glyphs: Loamm
				["coord"] = { 54.7, 54.7, ZARALEK_CAVERN },
			}),
			ach(17511, {	-- Dragon Glyphs: Nal ks'kol
				["coord"] = { 62.6, 73.3, ZARALEK_CAVERN },
			}),
			ach(17514, {	-- Dragon Glyphs: Slitherdrake Roost
				["coord"] = { 55.3, 27.9, ZARALEK_CAVERN },
			}),
			ach(17515, {	-- Dragon Glyphs: The Throughway
				["coord"] = { 72.0, 48.4, ZARALEK_CAVERN },
			}),
			ach(17513, {	-- Dragon Glyphs: Zaqali Caldera
				["coord"] = { 30.5, 45.3, ZARALEK_CAVERN },
			}),
			ach(17739, {	-- Embers of Neltharion
				crit(58530, {	-- A Creche Divided
					["sourceQuests"] = { 73156 },	-- Return to Viridia
				}),
				crit(59133, {	-- Breaking Ground
					["sourceQuests"] = { 75644 },	-- Six Hundred Feet Under
				}),
				crit(59134, {	-- Sundered Legacy
					["sourceQuests"] = { 72965 },	-- Aspects of Our Legacy
				}),
				crit(59135, {	-- The Ancient Bargain
					["sourceQuests"] = { 75145 },	-- In the Wake of the Ashes
				}),
				crit(59136, {	-- Inherited Sin
					["sourceQuests"] = { 74563 },	-- Worst of the Worst
				}),
				crit(59137, {	-- Inherited Sin
					["sourceQuests"] = { 74562 },	-- Break Them Out
				}),
				crit(59139, {	-- Inevitable Confrontation
					["sourceQuests"] = { 72930 },	-- Stopping Sarkareth
				}),
				crit(59426, {	-- A Flame, Extinguished
					["sourceQuests"] = { 75417 },	-- Symbol of Hope
				}),
			}),
			ach(17766),		-- Explore Zaralek Cavern
			header(HEADERS.Achievement, 17934, {	-- Family Battler of Zaralek Cavern
				petbattle(ach(17934, {	-- Family Battler of Zaralek Cavern
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						17881,	-- Aquatic Battler of Zaralek Cavern
						17882,	-- Beast Battler of Zaralek Cavern
						17883,	-- Critter Battler of Zaralek Cavern
						17890,	-- Dragonkin Battler of Zaralek Cavern
						17904,	-- Elemental Battler of Zaralek Cavern
						17905,	-- Flying Battler of Zaralek Cavern
						17915,	-- Humanoid Battler of Zaralek Cavern
						17916,	-- Magic Battler of Zaralek Cavern
						17917,	-- Mechanical Battler of Zaralek Cavern
						17918,	-- Undead Battler of Zaralek Cavern
					}},
					["groups"] = {
						i(193377),	-- Gerald (PET!)
					},
				})),
				petbattle(ach(17881, {	-- Aquatic Battler of Zaralek Cavern
					crit(59355, {	-- Explorer Bezzert
						["crs"] = { 201004 },
						["coord"] = { 52.41, 66.03, ZARALEK_CAVERN },
					}),
					crit(59356, {	-- Shinmura
						["crs"] = { 204792 },
						["coord"] = { 38.6, 50.2, ZARALEK_CAVERN },
					}),
					crit(59357, {	-- Delver Mardei
						["crs"] = { 204926 },
						["coord"] = { 65.4, 49.6, ZARALEK_CAVERN },
					}),
					crit(59358, {	-- Trainer Orlogg
						["crs"] = { 204934 },
						["coord"] = { 45.6, 81.6, ZARALEK_CAVERN },
					}),
				})),
				petbattle(ach(17882, {	-- Beast Battler of Zaralek Cavern
					crit(59359, {	-- Explorer Bezzert
						["crs"] = { 201004 },
						["coord"] = { 52.41, 66.03, ZARALEK_CAVERN },
					}),
					crit(59360, {	-- Shinmura
						["crs"] = { 204792 },
						["coord"] = { 38.6, 50.2, ZARALEK_CAVERN },
					}),
					crit(59361, {	-- Delver Mardei
						["crs"] = { 204926 },
						["coord"] = { 65.4, 49.6, ZARALEK_CAVERN },
					}),
					crit(59362, {	-- Trainer Orlogg
						["crs"] = { 204934 },
						["coord"] = { 45.6, 81.6, ZARALEK_CAVERN },
					}),
				})),
				petbattle(ach(17883, {	-- Critter Battler of Zaralek Cavern
					crit(59363, {	-- Explorer Bezzert
						["crs"] = { 201004 },
						["coord"] = { 52.41, 66.03, ZARALEK_CAVERN },
					}),
					crit(59364, {	-- Shinmura
						["crs"] = { 204792 },
						["coord"] = { 38.6, 50.2, ZARALEK_CAVERN },
					}),
					crit(59365, {	-- Delver Mardei
						["crs"] = { 204926 },
						["coord"] = { 65.4, 49.6, ZARALEK_CAVERN },
					}),
					crit(59366, {	-- Trainer Orlogg
						["crs"] = { 204934 },
						["coord"] = { 45.6, 81.6, ZARALEK_CAVERN },
					}),
				})),
				petbattle(ach(17890, {	-- Dragonkin Battler of Zaralek Cavern
					crit(59367, {	-- Explorer Bezzert
						["crs"] = { 201004 },
						["coord"] = { 52.41, 66.03, ZARALEK_CAVERN },
					}),
					crit(59368, {	-- Shinmura
						["crs"] = { 204792 },
						["coord"] = { 38.6, 50.2, ZARALEK_CAVERN },
					}),
					crit(59369, {	-- Delver Mardei
						["crs"] = { 204926 },
						["coord"] = { 65.4, 49.6, ZARALEK_CAVERN },
					}),
					crit(59370, {	-- Trainer Orlogg
						["crs"] = { 204934 },
						["coord"] = { 45.6, 81.6, ZARALEK_CAVERN },
					}),
				})),
				petbattle(ach(17904, {	-- Elemental Battler of Zaralek Cavern
					crit(59371, {	-- Explorer Bezzert
						["crs"] = { 201004 },
						["coord"] = { 52.41, 66.03, ZARALEK_CAVERN },
					}),
					crit(59372, {	-- Shinmura
						["crs"] = { 204792 },
						["coord"] = { 38.6, 50.2, ZARALEK_CAVERN },
					}),
					crit(59373, {	-- Delver Mardei
						["crs"] = { 204926 },
						["coord"] = { 65.4, 49.6, ZARALEK_CAVERN },
					}),
					crit(59374, {	-- Trainer Orlogg
						["crs"] = { 204934 },
						["coord"] = { 45.6, 81.6, ZARALEK_CAVERN },
					}),
				})),
				petbattle(ach(17905, {	-- Flying Battler of Zaralek Cavern
					crit(59375, {	-- Explorer Bezzert
						["crs"] = { 201004 },
						["coord"] = { 52.41, 66.03, ZARALEK_CAVERN },
					}),
					crit(59376, {	-- Shinmura
						["crs"] = { 204792 },
						["coord"] = { 38.6, 50.2, ZARALEK_CAVERN },
					}),
					crit(59377, {	-- Delver Mardei
						["crs"] = { 204926 },
						["coord"] = { 65.4, 49.6, ZARALEK_CAVERN },
					}),
					crit(59378, {	-- Trainer Orlogg
						["crs"] = { 204934 },
						["coord"] = { 45.6, 81.6, ZARALEK_CAVERN },
					}),
				})),
				petbattle(ach(17915, {	-- Humanoid Battler of Zaralek Cavern
					crit(59379, {	-- Explorer Bezzert
						["crs"] = { 201004 },
						["coord"] = { 52.41, 66.03, ZARALEK_CAVERN },
					}),
					crit(59380, {	-- Shinmura
						["crs"] = { 204792 },
						["coord"] = { 38.6, 50.2, ZARALEK_CAVERN },
					}),
					crit(59381, {	-- Delver Mardei
						["crs"] = { 204926 },
						["coord"] = { 65.4, 49.6, ZARALEK_CAVERN },
					}),
					crit(59382, {	-- Trainer Orlogg
						["crs"] = { 204934 },
						["coord"] = { 45.6, 81.6, ZARALEK_CAVERN },
					}),
				})),
				petbattle(ach(17916, {	-- Magic Battler of Zaralek Cavern
					crit(59383, {	-- Explorer Bezzert
						["crs"] = { 201004 },
						["coord"] = { 52.41, 66.03, ZARALEK_CAVERN },
					}),
					crit(59384, {	-- Shinmura
						["crs"] = { 204792 },
						["coord"] = { 38.6, 50.2, ZARALEK_CAVERN },
					}),
					crit(59385, {	-- Delver Mardei
						["crs"] = { 204926 },
						["coord"] = { 65.4, 49.6, ZARALEK_CAVERN },
					}),
					crit(59386, {	-- Trainer Orlogg
						["crs"] = { 204934 },
						["coord"] = { 45.6, 81.6, ZARALEK_CAVERN },
					}),
				})),
				petbattle(ach(17917, {	-- Mechanical Battler of Zaralek Cavern
					crit(59387, {	-- Explorer Bezzert
						["crs"] = { 201004 },
						["coord"] = { 52.41, 66.03, ZARALEK_CAVERN },
					}),
					crit(59388, {	-- Shinmura
						["crs"] = { 204792 },
						["coord"] = { 38.6, 50.2, ZARALEK_CAVERN },
					}),
					crit(59389, {	-- Delver Mardei
						["crs"] = { 204926 },
						["coord"] = { 65.4, 49.6, ZARALEK_CAVERN },
					}),
					crit(59390, {	-- Trainer Orlogg
						["crs"] = { 204934 },
						["coord"] = { 45.6, 81.6, ZARALEK_CAVERN },
					}),
				})),
				petbattle(ach(17918, {	-- Undead Battler of Zaralek Caverm
					crit(59391, {	-- Explorer Bezzert
						["crs"] = { 201004 },
						["coord"] = { 52.41, 66.03, ZARALEK_CAVERN },
					}),
					crit(59392, {	-- Shinmura
						["crs"] = { 204792 },
						["coord"] = { 38.6, 50.2, ZARALEK_CAVERN },
					}),
					crit(59393, {	-- Delver Mardei
						["crs"] = { 204926 },
						["coord"] = { 65.4, 49.6, ZARALEK_CAVERN },
					}),
					crit(59394, {	-- Trainer Orlogg
						["crs"] = { 204934 },
						["coord"] = { 45.6, 81.6, ZARALEK_CAVERN },
					}),
				})),
			}),
			ach(17785, {	-- Que Zara(lek), Zara(lek)
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					17783,	-- Adventurer of Zaralek Cavern
					17739,	-- Embers of Neltharion
					17766,	-- Explore Zaralek Cavern
					17832,	-- Sniffen Around
					17830,	-- Stones Can't Fly!
					17781,	-- The Smell of Money
					17786,	-- Treasures of Zaralek Cavern
					-- #if BEFORE 11.0.7
					17763,	-- There's No Place Like Loamm
					-- #else
					41183,	-- There's No Place Like Loamm
					-- #endif
				}},
				["groups"] = {
					i(205206, {	-- Calescent Shalewing (MOUNT!)
						["timeline"] = { ADDED_10_2_6 },
					}),
				},
			}),
			ach(17781),		-- The Smell of Money
			ach(18361, {	-- To All the Squirrels Burrowed Beneath
				crit(60010, {	-- Hissing Dustmoth
					["crs"] = { 201124 },	-- Hissing Dustmoth
					["coord"] = { 58.45, 74.22, ZARALEK_CAVERN },
				}),
				crit(60009, {	-- Pygmy Dawdler
					["crs"] = { 201120 },	-- Pygmy Dawdler
					["coord"] = { 58.24, 73.05, ZARALEK_CAVERN },
				}),
				crit(60008, {	-- Rock Martin
					["crs"] = { 204673 },	-- Rock Martin
					["coord"] = { 37.96, 71.07, ZARALEK_CAVERN },
				}),
				crit(60007, {	-- Skittering Pincher
					["crs"] = { 204780 },	-- Skittering Pincher
					["coord"] = { 50.16, 76.70, ZARALEK_CAVERN },
				}),
				crit(60011, {	-- Hatchling Dawdler
					["crs"] = { 204785 },	-- Hatchling Dawdler
					["coord"] = { 52.04, 75.21, ZARALEK_CAVERN },
				}),
				crit(60006,	{	-- Aimless Snail
					-- #if BEFORE 10.0.7
					["description"] = "Requires the quest The Slowest Fan Club from Briggul to be active and accepted. Hitting maximum reputation with Glimmerogg Racer means you will need party sync to get this quest to be able to see the critters.",
					["_npcs"] = { 201875 },	-- Aimless Snail	(Using _npcs so the criteria shows inside of the ONLY daily quest which allows it to be completed)
					["coord"] = { 44.91, 77.71, ZARALEK_CAVERN },
					-- #else
					["description"] = "Can also be found during the quest The Slowest Fan Club from Briggul.",
					["crs"] = {
						201875,	-- Aimless Snail (World Quest Version)
						211267,	-- Aimless Snail (Permanent)
					},
					["coord"] = { 44.6, 73.4, ZARALEK_CAVERN },
					-- #endif
				}),
				crit(60005, {	-- Incense Cinder
					["crs"] = { 204801 },	-- Incense Cinder
					["coord"] = { 36.40, 54.17, ZARALEK_CAVERN },
				}),
				crit(60004, {	-- Magma Bubble
					["crs"] = { 204802 },	-- Magma Bubble
					["coord"] = { 36.51, 53.05, ZARALEK_CAVERN },
				}),
				crit(60003, {	-- Phoenix Hatchling
					["crs"] = { 202720 },	-- Phoenix Hatchling
					["coord"] = { 32.15, 51.11, ZARALEK_CAVERN },
				}),
				crit(60002, {	-- Scuttering Bettle
					["crs"] = { 205213 },	-- Scuttering Bettle
					["coord"] = { 50.03, 64.69, ZARALEK_CAVERN },
				}),
			}),
			ach(17786, {	-- Treasures of Zaralek Cavern
				crit(59222, {	-- Ancient Zaqali Chest
					["_quests"] = { 73697 },
				}),
				crit(59220, {	-- Blazing Shadowflame Chest
					["_quests"] = { 72986 },
				}),
				crit(59225, {	-- Bloody Body
					["_quests"] = { 75232 },
				}),
				crit(59226, {	-- Charred Egg
					["_quests"] = { 73706 },
				}),
				crit(59224, {	-- Chest of the Flights
					["_quests"] = { 75187 },
				}),
				crit(59228, {	-- Crystal-Encased Chest
					["_quests"] = { 74986 },
				}),
				crit(59223, {	-- Long-Lost Cache
					["_quests"] = { 75019 },
				}),
				crit(59227, {	-- Old Trunk
					["_quests"] = { 74995 },
				}),
				crit(59221, {	-- Seething Cache
					["_quests"] = { 73410 },
				}),
				crit(59219, {	-- Well-Chewed Chest
					["_quests"] = { 73395 },
				}),
			}),
			pvp(ach(17851)),	-- Tour of Duty: Zaralek Cavern
			ach(18150, {	-- Zaralek Caverns Glyph Hunter
				["sym"] = {{"meta_achievement",
					17517,	-- Dragon Glyphs: Aberrus Approach
					17516,	-- Dragon Glyphs: Acidbite Ravine
					17512,	-- Dragon Glyphs: Loamm
					17510,	-- Dragon Glyphs: Glimmerogg
					17511,	-- Dragon Glyphs: Nal ks'kol
					17514,	-- Dragon Glyphs: Slitherdrake Roost
					17515,	-- Dragon Glyphs: The Throughway
					17513,	-- Dragon Glyphs: Zaqali Caldera
				}},
			}),
			petbattle(ach(17879, {	-- Zaralek Cavern Safari
				crit(59342, {	-- Puddlehopper
					["crs"] = { 203287 },
				}),
				crit(59343, {	-- Rock Martin
					["crs"] = { 203288 },
				}),
				crit(59344, {	-- Yellabon
					["crs"] = { 203289 },
				}),
				crit(59345, {	-- Endmite
					["crs"] = { 203292 },
				}),
				crit(59346, {	-- Stonewhisker
					["crs"] = { 203308 },
				}),
				crit(59347, {	-- Cobbleshell
					["crs"] = { 203310 },
				}),
				crit(59348, {	-- Boulderfang
					["crs"] = { 203311 },
				}),
				crit(59349, {	-- Slabwing
					["crs"] = { 203312 },
				}),
				crit(59350, {	-- Hollow Moth
					["crs"] = { 203313 },
				}),
			})),
		}),
	}),
})));
