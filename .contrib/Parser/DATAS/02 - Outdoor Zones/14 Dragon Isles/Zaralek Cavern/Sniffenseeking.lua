---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

SNIFFENSEEKING = createHeader({
	readable = "Sniffenseeking",
	icon = 648644,
	text = {
		en = "Sniffenseeking",
		de = "Schnüffelsuchen",
		es = "Olfatobúsqueda",
		-- TODO: mx = "",
		fr = "Recherches olfactives",
		it = "Il Fiutatutto",
		ko = "냄새 추적",
		pt = "Busca farejante",
		ru = "Нюхорысканье",
		cn = "嗅味探寻",
		-- TODO: tw = "",
	},
});

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	m(ZARALEK_CAVERN, {
		n(SNIFFENSEEKING, {
			["cost"] = {
				{ "i", 205982, 1 },	-- 1x Lost Dig Map
				{ "i", 205984, 1 },	-- 1x Bartered Dig Map
			},
			["crs"] = { 201426 },	-- Myrrit
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(18284, {	-- A Niffen's Best Buddy
						["sym"] = {{"meta_achievement",
							17833,	-- Sniffen Sage
							18257,	-- Can You Dig It?
							18271,	-- He'sSss All Mine
						}},
						["groups"] = {
							title(507),	-- <Name>, Sniffenseeker
						},
					}),
					ach(18257, {	-- Can You Dig It?
						["_noautomation"] = true,	-- links a DNT creature
					}),
					ach(18271, {	-- He'sSss All Mine
						["provider"] = { "i", 205151 },	-- Salverun
					}),
					ach(18255, {	-- Proof of Myrrit [_quests handled by AchievementDB]
						crit(59744),	-- Vertical Anomaly
						crit(59745),	-- Flapping and Screaming
						crit(59746),	-- Scratch and Sniff
						crit(59755),	-- Element Whispers
						crit(59747),	-- Successful Interventions
						crit(59749),	-- Those Rascally Worms
						crit(59750),	-- Your Weight in Gold
						crit(59751),	-- Sneak and Sniff
						crit(59752),	-- The Living Drill
						crit(59754),	-- Thieving Critters
						crit(59753),	-- Making Scents
						crit(59756),	-- Living Statue
						crit(59757),	-- Heart of Iron
						crit(59758),	-- Liars in Light
						crit(59759),	-- Frostfire Finesse
						crit(59760),	-- Liars of Spirit
					}),
					ach(17832, {	-- Sniffen Around
						-- not using partial_achievement since there are not actual Criteria generated for Sniffen Sage
						["sym"] = {{"select","achievementID",17833},{"pop"}},	-- Sniffen Sage
					}),
					ach(17833, {	-- Sniffen Sage
						["sym"] = {{"select","questID",
							75765,	-- Liquid Art
							75766,	-- Ruby in the Rough
							75767,	-- Good Time Boy
							75768,	-- Lucky Ducky
							75769,	-- Drawing a Blank
							75770,	-- A Glass of Bubbly
							75771,	-- Incense Replay
							75772,	-- Flask Manage
							75773,	-- Little Blank Book
						},{"prune"}},	-- prune the sub-groups of these Quests
					}),
				}),
				n(BONUS_OBJECTIVES, sharedData({ ["repeatable"] = true }, {
					q(76015, {	-- Heart of Iron
						["groups"] = {
							i(205939, {_wipe={"spellID"}}),	-- Iron Titan Key
						},
					}),
					q(76084, {	-- Frostfire Finesse
						["coord"] = { 60.1, 54.6, ZARALEK_CAVERN },
						["groups"] = {
							i(206002),	-- Flame-Engulfed Key Fragment
							i(206001),	-- Frost-Encased Key Fragment
							i(206000),	-- Frostfire Key
						},
					}),
					q(75619, {	-- Thieving Critters
						["coord"] = { 56.6, 58.5, ZARALEK_CAVERN },
						["groups"] = {
							i(205185),	-- Muddy Key
							i(205186),	-- Sticky Key
						},
					}),
					q(75397, {	-- Those Rascally Worms
						["coord"] = { 57.3, 51.4, ZARALEK_CAVERN },
						["groups"] = {
							i(202180),	-- Pipsee Cheese Snack (QI!)
						},
					}),
					q(75390, {	-- Vertical Anomaly
						["coord"] = { 54.6, 49.5, ZARALEK_CAVERN },
						["groups"] = {
							i(203655),	-- Waterlogged Key
						},
					}),
					q(75393, {	-- Making Scents
						["coord"] = { 58.0, 54.6, ZARALEK_CAVERN },
					}),
					q(75996, {	-- Your Weight in Gold
						["coord"] = { 58.5, 51.8, ZARALEK_CAVERN },
					}),
					q(75620, {	-- Liars in Light
						["coord"] = { 60.1, 54.6, ZARALEK_CAVERN },
						["groups"] = {
							i(205202),	-- Small Key
						},
					}),
					q(75516, {	-- Successful Interventions
						["coord"] = { 57.3, 49.4, ZARALEK_CAVERN },
					}),
					q(75234, {	-- Scratch and Sniff
						["coord"] = { 54.6, 52.6, ZARALEK_CAVERN },
						["groups"] = {
							i(205277),	-- Stolen Key
						},
					}),
					q(75621, {	-- Element Whispers
						["coord"] = { 55.9, 52.0, ZARALEK_CAVERN },
						["groups"] = {
							i(205689),	-- Champion's Crystal
						},
					}),
					q(75517, {	-- Sneak and Sniff
						["coord"] = { 56.9, 51.4, ZARALEK_CAVERN },
						["groups"] = {
							i(205412),	-- Jangly Key
						},
					}),
					q(76081, {	-- Liars of Spirit
						["coord"] = { 60.1, 54.6, ZARALEK_CAVERN },
						["groups"] = {
							i(205990),	-- Fierce Key
						},
					}),
					q(76014, {  -- Living Statue
						["groups"] = {
							i(205938),	-- Heated Titan Key
						},
					}),
					q(76027, {	-- Flapping and Screaming
						["coord"] = { 54.6, 49.5, ZARALEK_CAVERN },
						["groups"] = {
							o(402578, {	-- Glowing Key
								i(205969),	-- Glowing Key
							}),
						},
					}),
					q(76016, {  -- The Living Drill
						["groups"] = {
							i(205941),	-- Spit-covered Key
						},
					}),
				})),
				-- Quest Starting Items... apparently random on any digs
				n(DROPS, sharedData({
					["sharedDescription"] = "Randomly available to pick up during a Dig.",
				},{
					i(205913),	-- Blank Notebook
					i(205910),	-- Bubbling Elixir
					i(205901),	-- Crunchy Beetle
					i(205902),	-- Deepflayer Claw
					i(205366),	-- Dripping Clay Pot
					i(205906),	-- Feathered Friend
					i(205912),	-- Leather-Wrapped Flask
					i(205911),	-- Mysterious Incense
					i(205900),	-- Shimmering Draconic Gem
					i(205907),	-- Soaked Totem
					i(205909),	-- Stretched Canvas
					i(205795),	-- Wriggling Worm
				})),
				n(QUESTS, {
					-- Intro Quests --
					q(74876, {	-- The Buddy System
						["sourceQuests"] = { 75644 },	-- Six Hundred Feet Under
						["provider"] = { "n", 201426 },	-- Myrrit
						["coord"] = { 55.6, 57.4, ZARALEK_CAVERN },
					}),
					q(75459, {	-- Brand New Digs
						["coord"] = { 55.9, 49.9, ZARALEK_CAVERN },
						["groups"] = {
							i(204867),	-- Metal Key
						},
					}),
					q(74877, {	-- Best Friends
						["sourceQuests"] = {
							74876,	-- The Buddy System
							DF_ACCOUNT_ZC_UNLOCK_QUEST,
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "n", 201426 },	-- Myrrit
						["coord"] = { 55.6, 57.4, ZARALEK_CAVERN },
						["cost"] = { { "i", 204791, 1 } },	-- 1x Squishy Snack
					}),
					q(74953, {	-- The Heavy Crown
						["sourceQuests"] = { 74877 },	-- Best Friends
						["provider"] = { "n", 201426 },	-- Myrrit
						["coord"] = { 55.6, 57.4, ZARALEK_CAVERN },
					}),
					q(74878, {	-- Old Friends, Dear Friends
						["sourceQuests"] = { 74953 },	-- The Heavy Crown
						["provider"] = { "n", 202766 },	-- Myrrit
						["coord"] = { 54.6, 54.4, ZARALEK_CAVERN },
					}),
				}),
				n(QUESTS, sharedData({
					["minReputation"] = { FACTION_LOAMM_NIFFEN, 9 },
				}, {
					-- Sniffen Sage --
					q(75772, {	-- Flask Manage
						["provider"] = { "i", 205912 },	-- Leather-Wrapped Flask
						["coord"] = { 58.5, 56.4, ZARALEK_CAVERN },
					}),
					q(75770, {	-- A Glass of Bubbly
						["provider"] = { "i", 205910 },	-- Bubbling Elixir
						["coord"] = { 56.7, 52.9, ZARALEK_CAVERN },
					}),
					q(75769, {	-- Drawing a Blank
						["provider"] = { "i", 205909 },	-- Stretched Canvas
						["coord"] = { 58.5, 51.5, ZARALEK_CAVERN },
					}),
					q(75771, {	-- Incense Replay
						["provider"] = { "i", 205911 },	-- Mysterious Incense
						["coord"] = { 56.0, 57.5, ZARALEK_CAVERN },
					}),
					q(75767, {	-- Good Time Boy
						["provider"] = { "i", 205907 },	-- Soaked Totem
						["coord"] = { 56.0, 50.9, ZARALEK_CAVERN },
					}),
					q(75773, {	-- Little Blank Book
						["provider"] = { "i", 205913 },	-- Blank Notebook
						["coord"] = { 60.1, 57.4, ZARALEK_CAVERN },
					}),
					q(75765, {	-- Liquid Art
						["provider"] = { "i", 205366 },	-- Dripping Clay Pot
						["coord"] = { 55.0, 48.9, ZARALEK_CAVERN },
					}),
					q(75768, {	-- Lucky Ducky
						["provider"] = { "i", 205906 },	-- Feathered Friend
						["coord"] = { 58.7, 50.0, ZARALEK_CAVERN },
					}),
					q(75766, {	-- Ruby in the Rough
						["provider"] = { "i", 205900 },	-- Shimmering Draconic Gem
						-- ["coord"] = { x, y, ZARALEK_CAVERN },
					}),

					-- Treasurewhiskers --
					q(75998, {	-- Crispety Crunchety
						["provider"] = { "i", 205901 },	-- Crunchy Beetle
						["coord"] = { 57.3, 49.3, ZARALEK_CAVERN },
						["maxReputation"] = { FACTION_LOAMM_NIFFEN, 20 },
						["isWeekly"] = true,
					}),
					q(76004, {	-- Deep Cuts
						["provider"] = { "i", 205902 },	-- Deepflayer Claw
						["coord"] = { 57.6, 56.4, ZARALEK_CAVERN },
						["maxReputation"] = { FACTION_LOAMM_NIFFEN, 20 },
						["isWeekly"] = true,
					}),
					q(75936, {	-- Slimy Yet Satisfying
						["provider"] = { "i", 205795 },	-- Wriggling Worm
						["coord"] = { 56.9, 52.1, ZARALEK_CAVERN },
						["maxReputation"] = { FACTION_LOAMM_NIFFEN, 20 },
						["isWeekly"] = true,
					}),
				})),
				n(SCENARIO_COMPLETION, {
					i(205260),	-- Fleeting Glowspores
					i(205288),	-- Buried Niffen Collection (Frostfire)
					i(205347),	-- Gathered Niffen Resources (Thieving Critters)
					i(205346, {	-- Hidden Niffen Treasure (Wroms, Vertical)
						["sym"] = {
							{"select", "mapID", ZARALEK_CAVERN },
							{"pop"},
							{"where", "headerID", WORLD_QUESTS },
							{"pop"},
							{"where", "headerID", REWARDS },
							{"pop"},
						},
					}),
					i(205342),	-- Loamm Niffen Insignia [Rare]
				}),
				n(SPECIAL, {
					i(206009),	-- Ouroboros Tablet
					i(206010),	-- Designs of Flesh
					i(206014, {	-- Ouroboros Tablet
						["cost"] = {
							{ "i", 206009, 1 },	-- Ouroboros Tablet
							{ "i", 206010, 1 },	-- Designs of Flesh
						},
					}),
					i(206011),	-- Designs of Bone
					i(206015, {	-- Ouroboros Tablet
						["cost"] = {
							{ "i", 206014, 1 },	-- Ouroboros Tablet
							{ "i", 206011, 1 },	-- Designs of Bone
						},
					}),
					i(206012),	-- Designs of Mind
					i(206016, {	-- Ouroboros Tablet
						["cost"] = {
							{ "i", 206015, 1 },	-- Ouroboros Tablet
							{ "i", 206012, 1 },	-- Designs of Mind
						},
					}),
					i(206013),	-- Designs of Soul
					i(206017, {	-- Ouroboros Tablet
						["cost"] = {
							{ "i", 206016, 1 },	-- Ouroboros Tablet
							{ "i", 206013, 1 },	-- Designs of Soul
						},
					}),
					i(205151, {	-- Salverun (PET!)
						["cost"] = {
							{ "i", 206017, 1 },	-- Ouroboros Tablet
							{ "i", 206021, 1 },	-- Kob'rok's Luminescent Scale
						},
					}),
				}),
			},
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
	m(DRAGON_ISLES, {
		m(ZARALEK_CAVERN, {
			n(SNIFFENSEEKING, {
				q(75241),	-- Flag Niffen Cave Account Tracking (spellID 407744)
				q(75747),	-- Completing a Sniffenseeking quest
				q(75748),	-- Completing a Sniffenseeking quest
				q(75749),	-- Completing a Sniffenseeking quest
				q(75997),	-- Completing Heart of Iron Sniffenseeking Quest
				q(75914),	-- Starting the first Sniffenseeking map after tutorial, unflagged after completing Sniffenseeking quest
				q(75883),	-- 3rd charge (map) for adventure / unflagged when 3rd map completed
				q(76109),	-- Salverun (spellID 411721) [Summon Salverun as a battle pet]

				q(75904),	-- Unknown [When going to Those Rascally Wroms (75397)] /Unflagged after complete
				q(75880),	-- Completed Those Rascally Wroms (75397),			This Might Be Achievement Tracker/Daily/weekly etc..
				q(75928),	-- Completed Those Rascally Wroms (75397),			This Might Be Achievement Tracker/Daily/weekly etc..

				q(75916),	-- Unknown [When Going to Frostfire Finesse (76084)] /Unflagged After Complete
				q(75880),	-- Completed Frostfire Finesse (76084),			This Might Be Achievement Tracker/Daily/weekly etc..
				q(75993),	-- Completed Frostfire Finesse (76084),			This Might Be Achievement Tracker/Daily/weekly etc..

				q(75910),	-- Unknown [When Going to Thieving Critters (75619)] /Unflagged After Complete
				q(75930),	-- Completed Thieving Critters (75619),			This Might Be Achievement Tracker/Daily/weekly etc..
				q(75882),	-- Completed Thieving Critters (75619),			/unflagged?

				q(75892),	-- Unknown [When Going to Vertical Anomaly (75390)] /Unflagged After Complete
				q(75924),	-- Completed Vertical Anomaly (75390),			This Might Be Achievement Tracker/Daily/weekly etc..
				q(75882),	-- Completed Vertical Anomaly (75390),			/unflagged?

				q(75908),	-- Starting The Living Drill (76016)
				q(76000),	-- Completed The Living Drill (76016)

				q(75913),	-- Accepting Living Statue (76014)
				q(75994),	-- Completed Living Statue (76014)

				q(75875),	-- Started Making Scents (75393) /Unflagged after map was completed
				q(75876),	-- Completed Making Scents (75393)

				q(75906),	-- Started Your Weight in Gold (75996) /Unflagged after map was completed
				q(76003),	-- Completed Your Weight in Gold (75996)

				q(75915),	-- Started Liars in Light (75620) /Unflagged after map was completed
				q(75931),	-- Completed Liars in Light (75620)

				q(75901),	-- Started Successful Interventions (75516) /Unflagged after map was completed
				q(75927),	-- Completed Successful Interventions (75516)

				q(75895),	-- Started Scratch and Sniff (75234) /Unflagged after map was completed
				q(75925),	-- Completed Scratch and Sniff (75234)

				q(75898),	-- Started Element Whispers (75621) /Unflagged after map was completed
				q(75926),	-- Completed Element Whispers (75621)

				q(75907),	-- Started Sneak and Sniff (75517) /Unflagged after map was completed
				q(75929),	-- Completed Sneak and Sniff (75517)

				q(75917),	-- Started Liars of Spirit (76081) /Unflagged after map was completed
				q(75992),	-- Completed Liars of Spirit (76081)

				q(75893),	-- Started Flapping and Screaming (76027) /Unflagged after map was completed
				q(76011),	-- Completed Flapping and Screaming (76027)
			}),
		}),
	}),
})));
