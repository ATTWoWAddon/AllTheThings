---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(TIRAGARDE_SOUND, {
		n(RARES, {
			n(132182, {	-- Auditor Dolp
				["questID"] = 50156,
				["coord"] = { 75.2, 78.4, TIRAGARDE_SOUND },
				["groups"] = {
					crit(41793, {	-- Auditor Dolp
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(129181, {	-- Barman Bill
				["questID"] = 50233,
				["coord"] = { 76.6, 83.2, TIRAGARDE_SOUND },
				["groups"] = {
					i(160451),	-- Barman Skewer
					crit(41795, {	-- Barman Bill
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
					i(163717),	-- Forbidden Sea Shanty of Josephus
				},
			}),
			n(132068, {	-- Bashmu
				["questID"] = 50094,
				["coord"] = { 34.6, 30.2, TIRAGARDE_SOUND },
				["groups"] = {
					i(160467),	-- Hydra-Hunter Legguards
					crit(41796, {	-- Bashmu
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(132086, {	-- Black-Eyed Bart
				["questID"] = 50096,
				["coord"] = { 56.3, 70.0, TIRAGARDE_SOUND },
				["groups"] = {
					i(158650),	-- Sea-Scourge Greatblade
					crit(41797, {	-- Black-Eyed Bart
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
					i(163718),	-- Forbidden Sea Shanty of the Black Sphere
				},
			}),
			n(139145, {	-- Blackthorne
				["questID"] = 51808,
				["coord"] = { 85.2, 73.6, TIRAGARDE_SOUND },
				["groups"] = {
					i(154411),	-- Vlaros Corps Rifle
					crit(41798, {	-- Blackthorne
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(130508, {	-- Broodmother Razora
				["questID"] = 49999,
				["coord"] = { 83.6, 44.8, TIRAGARDE_SOUND },
				["groups"] = {
					i(160460),	-- Thick Sauroskin Gloves
					crit(41800, {	-- Broodmother Razora
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(132088, {	-- Captain Wintersail
				-- have to interact with object 280649 Smuggler's Cache to spawn
				["questID"] = 50097,
				["coord"] = { 38.6, 21.0, TIRAGARDE_SOUND },
				["groups"] = {
					i(155422, {	-- Pirate Chief's Speargun
						["crs"] = {
							132104,	-- Blackpowder Smuggler
						--	136221,	-- Strongarm Smuggler  (commented to avoid the loot showing up on unrelated mobs)
							132093,	-- Wavecaller Smuggler
						},
					}),
					crit(41806, {	-- Captain Wintersail
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(139152, {	-- Carla Smirk
				["questID"] = 51809,
				["coord"] = { 72.6, 81.2, TIRAGARDE_SOUND },
				["groups"] = {
					i(155271),	-- Monkey's Paw Chopper
					crit(41812, {	-- Carla Smirk
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(132211, {	-- Fowlmouth
				["questID"] = 50155,
				["coord"] = { 89.8, 78.1, TIRAGARDE_SOUND },
				["groups"] = {
					i(154467),	-- Parrot-Trainer Mantle
					crit(41813, {	-- Fowlmouth
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(132127, {	-- Foxhollow Skyterror
				["questID"] = 50137,
				["coord"] = { 60.1, 22.3, TIRAGARDE_SOUND },
				["groups"] = {
					i(160454),	-- Foxhollow Falconer's Bracers
					crit(41814, {	-- Foxhollow Skyterror
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(130350, {	-- Guardian of the Spring
				["description"] = "Mount the horse located at 62.1, 51.8 and ride it to Roan Berthold at 67.3, 51.6.",
				["questID"] = 49983,	-- Ride Horse Back
				["coord"] = { 62.1, 51.8, TIRAGARDE_SOUND },	--  Guardian of the Spring
			}),
			n(139233, {	-- Gulliver
				["questID"] = 53373,
				["coord"] = { 57.7, 56.0, TIRAGARDE_SOUND },
				["groups"] = {
					i(158338),	-- Swift-Travel Gloves
					crit(41819, {	-- Gulliver
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(131520, {	-- Kulett the Ornery
				["questID"] = 49984,
				["coord"] = { 48.2, 22.6, TIRAGARDE_SOUND },
				["groups"] = {
					i(158597),	-- Silvershell Defender
					crit(41820, {	-- Kulett the Ornery
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(134106, {	-- Lumbergrasp Sentinel
				["questID"] = 50525,
				["coord"] = { 68.6, 20.2, TIRAGARDE_SOUND },
				["groups"] = {
					i(155524),	-- Cursetouched Lumberjack's Axe
					crit(41821, {	-- Lumbergrasp Sentinel
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(139290, {	-- Maison the Portable
				["questID"] = 51880,
				["coord"] = { 58.3, 49.3, TIRAGARDE_SOUND },
				["groups"] = {
					i(154458),	-- Shellbreaker Warhelm
					crit(41822, {	-- Maison the Portable
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(131252, {	-- Merianae
				["questID"] = 49921,
				["coord"] = { 43.5, 17.2, TIRAGARDE_SOUND },	-- cave entrance
				["groups"] = {
					i(160461),	-- Thick Sauroskin Pants
					crit(41824, {	-- Merianae
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(139205, {	-- P4-N73R4
				["questID"] = 51833,
				["coord"] = { 65.2, 64.5, TIRAGARDE_SOUND },
				["groups"] = {
					i(161599),	-- Mechano-Cat Claw
					i(168152),	-- Miniaturized Power Core
					crit(41825, {	-- P4-N73R4
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(131262, {	-- Pack Leader Asenya
				["questID"] = 49923,
				["coord"] = { 39.0, 15.2, TIRAGARDE_SOUND },
				["groups"] = {
					i(160263),	-- Snowpelt Mangler
					crit(41826, {	-- Pack Leader Asenya
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(132179, {	-- Raging Swell
				["questID"] = 50148,
				["coord"] = { 64.7, 58.6, TIRAGARDE_SOUND },
				["groups"] = {
					i(161446),	-- Blistering Seawater Seal
					crit(41827, {	-- Raging Swell
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(139278, {	-- Ranja
				["questID"] = 51872,
				["coord"] = { 68.3, 63.56, TIRAGARDE_SOUND },
				["groups"] = {
					i(154478),	-- Ranja-Hide Bracers
					crit(41828, {	-- Ranja
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(127289, {	-- Saurolisk Tamer Mugg
				["questID"] = 48806,
				["coord"] = { 58.47, 14.82, TIRAGARDE_SOUND },
				["groups"] = {
					i(154416, {	-- Trogg Saurolisk-Breaker
						["crs"] = { 127290 },	-- Mugg
					}),
					crit(41829, {	-- Saurolisk Tamer Mugg
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(139285, {	-- Shiverscale the Toxic
				["questID"] = 51876,
				["coord"] = { 55.0, 32.6, TIRAGARDE_SOUND },
				["groups"] = {
					i(155278),	-- Shiverscale Spellknife
					crit(41831, {	-- Shiverscale the Toxic
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(132280, {	-- Squacks
				["questID"] = 50160,
				["coord"] = { 80.8, 82.6, TIRAGARDE_SOUND },
				["groups"] = {
					i(160455),	-- Parrot-Trainer Sash
					crit(41832, {	-- Squacks
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(139135, {	-- Squirgle of the Depths
				["questID"] = 51807,
				["coord"] = { 48.9, 36.9, TIRAGARDE_SOUND },
				["groups"] = {
					i(155551),	-- Squirgle's Deepstone Wand
					crit(41833, {	-- Squirgle of the Depths
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(139280, {	-- Sythian the Swift
				["questID"] = 51873,
				["coord"] = { 66.8, 13.8, TIRAGARDE_SOUND },
				["groups"] = {
					i(154474),	-- Sythian Swiftbelt
					crit(41834, {	-- Sythian the Swift
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(133356, {	-- Tempestria
				["questID"] = 50301,
				["coord"] = { 60.7, 17.4, TIRAGARDE_SOUND },
				["groups"] = {
					i(160466),	-- Saurolisk Broodmother Boots
					crit(41835, {	-- Tempestria
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(139289, {	-- Tentulos the Drifter
				["questID"] = 51879,
				["coord"] = { 55.2, 51.5, TIRAGARDE_SOUND },
				["groups"] = {
					i(154448),	-- Medusa-Drifter's Chainmail
					crit(41836, {	-- Tentulos the Drifter
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(131389, {	-- Teres
				["questID"] = 49942,
				["coord"] = { 63.6, 50.3, TIRAGARDE_SOUND },
				["groups"] = {
					i(158556),	-- Siren's Tongue
					crit(41837, {	-- Teres
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(139235, {	-- Tort Jaw
				["questID"] = 51835,
				["coord"] = { 70.4, 55.7, TIRAGARDE_SOUND },
				["groups"] = {
					i(159349),	-- Dragon Turtle Handlers
					crit(41838, {	-- Tort Jaw
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(132076, {	-- Totes
				["questID"] = 50095,
				["coord"] = { 46.8, 20.6, TIRAGARDE_SOUND },
				["groups"] = {
					i(160452),	-- Goat's Tote
					crit(41839, {	-- Totes
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(131984, {	-- Twin-hearted Construct
				["questID"] = 50073,
				["coord"] = { 70.4, 12.4, TIRAGARDE_SOUND },
				["groups"] = {
					i(160473),	-- Wickerthorn Stompers
					crit(41840, {	-- Twin-hearted Construct
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
			n(132052, {	-- Vol'Jim
				["description"] = "It looks like this NPC didn't make it to live from beta.",
				["timeline"] = { CREATED_8_0_1 },
			}),
			n(137176, {	-- Walter Ferrell
				["questID"] = 51321,
				["coord"] = { 64.2, 19.2, TIRAGARDE_SOUND },
				["crs"] = {
					137181,	-- Mead-Craving Cranee
					137182,	-- Honey-Crazed Gull
					137183,	-- Honey-Coated Slitherer
					137175,	-- Bradford Crusco
				},
				["groups"] = {
					i(160472),	-- Honey-Glazed Gauntlets
					crit(41823, {	-- Imperiled Merchants
						["achievementID"] = 12939,	-- Adventurer of Tiragarde Sound
					}),
				},
			}),
		}),
	}),
})));
