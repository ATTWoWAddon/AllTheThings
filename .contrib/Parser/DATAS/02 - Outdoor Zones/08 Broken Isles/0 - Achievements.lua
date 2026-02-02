---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(BROKEN_ISLES, bubbleDown({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	n(ACHIEVEMENTS, {
		ach(10876, {	-- Battle on the Broken Isles
			["sym"] = {{ "achievement_criteria" }},
			["groups"] = {
				i(139003, {	-- Pocket Pet Portal (CI!)
					["timeline"] = { REMOVED_9_1_0 },
				}),
			},
		}),
		ach(10672, {	-- Broken Isles Diplomat
			crit(30498),		-- Court of Farondis
			crit(30500),		-- The Dreamweavers
			crit(30497),		-- Highmountain Tribe
			crit(30501),		-- The Valarjar
			crit(30499),		-- The Nightfallen
			crit(30496),		-- The Wardens
		}),
		applyclassicphase(LEGION_PHASE_ONE, ach(11188, {	-- Broken Isles Explorer
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				10665,	-- Explore Azsuna
				10666,	-- Explore Val'sharah
				10667,	-- Explore Highmountain
				10668,	-- Explore Stormheim
				10669,	-- Explore Suramar
			}},
		})),
		ach(11190, {	-- Broken Isles Pathfinder, Part One
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				11188,	-- Broken Isles Explorer
				11157,	-- Loremaster of Legion
				11189,	-- Variety is the Spice of Life
				10672,	-- Broken Isles Diplomat
				10994,	-- A Glorious Campaign
			}},
		}),
		ach(11446, {	-- Broken Isles Pathfinder, Part Two
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				11190,	-- Broken Isles Pathfinder, Part One
				11543,	-- Explore Broken Shore
				11545,	-- Legionfall Commander
			}},
		}),
		petbattle(ach(11233, {	-- Broken Isles Safari
			i(141352),		-- Rescued Fawn (PET!)
			crit(33107),		-- Albatross Chick (Azsuna, Stormheim)
			crit(33108),		-- Fledgling Kingfeather (Azsuna)
			crit(33109),		-- Fledgling Oliveback (Azsuna)
			crit(33110),		-- Golden Eaglet (Stormheim)
			crit(33111),		-- Long-Eared Owl (Highmountain, Stormheim)
			crit(33112),		-- Northern Hawk Owl (Highmountain)
			crit(33113),		-- Burrow Spiderling (Highmountain)
			crit(33114),		-- Juvenile Scuttleback (Azsuna, Eye of Azshara)
			crit(33115),		-- Olivetail Hare (Azsuna)
			crit(33116),		-- Felspider (Azsuna)
			crit(33117),		-- Shimmering Aquafly (Val'sharah)
			crit(33118),		-- Terror Larva (Val'sharah)
			crit(33119),		-- Slithering Brownscale (Stormheim, Val'sharah, Azsuna)
			crit(33120),		-- Vale Flitter (Val'sharah)
			crit(33121),		-- Auburn Ringtail (Val'sharah)
			crit(33122),		-- Spring Strider (Val'sharah)
			crit(33123),		-- Black-Footed Fox Kit (Highmountain, Stormheim)
			crit(33124),		-- Mist Fox Kit (Highmountain, Stormheim)
			crit(33125),		-- Rose Taipan (Stormheim)
			crit(33126),		-- Tiny Apparition (Stormheim)
			crit(33127),		-- Echo Batling (Highmountain)
			crit(33128),		-- Hog-Nosed Bat (Highmountain)
			crit(33129),		-- Spiketail Beaver (Highmountain)
			crit(33130),		-- Erudite Manafiend (Azsuna)
			crit(33131),		-- Eldritch Manafiend (Azsuna)
			crit(33132),		-- Coralback Fiddler (Highmountain)
			crit(33133),		-- Mudshell Conch (Highmountain)
			crit(33134),		-- Dust Bunny (Dalaran)
			crit(33135),		-- Vicious Broodling (Suramar)
			crit(33136),		-- Crystalline Broodling (Suramar)
			crit(33137),		-- Thornclaw Broodling (Suramar)
			crit(33138),		-- Gleamhoof Fawn (Val'sharah)
			crit(33139),		-- Coastal Sandpiper (Azsuna, Suramar, Eye of Azshara)
			crit(33140),		-- Blind Rat (Dalaran)
			crit(33141),		-- Stormstruck Beaver (Stormheim)
		})),
		ach(42114, {	-- Broken Memories
			["timeline"] = { ADDED_11_2_7 },
			["sym"] = {{"meta_achievement",
				11157,	-- Loremaster of Legion
				11124,	-- Good Suramaritan
				11256,	-- Treasures of Azsuna
				11258,	-- Treasures of Val'sharah
				11257,	-- Treasures of Highmountain
				11259,	-- Treasures of Stormheim
				11260,	-- Treasures of Suramar
			}},
		}),
		header(HEADERS.Achievement, 9696, {	-- Family Familiar
			petbattle(ach(9696, {	-- Family Familiar
				-- Meta Achievement should symlink the contained Achievements from Source
				["sym"] = {{"meta_achievement",
					9686,	-- Aquatic Acquiescence
					9687,	-- Best of the Beasts
					9688,	-- Mousing Around
					9689,	-- Dragons!
					9690,	-- Ragnaros, Watch and Learn
					9691,	-- Flock Together
					9692,	-- Murlocs, Harpies, and Wolvar, Oh My!
					9693,	-- Master of Magic
					9694,	-- Roboteer
					9695,	-- The Lil' Necromancer
				}},
				["groups"] = { i(140761) },	-- Nightmare Treant (PET!)
			})),
			petbattle(ach(9686, {	-- Aquatic Acquiescence
				crit(32483, {	-- Nightwatcher Merayl (Azsuna)
					["_quests"] = { 42159 },
				}),
				crit(32476, {	-- Bodhi Sunwayver (Dalaran)
					["_quests"] = { 40299 },
				}),
				crit(32489, {	-- Tiffany Nelson (Dalaran)
					["_quests"] = { 40277 },
				}),
				crit(32465, {	-- Amalia (Dalaran)
					["_quests"] = { 42442 },
				}),
				crit(32485, {	-- Sir Galveston (Dalaran)
					["_quests"] = { 40298 },
				}),
				crit(32477, {	-- Bredda Tenderhide (Highmountain)
					["_quests"] = { 40280 },
				}),
				crit(32480, {	-- Grixis Tinypop (Highmountain)
					["_quests"] = { 40282 },
				}),
				crit(32470, {	-- Odrogg (Highmountain)
					["_quests"] = { 41687 },
				}),
				crit(32484, {	-- Robert Craig (Stormheim)
					["_quests"] = { 40278 },
				}),
				crit(32490, {	-- Trapper Jarrun (Stormheim)
					["_quests"] = { 41944 },
				}),
				crit(32466, {	-- Aulier (Suramar)
					["_quests"] = { 41895 },
				}),
				crit(32492, {	-- Master Tamer Flummox (Suramar)
					["_quests"] = { 40337 },
				}),
				crit(32472, {	-- Varenne (Suramar)
					["_quests"] = { 41990 },
				}),
				crit(32478, {	-- Durian Strongfruit (Val'sharah)
					["_quests"] = { 40279 },
				}),
				crit(32474, {	-- Xorvasc (Val'sharah)
					["_quests"] = { 41860 },
				}),
			})),
			petbattle(ach(9687, {	-- Best of the Beasts
				crit(32541, {	-- Nightwatcher Merayl (Azsuna)
					["_quests"] = { 42159 },
				}),
				crit(32550, {	-- Bodhi Sunwayver (Dalaran)
					["_quests"] = { 40299 },
				}),
				crit(32559, {	-- Tiffany Nelson (Dalaran)
					["_quests"] = { 40277 },
				}),
				crit(32568, {	-- Amalia (Dalaran)
					["_quests"] = { 42442 },
				}),
				crit(32577, {	-- Sir Galveston (Dalaran)
					["_quests"] = { 40298 },
				}),
				crit(32586, {	-- Bredda Tenderhide (Highmountain)
					["_quests"] = { 40280 },
				}),
				crit(32595, {	-- Grixis Tinypop (Highmountain)
					["_quests"] = { 40282 },
				}),
				crit(32604, {	-- Odrogg (Highmountain)
					["_quests"] = { 41687 },
				}),
				crit(32613, {	-- Robert Craig (Stormheim)
					["_quests"] = { 40278 },
				}),
				crit(32622, {	-- Trapper Jarrun (Stormheim)
					["_quests"] = { 41944 },
				}),
				crit(32631, {	-- Aulier (Suramar)
					["_quests"] = { 41895 },
				}),
				crit(32640, {	-- Master Tamer Flummox (Suramar)
					["_quests"] = { 40337 },
				}),
				crit(32649, {	-- Varenne (Suramar)
					["_quests"] = { 41990 },
				}),
				crit(32658, {	-- Durian Strongfruit (Val'sharah)
					["_quests"] = { 40279 },
				}),
				crit(32667, {	-- Xorvasc (Val'sharah)
					["_quests"] = { 41860 },
				}),
			})),
			petbattle(ach(9688, {	-- Mousing Around
				crit(32542, {	-- Nightwatcher Merayl (Azsuna)
					["_quests"] = { 42159 },
				}),
				crit(32551, {	-- Bodhi Sunwayver (Dalaran)
					["_quests"] = { 40299 },
				}),
				crit(32560, {	-- Tiffany Nelson (Dalaran)
					["_quests"] = { 40277 },
				}),
				crit(32569, {	-- Amalia (Dalaran)
					["_quests"] = { 42442 },
				}),
				crit(32578, {	-- Sir Galveston (Dalaran)
					["_quests"] = { 40298 },
				}),
				crit(32587, {	-- Bredda Tenderhide (Highmountain)
					["_quests"] = { 40280 },
				}),
				crit(32596, {	-- Grixis Tinypop (Highmountain)
					["_quests"] = { 40282 },
				}),
				crit(32605, {	-- Odrogg (Highmountain)
					["_quests"] = { 41687 },
				}),
				crit(32614, {	-- Robert Craig (Stormheim)
					["_quests"] = { 40278 },
				}),
				crit(32623, {	-- Trapper Jarrun (Stormheim)
					["_quests"] = { 41944 },
				}),
				crit(32632, {	-- Aulier (Suramar)
					["_quests"] = { 41895 },
				}),
				crit(32641, {	-- Master Tamer Flummox (Suramar)
					["_quests"] = { 40337 },
				}),
				crit(32650, {	-- Varenne (Suramar)
					["_quests"] = { 41990 },
				}),
				crit(32659, {	-- Durian Strongfruit (Val'sharah)
					["_quests"] = { 40279 },
				}),
				crit(32668, {	-- Xorvasc (Val'sharah)
					["_quests"] = { 41860 },
				}),
			})),
			petbattle(ach(9689, {	-- Dragons!
				crit(32543, {	-- Nightwatcher Merayl (Azsuna)
					["_quests"] = { 42159 },
				}),
				crit(32552, {	-- Bodhi Sunwayver (Dalaran)
					["_quests"] = { 40299 },
				}),
				crit(32561, {	-- Tiffany Nelson (Dalaran)
					["_quests"] = { 40277 },
				}),
				crit(32570, {	-- Amalia (Dalaran)
					["_quests"] = { 42442 },
				}),
				crit(32579, {	-- Sir Galveston (Dalaran)
					["_quests"] = { 40298 },
				}),
				crit(32588, {	-- Bredda Tenderhide (Highmountain)
					["_quests"] = { 40280 },
				}),
				crit(32597, {	-- Grixis Tinypop (Highmountain)
					["_quests"] = { 40282 },
				}),
				crit(32606, {	-- Odrogg (Highmountain)
					["_quests"] = { 41687 },
				}),
				crit(32615, {	-- Robert Craig (Stormheim)
					["_quests"] = { 40278 },
				}),
				crit(32624, {	-- Trapper Jarrun (Stormheim)
					["_quests"] = { 41944 },
				}),
				crit(32633, {	-- Aulier (Suramar)
					["_quests"] = { 41895 },
				}),
				crit(32642, {	-- Master Tamer Flummox (Suramar)
					["_quests"] = { 40337 },
				}),
				crit(32651, {	-- Varenne (Suramar)
					["_quests"] = { 41990 },
				}),
				crit(32660, {	-- Durian Strongfruit (Val'sharah)
					["_quests"] = { 40279 },
				}),
				crit(32669, {	-- Xorvasc (Val'sharah)
					["_quests"] = { 41860 },
				}),
			})),
			petbattle(ach(9690, {	-- Ragnaros, Watch and Learn
				crit(32544, {	-- Nightwatcher Merayl (Azsuna)
					["_quests"] = { 42159 },
				}),
				crit(32553, {	-- Bodhi Sunwayver (Dalaran)
					["_quests"] = { 40299 },
				}),
				crit(32562, {	-- Tiffany Nelson (Dalaran)
					["_quests"] = { 40277 },
				}),
				crit(32571, {	-- Amalia (Dalaran)
					["_quests"] = { 42442 },
				}),
				crit(32580, {	-- Sir Galveston (Dalaran)
					["_quests"] = { 40298 },
				}),
				crit(32589, {	-- Bredda Tenderhide (Highmountain)
					["_quests"] = { 40280 },
				}),
				crit(32598, {	-- Grixis Tinypop (Highmountain)
					["_quests"] = { 40282 },
				}),
				crit(32607, {	-- Odrogg (Highmountain)
					["_quests"] = { 41687 },
				}),
				crit(32616, {	-- Robert Craig (Stormheim)
					["_quests"] = { 40278 },
				}),
				crit(32625, {	-- Trapper Jarrun (Stormheim)
					["_quests"] = { 41944 },
				}),
				crit(32634, {	-- Aulier (Suramar)
					["_quests"] = { 41895 },
				}),
				crit(32643, {	-- Master Tamer Flummox (Suramar)
					["_quests"] = { 40337 },
				}),
				crit(32652, {	-- Varenne (Suramar)
					["_quests"] = { 41990 },
				}),
				crit(32661, {	-- Durian Strongfruit (Val'sharah)
					["_quests"] = { 40279 },
				}),
				crit(32670, {	-- Xorvasc (Val'sharah)
					["_quests"] = { 41860 },
				}),
			})),
			petbattle(ach(9691, {	-- Flock Together
				crit(32545, {	-- Nightwatcher Merayl (Azsuna)
					["_quests"] = { 42159 },
				}),
				crit(32554, {	-- Bodhi Sunwayver (Dalaran)
					["_quests"] = { 40299 },
				}),
				crit(32563, {	-- Tiffany Nelson (Dalaran)
					["_quests"] = { 40277 },
				}),
				crit(32572, {	-- Amalia (Dalaran)
					["_quests"] = { 42442 },
				}),
				crit(32581, {	-- Sir Galveston (Dalaran)
					["_quests"] = { 40298 },
				}),
				crit(32590, {	-- Bredda Tenderhide (Highmountain)
					["_quests"] = { 40280 },
				}),
				crit(32599, {	-- Grixis Tinypop (Highmountain)
					["_quests"] = { 40282 },
				}),
				crit(32608, {	-- Odrogg (Highmountain)
					["_quests"] = { 41687 },
				}),
				crit(32617, {	-- Robert Craig (Stormheim)
					["_quests"] = { 40278 },
				}),
				crit(32626, {	-- Trapper Jarrun (Stormheim)
					["_quests"] = { 41944 },
				}),
				crit(32635, {	-- Aulier (Suramar)
					["_quests"] = { 41895 },
				}),
				crit(32644, {	-- Master Tamer Flummox (Suramar)
					["_quests"] = { 40337 },
				}),
				crit(32653, {	-- Varenne (Suramar)
					["_quests"] = { 41990 },
				}),
				crit(32662, {	-- Durian Strongfruit (Val'sharah)
					["_quests"] = { 40279 },
				}),
				crit(32671, {	-- Xorvasc (Val'sharah)
					["_quests"] = { 41860 },
				}),
			})),
			petbattle(ach(9692, {	-- Murlocs, Harpies, and Wolvar, Oh My!
				crit(32549, {	-- Nightwatcher Merayl (Azsuna)
					["_quests"] = { 42159 },
				}),
				crit(32555, {	-- Bodhi Sunwayver (Dalaran)
					["_quests"] = { 40299 },
				}),
				crit(32564, {	-- Tiffany Nelson (Dalaran)
					["_quests"] = { 40277 },
				}),
				crit(32573, {	-- Amalia (Dalaran)
					["_quests"] = { 42442 },
				}),
				crit(32582, {	-- Sir Galveston (Dalaran)
					["_quests"] = { 40298 },
				}),
				crit(32591, {	-- Bredda Tenderhide (Highmountain)
					["_quests"] = { 40280 },
				}),
				crit(32600, {	-- Grixis Tinypop (Highmountain)
					["_quests"] = { 40282 },
				}),
				crit(32609, {	-- Odrogg (Highmountain)
					["_quests"] = { 41687 },
				}),
				crit(32618, {	-- Robert Craig (Stormheim)
					["_quests"] = { 40278 },
				}),
				crit(32627, {	-- Trapper Jarrun (Stormheim)
					["_quests"] = { 41944 },
				}),
				crit(32636, {	-- Aulier (Suramar)
					["_quests"] = { 41895 },
				}),
				crit(32645, {	-- Master Tamer Flummox (Suramar)
					["_quests"] = { 40337 },
				}),
				crit(32654, {	-- Varenne (Suramar)
					["_quests"] = { 41990 },
				}),
				crit(32663, {	-- Durian Strongfruit (Val'sharah)
					["_quests"] = { 40279 },
				}),
				crit(32672, {	-- Xorvasc (Val'sharah)
					["_quests"] = { 41860 },
				}),
			})),
			petbattle(ach(9693, {	-- Master of Magic
				crit(32546, {	-- Nightwatcher Merayl (Azsuna)
					["_quests"] = { 42159 },
				}),
				crit(32556, {	-- Bodhi Sunwayver (Dalaran)
					["_quests"] = { 40299 },
				}),
				crit(32565, {	-- Tiffany Nelson (Dalaran)
					["_quests"] = { 40277 },
				}),
				crit(32574, {	-- Amalia (Dalaran)
					["_quests"] = { 42442 },
				}),
				crit(32583, {	-- Sir Galveston (Dalaran)
					["_quests"] = { 40298 },
				}),
				crit(32592, {	-- Bredda Tenderhide (Highmountain)
					["_quests"] = { 40280 },
				}),
				crit(32601, {	-- Grixis Tinypop (Highmountain)
					["_quests"] = { 40282 },
				}),
				crit(32610, {	-- Odrogg (Highmountain)
					["_quests"] = { 41687 },
				}),
				crit(32619, {	-- Robert Craig (Stormheim)
					["_quests"] = { 40278 },
				}),
				crit(32628, {	-- Trapper Jarrun (Stormheim)
					["_quests"] = { 41944 },
				}),
				crit(32637, {	-- Aulier (Suramar)
					["_quests"] = { 41895 },
				}),
				crit(32646, {	-- Master Tamer Flummox (Suramar)
					["_quests"] = { 40337 },
				}),
				crit(32655, {	-- Varenne (Suramar)
					["_quests"] = { 41990 },
				}),
				crit(32664, {	-- Durian Strongfruit (Val'sharah)
					["_quests"] = { 40279 },
				}),
				crit(32673, {	-- Xorvasc (Val'sharah)
					["_quests"] = { 41860 },
				}),
			})),
			petbattle(ach(9694, {	-- Roboteer
				crit(32547, {	-- Nightwatcher Merayl (Azsuna)
					["_quests"] = { 42159 },
				}),
				crit(32557, {	-- Bodhi Sunwayver (Dalaran)
					["_quests"] = { 40299 },
				}),
				crit(32566, {	-- Tiffany Nelson (Dalaran)
					["_quests"] = { 40277 },
				}),
				crit(32575, {	-- Amalia (Dalaran)
					["_quests"] = { 42442 },
				}),
				crit(32584, {	-- Sir Galveston (Dalaran)
					["_quests"] = { 40298 },
				}),
				crit(32593, {	-- Bredda Tenderhide (Highmountain)
					["_quests"] = { 40280 },
				}),
				crit(32602, {	-- Grixis Tinypop (Highmountain)
					["_quests"] = { 40282 },
				}),
				crit(32611, {	-- Odrogg (Highmountain)
					["_quests"] = { 41687 },
				}),
				crit(32620, {	-- Robert Craig (Stormheim)
					["_quests"] = { 40278 },
				}),
				crit(32629, {	-- Trapper Jarrun (Stormheim)
					["_quests"] = { 41944 },
				}),
				crit(32638, {	-- Aulier (Suramar)
					["_quests"] = { 41895 },
				}),
				crit(32647, {	-- Master Tamer Flummox (Suramar)
					["_quests"] = { 40337 },
				}),
				crit(32656, {	-- Varenne (Suramar)
					["_quests"] = { 41990 },
				}),
				crit(32665, {	-- Durian Strongfruit (Val'sharah)
					["_quests"] = { 40279 },
				}),
				crit(32674, {	-- Xorvasc (Val'sharah)
					["_quests"] = { 41860 },
				}),
			})),
			petbattle(ach(9695, {	-- The Lil' Necromancer
				crit(32548, {	-- Nightwatcher Merayl (Azsuna)
					["_quests"] = { 42159 },
				}),
				crit(32558, {	-- Bodhi Sunwayver (Dalaran)
					["_quests"] = { 40299 },
				}),
				crit(32567, {	-- Tiffany Nelson (Dalaran)
					["_quests"] = { 40277 },
				}),
				crit(32576, {	-- Amalia (Dalaran)
					["_quests"] = { 42442 },
				}),
				crit(32585, {	-- Sir Galveston (Dalaran)
					["_quests"] = { 40298 },
				}),
				crit(32594, {	-- Bredda Tenderhide (Highmountain)
					["_quests"] = { 40280 },
				}),
				crit(32603, {	-- Grixis Tinypop (Highmountain)
					["_quests"] = { 40282 },
				}),
				crit(32612, {	-- Odrogg (Highmountain)
					["_quests"] = { 41687 },
				}),
				crit(32621, {	-- Robert Craig (Stormheim)
					["_quests"] = { 40278 },
				}),
				crit(32630, {	-- Trapper Jarrun (Stormheim)
					["_quests"] = { 41944 },
				}),
				crit(32639, {	-- Aulier (Suramar)
					["_quests"] = { 41895 },
				}),
				crit(32648, {	-- Master Tamer Flummox (Suramar)
					["_quests"] = { 40337 },
				}),
				crit(32657, {	-- Varenne (Suramar)
					["_quests"] = { 41990 },
				}),
				crit(32666, {	-- Durian Strongfruit (Val'sharah)
					["_quests"] = { 40279 },
				}),
				crit(32675, {	-- Xorvasc (Val'sharah)
					["_quests"] = { 41860 },
				}),
			})),
		}),
		ach(11474, {	-- Free For All, More For Me
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				11475,	-- Mission Accomplished
				11476,	-- Saddle Sore
				11477,	-- Off the Top Rook
				11478,	-- The Darkbrul-oh
			}},
			["groups"] = {
				a(i(129280)),	-- Prestigious War Steed (MOUNT!)
				h(i(143864)),	-- Prestigious War Wolf (MOUNT!)
			},
		}),
		ach(11159, {	-- Friends in a Broken Land
			crit(30501),		-- The Valarjar
			crit(30497),		-- Highmountain Tribe
			crit(30498),		-- Court of Farondis
			crit(30500),		-- The Dreamweavers
			crit(30499),		-- The Nightfallen
			crit(30496),		-- The Wardens
		}),
		ach(11157, {	-- Loremaster of Legion
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				10763,	-- Azsuna Matata
				10698,	-- That's Val'sharah Folks!
				10790,	-- Vrykul Story, Bro
				10059,	-- Ain't No Mountain High Enough
				11124,	-- Good Suramaritan
			}},
		}),
		ach(11653),		-- Paragon of the Broken Isles
		ach(11652),		-- The Reputable
		ach(14729, {	-- To All The Squirrels I Love Despite Their Scars
			crit(50222, {	-- Felspider
				["crs"] = { 113345 },	-- Felspider
				["coord"] = { 39.0, 47.6, AZSUNA },
			}),
			crit(50223, {	-- Tenebrous Snake
				["crs"] = { 113278 },	-- Tenebrous Snake
				["coord"] = { 40.92, 58.62, AZSUNA },
			}),
			crit(50224, {	-- Albatross Chick
				["crs"] = { 97020 },	-- Albatross Chick
				["coord"] = { 30.0, 35.6, AZSUNA },
			}),
			crit(50225, {	-- Coastal Sandpiper
				["crs"] = { 89380 },	-- Coastal Sandpiper
				["coord"] = { 57.6, 40.8, AZSUNA },
			}),
			crit(50226, {	-- Glitterpool Frog
				["crs"] = { 102492 },	-- Glitterpool Frog
				["coord"] = { 42.6, 56.8, SURAMAR },
			}),
			crit(50227, {	-- Gleamhoof Fawn
				["crs"] = { 109818 },	-- Gleamhoof Fawn
				["coord"] = { 54.8, 72.6, VALSHARAH },
			}),
			crit(50228, {	-- Auburn Ringtail
				["crs"] = { 95626 },	-- Auburn Ringtail
				["coord"] = { 63.6, 72.0, VALSHARAH },
			}),
			crit(50229, {	-- Blighthawk
				["crs"] = { 98090 },	-- Blighthawk
				["coord"] = { 38.6, 62.6, VALSHARAH },
			}),
			crit(50230, {	-- Black-Footed Fox Kit
				["crs"] = { 97730 },	-- Black-Footed Fox Kit
				["coord"] = { 56.6, 55.4, HIGHMOUNTAIN },
			}),
			crit(50231, {	-- Long-Eared Owl
				["crs"] = { 97735 },	-- Long-Eared Owl
				["coord"] = { 56.2, 54.4, HIGHMOUNTAIN },
			}),
			crit(50232, {	-- Golden Eaglet
				["crs"] = { 97722 },	-- Golden Eaglet
				["coord"] = { 60.5, 51.5, STORMHEIM },
			}),
			crit(50233, {	-- Tiny Apparition
				["crs"] = { 97953 },	-- Tiny Apparition
				["coord"] = { 56.4, 43.5, STORMHEIM },
			}),
			crit(50234, {	-- Echo Batling
				["crs"] = { 88281 },	-- Echo Batling
				["coord"] = { 55.1, 44.3, HIGHMOUNTAIN },
			}),
		}),
	}),
})));
