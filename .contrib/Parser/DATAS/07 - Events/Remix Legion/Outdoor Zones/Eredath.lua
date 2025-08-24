-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
--[[root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, bubbleDown({ ["timeline"] = { ADDED_11_2_5, REMOVED_LEGION_REMIX_END } }, {
	m(ARGUS, m(EREDATH, {
		["icon"] = 618317,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(19884),		-- Campaign: Valley of the Four Winds
				ach(19994),		-- Elusive Foes: Valley of the Four Winds
				ach(20027),	-- Explore Valley of the Four Winds (automated)
				ach(19978, {	-- Hidden Treasures: Valley of the Four Winds
					crit(65495, {	-- Virmen Treasure Cache
						["_quests"] = { 31405 },
					}),
					crit(65496, {	-- The Hammer of Folly
						["_quests"] = { 31428 },
					}),
				}),
				ach(20009, {	-- Looking For Group: Valley of the Four Winds
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19896,	-- Stormstout Brewery
						20017,	-- Salyis's Warband
					}},
				}),
				ach(19963, {	-- Tour Valley of the Four Winds
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19994,	-- Elusive Foes: Valley of the Four Winds
						20027,	-- Explore Valley of the Four Winds
						19978,	-- Hidden Treasures: Valley of the Four Winds
					}},
				}),
				ach(19873, {	-- Valley of the Four Winds
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19884,	-- Campaign: Valley of the Four Winds
						20009,	-- Looking For Group: Valley of the Four Winds
						19963,	-- Tour Valley of the Four Winds
					}},
					["groups"] = {
						i(221816),	-- Halfhill Farmer's Backpack
					},
				}),
			}),
			n(QUESTS, {
				q(81564, {	-- The Story of Noodles
					["provider"] = { "n", 220895 },	-- Grandmaster Jakkus <Class Apparel>
					["coord"] = { 53.2, 51.4, VALLEY_OF_THE_FOUR_WINDS },
				}),
				q(81587, {	-- Noodle Time: Bonus
					["provider"] = { "n", 220895 },	-- Grandmaster Jakkus <Class Apparel>
					["coord"] = { 53.2, 51.4, VALLEY_OF_THE_FOUR_WINDS },
					["isDaily"] = true,
					["_drop"] = { "g" },
				}),
				q(81565, {	-- Another Round of Noodles
					["provider"] = { "n", 220895 },	-- Grandmaster Jakkus <Class Apparel>
					["coord"] = { 53.2, 51.4, VALLEY_OF_THE_FOUR_WINDS },
					["isDaily"] = true,
					["_drop"] = { "g" },
				}),
			}),
			n(ZONE_REWARDS, {
				filter(CLOTH, {
					i(213671),	-- Mindbender Amice
					i(213670),	-- Mindbender Belt
					i(213673),	-- Mindbender Cowl
					i(213669),	-- Mindbender Cuffs
					i(213674),	-- Mindbender Handwraps
					i(213672),	-- Mindbender Pants
					i(213676),	-- Mindbender Raiment
					i(213675),	-- Mindbender Treads
				}),
				filter(LEATHER, {
					i(214104),	-- Mistdancer Cap
					i(214102),	-- Mistdancer Cinch
					i(214103),	-- Mistdancer Handguards
					i(214106),	-- Mistdancer Jerkin
					i(214101),	-- Mistdancer Mantle
					i(214100),	-- Mistdancer Pants
					i(214105),	-- Mistdancer Treads
					i(214107),	-- Mistdancer Wraps
				}),
				filter(MAIL, {
					i(214476),	-- Trailseeker's Armbands
					i(214470),	-- Trailseeker's Chain
					i(214475),	-- Trailseeker's Chestguard
					i(214471),	-- Trailseeker's Gloves
					i(214472),	-- Trailseeker's Headguard
					i(214467),	-- Trailseeker's Legguards
					i(214468),	-- Trailseeker's Pauldrons
					i(214474),	-- Trailseeker's Sabatons
				}),
				filter(PLATE, {
					i(214776),	-- Sunsoul Battleplate
					i(214771),	-- Sunsoul Greatbelt
					i(214773),	-- Sunsoul Greathelm
					i(214772),	-- Sunsoul Handguards
					i(214769),	-- Sunsoul Legplates
					i(214770),	-- Sunsoul Spaulders
					i(214775),	-- Sunsoul Vambraces
					i(214774),	-- Sunsoul Warboots
				}),
				n(WEAPONS, {
					i(215870),	-- Amberweaver's Rod (wowhead)
					-- i(215980),	-- Binan Falchion (not listed on wowhead for this zone)
					i(215945),	-- Binan Scimitar (wowhead)
					i(215509),	-- Bloodseeker's Greataxe (wowhead)
					i(215744),	-- Cloudfall Scepter (wowhead)
					i(216575),	-- Darkhide Shield (wowhead)
					i(215867),	-- Diviner's Spire (wowhead)
					i(215979),	-- Faded Forest Falchion (wowhead)
					i(210337),	-- Faded Forest Hatchet (wowhead)
					i(215941),	-- Faded Forest Sword (wowhead)
					i(215642),	-- Fangs of Despair (wowhead)
					i(215748),	-- Fireblaze Mace (wowhead)
					i(216002),	-- Grummle Rod (wowhead)
					i(215600),	-- Grummle Shortblade (wowhead)
					i(215676),	-- Hopebringer's Lantern (wowhead)
					i(216416),	-- Hozen Blade (wowhead)
					i(210640),	-- Icon of Hope (wowhead)
					i(215596),	-- Jadestone Dagger (wowhead)
					i(215701),	-- Jadewatch Rifle (wowhead)
					i(215533),	-- Marista Longbow (wowhead)
					i(215950),	-- Mei's Sword (wowhead)
					i(215639),	-- Mist Shaman's Knuckles (wowhead)
					i(215939),	-- Mogu Aspirant's Blade (wowhead)
					i(215559),	-- Mountainscaler Speargun (wowhead)
					i(216424),	-- Pandaren Breaker (wowhead)
					i(216025),	-- Pandaren Cleaver (wowhead)
					i(216545),	-- Pandaren Deflector (wowhead)
					i(216480),	-- Pandaren Greatblade (wowhead)
					i(216441),	-- Pandaren Manual (wowhead)
					i(216443),	-- Pandaren Ornate Fan (wowhead)
					i(215598),	-- Regal Slicer (wowhead)
					i(216612),	-- Seawatch Launcher (wowhead)
					i(215485),	-- Shomi's Hatchet (wowhead)
					i(215739),	-- Shomi's Scepter (wowhead)
					i(210635),	-- Streamtalker Shield (wowhead)
					i(215781),	-- Sumprush Maul (wowhead)
					i(216476),	-- Temple Trainee's Edge (wowhead)
					i(216472),	-- Tian Monastery Conduit (wowhead)
					i(215864),	-- Torch of Dawn (wowhead)
					i(215804),	-- Wallwatcher's Partisan (wowhead)
					i(215860),	-- Wasteland Staff (wowhead)
					i(216568),	-- Yaungol Bulwark (wowhead)
				}),
			}),
		},
	})),
}))));--]]
