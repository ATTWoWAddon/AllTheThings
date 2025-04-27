-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 } }, {
	applyclassicphase(MOP_PHASE_LANDFALL, n(CHALLENGE_MODE, {
		ach(6920, {	-- Challenge Conqueror
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				6894,	-- Gate of the Setting Sun Challenger
				6892,	-- Mogu'shan Palace Challenger
				6895,	-- Scarlet Halls Challenger
				6896,	-- Scarlet Monastery Challenger
				6897,	-- Scholomance Challenger
				6893,	-- Shado-Pan Monastery Challenger
				6898,	-- Siege of Niuzao Temple Challenger
				6888,	-- Stormstout Brewery Challenger
				6884,	-- Temple of the Jade Serpent Challenger
			}},
		}),
		ach(6374, {	-- Challenge Conqueror: Bronze
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				6905,	-- Gate of the Setting Sun: Bronze
				6899,	-- Mogu'shan Palace: Bronze
				6908,	-- Scarlet Halls: Bronze
				6911,	-- Scarlet Monastery: Bronze
				6914,	-- Scholomance: Bronze
				6902,	-- Shado-Pan Monastery: Bronze
				6917,	-- Siege of Niuzao Temple: Bronze
				6889,	-- Stormstout Brewery: Bronze
				6885,	-- Temple of the Jade Serpent: Bronze
			}},
			["g"] = {
				title(201),	-- <Name> the Undaunted
			},
		}),
		ach(6375, {	-- Challenge Conqueror: Silver
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				6906,	-- Gate of the Setting Sun: Silver
				6900,	-- Mogu'shan Palace: Silver
				6909,	-- Scarlet Halls: Silver
				6912,	-- Scarlet Monastery: Silver
				6915,	-- Scholomance: Silver
				6903,	-- Shado-Pan Monastery: Silver
				6918,	-- Siege of Niuzao Temple: Silver
				6890,	-- Stormstout Brewery: Silver
				6886,	-- Temple of the Jade Serpent: Silver
			}},
			["g"] = {
				i(90045),	-- Ancestral Phoenix Egg
			},
		}),
		ach(6378, {	-- Challenge Conqueror: Gold
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				6907,	-- Gate of the Setting Sun: Gold
				6901,	-- Mogu'shan Palace: Gold
				6910,	-- Scarlet Halls: Gold
				6913,	-- Scarlet Monastery: Gold
				6916,	-- Scholomance: Gold
				6904,	-- Shado-Pan Monastery: Gold
				6919,	-- Siege of Niuzao Temple: Gold
				6891,	-- Stormstout Brewery: Gold
				6888,	-- Temple of the Jade Serpent: Gold
			}},
			["g"] = {
				i(90156, {	-- Golden Chest of the Betrayer
					["classes"] = { WARLOCK },
					["groups"] = {
						i(90137),	-- Boots of the Betrayer
						i(90139),	-- Bracers of the Betrayer
						i(90138),	-- Amice of the Betrayer
						i(90136),	-- Belt of the Betrayer
						i(90141),	-- Handguards of the Betrayer
						i(90142),	-- Horns of the Betrayer
						i(90143),	-- Leggings of the Betrayer
						i(90140),	-- Robes of the Betrayer
					},
				}),
				i(90164, {	-- Golden Chest of the Cycle
					["classes"] = { DRUID },
					["groups"] = {
						i(90066),	-- Bracers of the Cycle
						i(90063),	-- Leggings of the Cycle
						i(90060),	-- Sandals of the Cycle
						i(90059),	-- Waistguard of the Cycle
						i(90065),	-- Branches of the Cycle
						i(90061),	-- Gloves of the Cycle
						i(90062),	-- Hood of the Cycle
						i(90064),	-- Robes of the Cycle
					},
				}),
				i(90158, {	-- Golden Chest of the Elemental Triad
					["classes"] = { MAGE },
					["groups"] = {
						i(90082),	-- Hood of the Elemental Triad
						i(90083),	-- Leggings of the Elemental Triad
						i(90084),	-- Robes of the Elemental Triad
						i(90085),	-- Spaulders of the Elemental Triad
						i(90086),	-- Bracers of the Elemental Triad
						i(90081),	-- Gloves of the Elemental Triad
						i(90080),	-- Boots of the Elemental Triad
						i(90079),	-- Girdle of the Elemental Triad
					},
				}),
				i(90155, {	-- Golden Chest of the Golden King
					["classes"] = { WARRIOR },
					["groups"] = {
						i(90154),	-- Bracers of the Golden King
						i(90151),	-- Crown of the Golden King
						i(90148),	-- Greatboots of the Golden King
						i(90147),	-- Girdle of the Golden King
						i(90150),	-- Reach of the Golden King
						i(90153),	-- Mantle of the Golden King
						i(90149),	-- Chestplate of the Golden King
						i(90152),	-- Greaves of the Golden King
					},
				}),
				i(90161, {	-- Golden Chest of the Holy Warrior
					["classes"] = { PALADIN },
					["groups"] = {
						i(90098),	-- Chestplate of the Holy Warrior
						i(90099),	-- Gauntlets of the Holy Warrior
						i(90096),	-- Girdle of the Holy Warrior
						i(90097),	-- Greatboots of the Holy Warrior
						i(90100),	-- Greathelm of the Holy Warrior
						i(90101),	-- Legplates of the Holy Warrior
						i(90102),	-- Shoulderplate of the Holy Warrior
						i(90103),	-- Wristguards of the Holy Warrior
					},
				}),
				i(90163, {	-- Golden Chest of the Howling Beast
					["classes"] = { HUNTER },
					["groups"] = {
						i(90070),	-- Chestguard of the Howling Beast
						i(90075),	-- Wristwraps of the Howling Beast
						i(90068),	-- Cinch of the Howling Beast
						i(90069),	-- Boots of the Howling Beast
						i(90071),	-- Grips of the Howling Beast
						i(90072),	-- Helm of the Howling Beast
						i(90073),	-- Legguards of the Howling Beast
						i(90074),	-- Shoulderguards of the Howling Beast
					},
				}),
				i(90165, {	-- Golden Chest of the Lich Lord
					["classes"] = { DEATHKNIGHT },
					["groups"] = {
						i(90056),	-- Bracers of the Lich Lord
						i(90051),	-- Chestguard of the Lich Lord
						i(90053),	-- Crown of the Lich Lord
						i(90049),	-- Girdle of the Lich Lord
						i(90052),	-- Grasps of the Lich Lord
						i(90054),	-- Legplates of the Lich Lord
						i(90055),	-- Shoulderguards of the Lich Lord
						i(90050),	-- Treads of the Lich Lord
					},
				}),
				i(90160, {	-- Golden Chest of the Light
					["classes"] = { PRIEST },
					["groups"] = {
						i(90112),	-- Bracers of the Light
						i(90116),	-- Cowl of the Light
						i(90117),	-- Leggings of the Light
						i(90115),	-- Hands of the Light
						i(90114),	-- Robes of the Light
						i(90111),	-- Steps of the Light
						i(90110),	-- Cord of the Light
						i(90113),	-- Pauldrons of the Light
					},
				}),
				i(90162, {	-- Golden Chest of the Regal Lord
					["classes"] = { MONK },
					["groups"] = {
						i(90095),	-- Bracers of the Regal Lord
						i(90090),	-- Chestwrap of the Regal Lord
						i(90092),	-- Crown of the Regal Lord
						i(90088),	-- Greatbelt of the Regal Lord
						i(90091),	-- Handwraps of the Regal Lord
						i(90093),	-- Legwraps of the Regal Lord
						i(90094),	-- Shoulderguards of the Regal Lord
						i(90089),	-- Treads of the Regal Lord
					},
				}),
				i(90159, {	-- Golden Chest of the Silent Assassin
					["classes"] = { ROGUE },
					["groups"] = {
						i(90126),	-- Bracers of the Silent Assassin
						i(90119),	-- Girdle of the Silent Assassin
						i(90123),	-- Gloves of the Silent Assassin
						i(90120),	-- Hood of the Silent Assassin
						i(90124),	-- Leggings of the Silent Assassin
						i(90122),	-- Shadowwrap of the Silent Assassin
						i(90125),	-- Spaulders of the Silent Assassin
						i(90121),	-- Tabi of the Silent Assassin
					},
				}),
				i(90157, {	-- Golden Chest of Windfury
					["classes"] = { SHAMAN },
					["groups"] = {
						i(90130),	-- Windfury Harness
						i(90127),	-- Windfury Bracers
						i(90133),	-- Windfury Legguards
						i(90132),	-- Windfury Mask
						i(90129),	-- Windfury Sandals
						i(90128),	-- Windfury Belt
						i(90131),	-- Windfury Crushers
						i(90134),	-- Windfury Spirit Guides
					},
				}),
			},
		}),
		ach(8903, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2, REMOVED_6_0_3_LAUNCH } }, {		-- Mistwalker
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				8434,	-- Challenge Master: Gate of the Setting Sun
				8433,	-- Challenge Master: Mogu'shan Palace
				8436,	-- Challenge Master: Scarlet Halls
				8437,	-- Challenge Master: Scarlet Monastery
				8438,	-- Challenge Master: Scholomance
				8432,	-- Challenge Master: Shado-Pan Monastery
				8439,	-- Challenge Master: Siege of Niuzao Temple
				8431,	-- Challenge Master: Stormstout Brewery
				8430,	-- Challenge Master: Temple of the Jade Serpent
			}},
			["g"] = {
				title(255),	-- Mistwalker <Name>
			},
		})),
		ach(6894),	-- Gate of the Setting Sun Challenger
		ach(6905),	-- Gate of the Setting Sun: Bronze
		ach(6906),	-- Gate of the Setting Sun: Silver
		ach(6907, {	-- Gate of the Setting Sun: Gold
			spell(131225),	-- Path of the Setting Sun
		}),
		ach(8434, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 } }, {	-- Challenge Master: Gate of the Setting Sun
			title(241),	-- <Name>, Defender of the Wall
		})),
		ach(6892),	-- Mogu'shan Palace Challenger
		ach(6899),	-- Mogu'shan Palace: Bronze
		ach(6900),	-- Mogu'shan Palace: Silver
		ach(6901, {	-- Mogu'shan Palace: Gold
			spell(131222),	-- Path of the Mogu King
		}),
		ach(8433, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 } }, {	-- Challenge Master: Mogu'shan Palace
			title(242),	-- Mogu-Slayer <Name>
		})),
		ach(6895),	-- Scarlet Halls Challenger
		ach(6908),	-- Scarlet Halls: Bronze
		ach(6909),	-- Scarlet Halls: Silver
		ach(6910, {	-- Scarlet Halls: Gold
			spell(131231),	-- Path of the Scarlet Blade
		}),
		ach(8436, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 } }, {	-- Challenge Master: Scarlet Halls
			title(243),	-- Flameweaver <Name>
		})),
		ach(6896),	-- Scarlet Monastery Challenger
		ach(6911),	-- Scarlet Monastery: Bronze
		ach(6912),	-- Scarlet Monastery: Silver
		ach(6913, {	-- Scarlet Monastery: Gold
			spell(131229),	-- Path of the Scarlet Mitre
		}),
		ach(8437, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 } }, {	-- Challenge Master: Scarlet Monastery
			title(244),	-- Scarlet Commander <Name>
		})),
		ach(6897),	-- Scholomance Challenger
		ach(6914),	-- Scholomance: Bronze
		ach(6915),	-- Scholomance: Silver
		ach(6916, {	-- Scholomance: Gold
			spell(131232),	-- Path of the Necromancer
		}),
		ach(8438, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 } }, {	-- Challenge Master: Scholomance
			title(245),	-- Darkmaster <Name>
		})),
		ach(6893),	-- Shado-Pan Monastery Challenger
		ach(6902),	-- Shado-Pan Monastery: Bronze
		ach(6903),	-- Shado-Pan Monastery: Silver
		ach(6904, {	-- Shado-Pan Monastery: Gold
			spell(131206),	-- Path of the Shado-Pan
		}),
		ach(8432, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 } }, {	-- Challenge Master: Shado-Pan Monastery
			title(246),	-- Purified Defender <Name>
		})),
		ach(6898),	-- Siege of Niuzao Temple Challenger
		ach(6917),	-- Siege of Niuzao Temple: Bronze
		ach(6918),	-- Siege of Niuzao Temple: Silver
		ach(6919, {	-- Siege of Niuzao Temple: Gold
			spell(131228),	-- Path of the Black Ox
		}),
		ach(8439, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 } }, {	-- Challenge Master: Siege of Niuzao Temple
			title(247),	-- Siegebreaker <Name>
		})),
		ach(6888),	-- Stormstout Brewery Challenger
		ach(6889),	-- Stormstout Brewery: Bronze
		ach(6890),	-- Stormstout Brewery: Silver
		ach(6891, {	-- Stormstout Brewery: Gold
			spell(131205),	-- Path of the Stout Brew
		}),
		ach(8431, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 } }, {	-- Challenge Master: Stormstout Brewery
			title(248),	-- Stormbrewer <Name>
		})),
		ach(6884),	-- Temple of the Jade Serpent Challenger
		ach(6885),	-- Temple of the Jade Serpent: Bronze
		ach(6886),	-- Temple of the Jade Serpent: Silver
		ach(6887, {	-- Temple of the Jade Serpent: Gold
			spell(131204),	-- Path of the Jade Serpent
		}),
		ach(8430, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 } }, {	-- Challenge Master: Temple of the Jade Serpent
			title(249),	-- Jade Protector <Name>
		})),
		ach(6433, {	-- Realm First! Challenge Conqueror: Gold
			["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
		}),
	})),
})));