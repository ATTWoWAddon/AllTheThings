---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(MALDRAXXUS, {
		n(ACHIEVEMENTS, {
			ach(14308, {	-- Adventurer of Maldraxxus
				crit(48872, {
					["_npcs"] = { 157058 },	-- Corpsecutter Moroc
				}),
				crit(48857, {
					["_npcs"] = { 158406 },	-- Scunner
				}),
				crit(48864, {
					["_npcs"] = { 157125 },	-- Zargox the Reborn
				}),
				crit(48866, {
					["_npcs"] = { 159105 },	-- Collector Kash
				}),
				crit(48865, {
					["_npcs"] = { 159753 },	-- Ravenomous
				}),
				crit(48873, {
					["_npcs"] = { 159886 },	-- Sister Chelicerae
				}),
				crit(48867, {
					["_npcs"] = { 160059 },	-- Taskmaster Xox <Master Taskmaster>
				}),
				crit(48848, {
					["_npcs"] = { 161105 },	-- Indomitable Schmitd
				}),
				crit(48868, {
					["_npcs"] = { 161857 },	-- Nirvaska the Summoner
				}),
				crit(48870, {
					["_npcs"] = { 162180 },	-- Thread Mistress Leeda
				}),
				crit(48869, {
					["_npcs"] = { 162528 },	-- Smorgas the Feaster
				}),
				crit(48850, {
					["_npcs"] = { 162586 },	-- Tahonta
				}),
				crit(48874, {
					["_npcs"] = { 168147 },	-- Sabriel the Bonecleaver
				}),
				crit(48853, {
					["_npcs"] = { 162588 },	-- Gristlebeak
				}),
				crit(48855, {
					["_npcs"] = { 162669 },	-- Devour'us
				}),
				crit(49723, {
					["_npcs"] = { 162690 },	-- Nerissa Heartless
				}),
				crit(48851, {
					["_npcs"] = { 162711 },	-- Deadly Dapperling
				}),
				crit(48876, {
					["_npcs"] = { 162727 },	-- Bubbleblood
				}),
				crit(48849, {
					["_npcs"] = { 162767 },	-- Pesticide
				}),
				crit(48852, {
					["_npcs"] = { 162797 },	-- Deepscar <Pit Hound>
				}),
				crit(48875, {
					["_npcs"] = { 162819 },	-- Warbringer Mal'Korak
				}),
				crit(49724, {
					["_npcs"] = { 174108 },	-- Necromantic Anomaly
				}),
			}),
			ach(14206, {	-- Blade of the Primus
				crit(48494, {	-- Champion of Pain
					["sourceQuests"] = { 57515 },	-- The House of the Chosen
				}),
				crit(48495, {	-- House of the Chosen
					["sourceQuests"] = { 60886 },	-- The Seat of the Primus
				}),
				crit(47847, {	-- Matron of Spies
					["sourceQuests"] = { 59009 },	-- Her Rightful Place
				}),
				crit(48496, {	-- House of Constructs
					["sourceQuests"] = { 60733 },	-- Front and Center
				}),
				crit(47844, {	-- House of Plagues
					["sourceQuests"] = { 59231 },	-- Fathomless Power
				}),
				crit(48498, {	-- Ritual for the Damned
					["sourceQuests"] = { 59974 },	-- A Soul Saved
				}),
				crit(48499, {	-- The Empty Throne
					["sourceQuests"] = { 60737 },	-- The Door to the Unknown
				}),
			}),
			ach(14802, {	-- Bloodsport
				crit(50397, {	-- Azmogal
					["_npcs"] = { 162873 },
				}),
				crit(50398, {	-- Unbreaklable Urtz
					["_npcs"] = { 162853 },
				}),
				crit(50399, {	-- Xantuth the Blighted
					["_npcs"] = { 162872 },
				}),
				crit(50400, {	-- Mistress Dyrax
					["_npcs"] = { 162880 },
				}),
				crit(50402, {	-- Devmorta
					["_npcs"] = { 162875 },
				}),
				crit(50403, {	-- Ti'or
					["_npcs"] = { 162874 },
				}),
				crit(48874, {	-- Sabriel the Bonecleaver
					["_npcs"] = { 168147 },
				}),
			}),
			ach(14305),	-- Explore Maldraxxus
			ach(14721, {	-- It's in the Mix
				i(183903),	-- Smelly Jelly (TOY!)
				crit(48854, {
					["_npcs"] = { 157294 },	-- Pulsing Leech
				}),
				crit(48858, {
					["_npcs"] = { 157307 },	-- Gelloh
				}),
				crit(48859, {
					["_npcs"] = { 157312 },	-- Oily Invertebrate
				}),
				crit(48860, {
					["_npcs"] = { 157310 },	-- Boneslurp
				}),
				crit(48861, {
					["_npcs"] = { 157309 },	-- Violet Mistake
				}),
				crit(48862, {
					["_npcs"] = { 157311 },	-- Burnblister
				}),
				crit(48863, {
					["_npcs"] = { 157308 },	-- Corrupted Sediment
				}),
			}),
			ach(14634, {	-- Nine Afterlives
				i(184449),		-- Jiggles's Favorite Toy (TOY!)
				crit(49425, {	-- Hairball
					["description"] = "Close to the top-left corner of the final boss's map. On the left side of the slime pool, kill a green ooze and then turn left. Hairball is in a tiny alcove filled with fish skeletons and candles.",
					["crs"] = { 174195 },	-- Hairball
					["maps"] = {
						1674,	-- Plaguefall
						1697,	-- Plaguefall
					},
				}),
				crit(49426, {	-- Snots
					["coord"] = { 31.9, 57.0, MALDRAXXUS },
					["crs"] = { 174221 },	-- Snots
				}),
				crit(49427, {	-- Pus-In-Boots
					["description"] = "Under the bridge.",
					["coord"] = { 50.2, 60.2, MALDRAXXUS },
					["crs"] = { 174223 },	-- Pus-In-Boots
				}),
				crit(49428, {	-- Envy
					["coord"] = { 65.2, 50.6, MALDRAXXUS },
					["crs"] = { 174224 },	-- Envy
				}),
				crit(49429, {	-- Mr. Jigglesworth
					["coord"] = { 64.8, 22.2, MALDRAXXUS },
					["crs"] = { 174226 },	-- Mr. Jigglesworth
				}),
				crit(49430, {	-- Lime
					["description"] = "Lime is on the bone arch that runs over the road.",
					["coord"] = { 51.0, 27.5, MALDRAXXUS },
					["crs"] = { 174230 },	-- Lime
				}),
				crit(49431, {	-- Mayhem
					["coord"] = { 49.4, 17.5, MALDRAXXUS },
					["crs"] = { 174234 },	-- Mayhem
				}),
				crit(49432, {	-- Moldstopheles
					["description"] = "Moldstopheles is on an offshoot on the side of the big mushroom.",
					["coord"] = { 47.5, 33.7, MALDRAXXUS },
					["crs"] = { 174236 },	-- Moldstopheles
				}),
				crit(49433, {	-- Meowmalade
					["description"] = "Napping inside a small crate.",
					["coord"] = { 34.3, 53.1, MALDRAXXUS },
					["crs"] = { 174237 },	-- Meowmalade
				}),
			}),
			ach(14799, {	-- Sojourner of Maldraxxus
				crit(50322, {	-- Theater of Pain
					["sourceQuests"] = { 57316 },	-- The Ladder
				}),
				crit(50324, {	-- Archival Protection
					["sourceQuests"] = { 58623 },	-- A Complete Set
				}),
				crit(50325, {	-- Mixing Monstrosities
					["sourceQuests"] = { 57301 },	-- Callous Concoctions
				}),
				crit(50328, {	-- Wasteland Work
					["sourceQuests"] = { 58794 },	-- Stabbing Wasteward
				}),
			}),
			achWithRep(14336, FACTION_THE_UNDYING_ARMY),	-- The Undying Army
			ach(14513, {	-- Tour of Duty: Maldraxxus
				["pvp"] = true,
			}),
			ach(14312, {	-- Treasures of Maldraxxus
				crit(50063, {	-- Ornate Bone Shield
					["_quests"] = { 59358 },
				}),
				crit(50064, {	-- Kyrian Keepsake
					["_quests"] = { 60587 },
				}),
				crit(50065, {	-- Halis's Lunch Pail
					["_quests"] = { 60730 },
				}),
				crit(50066, {	-- Vat of Conspicuous Slime
					["_quests"] = { 61444 },
				}),
				crit(50067, {	-- Stolen Jar
					["_quests"] = { 61451 },
				}),
				crit(50068, {	-- Necro Tome
					["_quests"] = { 61470 },
				}),
				crit(50069, {	-- Forgotten Mementos
					["_quests"] = { 58710 },
				}),
				crit(50070, {	-- Chest of Eyes
					["_quests"] = { 59244 },
				}),
				crit(50071, {	-- Misplaced Supplies
					["_quests"] = { 60311 },
				}),
				crit(50072, {	-- Glutharn's Stash
					["_quests"] = { 61484 },
				}),
				crit(50073, {	-- Runespeaker's Trove
					["_quests"] = { 61491 },
				}),
				crit(50074, {	-- Plaguefallen Chest
					["_quests"] = { 61474 },
				}),
				crit(50075, {	-- Ritualist's Cache
					["_quests"] = { 61514 },
				}),
			}),
		}),
	}),
})));
