---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(NAZMIR, {
		n(RARES, {
			n(133505, {	-- Aiji the Accursed
				["questID"] = 50339,
				["coord"] = { 53.0, 72.1, NAZMIR },
				["description"] = "Light all 5 braziers in the area to summon.",
			}),
			n(125250, {	-- Ancient Jawbreaker
				["questID"] = 48063,
				["coord"] = { 67.6, 29.3, NAZMIR },
				["groups"] = {
					i(161113),	-- Incessantly Ticking Clock
					crit(41440, {	-- Ancient Jawbreaker
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
				},
			}),
			n(134298, {	-- Azerite-Infused Elemental
				["questID"] = 50569,
				["coord"] = { 54.0, 80.9, NAZMIR },
				["groups"] = {
					crit(41444, {	-- Azerite-Infused Elemental
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
				},
			}),
			n(134293, {	-- Azerite-Infused Slag
				["questID"] = 50563,
				["coord"] = { 32.98, 26.80, NAZMIR },
				["groups"] = {
					crit(41447, {	-- Azerite-Infused Slag
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161100),	-- Fused-Slag Girdle
				},
			}),
			n(126142, {	-- Bajiatha
				["questID"] = 48439,
				["coord"] = { 42.6, 60.4, NAZMIR },
				["groups"] = {
					crit(41466, {	-- Bajiatha
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161093),	-- Clutch Mother Wristwraps
				},
			}),
			n(126635, {	-- Blood Priest Xak'lar
				["questID"] = 48541,
				["coord"] = { 43.1, 90.4, NAZMIR },
				["groups"] = {
					crit(41448, {	-- Blood Priest Xak'lar
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161217),	-- Tainted Blood Vambraces
				},
			}),
			n(125232, {	-- Captain Mu'kala (Cursed Chest)
				["questID"] = 48057,
				["coord"] = { 81.9, 30.6, NAZMIR },
				["groups"] = {
					crit(41454, {	-- Cursed Chest
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161115),	-- Cursed Captain's Charm
				},
			}),
			n(126187, {	-- Corpse Bringer Yal'kar
				["questID"] = 48462,
				["coord"] = { 41.4, 53.4, NAZMIR },
				["groups"] = {
					crit(41453, {	-- Corpse Bringer Yal'kar
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161102),	-- Corpseblood Belt
				},
			}),
			n(121242, {	-- Glompmaw
				["questID"] = 50361,
				["coord"] = { 68.5, 57.4, NAZMIR },
				["groups"] = {
					crit(41456, {	-- Glompmaw
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(160985),	-- Glompmaw's Ring
				},
			}),
			n(128426, {	-- Gutrip <The Hungry>
				["questID"] = 49231,
				["coord"] = { 32.8, 43.1, NAZMIR },
				["groups"] = {
					crit(41457, {	-- Gutrip the Hungry
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161041),	-- Gutrip's Tramplers
				},
			}),
			n(127001, {	-- Gwugnug the Cursed
				["description"] = "This rare is not on top of the mountain, but on the middle level in a cave. The cave entrance is on the southern side of the mountain.",
				["questID"] = 48638,
				["coord"] = { 33.4, 87.1, NAZMIR },
				["groups"] = {
					crit(41455, {	-- Gwugnug the Cursed
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(162614),	-- Gwugnug's Cursed Wraps
				},
			}),
			n(124399, {	-- Infected Direhorn
				["questID"] = 47877,
				["coord"] = { 24.9, 77.7, NAZMIR },
				["groups"] = {
					crit(41459, {	-- Infected Direhorn
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161218),	-- Direhorn Studded Belt
				},
			}),
			n(133373, {	-- Jax'teb the Reanimated
				["questID"] = 50307,
				["coord"] = { 45.1, 51.9, NAZMIR },
				["groups"] = {
					crit(41460, {	-- Jax'teb the Reanimated
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(160969),	-- Reanimated Necromancer's Blade
				},
			}),
			n(133527, {	-- Juba the Scarred
				["questID"] = 50342,
				["coord"] = { 28.2, 33.8, NAZMIR },
				["groups"] = {
					crit(41461, {	-- Juba the Scarred
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(160950),	-- Nicked Nazmani Greataxe
				},
			}),
			n(124397, {	-- Kal'draxa <Bane of Blood Trolls>
				["questID"] = 47843,
				["coord"] = { 52.8, 13.6, NAZMIR },
				["groups"] = {
					crit(41462, {	-- Kal'draxa
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161018),	-- Winged Terror Wristwraps
				},
			}),
			n(129005, {	-- King Kooba
				["questID"] = 49317,
				["coord"] = { 53.1, 42.8, NAZMIR },
				["groups"] = {
					crit(41451, {	-- King Kooba
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161221),	-- Jungle King Mudtossers
				},
			}),
			n(125214, {	-- Krubbs
				["questID"] = 48052,
				["coord"] = { 75.8, 36.3, NAZMIR },
				["groups"] = {
					crit(41463, {	-- Krubbs
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161110),	-- Crusty Chitin Armguards
				},
			}),
			n(133539, {	-- Lo'kuno
				["questID"] = 50355,
				["coord"] = { 77.5, 45.3, NAZMIR },
				["groups"] = {
					crit(41478, {	-- Lo'kuno
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161111),	-- Marshqueen's Crushers
				},
			}),
			n(134295, {	-- Lost Scroll
				["questID"] = 50565,
				["coord"] = { 81.7, 61.1, NAZMIR },
				["groups"] = {
					crit(41464, {	-- Lost Scroll
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161045, {	-- Scrollbound Hurricane Slippers
						["crs"] = { 134294 },	-- Enraged Water Elemental
					}),
				},
			}),
			n(134296, {	-- Lucille (Chag's Challenge)
				["questID"] = 50567,
				["coord"] = { 68.0, 19.8, NAZMIR },
				["description"] = "This rare is sometimes bugged when the world quest is active. If you cannot talk to Chag to summon Lucille, try Warmode On/Off to enter another shard that he might be working in, or come back later.",
				["groups"] = {
					crit(41452, {	-- Chag's Challenge
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161046, {	-- Scrollbound Arachnid Gloves
						["crs"] = { 134297 },	-- Chag
					}),
				},
			}),
			n(128935, {	-- Mala'kili
				["questID"] = 50040,
				["coord"] = { 52.9, 54.6, NAZMIR },
				["groups"] = {
					crit(41479, {	-- Mala'kili and Rohnkor
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(163703, {	-- Crawag Gnawed Femur
						["crs"] = { 128930 },	-- Rohnkor
					}),
				},
			}),
			n(124375, {	-- Overstuffed Saurolisk
				["questID"] = 47827,
				["coord"] = { 62.1, 65.0, NAZMIR },
				["groups"] = {
					i(160987),	-- Ring of Incomplete Digestion
				},
			}),
			n(128974, {	-- Queen Tzxi'kik
				["questID"] = 49312,
				["coord"] = { 57.81, 67.52, NAZMIR },
				["groups"] = {
					crit(41458, {	-- Queen Tzxi'kik
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(160963),	-- Blood Jungle Stinger
				},
			}),
			n(127820, {	-- Scout Skrasniss
				["questID"] = 48972,
				["coord"] = { 59.1, 38.9, NAZMIR },
				["groups"] = {
					crit(41467, {	-- Scout Skrasniss
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(160951),	-- Evergreen Scout's Bow
				},
			}),
			n(127873, {	-- Scrounger Patriarch
				["questID"] = 48980,
				["coord"] = { 58.0, 9.10, NAZMIR },
				["groups"] = {
					crit(41468, {	-- Scrounger Patriarch
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161219),	-- Raptor Patriarch Gloves
				},
			}),
			n(124475, {	-- Shambling Ambusher
				["questID"] = 47878,
				["coord"] = { 29.1, 55.6, NAZMIR },
			}),
			n(143316, {	-- Skullcap
				["coord"] = { 52.6, 70.0, NAZMIR },
			}),
			n(126460, {	-- Tainted Guardian
				["questID"] = 48508,
				["coord"] = { 31.4, 38.1, NAZMIR },
				["groups"] = {
					crit(41469, {	-- Tainted Guardian
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(162621),	-- Nazmani Golem's Greathelm
				},
			}),
			n(143311, {	-- Toadcruel
				["coord"] = { 73.6, 48.8, NAZMIR },
			}),
			n(126056, {	-- Totem Maker Jash'ga
				["questID"] = 48406,
				["coord"] = { 49.4, 37.2, NAZMIR },
				["groups"] = {
					crit(41470, {	-- Totem Maker Jash'ga
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(162618),	-- Totem Matriarch's Headdress
				},
			}),
			o(282666, {	-- Urn of Agussu
				["questID"] = 50888,
				["coord"] = { 38.1, 57.6, NAZMIR },
				["icon"] = 134514,
				-- ["crs"] = { 135565 },	-- Guardian of Agussu
				["groups"] = {
					crit(41472, {	-- Urn of Agussu
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
				},
			}),
			n(128965, {	-- Uroku the Bound
				["questID"] = 49305,
				["coord"] = { 44.2, 48.9, NAZMIR },
				["groups"] = {
					crit(41450, {	-- Uroku the Bound
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161094),	-- Voodoo-Bound Handwraps
				},
			}),
			n(126926, {	-- Venomjaw
				["questID"] = 48626,
				["coord"] = { 29.5, 50.8, NAZMIR },
				["groups"] = {
					crit(41473, {	-- Venomjaw
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161028),	-- Noxious Crocolisk Trousers
				},
			}),
			n(128584, {	-- Vugthuth -- only up during a world quest
				["questID"] = 50366,	-- 50459 for WQ
				["coord"] = { 46.8, 33.6, NAZMIR },
				["groups"] = {
					i(161098),	-- Abyssal Scale Gauntlets
				},
			}),
			n(126907, {	-- Wardrummer Zurula
				["questID"] = 48623,
				["coord"] = { 48.7, 50.8, NAZMIR },
				["groups"] = {
					crit(41474, {	-- Wardrummer Zurula
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(160961),	-- Warmother's Drummer
				},
			}),
			n(133531, {	-- Xu'ba <The Bone Collector>
				["questID"] = 50348,
				["coord"] = { 36.6, 50.6, NAZMIR },
				["groups"] = {
					crit(41475, {	-- Xu'ba the Bone Collector
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(162619),	-- Bone Collector's Chestcage
				},
			}),
			n(129657, {	-- Za'amar the Queen's Blade
				["questID"] = 49469,
				["coords"] = {
					{ 38.7, 29.0, NAZMIR },	-- entrance
					-- { 38.7, 26.7, NAZMIR },	-- mob (if we ever have ability to add descriptions to coords)
				},
				["groups"] = {
					crit(41476, {	-- Za'amar the Queen's Blade
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161095),	-- Queensguard Specter Legwraps
				},
			}),
			n(133812, {	-- Zanxib <The Engorged>
				["questID"] = 50423,
				["coord"] = { 38.8, 71.3, NAZMIR },
				["groups"] = {
					crit(41477, {	-- Zanxib the Engorged
						["achievementID"] = 12942,	-- Adventurer of Nazmir
					}),
					i(161092),	-- Rivermarsh Quickclaw Buckle
				},
			}),
			n(128578, {	-- Zujothgul -- possibly only up when WQ is active
				["coord"] = { 39.6, 50.6, NAZMIR },
				["groups"] = {
					i(161101),	-- Bone Horror's Armsplints
				},
			}),
		}),
	}),
})));
