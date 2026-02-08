---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(AZSUNA, {
			n(WORLD_QUESTS, sharedData({
				["isWorldQuest"] = true,
			}, {
				q(42119, {	-- A Cleansing Cocktail
					i(136859),	-- Fat Bear Liver (QI!)
					o(249704, {	-- Cliffwing Hippogryph Egg
						["coords"] = {
							{ 40.4, 32.9, AZSUNA },
							{ 41.0, 34.6, AZSUNA },
							{ 41.8, 31.4, AZSUNA },
							{ 41.9, 37.7, AZSUNA },
							{ 43.1, 30.0, AZSUNA },
							{ 43.2, 38.1, AZSUNA },
							{ 43.3, 31.8, AZSUNA },
							{ 44.1, 38.0, AZSUNA },
							{ 44.2, 34.4, AZSUNA },
							{ 44.4, 35.7, AZSUNA },
						},
						["groups"] = { i(136860) },	-- Cliffwing Hippogryph Egg (QI!)
					}),
				}),
				q(42024),	-- A Friend of My Enemy
				q(43803),	-- A Giant Murloc Problem
				q(42014),	-- A Tainted Vintage
				q(44784),	-- Advanced Wanding
				q(41545, {	-- Aethril Cluster
					["requireSkill"] = HERBALISM,
				}),
				q(41286, {	-- Aethril Cluster
					["requireSkill"] = HERBALISM,
				}),
				q(42652),	-- Ancient Exemplars
				q(41290, {	-- Aqueous Aethril
					["requireSkill"] = HERBALISM,
				}),
				petbattle(q(42165)),	-- Azsuna Specimens
				q(45069),	-- Barrels o' Fun
				q(45203),	-- Battle for the Ruins (Invasion WQ)
				q(44894),	-- Bloodgazer Swarm!
				q(41495, {	-- Brilliant Leystone Seams
					["requireSkill"] = MINING,
				}),
				q(41481, {	-- Brimstone Destroyer
					["requireSkill"] = MINING,
					["sym"] = {{"select","headerID",191970}},	-- Infernal Brimstone [Rank 3]
				}),
				q(41482, {	-- Brimstone Destroyer
					["requireSkill"] = MINING,
					["sym"] = {{"select","headerID",191970}},	-- Infernal Brimstone [Rank 3]
				}),
				q(41483, {	-- Brimstone Destroyer
					["requireSkill"] = MINING,
					["sym"] = {{"select","headerID",191970}},	-- Infernal Brimstone [Rank 3]
				}),
				q(41529, {	-- Bushy Aethril
					["requireSkill"] = HERBALISM,
				}),
				q(41438, {	-- Charged Leystone Deposits
					["requireSkill"] = MINING,
				}),
				q(46168),	-- Commander Vorlax (Invasion WQ)
				q(43091),	-- DANGER: Arcanor Prime
				q(44189),	-- DANGER: Bestrix
				q(43121),	-- DANGER: Chief Treasurer Jabrill
				q(44187),	-- DANGER: Cinderwing
				q(43175),	-- DANGER: Deepclaw
				q(43059),	-- DANGER: Fjordun
				q(43079),	-- DANGER: Immolian
				q(44190),	-- DANGER: Jade Darkhaven
				q(44191),	-- DANGER: Karthax
				q(44192),	-- DANGER: Lysanis Shadesoul
				q(43098),	-- DANGER: Marblub the Massive
				q(43027),	-- DANGER: Mortiferous
				q(44193),	-- DANGER: Sea King Tidross
				q(43063),	-- DANGER: Stormfeather
				q(43072),	-- DANGER: The Whisperer
				q(44194),	-- DANGER: Torrentius
				q(43040),	-- DANGER: Valakar the Thirsty
				petbattle(q(42146)),	-- Dazed and Confused and Adorable
				q(44054),	-- Demonicide
				q(42276, {	-- Disgusting, but Useful
					i(137330),	-- Manastalker Tendril (QI!)
					o(250267, {	-- Felsurge Egg
						["coords"] = {
							{ 31.8, 44.4, AZSUNA },
							{ 32.1, 41.9, AZSUNA },
							{ 32.4, 42.9, AZSUNA },
							{ 33.0, 44.8, AZSUNA },
							{ 33.2, 43.8, AZSUNA },
							{ 33.3, 41.6, AZSUNA },
							{ 33.9, 42.7, AZSUNA },
							{ 34.0, 45.9, AZSUNA },
							{ 34.0, 46.7, AZSUNA },
							{ 34.4, 42.0, AZSUNA },
							{ 36.1, 42.9, AZSUNA },
						},
						["groups"] = { i(137335) },	-- Felsurge Spider Egg (QI!)
					}),
				}),
				q(46169),	-- Dro'zek (Invasion WQ)
				q(43328),	-- Enigmatic
				q(44049),	-- Evil Has Many Legs
				q(42027),	-- Faronaar in Chaos
				q(42026),	-- Faronaar in Ruin
				q(41323, {	-- Fatty Lion Seal Skin
					["requireSkill"] = SKINNING,
				}),
				q(46161),	-- Felcaller Thalezra (Invasion WQ)
				q(44044),	-- Felled Experiment
				q(41562, {	-- Felhide
					["requireSkill"] = SKINNING,
				}),
				q(41563, {	-- Felhide
					["requireSkill"] = SKINNING,
				}),
				q(41564, {	-- Felhide
					["requireSkill"] = SKINNING,
				}),
				q(41513, {	-- Felwort
					["requireSkill"] = HERBALISM,
				}),
				q(41514, {	-- Felwort
					["requireSkill"] = HERBALISM,
				}),
				q(41515, {	-- Felwort
					["requireSkill"] = HERBALISM,
				}),
				q(41437, {	-- Fine Leystone Deposits
					["requireSkill"] = MINING,
				}),
				q(41289, {	-- Flourishing Aethril
					["requireSkill"] = HERBALISM,
				}),
				q(46166),	-- Garthulak the Crusher (Invasion wq)
				q(41455, {	-- Gleaming Leystone Outcropping
					["requireSkill"] = MINING,
				}),
				q(41434, {	-- Glowing Leystone Deposits
					["requireSkill"] = MINING,
				}),
				q(43804),	-- Hate the Hatecoil
				q(42624),	-- Heads of the Fleet
				q(44737),	-- Helarjar Landing: Grey Shoals
				petbattle(q(42154)),	-- Help a Whelp
				q(41611, {	-- Huge Cursed Queenfish
					["requireSkill"] = FISHING,
				}),
				q(41265, {	-- Huge Cursed Queenfish
					["requireSkill"] = FISHING,
				}),
				q(41610, {	-- Huge Cursed Queenfish
					["requireSkill"] = FISHING,
				}),
				q(45495),	-- Immolian
				q(42277),	-- Interlopers!
				q(42021),	-- Investigation at Mak'rana
				q(41528, {	-- Iridescent Aethril
					["requireSkill"] = HERBALISM,
				}),
				q(46165),	-- Kazruul (Invasion WQ)
				q(46167),	-- Kozrum (Invasion WQ)
				q(42101, {	-- Language of the Lost
					i(136833),	-- Oracle's Scrying Orb (QI!)
					o(249513, {	-- Illegible Writings
						["coords"] = {
							{ 58.3, 53.4, AZSUNA },
							{ 58.8, 54.5, AZSUNA },
							{ 59.0, 54.0, AZSUNA },
							{ 59.4, 52.3, AZSUNA },
							{ 59.9, 54.7, AZSUNA },
							{ 60.2, 53.7, AZSUNA },
							{ 60.5, 54.9, AZSUNA },
						},
						["groups"] = { i(136832) },	-- Illegible Writings (QI!)
					}),
				}),
				q(42211),	-- Leodrath's Kin
				q(43325),	-- Ley Race
				q(42172),	-- Leyhollow Infestation
				q(41498, {	-- Leystone Basilisks
					["requireSkill"] = MINING,
				}),
				q(41501, {	-- Leystone Basilisks
					["requireSkill"] = MINING,
				}),
				q(41500, {	-- Leyworms
					["requireSkill"] = MINING,
				}),
				q(45046),	-- Like the Wind
				q(41527, {	-- Lively Aethril
					["requireSkill"] = HERBALISM,
				}),
				q(41598, {	-- Lively Cursed Queenfish
					["requireSkill"] = FISHING,
				}),
				q(41599, {	-- Lively Cursed Queenfish
					["requireSkill"] = FISHING,
				}),
				q(41264, {	-- Lively Cursed Queenfish
					["requireSkill"] = FISHING,
				}),
				q(41454, {	-- Luminous Leystone Outcropping
					["requireSkill"] = MINING,
				}),
				q(46164),	-- Mal'serus (Invasion WQ)
				q(44786),	-- Midterm: Rune Aptitude
				q(42105, {	-- Mixology Mix-up
					o(249524, {	-- Egg of Gangamesh
						["coord"] = { 51.6, 32.5, AZSUNA },
						["groups"] = { i(136839) },	-- Egg of Gangamesh (QI!)
					}),
					i(136838),	-- Intact Murloc Eye (QI!)
				}),
				q(44048),	-- Nagana Happen
				q(42275),	-- Not On My Watch
				q(46116),	-- On Unhallowed Grounds (Invasion WQ)
				q(41896, {	-- Operation Murloc Freedom
					ach(11475),	-- Mission Accomplished
				}),
				q(42623),	-- Piracy Doesn't Pay
				q(41268, {	-- Queen Queenfish
					["requireSkill"] = FISHING,
				}),
				q(41266, {	-- Raft Fishing
					["requireSkill"] = FISHING,
				}),
				q(42108),	-- Rally the Nightwatchers
				q(42123),	-- Reclaiming Llothien
				q(45058),	-- Release the Wardens (Invasion WQ)
				q(43776),	-- Scouting
				q(43765),	-- Scouting
				q(43801),	-- Shell Out Some Pain
				q(41324, {	-- Silky Prowler Fur
					["requireSkill"] = SKINNING,
				}),
				petbattle(q(42063)),	-- Size Doesn't Matter
				q(41551, {	-- Slab of Bacon
					["requireSkill"] = COOKING,
					["groups"] = { i(135511) },	-- Thick Slab of Bacon (QI!)
				}),
				q(41259, {	-- Slab of Bacon
					["requireSkill"] = COOKING,
					["groups"] = { i(135511) },	-- Thick Slab of Bacon (QI!)
				}),
				q(41552, {	-- Slab of Bacon
					["requireSkill"] = COOKING,
					["groups"] = { i(135511) },	-- Thick Slab of Bacon (QI!)
				}),
				q(41435, {	-- Smooth Leystone Deposits
					["requireSkill"] = MINING,
				}),
				q(41582, {	-- Smooth Sunrunner Hide
					["requireSkill"] = SKINNING,
				}),
				q(44847),	-- Straight From the Source
				q(46162),	-- Subjugator Val'rek (Invasion WQ)
				q(41288),	-- Supplies Needed: Aethril
				q(41315),	-- Supplies Needed: Leystone
				q(41327),	-- Supplies Needed: Stormscales
				q(46170),	-- Thar'gokk (Invasion WQ)
				q(46163),	-- Thaz'gul (Invasion WQ)
				q(42022),	-- The Broken Academy
				q(46146),	-- The Burning Shores (Invasion WQ)
				q(42711),	-- The Eternal Mages
				q(44050),	-- The Felsworn Must Fall
				q(43327),	-- The Magic of Flight
				q(45134),	-- The Soul Harvesters (Invasion WQ)
				petbattle(q(42148)),	-- The Wine's Gone Bad
				q(42112, {	-- The Withered Return
					o(249702, {	-- Stolen Ley Crystals
						["coords"] = {
							{ 43.3, 17.8, AZSUNA },
							{ 43.8, 18.1, AZSUNA },
							{ 45.9, 16.5, AZSUNA },
							{ 46.6, 14.4, AZSUNA },
							{ 46.7, 15.8, AZSUNA },
							{ 47.2, 14.6, AZSUNA },
							{ 47.5, 16.5, AZSUNA },
							{ 47.7, 15.0, AZSUNA },
							{ 49.1, 15.4, AZSUNA },
						},
						["groups"] = { i(136850) },	-- Stolen Ley Crystal (QI!)
					}),
				}),
				q(42018),	-- Those Beyond Redemption
				q(42019, {	-- Tip the Scales
					o_repeated({	-- Stolen Nar'thalas Relic
						o(249464),	-- Stolen Nar'thalas Relic
						o(249466),	-- Stolen Nar'thalas Relic
						o(249467),	-- Stolen Nar'thalas Relic
						i(136822),	-- Stolen Nar'thalas Relic
					}),
				}),
				q(42506),	-- Tomes of Yore
				petbattle(q(42159)),	-- Training with the Nightwatchers
				q(42511),	-- Twisted Souls
				q(41322, {	-- Unscratched Hippogryph Scale
					["requireSkill"] = SKINNING,
				}),
				q(42160),	-- Unwelcome Visitors
				q(41663, {	-- Vantus Rune Work Order: Elerethe Renferal
					["requireSkill"] = INSCRIPTION,
					["groups"] = {
						i(137772),	-- Vantus Rune Technique: Elerethe Renferal [Rank 3] (RECIPE!)
					},
				}),
				q(42636),	-- WANTED: Arcanist Shal'iman
				q(43605),	-- WANTED: Arcanist Shal'iman (rare wq)
				q(42620),	-- WANTED: Arcavellus
				q(43606),	-- WANTED: Arcavellus (rare wq)
				q(43426),	-- WANTED: Brogozog
				q(43607),	-- WANTED: Brogozog (rare wq)
				q(43430),	-- WANTED: Captain Volo'ren
				q(43608),	-- WANTED: Captain Volo'ren (rare wq)
				q(43428),	-- WANTED: Doomlord Kazrok
				q(43609),	-- WANTED: Doomlord Kazrok (rare wq)
				q(43427),	-- WANTED: Infernal Lord
				q(43610),	-- WANTED: Infernal Lord (rare wq)
				q(42631),	-- WANTED: Inquisitor Tivos
				q(43611),	-- WANTED: Inquisitor Tivos (rare wq)
				q(43432),	-- WANTED: Normantis the Deposed
				q(43612),	-- WANTED: Normantis the Deposed (rare wq)
				q(43429),	-- WANTED: Syphonus
				q(43613),	-- WANTED: Syphonus (rare wq)
				q(42633),	-- WANTED: Vorthax
				q(43614),	-- WANTED: Vorthax (rare wq)
				q(43431),	-- WANTED: Warbringer Mox'na
				q(43615),	-- WANTED: Warbringer Mox'na (rare wq)
				q(43802),	-- Watery Graves
				q(46263),	-- Weaving Fel Webs (Invasion WQ)
				q(42274),	-- Won't Anyone Think of the Whelps?
				q(41287, {	-- Work Order: Aethril
					["requireSkill"] = HERBALISM,
				}),
				q(41651, {	-- Work Order: Azsunite Pendant
					["requireSkill"] = JEWELCRAFTING,
					["groups"] = {
						i(137843),	-- Design: Azsunite Pendant [Rank 3] (RECIPE!)
					},
				}),
				q(41639, {	-- Work Order: Battlebound Spaulders
					["requireSkill"] = LEATHERWORKING,
					["groups"] = {
						i(137914),	-- Pattern: Battlebound Spaulders [Rank 3] (RECIPE!)
					},
				}),
				q(41675, {	-- Work Order: Blink-Trigger Headgun
					["requireSkill"] = ENGINEERING,
					["groups"] = {
						i(137711),	-- Schematic: Blink-Trigger Headgun [Rank 3] (RECIPE!)
					},
				}),
				q(41267, {	-- Work Order: Cursed Queenfish
					["requireSkill"] = FISHING,
				}),
				q(41657, {	-- Work Order: Draughts of Raw Magic
					["requireSkill"] = ALCHEMY,
					["groups"] = {
						i(127920),	-- Recipe: Draught of Raw Magic [Rank 2] (RECIPE!)
					},
				}),
				q(41311, {	-- Work Order: Leystone
					["requireSkill"] = MINING,
				}),
				q(41633, {	-- Work Order: Leystone Greaves (WQ)
					["requireSkill"] = BLACKSMITHING,
					["groups"] = {
						i(123931),	-- Plans: Leystone Greaves [Rank 3] (RECIPE!)
					},
				}),
				q(41645, {	-- Work Order: Silkweave Epaulets
					["requireSkill"] = TAILORING,
					["groups"] = {
						i(137963),	-- Pattern: Silkweave Epaulets [Rank 3] (RECIPE!)
					},
				}),
				q(41326, {	-- Work Order: Stormscales
					["requireSkill"] = SKINNING,
				}),
				q(41669, {	-- Work Order: Word of Critical Strike
					["requireSkill"] = ENCHANTING,
					["groups"] = {
						i(128596),	-- Formula: Enchant Ring - Word of Critical Strike [Rank 3] (RECIPE!)
					},
				}),
				q(44788),	-- Work Study: Bestiaries of Azsuna
			})),
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	m(BROKEN_ISLES, {
		m(AZSUNA, {
			n(WORLD_QUESTS, {
				q(43961),	-- Azsuna - WQ rare: Bestrix
				q(44882),	-- Azsuna - WQ rare: Bloodgazer Matriarch
				q(43960),	-- Azsuna - WQ rare: Cinderwing
				q(42699),	-- Azsuna - WQ rare: Coura, Mistress of Arcana
				q(45489),	-- Azsuna - WQ rare: Deepclaw
				q(45499),	-- Azsuna - WQ rare: Fjordun
				q(45516),	-- Azsuna - WQ rare: Mortiferous
				q(45497),	-- Azsuna - WQ rare: Stormfeather
				q(44035),	-- Azsuna - WQ rare: Torrentius
				q(45492),	-- Marlblub the Massive - triggered during WQ (questID 43098)
			}),
		}),
	}),
})));
