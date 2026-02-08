---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(BASTION, {
		n(ACHIEVEMENTS, {
			ach(14307, {		-- Adventurer of Bastion (automated)
				crit(50582, {
					["_npcs"] = { 158659 },	-- Herculon <Aspirant Assessor>
				}),
				crit(50611, {
					["_npcs"] = { 171011 },	-- Demi the Relic Hoarder
				}),
				crit(50614, {
					["_npcs"] = { 171255 },	-- Echo of Aella <Hand of Courage>
				}),
			}),
			ach(14767, {	-- Count Your Blessings
				crit(49944, {		-- Purified Blessing of Grace
					["description"] = "Requires a |cFFFFFFFFRipe Purian|r to activate.",
					["coord"] = { 53.8, 28.9, BASTION },
				}),
				crit(49945, {		-- Purified Blessing of Power
					["description"] = "Requires a |cFFFFFFFFRipe Purian|r to activate.",
					["coord"] = { 45.3, 59.8, BASTION },
				}),
				crit(49946, {		-- Purified Blessing of Fortitude
					["description"] = "Requires a |cFFFFFFFFRipe Purian|r to activate.",
					["coord"] = { 34.7, 30.0, BASTION },
				}),
			}),
			ach(14303),	-- Explore Bastion
			ach(14735, {	-- Flight School Graduate
				crit(49820, {		-- Flight School: Falling With Style
					["_quests"] = { 60844 },	-- Flight School: Falling With Style
				}),
				crit(49821, {		-- Flight School: Up and Away!
					["_quests"] = { 60858 },	-- Flight School: Up and Away!
				}),
				crit(49822, {		-- Flight School: Flapping Frenzy
					["_quests"] = { 60911 },	-- Flight School: Flapping Frenzy
				}),
			}),
			ach(14734, {	-- Rallying Cry of the Ascended
				crit(49815, {		-- Vesper of Courage
					["coord"] = { 33.3, 59.7, BASTION },
				}),
				crit(49819, {		-- Vesper of Wisdom
					["coord"] = { 39.1, 20.4, BASTION },
				}),
				crit(49816, {		-- Vesper of Humility
					["coord"] = { 71.8, 38.8, BASTION },
				}),
				crit(49817, {		-- Vesper of Loyalty
					["coord"] = { 32.1, 17.8, BASTION },
				}),
				crit(49818, {		-- Vesper of Purity
					["coord"] = { 64.3, 69.8, BASTION },
				}),
			}),
			ach(14339, {	-- Shard Labor
				["description"] = "'Collect all trackable things' must be enabled to see the location of each shard in the list.\n\nShards are collected account-wide. There are shards to collect in Bastion, Necrotic Wake, and Spires of Ascension.",
				["groups"] = {
					-- https://www.wowhead.com/achievement=14339/shard-labor#comments
					-- moving completed ones up to the top for now so it's easier to see which one checks off (to verify coords + add data more easily)
					q(61295, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On a bookshelf inside the room behind Rector Kalliope.",
						["icon"] = 3528288,
						["coord"] = { 24.3, 18.2, BASTION },
					}),
					q(61293, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On a pillar underneath the platform. The shard is surrounded by mobs that will attack you even if you land properly on top of the pillar, so you need a way to stun, fear, or kill them so you can loot.\n\nDon't jump all the way down to the middle section. There is a small gap between the staircase to the top of the platform and the archway the waterfall passes through. Walk through the gap and forward along the ledge. The shard can be difficult to see, depending on your camera angle, but you need to jump off the ledge towards the pillar.",
						["icon"] = 3528288,
						["coord"] = { 24.6, 22.9, BASTION },
					}),
					q(61294, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "Behind some barrels of anima.",
						["icon"] = 3528288,
						["coord"] = { 26.1, 22.6, BASTION },
					}),
					q(61292, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "The pathway to this shard starts at |cFFFFFFFF27.7, 19.2|r, in an area full of elite mobs. Run up the ledge on the side of the mountain until you can jump down to the archway and pick up the shard.",
						["icon"] = 3528288,
						["coord"] = { 30.6, 23.7, BASTION },
					}),
					q(61291, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "At the bottom of the lake, hidden inside the base of a fallen statue.",
						["icon"] = 3528288,
						["coord"] = { 31.0, 27.4, BASTION },
					}),
					q(61290, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "Jump over the short wall to the left of the statue at |cFFFFFFFF33.2, 36.8|r. The shard is at the end of the ledge.",
						["icon"] = 3528288,
						["coord"] = { 33.0, 37.6, BASTION },
					}),
					q(61257, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On a tiny outcropping behind Epistasia. Jump from the side, rather than trying to fall backwards to the shard.",
						["icon"] = 3528288,
						["coord"] = { 34.8, 65.7, BASTION },
					}),
					q(61287, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "The path to this shard starts at |cFFFFFFFF35.1, 23.2|r. Just follow the ledge around the cliffs.",
						["icon"] = 3528288,
						["coord"] = { 37.1, 24.6, BASTION },
					}),
					q(61264, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "Up at the top of a small fallen pillar.",	-- TODO: i don't remember if it was a pillar or a crumbled building or something, fix wording?
						["icon"] = 3528288,
						["coord"] = { 38.5, 53.2, BASTION },
					}),
					q(61225, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "Underneath the bridge that runs from Aspirant's Crucible to the Vestibule of Eternity.\n\nUse a Goblin Glider at |cFFFFFFFF39.6, 74.6|r to reach the platform. After you've collected the shard, leap off the side and a Kyrian will carry you to safety.",
						["icon"] = 3528288,
						["coord"] = { 39.0, 77.0, BASTION },
					}),
					q(61263, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On top of a pillar. Jump down from the cliffs above. Levitate helped me reach this one.",
						["icon"] = 3528288,
						["coord"] = { 40.0, 59.1, BASTION },
					}),
					q(61261, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "Don't fully jump down from the cliffs. It's on the lower portion, hidden on a narrow ledge.",
						["icon"] = 3528288,
						["coord"] = { 41.4, 46.6, BASTION },
					}),
					q(61286, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "From |cFFFFFFFF43.8, 21.6|r, simply walk toward the shard's coordinates. It's just through an arch on a ledge.",
						["icon"] = 3528288,
						["coord"] = { 42.3, 24.0, BASTION },
					}),
					q(61289, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On top of a gazebo with a crystal roof. You will have to jump down to the shard from the cliffs above.",
						["icon"] = 3528288,
						["coord"] = { 42.7, 39.4, BASTION },
					}),
					q(61288, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "At the end of a narrow ledge that starts at |cFFFFFFFF43.6, 33.8|r.",
						["icon"] = 3528288,
						["coord"] = { 42.8, 33.2, BASTION },
					}),
					q(61235, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On the middle level of the waterfall. Jump down from above.",
						["icon"] = 3528288,
						["coord"] = { 43.6, 76.2, BASTION },
					}),
					q(61285, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On a ledge underneath a waterfall. The path starts at |cFFFFFFFF45.6, 25.2|r. Follow the ledge to the right until you get to the shard.",
						["icon"] = 3528288,
						["coord"] = { 44.9, 28.4, BASTION },
					}),
					q(61284, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "The path starts around |cFFFFFFFF45.5, 20.3|r. Just follow the ledge on the right. You will pass a statue of a steward when you are about halfway to the shard. The path is so narrow and short in some places that mounting will knock you off the path or prevent you from continuing along it.",
						["icon"] = 3528288,
						["coord"] = { 46.7, 18.0, BASTION },
					}),
					q(61253, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On top of a fallen wall. Climb up, and then you can carefully fall backwards towards the shard.",
						["icon"] = 3528288,
						["coord"] = { 46.7, 65.9, BASTION },
					}),
					q(61260, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On the middle section of the cliffside, underneath the platform.",
						["icon"] = 3528288,
						["coord"] = { 47.0, 49.2, BASTION },
					}),
					q(61236, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On a very narrow piece of the framework of Aspirant's Rest. Use a Goblin Glider. You can go to the highest cliff on the other side of the building, but I was able to glide straight towards the shard from |cFFFFFFFF48.6, 70.7|r, land on the nearby pillar, and hop over to pick up the shard.",
						["icon"] = 3528288,
						["coord"] = { 48.4, 72.7, BASTION },
					}),
					q(61279, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On top of a pillar. You will need to jump down from the cliffs above.",
						["icon"] = 3528288,
						["coord"] = { 48.5, 34.9, BASTION },
					}),
					q(61278, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On a rock underneath the bridge. You will have to jump down from the cliffs on the western side.",
						["icon"] = 3528288,
						["coord"] = { 49.9, 38.2, BASTION },
					}),
					q(61254, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On a beam that goes across the top of a little hut. You will have to jump down to the shard from the cliffs above.",
						["icon"] = 3528288,
						["coord"] = { 50.6, 56.1, BASTION },
					}),
					q(61258, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On the ledge of Hero's Rest, next to the stairs. You have to jump down to the bottom of the rocky platform and walk along the edge to reach the shard.",
						["icon"] = 3528288,
						["coord"] = { 51.6, 48.0, BASTION },
					}),
					q(61277, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On top of a pillar. You will have to jump down from the cliffs above.",
						["icon"] = 3528288,
						["coord"] = { 52.1, 39.4, BASTION },
					}),
					q(61283, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "Enter Covinkles' Workshop at |cFFFFFFFF53.8, 9.6|r. The shard is on the left side, behind some barrels.",
						["icon"] = 3528288,
						["coord"] = { 52.4, 09.3, BASTION },
					}),
					q(61237, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "Underneath the cliff, on a small outcropping above the water. You'll need to jump from the side of the hill to get to the shard. Slow fall abilities are useful here.",
						["icon"] = 3528288,
						["coord"] = { 52.6, 75.5, BASTION },
					}),
					q(61238, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "Underwater, beneath the little bridge.",
						["icon"] = 3528288,
						["coord"] = { 53.3, 73.6, BASTION },
					}),
					q(61239, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On top of one of the pillars. Some strategic jumping is required to get to this one (and luck).",
						["icon"] = 3528288,
						["coord"] = { 53.5, 80.6, BASTION },
					}),
					q(61251, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "At the bottom of waterfall on the left-hand side, inside a small shrine.",
						["icon"] = 3528288,
						["coord"] = { 54.0, 59.6, BASTION },
					}),
					q(61241, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On a little outcropping on the cliffside. Some strategic falling is required to reach this shard.",
						["icon"] = 3528288,
						["coord"] = { 55.9, 86.6, BASTION },
					}),
					q(61281, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "Underneath the highest part of the cliff. Jump down to the second part of the cliff and walk underneath the large outcropping.",
						["icon"] = 3528288,
						["coord"] = { 56.2, 17.3, BASTION },
					}),
					q(61280, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "Behind the Gilded Bulwark, on the left side of a small table.",
						["icon"] = 3528288,
						["coord"] = { 56.7, 28.8, BASTION },
					}),
					q(61247, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "Partway up the wall. You must jump down from the platform above.",
						["icon"] = 3528288,
						["coord"] = { 56.9, 74.9, BASTION },
					}),
					q(61275, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "Enter the Hall of Beasts at |cFFFFFFFF55.6, 43.0|r. The shard is all the way at the back, hidden behind some barrels.",
						["icon"] = 3528288,
						["coord"] = { 57.5, 38.3, BASTION },
					}),
					q(61270, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On top of the cliff (not in the cave below), at the base of a tree.",
						["icon"] = 3528288,
						["coord"] = { 57.6, 55.6, BASTION },
					}),
					q(61250, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "Don't go up the small staircase. To the right of the stairs, there is a passage that leads to the bottom of a little waterfall on the cliffside. The shard is there, to the left, underneath a Vesper.",
						["icon"] = 3528288,
						["coord"] = { 58.1, 63.9, BASTION },
					}),
					q(61245, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "You have to carefully jump down from the cliffs. The shard is close to the edge of the map, next to a small pool of water at the top of a waterfall.",
						["icon"] = 3528288,
						["coord"] = { 58.1, 80.0, BASTION },
					}),
					q(61282, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On a ledge. You will need to jump down from the cliffs above.",
						["icon"] = 3528288,
						["coord"] = { 59.8, 13.9, BASTION },
					}),
					q(61244, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On the edge of the cliffs.",
						["icon"] = 3528288,
						["coord"] = { 61.0, 85.6, BASTION },
					}),
					q(61271, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "On the upper level, in a bookshelf.",
						["icon"] = 3528288,
						["coord"] = { 65.2, 42.8, BASTION },
					}),
					q(61249, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "Use the Anima Gateway at |cFFFFFFFF63.5, 72.4|r. You can only use the gateway if you aren't in combat, so be careful what you pull.\n\nAfter taking the gateway, head to the shard coordinates. It is hidden behind a pillar.",
						["icon"] = 3528288,
						["coord"] = { 65.5, 71.9, BASTION },
					}),
					q(61274, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "Underneath the edge of the platform. Facing north, towards the sky, drop off the left-hand side of the platform and walk under it.",
						["icon"] = 3528288,
						["coord"] = { 66.9, 26.9, BASTION },
					}),
					q(61273, {	-- Anima Crystal Shard
						["name"] = "Anima Crystal Shard",
						["description"] = "Walk along the lower ledge that starts at |cFFFFFFFF71.4, 38.9|r.",
						["icon"] = 3528288,
						["coord"] = { 72.4, 40.2, BASTION },
					}),
					-- TODO: keep these here, within the achievement, or move them to treasures or something?  you do the final 3 steps after the achievement is totally completed, it's just a prerequisite...so i'm not sure if it makes sense to have them here??
					n(171732, {	-- Forgelite Hephaesius
						["description"] = "After you finish collecting all the shards from Bastion, Necrotic Wake, and Spires of Ascension, visit Hephaesius. Give him the shards, and he will forge them into a mallet.",
						["questID"] = 61229,	-- receiving the mallet from Hephaesius
						["coord"] = { 59.3, 31.4, BASTION },
						["groups"] = {
							i(180858),	-- Crystal Mallet of Heralds
						},
					}),
					o(355435, {	-- Vesper of the Silver Wind
						["description"] = "Once you have the mallet, take it to the Vesper of the Silver Wind and ring the bell.",
						["questID"] = 61191,	-- ringing the bell
						["sourceQuest"] = 61229,	-- receiving the mallet from Hephaesius
						["coord"] = { 36.1, 26.6, BASTION },
						["provider"] = { "i", 180858 },	-- Crystal Mallet of Heralds
					}),
					o(355449, {	-- Gift of the Silver Wind
						["description"] = "A Silverwind Larion will spawn behind you and drop a treasure chest containing the mount.",
						["questID"] = 61183,	-- looting the treasure
						["sourceQuest"] = 61191,	-- ringing the bell
						["coord"] = { 36.1, 26.6, BASTION },
						["groups"] = {
							i(180772),	-- Silverwind Larion (MOUNT!)
						},
					}),
				},
			}),
			ach(14801, {	-- Sojourner of Bastion
				crit(50336, {	-- In Agthia's Memory
					["sourceQuests"] = { 57555 },	-- Shadow's Fall
				}),
				crit(50337, {	-- Wings of Freedom
					["sourceQuests"] = { 59865 },	-- Glimmerflight
				}),
				crit(50338, {	-- In the Garden of Respite
					["sourceQuests"] = { 57568 },	-- Tough Love
				}),
				crit(50339, {	-- The Spear of Kalliope
					["sourceQuests"] = { 60906 },	-- Rightful Resting Place (non-Kyrian)
				}),
				crit(50340, {	-- The Spear of Kalliope
					["sourceQuests"] = { 57967 },	-- Rightful Resting Place (Kyrian)
				}),
				crit(50334, {	-- Pride or Unit
					["sourceQuests"] = { 58103 },	-- Pride or Unit (Pelodis - Phalynx)
				}),
				crit(50333, {	-- Pride or Unit
					["sourceQuests"] = { 60296 },	-- Pride or Unit (Nemea - Larion)
				}),
			}),
			achWithRep(14335, FACTION_THE_ASCENDED),	-- The Ascended
			ach(14281, {	-- The Path to Ascension
				crit(48148, {	-- Eternity's Call
					["sourceQuests"] = { 57677 },	-- A Soulbind In Need
				}),
				crit(48149, {	-- The Aspirant's Crucible
					["sourceQuests"] = { 58174 },	-- All An Aspirant Can Do
				}),
				crit(48150, {	-- The Temple of Purity
					["sourceQuests"] = { 57447 },	-- Purity's Prerogative
				}),
				crit(48151, {	-- Chasing a Memory
					["sourceQuests"] = { 60013 },	-- Leave it to Mnemis
				}),
				crit(50099, {	-- Your Personal Assistant
					["sourceQuests"] = { 59426 },	-- Your Personal Assistant
				}),
				crit(48152, {	-- A Time for Courage
					["sourceQuests"] = { 60055 },	-- A Time for Courage
				}),
				crit(48153, {	-- A Land of Strife
					["sourceQuests"] = { 61107 },	-- A Land of Strife
				}),
			}),
			pvp(ach(14514)),	-- Tour of Duty: Bastion
			ach(14311, {	-- Treasures of Bastion
				crit(50047, {	-- Scroll of Aeons
					["_quests"] = { 58298 },
				}),
				crit(50048, {	-- Vesper of Virtues
					["_quests"] = { 60478 },
				}),
				crit(50049, {	-- Purifying Draught
					["_quests"] = { 58329 },
				}),
				crit(50050, {	-- Lost Disciple's Notes
					["_quests"] = { 61048 },
				}),
				crit(50051, {	-- Larion Tamer's Harness
					["_quests"] = { 61049 },
				}),
				crit(50052, {	-- Stolen Equipment
					["_quests"] = { 61044 },
				}),
				crit(50053, {	-- Abandoned Stockpile
					["_quests"] = { 61006 },
				}),
				crit(50054, {	-- Experimental Construct Part
					["_quests"] = { 61052 },
				}),
				crit(50055, {	-- Windsmith's Tools
					["_quests"] = { 61053 },
				}),
				crit(50056, {	-- Memorial Offerings
					["_quests"] = { 61150 },
				}),
				crit(50058, {	-- Gift of Agthia
					["_quests"] = { 60893 },
				}),
				crit(50059, {	-- Gift of Vesiphone
					["_quests"] = { 60890 },
				}),
				crit(50060, {	-- Gift of Chyrus
					["_quests"] = { 60892 },
				}),
				crit(50061, {	-- Gift of Thenios
					["_quests"] = { 60894 },
				}),
				crit(50062, {	-- Gift of Devos
					["_quests"] = { 60895 },
				}),
			}),
			ach(14768, {	-- What is that Melody?
				crit(49947, {		-- Hymn of Purity
					["description"] = "Triangular stacks of bundled scrolls, often found on tables and benches. The coordinates given are not exhaustive; this scroll can spawn throughout the Temple of Purity. Part of this temple is full of elite mobs.",
					["coords"] = {
						{ 57.8, 73.8, BASTION },
						{ 57.8, 79.1, BASTION },
						{ 60.6, 76.4, BASTION },
						{ 61.0, 76.1, BASTION },
						{ 62.8, 71.2, BASTION },
						{ 63.8, 73.5, BASTION },
					},
				}),
				crit(49948, {		-- Hymn of Courage
					["description"] = "Rolled scrolls that can be found on the ground. The coordinates given are not exhaustive; this scroll can spawn throughout the Temple of Courage. The transport pad to reach the area is located at |cFFFFFFFF39.2, 56.1|r.",
					["coords"] = {
						{ 29.7, 56.5, BASTION },
						{ 30.8, 54.8, BASTION },
						{ 31.9, 54.6, BASTION },
						{ 32.1, 55.9, BASTION },
						{ 33.6, 59.6, BASTION },
						{ 34.1, 58.5, BASTION },
						{ 35.4, 55.6, BASTION },
					},
				}),
				crit(49949, {		-- Hymn of Humility
					["description"] = "Vertical scrolls that are often on tables. The coordinates given are not exhaustive; this scroll can spawn throughout the Temple of Humility.",
					["coords"] = {
						{ 63.0, 42.8, BASTION },
						{ 63.9, 44.1, BASTION },
						{ 65.2, 43.1, BASTION },
						{ 66.0, 40.8, BASTION },
						{ 67.1, 43.3, BASTION },
						{ 67.2, 43.1, BASTION },
						{ 67.6, 43.4, BASTION },
					},
				}),
				crit(49950, {		-- Hymn of Wisdom
					["description"] = "Vertical scrolls that are often pinned to monuments or walls. The coordinates given are not exhaustive; this scroll can spawn throughout the Temple of Wisdom.",
					["coords"] = {
						{ 41.6, 24.2, BASTION },
						{ 42.1, 23.7, BASTION },
						{ 43.1, 28.1, BASTION },
						{ 43.9, 25.9, BASTION },
					},
				}),
			}),
		}),
	}),
})));
