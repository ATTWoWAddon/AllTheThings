--------------------------------------------
--       E V E N T S    M O D U L E       --
--------------------------------------------

THE_SCEPTER_OF_THE_SHIFTING_SANDS = createHeader({
	readable = "The Scepter of the Shifting Sands",
	icon = 133062,
	text = {
		en = "The Scepter of the Shifting Sands",
		de = "Das Szepter der Sandstürme",
		es = "El cetro del Mar de Dunas",
		-- TODO: mx = "",
		fr = "Le Sceptre des Sables changeants",
		it = "Scettro delle Sabbie Mutevoli",
		ko = "흐르는 모래의 홀",
		pt = "Cetro das Areias Cambiantes",
		ru = "Скипетр Зыбучих песков",
		cn = "流沙节杖",
		tw = "流沙節杖",
	},
	description = {
		en = "In addition to all players on a realm working towards completing the War Effort, one player had to create the Scepter of the Shifting Sands - a very difficult task that could only be solved by a server's top guild back when the questline was added. After the war effort was finished and the army of the Alliance and the Horde arrived in Silithus, the Scepter of the Shifting Sands could be used on the Scarab Gong. Doing so resulted in the opening of Ahn'Qiraj. The first player to bang the Scarab Gong on each server would be rewarded with the Scarab Lord title (in Burning Crusade, the title will not be available in Classic!) and the Black Qiraji Resonating Crystal mount. Anyone else who followed them within 10 hours was rewarded with the title as well.\n\nAlthough it is still possible to complete the questline for the Scepter of the Shifting Sands after the gates have been opened on your server, doing so will not reward neither the Black Qiraji Resonating Crystal nor the Scarab Lord title.",
	},
});

