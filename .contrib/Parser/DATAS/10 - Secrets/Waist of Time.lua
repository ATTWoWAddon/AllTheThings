-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------

root(ROOTS.Secrets, header(HEADERS.Item, 162690, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {	-- Waist of Time
	["description"] = "***Quest tracking enabled is required to see all the steps.***\n\nYou will need uncommon quality Windwool Hood, Deathsilk Shoulders, Netherweave Tunic, Frostwoven Leggings, as well as Proximo's Rudius, Rough Wooden Staff, Punctured Pelt, and Formula: Enchant Ring - Striking later on in the secret. It is recommended that you have flying and the Ever-Shifting Mirror toy for ease of travel between Draenor and Outland.",
	["lvl"] = 110,
	["groups"] = {
		o(9999946, {	-- Summon Baa'l
			["displayID"] = 80456,	-- Baa'l
			["questID"] = 52829,
			["sourceQuests"] = { 52828 },
			["description"] = "Souls fEast on the enDless shrieKing, in darKNess they writhe and scream, yOu WiLl join thEm, toGether forEver morE!",
		}),
		o(294096, {	-- Lit Orb  -- Summoned Baal' at this location and 52829 triggered, possibly his emote text  "Souls fEast on the enDless shrieKing, in darKNess they writhe and scream, yOu WiLl join thEm, toGether forEver morE!"
			["model"] = 1046021,
			["questID"] = 52830,	-- Orb click
			["sourceQuests"] = { 52829 },
			["description"] = "Your journey continues in Spires of Arak. You must have summoned Baa'l at least once before you can continue. \n\nInside the small basket \n\nThe Orb Reads: \n\n\"<Something is written here.>\n\nPassive Ice Veins\"",
			["coord"] = { 35.5, 32.0, SPIRES_OF_ARAK },	-- Lit Orb
		}),
		o(294097, {	-- Strange Seed
			["model"] = 940623,
			["modelScale"] = 2,
			["questID"] = 52831,
			["sourceQuests"] = { 52830 },
			["description"] = "Stormwind City\n\nThe Strange Seed reads: \n\n\"<Something is written here.>\n\nSadness, Keynoted\"",
			["coord"] = { 17.5, 56.5, ELWYNN_FOREST },	-- Strange Seed
		}),
		o(294098, {	-- Tiny Frog
			["model"] = 367326,
			["modelScale"] = .5,
			["questID"] = 52898,
			["sourceQuests"] = { 52831 },
			["description"] = "Spires of Arak\n\nUnderwater on top of the large rock. \n\nThe Tiny Frog says:\n\n\"<Something is written here.>\n\nDog wig moss?\"",
			["coord"] = { 53.5, 10.8, SPIRES_OF_ARAK },	-- Tiny Frog
		}),
		o(294099, {	-- Brittle Bone
			["model"] = 774346,
			["modelScale"] = .5,
			["questID"] = 52899,
			["sourceQuests"] = { 52898 },
			["description"] = "Blades Edge Mountains\n\nOn the ground next to a crystal. \n\nThe Brittle Bone reads:\n\n\"<Something is written here.>\n\nRage, Shank Sever\"",
			["coord"] = { 33.6, 58.2, BLADES_EDGE_MOUNTAINS },	-- Brittle Bone
		}),
		o(294100, {	-- Misplaced Candle
			["model"] = 1307043,
			["questID"] = 52900,
			["sourceQuests"] = { 52899 },
			["description"] = "Spires of Arak\n\nNext to a large candle. \n\nThe Misplaced Candle reads:\n\n\"<Something is written here.>\n\nRankest Goldfish\"",
			["coord"] = { 67.9, 41.0, SPIRES_OF_ARAK },	-- Misplaced Candle
		}),
		o(294101, {	-- Odd Cup
			["model"] = 1822968,
			["modelScale"] = .5,
			["questID"] = 52901,
			["sourceQuests"] = { 52900 },
			["description"] = "Draenor SMV\n\nBrown cup, next to the fire. \n\nThe Odd Cup reads:\n\n\"<Something is written here.>\n\nEase off fruit...\"",
			["coord"] = { 45.7, 26.2, DRAENOR_SHADOWMOON_VALLEY },	-- Odd Cup
		}),
		o(294102, {	-- Interesting Rock
			["model"] = 939054,
			["modelScale"] = .5,
			["questID"] = 52902,
			["sourceQuests"] = { 52901 },
			["description"] = "Outland SMV\n\nOn top of the mountain.\n\nThe Interesting Rock reads:\n\n\"<Something is written here.>\n\nThe BIG Bull\"",
			["coord"] = { 51.6, 43.8, SHADOWMOON_VALLEY },	-- Interesting Rock
		}),
		o(294103, {	-- Blooming Lily
			["model"] = 343460,
			["questID"] = 52903,
			["sourceQuests"] = { 52902 },
			["description"] = "Swamp of Sorrows\n\nUnder the tree, on top of the water.\n\nThe Blooming Lily reads:\n\n\"<Something is written here.>\n\nJaws open nooks!\"",
			["coord"] = { 58.0, 31.6, SWAMP_OF_SORROWS },	-- Blooming Lily
		}),
		o(294104, {	-- Pretty Flower
			["model"] = 1124095,
			["modelScale"] = .5,
			["questID"] = 52904,
			["sourceQuests"] = { 52903 },
			["description"] = "Eastern Plaguelands\n\nInside the crypt, on top of the sarcophagus lid\n\nThe Pretty Flower reads:\n\n\"<Something is written here.>\n\nDead Rune Thug\"",
			["coord"] = { 24.0, 78.0, EASTERN_PLAGUELANDS },	-- Pretty Flower
		}),
		o(294105, {	-- Old Book
			["model"] = 244161,
			["modelScale"] = .5,
			["questID"] = 52905,
			["sourceQuests"] = { 52904 },
			["description"] = "Deadwind Pass\n\nInside the old church, near the table.\n\nThe Old Book reads:\n\n\"<Something is written here.>\n\n...A Stage Deception\"",
			["coord"] = { 41.2, 78.9, DEADWIND_PASS },	-- Old Book
		}),
		o(294106, {	-- Dead Fish
			["model"] = 189087,
			["modelScale"] = .5,
			["questID"] = 52906,
			["sourceQuests"] = { 52905 },
			["description"] = "Blackrock Mountain\n\nRoom next to LBRS entrance, next to the fire.\n\nThe Dead Fish says:\n\n\"<Something is written here.>\n\nNecropolis Expos!\"",
			["coords"] = {
				{ 21.0, 38.2, BURNING_STEPPES },	-- Entrance
				{ 77.9, 44.3, BLACKROCK_MOUNTAIN },	-- Dead Fish
			},
		}),
		o(294107, {	-- Scratched Board
			["model"] = 625180,
			["modelScale"] = 3,
			["questID"] = 52907,
			["sourceQuests"] = { 52906 },
			["description"] = "Duskwood\n\nUnderneath the large plank.\n\nThe Scratched Board reads:\n\n\"<Something is written here.>\n\nThe net saves.\"",
			["coord"] = { 52.0, 62.4, DUSKWOOD },	-- Scratched Board
		}),
		o(294108, {	-- Lost Ring
			["model"] = 242730,
			["questID"] = 52908,
			["sourceQuests"] = { 52907 },
			["description"] = "Hillsbrad Foothills\n\nJust inside the clocktower, left pile of bones.\n\nThe Lost Ring reads:\n\n\"<Something is written here.>\n\nTerrible grunt.\"",
			["coord"] = { 44.6, 26.4, 25 },	-- Lost Ring
		}),
		o(294109, {	-- Spoiled Apple
			["model"] = 960844,
			["modelScale"] = .5,
			["questID"] = 52909,
			["sourceQuests"] = { 52908 },
			["description"] = "Badlands\n\nInside the larger building, on the table, next to the roasted boar.\n\nThe Spoiled Apple reads:\n\n\"<Something is written here.>\n\nLeave Nets, Often\"",
			["coord"] = { 90.1, 37.9, BADLANDS },	-- Spoiled Apple
		}),
		o(294110, {	-- Broken Tooth
			["model"] = 442505,
			["questID"] = 52910,
			["sourceQuests"] = { 52909 },
			["description"] = "Blasted Lands\n\nBase of the statue, near a candle. The tooth is present in both the past and present.\n\nThe Broken tooth reads:\n\n\"<Something is written here.>\n\nBrash remains.\"",
			["coord"] = { 36.8, 27.6, BLASTED_LANDS },	-- Broken Tooth
		}),
		o(294111, {	-- Worn Helm
			["model"] = 197882,
			["modelScale"] = .5,
			["questID"] = 52911,
			["sourceQuests"] = { 52910 },
			["description"] = "Burning Steppes\n\nEquipped on the larger brown skeletons head.\n\nThe Worn Helm reads:\n\n\"<Something is written here.>\n\nSensed the Figs...\"",
			["coord"] = { 27.1, 47.0, BURNING_STEPPES },	-- Worn Helm
		}),
		o(294112, {	-- Leafy Leaf
			["model"] = 523642,
			["modelScale"] = 2,
			["questID"] = 52912,
			["sourceQuests"] = { 52911 },
			["description"] = "Northrend Dalaran\n\nIn front of the left planter.\n\nThe Leafy Leaf reads:\n\n\"<Something is written here.>\n\nPhantasmal Hosts?\"",	-- Punctured Pelt purchase while on this?
			["coord"] = { 42.75, 20.18, NORTHREND_DALARAN },	-- Leafy Leaf
		}),
		o(294113, {	-- Musty Cloth
			["model"] = 1360796,
			["questID"] = 52913,
			["sourceQuests"] = { 52912 },
			["description"] = "Terrokar Forrest\n\nInside the crate, inside the tent, near the Shadow Labs entrance.\n\nThe Musty Cloth reads:\n\n\"<Something is written here.>\n\nScarce odds, still.\"",
			["coord"] = { 40.2, 72.5, TEROKKAR_FOREST },	-- Musty Cloth
		}),
		o(294114, {	-- Broken Tablet
			["model"] = 202596,
			["modelScale"] = 2,
			["questID"] = 52914,
			["sourceQuests"] = { 52913 },
			["description"] = "Twilight Highlands\n\nOn the ground next to the mace.\n\nThe Broken Tablet reads:\n\n\"<Something is written here.>\n\nStarfish droplets!\"",
			["coord"] = { 17.1, 57.9, TWILIGHT_HIGHLANDS },	-- Broken Tablet
		}),
		o(294115, {	-- Ashed Torch
			["model"] = 341882,
			["modelScale"] = 2,
			["questID"] = 52915,
			["sourceQuests"] = { 52914 },
			["description"] = "Feralas\n\nMiddle of the remains and table, sticking out of the ground.\n\nThe Ashed Torch reads:\n\n\"<Something is written here.>\n\n...a daft tormenter's fog.\"",
			["coord"] = { 60.8, 67.8, FERALAS },	-- Ashed Torch
		}),
		o(294312, {	-- Grimmy's List of Friends
			["model"] = 305392,
			["modelScale"] = .5,
			["questID"] = 52916,
			["sourceQuests"] = { 52915 },
			["description"] = "Head to the past version of Arathi Highlands, and click on the note on the table inside Grimmy's house.\n\nGrimmy's List of Friends reads:\n\n\"List of My Friends?\nFirst is SN, you always smelled so good\nSecond is TM, you smelled like burning\nwood\nThird is FD, though you smelled like fel\nLast is OM, I hated that fishy smell\"",
			["coords"] = {
				{ 38.2, 90.1, ARATHI_HIGHLANDS },	-- Zidormi
				{ 85.4, 73.6, ARATHI_HIGHLANDS },	-- Grimmy's List of Friends
			},
		}),
		q(52917, {	-- Grimmy Dialogue
			["name"] = "Grimmy Dialogue",
			["description"] = "Equip the Windwool Hood, Deathsilk Shoulders, Netherweave Tunic, and Frostwoven Leggings, and talk to Grimmy. Select his dialogue \"It's me, your friend. Got any secrets to tell me about?\"",
			["sourceQuests"] = { 52916 },
			["provider"] = { "n", 138578 },	-- Grimmy
			--["coord"] = { 85.3, 73.6, ARATHI_HIGHLANDS },	-- Grimmy Dialogue
		}),
		o(294314, {	-- Grimmy's List of Enemies
			["model"] = 305391,
			["questID"] = 52918,
			["sourceQuests"] = { 52917 },
			["description"] = "After selecting the Grimmy dialogue, a note appears on his bedstand. Click it. Grimmy's List of Enemies reads:\n\n\"You flaunted your virility, and red was\nnever to my liking\nThough I wanted to slap you, I always\nfound you striking.\n\nYou Always though you knew what was\nbest, but not everyone likes greens,\nThough I waved your way, I pictured\nyour shredded hide in my dreams.\n??\nYour bread was bad, you diseased lout,\nit made me sick.\nI woudl cheerily beat you with a stick.\n??\nLast you, I'm not eve going to think of\na rhyme for you, Mugs.\nI will dance on your grave, you were\nuniquely terrible.\"\n\nGo to each of the following NPCs with Proximo's Rudius, Rough Wooden Staff, Punctured Pelt, and Formula: Enchant Ring - Striking, and emote to them.",
			--["coord"] = { 85.2, 73.7, ARATHI_HIGHLANDS },	-- Grimmy's List of Enemies
		}),
		n(47121, {	-- Aquinastrasz <Vermillion Redoubt Flight Master>
			["questID"] = 52822,
			["sourceQuests"] = { 52918 },
			["description"] = "Twilight Highlands\n\n/slap",
			["coord"] = { 28.5, 24.9, TWILIGHT_HIGHLANDS },	-- Aquinastrasz <Vermillion Redoubt Flight Master>
		}),
		n(36034, {	-- Karnum Marshweaver <The Cenarion Circle>
			["questID"] = 52823,
			["sourceQuests"] = { 52918 },
			["description"] = "Desolace\n\n/wave",
			["coord"] = { 57.5, 47.7, DESOLACE },	-- Karnum Marshweaver <The Cenarion Circle>
		}),
		n(28792, {	-- Noggra <General Goods>
			["questID"] = 52824,
			["sourceQuests"] = { 52918 },
			["description"] = "Zul'drak\n\n/cheer",
			["coord"] = { 40.6, 68.7, ZULDRAK },	-- Noggra <General Goods>
		}),
		n(62877, {	-- Stained Mug <Innkeeper>
			["questID"] = 52826,
			["sourceQuests"] = { 52918 },
			["description"] = "Kun-Lai Summit\n\n/dance",
			["coord"] = { 44.4, 90.3, KUN_LAI_SUMMIT },	-- Stained Mug <Innkeeper>
		}),
		n(138578, {	-- Grimmy Dialogue
			["questID"] = 52919,
			["sourceQuests"] = { 52826, 52824, 52823, 52822, },
			["description"] = "Return to Grimmy and select his new dialogue\n\n\"I've sent some messages to your enemies, now about those secrets...\"",
			["coord"] = { 85.3, 73.6, ARATHI_HIGHLANDS },	-- Grimmy Dialogue
		}),
		o(294315, {	-- Grimmy's Favorite Recipe
			["model"] = 936411,
			["modelScale"] = .5,
			["questID"] = 52920,
			["sourceQuests"] = { 52919 },
			["description"] = "After selecting Grimmy's dialogue, a new note appears by the fireplace. Click it. Grimmy's Favorite Recipe reads:\n\n\"A pinch of turmeric and a pound of salt,\nif it comes out poorly it's your own\nfault.\n\nPay attention to the broth, and stir,stir,\nstir!\nThen add a big handful of boar fur.\n\nLast you need a little sour,\nget the kick with a little gunpowder!\"",
			--["coord"] = { 85.3, 74.0, ARATHI_HIGHLANDS },	-- Grimmy's Favorite Recipe
		}),
		o(294335, {	-- Rotten Potato
			["model"] = 2020463,
			["modelScale"] = .5,
			["questID"] = 52921,
			["sourceQuests"] = { 52920 },
			["description"] = "Go outside and find the Rotten Potato. You will need to get exactly 144 stacks of Rotten Potato by clicking the potato. After getting 144 stacks of the buff, go back and talk to Grimmy and select his new dialogue option\"How do I smell?\"\n\nGrimmy's new dialogue says:\n\n\"Oh, my, just like my mother used to after she made her famous pie.\n\nVery well, I will show you...my life's work!\n\nIt's in the chest out back, and it's all yours!\n\nI hope it was worth it!\"",
			["coord"] = { 88.4, 69.2, ARATHI_HIGHLANDS },	-- Rotten Potato
		}),
		o(294703, {	-- Grimmy's Rusty Lockbox
			["questID"] = 52922,
			["sourceQuests"] = { 52921 },
			["description"] = "After asking Grimmy how you smell, go outside behind and above his house, and on the hill will be Grimmy's Rusty Lockbox waiting for you to open it.",
			["coord"] = { 85.1, 73.3, ARATHI_HIGHLANDS },	-- Grimmy's Rusty Lockbox
			["groups"] = {
				i(162690),	-- Waist of Time
			},
		}),
	},
})));
