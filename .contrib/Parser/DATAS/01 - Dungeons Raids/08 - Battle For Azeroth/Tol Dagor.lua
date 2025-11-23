-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	inst(1002, {	-- Tol Dagor
		["coord"] = { 38.8, 70.1, 1169 },
		["maps"] = {
			974,	-- Tol Dagor
			975,	-- The Drain
			976,	-- The Brig
			977,	-- Detention Block
			978,	-- Officer Quarters
			979,	-- Overseer's Redoubt
			980,	-- Oveseer's Summit
		},
		["lvl"] = 110,
		["groups"] = {
			n(WORLD_QUESTS, {
				q(51287, {	-- Tol Dagor: Sealed Supplies
					["isWorldQuest"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(159831),	-- Sealed Kul Tiran Crate (QI!)
					},
				}),
				q(51297, {	-- Tol Dagor: Shorefront Property
					["isWorldQuest"] = true,
					["lvl"] = 120,
				}),
				q(51296, {	-- Tol Dagor: The Overseer's Pride
					["isWorldQuest"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(159834),	-- The Pride of Kul Tiras (QI!)
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(2097, {	-- The Sand Queen
					["crs"] = { 127479 },	-- The Sand Queen
					["groups"] = {
						i(159656),	-- Halberd of the Unwary Guard
						i(160110),	-- Warglaive of the Sand Queen
						i(159668),	-- Rattling Jar of Eyes
						i(159332),	-- Wristguards of the Sandswimmer
						i(160215),	-- Sewer Grate Girdle
						i(159392),	-- Gaoler's Chainmail Gaiters
						i(159460),	-- Overseer's Lost Seal
					},
				}),
				e(2098, {	-- Jes Howlis
					["crs"] = { 127484 },	-- Jes Howlis
					["groups"] = {
						i(168145),	-- Sly Rogue's Decanter (for Silas' Sphere of Transmutation)
						i(159131),	-- Howlis' Crystal Shiv
						i(159666),	-- Improvised Riot Shield
						i(159293),	-- Turncoat's Cape
						i(159266),	-- Claw-Slit Brawler's Handwraps
						i(159306),	-- Singe-Blotched Britches
						i(159363),	-- Gnawed Iron Fetters
						i(159627),	-- Jes' Howler
					},
				}),
				e(2099, {	-- Knight Captain Valyri
					["crs"] = { 127490 },	-- Knight Captain Valyri
					["groups"] = {
						i(159441),	-- Valyri's Fire-Proof Bracers
						i(159389),	-- Flint-Linked Wristguards
						i(159390),	-- Sure-Grip Munition Handlers
						i(159274),	-- Knight Captain's Waistcord
						i(159333),	-- Cincture of the Azerite Arsenal
						i(159277),	-- Wild Pyromancer's Trousers
						i(159444),	-- Gunpowder-Scoured Sabatons
						i(159343),	-- Spark Dampening Footpads
						i(159615),	-- Ignition Mage's Fuse
					},
				}),
				e(2096, {	-- Overseer Korgus
					["crs"] = { 127503 },	-- Overseer Korgus
					["groups"] = {
						ach(12840),	-- Tol Dagor
						i(159129),	-- Flamecaster Botefeux
						i(159658),	-- Cudgel of Correctional Oversight
						i(159657),	-- Korgus' Blackpowder Rifle
						i(159334),	-- Flashpowder Hood
						i(159391),	-- Hood of the Dark Reaper
						i(159414),	-- Overseer's Riot Helmet
						i(159393),	-- Cannoneer's Mantle
						i(159331),	-- Pistoleer's Spaulders
						i(159440),	-- Ashvane Warden's Cuirass
						i(159268),	-- Inmate's Straight Robe
						i(159628),	-- Kul Tiran Cannonball Runner
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["lvl"] = 120,
				["groups"] = {
					e(2097, {	-- The Sand Queen
						["crs"] = { 127479 },	-- The Sand Queen
						["groups"] = {
							i(159656),	-- Halberd of the Unwary Guard
							i(160110),	-- Warglaive of the Sand Queen
							i(159668),	-- Rattling Jar of Eyes
							i(159332),	-- Wristguards of the Sandswimmer
							i(160215),	-- Sewer Grate Girdle
							i(159392),	-- Gaoler's Chainmail Gaiters
							i(159460),	-- Overseer's Lost Seal
						},
					}),
					e(2098, {	-- Jes Howlis
						["crs"] = { 127484 },	-- Jes Howlis
						["groups"] = {
							i(159131),	-- Howlis' Crystal Shiv
							i(159666),	-- Improvised Riot Shield
							i(159293),	-- Turncoat's Cape
							i(159266),	-- Claw-Slit Brawler's Handwraps
							i(159306),	-- Singe-Blotched Britches
							i(159363),	-- Gnawed Iron Fetters
							i(159627),	-- Jes' Howler
						},
					}),
					e(2099, {	-- Knight Captain Valyri
						["crs"] = { 127490 },	-- Knight Captain Valyri
						["groups"] = {
							i(159441),	-- Valyri's Fire-Proof Bracers
							i(159389),	-- Flint-Linked Wristguards
							i(159390),	-- Sure-Grip Munition Handlers
							i(159274),	-- Knight Captain's Waistcord
							i(159333),	-- Cincture of the Azerite Arsenal
							i(159277),	-- Wild Pyromancer's Trousers
							i(159444),	-- Gunpowder-Scoured Sabatons
							i(159343),	-- Spark Dampening Footpads
							i(159615),	-- Ignition Mage's Fuse
						},
					}),
					e(2096, {	-- Overseer Korgus
						["crs"] = { 127503 },	-- Overseer Korgus
						["groups"] = {
							ach(12841),	-- Heroic: Tol Dagor
							i(159129),	-- Flamecaster Botefeux
							i(159658),	-- Cudgel of Correctional Oversight
							i(159657),	-- Korgus' Blackpowder Rifle
							i(159334),	-- Flashpowder Hood
							i(159391),	-- Hood of the Dark Reaper
							i(159414),	-- Overseer's Riot Helmet
							i(159393),	-- Cannoneer's Mantle
							i(159331),	-- Pistoleer's Spaulders
							i(159440),	-- Ashvane Warden's Cuirass
							i(159268),	-- Inmate's Straight Robe
							i(159628),	-- Kul Tiran Cannonball Runner
						},
					}),
				},
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				["difficulties"] = { DIFFICULTY.DUNGEON.KEYSTONE, DIFFICULTY.DUNGEON.MYTHIC },
				["lvl"] = 120,
				["groups"] = {
					n(135451, {	-- Filthy Bucket
						i(158698),	-- Discarded Cell Key
					}),
					n(135448, {	-- Gol'than the Malodorous
						["provider"] = { "i", 158698 },	-- Discarded Cell Key
						["groups"] = {
							i(160704),	-- Filthy Slime (PET!)
						},
					}),
					e(2097, {	-- The Sand Queen
						["crs"] = { 127479 },	-- The Sand Queen
						["groups"] = {
							i(159656),	-- Halberd of the Unwary Guard
							i(160110),	-- Warglaive of the Sand Queen
							i(159668),	-- Rattling Jar of Eyes
							i(159332),	-- Wristguards of the Sandswimmer
							i(160215),	-- Sewer Grate Girdle
							i(159392),	-- Gaoler's Chainmail Gaiters
							i(159460),	-- Overseer's Lost Seal
						},
					}),
					e(2098, {	-- Jes Howlis
						["crs"] = { 127484 },	-- Jes Howlis
						["groups"] = {
							i(159131),	-- Howlis' Crystal Shiv
							i(159666),	-- Improvised Riot Shield
							i(159293),	-- Turncoat's Cape
							i(159266),	-- Claw-Slit Brawler's Handwraps
							i(159306),	-- Singe-Blotched Britches
							i(159363),	-- Gnawed Iron Fetters
							i(159627),	-- Jes' Howler
						},
					}),
					e(2099, {	-- Knight Captain Valyri
						["crs"] = { 127490 },	-- Knight Captain Valyri
						["groups"] = {
							ach(12457),	-- Remix to Ignition
							i(159441),	-- Valyri's Fire-Proof Bracers
							i(159389),	-- Flint-Linked Wristguards
							i(159390),	-- Sure-Grip Munition Handlers
							i(159274),	-- Knight Captain's Waistcord
							i(159333),	-- Cincture of the Azerite Arsenal
							i(159277),	-- Wild Pyromancer's Trousers
							i(159444),	-- Gunpowder-Scoured Sabatons
							i(159343),	-- Spark Dampening Footpads
							i(159615),	-- Ignition Mage's Fuse
						},
					}),
					e(2096, {	-- Overseer Korgus
						["crs"] = { 127503 },	-- Overseer Korgus
						["groups"] = {
							ach(12842),	-- Mythic: Tol Dagor
							ach(13005),	-- Mythic: Tol Dagor Guild Run
							ach(12462),	-- Shot Through the Heart
							i(159129),	-- Flamecaster Botefeux
							i(159658),	-- Cudgel of Correctional Oversight
							i(159657),	-- Korgus' Blackpowder Rifle
							i(159334),	-- Flashpowder Hood
							i(159391),	-- Hood of the Dark Reaper
							i(159414),	-- Overseer's Riot Helmet
							i(159393),	-- Cannoneer's Mantle
							i(159331),	-- Pistoleer's Spaulders
							i(159440),	-- Ashvane Warden's Cuirass
							i(159268),	-- Inmate's Straight Robe
							i(159628),	-- Kul Tiran Cannonball Runner
						},
					}),
				},
			}),
		},
	}),
})));
