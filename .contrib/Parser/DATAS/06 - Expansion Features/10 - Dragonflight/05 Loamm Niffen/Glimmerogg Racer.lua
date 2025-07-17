---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	n(LOAMM_NIFFEN, {
		header(HEADERS.Faction, FACTION_GLIMMEROGG_RACER, bubbleDownSelf({ ["minReputation"] = { FACTION_LOAMM_NIFFEN, 7 } }, {
			faction(FACTION_GLIMMEROGG_RACER),
			n(ACHIEVEMENTS, {
				ach(17741, {	-- Slow and Steady Wins the Race
					i(205231),	-- Roggy (PET!)
					crit(59148, {	-- Bashful wins
						["sourceQuests"] = { 75662 },	-- A Race To The Finish
					}),
					crit(59149, {	-- Tricky wins
						["sourceQuests"] = { 75706 },	-- A Race To The Finish
					}),
					crit(59150, {	-- Brulee wins
						["sourceQuests"] = { 75707 },	-- A Race To The Finish
					}),
					crit(59151, {	-- Roggy wins
						["sourceQuests"] = { 75708 },	-- A Race To The Finish
					}),
				}),
			}),
			n(QUESTS, {
				q(74787, {	-- Come Snail Away
					["sourceQuests"] = {
						73709,	-- Favor on the Side
						73708,	-- Pay to Play
					},
					["provider"] = { "n", 201752 },	-- Briggul
					["coord"] = { 44.2, 80.0, ZARALEK_CAVERN },
					["g"] = {
						i(203708),	-- Conch Whistle
					},
				}),
				q(75598, {	-- Snailed It
					["minReputation"] = { FACTION_GLIMMEROGG_RACER, 5 },	-- Rank 5, Professional, 2800
					["provider"] = { "n", 201752 },	-- Briggul
					["coord"] = { 44.2, 80.0, ZARALEK_CAVERN },
					["g"] = {
						i(205155),	-- Big Slick in the City
					},
				}),
			}),
			n(QUESTS, sharedData({
				["sourceQuests"] = { 74787 },	-- Come Snail Away
				["provider"] = { "n", 201752 },	-- Briggul
				["coord"] = { 44.3, 79.9, ZARALEK_CAVERN },
				["maxReputation"] = { FACTION_GLIMMEROGG_RACER, 5 },
			}, {
				q(74948),	-- Snailspiration: Amethyst Softshell
				q(74949),	-- Snailspiration: Archetype of Vigilance
				q(74950),	-- Snailspiration: Blackchasm Crawler
				q(74952),	-- Snailspiration: Microlicid
				q(74959),	-- Snailspiration: Mudshell Conch
				q(74960),	-- Snailspiration: Predatory Helicid
				q(74961),	-- Snailspiration: Prismatic Softshell
				q(74962),	-- Snailspiration: Rapana Whelk
				q(74963),	-- Snailspiration: Rusty Snail
				q(74964),	-- Snailspiration: Scooter the Snail
				q(74965),	-- Snailspiration: Shelly
				q(74786),	-- Snailspiration: Shimmershell Snail
				q(74966),	-- Snailspiration: Silkbead Snail
				q(74967),	-- Snailspiration: Spireshell snail
				q(74968),	-- Snailspiration: Zoom
			})),
			n(QUESTS, sharedData({
				["sourceQuests"] = { 74787 },	-- Come Snail Away
				["provider"] = { "n", 201752 },	-- Briggul
				["coord"] = { 44.3, 79.9, ZARALEK_CAVERN },
				["maxReputation"] = { FACTION_GLIMMEROGG_RACER, 5 },	-- Rank 5, Professional, 2800
				["isDaily"] = true,
			}, {
				q(74516),	-- A Snail's Pace
				q(74517),	-- All Terrain Snail
				q(74519),	-- Good for Goo
				q(74520, {	-- Less Cargo
					i(204273),	-- Stolen Supplies (QI!)
				}),
				q(74518, {	-- Resistance Training
					o(387725, {	-- Glowing Crystal
						i(204067),	-- Glowing Crystal (QI!)
					}),
					o(387729, {	-- Magma Crystal
						i(204070),	-- Magma Crystal (QI!)
					}),
					o(387727, {	-- Sulfuric Crystal
						i(204069),	-- Sulfuric Crystal (QI!)
					}),
				}),
				q(74515),	-- Snail Mail
				q(74514, {	-- The Slowest Fan Club
					i(204178),	-- Snailcatcher Net
					n(201875),	-- Aimless Snail
				}),
			})),
			n(QUESTS, sharedData({
				["sourceQuests"] = {
					73711,	-- Marked Champion
					DF_ACCOUNT_ZC_UNLOCK_QUEST,
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 201099 },	-- Gorgul
				["coord"] = { 44.5, 80.4, ZARALEK_CAVERN },
				["maxReputation"] = { FACTION_LOAMM_NIFFEN, 20 },
			}, {
				q(75662, {	-- A Race To The Finish
					["repeatable"] = true,
					["g"] = {
						i(205119),	-- Bashful (PET!)
					},
				}),
				q(75707, {	-- A Race To The Finish
					["repeatable"] = true,
					["g"] = {
						i(205123),	-- Brulee (PET!)
					},
				}),
				q(75706, {	-- A Race To The Finish
					["repeatable"] = true,
					["g"] = {
						i(205121),	-- Tricky (PET!)
					},
				}),
				q(75708, {	-- A Race To The Finish (spellID 409235 & 490236)
					["name"] = "Weekly: A Race To The Finish",
					["isWeekly"] = true,
				}),
			})),
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
	n(LOAMM_NIFFEN, {
		header(HEADERS.Faction, FACTION_GLIMMEROGG_RACER, {
			n(QUESTS, {
				q(75710),	-- After turn in 'A Race To The Finish' (questID 75662) (spellID 409255)
			}),
		}),
	}),
})));