---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(DRUSTVAR, {
		n(ACHIEVEMENTS, {
			ach(12941, {	-- Adventurer of Drustvar
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(13083, {	-- Better, Faster, Stronger
				["description"] = "Collect and have active Witch's Boons: Excellence, Extra Pep, Rage, and Fortitude which are on a 5 minute timer and the debuff Witch's Curse: Newt. Debuffs can remove one of your buffs. Coords are possible brew spawn points.",
				["coords"] = {
					{ 25.00, 53.35, DRUSTVAR },
					{ 22.64, 54.18, DRUSTVAR },
					{ 25.36, 55.57, DRUSTVAR },
					{ 24.73, 59.22, DRUSTVAR },
					{ 21.93, 59.37, DRUSTVAR },
					{ 22.98, 49.57, DRUSTVAR },
					{ 23.04, 55.62, DRUSTVAR },
					{ 20.43, 55.32, DRUSTVAR },
					{ 27.30, 53.21, DRUSTVAR },
					{ 26.10, 54.56, DRUSTVAR },
					{ 21.94, 59.36, DRUSTVAR },
					{ 21.17, 57.45, DRUSTVAR },
					{ 19.98, 55.15, DRUSTVAR },
					{ 19.97, 54.62, DRUSTVAR },
					{ 27.13, 58.16, DRUSTVAR },
					{ 18.83, 56.81, DRUSTVAR },
					{ 24.56, 49.35, DRUSTVAR },
					{ 25.78, 50.19, DRUSTVAR },
					{ 18.98, 53.61, DRUSTVAR },
					{ 19.19, 54.19, DRUSTVAR },
					{ 23.76, 60.86, DRUSTVAR },
					{ 19.00, 58.29, DRUSTVAR },
				},
			}),
			ach(13094, {	-- Cursed Game Hunter
				crit(41794, {	-- Goats
					["crs"] = { 143929 },	-- Hexed Craghopper
					["coord"] = { 54.4, 21.8, DRUSTVAR },
				}),
				crit(42143, {	-- Deer
					["crs"] = {
						129764,	-- Hexcrazed Doe
					},
					["coord"] = { 55.8, 44.0, DRUSTVAR },
				}),
				crit(42144, {	-- Deer
					["crs"] = {
						128361,	-- Hexcrazed Greatstag
					},
					["coord"] = { 55.8, 44.0, DRUSTVAR },
				}),
				crit(42145, {	-- Deer
					["crs"] = {
						129835,	-- Gorehorn
					},
					["coord"] = { 55.8, 44.0, DRUSTVAR },
				}),
				crit(41783, {	-- Pigs
					["crs"] = {
						124170,	-- Fallhaven Pig
					},
					["coord"] = { 58.8, 34.6, DRUSTVAR },
				}),
				crit(41784, {	-- Pigs
					["crs"] = {
						124548,	-- Betsy
					},
					["coord"] = { 58.8, 34.6, DRUSTVAR },
				}),
				crit(42265, {	-- Thornclaws
					["crs"] = {
						142278,	-- Hexed Thornclaw
					},
					["coord"] = { 33.0, 63.0, DRUSTVAR },
				}),
				crit(42266, {	-- Thornclaws
					["crs"] = {
						135868,	-- Greenstalker
					},
					["coord"] = { 33.0, 63.0, DRUSTVAR },
				}),
				crit(42267, {	-- Thornclaws
					["crs"] = {
						135869,	-- Greenstalker
					},
					["coord"] = { 33.0, 63.0, DRUSTVAR },
				}),
				crit(41779, {	-- Wolves
					["crs"] = {
						132195,	-- Hexenwolf Tracker
					},
					["coord"] = { 24.6, 65.6, DRUSTVAR },
				}),
				crit(41780, {	-- Wolves
					["crs"] = {
						132194,	-- Hexenwolf Alpha
					},
					["coord"] = { 24.6, 65.6, DRUSTVAR },
				}),
				crit(41781, {	-- Wolves
					["crs"] = {
						124885,	-- Bewitched Darkmaw
					},
					["coord"] = { 24.6, 65.6, DRUSTVAR },
				}),
				crit(42146, {	-- Ravens
					["crs"] = {
						124890,	-- Ensorcelled Bonepicker
					},
					["coord"] = { 58.0, 26.8, DRUSTVAR },
				}),
				crit(42147, {	-- Ravens
					["crs"] = {
						124382,	-- Bonepicker Raven
					},
					["coord"] = { 58.0, 26.8, DRUSTVAR },
				}),
				crit(41790, {	-- Rabbits
					["crs"] = {
						129877,	-- Ensorcelled Hare
					},
					["coord"] = { 55.6, 45.2, DRUSTVAR },
				}),
				crit(41791, {	-- Rabbits
					["crs"] = {
						129899,	-- Frenzied Cottontail
					},
					["coord"] = { 55.6, 45.2, DRUSTVAR },
				}),
				crit(41792, {	-- Rabbits
					["crs"] = {
						129904,	-- Cottontail Matron
					},
					["coord"] = { 55.6, 45.2, DRUSTVAR },
				}),
				crit(41785, {	-- Falcons
					["crs"] = {
						131518,	-- Cursed Falcon
					},
					["coord"] = { 31.6, 25.0, DRUSTVAR },
				}),
				crit(41786, {	-- Falcons
					["crs"] = {
						132240,	-- Cursed Falcon
					},
					["coord"] = { 31.6, 25.0, DRUSTVAR },
				}),
				crit(41788, {	-- Falcons
					["crs"] = {
						133988,	-- Cursed Gyrfalcon
					},
					["coord"] = { 31.6, 25.0, DRUSTVAR },
				}),
				crit(41789, {	-- Falcons
					["crs"] = {
						122961,	-- Cursed Game-hawk
					},
					["coord"] = { 31.6, 25.0, DRUSTVAR },
				}),
				crit(42153, {	-- Bramblebacks
					["crs"] = {
						134753,	-- Cursed Brambleback
					},
					["coords"] = {
						{ 17.6, 57.0, DRUSTVAR },
						{ 24.6, 47.8, DRUSTVAR },
					},
				}),
				crit(42154, {	-- Bramblebacks
					["crs"] = {
						133501,	-- Hexed Brambleback
					},
					["coords"] = {
						{ 17.6, 57.0, DRUSTVAR },
						{ 24.6, 47.8, DRUSTVAR },
					},
				}),
				crit(42148, {	-- Sea Lions
					["crs"] = { 143953 },	-- Bewitched Seal
					["coord"] = { 21.8, 22.6, DRUSTVAR },
				}),
				crit(42149, {	-- Horses
					["crs"] = {
						131534,	-- Hexthralled Guardsman
					},
					["coord"] = { 32.0, 21.6, DRUSTVAR },
				}),
				crit(42150, {	-- Horses
					["crs"] = {
						134307,	-- Hexthralled Courser
					},
					["coord"] = { 32.0, 21.6, DRUSTVAR },
				}),
				crit(42151, {	-- Sharks
					["crs"] = { 143951 },	-- Hexed Dreadmaw
					["coord"] = { 22.6, 70.6, DRUSTVAR },
				}),
				crit(42152, {	-- Crabs
					["crs"] = { 143928 },	-- Cursed Snapclaw
					["coord"] = { 76.21, 65.22, DRUSTVAR },
				}),
			}),
			ach(12497, {	-- Drust Do It.
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					title(378),	-- Inquisitor <Name>
					crit(40168),	-- The Final Effigy
					crit(40169),	-- The Burden of Proof
					crit(40170),	-- An Airtight Alibi
					crit(40171),	-- The Order of Embers
					crit(40172),	-- A New Order
					crit(40173),	-- Break on Through
					crit(40174),	-- Storming the Manor
					crit(40175),	-- Clear Victory
					crit(40176),	-- Fighting With Fire
					crit(40177),	-- Stick It To 'Em!
				},
			}),
			ach(13064),		-- Drust the Facts, Ma'am (automated)
			ach(12557),	-- Explore Drustvar
			ach(13082, {	-- Everything Old Is New Again
				["races"] = ALLIANCE_ONLY,
				["description"] = "Turn in all items at 44.90, 27.41.",
				["coord"] = { 44.90, 27.41, DRUSTVAR },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(12952, {	-- Order of Embers
				["races"] = ALLIANCE_ONLY,
			}),
			ach(13087, {	-- Sausage Sampler
				["description"] = "Can be completed as Horde by purchasing items on the AH.",
			}),
			pvp(ach(12579)),	-- Tour of Duty: Drustvar
			ach(12995),	-- Treasures of Drustvar
			ach(41207, {	-- When the Drust Settles
				["timeline"] = { ADDED_11_0_7 },
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					12941,	-- Adventurer of Drustvar
					13083,	-- Better, Faster, Stronger
					13094,	-- Cursed Game Hunter
					13064,	-- Drust the Facts, Ma'am
					13082,	-- Everything Old Is New Again
					12995,	-- Treasures of Drustvar
					13087,	-- Sausage Sampler
				}},
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(KUL_TIRAS, {
		m(DRUSTVAR, {
			n(ACHIEVEMENTS, {
				q(53448),	-- Spooky Bundle of Sticks Crafting [Wicker Pup]
			}),
		}),
	}),
})));
