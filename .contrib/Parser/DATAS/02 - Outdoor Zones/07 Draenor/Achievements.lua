---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAENOR, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	n(ACHIEVEMENTS, {
		applyclassicphase(WOD_PHASE_ONE, ach(8935, {	-- Draenor Explorer [7.0.3] / Explore Draenor
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				8937,	-- Explore Frostfire Ridge
				8939,	-- Explore Gorgrond
				8942,	-- Explore Nagrand
				8938,	-- Explore Shadowmoon Valley
				8941,	-- Explore Spires of Arak
				8940,	-- Explore Talador
			}},
		})),
		ach(10018, {	-- Draenor Pathfinder
			["sym"] = {{"meta_achievement",
				8935,	-- Draenor Explorer
				9833,	-- Loremaster of Draenor (Alliance)
				9923,	-- Loremaster of Draenor (Horde)
				9564,	-- Securing Draenor (Alliance)
				9562,	-- Securing Draenor (Horde)
				10348,	-- Master Treasure Hunter
				10350,	-- Tanaan Diplomat (Alliance)
				10349,	-- Tanaan Diplomat (Horde)
			}},
			["groups"] = {
				i(128706),	-- Soaring Skyterror (MOUNT!)
			},
		}),
		petbattle(ach(9685, {		-- Draenor Safari
			i(111866),		-- Royal Peacock (PET!)
			crit(27256),		-- Amberbarb Wasp (Gorgrond)
			crit(27259),		-- Axebeak Hatchling (Gorgrond)
			crit(27253),		-- Bloodsting Wasp (Spires of Arak)
			crit(27260),		-- Brilliant Bloodfeather (Talador)
			crit(27276),		-- Flat-Tooth Calf (Talador)
			crit(27017),		-- Frostfur Rat (Frostfire Ridge)
			crit(27263),		-- Frostshell Pincher (Frostfire Ridge)
			crit(27261),		-- Golden Dawnfeather (Spires of Arak)
			crit(27252),		-- Icespine Hatchling (Frostfire Ridge)
			crit(27264),		-- Ironclaw Scuttler (Frostfire Ridge, Stormheim)
			crit(27258),		-- Junglebeak (Gorgrond)
			crit(27267),		-- Kelp Scuttler (Azsuna, Stormheim)
			crit(27246),		-- Leatherhide Runt (Nagrand)
			crit(27248),		-- Moonshell Crab (Shadowmoon Valley)
			crit(27250),		-- Mossbite Skitterer (Shadowmoon Valley)
			crit(27247),		-- Mud Jumper (Spires of Arak, Talador, Stormheim, Highmountain, Nagrand)
			crit(27275),		-- Mudback Calf (Gorgrond)
			crit(27269),		-- Royal Moth (Shadowmoon Valley, Talador, Spires of Arak, Azsuna)
			crit(27278),		-- Shadow Sporebat (Talador)
			crit(27272),		-- Swamplighter Firefly (Spires of Arak, Highmountain)
			crit(27251),		-- Thicket Skitterer (Spires of Arak)
			crit(27255),		-- Twilight Wasp (Frostfire Ridge, Gorgrond, Frostwall)
			crit(27274),		-- Waterfly (Shadowmoon Valley, Talador, Spires of Arak, Tanaan Jungle)
			crit(27254),		-- Wood Wasp (Gorgrond)
			crit(27266),		-- Zangar Crawler (Shadowmoon Valley, Spires of Arak)
		})),
		ach(9728, {			-- Grand Treasure Hunter
			ach(10348),		-- Master Treasure Hunter
			ach(9727),		-- Expert Treasure Hunter
			ach(9726),		-- Treasure Hunter
		}),
		ach(10053, {	-- I Found Pepe!
			["timeline"] = { ADDED_6_2_0 },
			["groups"] = {
				crit(28185, {	-- Pirate Pepe
					["provider"] = { "i", 127870 },	-- A Tiny Pirate Hat
				}),
				crit(28184, {	-- Viking Pepe
					["provider"] = { "i", 127865 },	-- A Tiny Viking Helmet
				}),
				crit(28183, {	-- Knight Pepe
					["provider"] = { "i", 127869 },	-- A Tiny Plated Helm
				}),
				crit(28182, {	-- Ninja Pepe
					["provider"] = { "i", 127867 },	-- A Tiny Ninja Shroud
				}),
			},
		}),
		a(ach(9833, {	-- Loremaster of Draenor [A]
			["sym"] = {{"meta_achievement",
				8845,	-- As I Walk Through the Valley of the Shadow of Moon
				8925,	-- Between Arak and a Hard Place [A]
				8920,	-- Don't Let the Tala-door Hit You on the Way Out [A]
				8927,	-- Nagrandeur [A]
				8923,	-- Putting the Gore in Gorgrond [A]
			}},
		})),
		h(ach(9923, {	-- Loremaster of Draenor [H]
			["sym"] = {{"meta_achievement",
				8926,	-- Between Arak and a Hard Place [H]
				8919,	-- Don't Let the Tala-door Hit You on the Way Out [H]
				8928,	-- Nagrandeur [H]
				8924,	-- Putting the Gore in Gorgrond [H]
				8671,	-- You'll Get Caught Up In The... Frostfire!
			}},
		})),
		petbattle(ach(9724, {	-- Taming Draenor
			["timeline"] = { ADDED_6_0_2 },
			["groups"] = {
				crit(27012),	-- Ashlei [Shadowmoon Valley)
				crit(27011),	-- Cymre Brightblade [Gorgrond)
				crit(27013),	-- Gargra [Frostfire Ridge)
				crit(27016),	-- Taralune [Talador)
				crit(27015),	-- Tarr the Terrible [Nagrand)
				crit(27014),	-- Vesharr [Spires of Arak)
			},
		})),
		ach(14728, {		-- To All The Squirrels Through Time and Space
			crit(49746, {	-- Royal Moth
				["crs"] = { 88975 },	-- Royal Moth
				["coord"] = { 39.0, 36.0, DRAENOR_SHADOWMOON_VALLEY },
			}),
			crit(49747, {	-- Moonshell Crab
				["crs"] = { 88976 },	-- Moonshell Crab
				["coord"] = { 39.96,17.03, DRAENOR_SHADOWMOON_VALLEY },
			}),
			crit(49764, {	-- Moon Snake
				["crs"] = { 75475 },	-- Moon Snake
				["coord"] = { 44.97, 48.71, DRAENOR_SHADOWMOON_VALLEY },
			}),
			crit(49765, {	-- Mossbite Skitterer
				["crs"] = { 88463 },	-- Mossbite Skitterer
				["coord"] = { 48.30, 83.25, DRAENOR_SHADOWMOON_VALLEY },
			}),
			crit(49768, {	-- Bloodbeak
				["crs"] = { 88998 },	-- Bloodbeak
				["coord"] = { 48.48, 51.22, TANAAN_JUNGLE },
			}),
			crit(49769, {	-- Brilliant Bloodfeather
				["crs"] = { 88994 },	-- Brilliant Bloodfeather
				["coord"] = { 46.71, 85.55, TALADOR },
			}),
			crit(49780, {	-- Flat-Tooth Calf
				["crs"] = { 88983 },	-- Flat-Tooth Calf
				["coord"] = { 57.05, 74.31, TALADOR },
			}),
			crit(49781, {	-- Frostfur Rat
				["crs"] = { 88985 },	-- Frostfur Rat
				["coord"] = { 66.69, 76.35, FROSTFIRE_RIDGE },
			}),
			crit(49782, {	-- Icespine Hatchling
				["crs"] = { 88441 },	-- Icespine Hatchling
				["coord"] = { 66.69, 76.35, FROSTFIRE_RIDGE },
			}),
			crit(49783, {	-- Twilight Wasp
				["crs"] = { 88427 },	-- Twilight Wasp
				["coord"] = { 53.95, 68.79, GORGROND },
			}),
			crit(49784, {	-- Parched Lizard
				["crs"] = { 88639 },	-- Parched Lizard
				["coord"] = { 42.40, 38.99, GORGROND },
			}),
			crit(49785, {	-- Shadow Sporebat
				["crs"] = { 88996 },	-- Shadow Sporebat
				["coord"] = { 81.70, 27.11, TALADOR },
			}),
			crit(49786, {	-- Thicket Skitterer
				["crs"] = { 88462 },	-- Thicket Skitterer
				["coord"] = { 63.29, 53.96, SPIRES_OF_ARAK },
			}),
			crit(49787, {	-- Mud Jumper
				["crs"] = { 83674 },	-- Mud Jumper
				["coord"] = { 38.23, 29.72, SPIRES_OF_ARAK },
			}),
			crit(49788, {	-- Leatherhide Runt
				["crs"] = { 83617 },	-- Leatherhide Runt
				["coord"] = { 72.89, 42.27, DRAENOR_NAGRAND },
			}),
		}),
	}),
})))
