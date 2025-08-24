---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	m(ZARALEK_CAVERN, {
		n(QUESTS, {
			header(HEADERS.Achievement, 17739, {	-- Embers of Neltharion
				------ Chapter 1 ------
				q(72975, {	-- The Land Beneath
					["sourceQuests"] = { 72717 },	-- A Creche Divided
					["provider"] = { "n", 201401 },	-- Hadexian
					["coord"] = { 51.3, 35.2, VALDRAKKEN },
				}),
				q(75456, {	-- News From Beneath
					["sourceQuests"] = { 72717 },	-- A Creche Divided
					["provider"] = { "n", 200277 },	-- Ebyssian
					["coord"] = { 76.8, 38.2, THE_FORBIDDEN_REACH },
				}),
				q(72976, {	-- A Crack in the World
					["sourceQuests"] = {
						72975,	-- The Land Beneath
						75456,	-- News From Beneath
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 201281 },	-- Ebyssian
					["coord"] = { 61.4, 42.3, VALDRAKKEN },
				}),
				q(72977, {	-- Where the Flames Fell
					["sourceQuests"] = { 72976 },	-- A Crack in the World
					["provider"] = { "n", 201281 },	-- Ebyssian
					["coord"] = { 58.9, 38.4, VALDRAKKEN },
				}),
				q(72978, {	-- Scar of Earth and Fire
					["sourceQuests"] = { 72977 },	-- Where the Flames Fell
					["provider"] = { "n", 201311 },	-- Wrathion
					["coord"] = { 87.2, 27.8, OHNAHRAN_PLAINS },
				}),
				q(75985, {	-- Rest Well, Warrior
					["sourceQuests"] = { 72978 },	-- Scar of Earth and Fire
					["provider"] = { "n", 202788 },	-- Khasar
					["coord"] = { 86.9, 27.2, OHNAHRAN_PLAINS },
					["groups"] = {
						i(204461),	-- Shalkeel's Remembrance
					},
				}),
				q(72981, {	-- The Patience of Princes
					["sourceQuests"] = { 72978 },	-- Scar of Earth and Fire
					["provider"] = { "n", 200085 },	-- Sabellian
					["coord"] = { 87.4, 27.5, OHNAHRAN_PLAINS },
					["maps"] = { 2165 },	-- The Throughway (Scenario Map)
					["groups"] = {
						i(204389),	-- Stone Breaker (TOY!)
					},
				}),
				q(72872, {	-- Culling the Deep
					["sourceQuests"] = { 72981 },	-- The Patience of Princes
					["provider"] = { "n", 200116 },	-- Elder Honeypelt
					["coord"] = { 64.7, 37.6, ZARALEK_CAVERN },
				}),
				q(72873, {	-- It Was Not Enough
					["sourceQuests"] = { 72981 },	-- The Patience of Princes
					["provider"] = { "n", 200116 },	-- Elder Honeypelt
					["coord"] = { 64.7, 37.6, ZARALEK_CAVERN },
				}),
				q(72970, {	-- Niffin and Goliath
					["sourceQuests"] = {
						72872,	-- Culling the Deep
						72873,	-- It Was Not Enough
					},
					["provider"] = { "n", 201587 },	-- Elder Honeypelt
					["coord"] = { 60.2, 37.8, ZARALEK_CAVERN },
					["groups"] = {
						i(204604),	-- Bequeathed Bracers
						i(204612),	-- Bestowed Vambraces
						i(204588),	-- Endowed Bindings
						i(204596),	-- Inherited Wristbands
					},
				}),
				q(72980, {	-- Brother's Keeper
					["sourceQuests"] = { 72970 },	-- Niffin and Goliath
					["provider"] = { "n", 201583 },	-- Wrathion
					["coord"] = { 60.1, 37.5, ZARALEK_CAVERN },
				}),
				q(72874, {	-- Secrets From Our Father
					["sourceQuests"] = { 72980 },	-- Brother's Keeper
					["provider"] = { "n", 201589 },	-- Sabellian
					["coord"] = { 60.6, 40.1, ZARALEK_CAVERN },
				}),
				q(72979, {	-- The Earth Gives Way
					["sourceQuests"] = { 72874 },	-- Secrets From Our Father
					["provider"] = { "n", 201589 },	-- Sabellian
					["coord"] = { 60.6, 40.1, ZARALEK_CAVERN },
				}),
				q(72973, {	-- Smells Like Loamm
					["sourceQuests"] = { 72979 },	-- The Earth Gives Way
					["provider"] = { "n", 201584 },	-- Elder Honeypelt
					["coord"] = { 57.0, 38.2, ZARALEK_CAVERN },
				}),
				q(75643, {	-- Orientation: Loamm Niffen
					["sourceQuests"] = { 72973 },	-- Smells Like Loamm
					["provider"] = { "n", 204522 },	-- Aurantia
					["coord"] = { 56.9, 55.7, ZARALEK_CAVERN },
				}),
				q(72974, {	-- Welcome to the City of Smells
					["sourceQuests"] = { 72973 },	-- Smells Like Loamm
					["provider"] = { "n", 200054 },	-- Elder Honeypelt
					["coord"] = { 57.0, 55.8, ZARALEK_CAVERN },
					["groups"] = {
						i(204457),	-- Almost Immovable Wall
						i(204449),	-- Black Earth Glaive
						i(204453),	-- Black Dragon's Reach
						i(204458),	-- Centered Stone Focus
						i(204450),	-- Draconic Cleaver
						i(204452),	-- Earth Warding Spire
						i(204451),	-- Earth-Bound Saber
						i(204456),	-- Proto-Drake Slicer
						i(204455),	-- Scaled Titan's Claw
						i(204448),	-- Stone Spitter
					},
				}),
				q(75644, {	-- Six Hundred Feet Under
					["sourceQuests"] = {
						75643,	-- Orientation: Loamm Niffen
						72974	-- Welcome to the City of Smells
					},
					["provider"] = { "n", 200052 },	-- Aurantia
					["coord"] = { 54.6, 54.7, ZARALEK_CAVERN },
					["groups"] = {
						spell(408876),	-- Zaralek Cavern World Quests
					},
				}),
				------ Chapter 2 ------
				q(74334, {	-- Future Aspects
					["sourceQuests"] = { 75644 },	-- Six Hundred Feet Under
					["provider"] = { "n", 201366 },	-- Ebyssian
					["coord"] = { 54.7, 54.5, ZARALEK_CAVERN },
				}),
				q(74375, {	-- Collating Their Research
					["sourceQuests"] = { 74334 },	-- Future Aspects
					["provider"] = { "n", 200049 },	-- Scalecommander Emberthal
					["coord"] = { 59.4, 68.9, ZARALEK_CAVERN },
					["groups"] = {
						i(204599),	-- Bequeathed Gauntlets
						i(204607),	-- Bestowed Crushers
						i(204583),	-- Endowed Mitts
						i(204591),	-- Inherited Gloves
						i(204713),	-- Sundered Flame Expedition Notes (QI!)
					},
				}),
				q(72958, {	-- Save-A-Mole
					["sourceQuests"] = { 74334 },	-- Future Aspects
					["provider"] = { "n", 200049 },	-- Scalecommander Emberthal
					["coord"] = { 59.4, 68.9, ZARALEK_CAVERN },
					["groups"] = {
						i(204603),	-- Bequeathed Cinch
						i(204611),	-- Bestowed Girdle
						i(204595),	-- Inherited Cincture
						i(204587),	-- Endowed Sash
					},
				}),
				q(72959, {	-- Whose Vault Is It Anyway?
					["sourceQuests"] = {
						74375,	-- Collating Their Research
						72958,	-- Save-A-Mole
					},
					["provider"] = { "n", 200049 },	-- Scalecommander Emberthal
					["coord"] = { 59.4, 68.9, ZARALEK_CAVERN },
				}),
				q(72961, {	-- Charging Up
					["sourceQuests"] = { 72959 },	-- Whose Vault Is It Anyway?
					["provider"] = { "n", 200074 },	-- Rannan Korren
					["coord"] = { 62.6, 73.3, ZARALEK_CAVERN },
					["groups"] = {
						i(204387),	-- Buzzing Orb Core
						i(204833),	-- Buzzing Orb Core (QI!)
					},
				}),
				q(72962, {	-- Open That Door!
					["sourceQuests"] = { 72961 },	-- Charging Up
					["provider"] = { "n", 201619 },	-- Scalecommander Emberthal
					["coord"] = { 62.6, 73.2, ZARALEK_CAVERN },
				}),
				q(75419, {	-- Sundered Flames
					["sourceQuests"] = { 72962 },	-- Open That Door!
					["provider"] = { "n", 200075 },	-- Scalecommander Emberthal
					["coord"] = { 62.8, 73.6, ZARALEK_CAVERN },
				}),
				q(72963, {	-- The Upper Hand
					["sourceQuests"] = { 75419 },	-- Sundered Flames
					["provider"] = { "n", 202857 },	-- Scalecommander Emberthal
					["coord"] = { 63.0, 74.0, ZARALEK_CAVERN },
					["groups"] = {
						i(204598),	-- Bequeathed Striders
						i(204606),	-- Bestowed Stompers
						i(204582),	-- Endowed Slippers
						i(204590),	-- Inherited Treads
					},
				}),
				q(72964, {	-- Singed
					["sourceQuests"] = { 72963 },	-- The Upper Hand
					["provider"] = { "n", 204571 },	-- Scalecommander Emberthal
					["coord"] = { 63.4, 74.6, ZARALEK_CAVERN },
				}),
				q(72965, {	-- Aspects of Our Legacy
					["sourceQuests"] = { 72964 },	-- Singed
					["provider"] = { "n", 202670 },	-- Ebyssian
					["coord"] = { 63.4, 74.7, ZARALEK_CAVERN },
					["groups"] = {
						i(204601),	-- Bequeathed Tassets
						i(204609),	-- Bestowed Greaves
						i(204585),	-- Endowed Breeches
						i(204593),	-- Inherited Leggings
						i(205991),	-- Shiny Token of Gratitude
					},
				}),
				------ Chapter 3 ------
				q(72966, {	-- Where There's Smoke, There's Fire
					["sourceQuests"] = { 72965 },	-- Aspects of Our Legacy
					["provider"] = { "n", 199849 },	-- Sabellian
					["coord"] = { 56.6, 56.7, ZARALEK_CAVERN },
				}),
				q(72908, {	-- Sight Beyond Sight
					["sourceQuests"] = { 72966 },	-- Where There's Smoke, There's Fire
					["provider"] = { "n", 200080 },	-- Ebyssian
					["coord"] = { 40.9, 41.7, ZARALEK_CAVERN },
					["groups"] = {
						i(204602),	-- Bequeathed Spaulders
						i(204610),	-- Bestowed Pauldrons
						i(204586),	-- Endowed Mantle
						i(204694),	-- Greater Flamesight Rune (QI!)
						i(204594),	-- Inherited Epaulets
						i(203385),	-- Flamesight Rune (QI!)
					},
				}),
				q(72910, {	-- Know Thy Enemy
					["sourceQuests"] = { 72908 },	-- Sight Beyond Sight
					["provider"] = { "n", 199851 },	-- Sabellian
					["coord"] = { 35.4, 41.9, ZARALEK_CAVERN },
					["groups"] = {
						i(204620),	-- Dark Earth Glaive
						i(204625),	-- Dark Nail
						i(204454),	-- Dragon Maul
						i(204629),	-- Grounded Stone Focus
						i(204630),	-- Nearly Unbreakable Wall
						i(204627),	-- Proto-Drake Ripper
						i(204626),	-- Rock Shooter
						i(204628),	-- Scaled Titan's Tooth
						i(204624),	-- Staff of the Unlit Sky
						i(204459),	-- Wand of Shifting Stone
						i(203458),	-- Black Dragonscale Robes (QI!)
						i(203453),	-- Dragonbone Totem (QI!)
						i(203455),	-- Draketooth Fetish (QI!)
						i(203456),	-- Obsidian Prayer Beads (QI!)
						i(203457),	-- Volcanic Herb Sachet (QI!)
						i(203454),	-- Zaqali Equipment (QI!)
					},
				}),
				q(72909, {	-- Legends of the Zaqali
					["sourceQuests"] = { 72908 },	-- Sight Beyond Sight
					["provider"] = { "n", 199852 },	-- Ebyssian
					["coord"] = { 35.5, 41.8, ZARALEK_CAVERN },
				}),
				q(72911, {	-- Take Out The Head
					["sourceQuests"] = {
						72910,	-- Know Thy Enemy
						72909,	-- Legends of the Zaqali
					},
					["provider"] = { "n", 199949 },	-- Sabellian
					["coord"] = { 30.3, 40.9, ZARALEK_CAVERN },
				}),
				q(72912, {	-- Consequences
					["sourceQuests"] = { 72911 },	-- Take Out The Head
					["provider"] = { "n", 199863 },	-- Ebyssian
					["coord"] = { 38.2, 48.5, ZARALEK_CAVERN },
				}),
				q(72913, {	-- Battlefield Triage
					["sourceQuests"] = { 72912 },	-- Consequences
					["provider"] = { "n", 199863 },	-- Ebyssian
					["coord"] = { 38.2, 48.5, ZARALEK_CAVERN },
					["groups"] = {
						i(203653),	-- Vacant Elemental Core (QI!)
						i(203654),	-- Zaqali Flame Totem (QI!)
					},
				}),
				q(72914, {	-- Rushing Quality
					["sourceQuests"] = { 72912 },	-- Consequences
					["provider"] = { "n", 201578 },	-- Ebyssian
					["coord"] = { 37.0, 47.0, ZARALEK_CAVERN },
					["groups"] = {
						i(204386),	-- Pocket Darkened Elemental Core
						i(203682),	-- Darkened Elemental Core (QI!)
					},
				}),
				q(72915, {	-- Alliance of Convenience
					["sourceQuests"] = { 72914 },	-- Rushing Quality
					["qgs"] = {
						199950,	-- Sabellian
						201647,	-- Sabellian
					},
					["coord"] = { 33.2, 50.8, ZARALEK_CAVERN },
					["groups"] = {
						i(204618),	-- Bequeathed Drape
						i(204617),	-- Bestowed Cape
						i(204616),	-- Endowed Wrap
						i(204619),	-- Inherited Cloak
					},
				}),
				q(72916, {	-- Shut Them Down
					["sourceQuests"] = { 72914 },	-- Rushing Quality
					["qgs"] = {
						201581,	-- Ebyssian
						201646,	-- Ebyssian
					},
					["coord"] = { 33.1, 50.9, ZARALEK_CAVERN },
				}),
				q(74494, {	-- A Scale for a Scale
					["sourceQuests"] = {
						72915,	-- Alliance of Convenience
						72916,	-- Shut Them Down
					},
					["provider"] = { "n", 201647 },	-- Sabellian
					["coord"] = { 29.3, 54.6, ZARALEK_CAVERN },
					["groups"] = {
						i(204085),	-- Zaqali Dragonslayer's Spear (QI!)
					},
				}),
				q(72917, {	-- From Hell's Heart
					["sourceQuests"] = { 74494 },	-- A Scale for a Scale
					["provider"] = { "n", 199952 },	-- Sabellian
					["coord"] = { 29.6, 49.7, ZARALEK_CAVERN },
					["groups"] = {
						i(204597),	-- Bequeathed Chainmail
						i(204605),	-- Bestowed Chestplate
						i(204581),	-- Endowed Robes
						i(204589),	-- Inherited Raiment
					},
				}),
				q(72918, {	-- No Dragon Left Behind
					["sourceQuests"] = { 72917 },	-- From Hell's Heart
					["provider"] = { "n", 199877 },	-- Ebyssian
					["coord"] = { 41.1, 59.9, ZARALEK_CAVERN },
					["groups"] = {
						i(204388),	-- Draconic Cauterizing Magma
					},
				}),
				q(72919, {	-- Raked Over the Coals
					["sourceQuests"] = { 72918 },	-- No Dragon Left Behind
					["provider"] = { "n", 199877 },	-- Ebyssian
					["coord"] = { 41.1, 59.9, ZARALEK_CAVERN },
				}),
				q(72920, {	-- The Endless Burning Sky
					["sourceQuests"] = { 72919 },	-- Raked Over the Coals
					["provider"] = { "n", 199958 },	-- Ebyssian
					["coord"] = { 56.0, 54.3, ZARALEK_CAVERN },
					["groups"] = {
						i(203707),	-- Water Bucket (QI!)
					},
				}),
				q(75145, {	-- In the Wake of the Ashes
					["sourceQuests"] = { 72920 },	-- The Endless Burning Sky
					["provider"] = { "n", 201784 },	-- Ebyssian
					["coord"] = { 56.1, 54.5, ZARALEK_CAVERN },
					["groups"] = {
						i(205989),	-- Symbol of Friendship
						i(204600),	-- Bequeathed Cowl
						i(204608),	-- Bestowed Greathelm
						i(204584),	-- Endowed Hood
						i(204592),	-- Inherited Mask
					},
				}),
				------ Chapter 4 ------
				q(72987, {	-- Here We Go Again
					["sourceQuests"] = { 75145 },	-- In the Wake of the Ashes
					["provider"] = { "n", 203965 },	-- Ebyssian
					["coord"] = { 61.9, 41.2, VALDRAKKEN },
				}),
				q(75367, {	-- The Obsidian Rest
					["sourceQuests"] = { 72987 },	-- Here We Go Again
					["provider"] = { "n", 200046 },	-- Ebyssian
					["coord"] = { 49.9, 27.6, ZARALEK_CAVERN },
					["groups"] = {
						i(204819),	-- Flight Master's Report
					},
				}),
				q(74393, {	-- Report: Battlefield Ruins
					["sourceQuests"] = { 75367 },	-- The Obsidian Rest
					["provider"] = { "n", 200046 },	-- Ebyssian
					["coord"] = { 49.9, 27.6, ZARALEK_CAVERN },
				}),
				q(74538, {	-- Blow It Up
					["sourceQuests"] = { 74393 },	-- Report: Battlefield Ruins
					["provider"] = { "n", 200051 },	-- Field Commander Ignax
					["coord"] = { 46.7, 29.6, ZARALEK_CAVERN },
				}),
				q(74540, {	-- Intercepting Communications
					["sourceQuests"] = { 74393 },	-- Report: Battlefield Ruins
					["provider"] = { "n", 200051 },	-- Field Commander Ignax
					["coord"] = { 46.7, 29.6, ZARALEK_CAVERN },
				}),
				q(74539, {	-- Thinning Their Defenses
					["sourceQuests"] = { 74393 },	-- Report: Battlefield Ruins
					["provider"] = { "n", 200051 },	-- Field Commander Ignax
					["coord"] = { 46.7, 29.6, ZARALEK_CAVERN },
				}),
				q(74542, {	-- Air Superiority
					["sourceQuests"] = {
						74538,	-- Blow It Up
						74540,	-- Intercepting Communications
						74539,	-- Thinning Their Defenses
					},
					["provider"] = { "n", 200051 },	-- Field Commander Ignax
					["coord"] = { 46.7, 29.6, ZARALEK_CAVERN },
					["_drop"] = { "g" },	-- Drop Crest
				}),
				q(74557, {	-- Investigating the Unknown
					["sourceQuests"] = { 74542 },	-- Air Superiority
					["provider"] = { "n", 202523 },	-- Ebyssian
					["coord"] = { 53.6, 30.2, ZARALEK_CAVERN },
				}),
				q(74562, {	-- Break Them Out
					["sourceQuests"] = { 74557 },	-- Investigating the Unknown
					["provider"] = { "n", 202523 },	-- Ebyssian
					["coord"] = { 53.6, 30.2, ZARALEK_CAVERN },
					["groups"] = {
						i(203330),	-- Winding Slitherdrake: Swept Horns (MM!)
					},
				}),
				q(74563, {	-- Worst of the Worst
					["sourceQuests"] = { 74557 },	-- Investigating the Unknown
					["provider"] = { "n", 202523 },	-- Ebyssian
					["coord"] = { 53.6, 30.2, ZARALEK_CAVERN },
					["groups"] = {
						ach(17779),	-- A Serpentine Discovery
						i(204361),	-- Winding Slitherdrake (MOUNT!)
						i(205992),	-- Regurgitated Half-Digested Fish
					},
				}),
				------ Chapter 5 ------
				q(72922, {	-- Fading Embers
					["sourceQuests"] = {
						74562,	-- Break Them Out
						74563,	-- Worst of the Worst
					},
					["provider"] = { "n", 202995 },	-- Ebyssian
					["coord"] = { 53.4, 30.2, ZARALEK_CAVERN },
				}),
				q(72923, {	-- A Whisper to Sabellian
					["sourceQuests"] = { 72922 },	-- Fading Embers
					["provider"] = { "n", 199965 },	-- Ebyssian
					["coord"] = { 46.0, 26.6, ZARALEK_CAVERN },
				}),
				q(72924, {	-- Appealing to the Black Prince
					["sourceQuests"] = { 72923 },	-- A Whisper to Sabellian
					["provider"] = { "n", 199965 },	-- Ebyssian
					["coord"] = { 46.8, 29.7, ZARALEK_CAVERN },
				}),
				q(72925, {	-- With Our Powers Combined
					["sourceQuests"] = { 72924 },	-- Appealing to the Black Prince
					["provider"] = { "n", 199965 },	-- Ebyssian
					["coord"] = { 51.5, 25.8, ZARALEK_CAVERN },
					["groups"] = {
						iensemble(204447),	-- Ensemble: Black Dragonflight's Vestments
					},
				}),
				q(72931, {	-- Forward Camp
					["sourceQuests"] = { 72925 },	-- With Our Powers Combined
					["provider"] = { "n", 199965 },	-- Ebyssian
					["coord"] = { 47.2, 27.9, ZARALEK_CAVERN },
				}),
				q(72926, {	-- In The Right Hands
					["sourceQuests"] = { 72925 },	-- With Our Powers Combined
					["provider"] = { "n", 200101 },	-- Wrathion
					["coord"] = { 47.2, 27.8, ZARALEK_CAVERN },
					["groups"] = {
						i(204877),	-- 'The Resting Blade' (QI!)
						i(204184),	-- Ebon Eviscerator (QI!)
					},
				}),
				q(72928, {	-- Wipe Them Out
					["sourceQuests"] = { 72925 },	-- With Our Powers Combined
					["provider"] = { "n", 199973 },	-- Sabellian
					["coord"] = { 47.1, 27.1, ZARALEK_CAVERN },
					["_drop"] = { "g" },	-- Drop Crest
				}),
				q(72927, {	-- Finding Sarkareth
					["sourceQuests"] = {
						72931,	-- Forward Camp
						72926,	-- In The Right Hands
						72928,	-- Wipe Them Out
					},
					["provider"] = { "n", 199965 },	-- Ebyssian
					["coord"] = { 44.0, 15.6, ZARALEK_CAVERN },
				}),
				q(72929, {	-- Cracking His Shell
					["sourceQuests"] = { 72927 },	-- Finding Sarkareth
					["provider"] = { "n", 199964 },	-- Scalecommander Emberthal
					["coord"] = { 47.4, 15.6, ZARALEK_CAVERN },
				}),
				q(72930, {	-- Stopping Sarkareth
					["sourceQuests"] = { 72929 },	-- Cracking His Shell
					["provider"] = { "n", 199964 },	-- Scalecommander Emberthal
					["coord"] = { 47.4, 15.6, ZARALEK_CAVERN },
					["_drop"] = { "g" },	-- Drop Crest
					["groups"] = {
						i(205998),	-- Sign of Respect
					},
				}),
				------ Chapter 6 ------
				q(75694, {	-- Aberrus, the Shadowed Crucible: Sarkareth
					["sourceQuests"] = { 72930 },	-- Stopping Sarkareth
					["provider"] = { "n", 199965 },	-- Ebyssian
					["coord"] = { 47.9, 15.0, ZARALEK_CAVERN },
					["maps"] = { 2166, 2167, 2168, 2169, 2170 },	-- Aberrus, the Shadowed Crucible
					["groups"] = {
						i(204682),	-- Enchanted Wyrm's Shadowflame Crest
					},
				}),
				q(74521, {	-- A Flame, Extinguished
					["sourceQuests"] = { 72930 },	-- Stopping Sarkareth
					["provider"] = { "n", 201727 },	-- Ebyssian
					["coord"] = { 48.0, 11.8, ZARALEK_CAVERN },
					-- also requires kill of Sarkareth
				}),
				q(74522, {	-- Remnants
					["sourceQuests"] = { 74521 },	-- A Flame, Extinguished
					["provider"] = { "n", 202809 },	-- Wrathion
					["maps"] = { 2171, 2172 },	-- Aberrus, the Shadowed Crucible
					["groups"] = {
						i(204271),	-- Blacktalon Napalm
					},
				}),
				q(74523, {	-- A Traitor's Due
					["sourceQuests"] = { 74521 },	-- A Flame, Extinguished
					["provider"] = { "n", 202810 },	-- Seballian
					["maps"] = { 2171, 2172 },	-- Aberrus, the Shadowed Crucible
				}),
				q(74525, {	-- Honorbound
					["sourceQuests"] = { 74521 },	-- A Flame, Extinguished
					["provider"] = { "n", 202858 },	-- Drained Djaradin
					["coord"] = { 43.3, 51.8, 2171 },	-- Aberrus, the Shadowed Crucible
				}),
				q(75018, {	-- Into the Dark
					["sourceQuests"] = {
						74523,	-- A Traitor's Due
						74525,	-- Honorbound
						74522,	-- Remnants
					},
					["provider"] = { "n", 202809 },	-- Wrathion
					["maps"] = { 2171, 2172, 2173 },	-- Aberrus, the Shadowed Crucible
				}),
				q(75028, {	-- All the Broken Pieces
					["sourceQuests"] = { 75018 },	-- Into the Dark
					["provider"] = { "n", 202928 },	-- Ebyssian
					["coord"] = { 49.9, 70.9, 2174 },	-- Aberrus, the Shadowed Crucible
				}),
				q(75029, {	-- A Legacy, Reforged
					["sourceQuests"] = { 75028 },	-- All the Broken Pieces
					["provider"] = { "n", 202928 },	-- Ebyssian
					["coord"] = { 49.9, 70.9, 2174 },	-- Aberrus, the Shadowed Crucible
					["groups"] = {
						i(206006),	-- Earth-Warder's Thanks
					},
				}),
				q(75417, {	-- Symbol of Hope
					["sourceQuests"] = { 75029 },	-- A Legacy, Reforged
					["provider"] = { "n", 187678 },	-- Alexstrasza the Life-Binder
					["coord"] = { 58.1, 34.9, VALDRAKKEN },
				}),
			}),
			------ New System ------
			q(76101, {	-- Tougher Down Under
				["sourceQuests"] = {
					72973,	-- Smells Like Loamm
					DF_ACCOUNT_ZC_UNLOCK_QUEST,
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 204522 },	-- Aurantia
				["coord"] = { 56.9, 55.6, ZARALEK_CAVERN },
			}),
			q(72658, {	-- Flightstones
				["sourceQuests"] = { 76101 },	-- Tougher Down Under
				["provider"] = { "n", 203404 },	-- Vaskarn
				["coord"] = { 56.2, 56.2, ZARALEK_CAVERN },
				["timeline"] = { REMOVED_10_2_0 },
				["groups"] = {
					i(202171),	-- Obsidian Flightstone
				},
			}),
			q(75506, {	-- Shadowflame Crests
				["sourceQuests"] = { 72658 },	-- Flightstones
				["provider"] = { "n", 203404 },	-- Vaskarn
				["coord"] = { 56.2, 56.2, ZARALEK_CAVERN },
				["timeline"] = { REMOVED_10_2_0 },
				["groups"] = {
					i(204728),	-- Friendship Censer
					i(202171),	-- Obsidian Flightstone
				},
			}),
			q(75507, {	-- Catching Up with Friends
				["sourceQuests"] = { 75506 },	-- Shadowflame Crests
				["provider"] = { "n", 203404 },	-- Vaskarn
				["coord"] = { 56.2, 56.2, ZARALEK_CAVERN },
				["timeline"] = { REMOVED_10_2_0 },
				["_drop"] = { "g" },	-- Drop Crest
				["groups"] = {
					i(202171),	-- Obsidian Flightstone
				},
			}),
			q(75641, {	-- Power Unified
				["sourceQuests"] = {
					75644,	-- Six Hundred Feet Under
					DF_ACCOUNT_ZC_UNLOCK_QUEST,
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 204509 },	-- Examiner Tae'shara Bloodwatcher
				["coord"] = { 56.8, 54.8, ZARALEK_CAVERN },
				["groups"] = {
					i(204717),	-- Splintered Spark of Shadowflame
				},
			}),
			------ Incense Storyline ------
			q(72878, {	-- Slime Time Live
				["sourceQuests"] = { 75644 },	-- Six Hundred Feet Under
				["provider"] = { "n", 200054 },	-- Elder Honeypelt
				["coord"] = { 54.7, 54.7, ZARALEK_CAVERN },
				["groups"] = {
					i(205980),	-- Snail Lasso
					i(203442),	-- Snail Slime (QI!)
				},
			}),
			q(72879, {	-- Smells like Kith Spirit
				["sourceQuests"] = { 72878 },	-- Slime Time Live
				["provider"] = { "n", 200055 },	-- Citros
				["coord"] = { 57.3, 55.9, ZARALEK_CAVERN },
			}),
			q(72880, {	-- Incense Gratification
				["sourceQuests"] = { 72879 },	-- Smells like Kith Spirit
				["provider"] = { "n", 200055 },	-- Citros
				["coord"] = { 56.8, 54.1, ZARALEK_CAVERN },
				["groups"] = {
					i(205249),	-- Pugent Niffen Incense
				},
			}),
			------ Imposter Storyline ------
			q(72881, {	-- A Swallow's Tale
				["sourceQuests"] = { 75644 },	-- Six Hundred Feet Under
				["provider"] = { "n", 200053 },	-- Effervesta
				["coord"] = { 54.6, 54.8, ZARALEK_CAVERN },
			}),
			q(72883, {	-- A Bitter Pill to Swallow
				["sourceQuests"] = { 72881 },	-- A Swallow's Tale
				["provider"] = { "n", 200238 },	-- Dead Cave Swallow
				["coord"] = { 57.9, 54.8, ZARALEK_CAVERN },
			}),
			q(72882, {	-- Flown the Coop
				["sourceQuests"] = { 72881 },	-- A Swallow's Tale
				["provider"] = { "n", 200056 },	-- Cinnam
				["coord"] = { 55.7, 60.2, ZARALEK_CAVERN },
			}),
			q(72884, {	-- Expedition Effervesta
				["sourceQuests"] = {
					72883,	-- A Bitter Pill to Swallow
					72882,	-- Flown the Coop
				},
				["provider"] = { "n", 200052 },	-- Aurantia
				["coord"] = { 54.7, 54.7, ZARALEK_CAVERN },
				["groups"] = {
					i(204998),	-- Effervesta's Clue 3
				},
			}),
			q(72886, {	-- Suss Out the Imposter
				["sourceQuests"] = { 72884 },	-- Expedition Effervesta
				["provider"] = { "n", 200052 },	-- Aurantia
				["coord"] = { 58.1, 54.2, ZARALEK_CAVERN },
				["groups"] = {
					i(205250),	-- Gift of the High Redolence
				},
			}),
			------ Mouse Storyline ------
			q(74857, {	-- Mouse Detective
				["sourceQuests"] = {
					75644,	-- Six Hundred Feet Under
					DF_ACCOUNT_ZC_UNLOCK_QUEST,
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 202597 },	-- Yarren
				["coord"] = { 51.1, 74.1, ZARALEK_CAVERN },
			}),
			q(74858, {	-- Argulculture
				["sourceQuests"] = { 74857 },	-- Mouse Detective
				["provider"] = { "n", 202600 },	-- Agrul
				["coord"] = { 50.4, 76.4, ZARALEK_CAVERN },
				["groups"] = {
					i(204377),	-- Glow Spores
				},
			}),
			q(74859, {	-- Sporemoth Exterminator
				["sourceQuests"] = { 74857 },	-- Mouse Detective
				["qgs"] = {
					202600,	-- Agrul
					204573,	-- Agrul
				},
				["coord"] = { 50.4, 76.4, ZARALEK_CAVERN },
			}),
			q(74860, {	-- A Friendly Introduction
				["sourceQuests"] = {
					74858,	-- Argulculture
					74859,	-- Sporemoth Exterminator
				},
				["provider"] = { "n", 202600 },	-- Agrul
				["coord"] = { 50.4, 76.4, ZARALEK_CAVERN },
			}),
			q(74861, {	-- An Unfriendly Confrontation
				["sourceQuests"] = { 74860 },	-- A Friendly Introduction
				["provider"] = { "n", 202597 },	-- Yarren
				["coord"] = { 51.0, 74.1, ZARALEK_CAVERN },
			}),
			q(75462, {	-- Mouse Rescuers
				["sourceQuests"] = { 74861 },	-- An Unfriendly Confrontation
				["provider"] = { "n", 202600 },	-- Agrul
				["coord"] = { 46.9, 79.6, ZARALEK_CAVERN },
				["groups"] = {
					i(205253),	-- Farmhand's Abudant Harvest
				},
			}),
			------ Glimmerogg Storyline ------
			q(73707, {	-- TICKET: Glimmerogg Games
				["sourceQuests"] = {
					72979,	-- The Earth Gives Way
					DF_ACCOUNT_ZC_UNLOCK_QUEST,
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "o", 387520 },	-- TICKET: Glimmerogg Games
				["coord"] = { 44.2, 80.0, ZARALEK_CAVERN },
				["isBreadcrumb"] = true,
			}),
			q(73709, {	-- Favor on the Side
				["sourceQuests"] = { 73707 },	-- TICKET: Glimmerogg Games
				["provider"] = { "n", 201098 },	-- Brogg the Beast
				["coord"] = { 43.7, 82.9, ZARALEK_CAVERN },
			}),
			q(73708, {	-- Pay to Play
				["sourceQuests"] = { 73707 },	-- TICKET: Glimmerogg Games
				["provider"] = { "n", 201098 },	-- Brogg the Beast
				["coord"] = { 43.7, 82.9, ZARALEK_CAVERN },
				["groups"] = {
					i(204803),	-- Echoed Lurker Flesh (QI!)
					i(205169),	-- Glimmer Mushroom (QI!)
				},
			}),
			q(73710, {	-- Rock By Rock
				["sourceQuests"] = {
					73709,	-- Favor on the Side
					73708,	-- Pay to Play
				},
				["provider"] = { "n", 201100 },	-- Storul Heavystone
				["coord"] = { 44.9, 83.2, ZARALEK_CAVERN },
			}),
			q(73711, {	-- Marked Champion
				["sourceQuests"] = { 73710 },	-- Rock By Rock
				["provider"] = { "n", 201100 },	-- Storul Heavystone
				["coord"] = { 44.9, 83.2, ZARALEK_CAVERN },
				["groups"] = {
					i(205251),	-- Champion's Rock Bar
				},
			}),
			------ Hraxian Storyline ------
			q(73037, {	-- Healing Crystals
				["sourceQuests"] = { 75145 },	-- In the Wake of the Ashes
				["provider"] = { "n", 200291 },	-- Rupert, the Gentleman Elemental
				["coord"] = { 40.1, 68.4, ZARALEK_CAVERN },
				["groups"] = {
					i(203012),	-- Viridian Heartcrystal (QI!)
				},
			}),
			q(73036, {	-- Medicinal Fungi
				["sourceQuests"] = { 75145 },	-- In the Wake of the Ashes
				["provider"] = { "n", 200298 },	-- Veritistrasz
				["coord"] = { 40.2, 68.3, ZARALEK_CAVERN },
				["groups"] = {
					i(202873),	-- Drooping Mushroom Cutting (QI!)
				},
			}),
			q(75440, {	-- Satiating Sharpbeak
				["sourceQuests"] = { 75145 },	-- In the Wake of the Ashes
				["provider"] = { "n", 200953 },	-- Earthmender Narvra
				["coord"] = { 40.1, 68.4, ZARALEK_CAVERN },
				["groups"] = {
					i(205217),	-- Sharpbeak's Feed (QI!)
				},
			}),
			q(73046, {	-- Cavernous Capers
				["sourceQuests"] = {
					73037,	-- Healing Crystals
					73036,	-- Medicinal Fungi
					75440,	-- Satiating Sharpbeak
				},
				["provider"] = { "n", 200291 },	-- Rupert, the Gentleman Elemental
				["coord"] = { 40.1, 68.4, ZARALEK_CAVERN },
			}),
			q(73038, {	-- A Room Without A View
				["sourceQuests"] = { 73046 },	-- Cavernous Capers
				["provider"] = { "n", 200290 },	-- Voraxian
				["coord"] = { 53.6, 79.5, ZARALEK_CAVERN },
				["groups"] = {
					i(203394),	-- Elementally Charged Orb (QI!)
					i(203395),	-- Research Journal (QI!)
					i(203396),	-- Displayed Armor Piece (QI!)
				},
			}),
			q(73040, {	-- Bringing Disorder to Order
				["sourceQuests"] = { 73046 },	-- Cavernous Capers
				["provider"] = { "n", 203176 },	-- Rupert, the Gentleman Elemental
				["coord"] = { 53.6, 79.3, ZARALEK_CAVERN },
			}),
			q(73047, {	-- Terrestrial Tunneling
				["sourceQuests"] = {
					73038,	-- A Room Without A View
					73040,	-- Bringing Disorder to Order
				},
				["provider"] = { "n", 203176 },	-- Rupert, the Gentleman Elemental
				["coord"] = { 53.6, 79.3, ZARALEK_CAVERN },
			}),
			q(73041, {	-- Respite
				["sourceQuests"] = { 73047 },	-- Terrestrial Tunneling
				["provider"] = { "n", 200953 },	-- Earthmender Narvra
				["coord"] = { 40.1, 68.3, ZARALEK_CAVERN },
				["groups"] = {
					i(197855),	-- Explore's Mix
				},
			}),
			q(73042, {	-- A Tower Yonder
				["sourceQuests"] = { 73041 },	-- Respite
				["provider"] = { "n", 200953 },	-- Earthmender Narvra
				["coord"] = { 40.1, 68.3, ZARALEK_CAVERN },
				["groups"] = {
					i(204334),	-- Waste Disposal Notes
					i(204345),	-- Note to Disposal Site
				},
			}),
			q(73043, {	-- A Ghastly Legacy
				["sourceQuests"] = { 73042 },	-- A Tower Yonder
				["provider"] = { "n", 200298 },	-- Veritistrasz
				["coord"] = { 48.9, 45.5, ZARALEK_CAVERN },
			}),
			q(73044, {	-- Cataloging Horror
				["sourceQuests"] = { 73042 },	-- A Tower Yonder
				["provider"] = { "n", 200290 },	-- Voraxian
				["coord"] = { 48.9, 45.4, ZARALEK_CAVERN },
				["groups"] = {
					i(204698),	-- Cataloging Camera
				},
			}),
			q(73039, {	-- Restless Death
				["sourceQuests"] = { 73042 },	-- A Tower Yonder
				["provider"] = { "n", 200953 },	-- Earthmender Narvra
				["coord"] = { 48.9, 45.5, ZARALEK_CAVERN },
			}),
			q(73045, {	-- Stain Removal
				["sourceQuests"] = {
					73043,	-- A Ghastly Legacy
					73044,	-- Cataloging Horror
					73039,	-- Restless Death
				},
				["provider"] = { "n", 200953 },	-- Earthmender Narvra
				["coord"] = { 48.3, 32.8, ZARALEK_CAVERN },
				["groups"] = {
					i(205254),	-- Honoary Explorer's Compass
				},
			}),
			q(74495, {	-- The Tale of Hraxian
				["description"] = "Available on next day after Dragonscale Camp quest chain finished.",
				["sourceQuests"] = {
					73045,	-- Stain Removal
					74996,	-- A Difficult Legacy
				},
				["provider"] = { "n", 200298 },	-- Veritistrasz
				["coord"] = { 40.2, 68.4, ZARALEK_CAVERN },
			}),
			q(74994, {	-- Hraxian's Unbreakable Will
				["sourceQuests"] = { 74495 },	-- The Tale of Hraxian
				["provider"] = { "n", 200298 },	-- Veritistrasz
				["coord"] = { 40.2, 68.4, ZARALEK_CAVERN },
				["groups"] = {
					i(204220),	-- Hraxian's Unbreakable Will (TOY!)
				},
			}),
			------ Turncloak Storyline [Evoker Only!] ------
			q(73077, {	-- This Might Sting
				["sourceQuests"] = { 75644 },	-- Six Hundred Feet Under
				["provider"] = { "n", 200550 },	-- Patroclosa
				["coord"] = { 59.4, 63.8, ZARALEK_CAVERN },
				["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["classes"] = { EVOKER },
				["groups"] = {
					i(204088),	-- Quartzite Spore Bile (QI!)
					i(203393),	-- Spongy Loamshroom (QI!)
				},
			}),
			q(73081, {	-- Stress Fractures
				["sourceQuests"] = { 75145 },	-- In the Wake of the Ashes
				["provider"] = { "n", 203233 },	-- Marithos
				["coord"] = { 56.4, 57.0, ZARALEK_CAVERN },
				["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["classes"] = { EVOKER },
			}),
			q(73085, {	-- Cold Feet
				["sourceQuests"] = { 73081 },	-- Stress Fractures
				["provider"] = { "n", 200876 },	-- Captured Messenger <The Sundered Flame>
				["coord"] = { 55.6, 57.0, ZARALEK_CAVERN },
				["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["classes"] = { EVOKER },
				["groups"] = {
					i(204436),	-- Chipped Horn Signet (QI!)
				},
			}),
			------ Miscellaneous ------
			q(75232, {	-- Fallen Effects
				--["sourceQuests"] = {  },
				["provider"] = { "i", 204642 },	-- Sheridon Hastle's Effects
				["coord"] = { 42.9, 60.3, ZARALEK_CAVERN },
			}),
			q(75233, {	-- Flesh to Bone
				["sourceQuests"] = { 75644 },	-- Six Hundred Feet Under
				["provider"] = { "n", 203378 },	-- Gorgul
				["coord"] = { 43.2, 84.1, ZARALEK_CAVERN },
				["groups"] = {
					i(204714),	-- Satchel of Healing Spores
					i(204728),	-- Friendship Censer
					i(204797),	-- Djaradin Boasting Tablets
					i(204805),	-- Suspended Sulfuric Droplet
					i(204810),	-- Drogbar Rocks
					i(204811),	-- Drogbar Stones
					i(205031),	-- Broodmother Venom (QI!)
					i(205030),	-- Crawler Venom (QI!)
				},
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
	m(DRAGON_ISLES, {
		m(ZARALEK_CAVERN, {
			n(QUESTS, {
				-- Various
				q(76118),	-- Accept Untranslated Obsidian Tome from Wrathion (spellID 411772)
				q(76363),	-- Break out of the crystal prison in the Deepflayer Nest during 'It Was Not Enough' (questID 72873) (spellID 411853)
				q(75658, {["name"] = "Zaralek Cavern Unlocked [Account]"}),	-- Zaralek Cavern World Quests (spellID 408876)
				q(75511),	-- Tracking Quest (that's the name)
				q(75764),	-- Current Patch - Login Video - Watched (spellID 409608)
				q(76013),	-- Complete Ch 5 and Delay for Ch 6 after 'Stopping Sakareth' (questID 72930) (spellID 411104)

				-- Talk to npc during Respite (73041)
				q(75425),	-- Tellywin Sharpfizzle (spellID 407079)
				q(75424),	-- Chef Butterfingers (spellID 407078)
				q(75423),	-- Earthmender Narvra (spellID 407083)
				q(75422),	-- Rupert (spellID 407084)
				q(75421),	-- Veritistrasz (spellID 407076)
				q(75420),	-- Voraxian (spellID 407075)

				-- RP after Stain Removal (73045)
				q(75219),	-- Voraxian (spellID 413020)

				-- Talk with Veritistrasz during (74495)
				q(74773),	-- 1 (optional) dialog
				q(74776),	-- after he finished optional gialog
				q(74777),	-- 1 (quest) dialog
				q(74778),	-- 2 (optional) dialog
				q(74779),	-- 2 (quest) dialog
				q(74789),	-- 3 (optional) dialog
				q(74780),	-- 3 (quest) dialog
				q(74781),	-- 4 (quest) dialog
				q(74782),	-- 5 (quest) dialog
				q(74788),	-- 6 (quest) dialog

				-- Ponzo hat price
				q(75869),	-- Become available with cost at 9999 boulders
				q(75836),	-- I can't afford that - 4999
				q(75870),	-- Still too much! - 999
				q(75871),	-- How about 50 boulders - 249

				-- Brullo the Strong Pet?
				q(75556),	-- Triggered after looting Brul i(205114) from the chest after beating Brullo the Strong
			}),
		}),
	}),
})));
