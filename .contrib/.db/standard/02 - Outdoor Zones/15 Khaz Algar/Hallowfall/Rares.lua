---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(HALLOWFALL, {
		n(RARES, sharedData({
			["isDaily"] = true,
		}, {
			n(207802, {	-- Beledar's Spawn
				["description"] = "Spawns immediately somewhere in the zone the moment Beledar shifts into its Void state.",
				["questID"] = 81763,
				["crs"] = {
					225404,	-- Beledar's Spawn [Vignette]
				},
				["coords"] = {
					{ 54.7, 36.9, HALLOWFALL },
					{ 48.9, 32.0, HALLOWFALL },
					{ 58.0, 49.2, HALLOWFALL },
					{ 58.6, 28.7, HALLOWFALL },
				},
				["groups"] = {
					i(223006),	-- Signet of Dark Horizons (dupe from Coalesced Monstrosity - elementals rares share?)
					i(223315),	-- Beledar's Spawn (MOUNT!)
					hqt_bonusRenown_weekly(85164, FACTION_HALLOWFALL_ARATHI),	-- Bonus Rep: Beledar's Spawn
				},
			}),
			n(221753, {	-- Deathtide <The Viscous Swell>
				["coord"] = { 44.8, 42.8, HALLOWFALL },
				["provider"] = { "i", 220123 },	-- 1x Ominous Offering
				["questID"] = 81880,
				["groups"] = {
					i(225997),	-- Earthen Adventurer's Spaulders
					i(223921),	-- Ever-Oozing Signet
					i(223920),	-- Slime Deflecting Stopper
					hqt_bonusRenown_weekly(85165, FACTION_HALLOWFALL_ARATHI),	-- Bonus Rep: Deathtide
				},
			}),
			n(221668, {	-- Horror of the Shallows
				["description"] = "Swimming along the western coast of Hallowfall between the coordinates.",
				["coords"] = {
					{ 20.6, 51.6, HALLOWFALL },
					{ 31.2, 41.4, HALLOWFALL },
					{ 32.6, 28.8, HALLOWFALL },
					{ 42.8, 16.4, HALLOWFALL },
					{ 46.6, 7.2, HALLOWFALL },
				},
				["questID"] = 81836,
				["groups"] = {
					i(221248),	-- Deep Terror Carver
					i(221211),	-- Grasp of the Shallows
					i(221255),	-- Sharpened Scalepiercer
					hqt_bonusRenown_weekly(84065, FACTION_HALLOWFALL_ARATHI),	-- Bonus Rep: Horror of the Shallows
				},
			}),
			n(221534, {	-- Lytfang the Lost
				["coord"] = { 23.0, 59.2, HALLOWFALL },
				["questID"] = 81756,
				["groups"] = {
					i(221207),	-- Den Mother's Chestpiece
					i(221246),	-- Fierce Beast Staff
					hqt_bonusRenown_weekly(84063, FACTION_HALLOWFALL_ARATHI),	-- Bonus Rep: Lytfang the Lost
				},
			}),
			n(221786, {	-- Pride of Beledar
				["coord"] = { 57.3, 48.6, HALLOWFALL },
				["questID"] = 81882,
				["groups"] = {
					i(221247),	-- Cavernous Critter Shooter (dupe, from Plaguehart - horse-ish type rares?)
					i(221225),	-- Benevolent Hornstag Cinch
					i(221251),	-- Bestial Underground Cleaver
					i(221246),	-- Fierce Beast Staff
					i(223007),	-- Lance of Beledar's Pride
					hqt_bonusRenown_weekly(84068, FACTION_HALLOWFALL_ARATHI),	-- Bonus Rep: Pride of Beledar
				},
			}),
			n(221708, {	-- Sir Alastair Purefire
				["coord"] = { 35.9, 35.5, HALLOWFALL },
				["questID"] = 81853,
				["groups"] = {
					i(221241),	-- Priestly Agent's Knife
					i(221245),	-- Righteous Path Treads
					hqt_bonusRenown_weekly(84067, FACTION_HALLOWFALL_ARATHI),	-- Bonus Rep: Sir Alastair Purefire
				},
			}),
			n(215805, {	-- Sloshmuck
				["coord"] = { 73.4, 52.4, HALLOWFALL },
				["questID"] = 79271,
				["groups"] = {
					i(221223),	-- Bog Beast Mantle
					i(221250),	-- Creeping Lasher Machete
					i(221253),	-- Cultivator's Plant Puncher
					i(221264),	-- Fungarian Mystic's Cluster
					i(221255),	-- Sharpened Scalepiercer
					hqt_bonusRenown_weekly(84062, FACTION_HALLOWFALL_ARATHI),	-- Bonus Rep: Sloshmuck
				},
			}),
			n(221690, {	-- Strength of Beledar
				["coord"] = { 43.6, 29.9, HALLOWFALL },
				["questID"] = 81849,
				["groups"] = {
					i(221251),	-- Bestial Underground Cleaver
					i(221216),	-- Bruin Strength Legplates
					i(221246),	-- Fierce Beast Staff
					i(221508),	-- Pelt of Beledar's Strength
					hqt_bonusRenown_weekly(84066, FACTION_HALLOWFALL_ARATHI),	-- Bonus Rep: Strength of Beledar
				},
			}),
			n(221648, {	-- The Perchfather
				["coord"] = { 44.0, 16.4, HALLOWFALL },
				["questID"] = 81791,
				["groups"] = {
					i(221246),	-- Fierce Beast Staff
					i(221229),	-- Perchfather's Cuffs
					hqt_bonusRenown_weekly(84064, FACTION_HALLOWFALL_ARATHI),	-- Bonus Rep: The Perchfather
				},
			}),
			n(218444, {	-- The Taskmaker
				["coord"] = { 56.4, 69.0, HALLOWFALL },
				["questID"] = 80009,
				["groups"] = {
					i(221240),	-- Nerubian Stagshell Gouger
					i(221215),	-- Taskmaster's Mining Cap
					hqt_bonusRenown_weekly(84061, FACTION_HALLOWFALL_ARATHI),	-- Bonus Rep: The Taskmaker
				},
			}),

			-- Alpha/Beta
			-- n(220159, {	-- Brineslash
			-- 	["coord"] = { X, Y, HALLOWFALL },
			-- 	["questID"] = 80486,
			-- }),
		})),
		n(RARES, {
			n(218458, {	-- Deepfiend Azellix
				["coord"] = { 72.1, 64.3, HALLOWFALL },
				["questID"] = 80011,
				["groups"] = {
					i(223394),	-- Deepfiend Pauldrons
					i(223396),	-- Deepfiend Shoulder Shells
					i(223395),	-- Deepfiend Shoulderpads
					i(223393),	-- Deepfiend Spaulders
				},
			}),
			n(221767, {	-- Funglour
				["coord"] = { 36.8, 71.8, HALLOWFALL },
				["questID"] = 81881,
				["groups"] = {
					i(223377),	-- Ancient Fungarian's Fingerwrap
				},
			}),
			n(221551, {	-- Grimslice
				["description"] = "Walking around the park. Can be killed by random Arathi NPCs in area.",
				["coords"] = {
					{ 35.0, 58.7, HALLOWFALL },
					{ 35.0, 50.4, HALLOWFALL },
				},
				["questID"] = 81761,
				["groups"] = {
					i(223399),	-- Abyssal Hunter's Chain
					i(223400),	-- Abyssal Hunter's Cinch
					i(223397),	-- Abyssal Hunter's Girdle
					i(223398),	-- Abyssal Hunter's Sash
				},
			}),
			n(218426, {	-- Ixlorb the Spinner
				["coord"] = { 57.0, 64.4, HALLOWFALL },
				["questID"] = 80006,
				["groups"] = {
					i(223380),	-- Nerubian Weaver's Chainmail
					i(223379),	-- Nerubian Weaver's Chestplate
					i(223374),	-- Nerubian Weaver's Gown
					i(223381),	-- Nerubian Weaver's Vest
				},
			}),
			n(218452, {	-- Murkshade
				["provider"] = { "n", 218455 },	-- Lost Cache
				["coord"] = { 52.3, 27.0, HALLOWFALL },
				["questID"] = 80010,
				["groups"] = {
					i(223385),	-- Murkshade Gauntlets
					i(223384),	-- Murkshade Gloves
					i(223382),	-- Murkshade Grips
					i(223383),	-- Murkshade Handguards
				},
			}),
		}),
	}),
}))
