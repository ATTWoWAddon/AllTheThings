---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(NAZJATAR, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
	n(ACHIEVEMENTS, {
		ach(13711),	-- A Fistful of Manapearls
		ach(13762, bubbleDownSelf({["races"] = ALLIANCE_ONLY},{	-- Aqua Team Murder Force (A)
			ach(13744),	-- Seasoned: Bladesman Inowari
			ach(13745),	-- Seasoned: Farseer Ori
			ach(13743),	-- Seasoned: Hunter Akana
			ach(13754),	-- Veteran: Bladesman Inowari
			ach(13755),	-- Veteran: Farseer Ori
			ach(13753),	-- Veteran: Hunter Akana
			ach(13704, {	-- Nautical Battlefield Training
				["description"] = "Requires hitting Rank 20 with each bodyguard.",
			}),
			ach(13759),	-- Battle-Scarred: Bladesman Inowari
			ach(13760),	-- Battle-Scarred: Farseer Ori
			ach(13758),	-- Battle-Scarred: Hunter Akana
		})),
		ach(13761, bubbleDownSelf({["races"] = HORDE_ONLY},{	-- Aqua Team Murder Force (H)
			ach(13746),	-- Seasoned: Neri Sharpfin
			ach(13747),	-- Seasoned: Poen Gillbrack
			ach(13748),	-- Seasoned: Vim Brineheart
			ach(13749),	-- Veteran: Neri Sharpfin
			ach(13751),	-- Veteran: Poen Gillbrack
			ach(13752),	-- Veteran: Vim Brineheart
			ach(13645, {	-- Nautical Battlefield Training
				["description"] = "Requires hitting Rank 20 with each bodyguard.",
			}),
			ach(13750),	-- Battle-Scarred: Neri Sharpfin
			ach(13756),	-- Battle-Scarred: Poen Gillbrack
			ach(13757),	-- Battle-Scarred: Vim Brineheart
		})),
		ach(13763, {	-- Back to the Depths!
			["description"] = "This event takes place every 3 hours (3:00, 6:00, 9:00, and 12:00, based on realm time). A zonewide announcement will say \"|cffe1780cThe air crackles with power as Azshara's forces begin summoning a minion from the depths|r,\" and a purple skull will appear on your map to indicate where the event is taking place.",
		}),
		ach(13712),	-- Explore Nazjatar
		ach(13836, {	-- Feline Figurines Found
			o(245286, {	-- Crystalline Cat Figurine
				["questID"] = 56983,
				["coord"] = { 28.8, 29.1, NAZJATAR },
				["description"] = "In an underwater cave filled with |cFFFFD700Bloodfin Murlocs|r. ",
			}),
			o(332569, {	-- Crystalline Cat Figurine
				["questID"] = 56988,
				["coord"] = { 71.4, 23.7, NAZJATAR },
				["description"] = "Hidden behind a starfish on the left side of an underwater cave.",
			}),
			o(332570, {	-- Crystalline Cat Figurine
				["questID"] = 56992,
				["coord"] = { 73.6, 25.9, NAZJATAR },
				["description"] = "On the left side of a small underwater cave, tucked behind a curved piece of broken shell on the ground.",
			}),
			o(332571, {	-- Crystalline Cat Figurine
				["questID"] = 56990,
				["coord"] = { 58.2, 22.0, NAZJATAR },
				["description"] = "In an underwater cave.",
			}),
			o(332572, {	-- Crystalline Cat Figurine
				["questID"] = 56986,
				["coord"] = { 55.3, 27.2, NAZJATAR },
				["description"] = "On top of a pillar at the back of the room. Jump onto one of the conch shells to reach it."
			}),
			o(332573, {	-- Crystalline Cat Figurine
				["questID"] = 56984,
				["coord"] = { 61.1, 26.8, NAZJATAR },
				["description"] = "Behind the sea urchin in a small cave filled with wind elementals.",
			}),
			o(332574, {	-- Crystalline Cat Figurine
				["questID"] = 56991,
				["coord"] = { 61.6, 10.7, NAZJATAR },
				["description"] = "In an underwater cave with a school of |cFFFFD700Deeptide Frenzy|r swimming around. It's on a rocky outcrop at the top of the cave."
			}),
			o(332575, {	-- Crystalline Cat Figurine
				["questID"] = 56989,
				["description"] = "Drop down carefully from the path to a small cave hidden in the wall.",
				["coords"] = {
					{ 38.7, 49.3, NAZJATAR },	-- Cave Entrance
					{ 38.0, 49.3, NAZJATAR },	-- Crystalline Cat Figurine
				},
			}),
			o(332576, {	-- Crystalline Cat Figurine
				["questID"] = 56987,
				["coords"] = {
					{ 40.3, 81.3, NAZJATAR },	-- Cave Entrance
					{ 40.1, 86.5, NAZJATAR },	-- Crystalline Cat Figurine
				},
				["description"] = "At the back of an underwater cave filled with |cFFFFD700Murkbloom Reefwalkers|r.",
			}),
			o(332568, {	-- Crystalline Cat Figurine
				["questID"] = 56985,
				["coord"] = { 59.1, 30.4, NAZJATAR },
				["description"] = "In a coral outcropping at the back of a small cave filled with water elementals.",
			}),
		}),
		pvp(ach(13568)),	-- For Nazjatar!
		ach(13692, {	-- Give Me the Biggest Bag You've Got
			crit(45560),	-- Spawn of Nalaada
			crit(45561),	-- Glittering Diamondshell
			crit(45562),	-- Sandclaw Nestseeker
			crit(45563),	-- Daggertooth Frenzy
			crit(45564),	-- Skittering Eel
			crit(45565),	-- Pearlescent Glimmershell
			crit(45566),	-- Scalebrood Hydra
			crit(45567),	-- Caverndark Nightmare
			crit(45568),	-- Chitterspine Needler
			crit(45569),	-- Wriggler
			crit(45570),	-- Amethyst Softshell
			crit(45571),	-- Stormwrath
			crit(45572),	-- Brinestone Algan
			crit(45573),	-- Coral Lashling
			crit(45574),	-- Budding Algan
			crit(45575),	-- Sandkeep
			crit(45576),	-- Seafury
			crit(45577),	-- Necrofin Tadpole
			crit(45578),	-- Murgle
			crit(46070),	-- Underlight Sealamp
			crit(46071),	-- Encrusted Coin
			crit(46072),	-- Flopping Fish
			crit(46073),	-- Seastorm Totem
			crit(46074),	-- Zanj'ir Weapon Rack
			crit(46075),	-- Eternal Palace Dining Set
			crit(46076),	-- Shirakess Warning Sign
			crit(46077),	-- Voidcaster's Supply Bag
			crit(46078),	-- Storm Totem
			crit(46079),	-- Sea Totem
			crit(46080),	-- Mudwrap
			crit(46081),	-- Skeletal Hand
			crit(46082),	-- Mardivas' Bag of Containing
			crit(46083),	-- Blind Eye
			crit(46084),	-- Barnacled Bag of Goods
			crit(46085),	-- Shadescale
			crit(46086),	-- Abyss Pearl
			crit(46087),	-- Intact Naga Skeleton
			crit(46088),	-- Ancient Reefwalker Bark
			crit(46089),	-- Reefwalker Bark
			crit(46090),	-- Voltscale Shield
			crit(46091),	-- Tidal Guard
			crit(46092),	-- Razorshell
			crit(46093),	-- Snapdragon Scent Gland
			crit(46094),	-- Alpha Fin
			crit(46095),	-- Exposed Fish
			crit(46096, {	-- Fathom Ray Wing
				["_quests"] = { 57247, 56972 },	-- Fathom Ray Wing A/H
			}),
			crit(46097),	-- Muck Slime
			crit(46098),	-- Brightspine Shell
			crit(46099, {	-- Giant Crab leg
				["_quests"] = { 57248, 56973 },	-- Giant Crab Leg A/H
			}),
			crit(46100),	-- Fermented Deviate Fish
			crit(46101, {	-- Eel Filet
				["_quests"] = { 57246, 56971 },	-- Eel Filet A/H
			}),
		}),
		ach(13691),	-- I Thought You Said They'd Be Rare?
		ach(13707),		-- Mrrl's Secret Stash
		petbattle(ach(13626, {	-- Nautical Nuisances of Nazjatar
			crit(45467, {	-- Prince Wiggletail
				["crs"] = { 154910 },	-- Prince Wiggletail
				["coord"] = { 34.7, 27.4, NAZJATAR },	-- entrance at 36.9, 27.6
			}),
			crit(45468, {	-- Chomp
				["crs"] = { 154911 },	-- Chomp
				["coord"] = { 71.9, 51.2, NAZJATAR },
			}),
			crit(45469, {	-- Silence
				["crs"] = { 154912 },	-- Silence
				["coord"] = { 58.3, 48.1, NAZJATAR },
			}),
			crit(45470, {	-- Shadowspike Lurker
				["crs"] = { 154913 },	-- Shadowspike Lurker
				["coord"] = { 42.2, 14.0, NAZJATAR },
			}),
			crit(45471, {	-- Pearlhusk Crawler
				["crs"] = { 154914 },	-- Pearlhusk Crawler
				["coord"] = { 50.5, 50.2, NAZJATAR },
			}),
			crit(45472, {	-- Elderspawn of Nalaada
				["crs"] = { 154915 },	-- Elderspawn of Nalaada
				["coord"] = { 51.3, 75.0, NAZJATAR },
			}),
			crit(45473, {	-- Ravenous Scalespawn
				["crs"] = { 154916 },	-- Ravenous Scalespawn
				["coord"] = { 29.6, 49.7, NAZJATAR },
			}),
			crit(45474, {	-- Mindshackle
				["crs"] = { 154917 },	-- Mindshackle
				["coord"] = { 56.4, 8.1, NAZJATAR },
			}),
			crit(45475, {	-- Kelpstone
				["crs"] = { 154918 },	-- Kelpstone
				["coord"] = { 46.6, 28.0, NAZJATAR },
				["description"] = "Inside a cave at the bottom of the waterfall.",
			}),
			crit(45476, {	-- Voltgorger
				["crs"] = { 154919 },	-- Voltgorger
				["coord"] = { 37.5, 16.7, NAZJATAR },
			}),
			crit(45477, {	-- Frenzied Knifefang
				["crs"] = { 154920 },	-- Frenzied Knifefang
				["coord"] = { 61.40, 19.85, NAZJATAR },
				["description"] = "Inside the cave.",
			}),
			crit(45478, {	-- Giant Opaline Conch
				["crs"] = { 154921 },	-- Giant Opaline Conch
				["coord"] = { 28.1, 26.7, NAZJATAR },
			}),
		})),
		petbattle(ach(13694, {	-- Nazjatari Safari
			crit(45591),	-- Spireshell Snail
			crit(45592),	-- Muck Slug
			crit(45593),	-- Sandclaw Sunshell
			crit(45594),	-- Abyssal Slitherling
			crit(45595),	-- Chitterspine Skitterling
			crit(45596),	-- Deeptide Fingerling
			crit(45597),	-- Sandclaw Pincher
			crit(45598),	-- Glimmershell Scuttler
			crit(45599),	-- Hissing Chitterspine
			crit(45600),	-- Great Sea Albatross
			crit(45601),	-- Bloodseeker
		})),
		ach(13690),	-- Nazjatarget Eliminated
		ach(13713),	-- Nothing to Scry About
		ach(13699, {	-- Periodic Destruction
			["coord"] = { 60.7, 32.1, NAZJATAR },
			["description"] = "You must combine lesser and greater crystals in different combinations before activating the Elemental Essence Amalgamator to summon a specific mob. Look at the minilist section dedicated to The Laboratory of Mardivas for more information!",
		}),
		ach(13764),	-- Puzzle Performer
		ach(13765),		-- Subaquatic Support
		ach(13710, {	-- Sunken Ambitions
			["races"] = ALLIANCE_ONLY,
		}),
		pvp(ach(13720)),	-- Supplying the Assassins
		ach(13722, {	-- Terror of the Tadpoles
			["coord"] = { 28.5, 31.2, NAZJATAR },
			["description"] = "Tadpoles are easily found in and around Bloodfin Village.",
			["crs"] = {
				152275,	-- Bloodfin Tadpole
			},
		}),
		ach(13559, {	-- The Unshackled
			["races"] = HORDE_ONLY,
		}),
		pvp(ach(13569)),	-- Tour of Duty: Nazjatar
		ach(13635, {	-- Tour of the Depths
			crit(45742, {	-- Complete an Emissary for your ally in Nazjatar
				["_quests"] = { 56119 },	-- The Ankoan
			}),
			crit(45743, {	-- Complete an Emissary for your ally in Nazjatar
				["_quests"] = { 56120 },	-- The Unshackled
			}),
			crit(45739, {	-- Defeat one of the World Bosses of Nazjatar
				["_quests"] = { 56057 },	-- The Soulbinder
			}),
			crit(45740, {	-- Defeat one of the World Bosses of Nazjatar
				["_quests"] = { 56056 },	-- Terror of the Depths
			}),
			crit(45744, {	-- Learn about the Scrying Stones of Nazjatar
				["_quests"] = { 56211 },	-- Scrying Stones (A)
			}),
			crit(45745, {	-- Learn about the Scrying Stones of Nazjatar
				["_quests"] = { 56210 },	-- Scrying Stones (H)
			}),
			crit(45508, {	-- Defeat one of Azshara's Champions
				["_quests"] = {
					55899,	-- Starseeker of the Shirakess
				},
			}),
			crit(45515, {	-- Defeat one of Azshara's Champions
				["_quests"] = {
					55892,	-- Champion Eldanar, Shield of Her Glory
				},
			}),
			crit(45509, {	-- Defeat one of Azshara's Champions
				["_quests"] = {
					55893,	-- Azanz, the Slitherblade
				},
			}),
			crit(45507, {	-- Defeat one of Azshara's Champions
				["_quests"] = {
					55898,	-- Tempest-Speaker Shalan'ali
				},
			}),
			crit(45504, {	-- Defeat one of Azshara's Champions
				["_quests"] = {
					55897,	-- Szun, Breaker of Slaves
				},
			}),
			crit(45512, {	-- Defeat one of Azshara's Champions
				["_quests"] = {
					55886,	-- The Zanj'ir Brutalizer
				},
			}),
			crit(45514, {	-- Defeat one of Azshara's Champions
				["_quests"] = {
					55887,	-- Champion Alzana, Arrow of Thunder
				},
			}),
			crit(45517, {	-- Defeat one of Azshara's Champions
				["_quests"] = {
					55888,	-- Champion Qalina, Spear of Ice
				},
			}),
			crit(45505, {	-- Defeat one of Azshara's Champions
				["_quests"] = {
					55895,	-- Frozen Winds of Zhiela
				},
			}),
			crit(45518, {	-- Defeat one of Azshara's Champions
				["_quests"] = {
					55890,	-- Champion Vyz'olgo the Mind-Taker
				},
			}),
			crit(45510, {	-- Defeat one of Azshara's Champions
				["_quests"] = {
					55896,	-- Undana, Chilling Assassin
				},
			}),
			crit(45516, {	-- Defeat one of Azshara's Champions
				["_quests"] = {
					55889,	-- Champion Kyx'zhul the Deepspeaker
				},
			}),
			crit(45511, {	-- Defeat one of Azshara's Champions
				["_quests"] = {
					55900,	-- Kassar, Wielder of Dark Blades
				},
			}),
			crit(45506, {	-- Defeat one of Azshara's Champions
				["_quests"] = {
					55894,	-- Zoko, Her Iron Defender
				},
			}),
			crit(45513, {	-- Defeat one of Azshara's Champions
				["_quests"] = {
					55891,	-- Champion Aldrantiss, Defender of Her Kingdom
				},
			}),
			crit(45734, {	-- Level a Nazjatar Ally to Level 5
				["_quests"] = { 56809 },	-- Super Friends
			}),
			crit(45735, {	-- Level a Nazjatar Ally to Level 5
				["_quests"] = { 56814 },	-- Anytime You Need a Friend
			}),
			crit(45736, {	-- Level a Nazjatar Ally to Level 5
				["_quests"] = { 56804 },	-- With Friends Like You, Who Needs Anemones?
			}),
			crit(45737, {	-- Level a Nazjatar Ally to Level 5
				["_quests"] = { 56778 },	-- A Glint of the Darkness
			}),
			crit(45738, {	-- Level a Nazjatar Ally to Level 5
				["_quests"] = { 56783 },	-- The Lambent Lockbox
			}),
			crit(45733, {	-- Level a Nazjatar Ally to Level 5
				["_quests"] = { 56788 },	-- Reclaimed Treasure
			}),
			crit(45741, {	-- Defeat one of Mardivas's Laboratory Creations
				["_quests"] = { 55121 },	-- The Laboratory of Mardivas
				-- We do not want this to point to "Boss Kill Credit [DNT]" when there is a perfectly fine quest to point at
				["_noautomation"] = true,
			}),
			crit(45746, {	-- Find and Assist Mrrl
				["_quests"] = { 55983 },	-- A Safer Place (A)
			}),
			crit(45747, {	-- Find and Assist Mrrl
				["_quests"] = { 55530 },	-- A Safer Place (H)
			}),
		}),
		ach(13549, {	-- Trove Tracker
			crit(45197, {	-- 20 Arcane Chests
				["provider"] = { "o", 326394 },
			}),
			crit(45198, {	-- 20 Arcane Chests
				["provider"] = { "o", 326401 },
			}),
			crit(45199, {	-- 20 Arcane Chests
				["provider"] = { "o", 326402 },
			}),
			crit(45200, {	-- 20 Arcane Chests
				["provider"] = { "o", 326403 },
			}),
			crit(45201, {	-- 20 Arcane Chests
				["provider"] = { "o", 326404 },
			}),
			crit(45202, {	-- 20 Arcane Chests
				["provider"] = { "o", 326405 },
			}),
			crit(45203, {	-- 20 Arcane Chests
				["provider"] = { "o", 326406 },
			}),
			crit(45204, {	-- 20 Arcane Chests
				["provider"] = { "o", 326407 },
			}),
			crit(45205, {	-- 20 Arcane Chests
				["provider"] = { "o", 326408 },
			}),
			crit(45206, {	-- 20 Arcane Chests
				["provider"] = { "o", 326419 },
			}),
			crit(45207, {	-- 20 Arcane Chests
				["provider"] = { "o", 326417 },
			}),
			crit(45208, {	-- 20 Arcane Chests
				["provider"] = { "o", 326416 },
			}),
			crit(45209, {	-- 20 Arcane Chests
				["provider"] = { "o", 326415 },
			}),
			crit(45210, {	-- 20 Arcane Chests
				["provider"] = { "o", 326414 },
			}),
			crit(45211, {	-- 20 Arcane Chests
				["provider"] = { "o", 326413 },
			}),
			crit(45212, {	-- 20 Arcane Chests
				["provider"] = { "o", 326412 },
			}),
			crit(45213, {	-- 20 Arcane Chests
				["provider"] = { "o", 326411 },
			}),
			crit(45214, {	-- 20 Arcane Chests
				["provider"] = { "o", 326410 },
			}),
			crit(45215, {	-- 20 Arcane Chests
				["provider"] = { "o", 326409 },
			}),
			crit(45216, {	-- 20 Arcane Chests
				["provider"] = { "o", 326418 },
			}),
			crit(45222, {	-- 7 Glowing Arcane Trunks
				["provider"] = { "o", 326400 },
			}),
			crit(45219, {	-- 7 Glowing Arcane Trunks
				["provider"] = { "o", 326397 },
			}),
			crit(45220, {	-- 7 Glowing Arcane Trunks
				["provider"] = { "o", 326398 },
			}),
			crit(45218, {	-- 7 Glowing Arcane Trunks
				["provider"] = { "o", 326396 },
			}),
			crit(45217, {	-- 7 Glowing Arcane Trunks
				["provider"] = { "o", 326395 },
			}),
			crit(45221, {	-- 7 Glowing Arcane Trunks
				["provider"] = { "o", 326399 },
			}),
			crit(45793, {	-- 7 Glowing Arcane Trunks
				["provider"] = { "o", 329783 },
			}),
			crit(46122, {	-- 7 Glowing Arcane Trunks
				["provider"] = { "o", 332220 },
			})
		}),
		ach(13638, {	-- Undersea Usurper
			["sym"] = {{"meta_achievement",
				13711,	-- A Fistful of Manapearls
				13761,	-- Aqua Team Murder Force (H)
				13762,	-- Aqua Team Murder Force (A)
				13763,	-- Back to the Depths!
				13712,	-- Explore Nazjatar
				13836,	-- Feline Figures Found
				13691,	-- I Thought You Said They'd Be Rare?
				13707,	-- Mrrl's Secret Stash
				13690,	-- Nazjatarget Eliminated
				13713,	-- Nothing To Scry About
				13699,	-- Periodic Destruction
				13764,	-- Puzzle Performer
				13765,	-- Subaquatic Support
				13710,	-- Sunken Ambitions
				13722,	-- Terror of the Tadpoles
				13559,	-- The Unshackled (H)
				13635,	-- Tour of the Depths
				13549,	-- Trove Tracker
				13709,	-- Unfathomable
				13558,	-- Waveblade Ankoan (A)
			}},
			["groups"] = {
				i(169194),		-- Snapback Scuttler (MOUNT!)
				title(405),		-- of the Deeps
			},
		}),
		ach(13709, {	-- Unfathomable
			["races"] = HORDE_ONLY,
		}),
		ach(13558, {	-- Waveblade Ankoan
			["races"] = ALLIANCE_ONLY,
		}),
	}),
})));