root(ROOTS.WorldEvents, n(THE_SCEPTER_OF_THE_SHIFTING_SANDS,
	applyclassicphase(PHASE_FIVE, bubbleDown({ ["timeline"] = { REMOVED_4_0_3 } }, {
		["maps"] = {
			CAVERNS_OF_TIME,
			TANARIS,
		},
		["lvl"] = 60,
		["groups"] = {
			n(QUESTS, {
				q(8519, {	-- A Pawn on the Eternal Board
					["sourceQuest"] = 8305,	-- Long Forgotten Memories
					["provider"] = { "o", 180633 },	-- Crystalline Tear
					["coord"] = { 28.7, 89.1, SILITHUS },
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["lvl"] = 60,
				}),
				q(8303, {	-- Anachronos
					["sourceQuest"] = 8301,	-- The Path of the Righteous
					["providers"] = {
						{ "n", 15180 },	-- Baristolth of the Shifting Sands
						{ "i", 20415 },	-- The War of the Shifting Sands
					},
					["coord"] = { 49.5, 36.4, SILITHUS },
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["lvl"] = 60,
				}),
				q(8575, {	-- Azuregos's Magical Ledger
					["sourceQuest"] = 8555,	-- The Charge of the Dragonflights
					["provider"] = { "i", 20949 },	-- Magical Ledger
					["qg"] = 15481,	-- Spirit of Azuregos
					["coord"] = { 57.0, 85.6, AZSHARA },
					["lvl"] = 60,
				}),
				applyclassicphase(PHASE_FIVE_GONG, q(8743, {	-- Bang a Gong!
					["sourceQuest"] = 8742,	-- The Might of Kalimdor
					["providers"] = {
						{ "o", 180717 },	-- The Scarab Gong
						{ "i",  21175 },	-- The Scepter of the Shifting Sands
					},
					["coord"] = { 25.7, 90.9, SILITHUS },
					["lvl"] = 60,
					["groups"] = {
						ach(416, {	-- Scarab Lord (Achievement)
							["sourceQuest"] = 8743,	-- Bang a Gong!
							["timeline"] = { REMOVED_4_0_3 },
						}),
						title(33, {	-- Scarab Lord Crieve
							["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },	-- Added in Burning Crusade Prepatch
						}),
						i(21176, {	-- Black Qiraji Battle Tank (MOUNT!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
						mount(239770, {	-- Black Qiraji War Tank (MOUNT!)  (This a high resolution version given to players in the end of Legion)
							["timeline"] = { ADDED_7_3_5, REMOVED_7_3_5 },	-- when it's added, it's already removed because it's only given to players who already have the original removed
						}),
					},
				})),
				q(8606, {	-- Decoy!
					["sourceQuest"] = 8598,	-- rAnS0m
					["qg"] = 11811,	-- Narain Soothfancy
					["coord"] = { 65.2, 18.6, TANARIS },
					["maps"] = { WINTERSPRING },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- Who Does Number Two Work For?
							["providers"] = {
								{ "n", 15554 },	-- Number Two
								{ "i", 21041 },	-- Bag of Gold
								{ "i", 21039 },	-- Narain's Turban
								{ "i", 21040 },	-- Narain's Robe
							},
							["coord"] = { 65.0, 72.0, WINTERSPRING },
						}),
						i(21042, {	-- Narain's Special Kit
							i(21037),	-- Crude Map
							i(21041),	-- Bag of Gold
							i(21039),	-- Narain's Turban
							i(21040),	-- Narain's Robe
						}),
					},
				}),
				q(8597, {	-- Draconic for Dummies
					["sourceQuest"] = 8576,	-- Translating the Ledger
					["qg"] = 11811,	-- Narain Soothfancy
					["coord"] = { 65.2, 18.6, TANARIS },
					["lvl"] = 60,
				}),
				q(8586, {	-- Dirge's Kickin' Chimaerok Chops
					["sourceQuest"] = 8585,	-- The Isle of Dread!
					["qg"] = 8125,	-- Dirge Quikcleave <Butcher>
					["coord"] = { 52.6, 28.1, TANARIS },
					["cost"] = {
						{ "i", 9061, 20 },	-- Goblin Rocket Fuel
						{ "i", 8150, 20 },	-- Deeprock Salt
					},
					["lvl"] = 60,
					["groups"] = {
						i(21025),	-- Recipe: Dirge's Kickin' Chimaerok Chops (RECIPE!)
					},
				}),
				q(8733, {	-- Eranikus, Tyrant of the Dream
					["sourceQuest"] = 8555,	-- The Charge of the Dragonflights
					["qg"] = 15362,	-- Malfurion Stormrage
					["maps"] = { TEMPLE_OF_ATALHAKKAR },
					["lvl"] = 60,
				}),
				q(8305, {	-- Long Forgotten Memories
					["sourceQuest"] = 8303,	-- Anachronos
					["qg"] = 15192,	-- Anachronos
					["coord"] = { 65.0, 50.0, TANARIS },
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["lvl"] = 60,
				}),
				q(8599, {	-- Love Song for Narain
					["sourceQuest"] = 8597,	-- Draconic for Dummies
					["providers"] = {
						{ "n", 15526 },	-- Meridith the Mermaiden
						{ "i", 21032 },	-- Meridith's Love Letter
					},
					["coord"] = { 59.4, 96.0, TANARIS },
					["lvl"] = 60,
				}),
				q(8730, {	-- Nefarius's Corruption
					["sourceQuest"] = 8555,	-- The Charge of the Dragonflights
					["qg"] = 13020,	-- Vaelastrasz the Corrupt
					["maps"] = { BLACKWING_LAIR },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Red Scepter Shard
							["provider"] = { "i", 21138 },	-- Red Scepter Shard
							["cr"] = 11583,	-- Nefarian
						}),
						i(21142, {	-- From the Desk of Lord Victor Nefarius
							["description"] = "You get this if you don't manage to kill Nefarian in time after starting the quest from Vaelastrasz.",
							["cr"] = 11583,	-- Nefarian
						}),
						i(21529),	-- Amulet of Shadow Shielding
						i(21530),	-- Onyx Embedded Leggings
					},
				}),
				q(8584, {	-- Never Ask Me About My Business
					["sourceQuest"] = 8576,	-- Translating the Ledger
					["qg"] = 11811,	-- Narain Soothfancy
					["coord"] = { 65.2, 18.6, TANARIS },
					["lvl"] = 60,
				}),
				q(8288, {	-- Only One May Rise
					["sourceQuest"] = 8286,	-- What Tomorrow Brings
					["qg"] = 15180,	-- Baristolth of the Shifting Sands
					["coord"] = { 49.5, 36.4, SILITHUS },
					["maps"] = { BLACKWING_LAIR },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Head of the Broodlord Lashlayer
							["provider"] = { "i", 20383 },	-- Head of the Broodlord Lashlayer
							["cr"] = 12017,	-- Broodlord Lashlayer
						}),
					},
				}),
				q(8598, {	-- rAnS0m
					["description"] = "The dirt is on an island waaaaaay south of Tanaris. You'll need to speak to Meridith to get a buff to swim fast enough to reach the island without dying to Fatigue.",
					["sourceQuest"] = 8599,	-- Love Song for Narain
					["providers"] = {
						{ "o", 180652 },	-- Freshly Dug Dirt
						{ "i",  21029 },	-- Ransom Letter
					},
					["coord"] = { 59.4, 96.0, TANARIS },
					["lvl"] = 60,
				}),
				q(8587, {	-- Return to Narain
					["sourceQuest"] = 8586,	-- Dirge's Kickin' Chimaerok Chops
					["providers"] = {
						{ "n", 8125 },	-- Dirge Quikcleave <Butcher>
						{ "i", 21028 },	-- 500 Pound Chicken
					},
					["coord"] = { 52.6, 28.1, TANARIS },
					["lvl"] = 60,
				}),
				q(8578, {	-- Scrying Goggles? No Problem!
					["sourceQuest"] = 8577,	-- Stewvul, Ex-B.F.F.
					["provider"] = { "o", 180642 },	-- Inconspicuous Crate
					["coord"] = { 46.2, 86.7, SILVERPINE_FOREST },
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu
					["maps"] = { MOLTEN_CORE },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Narain's Scrying Goggles
							["provider"] = { "i", 20951 },	-- Narain's Scrying Goggles
						}),
					},
				}),
				q(8577, {	-- Stewvul, Ex-B.F.F.
					["sourceQuest"] = 8576,	-- Translating the Ledger
					["qg"] = 11811,	-- Narain Soothfancy
					["coord"] = { 65.2, 18.6, TANARIS },
					["maps"] = { SILVERPINE_FOREST },
					["lvl"] = 60,
				}),
				q(8741, {	-- The Champion Returns
					["sourceQuest"] = 8736,	-- The Nightmare Manifests
					["providers"] = {
						{ "n", 11832 },	-- Keeper Remulos
						{ "i", 21139 },	-- Green Scepter Shard
					},
					["coord"] = { 36.18, 41.79, MOONGLADE },
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["lvl"] = 60,
				}),
				q(8555, {	-- The Charge of the Dragonflights
					["sourceQuest"] = 8519,	-- A Pawn on the Eternal Board
					["qg"] = 15192,	-- Anachronos
					["coord"] = { 65.0, 50.0, TANARIS },
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["lvl"] = 60,
				}),
				q(8728, {	-- The Good News and The Bad News
					["sourceQuests"] = {
						8587,	-- Return to Narain
						8578,	-- Scrying Goggles? No Problem!
						8620,	-- The Only Prescription
					},
					["qg"] = 11811,	-- Narain Soothfancy
					["coord"] = { 65.2, 18.6, TANARIS },
					["cost"] = {
						{ "i", 12360, 20 },	-- Arcanite Bar
						{ "i", 18562, 10 },	-- Elementium Ore
						{ "i", 12800, 10 },	-- Azerothian Diamond
						{ "i", 12361, 10 },	-- Blue Sapphire
					},
					["lvl"] = 60,
				}),
				q(8302, {	-- The Hand of the Righteous
					["sourceQuest"] = 8301,	-- The Path of the Righteous
					["qg"] = 15180,	-- Baristolth of the Shifting Sands
					["coord"] = { 49.5, 36.4, SILITHUS },
					["maxReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["cost"] = { { "i", 20384, 200 } },	-- Silithid Carapace Fragment
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(20403),	-- Proxy of Nozdormu
					},
				}),
				q(8585, {	-- The Isle of Dread!
					["sourceQuest"] = 8584,	-- Never Ask Me About My Business
					["qg"] = 8125,	-- Dirge Quikcleave <Butcher>
					["coord"] = { 52.6, 28.1, TANARIS },
					["maps"] = { FERALAS },
					["cost"] = { { "i", 21024, 20 } },	-- Chimaerok Tenderloin
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Lakmaeran's Carcass
							["provider"] = { "i", 21027 },	-- Lakmaeran's Carcass
							["coord"] = { 29.8, 72.6, FERALAS },
							["cr"] = 12803,	-- Lord Lakmaeran
						}),
					},
				}),
				q(8742, {	-- The Might of Kalimdor
					["sourceQuests"] = {
						8729,	-- The Wrath of Neptulon
						8730,	-- Nefarius's Corruption
						8741,	-- The Champion Returns
					},
					["qg"] = 15192,	-- Anachronos
					["coord"] = { 65.0, 50.0, TANARIS },
					["lvl"] = 60,
					["groups"] = {
						i(21175),	-- The Scepter of the Shifting Sands
					},
				}),
				q(8736, {	-- The Nightmare Manifests
					["description"] = "You do NOT want to kill Eranikus or allow Remulos to die.",
					["sourceQuest"] = 8735,	-- The Nightmare's Corruption
					["qg"] = 11832,	-- Keeper Remulos
					["coord"] = { 36.18, 41.79, MOONGLADE },
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["lvl"] = 60,
					["groups"] = {
						i(21531),	-- Drake Tooth Necklace
						i(21532),	-- Drudge Boots
					},
				}),
				q(8735, {	-- The Nightmare's Corruption
					["sourceQuest"] = 8734,	-- Tyrande and Remulos
					["qg"] = 11832,	-- Keeper Remulos
					["coord"] = { 36.18, 41.79, MOONGLADE },
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["maps"] = { ASHENVALE, DUSKWOOD, FERALAS, THE_HINTERLANDS },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Fragment of the Nightmare's Corruption (Ashenvale)
							["provider"] = { "i", 21147 },	-- Fragment of the Nightmare's Corruption
							["coord"] = { 91.6, 39.0, ASHENVALE },
							["crs"] = {
								12474,	-- Emeraldon Boughguard
								12475,	-- Emeraldon Tree Warder
								12476,	-- Emeraldon Oracle
							},
						}),
						objective(2, {	-- 0/1 Fragment of the Nightmare's Corruption (Duskwood)
							["provider"] = { "i", 21149 },	-- Fragment of the Nightmare's Corruption
							["description"] = "It is recommended that you bring at least 30 players and they should be experienced raiders.",
							["coord"] = { 48.0, 33.0, DUSKWOOD },
							["cr"] = 15625,	-- Twilight Corrupter
						}),
						objective(3, {	-- 0/1 Fragment of the Nightmare's Corruption (Feralas)
							["provider"] = { "i", 21148 },	-- Fragment of the Nightmare's Corruption
							["coord"] = { 50.4, 15.9, FERALAS },
							["crs"] = {
								5320,	-- Jademir Boughguard
								5319,	-- Jademir Tree Warder
								5317,	-- Jademir Oracle
							},
						}),
						objective(4, {	-- 0/1 Fragment of the Nightmare's Corruption (Hinterlands)
							["provider"] = { "i", 21146 },	-- Fragment of the Nightmare's Corruption
							["coord"] = { 61.6, 27.7, THE_HINTERLANDS },
							["crs"] = {
								12477,	-- Verdantine Boughguard
								12479,	-- Verdantine Tree Warder
								12478,	-- Verdantine Oracle
							},
						}),
					},
				}),
				q(8620, {	-- The Only Prescription
					["sourceQuest"] = 8606,	-- Decoy!
					["qg"] = 11811,	-- Narain Soothfancy
					["coord"] = { 65.2, 18.6, TANARIS },
					["maps"] = {
						BLACKWING_LAIR,
						ONYXIAS_LAIR,
						MOLTEN_CORE,
						BLASTED_LANDS,
						DUSTWALLOW_MARSH,
						WINTERSPRING,
						UNDERCITY,
						STORMWIND_CITY,
					},
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Draconic For Dummies: Volume II
							["provider"] = { "i", 21111 },	-- Draconic For Dummies: Volume II
							["cost"] = {
								{ "i", 21112, 1 },	-- Magical Book Binding
								{ "i", 21103, 1 },	-- Draconic for Dummies [Chapter I] (Doctor Weavil)
								{ "i", 21104, 1 },	-- Draconic for Dummies [Chapter II] (Blasted Lands Demons)
								{ "i", 21105, 1 },	-- Draconic for Dummies [Chapter III] (Winterspring Demons)
								{ "i", 21106, 1 },	-- Draconic for Dummies [Chapter IV] (Undercity)
								{ "i", 21107, 1 },	-- Draconic for Dummies [Chapter V] (Stormwind Library)
								{ "i", 21108, 1 },	-- Draconic for Dummies [Chapter VI] (Onyxia)
								{ "i", 21109, 1 },	-- Draconic for Dummies [Chapter VII] (Blackwing Lair)
								{ "i", 21110, 1 },	-- Draconic for Dummies [Chapter VIII] (Ragnaros)
							},
						}),
						{
							["itemID"] = 21103,	-- Draconic for Dummies [Chapter I]
							["coord"] = { 77.8, 17.0, DUSTWALLOW_MARSH },
							["cr"] = 15552,	-- Doctor Weavil
						},
						{
							["itemID"] = 21104,	-- Draconic for Dummies [Chapter II]
							["coord"] = { 44.6, 56.0, BLASTED_LANDS },
							["crs"] = {
								12396,	-- Doomguard Commander
								8716,	-- Dreadlord
								8717,	-- Felguard Elite
							},
						},
						{
							["itemID"] = 21105,	-- Draconic for Dummies [Chapter III]
							["coords"] = {
								{ 65.0, 80.2, WINTERSPRING },
								{ 51.6, 84.4, WINTERSPRING },
								{ 54.6, 87.4, WINTERSPRING },
							},
							["crs"] = {
								10201,	-- Lady Hederine
								7461,	-- Hederine Initiate
								7463,	-- Hederine Slayer
							},
						},
						{
							["itemID"] = 21106,	-- Draconic for Dummies [Chapter IV]
							["_allowObjectProvider"] = true,
							["provider"] = { "o", 180666 },	-- Draconic for Dummies
							["coord"] = { 77.0, 38.0, UNDERCITY },
						},
						{
							["itemID"] = 21107,	-- Draconic for Dummies [Chapter V]
							["_allowObjectProvider"] = true,
							["provider"] = { "o", 180665 },	-- Draconic for Dummies
							["coords"] = {
								-- #if AFTER WRATH
								{ 75.35, 29.73, STORMWIND_CITY },
								-- #else
								{ 72.0, 6.0, STORMWIND_CITY },
								-- #endif
							},
						},
						{
							["itemID"] = 21108,	-- Draconic for Dummies [Chapter VI]
							["cr"] = 10184,	-- Onyxia
						},
						{
							["itemID"] = 21109,	-- Draconic for Dummies [Chapter VII]
							["_allowObjectProvider"] = true,
							["provider"] = { "o", 180667 },	-- Draconic for Dummies
							["description"] = "Located in Blackwing Lair on one of the tables on the ramp after the first wyrmguard overseer pull.",
							["coord"] = { 32.0, 42.9, BLACKWING_LAIR },
						},
						{
							["itemID"] = 21110,	-- Draconic for Dummies [Chapter VIII]
							["cr"] = 11502,	-- Ragnaros
						},
						i(21517),	-- Gnomish Turban of Psychic Might
					},
				}),
				q(8301, {	-- The Path of the Righteous
					["sourceQuest"] = 8288,	-- Only One May Rise
					["qg"] = 15180,	-- Baristolth of the Shifting Sands
					["coord"] = { 49.5, 36.4, SILITHUS },
					["cost"] = { { "i", 20384, 200 } },	-- Silithid Carapace Fragment
					["lvl"] = 60,
					["groups"] = {
						i(20402),	-- Agent of Nozdormu
						i(20403),	-- Proxy of Nozdormu
					},
				}),
				q(8729, {	-- The Wrath of Neptulon
					["sourceQuest"] = 8728,	-- The Good News and The Bad News
					["qg"] = 11811,	-- Narain Soothfancy
					["coord"] = { 65.2, 18.6, TANARIS },
					["maps"] = { AZSHARA },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Blue Scepter Shard
							["providers"] = {
								{ "i",  21137 },	-- Blue Scepter Shard
								{ "o", 180669 },	-- Swirling Maelstrom
							},
							["description"] = "This summons a 40 man raid boss.",
							["cost"] = { { "i", 21136, 1 } },	-- Arcanite Buoy
							["coord"] = { 65.0, 55.0, AZSHARA },
							["cr"] = 15571,	-- Maws
						}),
						i(21526),	-- Band of Icy Depths
						i(21527),	-- Darkwater Robes
					},
				}),
				q(8576, {	-- Translating the Ledger
					["sourceQuest"] = 8575,	-- Azuregos's Magical Ledger
					["qg"] = 11811,	-- Narain Soothfancy
					["coord"] = { 65.2, 18.6, TANARIS },
					["lvl"] = 60,
				}),
				q(8745, {	-- Treasure of the Timeless One
					["sourceQuest"] = 8742,	-- The Might of Kalimdor
					["providers"] = {
						{ "n", 15693 },	-- Jonathan the Revelator
						{ "i", 21175 },	-- The Scepter of the Shifting Sands
					},
					["coord"] = { 25.9, 91.0, SILITHUS },
					["lvl"] = 60,
					["groups"] = {
						ach(5533, {	-- Veteran of the Shifting Sands
							["timeline"] = { ADDED_4_0_3, REMOVED_4_0_3 },	-- Added in Cataclysm Prepatch
						}),
						i(21523),	-- Fang of Korialstrasz
						i(21522),	-- Shadowsong's Sorrow
						i(21521),	-- Runesword of the Red
						i(21520),	-- Ravencrest's Legacy
					},
				}),
				q(8734, {	-- Tyrande and Remulos
					["sourceQuest"] = 8733,	-- Eranikus, Tyrant of the Dream
					["qg"] = 15624,	-- Forest Wisp
					["coord"] = { 37.5, 47.9, TELDRASSIL },
					["minReputation"] = { FACTION_BROOD_OF_NOZDORMU, NEUTRAL },	-- Brood of Nozdormu, Neutral
					["lvl"] = 60,
				}),
				q(8286, {	-- What Tomorrow Brings
					["description"] = "This quest line is a prerequisite for the Ahn'Qiraj scepter line used to open the doors to Ahn'Qiraj.",
					["qg"] = 15180,	-- Baristolth of the Shifting Sands
					["coord"] = { 49.5, 36.4, SILITHUS },
					["lvl"] = 60,
				}),
			}),
			n(REWARDS, {
				i(20402, {	-- Agent of Nozdormu
					["description"] = "A friendly player can use their Proxy of Nozdormu to grant an undeputized player Agency to collect fragments. Oh joy. Enjoy the suffering.",
					["cost"] = {{ "i", 20403, 1 }},	-- Proxy of Nozdormu
				}),
			}),
		},
	}))
));
