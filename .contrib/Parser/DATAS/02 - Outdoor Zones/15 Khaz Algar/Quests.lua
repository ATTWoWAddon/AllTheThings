---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_0 } }, {
	n(QUESTS, {
		q(81930, {	-- The War Within [A]
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(227669),	-- Teleportation Scroll (QI!)
			},
		}),
		q(78713, {	-- The War Within [H]
			["races"] = HORDE_ONLY,
			["g"] = {
				i(227669),	-- Teleportation Scroll (QI!)
			},
		}),
		q(78714, {	-- A Poor Reception
			["sourceQuests"] = {
				81930,	-- The War Within [A]
				78713,	-- The War Within [H]
			},
			["provider"] = { "n", 213620 },	-- Thrall
			["coord"] = { 41.9, 45.0, SILITHUS_THE_WOUND },
			["maps"] = { 2321 },	-- Chamber of Heart
			["sourceQuestNumRequired"] = 1,
		}),
		q(78715, {	-- Azeroth's Voice
			["sourceQuests"] = { 78714 },	-- A Poor Reception
			["provider"] = { "n", 213624 },	-- Magni Bronzebeard
			["coord"] = { 50.1, 64.4, 2321 },	-- Chamber of Heart
		}),
		q(78716, {	-- Painful Lessons
			["sourceQuests"] = { 78715 },	-- Azeroth's Voice
			["provider"] = { "n", 213625 },	-- Lady Jaina Proudmoore
			["coord"] = { 49.5, 58.6, 2321 },	-- Chamber of Heart
		}),
		q(80500, {	-- The Bronzebeard Family
			["sourceQuests"] = { 78716 },	-- Painful Lessons
			["provider"] = { "n", 214651 },	-- Moira Thaurissan
			["coord"] = { 40.5, 57.7, AEGWYNNS_GALLERY },
		}),
		q(84446, {	-- Renown of Khaz Algar
			["sourceQuests"] = { 79197 },	-- Surface Bound
			["provider"] = { "n", 216149 },	-- Moira Thaurissan
			["coord"] = { 36.1, 80.3, DORNOGAL },
			["lockCriteria"] = { 1, "renownID", FACTION_COUNCIL_OF_DORNOGAL + 0.05 },    -- Council of Dornogal, Rank 5
		}),
		header(HEADERS.Achievement, 20597, {	-- The War Within
			header(HEADERS.AchCriteria, 20597.01, {	-- Against the Current
				------ Chapter 1 ------
				q(79197, {	-- Surface Bound
					["sourceQuests"] = { 84022 },	-- Uniting Severed Threads
					["provider"] = { "n", 219252 },	-- Alleria Windrunner
					["coord"] = { 55.6, 44.2, AZJ_KAHET },
					["g"] = {
						hqt(79573, name(HEADERS.AchCriteria, 40725.02)),	-- War Within Delves: Endgame [Complete Campaign]
					},
				}),
				q(79333, {	-- The Fleet Arrives
					["sourceQuests"] = { 79197 },	-- Surface Bound
					["provider"] = { "n", 216149 },	-- Moira Thaurissan
					["coord"] = { 36.1, 80.3, DORNOGAL },
				}),
				q(82153, {	-- Embassies and Envoys [A]
					["sourceQuests"] = { 79333 },	-- The Fleet Arrives
					["provider"] = { "n", 216168 },	-- Lady Jaina Proudmoore
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 35.9, 81.5, DORNOGAL },
					["g"] = {
						i(223588),	-- Algari Fighting Knife
						i(223549),	-- Algari Greatsword
						i(223547),	-- Algari Heavy Staff
						i(223548),	-- Algari Rifle
						i(223584),	-- Algari Scepter
						i(223564),	-- Algari Short Axe
						i(223546),	-- Algari Spear
						i(223569),	-- Algari Spellcleaver
					},
				}),
				q(79328, {	-- Embassies and Envoys [H]
					["sourceQuests"] = { 79333 },	-- The Fleet Arrives
					["provider"] = { "n", 216167 },	-- Thrall
					["races"] = HORDE_ONLY,
					["coord"] = { 36.2, 81.5, DORNOGAL },
					["g"] = {
						i(223588),	-- Algari Fighting Knife
						i(223549),	-- Algari Greatsword
						i(223547),	-- Algari Heavy Staff
						i(223548),	-- Algari Rifle
						i(223584),	-- Algari Scepter
						i(223564),	-- Algari Short Axe
						i(223546),	-- Algari Spear
						i(223569),	-- Algari Spellcleaver
					},
				}),
				------ Stay awhile and listen ------
				hqt(84009, {	-- Stay awhile and listen: Alleria Windrunner
					["name"] = "Stay awhile and listen: Alleria Windrunner",
					["provider"] = { "n", 216148 },	-- Alleria Windrunner
					["sourceQuests"] = {
						82153,	-- Embassies and Envoys [A] (Accepted)
						79328,	-- Embassies and Envoys [H] (Accepted)
					},
					["coord"] = { 35.9, 80.8, DORNOGAL },
				}),
				hqt(84345, {	-- Stay awhile and Listen: High Exarch Turalyon
					["name"] = "Stay awhile and listen: High Exarch Turalyon",
					["sourceQuests"] = {
						82153,	-- Embassies and Envoys [A] (Completed)
						79328,	-- Embassies and Envoys [H] (Completed)
					},
					["provider"] = { "n", 226650 },	-- High Exarch Turalyon
					["coord"] = { 31.6, 59.6, DORNOGAL },
				}),
				--
				q(83271, {	-- There's Always Another Secret
					["sourceQuests"] = {
						82153,	-- Embassies and Envoys [A]
						79328,	-- Embassies and Envoys [H]
					},
					["provider"] = { "n", 214917 },	-- Moira Thaurissan
					["coord"] = { 31.8, 59.4, DORNOGAL },
				}),
				q(83286, {	-- What's Hidden Beneath Dornogal
					["sourceQuests"] = { 83271 },	-- There's Always Another Secret
					["provider"] = { "n", 226040 },	-- Speaker Brinthe
					["coord"] = { 49.9, 60.8, VAULT_OF_MEMORY },
				}),
				------ Stay awhile and listen ------
				hqt(84814, {	-- Stay awhile and listen: Dagran Thaurissan II
					["name"] = "Stay awhile and listen: Dagran Thaurissan II (Vault of Memory)",
					["sourceQuests"] = { 83286 },	-- What's Hidden Beneath Dornogal
					["provider"] = { "n", 217859 },	-- Dagran Thaurissan II
					["coord"] = { 50.8, 61.7, VAULT_OF_MEMORY },
				}),
				--
				q(83315, {	-- Preparing for the Unknown
					["sourceQuests"] = { 83286 },	-- What's Hidden Beneath Dornogal
					["provider"] = { "n", 226040 },	-- Speaker Brinthe
					["coord"] = { 49.9, 60.8, VAULT_OF_MEMORY },
				}),
				------ Stay awhile and listen ------
				hqt(85682, {	-- Stay awhile and listen: Magni Bronzebeard
					["name"] = "Stay awhile and listen: Magni Bronzebeard",
					["sourceQuests"] = { 83315 },	-- Preparing for the Unknown (Completed)
					["provider"] = { "n", 233267 },	-- Magni Bronzebeard
					["coord"] = { 31.7, 59.3, DORNOGAL },
					-- TODO needs lockCriteria, who wanna test
				}),
				--
				q(79344, {	-- Urban Odyssey
					["sourceQuests"] = { 83315 },	-- Preparing for the Unknown
					["provider"] = { "n", 214917 },	-- Moira Thaurissan
					["coord"] = { 31.8, 59.3, DORNOGAL },
				}),
			}),
			header(HEADERS.AchCriteria, 20597.02, {	-- Ties That Bind
				------ Chapter 2 ------
				q(79107, {	-- After the Storm
					["sourceQuests"] = { 79344 },	-- Urban Odyssey
					["provider"] = { "n", 223944 },	-- Alleria Windrunner
					["coord"] = { 31.5, 59.7, DORNOGAL },
				}),
				q(81914, {	-- Dhar Oztan
					["sourceQuests"] = { 79107 },	-- After the Storm
					["provider"] = { "n", 215039 },	-- Rooktender Lufsela
					["coord"] = { 37.4, 82.2, DORNOGAL },
				}),
				------ Stay awhile and listen ------
				hqt(82542, {	-- Stay awhile and listen: Rooktender Lufsela
					["name"] = "Stay awhile and listen: Rooktender Lufsela",
					["sourceQuests"] = { 81914 },	-- Dhar Oztan (Accepted)
					["provider"] = { "n", 215039 },	-- Rooktender Lufsela
					["coord"] = { 37.5, 82.2, DORNOGAL },
				}),
				--
				q(79124, {	-- Conduit of the Southern Storm
					["sourceQuests"] = { 81914 },	-- Dhar Oztan
					["provider"] = { "n", 214995 },	-- Olbarig
					["coord"] = { 28.5, 61.0, ISLE_OF_DORN },
					["g"] = {
						i(218455),	-- Conduit of the Southern Storm (QI!)
					},
				}),
				q(79475, {	-- Charging Up That Hill
					["sourceQuests"] = { 79124 },	-- Conduit of the Southern Storm
					["provider"] = { "n", 214995 },	-- Olbarig
					["coord"] = { 27.6, 60.5, ISLE_OF_DORN },
				}),
				q(79476, {	-- Heeding the Call
					["sourceQuests"] = { 79124 },	-- Conduit of the Southern Storm
					["provider"] = { "n", 214995 },	-- Olbarig
					["coord"] = { 27.6, 60.5, ISLE_OF_DORN },
				}),
				q(79129, {	-- Rook Rally
					["sourceQuests"] = {
						79475,	-- Charging Up That Hill
						79476,	-- Heeding the Call
					},
					["provider"] = { "n", 215039 },	-- Rooktender Lufsela
					["coord"] = { 25.6, 57.2, ISLE_OF_DORN },
					["g"] = {
						i(223453),	-- Lightning-Scarred Coif
						i(223427),	-- Lightning-Scarred Cowl
						i(223465),	-- Lightning-Scarred Legguards
						i(223447),	-- Lightning-Scarred Vest
					},
				}),
				q(79146, {	-- Ground Pounders
					["sourceQuests"] = { 79129 },	-- Rook Rally
					["provider"] = { "n", 214919 },	-- Thrall
					["coord"] = { 27.8, 60.8, ISLE_OF_DORN },
				}),
				------ Stay awhile and listen ------
				hqt(84813, {	-- Stay awhile and listen: Rooktender Lufsela
					["description"] = "Dialogue becomes available after accepting 'Ground Pounders' (79146).",
					["name"] = "Stay awhile and listen: Rooktender Lufsela",
					["sourceQuests"] = { 79129 },	-- Rook Rally
					["provider"] = { "n", 215039 },	-- Rooktender Lufsela
					["coord"] = { 27.8, 60.8, ISLE_OF_DORN },
				}),
				--
				q(79140, {	-- Goldbricking
					["sourceQuests"] = { 79146 },	-- Ground Pounders
					["provider"] = { "n", 215187 },	-- Overlord Geya'rah
					["coord"] = { 33.2, 63.3, ISLE_OF_DORN },
				}),
				q(79145, {	-- Metal and Stone
					["sourceQuests"] = { 79146 },	-- Ground Pounders
					["provider"] = { "n", 223205 },	-- High Exarch Turalyon
					["coord"] = { 33.3, 63.3, ISLE_OF_DORN },
					["g"] = {
						i(223875),	-- Algari Censer
						i(223874),	-- Algari Dagger
						i(223877),	-- Algari Hatchet
						i(223871),	-- Algari Heavy Axe
						i(223872),	-- Algari Mace
						i(223873),	-- Algari Shield
						i(223876),	-- Algari Warglaive
					},
				}),
				q(81915, {	-- Home to Roost
					["sourceQuests"] = {
						79140,	-- Goldbricking
						79145,	-- Metal and Stone
					},
					["provider"] = { "n", 215277 },	-- Adelgonn
					["coord"] = { 33.3, 63.3, ISLE_OF_DORN },
				}),
				q(79477, {	-- Strays
					["sourceQuests"] = { 81915 },	-- Home to Roost
					["provider"] = { "n", 215039 },	-- Rooktender Lufsela
					["coord"] = { 28.9, 61.7, ISLE_OF_DORN },
				}),
				q(79147, {	-- Flight Training 101
					["sourceQuests"] = { 79477 },	-- Strays
					["provider"] = { "n", 215211 },	-- Kurdan Wildhammer
					["coord"] = { 29.0, 61.5, ISLE_OF_DORN },
				}),
				q(81912, {	-- Flight Training 102
					["sourceQuests"] = { 79147 },	-- Flight Training 101
					["provider"] = { "n", 215211 },	-- Kurdan Wildhammer
					["coord"] = { 35.0, 72.2, ISLE_OF_DORN },
				}),
				q(81913, {	-- Flight Training 103
					["sourceQuests"] = { 81912 },	-- Flight Training 102
					["provider"] = { "n", 215211 },	-- Kurdan Wildhammer
					["coord"] = { 61.7, 65.5, ISLE_OF_DORN },
					["g"] = {
						i(224161),	-- Stormrider Flight Badge
					},
				}),
				q(79480, {	-- Paying Respects
					["sourceQuests"] = { 81913 },	-- Flight Training 103
					["provider"] = { "n", 214995 },	-- Olbarig
					["coord"] = { 75.9, 39.8, ISLE_OF_DORN },
				}),
				q(79156, {	-- The Edicts
					["sourceQuests"] = { 79480 },	-- Paying Respects
					["provider"] = { "n", 214995 },	-- Olbarig
					["coord"] = { 76.5, 35.6, ISLE_OF_DORN },
				}),
				q(79157, {	-- Titanic Failsafe
					["sourceQuests"] = { 79156 },	-- The Edicts
					["provider"] = { "n", 214916 },	-- Merrix
					["coord"] = { 57.1, 50.5, ISLE_OF_DORN },
					["g"] = {
						i(223468),	-- Stormrider's Armplates
						i(223446),	-- Stormrider's Bindings
						i(223457),	-- Stormrider's Bracers
						i(223428),	-- Stormrider's Cuffs
					},
				}),
				------ Stay awhile and listen ------
				hqt(82541, {	-- Stay awhile and listen: Merrix <Councilward>
					["name"] = "Stay awhile and listen: Merrix <Councilward>",
					["description"] = "Dialogue becomes available after completing 'Titanic Failsafe' (79157).",
					["sourceQuests"] = { 79157 },	-- Titanic Failsafe
					["provider"] = { "n", 214916 },	-- Merrix <Councilward>
					["coord"] = { 31.8, 61.0, DORNOGAL },
				}),
			}),
			header(HEADERS.AchCriteria, 20597.03, {	-- News from Below
				------ Chapter 3 ------
				q(79224, {	-- Gathering Intel
					["sourceQuests"] = { 79157 },	-- Titanic Failsafe
					["provider"] = { "n", 223944 },	-- Alleria Windrunner
					["coord"] = { 31.6, 59.6, DORNOGAL },
				}),
				q(79227, {	-- A Spider's-Eye View
					["sourceQuests"] = { 79224 },	-- Gathering Intel
					["provider"] = { "n", 207471 },	-- Widow Arak'nai
					["coord"] = { 55.6, 43.9, AZJ_KAHET },
				}),
				q(79230, {	-- Creeping Through Corridors
					["sourceQuests"] = { 79227 },	-- A Spider's-Eye View
					["provider"] = { "n", 215626 },	-- Lilian Voss
					["coord"] = { 69.5, 71.7, NERUBAR },
				}),
				q(79233, {	-- Lab Access
					["sourceQuests"] = { 79227 },	-- A Spider's-Eye View
					["provider"] = { "n", 215637 },	-- Y'tekhi
					["coord"] = { 69.5, 72.2, NERUBAR },
					["g"] = {
						i(215457),	-- Loyalist Secretions (QI!)
					},
				}),
				q(79237, {	-- Making of a Monster
					["sourceQuests"] = {
						79230,	-- Creeping Through Corridors
						79233,	-- Lab Access
					},
					["provider"] = { "n", 215628 },	-- Lilian Voss
					["coord"] = { 56.7, 90.6, NERUBAR },
					["g"] = {
						i(223431),	-- The Fallen Queen's Band
					},
				}),
				q(79239, {	-- The Queen's Chains
					["sourceQuests"] = { 79237 },	-- Making of a Monster
					["provider"] = { "n", 215659 },	-- Y'tekhi
					["coord"] = { 57.1, 91.0, NERUBAR },
				}),
				q(79240, {	-- Rogue Agent
					["sourceQuests"] = { 79239 },	-- The Queen's Chains
					["provider"] = { "n", 215661 },	-- Lilian Voss
					["coord"] = { 78.8, 57.3, NERUBAR },
				}),
				q(79241, {	-- Go Loud
					["sourceQuests"] = { 79240 },	-- Rogue Agent
					["provider"] = { "n", 215662 },	-- Lilian Voss
					["coord"] = { 78.6, 39.6, NERUBAR },
				}),
				q(79243, {	-- Manufactured Mutiny
					["sourceQuests"] = { 79240 },	-- Rogue Agent
					["provider"] = { "n", 215662 },	-- Lilian Voss
					["coord"] = { 78.6, 39.6, NERUBAR },
				}),
				q(79244, {	-- News From Below
					["sourceQuests"] = {
						79241,	-- Go Loud
						79243,	-- Manufactured Mutiny
					},
					["provider"] = { "n", 215625 },	-- Lilian Voss
					["coord"] = { 55.7, 44.1, AZJ_KAHET },
					["g"] = {
						i(223437),	-- Handwraps of the Weaver
						i(223466),	-- Mantle of the Weaver
						i(223445),	-- Sash of the Weaver
						i(223455),	-- Shoulderguards of the Weaver
					},
				}),
			}),
			header(HEADERS.AchCriteria, 20597.04, {	-- The Machines March to War
				------ Chapter 4 ------
				q(79022, {	-- A Mysterious Signal
					["sourceQuests"] = { 79244 },	-- News From Below
					["provider"] = { "n", 223944 },	-- Alleria Windrunner
					["coord"] = { 31.5, 59.7, DORNOGAL },
				}),
				q(79023, {	-- Small Friend, Big Plans
					["sourceQuests"] = { 79022 },	-- A Mysterious Signal
					["provider"] = { "n", 214663 },	-- High Speaker Brinthe
					["coord"] = { 56.3, 74.9, THE_RINGING_DEEPS },
				}),
				q(79024, {	-- Factory Recon
					["sourceQuests"] = { 79023 },	-- Small Friend, Big Plans
					["provider"] = { "n", 214663 },	-- High Speaker Brinthe
					["coord"] = { 56.3, 74.9, THE_RINGING_DEEPS },
					["g"] = {
						i(223448),	-- Epaulets of the Ringing Deeps
						i(223452),	-- Grips of the Ringing Deeps
						i(223436),	-- Light Boots of the Ringing Deeps
						i(223463),	-- Sabatons of the Ringing Deeps
					},
				}),
				q(79217, {	-- Back to Base
					["sourceQuests"] = { 79024 },	-- Factory Recon
					["provider"] = { "n", 214663 },	-- High Speaker Brinthe
					["coord"] = { 56.3, 74.9, THE_RINGING_DEEPS },
				}),
				q(79025, {	-- A Plan Comes Together
					["sourceQuests"] = { 79217 },	-- Back to Base
					["provider"] = { "n", 217245 },	-- High Speaker Brinthe
					["coord"] = { 47.1, 34.2, THE_RINGING_DEEPS },
				}),
				q(79324, {	-- To the Waterworks
					["sourceQuests"] = { 79025 },	-- A Plan Comes Together
					["provider"] = { "n", 217245 },	-- High Speaker Brinthe
					["coord"] = { 47.1, 34.2, THE_RINGING_DEEPS },
				}),
				q(79026, {	-- Putting the Works in Waterworks
					["sourceQuests"] = { 79324 },	-- To the Waterworks
					["provider"] = { "n", 217331 },	-- Dagran Thaurissan II
					["coord"] = { 47.3, 42.4, THE_RINGING_DEEPS },
				}),
				q(79027, {	-- Elemental Trepidation
					["sourceQuests"] = { 79324 },	-- To the Waterworks
					["provider"] = { "n", 216137 },	-- ZZ-01-47
					["coord"] = { 47.3, 42.4, THE_RINGING_DEEPS },
					["g"] = {
						i(223435),	-- Element-Attuned Pendant
					},
				}),
				q(79325, {	-- Shadowvein Extraction
					["sourceQuests"] = {
						79027,	-- Elemental Trepidation
						79026,	-- Putting the Works in Waterworks
					},
					["provider"] = { "n", 217331 },	-- Dagran Thaurissan II
					["coord"] = { 47.3, 42.4, THE_RINGING_DEEPS },
				}),
				q(79028, {	-- We Require More Minerals
					["sourceQuests"] = { 79325 },	-- Shadowvein Extraction
					["provider"] = { "n", 216140 },	-- ZZ-01-47
					["coord"] = { 55.7, 41.1, THE_RINGING_DEEPS },
				}),
				q(80145, {	-- The Motherlode
					["sourceQuests"] = { 79028 },	-- We Require More Minerals
					["provider"] = { "n", 218622 },	-- ZZ-01-47
					--["coord"] = { x, y, THE_RINGING_DEEPS },	-- following player
				}),
				q(80517, {	-- Back to Where it Began
					["sourceQuests"] = { 80145 },	-- The Motherlode
					["provider"] = { "n", 218622 },	-- ZZ-01-47
					--["coord"] = { x, y, THE_RINGING_DEEPS },	-- following player
				}),
				q(79029, {	-- It's Sabotage
					["sourceQuests"] = { 80517 },	-- Back to Where it Began
					["provider"] = { "n", 214663 },	-- High Speaker Brinthe
					["coord"] = { 56.3, 74.9, THE_RINGING_DEEPS },
					["g"] = {
						i(223467),	-- Saboteur's Girdle
						i(223442),	-- Saboteur's Grips
						i(223440),	-- Saboteur's Shoulderpads
						i(223451),	-- Saboteur's Striders
					},
				}),
				q(79030, {	-- The Voice of the Speakers
					["sourceQuests"] = { 79029 },	-- It's Sabotage
					["provider"] = { "n", 220928 },	-- High Speaker Brinthe
					["coord"] = { 56.1, 77.6, THE_RINGING_DEEPS },
					["g"] = {
						-- crit 'The Machines March to War'
					},
				}),
			}),
			header(HEADERS.AchCriteria, 20597.05, {	-- A Light in the Dark
				q(78941, {	-- A Tide Needing Turned
					["sourceQuests"] = { 79030 },	-- The Voice of the Speakers
					["provider"] = { "n", 223944 },	-- Alleria Windrunner
					["coord"] = { 31.7, 59.6, DORNOGAL },
				}),
				q(78942, {	-- The Might of Khaz Algar
					["sourceQuests"] = { 78941 },	-- A Tide Needing Turned
					["provider"] = { "n", 214271 },	-- General Steelstrike
					["coord"] = { 71.6, 59.1, HALLOWFALL },
				}),
				q(78943, {	-- Steel and Flames
					["sourceQuests"] = { 78941 },	-- A Tide Needing Turned
					["provider"] = { "n", 214271 },	-- General Steelstrike
					["coord"] = { 71.6, 59.1, HALLOWFALL },
					["g"] = {
						i(223454),	-- Algari Warden's Greaves
						i(223461),	-- Algari Warden's Helm
						i(223443),	-- Algari Warden's Hood
						i(223438),	-- Algari Warden's Vestment
						i(217309),	-- Arathi Warhorn (QI!)
					},
				}),
				q(78950, {	-- Cutting Off the Legs
					["sourceQuests"] = { 78943 },	-- Steel and Flames
					["provider"] = { "n", 214276 },	-- Lady Jaina Proudmoore
					["coord"] = { 68.5, 64.1, HALLOWFALL },
				}),
				q(78948, {	-- A Light in the Dark
					["sourceQuests"] = {
						78942,	-- The Might of Khaz Algar
						78950,	-- Cutting Off the Legs
					},
					["provider"] = { "n", 214273 },	-- Anduin Wrynn
					["coord"] = { 64.5, 61.8, HALLOWFALL },
					["maps"] = { 2330 },	-- Piory of the Sacred Flame (Scenario)
					["g"] = {
						i(223472),	-- Drape of the Lamplighter
					},
				}),
				q(83503, {	-- Return to Dornogal
					["sourceQuests"] = { 78948 },	-- A Light in the Dark
					["provider"] = { "n", 220688 },	-- Alleria Windrunner
					["coord"] = { 35.9, 35.4, HALLOWFALL },
					["g"] = {
						-- crit 'A Light in the Dark'
					},
				}),
				------ Stay awhile and listen ------
				hqt(84139, {	-- Stay awhile and listen: Anduin Wrynn
					["name"] = "Stay awhile and listen: Anduin Wrynn",
					["description"] = "Dialogue becomes available after completing 'Return to Dornogal' (83503).",
					["sourceQuests"] = { 83503 },	-- Return to Dornogal
					["provider"] = { "n", 225897 },	-- Anduin Wrynn
					["coord"] = { 25.4, 66.2, DORNOGAL },
				}),
				hqt(84754, {	-- Stay awhile and listen: Alleria Windrunner
					["name"] = "Stay awhile and listen: Alleria Windrunner",
					["description"] = "Dialogue becomes available after completing 'Return to Dornogal' (83503).",
					["sourceQuests"] = { 83503 },	-- Return to Dornogal
					["provider"] = { "n", 227758 },	-- Alleria Windrunner
					["coord"] = { 42.4, 26.9, DORNOGAL },
				}),
			}),
		}),
		header(HEADERS.Achievement, 41052, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_7 } }, {	-- Lingering Shadows
			q(82690, {	-- Lingering Shadows
				["provider"] = { "n", 227758 },	-- Alleria Windrunner
				["coord"] = { 42.3, 26.8, DORNOGAL },
			}),
			q(82692, {	-- Price of a Mission
				["sourceQuest"] = 82690,	-- Lingering Shadows
				["provider"] = { "n", 224395 },	-- Orweyna
				["coord"] = { 62.9, 67.5, HALLOWFALL },
			}),
			q(82693, {	-- Standing in the Way
				["sourceQuest"] = 82690,	-- Lingering Shadows
				["provider"] = { "n", 224395 },	-- Orweyna
				["coord"] = { 62.9, 67.5, HALLOWFALL },
			}),
			q(82691, {	-- No Breathing Room
				["sourceQuest"] = 82690,	-- Lingering Shadows
				["provider"] = { "n", 224397 },	-- Hannan
				["coord"] = { 62.9, 67.5, HALLOWFALL },
			}),
			q(82694, {	-- Together, Alone
				["sourceQuests"] = {
					82692,	-- Price of a Mission
					82693,	-- Standing in the Way
					82691,	-- No Breathing Room
				},
				["provider"] = { "n", 224395 },	-- Orweyna
				["coord"] = { 62.9, 67.5, HALLOWFALL },
			}),
			q(82695, {	-- The Voice
				["sourceQuest"] = 82694,	-- Together, Alone
				["provider"] = { "n", 224740 },	-- Orweyna
				["coord"] = { 24.8, 51.6, HALLOWFALL },
			}),
			q(82696, {	-- Ringing in the Deeps
				["sourceQuest"] = 82695,	-- The Voice
				["provider"] = { "n", 224740 },	-- Orweyna
				["coord"] = { 24.8, 51.6, HALLOWFALL },
			}),
			q(82697, {	-- Good Help These Days
				["sourceQuest"] = 82696,	-- Ringing in the Deeps
				["provider"] = { "n", 224857 },	-- Monte Gazlowe
				["coord"] = { 58.4, 64.7, THE_RINGING_DEEPS },
				["g"] = {
					n(224864, {	-- Haxle Drillbit
						["coord"] = { 62.4, 75.0, THE_RINGING_DEEPS },
						["g"] = { i(225913) },	-- Opportunity Work Permit (QI!)
					}),
				},
			}),
			q(82699, {	-- Hey, What's Going On?
				["sourceQuest"] = 82697,	-- Good Help These Days
				["provider"] = { "n", 224874 },	-- Monte Gazlowe
				["coord"] = { 64.5, 79.7, THE_RINGING_DEEPS },
			}),
			q(82698, {	-- Haywired and Hostile
				["sourceQuest"] = 82697,	-- Good Help These Days
				["provider"] = { "n", 224866 },	-- Orweyna
				["coord"] = { 64.4, 79.7, THE_RINGING_DEEPS },
			}),
			q(82700, {	-- Built to Blast
				["sourceQuests"] = {
					82699,	-- Hey, What's Going On?
					82698,	-- Haywired and Hostile
				},
				["provider"] = { "n", 224913 },	-- Renzik "The Shiv"
				["coord"] = { 60.3, 87.0, THE_RINGING_DEEPS },
			}),
			q(82701, {	-- Bat Versus World
				["sourceQuest"] = 82700,	-- Built to Blast
				["provider"] = { "n", 224866 },	-- Orweyna
				["coord"] = { 64.4, 79.7, THE_RINGING_DEEPS },
			}),
			q(82702, {	-- Found Friends
				["sourceQuest"] = 82701,	-- Bat Versus World
				["provider"] = { "n", 224874 },	-- Monte Gazlowe
				["coord"] = { 64.5, 79.7, THE_RINGING_DEEPS },
				["g"] = {
					ach(41052, {	-- Lingering Shadows
						i(232647),	-- Root Defender's Shield
						i(232646),	-- Root Defender's Spear
					}),
				},
			}),
			q(84701, {	-- The Speaker
				["sourceQuest"] = 82702,	-- Found Friends
				["provider"] = { "n", 227499 },	-- Orweyna
				["coord"] = { 42.2, 27.3, DORNOGAL },
			}),
		})),
		header(HEADERS.Achievement, 40791, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_7 } }, {	-- Fate of the Kirin Tor
			header(HEADERS.AchCriteria, 40791.01, {	-- Arcane Desolation
				q(84223, {	-- Survivor's Guilt
					["sourceQuests"] = {
						83503,	-- Return to Dornogal
						84701,	-- The Speaker
					},
					["provider"] = { "n", 227436 },	-- Archmage Khadgar
					["coord"] = { 42.5, 27.1, DORNOGAL },
					--["g"] = {
					--	spell(458818),	-- Title: Witness of the Kirin Tor
					--},
				}),
				q(83031, {	-- The Hardest Part
					["sourceQuests"] = { 84223 },	-- Survivor's Guilt
					["provider"] = { "n", 225355 },	-- Archmage Aethas Sunreaver
					["coord"] = { 29.5, 58.1, ISLE_OF_DORN },
				}),
				q(83499, {	-- Arcane Wasteland
					["sourceQuests"] = { 83031 },	-- The Hardest Part
					["provider"] = { "n", 225355 },	-- Archmage Aethas Sunreaver
					["coord"] = { 29.5, 58.1, ISLE_OF_DORN },
					["g"] = {
						i(225662),	-- Arcane Dust (QI!)
						i(225895),	-- Frostfire Essence (QI!)
						o(454205, { -- Radiant Prism Crystals
							i(225663),	-- Radiant Prism Crystals (QI!)
						}),
					},
				}),
				q(83502, {	-- Lessons in Defensive Magic
					["sourceQuests"] = { 83499 },	-- Arcane Wasteland
					["provider"] = { "n", 225355 },	-- Archmage Aethas Sunreaver
					["coord"] = { 29.5, 58.1, ISLE_OF_DORN },
				}),
				q(83539, {	-- Feeling Blue
					["sourceQuests"] = { 83502 },	-- Lessons in Defensive Magic
					["provider"] = { "n", 226895 },	-- Archmage Aethas Sunreaver
					["coord"] = { 29.7, 57.9, ISLE_OF_DORN },
				}),
				------ Stay awhile and listen ------
				hqt(86818, {	-- Stay awhile and listen: Archamge Aethas Sunreaver
					["name"] = "Stay awhile and listen: Archamge Aethas Sunreaver",
					["description"] = "Dialogue becomes available after accepting 'Magic-stealing Kobolds' (83553). Wait for Kalecgos to cast his Mirror Images and fly away.",
					["sourceQuests"] = { 83539 },	-- Feeling Blue
					["provider"] = { "n", 226895 },	-- Archmage Aethas Sunreaver
					["coord"] = { 29.7, 57.9, ISLE_OF_DORN },
				}),
				--
				q(83553, {	-- Magic-stealing Kobolds
					["sourceQuests"] = { 83539 },	-- Feeling Blue
					["provider"] = { "n", 227067 },	-- Kalecgos
					["coord"] = { 29.7, 57.8, ISLE_OF_DORN },
				}),
				q(83554, {	-- Trinkets, Curios and Other Powerful Objects
					["sourceQuests"] = { 83553 },	-- Magic-stealing Kobolds
					["provider"] = { "n", 227063 },	-- Kalecgos
					["coord"] = { 61.7, 41.5, ISLE_OF_DORN },
					["g"] = {
						i(225920),	-- Stolen Kirin Tor Artifacts (QI!)
						o(454707, { -- Bag of Stolen Goods
							["coords"] = {
								{ 62.1, 40.6, ISLE_OF_DORN },
								{ 64.3, 41.4, ISLE_OF_DORN },
								{ 64.4, 44.1, ISLE_OF_DORN },
								{ 64.3, 43.0, ISLE_OF_DORN },
								{ 63.2, 45.2, ISLE_OF_DORN },
							},
							["g"] = { i(226162), },	-- Arcane Manuscript (QI!)
						}),
					},
				}),
				q(83555, {	-- Mysterious Necklace
					["sourceQuests"] = { 83553 },	-- Magic-stealing Kobolds
					["provider"] = { "n", 228520 },	-- Kobold Thief
					["coord"] = { 62.1, 41.6, ISLE_OF_DORN },
				}),
				q(83556, {	-- Maybe You Shouldn't Touch That
					["sourceQuests"] = {
						83555,	-- Mysterious Necklace
						83554,	-- Trinkets, Curios and Other Powerful Objects
					},
					["provider"] = { "n", 227375 },	-- Kalecgos
					["coord"] = { 61.5, 42.8, ISLE_OF_DORN },
				}),
				q(83641, {	-- Trapped Between Life and Death
					["sourceQuests"] = { 83553 },	-- Maybe You Shouldn't Touch That
					["provider"] = { "n", 227208 },	-- Kalecgos
					--["coord"] = { ??, ??, ISLE_OF_DORN },
				}),
				q(83643, {	-- Somehow We Survived
					["sourceQuests"] = { 83641 },	-- Trapped Between Life and Death
					["provider"] = { "n", 227392 },	-- Kalecgos
					["coord"] = { 61.5, 42.8, ISLE_OF_DORN },
				}),
			}),
			header(HEADERS.AchCriteria, 40791.02, {	-- Strength Amidst Ruins
				q(83723, {	-- A Helping Hand
					["sourceQuests"] = { 83643 },	-- Somehow We Survived
					["provider"] = { "n", 212829 },	-- Lady Jaina Proudmoore
					["coord"] = { 30.9, 57.7, ISLE_OF_DORN },
				}),
				q(83743, {	-- Arcane Cold War
					["sourceQuests"] = { 83723 },	-- A Helping Hand
					["provider"] = { "n", 227409 },	-- Lady Jaina Proudmoore
					["coord"] = { 29.8, 57.8, ISLE_OF_DORN },
				}),
				q(83762, {	-- Critical Mass
					["sourceQuests"] = { 83743 },	-- Arcane Cold War
					["provider"] = { "n", 227529 },	-- Lady Jaina Proudmoore
					["coord"] = { 35.2, 53.1, AZJ_KAHET },
				}),
				q(83763, {	-- Preserve the Legacy
					["sourceQuests"] = { 83762 },	-- Critical Mass
					["provider"] = { "n", 229763 },	-- Lady Jaina Proudmoore
					["coord"] = { 35.5, 52.4, AZJ_KAHET },
					["g"] = {
						o(465294, { -- Antonidas' Introduction to Arcane Magic
							["coord"] = { 35.7, 51.4, AZJ_KAHET },
							["g"] = { i(228820), },	-- Antonidas' Introduction to Arcane Magic (QI!)
						}),
						o(465295, { -- Medivh's Karazhan Schematics
							["coord"] = { 35.1, 51.2, AZJ_KAHET },
							["g"] = { i(228821), },	-- Medivh's Karazhan Schematics (QI!)
						}),
						o(465300, { -- Thalen Songweaver's Notes
							["coord"] = { 36.1, 52.6, AZJ_KAHET },
							["g"] = { i(228823), },	-- Thalen Songweaver's Notes (QI!)
						}),
					},
				}),
				q(83764, {	-- Too Powerful, Too Dangerous
					["sourceQuests"] = { 83762 },	-- Critical Mass
					["provider"] = { "n", 229763 },	-- Lady Jaina Proudmoore
					["coord"] = { 35.5, 52.4, AZJ_KAHET },
				}),
				q(83773, {	-- Farewell, City of Magic
					["sourceQuests"] = {
						83763,	-- Preserve the Legacy
						83764,	-- Too Powerful, Too Dangerous
					},
					["provider"] = { "n", 227436 },	-- Archmage Khadgar
					["coord"] = { 31.4, 50.9, ISLE_OF_DORN },
				}),
				------ Stay awhile and listen ------
				hqt(86819, {	-- Stay awhile and listen: Archmage Khadgar
					["name"] = "Stay awhile and listen: Archmage Khadgar",
					["description"] = "Dialogue becomes available after completing 'Farewell, City of Magic' (83773). Go back to Khadgar in Foundation Hall, Dornogal.",
					["sourceQuests"] = { 83773 },	-- Farewell, City of Magic
					["provider"] = { "n", 227436 },	-- Archmage Khadgar
					["coord"] = { 42.6, 27.2, DORNOGAL },
				}),
				--
			}),
		})),
		header(HEADERS.Achievement, 41820, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_7 } }, {	-- Rise of the Red Dawn
			q(84638, {	-- Trouble in the Highlands
				--["sourceQuests"] = { ?? },	-- 
				["provider"] = { "n", 223875 },	-- Faerin Lothar
				["coord"] = { 46.0, 49.6, DORNOGAL },
				--["isBreadcrumb"] = true,	-- TODO: confirm it?
			}),
			q(84658, {	-- Finding Family
				["sourceQuests"] = { 84638 },	-- Trouble in the Highlands
				["provider"] = { "n", 231748 },	-- Maggie Wiltshire
				["coord"] = { 20.5, 39.6, 2372 },	-- Is it like 3rd version of Arathi?
				["g"] = {
					o(474102, {	-- Ellie
						["coord"] = { 14.2, 41.9, 2372 },	-- Arathi Highlands
						["g"] = {
							i(230000),	-- Ellie (QI!)
						},
					}),
				},
			}),
			q(84639, {	-- Torches and Tar
				["sourceQuests"] = { 84638 },	-- Trouble in the Highlands
				["provider"] = { "n", 230174 },	-- Walker Gresham
				["coord"] = { 20.5, 39.3, 2372 },
				["g"] = {
					i(229094),	-- Barrel of Tar (QI!)
					i(229095),	-- Stolen Torches (QI!)
					o(474113),	-- Barrel of Tar
					o(503465),	-- Barrels of Tar
				},
			}),
			q(84640, {	-- Emblematic of Things to Come
				["sourceQuests"] = { 84638 },	-- Trouble in the Highlands
				["provider"] = { "i", 228963 },	-- Unfamiliar Emblem
				--["coord"] = { 18.3, 40.1, 2372 },
			}),
			q(84641, {	-- Ill Tidings
				["sourceQuests"] = {
					84640,	-- Emblematic of Things to Come
					84658,	-- Finding Family
					84639,	-- Torches and Tar
				},
				["provider"] = { "n", 234662 },	-- Danath Trollbane
				["coord"] = { 20.4, 39.2, 2372 },
			}),
			q(84643, {	-- Curfew Kerfuffle
				["sourceQuests"] = { 84641 },	-- Ill Tidings
				["provider"] = { "n", 235041 },	-- Captain Roderick Brewston
				["coord"] = { 19.3, 56.3, 2372 },
			}),
			q(84645, {	-- Deputy Delivery
				["sourceQuests"] = { 84641 },	-- Ill Tidings
				["provider"] = { "n", 235041 },	-- Captain Roderick Brewston
				["coord"] = { 19.3, 56.3, 2372 },
			}),
			q(84649, {	-- Marran Trollbane
				["sourceQuests"] = {
					84643,	-- Curfew Kerfuffle
					84645,	-- Deputy Delivery
				},
				["provider"] = { "n", 229940 },	-- Colonel Veronice Nials
				["coord"] = { 17.5, 59.5, 2372 },
			}),
			q(84650, {	-- Finding Refuge at Refuge Pointe
				["sourceQuests"] = { 84649 },	-- Marran Trollbane
				["provider"] = { "n", 229940 },	-- Colonel Veronice Nials
				["coord"] = { 17.5, 59.5, 2372 },
				["g"] = {
					i(235345),	-- Familiar Emblem (QI!)
				},
			}),
			q(84651, {	-- A Familiar Face
				["sourceQuests"] = { 84650 },	-- Finding Refuge at Refuge Pointe
				["provider"] = { "n", 236815 },	-- Karge Bloodfury
				["coord"] = { 40.9, 53.5, 2372 },
			}),
			q(84652, {	-- Supply Run
				["sourceQuests"] = { 84650 },	-- Finding Refuge at Refuge Pointe
				["provider"] = { "n", 236815 },	-- Karge Bloodfury
				["coord"] = { 40.9, 53.5, 2372 },
			}),
			q(84656, {	-- Onward to Hammerfall
				["sourceQuests"] = {
					84651,	-- A Familiar Face
					84652,	-- Supply Run
				},
				["provider"] = { "n", 230815 },	-- Faerin Lothar
				["coord"] = { 40.8, 53.5, 2372 },
			}),
			q(84704, {	-- A Different Point of View
				["sourceQuests"] = { 84656 },	-- Onward to Hammerfall
				["provider"] = { "n", 230145 },	-- Eitrigg
				["coord"] = { 69.7, 39.2, 2372 },
				["g"] = {
					o(475190, {	-- Supply Crate
						["coord"] = { 69.0, 35.2, 2372 },
					}),
				},
			}),
			q(84707, {	-- To See a Troll
				["sourceQuests"] = { 84704 },	-- A Different Point of View
				["provider"] = { "n", 231764 },	-- Faerin Lothar
				["coord"] = { 69.5, 32.8, 2372 },
			}),
			q(84706, {	-- Crime Family
				["sourceQuests"] = { 84707 },	-- To See a Troll
				["provider"] = { "n", 230151 },	-- Overlord Geya'rah
				["coord"] = { 54.4, 63.2, 2372 },
			}),
			q(84705, {	-- Withering the Witherbark
				["sourceQuests"] = { 84707 },	-- To See a Troll
				["provider"] = { "n", 230151 },	-- Overlord Geya'rah
				["coord"] = { 54.4, 63.2, 2372 },
			}),
			q(84708, {	-- The Syndicate Strikes Back
				["sourceQuests"] = {
					84706,	-- Crime Family
					84705,	-- Withering the Witherbark
				},
				["provider"] = { "n", 230151 },	-- Overlord Geya'rah
				["coord"] = { 54.4, 63.2, 2372 },
			}),
			q(85451, {	-- The Burning of Hammerfall
				["sourceQuests"] = { 84708 },	-- The Syndicate Strikes Back
				["provider"] = { "n", 231768 },	-- Overlord Geya'rah
				["coord"] = { 69.6, 41.0, 2372 },
			}),
			q(84709, {	-- Hammerfall Down
				["sourceQuests"] = { 84708 },	-- The Syndicate Strikes Back
				["provider"] = { "n", 231770 },	-- Eitrigg
				["coord"] = { 69.7, 40.9, 2372 },
			}),
			q(84710, {	-- Once Bitten Twice Shy
				["sourceQuests"] = { 84708 },	-- The Syndicate Strikes Back
				["provider"] = { "n", 231771 },	-- Faerin Lothar
				["coord"] = { 69.8, 41.0, 2372 },
			}),
			q(84711, {	-- Danath's Disappearance
				["sourceQuests"] = {
					84709,	-- Hammerfall Down
					84710,	-- Once Bitten Twice Shy
					85451,	-- The Burning of Hammerfall
				},
				["provider"] = { "n", 231803 },	-- Overlord Geya'rah
				["coord"] = { 68.4, 30.6, 2372 },
			}),
			q(84712, {	-- False Flag
				["sourceQuests"] = { 84711 },	-- Danath's Disappearance
				["provider"] = { "n", 231829 },	-- Overlord Geya'rah
				["coord"] = { 41.5, 61.6, 2372 },
				["g"] = {
					o(477883, {	-- Orcish Axe
						["coord"] = { 42.1, 61.3, 2372 },
					}),
					o(477880, {	-- Suspicious Dirt
						["coord"] = { 40.9, 61.4, 2372 },
					}),
				},
			}),
			q(84657, {	-- Return to Stromgarde // ALLIANCE_ONLY
				["sourceQuests"] = { 84712 },	-- False Flag
				["provider"] = { "n", 231828 },	-- Faering Lothar
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 41.5, 61.4, 2372 },
			}),
			q(87299, {	-- How Old Are These Things? // ALLIANCE_ONLY
				["sourceQuests"] = { 84657 },	-- Return to Stromgarde
				["provider"] = { "n", 238012 },	-- Captain Roderick Brewston
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 17.7, 60.3, 2372 },
				["g"] = {
					i(231878), -- Articles of Proof (QI!)
					i(231879), -- Defias Bandana (QI!)
					i(231880), -- Orange Bandana (QI!)
					i(231883), -- Scarlet Crusade Tabard (QI!)
					i(231884), -- Stromgarde Tabard (QI!)
					i(231881), -- Syndicate Emblem (QI!)
				},
			}),
			q(84659, {	-- The Search for Faerin // ALLIANCE_ONLY
				["sourceQuests"] = { 84657 },	-- Return to Stromgarde
				["provider"] = { "n", 238012 },	-- Captain Roderick Brewston
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 17.7, 60.3, 2372 },
				["g"] = {
					o(516416, {	-- Red Dawn Propaganda
						["coord"] = { 15.2, 62.0, 2372 },
					}),
					o(516414, {	-- Red Dawn Oaths of Loyalty
						["coord"] = { 14.5, 65.0, 2372 },
					}),
					o(516417, {	-- Red Dawn Propaganda
						["coord"] = { 16.4, 68.8, 2372 },
					}),
					o(516415, {	-- Red Dawn Propaganda
						["coord"] = { 14.2, 69.3, 2372 },
					}),
				},
			}),
			q(84713, {	-- Fallen Fortress // HORDE_ONLY
				["sourceQuests"] = { 84712 },	-- False Flag
				["provider"] = { "n", 231826 },	-- Eitrigg
				["races"] = HORDE_ONLY,
				["coord"] = { 41.5, 61.4, 2372 },
			}),
			q(84715, {	-- The Search for Danath // HORDE_ONLY
				["sourceQuests"] = { 84713 },	-- Fallen Fortress
				["provider"] = { "n", 231832 },	-- Eitrigg
				["races"] = HORDE_ONLY,
				["coord"] = { 27.8, 25.6, 2372 },
				["g"] = {
					o(478203, {	-- Barracks Prison Key
						["coord"] = { 28.0, 34.1, 2372 },
					}),
					o(478195, {	-- Red Dawn Oaths of Loyalty
						["coord"] = { 27.4, 28.4, 2372 },
					}),
					o(478199, {	-- Red Dawn Propaganda
						["coord"] = { 29.0, 30.6, 2372 },
					}),
					o(478202, {	-- Red Dawn Propaganda
						["coord"] = { 25.1, 32.1, 2372 },
					}),
					o(478198, {	-- Red Dawn Propaganda
						["coord"] = { 25.5, 28.1, 2372 },
					}),
				},
			}),
			q(84714, {	-- From Ironforge With Love // HORDE_ONLY
				["sourceQuests"] = { 84713 },	-- Fallen Fortress
				["provider"] = { "n", 231833 },	-- Overlord Geya'rah
				["races"] = HORDE_ONLY,
				["coord"] = { 27.9, 25.7, 2372 },
				["g"] = {
					i(235999),	-- Bundle of Heavy Silk Bandages (QI!)
					i(236001),	-- Cans of Loch Frenzy (QI!)
					i(236000),	-- Pack of Heavy Armor Kits (QI!)
					i(235998),	-- Packages of Blood Sausage (QI!)
					i(235997),	-- Skins of Dwarven Stout (QI!)
					i(235996),	-- Stolen Ironforge Supplies (QI!)
				},
			}),
			q(84716, {	-- Returning to Stromgarde // HORDE_ONLY
				["sourceQuests"] = {
					84715,	-- The Search for Danath
					84714,	-- From Ironforge With Love
				},
				["provider"] = { "n", 230154 },	-- Danath Trollbane
				["races"] = HORDE_ONLY,
				["coord"] = { 27.9, 34.3, 2372 },
			}),
			q(84717, {	-- Rise of the Red Dawn
				["sourceQuests"] = {
					84716,	-- Returning to Stromgarde
					--
					87299,	-- How Old Are These Things?
					84659,	-- The Search for Faerin
				},
				["sourceQuestNumRequired"] = 1,	-- TODO: for horde it is 1 quest (84716) but for alliance it is up after 2 (84659 & 87299)
				["provider"] = { "n", 231837 },	-- Faering Lothar
				["coord"] = { 19.4, 59.1, 2372 },
				["g"] = {
					i(239135),	-- Hammerfall Tabard (COSMETIC!)
					i(239136),	-- Stromgarde Tabard (COSMETIC!)
				},
			}),
			q(85529, {	-- Past Glory
				["sourceQuests"] = { 84717 },	-- Rise of the Red Dawn
				["provider"] = { "n", 232986 },	-- Danath Trollbane
				["coord"] = { 21.6, 65.0, 2372 },
				["g"] = {
					i(239137),	-- Lamplighter's Pauldrons (COSMETIC!)
					-- TODO: Myrh worth a look at here, just in case
					ach(41820),	-- Rise of the Red Dawn
					title(629),	-- %s of Hammerfall
				},
			}),
			--- Stay awhile and listen ---
			hqt(91524, {	-- Stay awhile and listen: Captaion Roderick Brewston
				["name"] = "Stay awhile and listen: Captaion Roderick Brewston",
				["sourceQuests"] = { 84649 },	-- Marran Trollbane
				["provider"] = { "n", 229951 },	-- Captaion Roderick Brewston
				["coord"] = { 17.4, 59.5, 2372 },
			}),
			hqt(91532, {	-- Stay awhile and listen: Faerin Lothar
				["name"] = "Stay awhile and listen: Faerin Lothar",
				["sourceQuests"] = { 84650 },	-- Finding Refuge at Refuge Pointe
				["provider"] = { "n", 230815 },	-- Faerin Lothar
				["coord"] = { 40.8, 53.5, 2372 },
			}),
			hqt(91534, {	-- Stay awhile and listen: Eitrigg
				["name"] = "Stay awhile and listen: Eitrigg",
				["sourceQuests"] = { 84656 },	-- Onward to Hammerfall (TODO: but probably only during 84704?)
				["provider"] = { "n", 231759 },	-- Eitrigg
				["coord"] = { 69.6, 32.8, 2372 },
			}),
		})),
	}),
})));