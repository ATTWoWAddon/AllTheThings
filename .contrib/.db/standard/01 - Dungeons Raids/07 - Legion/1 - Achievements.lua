-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	n(ACHIEVEMENTS, {
		ach(11164, {	-- Legion Dungeon Hero
			["sym"] = {{"meta_achievement",
				10781,	-- Heroic: Eye of Azshara
				10784,	-- Heroic: Darkheart Thicket
				10788,	-- Heroic: Halls of Valor
				10796,	-- Heroic: Neltharion's Lair
				10799,	-- Heroic: Assault on Violet Hold
				10802,	-- Heroic: Vault of the Wardens
				10805,	-- Heroic: Black Rook Hold
				10808,	-- Heroic: Maw of Souls
			}},
		}),
		ach(11163, {	-- Glory of the Legion Hero
			["sym"] = {{"meta_achievement",
				10456,	-- But You Say He's Just a Friend
				10457,	-- Stay Salty
				10458,	-- Ready for Raiding V
				10766,	-- Egg-cellent!
				10769,	-- Burning Down the House
				10996,	-- Got to Ketchum All
				10875,	-- Can't Eat Just One
				10544,	-- Stag Party
				10542,	-- I Got What You Mead
				10543,	-- Surge Protector
				10554,	-- I Made a Food!
				10553,	-- You're Just Making It WORSE!
				-- #if BEFORE 11.2.5
				10679,	-- I Ain't Even Cold
				-- #endif
				10680,	-- Who's Afraid of the Dark?
				10707,	-- A Specter, Illuminated
				10709,	-- You Used to Scrawl Me In Your Fel Tome
				10710,	-- Black Rook Moan
				10711,	-- Adds? More Like Bads
				10413,	-- Instant Karma
				10411,	-- Helheim Hath No Fury
				10412,	-- Poor Unfortunate Souls
				10776,	-- No Time to Waste
				10775,	-- Clean House
				10773,	-- Arcanic Cling
				10610,	-- Waiting for Gerdo
				10611,	-- Dropping Some Eaves
			}},
			["groups"] = {
				i(141217),	-- Leyfeather Hippogryph (MOUNT!)
			},
		}),
		ach(11180, {	-- Glory of the Legion Raider
			["sym"] = {{"meta_achievement",
				10555,	-- Buggy Fight
				10771,	-- Webbing Crashers
				10753,	-- Scare Bear
				10830,	-- Took the Red Eye Down
				10663,	-- Imagined Dragons World Tour
				10772,	-- Use the Force(s)
				10755,	-- I Attack the Darkness
				10678,	-- Cage Rematch
				10697,	-- Grand Opening
				10742,	-- Gluten Free
				10817,	-- A Change In Scenery
				10851,	-- Elementalry!
				-- 10754,	-- Fruit of All Evil (Not required for meta)
				10704,	-- Not For You
				10575,	-- Burning Bridges
				10699,	-- Infinitesimal
				10696,	-- I've Got My Eyes On You
			}},
			["maps"] = {
				764, 765, 766, 767, 768, 769, 770, 771, 772,	-- The Nighthold
				777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789,	-- The Emerald Nightmare
			},
			["groups"] = {
				i(141216),	-- Grove Defiler (MOUNT!)
			},
		}),
		-- #IF BEFORE BFA
		ach(11162),	-- Keystone Master
		ach(11185),	-- Keystone Conqueror
		ach(11184),	-- Keystone Challenger
		ach(11183),	-- Keystone Initiate
		-- #ENDIF
	}),
})));
