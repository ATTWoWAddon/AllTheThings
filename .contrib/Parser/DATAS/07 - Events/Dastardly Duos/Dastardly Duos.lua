-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
DASTARDLY_DUOS = createHeader({
	readable = "Dastardly Duos",
	icon = 6740278,
	eventID = EVENTS.DASTARDLY_DUOS,
	text = {
		en = "Dastardly Duos",
	},
	description = {
		en = "Hello, fight fans. The world's meanest villains are teamed up and back for revenge! Meet in Stormwind, Orgrimmar or Dornogal to fight against villainous bosses from Azeroth's past.",
	},
});

root(ROOTS.WorldEvents, applyevent(EVENTS.DASTARDLY_DUOS, bubbleDown({ ["timeline"] = { ADDED_11_1_5 } }, {
	n(DASTARDLY_DUOS, {
		--["maps"] = {  },	--
		["groups"] = {
			n(ACHIEVEMENTS, {
				-- TODO: These all currently have the same achievement icon so I don't think Blizzard has finished this yet. Maybe the PTR event date 17/3 to 24/3 is their deadline? :D
				ach(41995),	-- Boot Hill
				ach(42002),	-- Bullhorn of Plenty
				ach(42003),	-- Bullhorn of More Plenty
				ach(42004),	-- Bullhorn of Most Plenty
				ach(41905),	-- Center of Attention
				ach(41700),	-- Dastardly Duos Weekly Wins
				ach(41706, {	-- Dastardly Duos Weekly High Score
					-- TODO: Does parser know what to do with 21 (Designer Value{`Uses Record ID})?
					["sym"] = {{ "achievement_criteria"}},
				}),
				ach(41707),	-- Dastardly Devices
				ach(41948),	-- Defeat the Dastardlies (automated)
				ach(41949),	-- Defeat the Dastardlies (automated)
				ach(41950),	-- Defeat the Dastardlies (automated)
				ach(41951),	-- Defeat the Dastardlies (automated)
				ach(41952),	-- Defeat the Dastardlies (automated)
				ach(41716),	-- Duo Darling
				ach(41717),	-- Duos Underdog
				ach(41715),	-- Fiendishly Famous
				ach(41722),	-- Inside Connections
				ach(41916),	-- My Way, The Highway
				ach(41922),	-- Undefeatable
				ach(41810),	-- Winner's Podium
			}),
			n(MAILBOX, {
				i(234449),	-- Dastardly Invitation (QS!/QI!)
			}),
			n(QUESTS, {
				q(86491, {	-- Dastardly Duos! It's on!
					--["sourceQuests"] = { XX },	-- TODO: mailed or via adventure journal
					["provider"] = { "i", 234449 },	-- Dastardly Invitation
				}),
				q(86503, {	-- Who are the Dastardly Duos?
					["sourceQuests"] = { 86491 },	-- Dastardly Invitation
					["provider"] = { "n", 234296 },	-- Vinnie Sweets
					["coord"] = { 52.8, 51.6, ISLE_OF_DORN },
					["g"] = {
						i(239007),	-- Dastardly Banner (TOY!)
						i(239440),	-- Dastardly Prize Purse
						--TODO: if you wanna - you can symlink all bags with rewards
					},
				}),
				q(87550, {	-- Week 2: We're Really Taking Off
					["sourceQuests"] = { 86503 },	-- Who are the Dastardly Duos?
					["provider"] = { "n", 234296 },	-- Vinnie Sweets
					["coord"] = { 52.8, 51.6, ISLE_OF_DORN },
					["g"] = {
						i(239440),	-- Dastardly Prize Purse
						i(239018),	-- Winner's Podium (TOY!)
					},
				}),
				q(87551, {	-- Week 3: Spread the Word
					["sourceQuests"] = { 87550 },	-- Week 2: We're Really Taking Off
					["provider"] = { "n", 234296 },	-- Vinnie Sweets
					["coord"] = { 52.8, 51.6, ISLE_OF_DORN },
					["g"] = {
						i(239440),	-- Dastardly Prize Purse
						i(239019),	-- Mean-Ball Bed (TOY!)
					},
				}),
				q(87552, {	-- Week 4: They've Heard of You
					["sourceQuests"] = { 87551 },	-- Week 3: Spread the Word
					["provider"] = { "n", 234296 },	-- Vinnie Sweets
					["coord"] = { 52.8, 51.6, ISLE_OF_DORN },
					["g"] = {
						i(239440),	-- Dastardly Prize Purse
						--spell(1227073),	-- Winner's Podium, High Score
					},
				}),
				q(87553, {	-- Week 5: Another Amazing Week!
					["sourceQuests"] = { 87552 },	-- Week 4: They've Heard of You
					["provider"] = { "n", 234296 },	-- Vinnie Sweets
					["coord"] = { 52.8, 51.6, ISLE_OF_DORN },
					["g"] = {
						i(239440),	-- Dastardly Prize Purse
						i(239020),	-- Tyrannotort's Treat (MOUNT!)
					},
				}),
				q(87554, {	-- Week 6: It's the Finale!
					["sourceQuests"] = { 87553 },	-- Week 5: Another Amazing Week!
					["provider"] = { "n", 234296 },	-- Vinnie Sweets
					["coord"] = { 52.8, 51.6, ISLE_OF_DORN },
					["g"] = {
						i(239440),	-- Dastardly Prize Purse
						spell(1227074),	-- Winner's Podium: Average Item Level
					},
				}),
				-- unsorted due to ptr things, sourceQuest is speculated
				q(90701, {	-- Cowardly Cheery Bombs
					["sourceQuests"] = { 86503 },	-- Who are the Dastardly Duos?
					["provider"] = { "n", 234297 },	-- Wodin the Troll Servant
					["coord"] = { 52.7, 51.3, ISLE_OF_DORN },
					["g"] = {
						i(239007),	-- Dastardly Banner (TOY!)
						i(239440, {	-- Dastardly Prize Purse
							i(238989),	-- Steam-Hinge Chain of Valor (TODO: ph since lack of data)
						}),
					},
				}),
				-- TODO: Sort this section out, it's just here to make the parser happy
				q(90504), --
				q(90503), --
				q(90502), --
				q(90501), --
				q(90500), --
				q(90499), --
				q(90498), --
				q(90497), --
				q(90496), --
				q(90495), --
				q(90504), --
				q(90503), --
				q(90502), --
				q(90501), --
				q(90500), --
				q(90499), --
				q(90498), --
				q(90497), --
				q(90496), --
				q(90495), --
				q(90504), --
				q(90503), --
				q(90502), --
				q(90501), --
				q(90500), --
				q(90499), --
				q(90498), --
				q(90497), --
				q(90496), --
				q(90495), --
				q(90504), --
				q(90503), --
				q(90502), --
				q(90501), --
				q(90500), --
				q(90499), --
				q(90498), --
				q(90497), --
				q(90496), --
				q(90495), --
				q(90504), --
				q(90503), --
				q(90502), --
				q(90501), --
				q(90500), --
				q(90499), --
				q(90498), --
				q(90497), --
				q(90496), --
				q(90495), --
			}),
			n(REWARDS, {
				filter(MISC, {
					i(237385),	-- BIG Burner Clock
					i(237774),	-- Bullhorn of Calling
					i(235665),	-- Burner Clock
					i(237384),	-- Master Key
				}),
				o(524391, {	-- Prize Chest
					--["coord"] = ??
					["g"] = {
						--- Gear
						--there are list only with new (unsorted) items
						i(238984),	-- Baroness Silverlaine's Locket
						i(238992),	-- Mobius Band
						i(239008),	-- Moonchild Leggings
						i(238990),	-- Necklace of the Chrono-Lord
						i(238989),	-- Steam-Hinge Chain of Valor
						--also seems like contain some TW loot from certain bosses (list of them in achievement 41948) that already exist
						--possibly can be symlinked from each boss, idk?
						--i(24023),	-- Bracers of Finesse
						--i(65166),	-- Buzz Saw
						--i(63454),	-- Double Dealing Bracers
						--i(157628),	-- Gold-Fiecked Gloves
						--i(157755),	-- Missing Diplomat's Pauldrons
						--i(157754),	-- Old Friend's Gloves
						--- Podium Upgrade?
						i(240203),	-- Podium Upgrade: Scrappy
						i(240204),	-- Podium Upgrade: Survival Run
						i(240205),	-- Podium Upgrade: Time in Spotlights
						i(240206),	-- Podium Upgrade: Yards Traveled
					},
				}),
			}),
			n(TREASURES, {
				-- TODO: Sort this section out, it's just here to make the parser happy
				o(505680),	--
			}),
			n(VENDORS, {
				n(234297, {	-- Wodin the Troll-Servant
					["coords"] = {
						{ 52.7, 51.3, ISLE_OF_DORN },
						{ 50.0, 92.4, ORGRIMMAR },
						{ 67.2, 81.0, STORMWIND_CITY },
					},
					["g"] = sharedData({ ["cost"] = {{"c", RESONANCE_CRYSTALS, 500}} }, {
						--TODO: Don't forget to sort it out
						i(239507),	-- Dastardly Epaulet, Yellow
						i(239506),	-- Dastardly Epaulet, Red
						i(239505),	-- Dastardly Epaulet, Purple
						i(239504),	-- Dastardly Epaulet, Green
						i(239503),	-- Dastardly Epaulet, Blue
						i(239442),	-- Dastardly Epaulet, Black
						i(238624),	-- Dastardly Pinchzapper
					}),
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_5 } }, {
		n(DASTARDLY_DUOS, {
			-- In order to clear a bit messup and to sort out more clearly on live
			-- Week 1:
			--q (87510),	-- fired after first completion Dastardly Duos
			-- Week 2:
			--q (87511),	-- ^ same as above, but week 2
			q(87527),	-- there also was crit for other achievements but I wasn't smart enought to log it
			q(87528),	-- so it is just 'after first completion Dastardly Duos, week 2'
			-- Week 3:
			-- q(87512),	-- ^ all poped after first run with week 3 quest
			-- q(87513),	--
			q(87529),	--
			q(87530),	--
			-- Week 4:
			--q(),	-- didn't fire anything this week?
			-- Week 5:
			-- q(87514),	-- ^ fired after first completion Dastardly Duos, week 5 (with quest)
			-- q(87515),	--
			q(87531),	--
			q(87532),	--
			-- Week 6:
			--q(),	-- no hqt this week
			-- Podium Upgrades
			-- q(90463),	-- itemID 240203 (Podium Upgrade: Scrappy)
			-- q(90464),	-- itemID 240204 (Podium Upgrade: Survival Run)
			-- q(90465),	-- itemID 240205 (Podium Upgrade: Time in Spotlights)
			-- q(90466),	-- ItemID 240206 (Podium Upgrade: Yards Traveled)
		}),
	})),
});
