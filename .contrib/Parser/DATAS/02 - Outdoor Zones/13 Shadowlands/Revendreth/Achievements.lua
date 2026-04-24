---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(REVENDRETH, {
		n(ACHIEVEMENTS, {
			ach(14310, {	-- Adventurer of Revendreth
				crit(48799, {
					["_npcs"] = { 160392 },	-- Soulstalker Doina
				}),
				crit(48800, {
					["_npcs"] = { 160675 },	-- Scrivener Lenua
				}),
				crit(48801, {
					["_npcs"] = { 160640 },	-- Innervus
				}),
				crit(48802, {
					["_npcs"] = { 155779 },	-- Tomb Burster <Dread Crawler Queen>
				}),
				crit(48803, {
					["_npcs"] = { 159503 },	-- Stonefist
				}),
				crit(48805, {
					["_npcs"] = { 160821 },	-- Worldedge Gorger
				}),
				crit(48806, {
					["_npcs"] = { 160857 },	-- Sire Ladinas <The Lightrazed>
				}),
				crit(48807, {
					["_npcs"] = { 161310 },	-- Executioner Adrastia
				}),
				crit(48808, {
					["_npcs"] = { 161891 },	-- Lord Mortegore
				}),
				crit(48809, {
					["_npcs"] = { 165152 },	-- Leeched Soul
				}),
				crit(48810, {
					["_npcs"] = { 165206 },	-- Endlurker
				}),
				crit(48811, {
					["_npcs"] = { 164388 },	-- Amalgamation of Light
				}),
				crit(48812, {
					["_npcs"] = { 165253 },	-- Tollkeeper Varaboss
				}),
				crit(48814, {
					["_npcs"] = { 166393 },	-- Amalgamation of Filth
				}),
				crit(48815, {
					["_npcs"] = { 166521 },	-- Famu the Infinite
				}),
				crit(48816, {
					["_npcs"] = { 166576 },	-- Azgar
				}),
				crit(48817, {
					["_npcs"] = { 166679 },	-- Hopecrusher
				}),
				crit(48818, {
					["_npcs"] = { 166292 },	-- Bog Beast
				}),
				crit(48819, {
					["_npcs"] = { 166710 },	-- Executioner Aatron
				}),
				crit(48820, {
					["_npcs"] = { 166993 },	-- Huntmaster Petrus
				}),
				crit(48821, {
					["_npcs"] = { 167464 },	-- Grand Arcanist Dimitri
				}),
				crit(48822, {
					["_npcs"] = { 170048 },	-- Manifestation of Wrath
				}),
				crit(50029, {
					["_npcs"] = { 170434 },	-- Amalgamation of Sin
				}),
				crit(50030, {
					["_npcs"] = { 162481 },	-- Sinstone Hoarder
				}),
			}),
			ach(14769, {	-- Bat!
				["description"] = "As of 9.2.5, this achievement is currently bugged and only awarding credit occasionally. To work around this, you may have to ride the bat more than once or try another one.",
				["crs"] = { 161015 },	-- Dredbat Statue
				["coords"] = {	-- there doesn't seem to be a way to track individual bat statue collection, no questID or anything
					{ 21.7, 50.2, REVENDRETH },
					{ 25.1, 37.5, REVENDRETH },
					{ 31.9, 59.2, REVENDRETH },
					{ 35.0, 35.0, REVENDRETH },
					{ 56.2, 62.2, REVENDRETH },
					{ 57.3, 61.3, REVENDRETH },
					{ 60.4, 61.1, REVENDRETH },
					{ 64.0, 62.0, REVENDRETH },
				},
			}),
			achWithRep(14338, FACTION_COURT_OF_HARVESTERS),	-- Court of Harvesters
			ach(14306),	-- Explore Revendreth
			ach(14798, {	-- Sojourner of Revendreth
				crit(50317, {	-- The Duelist's Debt
					["sourceQuests"] = { 59726 },	-- It's a Trap
				}),
				crit(50318, {	-- Tithes of Darkhaven
					["sourceQuests"] = { 60178 },	-- And Then There Were None
				}),
				crit(50319, {	-- Dirty Jobs
					["sourceQuests"] = { 57481 },	-- Running a Muck
				}),
				crit(50320, {	-- The Final Atonement
					["sourceQuests"] = { 58092 },	-- Halls of Atonement: Your Absolution
				}),
				crit(50321, {	-- Mirror Maker of the Master
					["sourceQuests"] = { 57536 },	-- Mirror Making, Not Breaking
				}),
				crit(50323, {	-- Revelations of the Light
					["sourceQuests"] = { 60470 },	-- Setting Sabina Free
				}),
			}),
			ach(14233, {	-- Tea Tales
				crit(47993, {		-- Tea Tales: Theotar
					["_quests"] = { 59848 },	-- Tea Tales: Theotar
				}),
				crit(47994, {		-- Tea Tales: Vulca
					["_quests"] = { 59850 },	-- Tea Tales: Vulca
				}),
				crit(47995, {		-- Tea Tales: Gubbins and Tubbins
					["_quests"] = { 59852 },	-- Tea Tales: Gubbins and Tubbins
				}),
				crit(47996, {		-- Tea Tales: Lost Sybille
					["_quests"] = { 59853 },	-- Tea Tales: Lost Sybille
				}),
			}),
			ach(14771, {	-- The Afterlife Express
				["description"] = "Coordinates listed are a single point along the path driven by each carriage. Some have more circuitous routes than others and will require a longer wait.",
				["groups"] = {
					crit(50168, {	-- Chalice Carriage
						["coord"] = { 47.5, 47.7, REVENDRETH },
						["crs"] = { 174750 },	-- Chalice Carriage
					}),
					crit(50169, {	-- Old Gate Carriage
						["coord"] = { 59.2, 39.0, REVENDRETH },
						["crs"] = { 174751 },	-- Old Gate Carriage
					}),
					crit(50170, {	-- Banewood Carriage
						["coord"] = { 40.1, 67.4, REVENDRETH },
						["crs"] = { 158365 },	-- Banewood Carriage
					}),
					crit(50171, {	-- Pridefall Carriage
						["coord"] = { 69.2, 81.4, REVENDRETH },
						["crs"] = { 161879 },	-- Pridefall Carriage
					}),
					crit(50172, {	-- Darkhaven Carriage
						["coord"] = { 64.2, 58.8, REVENDRETH },
						["crs"] = { 158336 },	-- Darkhaven Carriage
					}),
					crit(50173, {	-- The Castle Carriage
						["coord"] = { 44.2, 41.4, REVENDRETH },
						["crs"] = { 174754 },	-- The Castle Carriage
					}),
				},
			}),
			ach(13878, {	-- The Master of Revendreth
				crit(46333, {	-- Welcome to Revendreth
					["sourceQuests"] = { 56978 },	-- To Darkhaven
				}),
				crit(46334, {	-- The Master
					["sourceQuests"] = { 57179 },	-- The Authority of Revendreth
				}),
				crit(46335, {	-- The Accuser
					["sourceQuests"] = { 59232 },	-- A Lesson in Humility
				}),
				crit(46336, {	-- The Penitent Hunt
					["sourceQuests"] = { 59256 },	-- The Fearstalker
				}),
				crit(46649, {	-- The Mad Duke
					["sourceQuests"] = { 57724 },	-- Securing Sinfall
				}),
				crit(46650, {	-- Prince Renathal
					["sourceQuests"] = { 57694 },	-- Refuge of Revendreth
				}),
				crit(46337, {	-- The Master of Lies
					["sourceQuests"] = { 58086 },	-- The Master of Lies
				}),
			}),
			ach(14512, {	-- Tour of Duty: Revendreth
				["pvp"] = true,
			}),
			ach(14314, {	-- Treasures of Revendreth
				crit(50076, {	-- Lost Quill
					["_quests"] = { 61990 },
				}),
				crit(50077, {	-- Stylish Parasol
					["_quests"] = { 61999 },
				}),
				crit(50078, {	-- The Count
					["_quests"] = { 62063 },
				}),
				crit(50079, {	-- Rapier of the Fearless
					["_quests"] = { 62156 },
				}),
				crit(50080, {	-- Vyrtha's Dredglaive
					["_quests"] = { 62164 },
				}),
				crit(50081, {	-- Makeshift Muckpool
					["_quests"] = { 62198 },
				}),
				crit(50082, {	-- Taskmaster's Trove
					["_quests"] = { 62199 },
				}),
				crit(50084, {	-- Forbidden Chamber
					["_quests"] = { 62243 },
				}),
				crit(50895, {	-- Smuggled Cache
					["_quests"] = { 59889 },
				}),
				crit(50896, {	-- Chest of Envious Dreams
					["_quests"] = { 59833 },
				}),
				crit(50897, {	-- Filcher's Prize
					["_quests"] = { 59883 },
				}),
				crit(50898, {	-- Wayfarer's Abandoned Spoils
					["_quests"] = { 59884 },
				}),
				crit(50899, {	-- Remlate's Hidden Cache
					["_quests"] = { 59885 },
				}),
				crit(50900, {	-- Fleeing Soul's Bundle
					["_quests"] = { 59886 },
				}),
				crit(50901, {	-- Gilded Plum Chest
					["_quests"] = { 59887 },
				}),
				crit(50902, {	-- Abandoned Curios
					["_quests"] = { 59888 },
				}),
			}),
			ach(14770, {	-- What We Ride in the Shadows
				["description"] = "Each ride costs 5 Infused Rubies. Stay on the Sinrunner until you get credit for the ride.",
				["crs"] = { 174032 },	-- Castle Sinrunner
				["groups"] = {
					crit(50174, {	-- Old Gate
						["coord"] = { 60.3, 62.6, REVENDRETH },
					}),
					crit(50175, {	-- Hole in the Wall
						["coords"] = {
							{ 44.0, 56.4, REVENDRETH },
							{ 55.0, 62.2, REVENDRETH },
						},
					}),
					crit(50176, {	-- Dominance Gate Battlements
						["coord"] = { 41.2, 47.2, REVENDRETH },
					}),
					crit(50177, {	-- Darkhaven
						["coord"] = { 69.6, 58.0, REVENDRETH },
					}),
				},
			}),
		}),
	}),
})));
